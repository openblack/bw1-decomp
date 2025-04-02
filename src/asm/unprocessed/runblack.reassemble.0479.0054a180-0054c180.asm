.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00401000
.extern _jmp_addr_0x00401140
.extern _jmp_addr_0x00401879
.extern _jmp_addr_0x00407a20
.extern _jmp_addr_0x00407a30
.extern _jmp_addr_0x00407d60
.extern _jmp_addr_0x00407ed0
.extern _jmp_addr_0x00407ef0
.extern _jmp_addr_0x00411190
.extern _jmp_addr_0x00411750
.extern _jmp_addr_0x004132c0
.extern _jmp_addr_0x00413960
.extern _jmp_addr_0x004146f0
.extern _jmp_addr_0x00426ca0
.extern _jmp_addr_0x00427080
.extern _jmp_addr_0x00428620
.extern _jmp_addr_0x00428640
.extern _jmp_addr_0x004286a0
.extern _jmp_addr_0x004286c0
.extern _jmp_addr_0x00429e30
.extern _jmp_addr_0x0042a210
.extern _jmp_addr_0x0042b460
.extern _jmp_addr_0x0042e5e0
.extern _jmp_addr_0x00435f30
.extern _jmp_addr_0x004366f0
.extern _jmp_addr_0x00436960
.extern _jmp_addr_0x00436970
.extern _jmp_addr_0x00437340
.extern _jmp_addr_0x004373e0
.extern _jmp_addr_0x00437a40
.extern _jmp_addr_0x00437c00
.extern _jmp_addr_0x004380b0
.extern _jmp_addr_0x00439dd0
.extern _jmp_addr_0x0043e9c0
.extern _jmp_addr_0x0043ebc0
.extern _jmp_addr_0x00441870
.extern _jmp_addr_0x00441b60
.extern _jmp_addr_0x00441d40
.extern _jmp_addr_0x00441f50
.extern _jmp_addr_0x00441f80
.extern _jmp_addr_0x00445050
.extern _jmp_addr_0x00445e10
.extern _jmp_addr_0x00457b60
.extern _jmp_addr_0x00462530
.extern _jmp_addr_0x004628d0
.extern _jmp_addr_0x00463a30
.extern _jmp_addr_0x00469960
.extern _jmp_addr_0x00469990
.extern _jmp_addr_0x0046b1f0
.extern _jmp_addr_0x0046b750
.extern _jmp_addr_0x0046d100
.extern _jmp_addr_0x0046e490
.extern _jmp_addr_0x0046e4e0
.extern _jmp_addr_0x0046f6c0
.extern _jmp_addr_0x0046f730
.extern _jmp_addr_0x0046f890
.extern _jmp_addr_0x00470ab0
.extern _jmp_addr_0x0048dd70
.extern _jmp_addr_0x004cefb0
.extern _jmp_addr_0x004cfb10
.extern _jmp_addr_0x004cfb50
.extern _jmp_addr_0x004d52b0
.extern _jmp_addr_0x004d60b0
.extern _jmp_addr_0x004d60e0
.extern _jmp_addr_0x004d6110
.extern _jmp_addr_0x004df2e0
.extern _jmp_addr_0x004df310
.extern _jmp_addr_0x004df340
.extern _jmp_addr_0x004df9c0
.extern _jmp_addr_0x0050bb60
.extern _jmp_addr_0x0050ccc0
.extern _jmp_addr_0x0050f780
.extern _jmp_addr_0x0050f7b0
.extern _jmp_addr_0x00510500
.extern _jmp_addr_0x00510630
.extern _jmp_addr_0x00511210
.extern _jmp_addr_0x00511250
.extern _jmp_addr_0x00511d70
.extern _jmp_addr_0x00511f50
.extern _jmp_addr_0x005127b0
.extern _jmp_addr_0x00512820
.extern _jmp_addr_0x005133a0
.extern _jmp_addr_0x005136b0
.extern _jmp_addr_0x005136e0
.extern _jmp_addr_0x00513810
.extern _jmp_addr_0x00513850
.extern _jmp_addr_0x00515990
.extern _jmp_addr_0x005159c0
.extern _jmp_addr_0x00518640
.extern _jmp_addr_0x00520e70
.extern _jmp_addr_0x005249d0
.extern _jmp_addr_0x005259d0
.extern _jmp_addr_0x005267d0
.extern _jmp_addr_0x0052b790
.extern _jmp_addr_0x0052b7a0
.extern _jmp_addr_0x00539d70
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x0053c450
.extern _jmp_addr_0x0053c470
.extern _jmp_addr_0x0053ce60
.extern _jmp_addr_0x00550080
.extern _jmp_addr_0x00550110
.extern _jmp_addr_0x00550390
.extern _jmp_addr_0x00550410
.extern _jmp_addr_0x005508a0
.extern _jmp_addr_0x005508d0
.extern _jmp_addr_0x00550980
.extern _jmp_addr_0x00550ba0
.extern _jmp_addr_0x00550dd0
.extern _jmp_addr_0x005525e0
.extern _jmp_addr_0x00552640
.extern _jmp_addr_0x00552bb0
.extern _jmp_addr_0x00552f40
.extern _jmp_addr_0x00552f80
.extern _jmp_addr_0x005530a0
.extern _jmp_addr_0x005533b0
.extern _jmp_addr_0x005538e0
.extern _jmp_addr_0x00553a10
.extern _jmp_addr_0x00553a60
.extern _jmp_addr_0x00553a70
.extern _jmp_addr_0x00553e10
.extern _jmp_addr_0x005550f0
.extern _jmp_addr_0x00555280
.extern _jmp_addr_0x00555400
.extern _jmp_addr_0x005557d0
.extern _jmp_addr_0x00555850
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x00555990
.extern _jmp_addr_0x00555a30
.extern _jmp_addr_0x00555a80
.extern _jmp_addr_0x00555bd0
.extern _jmp_addr_0x00555be0
.extern _jmp_addr_0x00555bf0
.extern _jmp_addr_0x00555c00
.extern _jmp_addr_0x00555c10
.extern _jmp_addr_0x00555c20
.extern _jmp_addr_0x00555c30
.extern _jmp_addr_0x00555c40
.extern _jmp_addr_0x00555c50
.extern _jmp_addr_0x00555c60
.extern _jmp_addr_0x00555c70
.extern _jmp_addr_0x00555c80
.extern _jmp_addr_0x00555c90
.extern _jmp_addr_0x00555ca0
.extern _jmp_addr_0x00555cb0
.extern _jmp_addr_0x00555d00
.extern _jmp_addr_0x00557950
.extern _jmp_addr_0x00557b60
.extern _jmp_addr_0x00557ba0
.extern _jmp_addr_0x005587b0
.extern _jmp_addr_0x00563ff0
.extern _jmp_addr_0x00564050
.extern _jmp_addr_0x00564160
.extern _jmp_addr_0x00564b40
.extern _jmp_addr_0x00565110
.extern _jmp_addr_0x0056fa10
.extern _jmp_addr_0x0056fa80
.extern _jmp_addr_0x0056fb10
.extern _jmp_addr_0x005751d0
.extern _jmp_addr_0x00578be0
.extern _jmp_addr_0x00579440
.extern _jmp_addr_0x00590f00
.extern _jmp_addr_0x00590fb0
.extern _jmp_addr_0x00591330
.extern _jmp_addr_0x00591370
.extern _jmp_addr_0x005c4410
.extern _jmp_addr_0x005c4500
.extern _jmp_addr_0x005c4660
.extern _jmp_addr_0x005c5710
.extern _jmp_addr_0x005c59a0
.extern _jmp_addr_0x005c6ad0
.extern _jmp_addr_0x005c6c40
.extern _jmp_addr_0x005c8fe0
.extern _jmp_addr_0x005cdb90
.extern _jmp_addr_0x005ce3f0
.extern _jmp_addr_0x005ce410
.extern _jmp_addr_0x005ceab0
.extern _jmp_addr_0x005cec10
.extern _jmp_addr_0x005cedb0
.extern _jmp_addr_0x005d9310
.extern _jmp_addr_0x005db710
.extern _jmp_addr_0x005dd460
.extern _jmp_addr_0x005dd490
.extern _jmp_addr_0x005de2f0
.extern _jmp_addr_0x005de860
.extern _jmp_addr_0x005def00
.extern _jmp_addr_0x005e1860
.extern _jmp_addr_0x005e1950
.extern _jmp_addr_0x005e1a90
.extern _jmp_addr_0x005e1ac0
.extern _jmp_addr_0x005e1fe0
.extern _jmp_addr_0x005e2160
.extern _jmp_addr_0x005e2890
.extern _jmp_addr_0x005e3f60
.extern _jmp_addr_0x005e42e0
.extern _jmp_addr_0x005e5280
.extern _jmp_addr_0x005e55c0
.extern _jmp_addr_0x005e57b0
.extern _jmp_addr_0x005e6750
.extern _jmp_addr_0x005e6790
.extern _jmp_addr_0x005e7a40
.extern _jmp_addr_0x005e7ce0
.extern _jmp_addr_0x005e7d30
.extern _jmp_addr_0x005e98b0
.extern _jmp_addr_0x005ec810
.extern _jmp_addr_0x005f3cc0
.extern _jmp_addr_0x005f3ce0
.extern _jmp_addr_0x005f3d90
.extern _jmp_addr_0x005f4c90
.extern _jmp_addr_0x005f4e40
.extern _jmp_addr_0x005fa000
.extern _jmp_addr_0x005fa070
.extern _jmp_addr_0x005fb040
.extern _jmp_addr_0x00601080
.extern _jmp_addr_0x006010f0
.extern _jmp_addr_0x006014c0
.extern _jmp_addr_0x006016d0
.extern _jmp_addr_0x00601820
.extern _jmp_addr_0x00601850
.extern _jmp_addr_0x00603160
.extern _jmp_addr_0x00606fc0
.extern _jmp_addr_0x00609a50
.extern _jmp_addr_0x0061a150
.extern _jmp_addr_0x0062d030
.extern _jmp_addr_0x0062dac0
.extern _jmp_addr_0x00633480
.extern _jmp_addr_0x006336b0
.extern _jmp_addr_0x006338d0
.extern _jmp_addr_0x00633ef0
.extern _jmp_addr_0x00634020
.extern _jmp_addr_0x00634040
.extern _jmp_addr_0x006349f0
.extern _jmp_addr_0x00635210
.extern _jmp_addr_0x00635430
.extern _jmp_addr_0x006360b0
.extern _jmp_addr_0x00636520
.extern _jmp_addr_0x00636640
.extern _jmp_addr_0x0063c3d0
.extern _jmp_addr_0x0063e090
.extern _jmp_addr_0x0063e0d0
.extern _jmp_addr_0x0063ef20
.extern _jmp_addr_0x0063f710
.extern _stop_draw_sprite_to_screen__Fv
.extern _jmp_addr_0x00642610
.extern _jmp_addr_0x006442b0
.extern _jmp_addr_0x00644fc0
.extern _jmp_addr_0x00646de0
.extern _jmp_addr_0x00648da0
.extern _jmp_addr_0x00648ee0
.extern _jmp_addr_0x006492b0
.extern _jmp_addr_0x00649340
.extern _jmp_addr_0x00649a20
.extern _jmp_addr_0x0064a9f0
.extern _jmp_addr_0x0064aac0
.extern _jmp_addr_0x0064c140
.extern _jmp_addr_0x0064c1a0
.extern _jmp_addr_0x0064d0f0
.extern _jmp_addr_0x0064d280
.extern _jmp_addr_0x0064d2d0
.extern _jmp_addr_0x0066b7a0
.extern _jmp_addr_0x0066b900
.extern _jmp_addr_0x0066b9c0
.extern _jmp_addr_0x0066bad0
.extern _jmp_addr_0x0066bcd0
.extern _jmp_addr_0x0066bfb0
.extern _jmp_addr_0x0067d610
.extern _jmp_addr_0x0067d630
.extern _jmp_addr_0x0068f590
.extern _jmp_addr_0x0068f5b0
.extern _jmp_addr_0x0068f5e0
.extern _jmp_addr_0x0068f750
.extern _jmp_addr_0x0068f7e0
.extern _jmp_addr_0x006ca6e0
.extern _jmp_addr_0x006e3b50
.extern _jmp_addr_0x006e6890
.extern _jmp_addr_0x006eb100
.extern _jmp_addr_0x006eb2d0
.extern _jmp_addr_0x006eb6b0
.extern _jmp_addr_0x006eb710
.extern _jmp_addr_0x006eb950
.extern _jmp_addr_0x006eb9d0
.extern _jmp_addr_0x006ebbc0
.extern _jmp_addr_0x006f6910
.extern _jmp_addr_0x0070a460
.extern _jmp_addr_0x0070b220
.extern _jmp_addr_0x0070d360
.extern _jmp_addr_0x00712f20
.extern _jmp_addr_0x00712fe0
.extern _jmp_addr_0x007132b0
.extern _jmp_addr_0x00713660
.extern _jmp_addr_0x00713710
.extern _jmp_addr_0x007139e0
.extern _jmp_addr_0x00713a30
.extern _jmp_addr_0x00714af0
.extern _jmp_addr_0x00714c20
.extern _jmp_addr_0x00715080
.extern _jmp_addr_0x007180b0
.extern _jmp_addr_0x00719750
.extern _jmp_addr_0x0071a560
.extern _jmp_addr_0x0071a5f0
.extern _jmp_addr_0x0071a650
.extern _jmp_addr_0x0071b020
.extern _jmp_addr_0x0071d1c0
.extern _jmp_addr_0x0071d6d0
.extern _jmp_addr_0x0071d6f0
.extern _jmp_addr_0x0071d720
.extern _jmp_addr_0x0071d800
.extern _jmp_addr_0x0071e5f0
.extern _jmp_addr_0x0071f8f0
.extern _jmp_addr_0x00720300
.extern _jmp_addr_0x007203f0
.extern _jmp_addr_0x0072e280
.extern _jmp_addr_0x0072e2a0
.extern _jmp_addr_0x0072e310
.extern _jmp_addr_0x0072e870
.extern _jmp_addr_0x00730760
.extern _jmp_addr_0x00735500
.extern _jmp_addr_0x00735540
.extern _jmp_addr_0x0074cca0
.extern _jmp_addr_0x00762780
.extern _jmp_addr_0x007627e0
.extern _jmp_addr_0x007635d0
.extern _jmp_addr_0x0076eaf0
.extern _jmp_addr_0x00771be0
.extern _jmp_addr_0x007741a0
.extern _jmp_addr_0x00775140
.extern _jmp_addr_0x00775380
.extern _jmp_addr_0x007899f0
.extern _jmp_addr_0x0078e8c0
.extern _jmp_addr_0x0078e9a0
.extern _jmp_addr_0x0078e9b0
.extern _jmp_addr_0x0078ea20
.extern _jmp_addr_0x00792fb0
.extern _jmp_addr_0x00793380
.extern _jmp_addr_0x00793ac0
.extern _jmp_addr_0x00793c30
.extern _jmp_addr_0x00793ee0
.extern _jmp_addr_0x00794280
.extern _jmp_addr_0x00794370
.extern _jmp_addr_0x00794a30
.extern _jmp_addr_0x007a1400
.extern ___dl__FPv
.extern _jmp_addr_0x007bc680
.extern _jmp_addr_0x007bc6a0
.extern _jmp_addr_0x007c5791
.extern _jmp_addr_0x007c57d2
.extern _jmp_addr_0x007c5a19
.extern _jmp_addr_0x007c647f
.extern _jmp_addr_0x007c6bff
.extern _jmp_addr_0x007c6c29
.extern _jmp_addr_0x007c6e30
.extern _jmp_addr_0x007c79fd
.extern _jmp_addr_0x007c8668
.extern _jmp_addr_0x007db790
.extern _jmp_addr_0x007de090
.extern _jmp_addr_0x007ded50
.extern _jmp_addr_0x007dee00
.extern _jmp_addr_0x007e1420
.extern _jmp_addr_0x007e1be0
.extern _jmp_addr_0x007e1df0
.extern _jmp_addr_0x007e4810
.extern _jmp_addr_0x007e72c0
.extern _jmp_addr_0x00803090
.extern _jmp_addr_0x0081bbd0
.extern _jmp_addr_0x00821750
.extern _jmp_addr_0x00825190
.extern _jmp_addr_0x00826c90
.extern _jmp_addr_0x0082f0e0
.extern _jmp_addr_0x0082f2c0
.extern _jmp_addr_0x0082f3b0
.extern _jmp_addr_0x0082f460
.extern _jmp_addr_0x00833cb0
.extern _jmp_addr_0x008356e0
.extern _jmp_addr_0x008357a0
.extern _jmp_addr_0x00836250
.extern _jmp_addr_0x008366a0
.extern _jmp_addr_0x008367a0
.extern @Release__11LH3DTextureFv@4
.extern _jmp_addr_0x0083b300
.extern _jmp_addr_0x0083b3e0
.extern _jmp_addr_0x0083b450
.extern _jmp_addr_0x0083e4f0
.extern _jmp_addr_0x0083e8c0
.extern _jmp_addr_0x0083f310
.extern _jmp_addr_0x0083f890
.extern _jmp_addr_0x008404a0
.extern _jmp_addr_0x00840520
.extern _jmp_addr_0x00841170
.extern _jmp_addr_0x008415a0
.extern _jmp_addr_0x00842030
.extern _jmp_addr_0x00842050
.extern _jmp_addr_0x00842b90
.extern _jmp_addr_0x00844c80
.extern _jmp_addr_0x00844ca0
.extern _jmp_addr_0x00844d00
.extern _jmp_addr_0x00844d30
.extern _jmp_addr_0x00844e70
.extern _jmp_addr_0x008450b0
.extern _jmp_addr_0x008456c0
.extern _jmp_addr_0x00845c00
.extern _jmp_addr_0x00845c10
.extern _jmp_addr_0x00845c50
.extern _jmp_addr_0x00845d00
.extern _jmp_addr_0x00865000
.extern _jmp_addr_0x0086c560
.extern _jmp_addr_0x00871f00

.globl _jmp_addr_0x0054a710
.globl _SetTurnOffMouseMove__Fb
.globl _jmp_addr_0x0054a780
.globl _jmp_addr_0x0054a940
.globl _jmp_addr_0x0054aa40
.globl _jmp_addr_0x0054ab00
.globl _jmp_addr_0x0054ab20
.globl _jmp_addr_0x0054ae20
.globl _jmp_addr_0x0054b180
.globl _jmp_addr_0x0054b190
.globl @__ct__5GGameFv@4
.globl _jmp_addr_0x0054b820
.globl @Reset__7LHTimerFUl@12
.globl @__ct__10GKeyBuffer@4
.globl @__ct__9GSoundMapFv@4
.globl @__ct__13GestureSystem@4
.globl _jmp_addr_0x0054c160

.globl _globl_ct_0x0054a310
.globl _globl_ct_0x0054a600
.globl _globl_ct_0x0054a6d0
.globl _globl_ct_0x0054a4a0
.globl _globl_ct_0x0054a4d0
.globl _globl_ct_0x0054a640
.globl _globl_ct_0x0054a290
.globl _globl_ct_0x0054a520
.globl _globl_ct_0x0054a4f0
.globl _globl_ct_0x0054a2c0
.globl _globl_ct_0x0054a550
.globl _globl_ct_0x0054a2e0
.globl _globl_ct_0x0054a620
.globl _globl_ct_0x0054a580
.globl _globl_ct_0x0054a5a0
.globl _globl_ct_0x0054a5d0

start_0x0054a180_0x0054ff80:
// Snippet: asm, [0x0054a180, 0x0054ff60)
                         push               ebx                                           // 0x0054a180    53
                         push               esi                                           // 0x0054a181    56
                         push               0x000000bc                                    // 0x0054a182    68bc000000
                         push               0x00bea898                                    // 0x0054a187    6898a8be00
                         push               0x000004b0                                    // 0x0054a18c    68b0040000
                         mov.s              ebx, ecx                                      // 0x0054a191    8bd9
                         call               ___nw__FUl                                    // 0x0054a193    e8f8152900
                         mov.s              esi, eax                                      // 0x0054a198    8bf0
                         add                esp, 0x0c                                     // 0x0054a19a    83c40c
                         test               esi, esi                                      // 0x0054a19d    85f6
                         {disp8} je         _jmp_addr_0x0054a1d1                          // 0x0054a19f    7430
                         push               edi                                           // 0x0054a1a1    57
                         mov.s              ecx, esi                                      // 0x0054a1a2    8bce
                         call               @__ct__13DialogBoxBaseFv@4                    // 0x0054a1a4    e8f791fcff
                         {disp8} lea        edx, dword ptr [esi + 0x18]                   // 0x0054a1a9    8d5618
                         xor.s              eax, eax                                      // 0x0054a1ac    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x000000c8]             // 0x0054a1ae    8dbac8000000
                         mov                ecx, 0x000000cb                               // 0x0054a1b4    b9cb000000
                         rep stosd                                                        // 0x0054a1b9    f3ab
                         mov.s              ecx, edx                                      // 0x0054a1bb    8bca
                         call               _jmp_addr_0x00719750                          // 0x0054a1bd    e88ef51c00
                         mov                dword ptr [esi], 0x008ded14                   // 0x0054a1c2    c70614ed8d00
                         {disp8} mov        byte ptr [esi + 0x10], 0x00                   // 0x0054a1c8    c6461000
                         mov.s              ecx, esi                                      // 0x0054a1cc    8bce
                         pop                edi                                           // 0x0054a1ce    5f
                         {disp8} jmp        _jmp_addr_0x0054a1d3                          // 0x0054a1cf    eb02
_jmp_addr_0x0054a1d1:    xor.s              ecx, ecx                                      // 0x0054a1d1    33c9
_jmp_addr_0x0054a1d3:    push               0x005471e0                                    // 0x0054a1d3    68e0715400
                         push               0x00000224                                    // 0x0054a1d8    6824020000
                         {disp32} mov       dword ptr [ebx + 0x00000460], ecx             // 0x0054a1dd    898b60040000
                         mov                eax, dword ptr [ecx]                          // 0x0054a1e3    8b01
                         push               0x000002ec                                    // 0x0054a1e5    68ec020000
                         call               dword ptr [eax]                               // 0x0054a1ea    ff10
                         {disp32} mov       edx, dword ptr [ebx + 0x00000460]             // 0x0054a1ec    8b9360040000
                         {disp8} lea        ecx, dword ptr [ebx + 0x34]                   // 0x0054a1f2    8d4b34
                         {disp8} mov        dword ptr [edx + 0x14], ecx                   // 0x0054a1f5    894a14
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000460]             // 0x0054a1f8    8b8b60040000
                         mov                eax, dword ptr [ecx]                          // 0x0054a1fe    8b01
                         call               dword ptr [eax + 8]                           // 0x0054a200    ff5008
                         pop                esi                                           // 0x0054a203    5e
                         pop                ebx                                           // 0x0054a204    5b
                         ret                                                              // 0x0054a205    c3
                         nop                                                              // 0x0054a206    90
                         nop                                                              // 0x0054a207    90
                         nop                                                              // 0x0054a208    90
                         nop                                                              // 0x0054a209    90
                         nop                                                              // 0x0054a20a    90
                         nop                                                              // 0x0054a20b    90
                         nop                                                              // 0x0054a20c    90
                         nop                                                              // 0x0054a20d    90
                         nop                                                              // 0x0054a20e    90
                         nop                                                              // 0x0054a20f    90
                         push               ebx                                           // 0x0054a210    53
                         push               esi                                           // 0x0054a211    56
                         push               0x000000c4                                    // 0x0054a212    68c4000000
                         push               0x00bea898                                    // 0x0054a217    6898a8be00
                         push               0x0000045c                                    // 0x0054a21c    685c040000
                         mov.s              ebx, ecx                                      // 0x0054a221    8bd9
                         call               ___nw__FUl                                    // 0x0054a223    e868152900
                         mov.s              esi, eax                                      // 0x0054a228    8bf0
                         add                esp, 0x0c                                     // 0x0054a22a    83c40c
                         test               esi, esi                                      // 0x0054a22d    85f6
                         {disp8} je         _jmp_addr_0x0054a25d                          // 0x0054a22f    742c
                         push               edi                                           // 0x0054a231    57
                         mov.s              ecx, esi                                      // 0x0054a232    8bce
                         call               @__ct__13DialogBoxBaseFv@4                    // 0x0054a234    e86791fcff
                         {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x0054a239    8d5614
                         xor.s              eax, eax                                      // 0x0054a23c    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x000000c8]             // 0x0054a23e    8dbac8000000
                         mov                ecx, 0x000000cb                               // 0x0054a244    b9cb000000
                         rep stosd                                                        // 0x0054a249    f3ab
                         mov.s              ecx, edx                                      // 0x0054a24b    8bca
                         call               _jmp_addr_0x00719750                          // 0x0054a24d    e8fef41c00
                         mov                dword ptr [esi], 0x008ded3c                   // 0x0054a252    c7063ced8d00
                         mov.s              ecx, esi                                      // 0x0054a258    8bce
                         pop                edi                                           // 0x0054a25a    5f
                         {disp8} jmp        _jmp_addr_0x0054a25f                          // 0x0054a25b    eb02
_jmp_addr_0x0054a25d:    xor.s              ecx, ecx                                      // 0x0054a25d    33c9
_jmp_addr_0x0054a25f:    push               0x00547dc0                                    // 0x0054a25f    68c07d5400
                         push               0x00000224                                    // 0x0054a264    6824020000
                         {disp32} mov       dword ptr [ebx + 0x00000444], ecx             // 0x0054a269    898b44040000
                         mov                eax, dword ptr [ecx]                          // 0x0054a26f    8b01
                         push               0x000002ec                                    // 0x0054a271    68ec020000
                         call               dword ptr [eax]                               // 0x0054a276    ff10
                         {disp32} mov       edx, dword ptr [ebx + 0x00000444]             // 0x0054a278    8b9344040000
                         {disp8} lea        ecx, dword ptr [ebx + 0x18]                   // 0x0054a27e    8d4b18
                         pop                esi                                           // 0x0054a281    5e
                         {disp8} mov        dword ptr [edx + 0x10], ecx                   // 0x0054a282    894a10
                         pop                ebx                                           // 0x0054a285    5b
                         ret                                                              // 0x0054a286    c3
                         nop                                                              // 0x0054a287    90
                         nop                                                              // 0x0054a288    90
                         nop                                                              // 0x0054a289    90
                         nop                                                              // 0x0054a28a    90
                         nop                                                              // 0x0054a28b    90
                         nop                                                              // 0x0054a28c    90
                         nop                                                              // 0x0054a28d    90
                         nop                                                              // 0x0054a28e    90
                         nop                                                              // 0x0054a28f    90
_globl_ct_0x0054a290:    {disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]          // 0x0054a290    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0054a296    b001
                         test               al, cl                                        // 0x0054a298    84c8
                         {disp8} jne        _jmp_addr_0x0054a2a4                          // 0x0054a29a    7508
                         or.s               cl, al                                        // 0x0054a29c    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x5e6934], cl          // 0x0054a29e    880d34c9fa00
_jmp_addr_0x0054a2a4:    {disp32} jmp       _jmp_addr_0x0054a2b0                          // 0x0054a2a4    e907000000
                         nop                                                              // 0x0054a2a9    90
                         nop                                                              // 0x0054a2aa    90
                         nop                                                              // 0x0054a2ab    90
                         nop                                                              // 0x0054a2ac    90
                         nop                                                              // 0x0054a2ad    90
                         nop                                                              // 0x0054a2ae    90
                         nop                                                              // 0x0054a2af    90
_jmp_addr_0x0054a2b0:    push               0x00407870                                    // 0x0054a2b0    6870784000
                         call               _jmp_addr_0x007c5791                          // 0x0054a2b5    e8d7b42700
                         pop                ecx                                           // 0x0054a2ba    59
                         ret                                                              // 0x0054a2bb    c3
                         nop                                                              // 0x0054a2bc    90
                         nop                                                              // 0x0054a2bd    90
                         nop                                                              // 0x0054a2be    90
                         nop                                                              // 0x0054a2bf    90
_globl_ct_0x0054a2c0:    {disp32} jmp       _jmp_addr_0x0054a2d0                          // 0x0054a2c0    e90b000000
                         nop                                                              // 0x0054a2c5    90
                         nop                                                              // 0x0054a2c6    90
                         nop                                                              // 0x0054a2c7    90
                         nop                                                              // 0x0054a2c8    90
                         nop                                                              // 0x0054a2c9    90
                         nop                                                              // 0x0054a2ca    90
                         nop                                                              // 0x0054a2cb    90
                         nop                                                              // 0x0054a2cc    90
                         nop                                                              // 0x0054a2cd    90
                         nop                                                              // 0x0054a2ce    90
                         nop                                                              // 0x0054a2cf    90
_jmp_addr_0x0054a2d0:    {disp32} mov       dword ptr [data_bytes + 0x30d60c], 0x3e000000 // 0x0054a2d0    c7050c36cd000000003e
                         ret                                                              // 0x0054a2da    c3
                         call               _jmp_addr_0x00401879                          // 0x0054a2db    e89975ebff
_globl_ct_0x0054a2e0:    {disp32} jmp       _jmp_addr_0x0054a2f0                          // 0x0054a2e0    e90b000000
                         nop                                                              // 0x0054a2e5    90
                         nop                                                              // 0x0054a2e6    90
                         nop                                                              // 0x0054a2e7    90
                         nop                                                              // 0x0054a2e8    90
                         nop                                                              // 0x0054a2e9    90
                         nop                                                              // 0x0054a2ea    90
                         nop                                                              // 0x0054a2eb    90
                         nop                                                              // 0x0054a2ec    90
                         nop                                                              // 0x0054a2ed    90
                         nop                                                              // 0x0054a2ee    90
                         nop                                                              // 0x0054a2ef    90
_jmp_addr_0x0054a2f0:    {disp32} fld       dword ptr [rdata_bytes + 0x35d64]             // 0x0054a2f0    d90564ed8d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x13b4]              // 0x0054a2f6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x30d610]             // 0x0054a2fc    d91d1036cd00
                         ret                                                              // 0x0054a302    c3
                         nop                                                              // 0x0054a303    90
                         nop                                                              // 0x0054a304    90
                         nop                                                              // 0x0054a305    90
                         nop                                                              // 0x0054a306    90
                         nop                                                              // 0x0054a307    90
                         nop                                                              // 0x0054a308    90
                         nop                                                              // 0x0054a309    90
                         nop                                                              // 0x0054a30a    90
                         nop                                                              // 0x0054a30b    90
                         nop                                                              // 0x0054a30c    90
                         nop                                                              // 0x0054a30d    90
                         nop                                                              // 0x0054a30e    90
                         nop                                                              // 0x0054a30f    90
_globl_ct_0x0054a310:    call               _jmp_addr_0x0054a320                          // 0x0054a310    e80b000000
                         {disp32} jmp       _jmp_addr_0x0054a370                          // 0x0054a315    e956000000
                         nop                                                              // 0x0054a31a    90
                         nop                                                              // 0x0054a31b    90
                         nop                                                              // 0x0054a31c    90
                         nop                                                              // 0x0054a31d    90
                         nop                                                              // 0x0054a31e    90
                         nop                                                              // 0x0054a31f    90
_jmp_addr_0x0054a320:    mov                eax, 0x00cd1690                               // 0x0054a320    b89016cd00
                         mov                ecx, 0x0000001f                               // 0x0054a325    b91f000000
                         xor.s              edx, edx                                      // 0x0054a32a    33d2
_jmp_addr_0x0054a32c:    mov                dword ptr [eax], 0x008a9a44                   // 0x0054a32c    c700449a8a00
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0054a332    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0054a335    895008
                         mov                dword ptr [eax], 0x008ded6c                   // 0x0054a338    c7006ced8d00
                         add                eax, 0x00000104                               // 0x0054a33e    0504010000
                         dec                ecx                                           // 0x0054a343    49
                         {disp8} jne        _jmp_addr_0x0054a32c                          // 0x0054a344    75e6
                         ret                                                              // 0x0054a346    c3
                         nop                                                              // 0x0054a347    90
                         nop                                                              // 0x0054a348    90
                         nop                                                              // 0x0054a349    90
                         nop                                                              // 0x0054a34a    90
                         nop                                                              // 0x0054a34b    90
                         nop                                                              // 0x0054a34c    90
                         nop                                                              // 0x0054a34d    90
                         nop                                                              // 0x0054a34e    90
                         nop                                                              // 0x0054a34f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0054a350    8b442404
                         mov                dword ptr [eax], 0x0000001f                   // 0x0054a354    c7001f000000
                         mov                eax, 0x00cd1690                               // 0x0054a35a    b89016cd00
                         ret                0x0004                                        // 0x0054a35f    c20400
                         nop                                                              // 0x0054a362    90
                         nop                                                              // 0x0054a363    90
                         nop                                                              // 0x0054a364    90
                         nop                                                              // 0x0054a365    90
                         nop                                                              // 0x0054a366    90
                         nop                                                              // 0x0054a367    90
                         nop                                                              // 0x0054a368    90
                         nop                                                              // 0x0054a369    90
                         nop                                                              // 0x0054a36a    90
                         nop                                                              // 0x0054a36b    90
                         nop                                                              // 0x0054a36c    90
                         nop                                                              // 0x0054a36d    90
                         nop                                                              // 0x0054a36e    90
                         nop                                                              // 0x0054a36f    90
_jmp_addr_0x0054a370:    push               0x0054a380                                    // 0x0054a370    6880a35400
                         call               _jmp_addr_0x007c5791                          // 0x0054a375    e817b42700
                         pop                ecx                                           // 0x0054a37a    59
                         ret                                                              // 0x0054a37b    c3
                         nop                                                              // 0x0054a37c    90
                         nop                                                              // 0x0054a37d    90
                         nop                                                              // 0x0054a37e    90
                         nop                                                              // 0x0054a37f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x30b68c]          // 0x0054a380    8a0d8c16cd00
                         mov                al, 0x01                                      // 0x0054a386    b001
                         test               al, cl                                        // 0x0054a388    84c8
                         {disp8} jne        _jmp_addr_0x0054a3b2                          // 0x0054a38a    7526
                         push               esi                                           // 0x0054a38c    56
                         or.s               cl, al                                        // 0x0054a38d    0ac8
                         push               edi                                           // 0x0054a38f    57
                         {disp32} mov       byte ptr [data_bytes + 0x30b68c], cl          // 0x0054a390    880d8c16cd00
                         mov                esi, 0x00cd360c                               // 0x0054a396    be0c36cd00
                         mov                edi, 0x0000001f                               // 0x0054a39b    bf1f000000
_jmp_addr_0x0054a3a0:    sub                esi, 0x00000104                               // 0x0054a3a0    81ee04010000
                         mov.s              ecx, esi                                      // 0x0054a3a6    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054a3a8    e8b3c5eeff
                         dec                edi                                           // 0x0054a3ad    4f
                         {disp8} jne        _jmp_addr_0x0054a3a0                          // 0x0054a3ae    75f0
                         pop                edi                                           // 0x0054a3b0    5f
                         pop                esi                                           // 0x0054a3b1    5e
_jmp_addr_0x0054a3b2:    ret                                                              // 0x0054a3b2    c3
                         nop                                                              // 0x0054a3b3    90
                         nop                                                              // 0x0054a3b4    90
                         nop                                                              // 0x0054a3b5    90
                         nop                                                              // 0x0054a3b6    90
                         nop                                                              // 0x0054a3b7    90
                         nop                                                              // 0x0054a3b8    90
                         nop                                                              // 0x0054a3b9    90
                         nop                                                              // 0x0054a3ba    90
                         nop                                                              // 0x0054a3bb    90
                         nop                                                              // 0x0054a3bc    90
                         nop                                                              // 0x0054a3bd    90
                         nop                                                              // 0x0054a3be    90
                         nop                                                              // 0x0054a3bf    90
                         push               esi                                           // 0x0054a3c0    56
                         mov.s              esi, ecx                                      // 0x0054a3c1    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0054a3c3    e898c5eeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054a3c8    f644240801
                         {disp8} je         _jmp_addr_0x0054a3dd                          // 0x0054a3cd    740e
                         push               0x00000104                                    // 0x0054a3cf    6804010000
                         push               esi                                           // 0x0054a3d4    56
                         call               _jmp_addr_0x00436970                          // 0x0054a3d5    e896c5eeff
                         add                esp, 0x08                                     // 0x0054a3da    83c408
_jmp_addr_0x0054a3dd:    mov.s              eax, esi                                      // 0x0054a3dd    8bc6
                         pop                esi                                           // 0x0054a3df    5e
                         ret                0x0004                                        // 0x0054a3e0    c20400
                         nop                                                              // 0x0054a3e3    90
                         nop                                                              // 0x0054a3e4    90
                         nop                                                              // 0x0054a3e5    90
                         nop                                                              // 0x0054a3e6    90
                         nop                                                              // 0x0054a3e7    90
                         nop                                                              // 0x0054a3e8    90
                         nop                                                              // 0x0054a3e9    90
                         nop                                                              // 0x0054a3ea    90
                         nop                                                              // 0x0054a3eb    90
                         nop                                                              // 0x0054a3ec    90
                         nop                                                              // 0x0054a3ed    90
                         nop                                                              // 0x0054a3ee    90
                         nop                                                              // 0x0054a3ef    90
                         push               esi                                           // 0x0054a3f0    56
                         push               0xe                                           // 0x0054a3f1    6a0e
                         push               0x00bea940                                    // 0x0054a3f3    6840a9be00
                         push               0x54                                          // 0x0054a3f8    6a54
                         call               ___nw__4BaseFUl                               // 0x0054a3fa    e8f1c2eeff
                         mov.s              esi, eax                                      // 0x0054a3ff    8bf0
                         add                esp, 0x0c                                     // 0x0054a401    83c40c
                         test               esi, esi                                      // 0x0054a404    85f6
                         {disp8} je         _jmp_addr_0x0054a42e                          // 0x0054a406    7426
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0054a408    8b44240c
                         push               edi                                           // 0x0054a40c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0054a40d    8b7c240c
                         push               eax                                           // 0x0054a411    50
                         push               edi                                           // 0x0054a412    57
                         mov.s              ecx, esi                                      // 0x0054a413    8bce
                         call               @__ct__6ObjectFRC9MapCoordsPC11GObjectInfo@16 // 0x0054a415    e806c10e00
                         push               edi                                           // 0x0054a41a    57
                         mov.s              ecx, esi                                      // 0x0054a41b    8bce
                         mov                dword ptr [esi], 0x008dedac                   // 0x0054a41d    c706aced8d00
                         call               dword ptr [rdata_bytes + 0x36404]             // 0x0054a423    ff1504f48d00
                         pop                edi                                           // 0x0054a429    5f
                         mov.s              eax, esi                                      // 0x0054a42a    8bc6
                         pop                esi                                           // 0x0054a42c    5e
                         ret                                                              // 0x0054a42d    c3
_jmp_addr_0x0054a42e:    xor.s              eax, eax                                      // 0x0054a42e    33c0
                         pop                esi                                           // 0x0054a430    5e
                         ret                                                              // 0x0054a431    c3
                         nop                                                              // 0x0054a432    90
                         nop                                                              // 0x0054a433    90
                         nop                                                              // 0x0054a434    90
                         nop                                                              // 0x0054a435    90
                         nop                                                              // 0x0054a436    90
                         nop                                                              // 0x0054a437    90
                         nop                                                              // 0x0054a438    90
                         nop                                                              // 0x0054a439    90
                         nop                                                              // 0x0054a43a    90
                         nop                                                              // 0x0054a43b    90
                         nop                                                              // 0x0054a43c    90
                         nop                                                              // 0x0054a43d    90
                         nop                                                              // 0x0054a43e    90
                         nop                                                              // 0x0054a43f    90
                         mov                eax, 0x00000001                               // 0x0054a440    b801000000
                         ret                0x0008                                        // 0x0054a445    c20800
                         nop                                                              // 0x0054a448    90
                         nop                                                              // 0x0054a449    90
                         nop                                                              // 0x0054a44a    90
                         nop                                                              // 0x0054a44b    90
                         nop                                                              // 0x0054a44c    90
                         nop                                                              // 0x0054a44d    90
                         nop                                                              // 0x0054a44e    90
                         nop                                                              // 0x0054a44f    90
                         xor.s              eax, eax                                      // 0x0054a450    33c0
                         ret                                                              // 0x0054a452    c3
                         nop                                                              // 0x0054a453    90
                         nop                                                              // 0x0054a454    90
                         nop                                                              // 0x0054a455    90
                         nop                                                              // 0x0054a456    90
                         nop                                                              // 0x0054a457    90
                         nop                                                              // 0x0054a458    90
                         nop                                                              // 0x0054a459    90
                         nop                                                              // 0x0054a45a    90
                         nop                                                              // 0x0054a45b    90
                         nop                                                              // 0x0054a45c    90
                         nop                                                              // 0x0054a45d    90
                         nop                                                              // 0x0054a45e    90
                         nop                                                              // 0x0054a45f    90
                         mov                eax, 0x00bea960                               // 0x0054a460    b860a9be00
                         ret                                                              // 0x0054a465    c3
                         nop                                                              // 0x0054a466    90
                         nop                                                              // 0x0054a467    90
                         nop                                                              // 0x0054a468    90
                         nop                                                              // 0x0054a469    90
                         nop                                                              // 0x0054a46a    90
                         nop                                                              // 0x0054a46b    90
                         nop                                                              // 0x0054a46c    90
                         nop                                                              // 0x0054a46d    90
                         nop                                                              // 0x0054a46e    90
                         nop                                                              // 0x0054a46f    90
                         push               esi                                           // 0x0054a470    56
                         mov.s              esi, ecx                                      // 0x0054a471    8bf1
                         mov                dword ptr [esi], 0x008dedac                   // 0x0054a473    c706aced8d00
                         call               _jmp_addr_0x00636640                          // 0x0054a479    e8c2c10e00
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054a47e    f644240801
                         {disp8} je         _jmp_addr_0x0054a490                          // 0x0054a483    740b
                         push               0x54                                          // 0x0054a485    6a54
                         push               esi                                           // 0x0054a487    56
                         call               _jmp_addr_0x00436970                          // 0x0054a488    e8e3c4eeff
                         add                esp, 0x08                                     // 0x0054a48d    83c408
_jmp_addr_0x0054a490:    mov.s              eax, esi                                      // 0x0054a490    8bc6
                         pop                esi                                           // 0x0054a492    5e
                         ret                0x0004                                        // 0x0054a493    c20400
                         nop                                                              // 0x0054a496    90
                         nop                                                              // 0x0054a497    90
                         nop                                                              // 0x0054a498    90
                         nop                                                              // 0x0054a499    90
                         nop                                                              // 0x0054a49a    90
                         nop                                                              // 0x0054a49b    90
                         nop                                                              // 0x0054a49c    90
                         nop                                                              // 0x0054a49d    90
                         nop                                                              // 0x0054a49e    90
                         nop                                                              // 0x0054a49f    90
_globl_ct_0x0054a4a0:    {disp32} mov       cl, byte ptr [data_bytes + 0x5e6934]          // 0x0054a4a0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0054a4a6    b001
                         test               al, cl                                        // 0x0054a4a8    84c8
                         {disp8} jne        _jmp_addr_0x0054a4b4                          // 0x0054a4aa    7508
                         or.s               cl, al                                        // 0x0054a4ac    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x5e6934], cl          // 0x0054a4ae    880d34c9fa00
_jmp_addr_0x0054a4b4:    {disp32} jmp       _jmp_addr_0x0054a4c0                          // 0x0054a4b4    e907000000
                         nop                                                              // 0x0054a4b9    90
                         nop                                                              // 0x0054a4ba    90
                         nop                                                              // 0x0054a4bb    90
                         nop                                                              // 0x0054a4bc    90
                         nop                                                              // 0x0054a4bd    90
                         nop                                                              // 0x0054a4be    90
                         nop                                                              // 0x0054a4bf    90
_jmp_addr_0x0054a4c0:    push               0x00407870                                    // 0x0054a4c0    6870784000
                         call               _jmp_addr_0x007c5791                          // 0x0054a4c5    e8c7b22700
                         pop                ecx                                           // 0x0054a4ca    59
                         ret                                                              // 0x0054a4cb    c3
                         nop                                                              // 0x0054a4cc    90
                         nop                                                              // 0x0054a4cd    90
                         nop                                                              // 0x0054a4ce    90
                         nop                                                              // 0x0054a4cf    90
_globl_ct_0x0054a4d0:    {disp32} jmp       _jmp_addr_0x0054a4e0                          // 0x0054a4d0    e90b000000
                         nop                                                              // 0x0054a4d5    90
                         nop                                                              // 0x0054a4d6    90
                         nop                                                              // 0x0054a4d7    90
                         nop                                                              // 0x0054a4d8    90
                         nop                                                              // 0x0054a4d9    90
                         nop                                                              // 0x0054a4da    90
                         nop                                                              // 0x0054a4db    90
                         nop                                                              // 0x0054a4dc    90
                         nop                                                              // 0x0054a4dd    90
                         nop                                                              // 0x0054a4de    90
                         nop                                                              // 0x0054a4df    90
_jmp_addr_0x0054a4e0:    {disp32} mov       dword ptr [data_bytes + 0x33b958], 0xffffffff // 0x0054a4e0    c7055819d000ffffffff
                         ret                                                              // 0x0054a4ea    c3
                         call               _jmp_addr_0x00401879                          // 0x0054a4eb    e88973ebff
_globl_ct_0x0054a4f0:    {disp32} jmp       _jmp_addr_0x0054a500                          // 0x0054a4f0    e90b000000
                         nop                                                              // 0x0054a4f5    90
                         nop                                                              // 0x0054a4f6    90
                         nop                                                              // 0x0054a4f7    90
                         nop                                                              // 0x0054a4f8    90
                         nop                                                              // 0x0054a4f9    90
                         nop                                                              // 0x0054a4fa    90
                         nop                                                              // 0x0054a4fb    90
                         nop                                                              // 0x0054a4fc    90
                         nop                                                              // 0x0054a4fd    90
                         nop                                                              // 0x0054a4fe    90
                         nop                                                              // 0x0054a4ff    90
_jmp_addr_0x0054a500:    {disp32} fld       dword ptr [rdata_bytes + 0x3661c]             // 0x0054a500    d9051cf68d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x36618]             // 0x0054a506    d80d18f68d00
                         {disp32} fstp      dword ptr [data_bytes + 0x33b954]             // 0x0054a50c    d91d5419d000
                         ret                                                              // 0x0054a512    c3
                         nop                                                              // 0x0054a513    90
                         nop                                                              // 0x0054a514    90
                         nop                                                              // 0x0054a515    90
                         nop                                                              // 0x0054a516    90
                         nop                                                              // 0x0054a517    90
                         nop                                                              // 0x0054a518    90
                         nop                                                              // 0x0054a519    90
                         nop                                                              // 0x0054a51a    90
                         nop                                                              // 0x0054a51b    90
                         nop                                                              // 0x0054a51c    90
                         nop                                                              // 0x0054a51d    90
                         nop                                                              // 0x0054a51e    90
                         nop                                                              // 0x0054a51f    90
_globl_ct_0x0054a520:    {disp32} jmp       _jmp_addr_0x0054a530                          // 0x0054a520    e90b000000
                         nop                                                              // 0x0054a525    90
                         nop                                                              // 0x0054a526    90
                         nop                                                              // 0x0054a527    90
                         nop                                                              // 0x0054a528    90
                         nop                                                              // 0x0054a529    90
                         nop                                                              // 0x0054a52a    90
                         nop                                                              // 0x0054a52b    90
                         nop                                                              // 0x0054a52c    90
                         nop                                                              // 0x0054a52d    90
                         nop                                                              // 0x0054a52e    90
                         nop                                                              // 0x0054a52f    90
_jmp_addr_0x0054a530:    {disp32} fld       dword ptr [rdata_bytes + 0x36624]             // 0x0054a530    d90524f68d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x9f0]               // 0x0054a536    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x33b950]             // 0x0054a53c    d91d5019d000
                         ret                                                              // 0x0054a542    c3
                         nop                                                              // 0x0054a543    90
                         nop                                                              // 0x0054a544    90
                         nop                                                              // 0x0054a545    90
                         nop                                                              // 0x0054a546    90
                         nop                                                              // 0x0054a547    90
                         nop                                                              // 0x0054a548    90
                         nop                                                              // 0x0054a549    90
                         nop                                                              // 0x0054a54a    90
                         nop                                                              // 0x0054a54b    90
                         nop                                                              // 0x0054a54c    90
                         nop                                                              // 0x0054a54d    90
                         nop                                                              // 0x0054a54e    90
                         nop                                                              // 0x0054a54f    90
_globl_ct_0x0054a550:    {disp32} jmp       _jmp_addr_0x0054a560                          // 0x0054a550    e90b000000
                         nop                                                              // 0x0054a555    90
                         nop                                                              // 0x0054a556    90
                         nop                                                              // 0x0054a557    90
                         nop                                                              // 0x0054a558    90
                         nop                                                              // 0x0054a559    90
                         nop                                                              // 0x0054a55a    90
                         nop                                                              // 0x0054a55b    90
                         nop                                                              // 0x0054a55c    90
                         nop                                                              // 0x0054a55d    90
                         nop                                                              // 0x0054a55e    90
                         nop                                                              // 0x0054a55f    90
_jmp_addr_0x0054a560:    {disp32} fld       dword ptr [rdata_bytes + 0x36628]             // 0x0054a560    d90528f68d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x0054a566    d80d502c8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x0054a56c    d80dd4b38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x33b94c]             // 0x0054a572    d91d4c19d000
                         ret                                                              // 0x0054a578    c3
                         nop                                                              // 0x0054a579    90
                         nop                                                              // 0x0054a57a    90
                         nop                                                              // 0x0054a57b    90
                         nop                                                              // 0x0054a57c    90
                         nop                                                              // 0x0054a57d    90
                         nop                                                              // 0x0054a57e    90
                         nop                                                              // 0x0054a57f    90
_globl_ct_0x0054a580:    {disp32} jmp       _jmp_addr_0x0054a590                          // 0x0054a580    e90b000000
                         nop                                                              // 0x0054a585    90
                         nop                                                              // 0x0054a586    90
                         nop                                                              // 0x0054a587    90
                         nop                                                              // 0x0054a588    90
                         nop                                                              // 0x0054a589    90
                         nop                                                              // 0x0054a58a    90
                         nop                                                              // 0x0054a58b    90
                         nop                                                              // 0x0054a58c    90
                         nop                                                              // 0x0054a58d    90
                         nop                                                              // 0x0054a58e    90
                         nop                                                              // 0x0054a58f    90
_jmp_addr_0x0054a590:    {disp32} fld       dword ptr [rdata_bytes + 0x36628]             // 0x0054a590    d90528f68d00
                         fadd.s             st(0), st(0)                                  // 0x0054a596    dcc0
                         {disp32} fstp      dword ptr [data_bytes + 0x33b948]             // 0x0054a598    d91d4819d000
                         ret                                                              // 0x0054a59e    c3
                         nop                                                              // 0x0054a59f    90
_globl_ct_0x0054a5a0:    {disp32} jmp       _jmp_addr_0x0054a5b0                          // 0x0054a5a0    e90b000000
                         nop                                                              // 0x0054a5a5    90
                         nop                                                              // 0x0054a5a6    90
                         nop                                                              // 0x0054a5a7    90
                         nop                                                              // 0x0054a5a8    90
                         nop                                                              // 0x0054a5a9    90
                         nop                                                              // 0x0054a5aa    90
                         nop                                                              // 0x0054a5ab    90
                         nop                                                              // 0x0054a5ac    90
                         nop                                                              // 0x0054a5ad    90
                         nop                                                              // 0x0054a5ae    90
                         nop                                                              // 0x0054a5af    90
_jmp_addr_0x0054a5b0:    {disp32} fld       dword ptr [data_bytes + 0x33b948]             // 0x0054a5b0    d9054819d000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23750]             // 0x0054a5b6    d80d50c78c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x0054a5bc    d80d20b68a00
                         {disp32} fstp      dword ptr [data_bytes + 0x33b944]             // 0x0054a5c2    d91d4419d000
                         ret                                                              // 0x0054a5c8    c3
                         nop                                                              // 0x0054a5c9    90
                         nop                                                              // 0x0054a5ca    90
                         nop                                                              // 0x0054a5cb    90
                         nop                                                              // 0x0054a5cc    90
                         nop                                                              // 0x0054a5cd    90
                         nop                                                              // 0x0054a5ce    90
                         nop                                                              // 0x0054a5cf    90
_globl_ct_0x0054a5d0:    {disp32} jmp       _jmp_addr_0x0054a5e0                          // 0x0054a5d0    e90b000000
                         nop                                                              // 0x0054a5d5    90
                         nop                                                              // 0x0054a5d6    90
                         nop                                                              // 0x0054a5d7    90
                         nop                                                              // 0x0054a5d8    90
                         nop                                                              // 0x0054a5d9    90
                         nop                                                              // 0x0054a5da    90
                         nop                                                              // 0x0054a5db    90
                         nop                                                              // 0x0054a5dc    90
                         nop                                                              // 0x0054a5dd    90
                         nop                                                              // 0x0054a5de    90
                         nop                                                              // 0x0054a5df    90
_jmp_addr_0x0054a5e0:    {disp32} fld       dword ptr [data_bytes + 0x33b94c]             // 0x0054a5e0    d9054c19d000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23750]             // 0x0054a5e6    d80d50c78c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x0054a5ec    d80dd4b38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x33b940]             // 0x0054a5f2    d91d4019d000
                         ret                                                              // 0x0054a5f8    c3
                         nop                                                              // 0x0054a5f9    90
                         nop                                                              // 0x0054a5fa    90
                         nop                                                              // 0x0054a5fb    90
                         nop                                                              // 0x0054a5fc    90
                         nop                                                              // 0x0054a5fd    90
                         nop                                                              // 0x0054a5fe    90
                         nop                                                              // 0x0054a5ff    90
_globl_ct_0x0054a600:    {disp32} jmp       _jmp_addr_0x0054a610                          // 0x0054a600    e90b000000
                         nop                                                              // 0x0054a605    90
                         nop                                                              // 0x0054a606    90
                         nop                                                              // 0x0054a607    90
                         nop                                                              // 0x0054a608    90
                         nop                                                              // 0x0054a609    90
                         nop                                                              // 0x0054a60a    90
                         nop                                                              // 0x0054a60b    90
                         nop                                                              // 0x0054a60c    90
                         nop                                                              // 0x0054a60d    90
                         nop                                                              // 0x0054a60e    90
                         nop                                                              // 0x0054a60f    90
_jmp_addr_0x0054a610:    {disp32} fld       dword ptr [data_bytes + 0x33b94c]             // 0x0054a610    d9054c19d000
                         fadd.s             st(0), st(0)                                  // 0x0054a616    dcc0
                         {disp32} fstp      dword ptr [data_bytes + 0x33b93c]             // 0x0054a618    d91d3c19d000
                         ret                                                              // 0x0054a61e    c3
                         nop                                                              // 0x0054a61f    90
_globl_ct_0x0054a620:    {disp32} jmp       _jmp_addr_0x0054a630                          // 0x0054a620    e90b000000
                         nop                                                              // 0x0054a625    90
                         nop                                                              // 0x0054a626    90
                         nop                                                              // 0x0054a627    90
                         nop                                                              // 0x0054a628    90
                         nop                                                              // 0x0054a629    90
                         nop                                                              // 0x0054a62a    90
                         nop                                                              // 0x0054a62b    90
                         nop                                                              // 0x0054a62c    90
                         nop                                                              // 0x0054a62d    90
                         nop                                                              // 0x0054a62e    90
                         nop                                                              // 0x0054a62f    90
_jmp_addr_0x0054a630:    mov                ecx, 0x00d016f0                               // 0x0054a630    b9f016d000
                         {disp32} jmp       _jmp_addr_0x005e7a40                          // 0x0054a635    e906d40900
                         nop                                                              // 0x0054a63a    90
                         nop                                                              // 0x0054a63b    90
                         nop                                                              // 0x0054a63c    90
                         nop                                                              // 0x0054a63d    90
                         nop                                                              // 0x0054a63e    90
                         nop                                                              // 0x0054a63f    90
_globl_ct_0x0054a640:    call               _jmp_addr_0x0054a650                          // 0x0054a640    e80b000000
                         {disp32} jmp       _jmp_addr_0x0054a660                          // 0x0054a645    e916000000
                         nop                                                              // 0x0054a64a    90
                         nop                                                              // 0x0054a64b    90
                         nop                                                              // 0x0054a64c    90
                         nop                                                              // 0x0054a64d    90
                         nop                                                              // 0x0054a64e    90
                         nop                                                              // 0x0054a64f    90
_jmp_addr_0x0054a650:    mov                ecx, 0x00d01600                               // 0x0054a650    b90016d000
                         {disp32} jmp       _jmp_addr_0x005e7ce0                          // 0x0054a655    e986d60900
                         nop                                                              // 0x0054a65a    90
                         nop                                                              // 0x0054a65b    90
                         nop                                                              // 0x0054a65c    90
                         nop                                                              // 0x0054a65d    90
                         nop                                                              // 0x0054a65e    90
                         nop                                                              // 0x0054a65f    90
_jmp_addr_0x0054a660:    push               0x0054a670                                    // 0x0054a660    6870a65400
                         call               _jmp_addr_0x007c5791                          // 0x0054a665    e827b12700
                         pop                ecx                                           // 0x0054a66a    59
                         ret                                                              // 0x0054a66b    c3
                         nop                                                              // 0x0054a66c    90
                         nop                                                              // 0x0054a66d    90
                         nop                                                              // 0x0054a66e    90
                         nop                                                              // 0x0054a66f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x33b5f8]          // 0x0054a670    8a0df815d000
                         mov                al, 0x01                                      // 0x0054a676    b001
                         test               al, cl                                        // 0x0054a678    84c8
                         {disp8} jne        _jmp_addr_0x0054a68e                          // 0x0054a67a    7512
                         or.s               cl, al                                        // 0x0054a67c    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x33b5f8], cl          // 0x0054a67e    880df815d000
                         mov                ecx, 0x00d01600                               // 0x0054a684    b90016d000
                         {disp32} jmp       _jmp_addr_0x005e7d30                          // 0x0054a689    e9a2d60900
_jmp_addr_0x0054a68e:    ret                                                              // 0x0054a68e    c3
                         nop                                                              // 0x0054a68f    90
                         mov.s              eax, ebp                                      // 0x0054a690    8bc5
                         ret                                                              // 0x0054a692    c3
                         nop                                                              // 0x0054a693    90
                         nop                                                              // 0x0054a694    90
                         nop                                                              // 0x0054a695    90
                         nop                                                              // 0x0054a696    90
                         nop                                                              // 0x0054a697    90
                         nop                                                              // 0x0054a698    90
                         nop                                                              // 0x0054a699    90
                         nop                                                              // 0x0054a69a    90
                         nop                                                              // 0x0054a69b    90
                         nop                                                              // 0x0054a69c    90
                         nop                                                              // 0x0054a69d    90
                         nop                                                              // 0x0054a69e    90
                         nop                                                              // 0x0054a69f    90
                         push               ebp                                           // 0x0054a6a0    55
                         mov.s              ebp, esp                                      // 0x0054a6a1    8bec
                         push               ecx                                           // 0x0054a6a3    51
                         {disp32} mov       eax, fs:[0x18]                                // 0x0054a6a4    64a118000000
                         {disp8} mov        dword ptr [ebp + -0x04], eax                  // 0x0054a6aa    8945fc
                         {disp8} mov        eax, dword ptr [ebp + -0x04]                  // 0x0054a6ad    8b45fc
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0054a6b0    8b4808
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x0054a6b3    8b5508
                         mov                dword ptr [edx], ecx                          // 0x0054a6b6    890a
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0054a6b8    8b4004
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                   // 0x0054a6bb    8b4d0c
                         mov                dword ptr [ecx], eax                          // 0x0054a6be    8901
                         mov.s              esp, ebp                                      // 0x0054a6c0    8be5
                         pop                ebp                                           // 0x0054a6c2    5d
                         ret                                                              // 0x0054a6c3    c3
                         nop                                                              // 0x0054a6c4    90
                         nop                                                              // 0x0054a6c5    90
                         nop                                                              // 0x0054a6c6    90
                         nop                                                              // 0x0054a6c7    90
                         nop                                                              // 0x0054a6c8    90
                         nop                                                              // 0x0054a6c9    90
                         nop                                                              // 0x0054a6ca    90
                         nop                                                              // 0x0054a6cb    90
                         nop                                                              // 0x0054a6cc    90
                         nop                                                              // 0x0054a6cd    90
                         nop                                                              // 0x0054a6ce    90
                         nop                                                              // 0x0054a6cf    90
_globl_ct_0x0054a6d0:    call               _jmp_addr_0x0054a6e0                          // 0x0054a6d0    e80b000000
                         {disp32} jmp       _jmp_addr_0x0054a6f0                          // 0x0054a6d5    e916000000
                         nop                                                              // 0x0054a6da    90
                         nop                                                              // 0x0054a6db    90
                         nop                                                              // 0x0054a6dc    90
                         nop                                                              // 0x0054a6dd    90
                         nop                                                              // 0x0054a6de    90
                         nop                                                              // 0x0054a6df    90
_jmp_addr_0x0054a6e0:    mov                ecx, 0x00cd3b20                               // 0x0054a6e0    b9203bcd00
                         {disp32} jmp       _jmp_addr_0x00590f00                          // 0x0054a6e5    e916680400
                         nop                                                              // 0x0054a6ea    90
                         nop                                                              // 0x0054a6eb    90
                         nop                                                              // 0x0054a6ec    90
                         nop                                                              // 0x0054a6ed    90
                         nop                                                              // 0x0054a6ee    90
                         nop                                                              // 0x0054a6ef    90
_jmp_addr_0x0054a6f0:    push               0x0054a700                                    // 0x0054a6f0    6800a75400
                         call               _jmp_addr_0x007c5791                          // 0x0054a6f5    e897b02700
                         pop                ecx                                           // 0x0054a6fa    59
                         ret                                                              // 0x0054a6fb    c3
                         nop                                                              // 0x0054a6fc    90
                         nop                                                              // 0x0054a6fd    90
                         nop                                                              // 0x0054a6fe    90
                         nop                                                              // 0x0054a6ff    90
                         mov                ecx, 0x00cd3b24                               // 0x0054a700    b9243bcd00
                         {disp32} jmp       _jmp_addr_0x00511d70                          // 0x0054a705    e96676fcff
                         nop                                                              // 0x0054a70a    90
                         nop                                                              // 0x0054a70b    90
                         nop                                                              // 0x0054a70c    90
                         nop                                                              // 0x0054a70d    90
                         nop                                                              // 0x0054a70e    90
                         nop                                                              // 0x0054a70f    90
_jmp_addr_0x0054a710:    {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054a710    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00250538]             // 0x0054a716    8b8138052500
                         test               eax, eax                                      // 0x0054a71c    85c0
                         push               ebx                                           // 0x0054a71e    53
                         {disp32} mov       bl, byte ptr [data_bytes + 0x33b9a8]          // 0x0054a71f    8a1da819d000
                         {disp8} je         _jmp_addr_0x0054a74a                          // 0x0054a725    7423
                         call               @MyInterface__5GGameFv@4                      // 0x0054a727    e824b10000
                         test               eax, eax                                      // 0x0054a72c    85c0
                         {disp8} je         _jmp_addr_0x0054a74a                          // 0x0054a72e    741a
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054a730    8b0d5c19d000
                         push               0x0                                           // 0x0054a736    6a00
                         call               @MyInterface__5GGameFv@4                      // 0x0054a738    e813b10000
                         mov.s              ecx, eax                                      // 0x0054a73d    8bc8
                         call               _jmp_addr_0x005db710                          // 0x0054a73f    e8cc0f0900
                         test               eax, eax                                      // 0x0054a744    85c0
                         {disp8} je         _jmp_addr_0x0054a74a                          // 0x0054a746    7402
                         mov                bl, 0x01                                      // 0x0054a748    b301
_jmp_addr_0x0054a74a:    call               _GetCurrentActiveBox__8SetupBoxFv             // 0x0054a74a    e881d7ebff
                         test               eax, eax                                      // 0x0054a74f    85c0
                         {disp8} je         _jmp_addr_0x0054a765                          // 0x0054a751    7412
                         {disp32} mov       al, byte ptr [data_bytes + 0x286cee]          // 0x0054a753    a0eeccc400
                         test               al, al                                        // 0x0054a758    84c0
                         {disp8} je         _jmp_addr_0x0054a765                          // 0x0054a75a    7409
                         xor.s              al, al                                        // 0x0054a75c    32c0
                         {disp32} mov       byte ptr [data_bytes + 0x4c60fa], al          // 0x0054a75e    a2fac0e800
                         pop                ebx                                           // 0x0054a763    5b
                         ret                                                              // 0x0054a764    c3
_jmp_addr_0x0054a765:    {disp32} mov       byte ptr [data_bytes + 0x4c60fa], bl          // 0x0054a765    881dfac0e800
                         pop                ebx                                           // 0x0054a76b    5b
                         ret                                                              // 0x0054a76c    c3
                         nop                                                              // 0x0054a76d    90
                         nop                                                              // 0x0054a76e    90
                         nop                                                              // 0x0054a76f    90
_SetTurnOffMouseMove__Fb:{disp8} mov        al, byte ptr [esp + 0x04]                     // 0x0054a770    8a442404
                         {disp32} mov       byte ptr [data_bytes + 0x33b9a8], al          // 0x0054a774    a2a819d000
                         {disp32} jmp       _jmp_addr_0x0054a710                          // 0x0054a779    e992ffffff
                         nop                                                              // 0x0054a77e    90
                         nop                                                              // 0x0054a77f    90
_jmp_addr_0x0054a780:    push               ecx                                           // 0x0054a780    51
                         push               ebx                                           // 0x0054a781    53
                         push               ebp                                           // 0x0054a782    55
                         push               esi                                           // 0x0054a783    56
                         push               edi                                           // 0x0054a784    57
                         call               dword ptr [__imp__timeGetTime@4]              // 0x0054a785    ff158c988a00
                         xor.s              ebx, ebx                                      // 0x0054a78b    33db
                         {disp32} mov       dword ptr [data_bytes + 0x33b9ac], eax        // 0x0054a78d    a3ac19d000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30a63c]        // 0x0054a792    a13c06cd00
                         cmp.s              eax, ebx                                      // 0x0054a797    3bc3
                         {disp32} mov       dword ptr [data_bytes + 0x33b9b0], ebx        // 0x0054a799    891db019d000
                         {disp32} mov       byte ptr [data_bytes + 0x4c60fa], bl          // 0x0054a79f    881dfac0e800
                         {disp32} mov       byte ptr [data_bytes + 0x33b9a8], bl          // 0x0054a7a5    881da819d000
                         {disp8} je         _jmp_addr_0x0054a805                          // 0x0054a7ab    7458
                         {disp32} lea       edi, dword ptr [eax + 0x000000e8]             // 0x0054a7ad    8db8e8000000
_jmp_addr_0x0054a7b3:    mov                eax, dword ptr [edi]                          // 0x0054a7b3    8b07
                         cmp.s              eax, ebx                                      // 0x0054a7b5    3bc3
                         {disp8} je         _jmp_addr_0x0054a805                          // 0x0054a7b7    744c
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0054a7b9    8b4804
                         xor.s              ebp, ebp                                      // 0x0054a7bc    33ed
                         cmp.s              eax, ebx                                      // 0x0054a7be    3bc3
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0054a7c0    894c2410
                         {disp8} je         _jmp_addr_0x0054a7f6                          // 0x0054a7c4    7430
_jmp_addr_0x0054a7c6:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0054a7c6    8b542410
                         cmp                dword ptr [eax + 0x04], edx                   // 0x0054a7ca    395004
                         mov                esi, dword ptr [eax]                          // 0x0054a7cd    8b30
                         {disp8} jne        _jmp_addr_0x0054a7ee                          // 0x0054a7cf    751d
                         cmp                eax, dword ptr [edi]                          // 0x0054a7d1    3b07
                         {disp8} jne        _jmp_addr_0x0054a7d9                          // 0x0054a7d3    7504
                         mov                dword ptr [edi], esi                          // 0x0054a7d5    8937
                         {disp8} jmp        _jmp_addr_0x0054a7dc                          // 0x0054a7d7    eb03
_jmp_addr_0x0054a7d9:    {disp8} mov        dword ptr [ebp + 0x00], esi                   // 0x0054a7d9    897500
_jmp_addr_0x0054a7dc:    {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x0054a7dc    8b5704
                         dec                edx                                           // 0x0054a7df    4a
                         push               eax                                           // 0x0054a7e0    50
                         {disp8} mov        dword ptr [edi + 0x04], edx                   // 0x0054a7e1    895704
                         call               ___dl__FPv                                    // 0x0054a7e4    e8af462600
                         add                esp, 0x04                                     // 0x0054a7e9    83c404
                         {disp8} jmp        _jmp_addr_0x0054a7f0                          // 0x0054a7ec    eb02
_jmp_addr_0x0054a7ee:    mov.s              ebp, eax                                      // 0x0054a7ee    8be8
_jmp_addr_0x0054a7f0:    cmp.s              esi, ebx                                      // 0x0054a7f0    3bf3
                         mov.s              eax, esi                                      // 0x0054a7f2    8bc6
                         {disp8} jne        _jmp_addr_0x0054a7c6                          // 0x0054a7f4    75d0
_jmp_addr_0x0054a7f6:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0054a7f6    8b442410
                         push               eax                                           // 0x0054a7fa    50
                         call               ___dl__FPv                                    // 0x0054a7fb    e898462600
                         add                esp, 0x04                                     // 0x0054a800    83c404
                         {disp8} jmp        _jmp_addr_0x0054a7b3                          // 0x0054a803    ebae
_jmp_addr_0x0054a805:    or                 eax, -0x1                                     // 0x0054a805    83c8ff
                         mov                esi, 0x00000001                               // 0x0054a808    be01000000
                         {disp32} mov       byte ptr [data_bytes + 0x33b9a9], bl          // 0x0054a80d    881da919d000
                         {disp32} mov       dword ptr [data_bytes + 0x7380], eax          // 0x0054a813    a380d39c00
                         {disp32} mov       dword ptr [data_bytes + 0x292cc4], ebx        // 0x0054a818    891dc48cc500
                         {disp32} mov       dword ptr [data_bytes + 0x7384], esi          // 0x0054a81e    893584d39c00
                         {disp32} mov       dword ptr [data_bytes + 0x7388], eax          // 0x0054a824    a388d39c00
                         {disp32} mov       byte ptr [data_bytes + 0x25e758], 0x01        // 0x0054a829    c6055847c20001
                         {disp32} mov       byte ptr [data_bytes + 0x25e759], 0x01        // 0x0054a830    c6055947c20001
                         {disp32} mov       dword ptr [data_bytes + 0x4058b8], ebx        // 0x0054a837    891db8b8dc00
                         {disp32} mov       dword ptr [data_bytes + 0x4058bc], ebx        // 0x0054a83d    891dbcb8dc00
                         {disp32} mov       dword ptr [data_bytes + 0x4058c0], ebx        // 0x0054a843    891dc0b8dc00
                         {disp32} mov       dword ptr [data_bytes + 0x25e75c], esi        // 0x0054a849    89355c47c200
                         {disp32} mov       byte ptr [data_bytes + 0x3daa10], bl          // 0x0054a84f    881d100ada00
                         {disp32} mov       dword ptr [data_bytes + 0x33ba80], ebx        // 0x0054a855    891d801ad000
                         {disp32} mov       dword ptr [data_bytes + 0x351bb0], ebx        // 0x0054a85b    891db07bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bb4], ebx        // 0x0054a861    891db47bd100
                         {disp32} mov       dword ptr [data_bytes + 0x22b9c0], eax        // 0x0054a867    a3c019bf00
                         {disp32} mov       dword ptr [data_bytes + 0x351bb8], ebx        // 0x0054a86c    891db87bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bbc], 0x00000000 // 0x0054a872    c705bc7bd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351bc0], ebx        // 0x0054a87c    891dc07bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], ebx        // 0x0054a882    891dc47bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bc8], ebx        // 0x0054a888    891dc87bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bcc], ebx        // 0x0054a88e    891dcc7bd100
                         {disp32} mov       dword ptr [data_bytes + 0x22b9c4], eax        // 0x0054a894    a3c419bf00
                         {disp32} mov       dword ptr [data_bytes + 0x22b9c8], eax        // 0x0054a899    a3c819bf00
                         {disp32} mov       dword ptr [data_bytes + 0x351bd0], ebx        // 0x0054a89e    891dd07bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bd4], ebx        // 0x0054a8a4    891dd47bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bd8], ebx        // 0x0054a8aa    891dd87bd100
                         {disp32} mov       dword ptr [data_bytes + 0x22b9cc], 0x00000003 // 0x0054a8b0    c705cc19bf0003000000
                         {disp32} mov       dword ptr [data_bytes + 0x351bdc], ebx        // 0x0054a8ba    891ddc7bd100
                         {disp32} mov       dword ptr [data_bytes + 0x38a6b8], ebx        // 0x0054a8c0    891db806d500
                         {disp32} mov       dword ptr [data_bytes + 0x388f14], ebx        // 0x0054a8c6    891d14efd400
                         call               _jmp_addr_0x0086c560                          // 0x0054a8cc    e88f1c3200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x52437c]        // 0x0054a8d1    8b0d7ca3ee00
                         cmp.s              ecx, ebx                                      // 0x0054a8d7    3bcb
                         {disp8} je         _jmp_addr_0x0054a8eb                          // 0x0054a8d9    7410
_jmp_addr_0x0054a8db:    mov                edx, dword ptr [ecx]                          // 0x0054a8db    8b11
                         push               esi                                           // 0x0054a8dd    56
                         call               dword ptr [edx + 0x10]                        // 0x0054a8de    ff5210
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x52437c]        // 0x0054a8e1    8b0d7ca3ee00
                         cmp.s              ecx, ebx                                      // 0x0054a8e7    3bcb
                         {disp8} jne        _jmp_addr_0x0054a8db                          // 0x0054a8e9    75f0
_jmp_addr_0x0054a8eb:    {disp32} mov       edi, dword ptr [data_bytes + 0x516350]        // 0x0054a8eb    8b3d50c3ed00
                         xor.s              eax, eax                                      // 0x0054a8f1    33c0
                         mov                ecx, 0x00008000                               // 0x0054a8f3    b900800000
                         rep stosd                                                        // 0x0054a8f8    f3ab
                         {disp32} mov       dword ptr [data_bytes + 0x516348], eax        // 0x0054a8fa    a348c3ed00
                         {disp32} mov       dword ptr [data_bytes + 0x51634c], eax        // 0x0054a8ff    a34cc3ed00
                         push               ecx                                           // 0x0054a904    51
                         mov.s              eax, esp                                      // 0x0054a905    8bc4
                         {disp32} mov       byte ptr [data_bytes + 0x516340], 0x01        // 0x0054a907    c60540c3ed0001
                         mov                dword ptr [eax], ebx                          // 0x0054a90e    8918
                         call               _jmp_addr_0x0053ce60                          // 0x0054a910    e84b25ffff
                         add                esp, 0x04                                     // 0x0054a915    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x3d0270], esi        // 0x0054a918    89357062d900
                         call               _jmp_addr_0x00634020                          // 0x0054a91e    e8fd960e00
                         pop                edi                                           // 0x0054a923    5f
                         pop                esi                                           // 0x0054a924    5e
                         pop                ebp                                           // 0x0054a925    5d
                         {disp32} mov       dword ptr [data_bytes + 0x226284], 0x00000007 // 0x0054a926    c70584c2be0007000000
                         pop                ebx                                           // 0x0054a930    5b
                         pop                ecx                                           // 0x0054a931    59
                         ret                                                              // 0x0054a932    c3
                         nop                                                              // 0x0054a933    90
                         nop                                                              // 0x0054a934    90
                         nop                                                              // 0x0054a935    90
                         nop                                                              // 0x0054a936    90
                         nop                                                              // 0x0054a937    90
                         nop                                                              // 0x0054a938    90
                         nop                                                              // 0x0054a939    90
                         nop                                                              // 0x0054a93a    90
                         nop                                                              // 0x0054a93b    90
                         nop                                                              // 0x0054a93c    90
                         nop                                                              // 0x0054a93d    90
                         nop                                                              // 0x0054a93e    90
                         nop                                                              // 0x0054a93f    90
_jmp_addr_0x0054a940:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054a940    a15c19d000
                         push               ebx                                           // 0x0054a945    53
                         xor.s              ebx, ebx                                      // 0x0054a946    33db
                         cmp.s              eax, ebx                                      // 0x0054a948    3bc3
                         {disp8} je         _jmp_addr_0x0054a9a0                          // 0x0054a94a    7454
                         push               esi                                           // 0x0054a94c    56
                         {disp32} mov       esi, dword ptr [eax + 0x00250188]             // 0x0054a94d    8bb088012500
                         cmp.s              esi, ebx                                      // 0x0054a953    3bf3
                         {disp8} je         _jmp_addr_0x0054a983                          // 0x0054a955    742c
                         mov.s              ecx, esi                                      // 0x0054a957    8bce
                         call               _jmp_addr_0x00844d30                          // 0x0054a959    e8d2a32f00
                         push               esi                                           // 0x0054a95e    56
                         call               ___dl__FPv                                    // 0x0054a95f    e834452600
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054a964    a15c19d000
                         {disp32} mov       dword ptr [eax + 0x00250188], ebx             // 0x0054a969    899888012500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b98c]        // 0x0054a96f    a18c19d000
                         add                esp, 0x04                                     // 0x0054a974    83c404
                         inc                eax                                           // 0x0054a977    40
                         {disp32} mov       dword ptr [data_bytes + 0x33b98c], eax        // 0x0054a978    a38c19d000
                         {disp32} mov       byte ptr [data_bytes + 0x33b984], bl          // 0x0054a97d    881d8419d000
_jmp_addr_0x0054a983:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b998]        // 0x0054a983    a19819d000
                         cmp.s              eax, ebx                                      // 0x0054a988    3bc3
                         pop                esi                                           // 0x0054a98a    5e
                         {disp8} je         _jmp_addr_0x0054a994                          // 0x0054a98b    7407
                         push               eax                                           // 0x0054a98d    50
                         call               dword ptr [__imp__timeKillEvent@4]            // 0x0054a98e    ff1590988a00
_jmp_addr_0x0054a994:    {disp32} mov       dword ptr [data_bytes + 0x33b998], ebx        // 0x0054a994    891d9819d000
                         {disp32} mov       dword ptr [data_bytes + 0x33b990], ebx        // 0x0054a99a    891d9019d000
_jmp_addr_0x0054a9a0:    pop                ebx                                           // 0x0054a9a0    5b
                         ret                                                              // 0x0054a9a1    c3
                         nop                                                              // 0x0054a9a2    90
                         nop                                                              // 0x0054a9a3    90
                         nop                                                              // 0x0054a9a4    90
                         nop                                                              // 0x0054a9a5    90
                         nop                                                              // 0x0054a9a6    90
                         nop                                                              // 0x0054a9a7    90
                         nop                                                              // 0x0054a9a8    90
                         nop                                                              // 0x0054a9a9    90
                         nop                                                              // 0x0054a9aa    90
                         nop                                                              // 0x0054a9ab    90
                         nop                                                              // 0x0054a9ac    90
                         nop                                                              // 0x0054a9ad    90
                         nop                                                              // 0x0054a9ae    90
                         nop                                                              // 0x0054a9af    90
_jmp_addr_0x0054a9b0:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054a9b0    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00250188]             // 0x0054a9b5    8b8088012500
                         sub                esp, 0x50                                     // 0x0054a9bb    83ec50
                         test               eax, eax                                      // 0x0054a9be    85c0
                         {disp8} je         _jmp_addr_0x0054aa3a                          // 0x0054a9c0    7478
                         cmp                dword ptr [eax + 0x10], 0x02                  // 0x0054a9c2    83781002
                         {disp8} jle        _jmp_addr_0x0054aa3a                          // 0x0054a9c6    7e72
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b990]        // 0x0054a9c8    a19019d000
                         test               eax, eax                                      // 0x0054a9cd    85c0
                         {disp8} jne        _jmp_addr_0x0054aa3a                          // 0x0054a9cf    7569
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b994]        // 0x0054a9d1    a19419d000
                         test               eax, eax                                      // 0x0054a9d6    85c0
                         {disp8} je         _jmp_addr_0x0054aa3a                          // 0x0054a9d8    7460
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0054a9da    8d4c2400
                         call               dword ptr [rdata_bytes + 0x730]               // 0x0054a9de    ff1530978a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33b994]        // 0x0054a9e4    8b0d9419d000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0054a9ea    8d542400
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x0054a9ee    894c2400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30db20]        // 0x0054a9f2    8b0d203bcd00
                         push               edx                                           // 0x0054a9f8    52
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x0054a9f9    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000001            // 0x0054aa01    c744241801000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x0054aa09    c744242000000000
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000001            // 0x0054aa11    c744242401000000
                         {disp8} mov        dword ptr [esp + 0x08], 0x0000007f            // 0x0054aa19    c74424087f000000
                         call               _jmp_addr_0x004286a0                          // 0x0054aa21    e87adcedff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0054aa26    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x33b990], 0x00000001 // 0x0054aa2a    c7059019d00001000000
                         call               dword ptr [rdata_bytes + 0x724]               // 0x0054aa34    ff1524978a00
_jmp_addr_0x0054aa3a:    add                esp, 0x50                                     // 0x0054aa3a    83c450
                         ret                                                              // 0x0054aa3d    c3
                         nop                                                              // 0x0054aa3e    90
                         nop                                                              // 0x0054aa3f    90
_jmp_addr_0x0054aa40:    {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x0054aa40    8a442404
                         test               al, al                                        // 0x0054aa44    84c0
                         {disp8} je         _jmp_addr_0x0054aa4d                          // 0x0054aa46    7405
                         call               _jmp_addr_0x00844c80                          // 0x0054aa48    e833a22f00
_jmp_addr_0x0054aa4d:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054aa4d    a15c19d000
                         test               eax, eax                                      // 0x0054aa52    85c0
                         push               esi                                           // 0x0054aa54    56
                         {disp8} je         _jmp_addr_0x0054aac7                          // 0x0054aa55    7470
                         {disp32} mov       esi, dword ptr [eax + 0x00250188]             // 0x0054aa57    8bb088012500
                         test               esi, esi                                      // 0x0054aa5d    85f6
                         {disp8} je         _jmp_addr_0x0054aac7                          // 0x0054aa5f    7466
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x0054aa61    8b4e10
                         cmp                ecx, dword ptr [eax + 0x00250190]             // 0x0054aa64    3b8890012500
                         {disp8} jle        _jmp_addr_0x0054aa78                          // 0x0054aa6a    7e0c
                         push               0x1                                           // 0x0054aa6c    6a01
                         call               _jmp_addr_0x0054a940                          // 0x0054aa6e    e8cdfeffff
                         add                esp, 0x04                                     // 0x0054aa73    83c404
                         {disp8} jmp        _jmp_addr_0x0054aac7                          // 0x0054aa76    eb4f
_jmp_addr_0x0054aa78:    {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x0054aa78    8b461c
                         test               eax, eax                                      // 0x0054aa7b    85c0
                         {disp8} je         _jmp_addr_0x0054aa8d                          // 0x0054aa7d    740e
                         {disp8} mov        ecx, dword ptr [esi + 0x20]                   // 0x0054aa7f    8b4e20
                         test               ecx, ecx                                      // 0x0054aa82    85c9
                         {disp8} je         _jmp_addr_0x0054aa8d                          // 0x0054aa84    7407
                         push               eax                                           // 0x0054aa86    50
                         call               dword ptr [__imp__BinkNextFrame@4]            // 0x0054aa87    ff1544998a00
_jmp_addr_0x0054aa8d:    {disp8} mov        dword ptr [esi + 0x20], 0x00000000            // 0x0054aa8d    c7462000000000
                         {disp8} mov        esi, dword ptr [esi + 0x1c]                   // 0x0054aa94    8b761c
                         test               esi, esi                                      // 0x0054aa97    85f6
                         {disp8} je         _jmp_addr_0x0054aac7                          // 0x0054aa99    742c
                         push               esi                                           // 0x0054aa9b    56
                         call               dword ptr [__imp__BinkWait@4]                 // 0x0054aa9c    ff1538998a00
                         neg                eax                                           // 0x0054aaa2    f7d8
                         sbb.s              eax, eax                                      // 0x0054aaa4    1bc0
                         inc                eax                                           // 0x0054aaa6    40
                         test               al, al                                        // 0x0054aaa7    84c0
                         {disp8} je         _jmp_addr_0x0054aac7                          // 0x0054aaa9    741c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x33b95c]        // 0x0054aaab    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250188]             // 0x0054aab1    8b8a88012500
                         call               _jmp_addr_0x008450b0                          // 0x0054aab7    e8f4a52f00
                         call               _jmp_addr_0x0054a9b0                          // 0x0054aabc    e8effeffff
                         {disp32} inc       dword ptr [data_bytes + 0x33b988]             // 0x0054aac1    ff058819d000
_jmp_addr_0x0054aac7:    {disp8} mov        al, byte ptr [esp + 0x0c]                     // 0x0054aac7    8a44240c
                         test               al, al                                        // 0x0054aacb    84c0
                         pop                esi                                           // 0x0054aacd    5e
                         {disp8} je         _jmp_addr_0x0054aad5                          // 0x0054aace    7405
                         {disp32} jmp       _jmp_addr_0x00844ca0                          // 0x0054aad0    e9cba12f00
_jmp_addr_0x0054aad5:    ret                                                              // 0x0054aad5    c3
                         nop                                                              // 0x0054aad6    90
                         nop                                                              // 0x0054aad7    90
                         nop                                                              // 0x0054aad8    90
                         nop                                                              // 0x0054aad9    90
                         nop                                                              // 0x0054aada    90
                         nop                                                              // 0x0054aadb    90
                         nop                                                              // 0x0054aadc    90
                         nop                                                              // 0x0054aadd    90
                         nop                                                              // 0x0054aade    90
                         nop                                                              // 0x0054aadf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0054aae0    8b442404
                         cmp                eax, dword ptr [data_bytes + 0x33b998]        // 0x0054aae4    3b059819d000
                         {disp8} jne        _jmp_addr_0x0054aaf8                          // 0x0054aaea    750c
                         push               0x1                                           // 0x0054aaec    6a01
                         push               0x1                                           // 0x0054aaee    6a01
                         call               _jmp_addr_0x0054aa40                          // 0x0054aaf0    e84bffffff
                         add                esp, 0x08                                     // 0x0054aaf5    83c408
_jmp_addr_0x0054aaf8:    ret                0x0014                                        // 0x0054aaf8    c21400
                         call               _jmp_addr_0x00401879                          // 0x0054aafb    e8796debff
_jmp_addr_0x0054ab00:    push               0x1                                           // 0x0054ab00    6a01
                         push               0x0                                           // 0x0054ab02    6a00
                         push               0x0054aae0                                    // 0x0054ab04    68e0aa5400
                         push               0x5                                           // 0x0054ab09    6a05
                         push               0x10                                          // 0x0054ab0b    6a10
                         call               dword ptr [__imp__timeSetEvent@4]             // 0x0054ab0d    ff1598988a00
                         {disp32} mov       dword ptr [data_bytes + 0x33b998], eax        // 0x0054ab13    a39819d000
                         ret                                                              // 0x0054ab18    c3
                         nop                                                              // 0x0054ab19    90
                         nop                                                              // 0x0054ab1a    90
                         nop                                                              // 0x0054ab1b    90
                         nop                                                              // 0x0054ab1c    90
                         nop                                                              // 0x0054ab1d    90
                         nop                                                              // 0x0054ab1e    90
                         nop                                                              // 0x0054ab1f    90
_jmp_addr_0x0054ab20:    {disp32} mov       al, byte ptr [data_bytes + 0x380ab8]          // 0x0054ab20    a0b86ad400
                         sub                esp, 0x00000400                               // 0x0054ab25    81ec00040000
                         push               ebx                                           // 0x0054ab2b    53
                         push               ebp                                           // 0x0054ab2c    55
                         xor.s              ebx, ebx                                      // 0x0054ab2d    33db
                         cmp.s              al, bl                                        // 0x0054ab2f    3ac3
                         push               esi                                           // 0x0054ab31    56
                         push               edi                                           // 0x0054ab32    57
                         {disp8} je         _jmp_addr_0x0054ab9c                          // 0x0054ab33    7467
                         {disp32} mov       edi, dword ptr [esp + 0x00000414]             // 0x0054ab35    8bbc2414040000
                         {disp32} lea       eax, dword ptr [esp + 0x00000110]             // 0x0054ab3c    8d842410010000
                         push               eax                                           // 0x0054ab43    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000214]             // 0x0054ab44    8d8c2414020000
                         push               ecx                                           // 0x0054ab4b    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000318]             // 0x0054ab4c    8d942418030000
                         push               edx                                           // 0x0054ab53    52
                         push               ebx                                           // 0x0054ab54    53
                         push               edi                                           // 0x0054ab55    57
                         call               _jmp_addr_0x007c8668                          // 0x0054ab56    e80ddb2700
                         movsx              edx, byte ptr [data_bytes + 0x2659e8]         // 0x0054ab5b    0fbe15e8b9c200
                         add                esp, 0x14                                     // 0x0054ab62    83c414
                         {disp32} lea       eax, dword ptr [esp + 0x00000110]             // 0x0054ab65    8d842410010000
                         push               eax                                           // 0x0054ab6c    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000214]             // 0x0054ab6d    8d8c2414020000
                         push               ecx                                           // 0x0054ab74    51
                         push               edx                                           // 0x0054ab75    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0054ab76    8d44241c
                         push               0x00bec348                                    // 0x0054ab7a    6848c3be00
                         push               eax                                           // 0x0054ab7f    50
                         call               _jmp_addr_0x007c57d2                          // 0x0054ab80    e84dac2700
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0054ab85    8d4c2424
                         push               ecx                                           // 0x0054ab89    51
                         call               _Exists__8LHOSFileFPc                         // 0x0054ab8a    e8111b2700
                         add                esp, 0x18                                     // 0x0054ab8f    83c418
                         test               eax, eax                                      // 0x0054ab92    85c0
                         {disp8} je         _jmp_addr_0x0054abc4                          // 0x0054ab94    742e
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0054ab96    8d542410
                         {disp8} jmp        _jmp_addr_0x0054aba7                          // 0x0054ab9a    eb0b
_jmp_addr_0x0054ab9c:    {disp32} mov       edi, dword ptr [esp + 0x00000414]             // 0x0054ab9c    8bbc2414040000
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0054aba3    8d542410
_jmp_addr_0x0054aba7:    or                 ecx, 0xffffffff                               // 0x0054aba7    83c9ff
                         xor.s              eax, eax                                      // 0x0054abaa    33c0
                         repne scasb                                                      // 0x0054abac    f2ae
                         not                ecx                                           // 0x0054abae    f7d1
                         sub.s              edi, ecx                                      // 0x0054abb0    2bf9
                         mov.s              eax, ecx                                      // 0x0054abb2    8bc1
                         mov.s              esi, edi                                      // 0x0054abb4    8bf7
                         shr                ecx, 2                                        // 0x0054abb6    c1e902
                         mov.s              edi, edx                                      // 0x0054abb9    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0054abbb    f3a5
                         mov.s              ecx, eax                                      // 0x0054abbd    8bc8
                         and                ecx, 0x03                                     // 0x0054abbf    83e103
                         rep movsb                                                        // 0x0054abc2    f3a4
_jmp_addr_0x0054abc4:    call               _jmp_addr_0x00844c80                          // 0x0054abc4    e8b7a02f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054abc9    a15c19d000
                         cmp.s              eax, ebx                                      // 0x0054abce    3bc3
                         {disp32} mov       dword ptr [data_bytes + 0x33b98c], ebx        // 0x0054abd0    891d8c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x33b990], ebx        // 0x0054abd6    891d9019d000
                         {disp32} je        _jmp_addr_0x0054ac76                          // 0x0054abdc    0f8494000000
                         {disp32} mov       dword ptr [data_bytes + 0x33b988], ebx        // 0x0054abe2    891d8819d000
                         cmp                dword ptr [eax + 0x00250188], ebx             // 0x0054abe8    399888012500
                         {disp8} je         _jmp_addr_0x0054abf9                          // 0x0054abee    7409
                         push               ebx                                           // 0x0054abf0    53
                         call               _jmp_addr_0x0054a940                          // 0x0054abf1    e84afdffff
                         add                esp, 0x04                                     // 0x0054abf6    83c404
_jmp_addr_0x0054abf9:    push               0x000002d6                                    // 0x0054abf9    68d6020000
                         push               0x00bec32c                                    // 0x0054abfe    682cc3be00
                         push               0x68                                          // 0x0054ac03    6a68
                         call               ___nw__FUl                                    // 0x0054ac05    e8860b2900
                         add                esp, 0x0c                                     // 0x0054ac0a    83c40c
                         cmp.s              eax, ebx                                      // 0x0054ac0d    3bc3
                         {disp8} je         _jmp_addr_0x0054ac1a                          // 0x0054ac0f    7409
                         mov.s              ecx, eax                                      // 0x0054ac11    8bc8
                         call               _jmp_addr_0x00844d00                          // 0x0054ac13    e8e8a02f00
                         {disp8} jmp        _jmp_addr_0x0054ac1c                          // 0x0054ac18    eb02
_jmp_addr_0x0054ac1a:    xor.s              eax, eax                                      // 0x0054ac1a    33c0
_jmp_addr_0x0054ac1c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054ac1c    8b0d5c19d000
                         push               ebx                                           // 0x0054ac22    53
                         {disp32} mov       dword ptr [ecx + 0x00250188], eax             // 0x0054ac23    898188012500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054ac29    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250188]             // 0x0054ac2e    8b8888012500
                         push               0x1                                           // 0x0054ac34    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0054ac36    8d542418
                         push               edx                                           // 0x0054ac3a    52
                         call               _jmp_addr_0x00844e70                          // 0x0054ac3b    e830a22f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054ac40    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250188]             // 0x0054ac45    8b8888012500
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x0054ac4b    8b510c
                         {disp32} mov       dword ptr [eax + 0x00250190], edx             // 0x0054ac4e    899090012500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054ac54    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00250188]             // 0x0054ac5a    8b8188012500
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0054ac60    8b5008
                         imul               edx, dword ptr [esp + 0x00000418]             // 0x0054ac63    0faf942418040000
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                   // 0x0054ac6b    8b400c
                         sub.s              eax, edx                                      // 0x0054ac6e    2bc2
                         {disp32} mov       dword ptr [ecx + 0x0025018c], eax             // 0x0054ac70    89818c012500
_jmp_addr_0x0054ac76:    {disp32} mov       ebp, dword ptr [__imp__Sleep@4]               // 0x0054ac76    8b2d30928a00
                         xor.s              edi, edi                                      // 0x0054ac7c    33ff
_jmp_addr_0x0054ac7e:    {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054ac7e    8b0d5c19d000
                         {disp32} mov       esi, dword ptr [ecx + 0x00250188]             // 0x0054ac84    8bb188012500
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x0054ac8a    8b461c
                         cmp.s              eax, ebx                                      // 0x0054ac8d    3bc3
                         {disp8} je         _jmp_addr_0x0054ac9d                          // 0x0054ac8f    740c
                         cmp                dword ptr [esi + 0x20], ebx                   // 0x0054ac91    395e20
                         {disp8} je         _jmp_addr_0x0054ac9d                          // 0x0054ac94    7407
                         push               eax                                           // 0x0054ac96    50
                         call               dword ptr [__imp__BinkNextFrame@4]            // 0x0054ac97    ff1544998a00
_jmp_addr_0x0054ac9d:    {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x0054ac9d    895e20
                         {disp8} mov        esi, dword ptr [esi + 0x1c]                   // 0x0054aca0    8b761c
                         cmp.s              esi, ebx                                      // 0x0054aca3    3bf3
                         {disp8} je         _jmp_addr_0x0054acb7                          // 0x0054aca5    7410
                         push               esi                                           // 0x0054aca7    56
                         call               dword ptr [__imp__BinkWait@4]                 // 0x0054aca8    ff1538998a00
                         neg                eax                                           // 0x0054acae    f7d8
                         sbb.s              eax, eax                                      // 0x0054acb0    1bc0
                         inc                eax                                           // 0x0054acb2    40
                         cmp.s              al, bl                                        // 0x0054acb3    3ac3
                         {disp8} jne        _jmp_addr_0x0054acda                          // 0x0054acb5    7523
_jmp_addr_0x0054acb7:    {disp32} mov       edx, dword ptr [data_bytes + 0x33b95c]        // 0x0054acb7    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250188]             // 0x0054acbd    8b8288012500
                         {disp8} mov        eax, dword ptr [eax + 0x1c]                   // 0x0054acc3    8b401c
                         cmp.s              eax, ebx                                      // 0x0054acc6    3bc3
                         {disp8} je         _jmp_addr_0x0054acd1                          // 0x0054acc8    7407
                         push               eax                                           // 0x0054acca    50
                         call               dword ptr [__imp__BinkService@4]              // 0x0054accb    ff1534998a00
_jmp_addr_0x0054acd1:    push               ebx                                           // 0x0054acd1    53
                         call               ebp                                           // 0x0054acd2    ffd5
                         inc                edi                                           // 0x0054acd4    47
                         cmp                edi, 0x0a                                     // 0x0054acd5    83ff0a
                         {disp8} jl         _jmp_addr_0x0054ac7e                          // 0x0054acd8    7ca4
_jmp_addr_0x0054acda:    call               _jmp_addr_0x00844ca0                          // 0x0054acda    e8c19f2f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226174]        // 0x0054acdf    a174c1be00
                         pop                edi                                           // 0x0054ace4    5f
                         pop                esi                                           // 0x0054ace5    5e
                         pop                ebp                                           // 0x0054ace6    5d
                         cmp.s              eax, ebx                                      // 0x0054ace7    3bc3
                         pop                ebx                                           // 0x0054ace9    5b
                         {disp8} jne        _jmp_addr_0x0054acf2                          // 0x0054acea    7506
                         call               dword ptr [data_bytes + 0x22617c]             // 0x0054acec    ff157cc1be00
_jmp_addr_0x0054acf2:    add                esp, 0x00000400                               // 0x0054acf2    81c400040000
                         ret                                                              // 0x0054acf8    c3
                         nop                                                              // 0x0054acf9    90
                         nop                                                              // 0x0054acfa    90
                         nop                                                              // 0x0054acfb    90
                         nop                                                              // 0x0054acfc    90
                         nop                                                              // 0x0054acfd    90
                         nop                                                              // 0x0054acfe    90
                         nop                                                              // 0x0054acff    90
                         push               ebx                                           // 0x0054ad00    53
                         push               0x00cd3af8                                    // 0x0054ad01    68f83acd00
                         call               dword ptr [__imp__EnterCriticalSection@4]     // 0x0054ad06    ff1580918a00
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0054ad0c    8b442408
                         xor.s              ebx, ebx                                      // 0x0054ad10    33db
                         cmp.s              eax, ebx                                      // 0x0054ad12    3bc3
                         {disp32} je        _jmp_addr_0x0054ae07                          // 0x0054ad14    0f84ed000000
                         push               ebp                                           // 0x0054ad1a    55
                         push               esi                                           // 0x0054ad1b    56
                         push               edi                                           // 0x0054ad1c    57
                         push               0x8                                           // 0x0054ad1d    6a08
                         push               eax                                           // 0x0054ad1f    50
                         call               _jmp_addr_0x0054ab20                          // 0x0054ad20    e8fbfdffff
                         {disp32} mov       edi, dword ptr [__imp__BinkWait@4]            // 0x0054ad25    8b3d38998a00
                         {disp32} mov       ebp, dword ptr [__imp__BinkNextFrame@4]       // 0x0054ad2b    8b2d44998a00
                         add                esp, 0x08                                     // 0x0054ad31    83c408
_jmp_addr_0x0054ad34:    call               _jmp_addr_0x00844c80                          // 0x0054ad34    e8479f2f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054ad39    a15c19d000
                         cmp.s              eax, ebx                                      // 0x0054ad3e    3bc3
                         {disp32} je        _jmp_addr_0x0054adff                          // 0x0054ad40    0f84b9000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250188]             // 0x0054ad46    8b8888012500
                         cmp.s              ecx, ebx                                      // 0x0054ad4c    3bcb
                         {disp32} je        _jmp_addr_0x0054ade9                          // 0x0054ad4e    0f8495000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x1c]                   // 0x0054ad54    8b491c
                         cmp.s              ecx, ebx                                      // 0x0054ad57    3bcb
                         {disp8} je         _jmp_addr_0x0054ad67                          // 0x0054ad59    740c
                         push               ecx                                           // 0x0054ad5b    51
                         call               dword ptr [__imp__BinkService@4]              // 0x0054ad5c    ff1534998a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054ad62    a15c19d000
_jmp_addr_0x0054ad67:    {disp32} mov       ecx, dword ptr [eax + 0x00250188]             // 0x0054ad67    8b8888012500
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x0054ad6d    8b5110
                         cmp                edx, dword ptr [eax + 0x00250190]             // 0x0054ad70    3b9090012500
                         {disp8} jg         _jmp_addr_0x0054ade9                          // 0x0054ad76    7f71
_jmp_addr_0x0054ad78:    {disp32} mov       esi, dword ptr [eax + 0x00250188]             // 0x0054ad78    8bb088012500
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x0054ad7e    8b461c
                         cmp.s              eax, ebx                                      // 0x0054ad81    3bc3
                         {disp8} je         _jmp_addr_0x0054ad8d                          // 0x0054ad83    7408
                         cmp                dword ptr [esi + 0x20], ebx                   // 0x0054ad85    395e20
                         {disp8} je         _jmp_addr_0x0054ad8d                          // 0x0054ad88    7403
                         push               eax                                           // 0x0054ad8a    50
                         call               ebp                                           // 0x0054ad8b    ffd5
_jmp_addr_0x0054ad8d:    {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x0054ad8d    895e20
                         {disp8} mov        esi, dword ptr [esi + 0x1c]                   // 0x0054ad90    8b761c
                         cmp.s              esi, ebx                                      // 0x0054ad93    3bf3
                         {disp8} je         _jmp_addr_0x0054ada3                          // 0x0054ad95    740c
                         push               esi                                           // 0x0054ad97    56
                         call               edi                                           // 0x0054ad98    ffd7
                         neg                eax                                           // 0x0054ad9a    f7d8
                         sbb.s              eax, eax                                      // 0x0054ad9c    1bc0
                         inc                eax                                           // 0x0054ad9e    40
                         cmp.s              al, bl                                        // 0x0054ad9f    3ac3
                         {disp8} jne        _jmp_addr_0x0054adb7                          // 0x0054ada1    7514
_jmp_addr_0x0054ada3:    push               0x000001f4                                    // 0x0054ada3    68f4010000
                         call               _jmp_addr_0x00642610                          // 0x0054ada8    e863780f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054adad    a15c19d000
                         add                esp, 0x04                                     // 0x0054adb2    83c404
                         {disp8} jmp        _jmp_addr_0x0054ad78                          // 0x0054adb5    ebc1
_jmp_addr_0x0054adb7:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054adb7    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250188]             // 0x0054adbc    8b8888012500
                         call               _jmp_addr_0x008450b0                          // 0x0054adc2    e8e9a22f00
                         call               _jmp_addr_0x0054a9b0                          // 0x0054adc7    e8e4fbffff
                         {disp32} inc       dword ptr [data_bytes + 0x33b988]             // 0x0054adcc    ff058819d000
                         call               _jmp_addr_0x00844ca0                          // 0x0054add2    e8c99e2f00
                         push               0x000001f4                                    // 0x0054add7    68f4010000
                         call               _jmp_addr_0x00642610                          // 0x0054addc    e82f780f00
                         add                esp, 0x04                                     // 0x0054ade1    83c404
                         {disp32} jmp       _jmp_addr_0x0054ad34                          // 0x0054ade4    e94bffffff
_jmp_addr_0x0054ade9:    cmp.s              eax, ebx                                      // 0x0054ade9    3bc3
                         {disp8} je         _jmp_addr_0x0054adff                          // 0x0054adeb    7412
                         cmp                dword ptr [eax + 0x00250188], ebx             // 0x0054aded    399888012500
                         {disp8} je         _jmp_addr_0x0054adff                          // 0x0054adf3    740a
                         push               0x1                                           // 0x0054adf5    6a01
                         call               _jmp_addr_0x0054a940                          // 0x0054adf7    e844fbffff
                         add                esp, 0x04                                     // 0x0054adfc    83c404
_jmp_addr_0x0054adff:    call               _jmp_addr_0x00844ca0                          // 0x0054adff    e89c9e2f00
                         pop                edi                                           // 0x0054ae04    5f
                         pop                esi                                           // 0x0054ae05    5e
                         pop                ebp                                           // 0x0054ae06    5d
_jmp_addr_0x0054ae07:    push               0x00cd3af8                                    // 0x0054ae07    68f83acd00
                         call               dword ptr [__imp__LeaveCriticalSection@4]     // 0x0054ae0c    ff1584918a00
                         pop                ebx                                           // 0x0054ae12    5b
                         ret                                                              // 0x0054ae13    c3
                         nop                                                              // 0x0054ae14    90
                         nop                                                              // 0x0054ae15    90
                         nop                                                              // 0x0054ae16    90
                         nop                                                              // 0x0054ae17    90
                         nop                                                              // 0x0054ae18    90
                         nop                                                              // 0x0054ae19    90
                         nop                                                              // 0x0054ae1a    90
                         nop                                                              // 0x0054ae1b    90
                         nop                                                              // 0x0054ae1c    90
                         nop                                                              // 0x0054ae1d    90
                         nop                                                              // 0x0054ae1e    90
                         nop                                                              // 0x0054ae1f    90
_jmp_addr_0x0054ae20:    {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054ae20    a15c19d000
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x0054ae25    8b4814
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0054ae28    8b542404
                         sub                esp, 0x08                                     // 0x0054ae2c    83ec08
                         shr                ecx, 2                                        // 0x0054ae2f    c1e902
                         push               ebx                                           // 0x0054ae32    53
                         and                ecx, 0x01                                     // 0x0054ae33    83e101
                         cmp.s              edx, ecx                                      // 0x0054ae36    3bd1
                         push               esi                                           // 0x0054ae38    56
                         push               edi                                           // 0x0054ae39    57
                         {disp32} je        _jmp_addr_0x0054af58                          // 0x0054ae3a    0f8418010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205b80]             // 0x0054ae40    8b88805b2000
                         call               dword ptr [rdata_bytes + 0x438]               // 0x0054ae46    ff1538948a00
                         test               eax, eax                                      // 0x0054ae4c    85c0
                         {disp32} je        _jmp_addr_0x0054af58                          // 0x0054ae4e    0f8404010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054ae54    8b0d5c19d000
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                   // 0x0054ae5a    8b4114
                         mov.s              edx, eax                                      // 0x0054ae5d    8bd0
                         not                edx                                           // 0x0054ae5f    f7d2
                         xor.s              edx, eax                                      // 0x0054ae61    33d0
                         and                edx, 0x04                                     // 0x0054ae63    83e204
                         xor.s              edx, eax                                      // 0x0054ae66    33d0
                         {disp8} mov        dword ptr [ecx + 0x14], edx                   // 0x0054ae68    895114
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054ae6b    a15c19d000
                         test               byte ptr [eax + 0x14], 0x04                   // 0x0054ae70    f6401404
                         {disp32} lea       esi, dword ptr [eax + 0x00205d68]             // 0x0054ae74    8db0685d2000
                         {disp8} je         _jmp_addr_0x0054aef3                          // 0x0054ae7a    7477
                         {disp32} fld       dword ptr [esi + 0x00000108]                  // 0x0054ae7c    d98608010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1398]              // 0x0054ae82    d81d98a38a00
                         fnstsw             ax                                            // 0x0054ae88    dfe0
                         test               ah, 0x40                                      // 0x0054ae8a    f6c440
                         {disp32} jne       _jmp_addr_0x0054af58                          // 0x0054ae8d    0f85c5000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000108]             // 0x0054ae93    8b8608010000
                         {disp32} mov       ebx, dword ptr [__imp__GetTickCount@4]        // 0x0054ae99    8b1dc4918a00
                         {disp32} mov       dword ptr [esi + 0x0000010c], eax             // 0x0054ae9f    89860c010000
                         call               ebx                                           // 0x0054aea5    ffd3
                         sub                eax, dword ptr [esi + 0x00000100]             // 0x0054aea7    2b8600010000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000104]             // 0x0054aead    8b8e04010000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0054aeb3    8944240c
                         xor.s              edi, edi                                      // 0x0054aeb7    33ff
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x0054aeb9    897c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x0054aebd    df6c240c
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0054aec1    894c240c
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x0054aec5    897c2410
                         {disp32} fmul      dword ptr [esi + 0x00000108]                  // 0x0054aec9    d88e08010000
                         {disp8} fiadd      dword ptr [esp + 0x0c]                        // 0x0054aecf    da44240c
                         call               _jmp_addr_0x007a1400                          // 0x0054aed3    e828652500
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0054aed8    898604010000
                         call               ebx                                           // 0x0054aede    ffd3
                         {disp32} mov       dword ptr [esi + 0x00000108], edi             // 0x0054aee0    89be08010000
                         pop                edi                                           // 0x0054aee6    5f
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0054aee7    898600010000
                         pop                esi                                           // 0x0054aeed    5e
                         pop                ebx                                           // 0x0054aeee    5b
                         add                esp, 0x08                                     // 0x0054aeef    83c408
                         ret                                                              // 0x0054aef2    c3
_jmp_addr_0x0054aef3:    {disp32} mov       edx, dword ptr [esi + 0x0000010c]             // 0x0054aef3    8b960c010000
                         {disp32} mov       ebx, dword ptr [__imp__GetTickCount@4]        // 0x0054aef9    8b1dc4918a00
                         {disp32} mov       dword ptr [esi + 0x00000108], 0x3727c5ac      // 0x0054aeff    c78608010000acc52737
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0054af09    89542418
                         call               ebx                                           // 0x0054af0d    ffd3
                         sub                eax, dword ptr [esi + 0x00000100]             // 0x0054af0f    2b8600010000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0054af15    8944240c
                         {disp32} mov       eax, dword ptr [esi + 0x00000104]             // 0x0054af19    8b8604010000
                         xor.s              edi, edi                                      // 0x0054af1f    33ff
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x0054af21    897c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x0054af25    df6c240c
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0054af29    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x0054af2d    897c2410
                         {disp32} fmul      dword ptr [esi + 0x00000108]                  // 0x0054af31    d88e08010000
                         {disp8} fiadd      dword ptr [esp + 0x0c]                        // 0x0054af37    da44240c
                         call               _jmp_addr_0x007a1400                          // 0x0054af3b    e8c0642500
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0054af40    898604010000
                         call               ebx                                           // 0x0054af46    ffd3
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0054af48    8b4c2418
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0054af4c    898600010000
                         {disp32} mov       dword ptr [esi + 0x00000108], ecx             // 0x0054af52    898e08010000
_jmp_addr_0x0054af58:    pop                edi                                           // 0x0054af58    5f
                         pop                esi                                           // 0x0054af59    5e
                         pop                ebx                                           // 0x0054af5a    5b
                         add                esp, 0x08                                     // 0x0054af5b    83c408
                         ret                                                              // 0x0054af5e    c3
                         nop                                                              // 0x0054af5f    90
                         push               ebx                                           // 0x0054af60    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x0054af61    8b5c2408
                         {disp32} mov       eax, dword ptr [ebx + 0x00050024]             // 0x0054af65    8b8324000500
                         test               eax, eax                                      // 0x0054af6b    85c0
                         push               esi                                           // 0x0054af6d    56
                         push               edi                                           // 0x0054af6e    57
                         {disp8} je         _jmp_addr_0x0054afac                          // 0x0054af6f    743b
                         {disp32} mov       edi, dword ptr [eax + 0x00064060]             // 0x0054af71    8bb860400600
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054af77    a15c19d000
                         {disp32} mov       esi, dword ptr [eax + 0x00205ca4]             // 0x0054af7c    8bb0a45c2000
                         test               esi, esi                                      // 0x0054af82    85f6
                         {disp8} je         _jmp_addr_0x0054afac                          // 0x0054af84    7426
_jmp_addr_0x0054af86:    mov                edx, dword ptr [esi]                          // 0x0054af86    8b16
                         push               edi                                           // 0x0054af88    57
                         mov.s              ecx, esi                                      // 0x0054af89    8bce
                         call               dword ptr [edx + 0x7bc]                       // 0x0054af8b    ff92bc070000
                         test               eax, eax                                      // 0x0054af91    85c0
                         {disp8} je         _jmp_addr_0x0054afa5                          // 0x0054af93    7410
                         mov                eax, dword ptr [esi]                          // 0x0054af95    8b06
                         push               0x0                                           // 0x0054af97    6a00
                         push               0x0                                           // 0x0054af99    6a00
                         push               edi                                           // 0x0054af9b    57
                         push               ebx                                           // 0x0054af9c    53
                         mov.s              ecx, esi                                      // 0x0054af9d    8bce
                         call               dword ptr [eax + 0x7c0]                       // 0x0054af9f    ff90c0070000
_jmp_addr_0x0054afa5:    {disp8} mov        esi, dword ptr [esi + 0x5c]                   // 0x0054afa5    8b765c
                         test               esi, esi                                      // 0x0054afa8    85f6
                         {disp8} jne        _jmp_addr_0x0054af86                          // 0x0054afaa    75da
_jmp_addr_0x0054afac:    pop                edi                                           // 0x0054afac    5f
                         pop                esi                                           // 0x0054afad    5e
                         pop                ebx                                           // 0x0054afae    5b
                         ret                                                              // 0x0054afaf    c3
                         sub                esp, 0x1c                                     // 0x0054afb0    83ec1c
                         push               ebx                                           // 0x0054afb3    53
                         push               ebp                                           // 0x0054afb4    55
                         push               esi                                           // 0x0054afb5    56
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0054afb6    8b74242c
                         test               esi, esi                                      // 0x0054afba    85f6
                         push               edi                                           // 0x0054afbc    57
                         {disp32} jl        _jmp_addr_0x0054b16a                          // 0x0054afbd    0f8ca7010000
                         cmp                esi, 0x00000200                               // 0x0054afc3    81fe00020000
                         {disp32} jge       _jmp_addr_0x0054b16a                          // 0x0054afc9    0f8d9b010000
                         {disp8} mov        ebp, dword ptr [esp + 0x34]                   // 0x0054afcf    8b6c2434
                         test               ebp, ebp                                      // 0x0054afd3    85ed
                         {disp32} jl        _jmp_addr_0x0054b16a                          // 0x0054afd5    0f8c8f010000
                         cmp                ebp, 0x00000200                               // 0x0054afdb    81fd00020000
                         {disp32} jge       _jmp_addr_0x0054b16a                          // 0x0054afe1    0f8d83010000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0054afe7    8d4c2418
                         {disp8} mov        word ptr [esp + 0x18], si                     // 0x0054afeb    6689742418
                         {disp8} mov        word ptr [esp + 0x1a], bp                     // 0x0054aff0    66896c241a
                         call               _jmp_addr_0x005e1860                          // 0x0054aff5    e866680900
                         test               eax, eax                                      // 0x0054affa    85c0
                         {disp32} je        _jmp_addr_0x0054b16a                          // 0x0054affc    0f8468010000
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0054b002    8b442438
                         {disp32} mov       ecx, dword ptr [eax + 0x00050024]             // 0x0054b006    8b8824000500
                         test               ecx, ecx                                      // 0x0054b00c    85c9
                         {disp8} lea        ecx, dword ptr [esi + -0x01]                  // 0x0054b00e    8d4eff
                         sete               byte ptr [esp + 0x13]                         // 0x0054b011    0f94442413
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0054b016    894c2414
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000003            // 0x0054b01a    c744242003000000
_jmp_addr_0x0054b022:    test               ecx, ecx                                      // 0x0054b022    85c9
                         {disp32} jl        _jmp_addr_0x0054b0c1                          // 0x0054b024    0f8c97000000
                         cmp                ecx, 0x00000200                               // 0x0054b02a    81f900020000
                         {disp32} jge       _jmp_addr_0x0054b0c1                          // 0x0054b030    0f8d8b000000
                         mov.s              edx, ebp                                      // 0x0054b036    8bd5
                         {disp8} lea        esi, dword ptr [ebp + -0x01]                  // 0x0054b038    8d75ff
                         shl                edx, 9                                        // 0x0054b03b    c1e209
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x0054b03e    8974241c
                         {disp32} lea       edi, dword ptr [edx + ecx * 0x1 + 0x00d557b0] // 0x0054b042    8dbc0ab057d500
                         mov                ebx, 0x00000003                               // 0x0054b049    bb03000000
_jmp_addr_0x0054b04e:    test               esi, esi                                      // 0x0054b04e    85f6
                         {disp8} jl         _jmp_addr_0x0054b0b3                          // 0x0054b050    7c61
                         cmp                esi, 0x00000200                               // 0x0054b052    81fe00020000
                         {disp8} jge        _jmp_addr_0x0054b0b3                          // 0x0054b058    7d59
                         xor.s              eax, eax                                      // 0x0054b05a    33c0
                         mov                al, byte ptr [edi]                            // 0x0054b05c    8a07
                         cmp                eax, 0x01                                     // 0x0054b05e    83f801
                         {disp8} je         _jmp_addr_0x0054b070                          // 0x0054b061    740d
                         {disp8} mov        dl, byte ptr [esp + 0x13]                     // 0x0054b063    8a542413
                         test               dl, dl                                        // 0x0054b067    84d2
                         {disp8} je         _jmp_addr_0x0054b0b3                          // 0x0054b069    7448
                         cmp                eax, 0x06                                     // 0x0054b06b    83f806
                         {disp8} jne        _jmp_addr_0x0054b0b3                          // 0x0054b06e    7543
_jmp_addr_0x0054b070:    {disp8} fild       dword ptr [esp + 0x14]                        // 0x0054b070    db442414
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0054b074    8b4c2438
                         push               0x0                                           // 0x0054b078    6a00
                         push               0x40e33333                                    // 0x0054b07a    683333e340
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0054b07f    d80d14b48a00
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x0054b085    8d44242c
                         push               eax                                           // 0x0054b089    50
                         push               -0x1                                          // 0x0054b08a    6aff
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26e4]              // 0x0054b08c    d805e4b68a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0054b092    d95c2434
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0054b096    db44242c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x0054b09a    d80d14b48a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26e4]              // 0x0054b0a0    d805e4b68a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0054b0a6    d95c2438
                         call               _jmp_addr_0x0083b450                          // 0x0054b0aa    e8a1032f00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0054b0af    8b4c2414
_jmp_addr_0x0054b0b3:    add                edi, 0x00000200                               // 0x0054b0b3    81c700020000
                         inc                esi                                           // 0x0054b0b9    46
                         dec                ebx                                           // 0x0054b0ba    4b
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x0054b0bb    8974241c
                         {disp8} jne        _jmp_addr_0x0054b04e                          // 0x0054b0bf    758d
_jmp_addr_0x0054b0c1:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0054b0c1    8b442420
                         inc                ecx                                           // 0x0054b0c5    41
                         dec                eax                                           // 0x0054b0c6    48
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0054b0c7    894c2414
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0054b0cb    89442420
                         {disp32} jne       _jmp_addr_0x0054b022                          // 0x0054b0cf    0f854dffffff
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0054b0d5    8d4c2418
                         call               _jmp_addr_0x005e1950                          // 0x0054b0d9    e872680900
                         {disp8} mov        cl, byte ptr [esp + 0x13]                     // 0x0054b0de    8a4c2413
                         test               cl, cl                                        // 0x0054b0e2    84c9
                         {disp8} je         _jmp_addr_0x0054b0ea                          // 0x0054b0e4    7404
                         xor.s              ebp, ebp                                      // 0x0054b0e6    33ed
                         {disp8} jmp        _jmp_addr_0x0054b0fa                          // 0x0054b0e8    eb10
_jmp_addr_0x0054b0ea:    {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0054b0ea    8b4c2438
                         {disp32} mov       edx, dword ptr [ecx + 0x00050024]             // 0x0054b0ee    8b9124000500
                         {disp32} mov       ebp, dword ptr [edx + 0x00064060]             // 0x0054b0f4    8baa60400600
_jmp_addr_0x0054b0fa:    {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0054b0fa    8b7004
                         test               esi, esi                                      // 0x0054b0fd    85f6
                         mov                ecx, 0x00000001                               // 0x0054b0ff    b901000000
                         {disp8} jne        _jmp_addr_0x0054b10a                          // 0x0054b104    7504
                         mov                esi, dword ptr [eax]                          // 0x0054b106    8b30
                         xor.s              ecx, ecx                                      // 0x0054b108    33c9
_jmp_addr_0x0054b10a:    test               esi, esi                                      // 0x0054b10a    85f6
                         mov.s              ebx, ecx                                      // 0x0054b10c    8bd9
                         mov.s              edi, eax                                      // 0x0054b10e    8bf8
                         {disp8} je         _jmp_addr_0x0054b16a                          // 0x0054b110    7458
_jmp_addr_0x0054b112:    mov                eax, dword ptr [esi]                          // 0x0054b112    8b06
                         push               ebp                                           // 0x0054b114    55
                         mov.s              ecx, esi                                      // 0x0054b115    8bce
                         call               dword ptr [eax + 0x7bc]                       // 0x0054b117    ff90bc070000
                         test               eax, eax                                      // 0x0054b11d    85c0
                         {disp8} je         _jmp_addr_0x0054b14d                          // 0x0054b11f    742c
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0054b121    8b4c2434
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0054b125    8b542430
                         push               ecx                                           // 0x0054b129    51
                         {disp8} mov        ecx, dword ptr [esp + 0x3c]                   // 0x0054b12a    8b4c243c
                         push               edx                                           // 0x0054b12e    52
                         push               esi                                           // 0x0054b12f    56
                         call               _jmp_addr_0x0083b3e0                          // 0x0054b130    e8ab022f00
                         test               eax, eax                                      // 0x0054b135    85c0
                         {disp8} je         _jmp_addr_0x0054b14d                          // 0x0054b137    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0054b139    8b4c2438
                         mov                eax, dword ptr [esi]                          // 0x0054b13d    8b06
                         push               0x0                                           // 0x0054b13f    6a00
                         push               0x0                                           // 0x0054b141    6a00
                         push               ebp                                           // 0x0054b143    55
                         push               ecx                                           // 0x0054b144    51
                         mov.s              ecx, esi                                      // 0x0054b145    8bce
                         call               dword ptr [eax + 0x7c0]                       // 0x0054b147    ff90c0070000
_jmp_addr_0x0054b14d:    mov                edx, dword ptr [esi]                          // 0x0054b14d    8b16
                         push               edi                                           // 0x0054b14f    57
                         mov.s              ecx, esi                                      // 0x0054b150    8bce
                         call               dword ptr [edx + 0x53c]                       // 0x0054b152    ff923c050000
                         mov.s              esi, eax                                      // 0x0054b158    8bf0
                         test               esi, esi                                      // 0x0054b15a    85f6
                         {disp8} jne        _jmp_addr_0x0054b112                          // 0x0054b15c    75b4
                         test               ebx, ebx                                      // 0x0054b15e    85db
                         {disp8} je         _jmp_addr_0x0054b16a                          // 0x0054b160    7408
                         mov                esi, dword ptr [edi]                          // 0x0054b162    8b37
                         xor.s              ebx, ebx                                      // 0x0054b164    33db
                         test               esi, esi                                      // 0x0054b166    85f6
                         {disp8} jne        _jmp_addr_0x0054b112                          // 0x0054b168    75a8
_jmp_addr_0x0054b16a:    pop                edi                                           // 0x0054b16a    5f
                         pop                esi                                           // 0x0054b16b    5e
                         pop                ebp                                           // 0x0054b16c    5d
                         pop                ebx                                           // 0x0054b16d    5b
                         add                esp, 0x1c                                     // 0x0054b16e    83c41c
                         ret                                                              // 0x0054b171    c3
                         nop                                                              // 0x0054b172    90
                         nop                                                              // 0x0054b173    90
                         nop                                                              // 0x0054b174    90
                         nop                                                              // 0x0054b175    90
                         nop                                                              // 0x0054b176    90
                         nop                                                              // 0x0054b177    90
                         nop                                                              // 0x0054b178    90
                         nop                                                              // 0x0054b179    90
                         nop                                                              // 0x0054b17a    90
                         nop                                                              // 0x0054b17b    90
                         nop                                                              // 0x0054b17c    90
                         nop                                                              // 0x0054b17d    90
                         nop                                                              // 0x0054b17e    90
                         nop                                                              // 0x0054b17f    90
_jmp_addr_0x0054b180:    ret                                                              // 0x0054b180    c3
                         nop                                                              // 0x0054b181    90
                         nop                                                              // 0x0054b182    90
                         nop                                                              // 0x0054b183    90
                         nop                                                              // 0x0054b184    90
                         nop                                                              // 0x0054b185    90
                         nop                                                              // 0x0054b186    90
                         nop                                                              // 0x0054b187    90
                         nop                                                              // 0x0054b188    90
                         nop                                                              // 0x0054b189    90
                         nop                                                              // 0x0054b18a    90
                         nop                                                              // 0x0054b18b    90
                         nop                                                              // 0x0054b18c    90
                         nop                                                              // 0x0054b18d    90
                         nop                                                              // 0x0054b18e    90
                         nop                                                              // 0x0054b18f    90
_jmp_addr_0x0054b190:    ret                                                              // 0x0054b190    c3
                         nop                                                              // 0x0054b191    90
                         nop                                                              // 0x0054b192    90
                         nop                                                              // 0x0054b193    90
                         nop                                                              // 0x0054b194    90
                         nop                                                              // 0x0054b195    90
                         nop                                                              // 0x0054b196    90
                         nop                                                              // 0x0054b197    90
                         nop                                                              // 0x0054b198    90
                         nop                                                              // 0x0054b199    90
                         nop                                                              // 0x0054b19a    90
                         nop                                                              // 0x0054b19b    90
                         nop                                                              // 0x0054b19c    90
                         nop                                                              // 0x0054b19d    90
                         nop                                                              // 0x0054b19e    90
                         nop                                                              // 0x0054b19f    90
                         cmp                dword ptr [esp + 0x04], 0x03                  // 0x0054b1a0    837c240403
                         {disp32} jne       _jmp_addr_0x0054b22e                          // 0x0054b1a5    0f8583000000
                         call               _jmp_addr_0x005136b0                          // 0x0054b1ab    e80085fcff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0054b1b0    8b442410
                         cmp                eax, 0x00002710                               // 0x0054b1b4    3d10270000
                         {disp8} jne        _jmp_addr_0x0054b1f7                          // 0x0054b1b9    753c
                         call               _HideAll__13DialogBoxBaseFv@0                 // 0x0054b1bb    e82085fcff
                         call               _jmp_addr_0x00407ef0                          // 0x0054b1c0    e82bcdebff
                         {disp32} mov       byte ptr [data_bytes + 0x286cee], 0x00        // 0x0054b1c5    c605eeccc40000
                         call               _jmp_addr_0x0053c470                          // 0x0054b1cc    e89f12ffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054b1d1    8b0d5c19d000
                         push               0x0                                           // 0x0054b1d7    6a00
                         push               0x5                                           // 0x0054b1d9    6a05
                         {disp32} mov       dword ptr [data_bytes + 0x226284], 0x00000005 // 0x0054b1db    c70584c2be0005000000
                         call               _jmp_addr_0x00553e10                          // 0x0054b1e5    e8268c0000
                         {disp32} mov       dword ptr [data_bytes + 0x226284], 0x00000005 // 0x0054b1ea    c70584c2be0005000000
                         ret                0x0014                                        // 0x0054b1f4    c21400
_jmp_addr_0x0054b1f7:    cmp                eax, 0x00002712                               // 0x0054b1f7    3d12270000
                         {disp8} jne        _jmp_addr_0x0054b210                          // 0x0054b1fc    7512
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33b95c]        // 0x0054b1fe    a15c19d000
                         {disp32} mov       dword ptr [eax + 0x00250180], 0x00000001      // 0x0054b203    c7808001250001000000
                         ret                0x0014                                        // 0x0054b20d    c21400
_jmp_addr_0x0054b210:    cmp                eax, 0x00002713                               // 0x0054b210    3d13270000
                         {disp8} jne        _jmp_addr_0x0054b22e                          // 0x0054b215    7517
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33b95c]        // 0x0054b217    8b0d5c19d000
                         cmp                dword ptr [ecx + 0x00205a28], 0x01            // 0x0054b21d    83b9285a200001
                         {disp8} je         _jmp_addr_0x0054b22e                          // 0x0054b224    7408
                         push               0x0                                           // 0x0054b226    6a00
                         call               _jmp_addr_0x0054ae20                          // 0x0054b228    e8f3fbffff
                         pop                ecx                                           // 0x0054b22d    59
_jmp_addr_0x0054b22e:    ret                0x0014                                        // 0x0054b22e    c21400
                         nop                                                              // 0x0054b231    90
                         nop                                                              // 0x0054b232    90
                         nop                                                              // 0x0054b233    90
                         nop                                                              // 0x0054b234    90
                         nop                                                              // 0x0054b235    90
                         nop                                                              // 0x0054b236    90
                         nop                                                              // 0x0054b237    90
                         nop                                                              // 0x0054b238    90
                         nop                                                              // 0x0054b239    90
                         nop                                                              // 0x0054b23a    90
                         nop                                                              // 0x0054b23b    90
                         nop                                                              // 0x0054b23c    90
                         nop                                                              // 0x0054b23d    90
                         nop                                                              // 0x0054b23e    90
                         nop                                                              // 0x0054b23f    90
@__ct__5GGameFv@4:       push               ebx                                           // 0x0054b240    53
                         push               ebp                                           // 0x0054b241    55
                         push               esi                                           // 0x0054b242    56
                         push               edi                                           // 0x0054b243    57
                         mov.s              esi, ecx                                      // 0x0054b244    8bf1
                         call               @__ct__9GameThingFv@4                         // 0x0054b246    e8c5470200
                         {disp8} lea        edi, dword ptr [esi + 0x18]                   // 0x0054b24b    8d7e18
                         mov                ebx, 0x00000008                               // 0x0054b24e    bb08000000
_jmp_addr_0x0054b253:    mov.s              ecx, edi                                      // 0x0054b253    8bcf
                         call               _jmp_addr_0x00648da0                          // 0x0054b255    e846db0f00
                         add                edi, 0x00000a60                               // 0x0054b25a    81c7600a0000
                         dec                ebx                                           // 0x0054b260    4b
                         {disp8} jne        _jmp_addr_0x0054b253                          // 0x0054b261    75f0
                         {disp32} lea       ecx, dword ptr [esi + 0x0000597c]             // 0x0054b263    8d8e7c590000
                         call               @__ct__13StatsDatabaseFv@4                    // 0x0054b269    e862860e00
                         {disp32} lea       ecx, dword ptr [esi + 0x0000598c]             // 0x0054b26e    8d8e8c590000
                         call               @__ct__16CreatureDatabaseFv@4                 // 0x0054b274    e837840e00
                         {disp32} lea       ecx, dword ptr [esi + 0x000059b8]             // 0x0054b279    8d8eb8590000
                         call               _jmp_addr_0x00601080                          // 0x0054b27f    e8fc5d0b00
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a30]             // 0x0054b284    8d8e305a2000
                         call               @__ct__5GDataFv@4                             // 0x0054b28a    e87152fcff
                         {disp32} lea       edi, dword ptr [esi + 0x00205a70]             // 0x0054b28f    8dbe705a2000
                         xor.s              ebx, ebx                                      // 0x0054b295    33db
                         mov.s              ecx, edi                                      // 0x0054b297    8bcf
                         mov                byte ptr [edi], bl                            // 0x0054b299    881f
                         {disp8} mov        dword ptr [edi + 0x04], ebx                   // 0x0054b29b    895f04
                         call               @__ct__9MapCoordsFv@4                         // 0x0054b29e    e8bd68efff
                         mov.s              ecx, edi                                      // 0x0054b2a3    8bcf
                         call               @__ct__9MapCoordsFv@4                         // 0x0054b2a5    e8b668efff
                         mov.s              ecx, edi                                      // 0x0054b2aa    8bcf
                         call               _jmp_addr_0x0054b910                          // 0x0054b2ac    e85f060000
                         {disp32} lea       edi, dword ptr [esi + 0x00205a68]             // 0x0054b2b1    8dbe685a2000
                         mov.s              ecx, edi                                      // 0x0054b2b7    8bcf
                         call               _jmp_addr_0x0054b8f0                          // 0x0054b2b9    e832060000
                         mov.s              ecx, edi                                      // 0x0054b2be    8bcf
                         call               @__ct__9MapCoordsFv@4                         // 0x0054b2c0    e89b68efff
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a74]             // 0x0054b2c5    8d8e745a2000
                         call               @__ct__9MapCoordsFv@4                         // 0x0054b2cb    e89068efff
                         {disp32} mov       dword ptr [esi + 0x00205b7c], ebx             // 0x0054b2d0    899e7c5b2000
                         {disp32} mov       dword ptr [esi + 0x00205b78], ebx             // 0x0054b2d6    899e785b2000
                         {disp32} mov       dword ptr [esi + 0x00205b80], ebx             // 0x0054b2dc    899e805b2000
                         {disp32} mov       dword ptr [esi + 0x00205b84], ebx             // 0x0054b2e2    899e845b2000
                         {disp32} mov       dword ptr [esi + 0x00205b88], ebx             // 0x0054b2e8    899e885b2000
                         {disp32} mov       dword ptr [esi + 0x00205b8c], ebx             // 0x0054b2ee    899e8c5b2000
                         {disp32} mov       dword ptr [esi + 0x00205b70], 0x00000032      // 0x0054b2f4    c786705b200032000000
                         {disp32} mov       byte ptr [esi + 0x00205b90], bl               // 0x0054b2fe    889e905b2000
                         {disp32} mov       dword ptr [esi + 0x00205b94], 0x00000064      // 0x0054b304    c786945b200064000000
                         {disp32} mov       dword ptr [esi + 0x00205b98], ebx             // 0x0054b30e    899e985b2000
                         {disp32} mov       dword ptr [esi + 0x00205b9c], ebx             // 0x0054b314    899e9c5b2000
                         {disp32} mov       dword ptr [esi + 0x00205ba4], 0x008a9a44      // 0x0054b31a    c786a45b2000449a8a00
                         {disp32} mov       dword ptr [esi + 0x00205ba8], ebx             // 0x0054b324    899ea85b2000
                         {disp32} mov       dword ptr [esi + 0x00205bac], ebx             // 0x0054b32a    899eac5b2000
                         {disp32} mov       dword ptr [esi + 0x00205bb0], ebx             // 0x0054b330    899eb05b2000
                         {disp32} mov       dword ptr [esi + 0x00205bb4], ebx             // 0x0054b336    899eb45b2000
                         {disp32} mov       dword ptr [esi + 0x00205bb8], ebx             // 0x0054b33c    899eb85b2000
                         {disp32} mov       dword ptr [esi + 0x00205bbc], ebx             // 0x0054b342    899ebc5b2000
                         {disp32} mov       dword ptr [esi + 0x00205bc0], ebx             // 0x0054b348    899ec05b2000
                         {disp32} mov       dword ptr [esi + 0x00205bc4], ebx             // 0x0054b34e    899ec45b2000
                         {disp32} mov       dword ptr [esi + 0x00205bc8], ebx             // 0x0054b354    899ec85b2000
                         {disp32} mov       dword ptr [esi + 0x00205bcc], ebx             // 0x0054b35a    899ecc5b2000
                         {disp32} mov       dword ptr [esi + 0x00205bd0], ebx             // 0x0054b360    899ed05b2000
                         {disp32} mov       dword ptr [esi + 0x00205bd4], ebx             // 0x0054b366    899ed45b2000
                         {disp32} mov       dword ptr [esi + 0x00205bd8], ebx             // 0x0054b36c    899ed85b2000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205be4]             // 0x0054b372    8d8ee45b2000
                         {disp32} mov       dword ptr [esi + 0x00205bdc], ebx             // 0x0054b378    899edc5b2000
                         {disp32} mov       dword ptr [esi + 0x00205be0], ebx             // 0x0054b37e    899ee05b2000
                         call               _jmp_addr_0x00555bd0                          // 0x0054b384    e847a80000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205bec]             // 0x0054b389    8d8eec5b2000
                         call               _jmp_addr_0x00555be0                          // 0x0054b38f    e84ca80000
                         {disp32} mov       dword ptr [esi + 0x00205bf4], ebx             // 0x0054b394    899ef45b2000
                         {disp32} mov       dword ptr [esi + 0x00205bf8], ebx             // 0x0054b39a    899ef85b2000
                         {disp32} mov       dword ptr [esi + 0x00205bfc], ebx             // 0x0054b3a0    899efc5b2000
                         {disp32} mov       dword ptr [esi + 0x00205c00], ebx             // 0x0054b3a6    899e005c2000
                         {disp32} mov       dword ptr [esi + 0x00205c04], ebx             // 0x0054b3ac    899e045c2000
                         {disp32} mov       dword ptr [esi + 0x00205c08], ebx             // 0x0054b3b2    899e085c2000
                         {disp32} mov       dword ptr [esi + 0x00205c0c], ebx             // 0x0054b3b8    899e0c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c10], ebx             // 0x0054b3be    899e105c2000
                         {disp32} mov       dword ptr [esi + 0x00205c14], ebx             // 0x0054b3c4    899e145c2000
                         {disp32} mov       dword ptr [esi + 0x00205c18], ebx             // 0x0054b3ca    899e185c2000
                         {disp32} mov       dword ptr [esi + 0x00205c1c], ebx             // 0x0054b3d0    899e1c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c20], ebx             // 0x0054b3d6    899e205c2000
                         {disp32} mov       dword ptr [esi + 0x00205c24], ebx             // 0x0054b3dc    899e245c2000
                         {disp32} mov       dword ptr [esi + 0x00205c28], ebx             // 0x0054b3e2    899e285c2000
                         {disp32} mov       dword ptr [esi + 0x00205c2c], ebx             // 0x0054b3e8    899e2c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c30], ebx             // 0x0054b3ee    899e305c2000
                         {disp32} mov       dword ptr [esi + 0x00205c34], ebx             // 0x0054b3f4    899e345c2000
                         {disp32} mov       dword ptr [esi + 0x00205c38], ebx             // 0x0054b3fa    899e385c2000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205c44]             // 0x0054b400    8d8e445c2000
                         {disp32} mov       dword ptr [esi + 0x00205c3c], ebx             // 0x0054b406    899e3c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c40], ebx             // 0x0054b40c    899e405c2000
                         call               _jmp_addr_0x00555bf0                          // 0x0054b412    e8d9a70000
                         {disp32} mov       dword ptr [esi + 0x00205c4c], ebx             // 0x0054b417    899e4c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c50], ebx             // 0x0054b41d    899e505c2000
                         {disp32} mov       dword ptr [esi + 0x00205c54], ebx             // 0x0054b423    899e545c2000
                         {disp32} mov       dword ptr [esi + 0x00205c58], ebx             // 0x0054b429    899e585c2000
                         {disp32} mov       dword ptr [esi + 0x00205c5c], ebx             // 0x0054b42f    899e5c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c60], ebx             // 0x0054b435    899e605c2000
                         {disp32} mov       dword ptr [esi + 0x00205c64], ebx             // 0x0054b43b    899e645c2000
                         {disp32} mov       dword ptr [esi + 0x00205c68], ebx             // 0x0054b441    899e685c2000
                         {disp32} mov       dword ptr [esi + 0x00205c6c], ebx             // 0x0054b447    899e6c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c70], ebx             // 0x0054b44d    899e705c2000
                         {disp32} mov       dword ptr [esi + 0x00205c74], ebx             // 0x0054b453    899e745c2000
                         {disp32} mov       dword ptr [esi + 0x00205c78], ebx             // 0x0054b459    899e785c2000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205c84]             // 0x0054b45f    8d8e845c2000
                         {disp32} mov       dword ptr [esi + 0x00205c7c], ebx             // 0x0054b465    899e7c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205c80], ebx             // 0x0054b46b    899e805c2000
                         call               _jmp_addr_0x00555c00                          // 0x0054b471    e88aa70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205c8c]             // 0x0054b476    8d8e8c5c2000
                         call               _jmp_addr_0x00555c10                          // 0x0054b47c    e88fa70000
                         {disp32} mov       dword ptr [esi + 0x00205c94], ebx             // 0x0054b481    899e945c2000
                         {disp32} mov       dword ptr [esi + 0x00205c98], ebx             // 0x0054b487    899e985c2000
                         {disp32} mov       dword ptr [esi + 0x00205c9c], ebx             // 0x0054b48d    899e9c5c2000
                         {disp32} mov       dword ptr [esi + 0x00205ca0], ebx             // 0x0054b493    899ea05c2000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205cac]             // 0x0054b499    8d8eac5c2000
                         {disp32} mov       dword ptr [esi + 0x00205ca4], ebx             // 0x0054b49f    899ea45c2000
                         {disp32} mov       dword ptr [esi + 0x00205ca8], ebx             // 0x0054b4a5    899ea85c2000
                         call               _jmp_addr_0x00555c20                          // 0x0054b4ab    e870a70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205cb4]             // 0x0054b4b0    8d8eb45c2000
                         call               _jmp_addr_0x00555c30                          // 0x0054b4b6    e875a70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205cbc]             // 0x0054b4bb    8d8ebc5c2000
                         call               _jmp_addr_0x00555c40                          // 0x0054b4c1    e87aa70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205ccc]             // 0x0054b4c6    8d8ecc5c2000
                         {disp32} mov       dword ptr [esi + 0x00205cc4], ebx             // 0x0054b4cc    899ec45c2000
                         {disp32} mov       dword ptr [esi + 0x00205cc8], ebx             // 0x0054b4d2    899ec85c2000
                         call               _jmp_addr_0x00555c50                          // 0x0054b4d8    e873a70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205cd4]             // 0x0054b4dd    8d8ed45c2000
                         call               _jmp_addr_0x00555c60                          // 0x0054b4e3    e878a70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205cdc]             // 0x0054b4e8    8d8edc5c2000
                         call               _jmp_addr_0x00555c70                          // 0x0054b4ee    e87da70000
                         {disp32} mov       dword ptr [esi + 0x00205ce4], ebx             // 0x0054b4f3    899ee45c2000
                         {disp32} mov       dword ptr [esi + 0x00205ce8], ebx             // 0x0054b4f9    899ee85c2000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205cf4]             // 0x0054b4ff    8d8ef45c2000
                         {disp32} mov       dword ptr [esi + 0x00205cec], ebx             // 0x0054b505    899eec5c2000
                         {disp32} mov       dword ptr [esi + 0x00205cf0], ebx             // 0x0054b50b    899ef05c2000
                         call               _jmp_addr_0x00555c80                          // 0x0054b511    e86aa70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205cfc]             // 0x0054b516    8d8efc5c2000
                         call               _jmp_addr_0x00555c90                          // 0x0054b51c    e86fa70000
                         {disp32} mov       dword ptr [esi + 0x00205d04], ebx             // 0x0054b521    899e045d2000
                         {disp32} mov       dword ptr [esi + 0x00205d08], ebx             // 0x0054b527    899e085d2000
                         {disp32} mov       dword ptr [esi + 0x00205d0c], ebx             // 0x0054b52d    899e0c5d2000
                         {disp32} mov       dword ptr [esi + 0x00205d10], ebx             // 0x0054b533    899e105d2000
                         {disp32} mov       dword ptr [esi + 0x00205d14], ebx             // 0x0054b539    899e145d2000
                         {disp32} mov       dword ptr [esi + 0x00205d18], ebx             // 0x0054b53f    899e185d2000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205d24]             // 0x0054b545    8d8e245d2000
                         {disp32} mov       dword ptr [esi + 0x00205d1c], ebx             // 0x0054b54b    899e1c5d2000
                         {disp32} mov       dword ptr [esi + 0x00205d20], ebx             // 0x0054b551    899e205d2000
                         call               _jmp_addr_0x00555ca0                          // 0x0054b557    e844a70000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205d2c]             // 0x0054b55c    8d8e2c5d2000
                         call               _jmp_addr_0x00555cb0                          // 0x0054b562    e849a70000
                         {disp32} lea       edi, dword ptr [esi + 0x00205d68]             // 0x0054b567    8dbe685d2000
                         {disp32} mov       dword ptr [esi + 0x00205ba4], 0x008df760      // 0x0054b56d    c786a45b200060f78d00
                         push               ebx                                           // 0x0054b577    53
                         mov.s              ecx, edi                                      // 0x0054b578    8bcf
                         {disp32} mov       dword ptr [edi + 0x00000108], 0x3f800000      // 0x0054b57a    c787080100000000803f
                         {disp32} mov       dword ptr [edi + 0x0000010c], ebx             // 0x0054b584    899f0c010000
                         call               @Reset__7LHTimerFUl@12                        // 0x0054b58a    e8c1020000
                         mov.s              ecx, edi                                      // 0x0054b58f    8bcf
                         call               @Stop__7LHTimerFv@4                           // 0x0054b591    e82a34efff
                         {disp32} lea       ecx, dword ptr [esi + 0x00205e8c]             // 0x0054b596    8d8e8c5e2000
                         call               _jmp_addr_0x0054bcd0                          // 0x0054b59c    e82f070000
                         {disp32} lea       edi, dword ptr [esi + 0x0024ffbc]             // 0x0054b5a1    8dbebcff2400
                         mov.s              ecx, edi                                      // 0x0054b5a7    8bcf
                         call               _jmp_addr_0x0042e5e0                          // 0x0054b5a9    e83230eeff
                         {disp32} lea       ecx, dword ptr [esi + 0x0025004c]             // 0x0054b5ae    8d8e4c002500
                         mov                dword ptr [edi], 0x008df730                   // 0x0054b5b4    c70730f78d00
                         call               @__ct__9GLanguageFv@4                         // 0x0054b5ba    e891b10900
                         {disp32} lea       ebp, dword ptr [esi + 0x0025009c]             // 0x0054b5bf    8dae9c002500
                         mov.s              ecx, ebp                                      // 0x0054b5c5    8bcd
                         {disp32} mov       dword ptr [esi + 0x0025008c], ebx             // 0x0054b5c7    899e8c002500
                         {disp32} mov       dword ptr [esi + 0x00250088], ebx             // 0x0054b5cd    899e88002500
                         {disp32} mov       dword ptr [esi + 0x00250084], ebx             // 0x0054b5d3    899e84002500
                         call               @__ct__9MapCoordsFv@4                         // 0x0054b5d9    e88265efff
                         {disp32} lea       ecx, dword ptr [esi + 0x002502a8]             // 0x0054b5de    8d8ea8022500
                         call               @__ct__10GKeyBuffer@4                         // 0x0054b5e4    e847030000
                         {disp32} lea       ecx, dword ptr [esi + 0x00250310]             // 0x0054b5e9    8d8e10032500
                         call               _jmp_addr_0x0078e8c0                          // 0x0054b5ef    e8cc322400
                         {disp32} mov       edi, dword ptr [rdata_bytes + 0x17c]          // 0x0054b5f4    8b3d7c918a00
                         mov                dword ptr [esi], 0x008df630                   // 0x0054b5fa    c70630f68d00
                         {disp32} mov       dword ptr [esi + 0x00250178], ebx             // 0x0054b600    899e78012500
                         {disp32} mov       dword ptr [esi + 0x000059b4], ebx             // 0x0054b606    899eb4590000
                         {disp32} mov       byte ptr [data_bytes + 0x33b834], bl          // 0x0054b60c    881d3418d000
                         push               0x00cd3af8                                    // 0x0054b612    68f83acd00
                         {disp32} mov       dword ptr [esi + 0x0025017c], ebx             // 0x0054b617    899e7c012500
                         {disp32} mov       dword ptr [esi + 0x00250180], ebx             // 0x0054b61d    899e80012500
                         call               edi                                           // 0x0054b623    ffd7
                         push               0x00ef74f8                                    // 0x0054b625    68f874ef00
                         call               edi                                           // 0x0054b62a    ffd7
                         push               ebx                                           // 0x0054b62c    53
                         push               0x00844e30                                    // 0x0054b62d    68304e8400
                         push               0x1                                           // 0x0054b632    6a01
                         push               0x00008000                                    // 0x0054b634    6800800000
                         call               _jmp_addr_0x0082f2c0                          // 0x0054b639    e8823c2e00
                         add                esp, 0x10                                     // 0x0054b63e    83c410
                         call               _Init__12CPControllerFv@0                     // 0x0054b641    e84ae3f1ff
                         mov.s              ecx, esi                                      // 0x0054b646    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x4bf36c], 0x0054ff80 // 0x0054b648    c7056c53e80080ff5400
                         {disp32} mov       dword ptr [data_bytes + 0x4bf370], ebx        // 0x0054b652    891d7053e800
                         {disp32} mov       byte ptr [data_bytes + 0x2261f4], bl          // 0x0054b658    881df4c1be00
                         call               _jmp_addr_0x0054bf20                          // 0x0054b65e    e8bd080000
                         call               _jmp_addr_0x0054ba40                          // 0x0054b663    e8d8030000
                         push               0x000003fe                                    // 0x0054b668    68fe030000
                         push               0x00bec32c                                    // 0x0054b66d    682cc3be00
                         push               0x00000110                                    // 0x0054b672    6810010000
                         {disp32} mov       dword ptr [esi + 0x002502e8], ebx             // 0x0054b677    899ee8022500
                         {disp32} mov       dword ptr [esi + 0x002502ec], ebx             // 0x0054b67d    899eec022500
                         {disp32} mov       dword ptr [esi + 0x00205d3c], ebx             // 0x0054b683    899e3c5d2000
                         call               ___nw__4BaseFUl                               // 0x0054b689    e862b0eeff
                         add                esp, 0x0c                                     // 0x0054b68e    83c40c
                         cmp.s              eax, ebx                                      // 0x0054b691    3bc3
                         {disp8} je         _jmp_addr_0x0054b69e                          // 0x0054b693    7409
                         mov.s              ecx, eax                                      // 0x0054b695    8bc8
                         call               @__ct__9GSoundMapFv@4                         // 0x0054b697    e834030000
                         {disp8} jmp        _jmp_addr_0x0054b6a0                          // 0x0054b69c    eb02
_jmp_addr_0x0054b69e:    xor.s              eax, eax                                      // 0x0054b69e    33c0
_jmp_addr_0x0054b6a0:    {disp32} mov       dword ptr [esi + 0x00250058], eax             // 0x0054b6a0    898658002500
                         {disp32} mov       dword ptr [esi + 0x0025005c], ebx             // 0x0054b6a6    899e5c002500
                         {disp32} mov       dword ptr [esi + 0x00250060], ebx             // 0x0054b6ac    899e60002500
                         call               _jmp_addr_0x006eb100                          // 0x0054b6b2    e849fa1900
                         push               0x00000404                                    // 0x0054b6b7    6804040000
                         push               0x00bec32c                                    // 0x0054b6bc    682cc3be00
                         push               0x10                                          // 0x0054b6c1    6a10
                         {disp32} mov       dword ptr [esi + 0x00250090], eax             // 0x0054b6c3    898690002500
                         call               ___nw__4BaseFUl                               // 0x0054b6c9    e822b0eeff
                         add                esp, 0x0c                                     // 0x0054b6ce    83c40c
                         cmp.s              eax, ebx                                      // 0x0054b6d1    3bc3
                         {disp8} je         _jmp_addr_0x0054b6de                          // 0x0054b6d3    7409
                         mov.s              ecx, eax                                      // 0x0054b6d5    8bc8
                         call               _jmp_addr_0x0054baa0                          // 0x0054b6d7    e8c4030000
                         {disp8} jmp        _jmp_addr_0x0054b6e0                          // 0x0054b6dc    eb02
_jmp_addr_0x0054b6de:    xor.s              eax, eax                                      // 0x0054b6de    33c0
_jmp_addr_0x0054b6e0:    push               0x00000405                                    // 0x0054b6e0    6805040000
                         push               0x00bec32c                                    // 0x0054b6e5    682cc3be00
                         push               0x0000065c                                    // 0x0054b6ea    685c060000
                         {disp32} mov       dword ptr [esi + 0x00250064], eax             // 0x0054b6ef    898664002500
                         call               ___nw__4BaseFUl                               // 0x0054b6f5    e8f6afeeff
                         add                esp, 0x0c                                     // 0x0054b6fa    83c40c
                         cmp.s              eax, ebx                                      // 0x0054b6fd    3bc3
                         {disp8} je         _jmp_addr_0x0054b70a                          // 0x0054b6ff    7409
                         mov.s              ecx, eax                                      // 0x0054b701    8bc8
                         call               _jmp_addr_0x0054baf0                          // 0x0054b703    e8e8030000
                         {disp8} jmp        _jmp_addr_0x0054b70c                          // 0x0054b708    eb02
_jmp_addr_0x0054b70a:    xor.s              eax, eax                                      // 0x0054b70a    33c0
_jmp_addr_0x0054b70c:    push               0x00000406                                    // 0x0054b70c    6806040000
                         push               0x00bec32c                                    // 0x0054b711    682cc3be00
                         push               0x00000c98                                    // 0x0054b716    68980c0000
                         {disp32} mov       dword ptr [esi + 0x00250068], eax             // 0x0054b71b    898668002500
                         call               ___nw__4BaseFUl                               // 0x0054b721    e8caafeeff
                         add                esp, 0x0c                                     // 0x0054b726    83c40c
                         cmp.s              eax, ebx                                      // 0x0054b729    3bc3
                         {disp8} je         _jmp_addr_0x0054b736                          // 0x0054b72b    7409
                         mov.s              ecx, eax                                      // 0x0054b72d    8bc8
                         call               @__ct__13GestureSystem@4                      // 0x0054b72f    e80c040000
                         {disp8} jmp        _jmp_addr_0x0054b738                          // 0x0054b734    eb02
_jmp_addr_0x0054b736:    xor.s              eax, eax                                      // 0x0054b736    33c0
_jmp_addr_0x0054b738:    push               0x00000407                                    // 0x0054b738    6807040000
                         push               0x00bec32c                                    // 0x0054b73d    682cc3be00
                         push               0xc                                           // 0x0054b742    6a0c
                         {disp32} mov       dword ptr [esi + 0x0025006c], eax             // 0x0054b744    89866c002500
                         call               ___nw__FUl                                    // 0x0054b74a    e841002900
                         mov.s              edi, eax                                      // 0x0054b74f    8bf8
                         add                esp, 0x0c                                     // 0x0054b751    83c40c
                         cmp.s              edi, ebx                                      // 0x0054b754    3bfb
                         {disp8} je         _jmp_addr_0x0054b761                          // 0x0054b756    7409
                         mov.s              ecx, edi                                      // 0x0054b758    8bcf
                         call               _jmp_addr_0x0054bb90                          // 0x0054b75a    e831040000
                         {disp8} jmp        _jmp_addr_0x0054b763                          // 0x0054b75f    eb02
_jmp_addr_0x0054b761:    xor.s              edi, edi                                      // 0x0054b761    33ff
_jmp_addr_0x0054b763:    push               0x00000408                                    // 0x0054b763    6808040000
                         push               0x00bec32c                                    // 0x0054b768    682cc3be00
                         push               0x00000104                                    // 0x0054b76d    6804010000
                         {disp32} mov       dword ptr [esi + 0x00250070], edi             // 0x0054b772    89be70002500
                         call               ___nw__FUl                                    // 0x0054b778    e813002900
                         mov.s              edi, eax                                      // 0x0054b77d    8bf8
                         add                esp, 0x0c                                     // 0x0054b77f    83c40c
                         cmp.s              edi, ebx                                      // 0x0054b782    3bfb
                         {disp8} je         _jmp_addr_0x0054b78f                          // 0x0054b784    7409
                         mov.s              ecx, edi                                      // 0x0054b786    8bcf
                         call               @InitialiseToDefaults__8SettingsFv@4          // 0x0054b788    e893941c00
                         {disp8} jmp        _jmp_addr_0x0054b791                          // 0x0054b78d    eb02
_jmp_addr_0x0054b78f:    xor.s              edi, edi                                      // 0x0054b78f    33ff
_jmp_addr_0x0054b791:    mov.s              ecx, ebp                                      // 0x0054b791    8bcd
                         {disp32} mov       dword ptr [esi + 0x00250074], edi             // 0x0054b793    89be74002500
                         call               _jmp_addr_0x0054b820                          // 0x0054b799    e882000000
                         mov                eax, 0x3f800000                               // 0x0054b79e    b80000803f
                         {disp32} mov       byte ptr [esi + 0x002500a8], bl               // 0x0054b7a3    889ea8002500
                         {disp32} mov       dword ptr [esi + 0x00250170], ebx             // 0x0054b7a9    899e70012500
                         {disp32} mov       dword ptr [esi + 0x0025007c], eax             // 0x0054b7af    89867c002500
                         {disp32} mov       dword ptr [esi + 0x00250078], eax             // 0x0054b7b5    898678002500
                         call               _jmp_addr_0x0050f7b0                          // 0x0054b7bb    e8f03ffcff
                         push               0x0054af60                                    // 0x0054b7c0    6860af5400
                         push               0x0054afb0                                    // 0x0054b7c5    68b0af5400
                         call               _jmp_addr_0x0083b300                          // 0x0054b7ca    e831fb2e00
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0054b7cf    8b4614
                         add                esp, 0x08                                     // 0x0054b7d2    83c408
                         or                 eax, 0x10000                                  // 0x0054b7d5    0d00000100
                         pop                edi                                           // 0x0054b7da    5f
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0054b7db    894614
                         {disp32} mov       dword ptr [esi + 0x002502a4], ebx             // 0x0054b7de    899ea4022500
                         {disp32} mov       dword ptr [esi + 0x00205a08], ebx             // 0x0054b7e4    899e085a2000
                         {disp32} mov       dword ptr [esi + 0x0025053c], ebx             // 0x0054b7ea    899e3c052500
                         {disp32} mov       dword ptr [esi + 0x00250540], ebx             // 0x0054b7f0    899e40052500
                         {disp32} mov       dword ptr [esi + 0x00250534], ebx             // 0x0054b7f6    899e34052500
                         {disp32} mov       dword ptr [esi + 0x000059a4], 0x00000001      // 0x0054b7fc    c786a459000001000000
                         {disp32} mov       dword ptr [esi + 0x00205d34], 0x00000032      // 0x0054b806    c786345d200032000000
                         mov.s              eax, esi                                      // 0x0054b810    8bc6
                         pop                esi                                           // 0x0054b812    5e
                         pop                ebp                                           // 0x0054b813    5d
                         pop                ebx                                           // 0x0054b814    5b
                         ret                                                              // 0x0054b815    c3
                         nop                                                              // 0x0054b816    90
                         nop                                                              // 0x0054b817    90
                         nop                                                              // 0x0054b818    90
                         nop                                                              // 0x0054b819    90
                         nop                                                              // 0x0054b81a    90
                         nop                                                              // 0x0054b81b    90
                         nop                                                              // 0x0054b81c    90
                         nop                                                              // 0x0054b81d    90
                         nop                                                              // 0x0054b81e    90
                         nop                                                              // 0x0054b81f    90
_jmp_addr_0x0054b820:    xor.s              eax, eax                                      // 0x0054b820    33c0
                         mov                dword ptr [ecx], eax                          // 0x0054b822    8901
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0054b824    894104
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0054b827    894108
                         ret                                                              // 0x0054b82a    c3
                         call               _jmp_addr_0x00401879                          // 0x0054b82b    e84960ebff
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0054b830    8b442404
                         mov                dword ptr [eax], 0x00000001                   // 0x0054b834    c70001000000
                         mov                eax, 0x00d47988                               // 0x0054b83a    b88879d400
                         ret                0x0004                                        // 0x0054b83f    c20400
                         nop                                                              // 0x0054b842    90
                         nop                                                              // 0x0054b843    90
                         nop                                                              // 0x0054b844    90
                         nop                                                              // 0x0054b845    90
                         nop                                                              // 0x0054b846    90
                         nop                                                              // 0x0054b847    90
                         nop                                                              // 0x0054b848    90
                         nop                                                              // 0x0054b849    90
                         nop                                                              // 0x0054b84a    90
                         nop                                                              // 0x0054b84b    90
                         nop                                                              // 0x0054b84c    90
                         nop                                                              // 0x0054b84d    90
                         nop                                                              // 0x0054b84e    90
                         nop                                                              // 0x0054b84f    90
@Reset__7LHTimerFUl@12:  sub                esp, 0x08                                     // 0x0054b850    83ec08
                         push               esi                                           // 0x0054b853    56
                         push               edi                                           // 0x0054b854    57
                         {disp32} mov       edi, dword ptr [__imp__GetTickCount@4]        // 0x0054b855    8b3dc4918a00
                         mov.s              esi, ecx                                      // 0x0054b85b    8bf1
                         call               edi                                           // 0x0054b85d    ffd7
                         {disp32} fld       dword ptr [esi + 0x00000108]                  // 0x0054b85f    d98608010000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1398]              // 0x0054b865    d81d98a38a00
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0054b86b    898600010000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0054b871    8b442414
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0054b875    898604010000
                         fnstsw             ax                                            // 0x0054b87b    dfe0
                         test               ah, 0x40                                      // 0x0054b87d    f6c440
                         {disp8} jne        _jmp_addr_0x0054b8e1                          // 0x0054b880    755f
                         {disp32} mov       ecx, dword ptr [esi + 0x00000108]             // 0x0054b882    8b8e08010000
                         {disp32} mov       dword ptr [esi + 0x0000010c], ecx             // 0x0054b888    898e0c010000
                         call               edi                                           // 0x0054b88e    ffd7
                         {disp32} mov       ecx, dword ptr [esi + 0x00000100]             // 0x0054b890    8b8e00010000
                         {disp32} mov       edx, dword ptr [esi + 0x00000104]             // 0x0054b896    8b9604010000
                         sub.s              eax, ecx                                      // 0x0054b89c    2bc1
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0054b89e    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0054b8a2    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0054b8aa    df6c2408
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x0054b8ae    89542408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x0054b8b2    c744240c00000000
                         {disp32} fmul      dword ptr [esi + 0x00000108]                  // 0x0054b8ba    d88e08010000
                         {disp8} fiadd      dword ptr [esp + 0x08]                        // 0x0054b8c0    da442408
                         call               _jmp_addr_0x007a1400                          // 0x0054b8c4    e8375b2500
                         {disp32} mov       dword ptr [esi + 0x00000104], eax             // 0x0054b8c9    898604010000
                         call               edi                                           // 0x0054b8cf    ffd7
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0054b8d1    898600010000
                         {disp32} mov       dword ptr [esi + 0x00000108], 0x00000000      // 0x0054b8d7    c7860801000000000000
_jmp_addr_0x0054b8e1:    pop                edi                                           // 0x0054b8e1    5f
                         pop                esi                                           // 0x0054b8e2    5e
                         add                esp, 0x08                                     // 0x0054b8e3    83c408
                         ret                0x0004                                        // 0x0054b8e6    c20400
                         nop                                                              // 0x0054b8e9    90
                         nop                                                              // 0x0054b8ea    90
                         nop                                                              // 0x0054b8eb    90
                         nop                                                              // 0x0054b8ec    90
                         nop                                                              // 0x0054b8ed    90
                         nop                                                              // 0x0054b8ee    90
                         nop                                                              // 0x0054b8ef    90
_jmp_addr_0x0054b8f0:    mov.s              eax, ecx                                      // 0x0054b8f0    8bc1
                         xor.s              ecx, ecx                                      // 0x0054b8f2    33c9
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0054b8f4    894814
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x0054b8f7    894810
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0054b8fa    89480c
                         {disp8} mov        dword ptr [eax + 0x2c], ecx                   // 0x0054b8fd    89482c
                         {disp8} mov        dword ptr [eax + 0x28], ecx                   // 0x0054b900    894828
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0054b903    894824
                         ret                                                              // 0x0054b906    c3
                         nop                                                              // 0x0054b907    90
                         nop                                                              // 0x0054b908    90
                         nop                                                              // 0x0054b909    90
                         nop                                                              // 0x0054b90a    90
                         nop                                                              // 0x0054b90b    90
                         nop                                                              // 0x0054b90c    90
                         nop                                                              // 0x0054b90d    90
                         nop                                                              // 0x0054b90e    90
                         nop                                                              // 0x0054b90f    90
_jmp_addr_0x0054b910:    mov.s              eax, ecx                                      // 0x0054b910    8bc1
                         xor.s              ecx, ecx                                      // 0x0054b912    33c9
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x0054b914    894810
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0054b917    89480c
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0054b91a    894808
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0054b91d    894804
                         mov                dword ptr [eax], ecx                          // 0x0054b920    8908
                         ret                                                              // 0x0054b922    c3
                         nop                                                              // 0x0054b923    90
                         nop                                                              // 0x0054b924    90
                         nop                                                              // 0x0054b925    90
                         nop                                                              // 0x0054b926    90
                         nop                                                              // 0x0054b927    90
                         nop                                                              // 0x0054b928    90
                         nop                                                              // 0x0054b929    90
                         nop                                                              // 0x0054b92a    90
                         nop                                                              // 0x0054b92b    90
                         nop                                                              // 0x0054b92c    90
                         nop                                                              // 0x0054b92d    90
                         nop                                                              // 0x0054b92e    90
                         nop                                                              // 0x0054b92f    90
@__ct__10GKeyBuffer@4:   mov.s              eax, ecx                                      // 0x0054b930    8bc1
                         xor.s              ecx, ecx                                      // 0x0054b932    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0054b934    894804
                         mov                dword ptr [eax], 0x008df780                   // 0x0054b937    c70080f78d00
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0054b93d    894808
                         {disp8} mov        word ptr [eax + 0x0e], cx                     // 0x0054b940    6689480e
                         {disp8} mov        word ptr [eax + 0x0c], cx                     // 0x0054b944    6689480c
                         ret                                                              // 0x0054b948    c3
                         nop                                                              // 0x0054b949    90
                         nop                                                              // 0x0054b94a    90
                         nop                                                              // 0x0054b94b    90
                         nop                                                              // 0x0054b94c    90
                         nop                                                              // 0x0054b94d    90
                         nop                                                              // 0x0054b94e    90
                         nop                                                              // 0x0054b94f    90
                         push               esi                                           // 0x0054b950    56
                         mov.s              esi, ecx                                      // 0x0054b951    8bf1
                         call               _jmp_addr_0x005e1a90                          // 0x0054b953    e838610900
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054b958    f644240801
                         {disp8} je         _jmp_addr_0x0054b96a                          // 0x0054b95d    740b
                         push               0x10                                          // 0x0054b95f    6a10
                         push               esi                                           // 0x0054b961    56
                         call               _jmp_addr_0x00436970                          // 0x0054b962    e809b0eeff
                         add                esp, 0x08                                     // 0x0054b967    83c408
_jmp_addr_0x0054b96a:    mov.s              eax, esi                                      // 0x0054b96a    8bc6
                         pop                esi                                           // 0x0054b96c    5e
                         ret                0x0004                                        // 0x0054b96d    c20400
                         push               esi                                           // 0x0054b970    56
                         mov.s              esi, ecx                                      // 0x0054b971    8bf1
                         mov                dword ptr [esi], 0x008df760                   // 0x0054b973    c70660f78d00
                         call               _jmp_addr_0x00591330                          // 0x0054b979    e8b2590400
                         mov.s              ecx, esi                                      // 0x0054b97e    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054b980    e8dbafeeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054b985    f644240801
                         {disp8} je         _jmp_addr_0x0054b99a                          // 0x0054b98a    740e
                         push               0x00000190                                    // 0x0054b98c    6890010000
                         push               esi                                           // 0x0054b991    56
                         call               _jmp_addr_0x00436970                          // 0x0054b992    e8d9afeeff
                         add                esp, 0x08                                     // 0x0054b997    83c408
_jmp_addr_0x0054b99a:    mov.s              eax, esi                                      // 0x0054b99a    8bc6
                         pop                esi                                           // 0x0054b99c    5e
                         ret                0x0004                                        // 0x0054b99d    c20400
                         xor.s              eax, eax                                      // 0x0054b9a0    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x0a]                     // 0x0054b9a2    8a410a
                         not                al                                            // 0x0054b9a5    f6d0
                         and                eax, 0x01                                     // 0x0054b9a7    83e001
                         ret                                                              // 0x0054b9aa    c3
                         call               _jmp_addr_0x00401879                          // 0x0054b9ab    e8c95eebff
                         mov                eax, 0x0000006a                               // 0x0054b9b0    b86a000000
                         ret                                                              // 0x0054b9b5    c3
                         nop                                                              // 0x0054b9b6    90
                         nop                                                              // 0x0054b9b7    90
                         nop                                                              // 0x0054b9b8    90
                         nop                                                              // 0x0054b9b9    90
                         nop                                                              // 0x0054b9ba    90
                         nop                                                              // 0x0054b9bb    90
                         nop                                                              // 0x0054b9bc    90
                         nop                                                              // 0x0054b9bd    90
                         nop                                                              // 0x0054b9be    90
                         nop                                                              // 0x0054b9bf    90
                         mov                eax, 0x00bec3cc                               // 0x0054b9c0    b8ccc3be00
                         ret                                                              // 0x0054b9c5    c3
                         nop                                                              // 0x0054b9c6    90
                         nop                                                              // 0x0054b9c7    90
                         nop                                                              // 0x0054b9c8    90
                         nop                                                              // 0x0054b9c9    90
                         nop                                                              // 0x0054b9ca    90
                         nop                                                              // 0x0054b9cb    90
                         nop                                                              // 0x0054b9cc    90
                         nop                                                              // 0x0054b9cd    90
                         nop                                                              // 0x0054b9ce    90
                         nop                                                              // 0x0054b9cf    90
@__ct__9GSoundMapFv@4:   xor.s              eax, eax                                      // 0x0054b9d0    33c0
                         push               esi                                           // 0x0054b9d2    56
                         mov.s              esi, ecx                                      // 0x0054b9d3    8bf1
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0054b9d5    894604
                         {disp32} mov       dword ptr [esi + 0x000000f8], eax             // 0x0054b9d8    8986f8000000
                         {disp32} mov       dword ptr [esi + 0x000000fc], eax             // 0x0054b9de    8986fc000000
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x0054b9e4    898600010000
                         push               edi                                           // 0x0054b9ea    57
                         mov                dword ptr [esi], 0x008df7a0                   // 0x0054b9eb    c706a0f78d00
                         call               _jmp_addr_0x0071d6d0                          // 0x0054b9f1    e8da1c1d00
                         xor.s              eax, eax                                      // 0x0054b9f6    33c0
                         {disp32} lea       edi, dword ptr [esi + 0x000000b4]             // 0x0054b9f8    8dbeb4000000
                         mov                ecx, 0x0000000e                               // 0x0054b9fe    b90e000000
                         rep stosd                                                        // 0x0054ba03    f3ab
                         pop                edi                                           // 0x0054ba05    5f
                         mov.s              eax, esi                                      // 0x0054ba06    8bc6
                         pop                esi                                           // 0x0054ba08    5e
                         ret                                                              // 0x0054ba09    c3
                         call               dword ptr [rdata_bytes + 0x36c]               // 0x0054ba0a    ff156c938a00
                         push               esi                                           // 0x0054ba10    56
                         mov.s              esi, ecx                                      // 0x0054ba11    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0054ba13    e848afeeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054ba18    f644240801
                         {disp8} je         _jmp_addr_0x0054ba2d                          // 0x0054ba1d    740e
                         push               0x00000110                                    // 0x0054ba1f    6810010000
                         push               esi                                           // 0x0054ba24    56
                         call               _jmp_addr_0x00436970                          // 0x0054ba25    e846afeeff
                         add                esp, 0x08                                     // 0x0054ba2a    83c408
_jmp_addr_0x0054ba2d:    mov.s              eax, esi                                      // 0x0054ba2d    8bc6
                         pop                esi                                           // 0x0054ba2f    5e
                         ret                0x0004                                        // 0x0054ba30    c20400
                         nop                                                              // 0x0054ba33    90
                         nop                                                              // 0x0054ba34    90
                         nop                                                              // 0x0054ba35    90
                         nop                                                              // 0x0054ba36    90
                         nop                                                              // 0x0054ba37    90
                         nop                                                              // 0x0054ba38    90
                         nop                                                              // 0x0054ba39    90
                         nop                                                              // 0x0054ba3a    90
                         nop                                                              // 0x0054ba3b    90
                         nop                                                              // 0x0054ba3c    90
                         nop                                                              // 0x0054ba3d    90
                         nop                                                              // 0x0054ba3e    90
                         nop                                                              // 0x0054ba3f    90
_jmp_addr_0x0054ba40:    push               edi                                           // 0x0054ba40    57
                         xor.s              eax, eax                                      // 0x0054ba41    33c0
                         mov                ecx, 0x00003800                               // 0x0054ba43    b900380000
                         mov                edi, 0x00eab7c8                               // 0x0054ba48    bfc8b7ea00
                         rep stosd                                                        // 0x0054ba4d    f3ab
                         mov                eax, 0x00eab7e0                               // 0x0054ba4f    b8e0b7ea00
                         pop                edi                                           // 0x0054ba54    5f
_jmp_addr_0x0054ba55:    mov                dword ptr [eax], 0x3d4ccccd                   // 0x0054ba55    c700cdcc4c3d
                         add                eax, 0x38                                     // 0x0054ba5b    83c038
                         cmp                eax, 0x00eb97e0                               // 0x0054ba5e    3de097eb00
                         .byte              0x72, 0xf0// {disp8} jb _jmp_addr_0x0054ba55  // 0x0054ba63    72f0
                         mov                edx, 0x00000001                               // 0x0054ba65    ba01000000
                         mov.s              ecx, edx                                      // 0x0054ba6a    8bca
                         call               @Create__10LH3DSpriteFli@8                    // 0x0054ba6c    e82f4a2f00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbac4]        // 0x0054ba71    8b0dc41aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4f3ab4], eax        // 0x0054ba77    a3b49aeb00
                         {disp8} mov        dword ptr [eax + 0x2c], ecx                   // 0x0054ba7c    89482c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4f3ab4]        // 0x0054ba7f    a1b49aeb00
                         or                 dword ptr [eax + 0x28], 0x40                  // 0x0054ba84    83482840
                         {disp32} mov       dword ptr [data_bytes + 0x4f3ab8], 0x00000000 // 0x0054ba88    c705b89aeb0000000000
                         ret                                                              // 0x0054ba92    c3
                         nop                                                              // 0x0054ba93    90
                         nop                                                              // 0x0054ba94    90
                         nop                                                              // 0x0054ba95    90
                         nop                                                              // 0x0054ba96    90
                         nop                                                              // 0x0054ba97    90
                         nop                                                              // 0x0054ba98    90
                         nop                                                              // 0x0054ba99    90
                         nop                                                              // 0x0054ba9a    90
                         nop                                                              // 0x0054ba9b    90
                         nop                                                              // 0x0054ba9c    90
                         nop                                                              // 0x0054ba9d    90
                         nop                                                              // 0x0054ba9e    90
                         nop                                                              // 0x0054ba9f    90
_jmp_addr_0x0054baa0:    mov.s              eax, ecx                                      // 0x0054baa0    8bc1
                         xor.s              ecx, ecx                                      // 0x0054baa2    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0054baa4    894804
                         mov                dword ptr [eax], 0x008df7c0                   // 0x0054baa7    c700c0f78d00
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0054baad    894808
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0054bab0    89480c
                         ret                                                              // 0x0054bab3    c3
                         nop                                                              // 0x0054bab4    90
                         nop                                                              // 0x0054bab5    90
                         nop                                                              // 0x0054bab6    90
                         nop                                                              // 0x0054bab7    90
                         nop                                                              // 0x0054bab8    90
                         nop                                                              // 0x0054bab9    90
                         nop                                                              // 0x0054baba    90
                         nop                                                              // 0x0054babb    90
                         nop                                                              // 0x0054babc    90
                         nop                                                              // 0x0054babd    90
                         nop                                                              // 0x0054babe    90
                         nop                                                              // 0x0054babf    90
                         push               esi                                           // 0x0054bac0    56
                         mov.s              esi, ecx                                      // 0x0054bac1    8bf1
                         mov                dword ptr [esi], 0x008df7c0                   // 0x0054bac3    c706c0f78d00
                         call               _jmp_addr_0x00579440                          // 0x0054bac9    e872d90200
                         mov.s              ecx, esi                                      // 0x0054bace    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054bad0    e88baeeeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054bad5    f644240801
                         {disp8} je         _jmp_addr_0x0054bae7                          // 0x0054bada    740b
                         push               0x10                                          // 0x0054badc    6a10
                         push               esi                                           // 0x0054bade    56
                         call               _jmp_addr_0x00436970                          // 0x0054badf    e88caeeeff
                         add                esp, 0x08                                     // 0x0054bae4    83c408
_jmp_addr_0x0054bae7:    mov.s              eax, esi                                      // 0x0054bae7    8bc6
                         pop                esi                                           // 0x0054bae9    5e
                         ret                0x0004                                        // 0x0054baea    c20400
                         nop                                                              // 0x0054baed    90
                         nop                                                              // 0x0054baee    90
                         nop                                                              // 0x0054baef    90
_jmp_addr_0x0054baf0:    push               esi                                           // 0x0054baf0    56
                         mov.s              esi, ecx                                      // 0x0054baf1    8bf1
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x0054baf3    c7460400000000
                         mov                dword ptr [esi], 0x008df7e0                   // 0x0054bafa    c706e0f78d00
                         call               _jmp_addr_0x00578be0                          // 0x0054bb00    e8dbd00200
                         mov.s              eax, esi                                      // 0x0054bb05    8bc6
                         pop                esi                                           // 0x0054bb07    5e
                         ret                                                              // 0x0054bb08    c3
                         nop                                                              // 0x0054bb09    90
                         nop                                                              // 0x0054bb0a    90
                         nop                                                              // 0x0054bb0b    90
                         nop                                                              // 0x0054bb0c    90
                         nop                                                              // 0x0054bb0d    90
                         nop                                                              // 0x0054bb0e    90
                         nop                                                              // 0x0054bb0f    90
                         push               esi                                           // 0x0054bb10    56
                         mov.s              esi, ecx                                      // 0x0054bb11    8bf1
                         mov                dword ptr [esi], 0x008df7e0                   // 0x0054bb13    c706e0f78d00
                         call               _jmp_addr_0x00436960                          // 0x0054bb19    e842aeeeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054bb1e    f644240801
                         {disp8} je         _jmp_addr_0x0054bb33                          // 0x0054bb23    740e
                         push               0x0000065c                                    // 0x0054bb25    685c060000
                         push               esi                                           // 0x0054bb2a    56
                         call               _jmp_addr_0x00436970                          // 0x0054bb2b    e840aeeeff
                         add                esp, 0x08                                     // 0x0054bb30    83c408
_jmp_addr_0x0054bb33:    mov.s              eax, esi                                      // 0x0054bb33    8bc6
                         pop                esi                                           // 0x0054bb35    5e
                         ret                0x0004                                        // 0x0054bb36    c20400
                         nop                                                              // 0x0054bb39    90
                         nop                                                              // 0x0054bb3a    90
                         nop                                                              // 0x0054bb3b    90
                         nop                                                              // 0x0054bb3c    90
                         nop                                                              // 0x0054bb3d    90
                         nop                                                              // 0x0054bb3e    90
                         nop                                                              // 0x0054bb3f    90
@__ct__13GestureSystem@4:mov.s              eax, ecx                                      // 0x0054bb40    8bc1
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000000            // 0x0054bb42    c7400400000000
                         mov                dword ptr [eax], 0x008df800                   // 0x0054bb49    c70000f88d00
                         {disp32} mov       dword ptr [eax + 0x00000c94], 0x00000001      // 0x0054bb4f    c780940c000001000000
                         ret                                                              // 0x0054bb59    c3
                         call               dword ptr [__imp__ImmReleaseContext@4]        // 0x0054bb5a    ff1514918a00
                         push               esi                                           // 0x0054bb60    56
                         mov.s              esi, ecx                                      // 0x0054bb61    8bf1
                         mov                dword ptr [esi], 0x008df800                   // 0x0054bb63    c70600f88d00
                         call               _jmp_addr_0x00436960                          // 0x0054bb69    e8f2adeeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054bb6e    f644240801
                         {disp8} je         _jmp_addr_0x0054bb83                          // 0x0054bb73    740e
                         push               0x00000c98                                    // 0x0054bb75    68980c0000
                         push               esi                                           // 0x0054bb7a    56
                         call               _jmp_addr_0x00436970                          // 0x0054bb7b    e8f0adeeff
                         add                esp, 0x08                                     // 0x0054bb80    83c408
_jmp_addr_0x0054bb83:    mov.s              eax, esi                                      // 0x0054bb83    8bc6
                         pop                esi                                           // 0x0054bb85    5e
                         ret                0x0004                                        // 0x0054bb86    c20400
                         nop                                                              // 0x0054bb89    90
                         nop                                                              // 0x0054bb8a    90
                         nop                                                              // 0x0054bb8b    90
                         nop                                                              // 0x0054bb8c    90
                         nop                                                              // 0x0054bb8d    90
                         nop                                                              // 0x0054bb8e    90
                         nop                                                              // 0x0054bb8f    90
_jmp_addr_0x0054bb90:    xor.s              eax, eax                                      // 0x0054bb90    33c0
                         mov                byte ptr [ecx], al                            // 0x0054bb92    8801
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0054bb94    894104
                         {disp8} mov        byte ptr [ecx + 0x09], al                     // 0x0054bb97    884109
                         {disp8} mov        byte ptr [ecx + 0x08], al                     // 0x0054bb9a    884108
                         ret                                                              // 0x0054bb9d    c3
                         nop                                                              // 0x0054bb9e    90
                         nop                                                              // 0x0054bb9f    90
                         push               ebx                                           // 0x0054bba0    53
                         push               esi                                           // 0x0054bba1    56
                         mov.s              esi, ecx                                      // 0x0054bba2    8bf1
                         push               edi                                           // 0x0054bba4    57
                         {disp32} lea       ecx, dword ptr [esi + 0x00250310]             // 0x0054bba5    8d8e10032500
                         call               _jmp_addr_0x0078e9a0                          // 0x0054bbab    e8f02d2400
                         {disp32} lea       ecx, dword ptr [esi + 0x002502a8]             // 0x0054bbb0    8d8ea8022500
                         call               _jmp_addr_0x005e1a90                          // 0x0054bbb6    e8d55e0900
                         {disp32} lea       ecx, dword ptr [esi + 0x0025004c]             // 0x0054bbbb    8d8e4c002500
                         call               _jmp_addr_0x005e6790                          // 0x0054bbc1    e8caab0900
                         {disp32} lea       ecx, dword ptr [esi + 0x0024ffbc]             // 0x0054bbc6    8d8ebcff2400
                         call               _jmp_addr_0x00436960                          // 0x0054bbcc    e88fadeeff
                         push               0x0054bef0                                    // 0x0054bbd1    68f0be5400
                         {disp32} lea       edi, dword ptr [esi + 0x00205e8c]             // 0x0054bbd6    8dbe8c5e2000
                         push               0xe                                           // 0x0054bbdc    6a0e
                         {disp32} lea       ebx, dword ptr [edi + 0x0004a008]             // 0x0054bbde    8d9f08a00400
                         push               0x14                                          // 0x0054bbe4    6a14
                         {disp8} lea        eax, dword ptr [ebx + 0x10]                   // 0x0054bbe6    8d4310
                         push               eax                                           // 0x0054bbe9    50
                         call               _jmp_addr_0x00401000                          // 0x0054bbea    e81154ebff
                         mov.s              ecx, ebx                                      // 0x0054bbef    8bcb
                         call               _jmp_addr_0x00436960                          // 0x0054bbf1    e86aadeeff
                         push               0x0054be20                                    // 0x0054bbf6    6820be5400
                         push               0x00000400                                    // 0x0054bbfb    6800040000
                         push               0x00000128                                    // 0x0054bc00    6828010000
                         {disp8} lea        ecx, dword ptr [edi + 0x08]                   // 0x0054bc05    8d4f08
                         push               ecx                                           // 0x0054bc08    51
                         call               _jmp_addr_0x00401000                          // 0x0054bc09    e8f253ebff
                         mov.s              ecx, edi                                      // 0x0054bc0e    8bcf
                         call               _jmp_addr_0x00436960                          // 0x0054bc10    e84badeeff
                         {disp32} lea       ecx, dword ptr [esi + 0x00205ba4]             // 0x0054bc15    8d8ea45b2000
                         call               _jmp_addr_0x0054bcb0                          // 0x0054bc1b    e890000000
                         {disp32} lea       ecx, dword ptr [esi + 0x00205b70]             // 0x0054bc20    8d8e705b2000
                         call               _jmp_addr_0x00635430                          // 0x0054bc26    e805980e00
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a30]             // 0x0054bc2b    8d8e305a2000
                         call               _jmp_addr_0x00436960                          // 0x0054bc31    e82aadeeff
                         {disp32} lea       ecx, dword ptr [esi + 0x00205a20]             // 0x0054bc36    8d8e205a2000
                         call               _jmp_addr_0x005e55c0                          // 0x0054bc3c    e87f990900
                         {disp32} lea       ecx, dword ptr [esi + 0x000059b8]             // 0x0054bc41    8d8eb8590000
                         call               _jmp_addr_0x006010f0                          // 0x0054bc47    e8a4540b00
                         {disp32} lea       ecx, dword ptr [esi + 0x0000598c]             // 0x0054bc4c    8d8e8c590000
                         call               _jmp_addr_0x00633480                          // 0x0054bc52    e829780e00
                         {disp32} lea       ecx, dword ptr [esi + 0x0000597c]             // 0x0054bc57    8d8e7c590000
                         call               _jmp_addr_0x00633480                          // 0x0054bc5d    e81e780e00
                         {disp32} lea       edi, dword ptr [esi + 0x00005318]             // 0x0054bc62    8dbe18530000
                         mov                ebx, 0x00000008                               // 0x0054bc68    bb08000000
_jmp_addr_0x0054bc6d:    sub                edi, 0x00000a60                               // 0x0054bc6d    81ef600a0000
                         mov.s              ecx, edi                                      // 0x0054bc73    8bcf
                         call               _jmp_addr_0x00648ee0                          // 0x0054bc75    e866d20f00
                         dec                ebx                                           // 0x0054bc7a    4b
                         {disp8} jne        _jmp_addr_0x0054bc6d                          // 0x0054bc7b    75f0
                         mov.s              ecx, esi                                      // 0x0054bc7d    8bce
                         call               _jmp_addr_0x0056fa80                          // 0x0054bc7f    e8fc3d0200
                         test               byte ptr [esp + 0x10], 0x01                   // 0x0054bc84    f644241001
                         {disp8} je         _jmp_addr_0x0054bc99                          // 0x0054bc89    740e
                         push               0x00250544                                    // 0x0054bc8b    6844052500
                         push               esi                                           // 0x0054bc90    56
                         call               _jmp_addr_0x00436970                          // 0x0054bc91    e8daaceeff
                         add                esp, 0x08                                     // 0x0054bc96    83c408
_jmp_addr_0x0054bc99:    pop                edi                                           // 0x0054bc99    5f
                         mov.s              eax, esi                                      // 0x0054bc9a    8bc6
                         pop                esi                                           // 0x0054bc9c    5e
                         pop                ebx                                           // 0x0054bc9d    5b
                         ret                0x0004                                        // 0x0054bc9e    c20400
                         nop                                                              // 0x0054bca1    90
                         nop                                                              // 0x0054bca2    90
                         nop                                                              // 0x0054bca3    90
                         nop                                                              // 0x0054bca4    90
                         nop                                                              // 0x0054bca5    90
                         nop                                                              // 0x0054bca6    90
                         nop                                                              // 0x0054bca7    90
                         nop                                                              // 0x0054bca8    90
                         nop                                                              // 0x0054bca9    90
                         nop                                                              // 0x0054bcaa    90
                         nop                                                              // 0x0054bcab    90
                         nop                                                              // 0x0054bcac    90
                         nop                                                              // 0x0054bcad    90
                         nop                                                              // 0x0054bcae    90
                         nop                                                              // 0x0054bcaf    90
_jmp_addr_0x0054bcb0:    push               esi                                           // 0x0054bcb0    56
                         mov.s              esi, ecx                                      // 0x0054bcb1    8bf1
                         mov                dword ptr [esi], 0x008df760                   // 0x0054bcb3    c70660f78d00
                         call               _jmp_addr_0x00591330                          // 0x0054bcb9    e872560400
                         mov.s              ecx, esi                                      // 0x0054bcbe    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054bcc0    e89baceeff
                         pop                esi                                           // 0x0054bcc5    5e
                         ret                                                              // 0x0054bcc6    c3
                         nop                                                              // 0x0054bcc7    90
                         nop                                                              // 0x0054bcc8    90
                         nop                                                              // 0x0054bcc9    90
                         nop                                                              // 0x0054bcca    90
                         nop                                                              // 0x0054bccb    90
                         nop                                                              // 0x0054bccc    90
                         nop                                                              // 0x0054bccd    90
                         nop                                                              // 0x0054bcce    90
                         nop                                                              // 0x0054bccf    90
_jmp_addr_0x0054bcd0:    push               ebx                                           // 0x0054bcd0    53
                         push               ebp                                           // 0x0054bcd1    55
                         push               esi                                           // 0x0054bcd2    56
                         mov.s              ebx, ecx                                      // 0x0054bcd3    8bd9
                         push               edi                                           // 0x0054bcd5    57
                         xor.s              edi, edi                                      // 0x0054bcd6    33ff
                         mov                dword ptr [ebx], 0x008a9a44                   // 0x0054bcd8    c703449a8a00
                         {disp8} mov        dword ptr [ebx + 0x04], edi                   // 0x0054bcde    897b04
                         {disp8} lea        esi, dword ptr [ebx + 0x08]                   // 0x0054bce1    8d7308
                         mov                ebp, 0x00000400                               // 0x0054bce4    bd00040000
_jmp_addr_0x0054bce9:    push               0x0054bed0                                    // 0x0054bce9    68d0be5400
                         push               0xe                                           // 0x0054bcee    6a0e
                         mov                dword ptr [esi], 0x008a9a44                   // 0x0054bcf0    c706449a8a00
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x0054bcf6    897e04
                         push               0x14                                          // 0x0054bcf9    6a14
                         {disp8} lea        eax, dword ptr [esi + 0x10]                   // 0x0054bcfb    8d4610
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x0054bcfe    897e08
                         push               eax                                           // 0x0054bd01    50
                         mov                dword ptr [esi], 0x008c4d1c                   // 0x0054bd02    c7061c4d8c00
                         call               _jmp_addr_0x00401140                          // 0x0054bd08    e83354ebff
                         mov                dword ptr [esi], 0x008df870                   // 0x0054bd0d    c70670f88d00
                         add                esi, 0x00000128                               // 0x0054bd13    81c628010000
                         dec                ebp                                           // 0x0054bd19    4d
                         {disp8} jne        _jmp_addr_0x0054bce9                          // 0x0054bd1a    75cd
                         {disp32} mov       dword ptr [ebx + 0x0004a00c], edi             // 0x0054bd1c    89bb0ca00400
                         {disp32} mov       dword ptr [ebx + 0x0004a010], edi             // 0x0054bd22    89bb10a00400
                         {disp32} mov       dword ptr [ebx + 0x0004a008], 0x008c4d1c      // 0x0054bd28    c78308a004001c4d8c00
                         {disp32} lea       eax, dword ptr [ebx + 0x0004a018]             // 0x0054bd32    8d8318a00400
                         mov                ecx, 0x0000000e                               // 0x0054bd38    b90e000000
_jmp_addr_0x0054bd3d:    mov                dword ptr [eax], 0x008a9a44                   // 0x0054bd3d    c700449a8a00
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x0054bd43    897804
                         {disp8} mov        dword ptr [eax + 0x08], edi                   // 0x0054bd46    897808
                         mov                dword ptr [eax], 0x008df840                   // 0x0054bd49    c70040f88d00
                         add                eax, 0x14                                     // 0x0054bd4f    83c014
                         dec                ecx                                           // 0x0054bd52    49
                         {disp8} jne        _jmp_addr_0x0054bd3d                          // 0x0054bd53    75e8
                         pop                edi                                           // 0x0054bd55    5f
                         pop                esi                                           // 0x0054bd56    5e
                         {disp32} mov       dword ptr [ebx + 0x0004a008], 0x008df870      // 0x0054bd57    c78308a0040070f88d00
                         pop                ebp                                           // 0x0054bd61    5d
                         mov                dword ptr [ebx], 0x008df820                   // 0x0054bd62    c70320f88d00
                         mov.s              eax, ebx                                      // 0x0054bd68    8bc3
                         pop                ebx                                           // 0x0054bd6a    5b
                         ret                                                              // 0x0054bd6b    c3
                         nop                                                              // 0x0054bd6c    90
                         nop                                                              // 0x0054bd6d    90
                         nop                                                              // 0x0054bd6e    90
                         nop                                                              // 0x0054bd6f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0054bd70    8b442404
                         mov                dword ptr [eax], 0x00000000                   // 0x0054bd74    c70000000000
                         xor.s              eax, eax                                      // 0x0054bd7a    33c0
                         ret                0x0004                                        // 0x0054bd7c    c20400
                         nop                                                              // 0x0054bd7f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0054bd80    8b442404
                         mov                dword ptr [eax], 0x0000000e                   // 0x0054bd84    c7000e000000
                         {disp8} lea        eax, dword ptr [ecx + 0x10]                   // 0x0054bd8a    8d4110
                         ret                0x0004                                        // 0x0054bd8d    c20400
                         push               ebx                                           // 0x0054bd90    53
                         push               ebp                                           // 0x0054bd91    55
                         push               esi                                           // 0x0054bd92    56
                         mov.s              ebp, ecx                                      // 0x0054bd93    8be9
                         push               edi                                           // 0x0054bd95    57
                         {disp32} lea       edi, dword ptr [ebp + 0x0004a008]             // 0x0054bd96    8dbd08a00400
                         {disp32} lea       esi, dword ptr [edi + 0x00000128]             // 0x0054bd9c    8db728010000
                         mov                ebx, 0x0000000e                               // 0x0054bda2    bb0e000000
_jmp_addr_0x0054bda7:    sub                esi, 0x14                                     // 0x0054bda7    83ee14
                         mov.s              ecx, esi                                      // 0x0054bdaa    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054bdac    e8afabeeff
                         dec                ebx                                           // 0x0054bdb1    4b
                         {disp8} jne        _jmp_addr_0x0054bda7                          // 0x0054bdb2    75f3
                         mov.s              ecx, edi                                      // 0x0054bdb4    8bcf
                         call               _jmp_addr_0x00436960                          // 0x0054bdb6    e8a5abeeff
                         {disp32} lea       esi, dword ptr [ebp + 0x0004a008]             // 0x0054bdbb    8db508a00400
                         {disp8} lea        edi, dword ptr [esi + 0x10]                   // 0x0054bdc1    8d7e10
                         mov                ebx, 0x00000400                               // 0x0054bdc4    bb00040000
_jmp_addr_0x0054bdc9:    push               0x0054bef0                                    // 0x0054bdc9    68f0be5400
                         push               0xe                                           // 0x0054bdce    6a0e
                         push               0x14                                          // 0x0054bdd0    6a14
                         sub                edi, 0x00000128                               // 0x0054bdd2    81ef28010000
                         push               edi                                           // 0x0054bdd8    57
                         sub                esi, 0x00000128                               // 0x0054bdd9    81ee28010000
                         call               _jmp_addr_0x00401000                          // 0x0054bddf    e81c52ebff
                         mov.s              ecx, esi                                      // 0x0054bde4    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054bde6    e875abeeff
                         dec                ebx                                           // 0x0054bdeb    4b
                         {disp8} jne        _jmp_addr_0x0054bdc9                          // 0x0054bdec    75db
                         mov.s              ecx, ebp                                      // 0x0054bdee    8bcd
                         call               _jmp_addr_0x00436960                          // 0x0054bdf0    e86babeeff
                         test               byte ptr [esp + 0x14], 0x01                   // 0x0054bdf5    f644241401
                         {disp8} je         _jmp_addr_0x0054be0a                          // 0x0054bdfa    740e
                         push               0x0004a130                                    // 0x0054bdfc    6830a10400
                         push               ebp                                           // 0x0054be01    55
                         call               _jmp_addr_0x00436970                          // 0x0054be02    e869abeeff
                         add                esp, 0x08                                     // 0x0054be07    83c408
_jmp_addr_0x0054be0a:    pop                edi                                           // 0x0054be0a    5f
                         pop                esi                                           // 0x0054be0b    5e
                         mov.s              eax, ebp                                      // 0x0054be0c    8bc5
                         pop                ebp                                           // 0x0054be0e    5d
                         pop                ebx                                           // 0x0054be0f    5b
                         ret                0x0004                                        // 0x0054be10    c20400
                         nop                                                              // 0x0054be13    90
                         nop                                                              // 0x0054be14    90
                         nop                                                              // 0x0054be15    90
                         nop                                                              // 0x0054be16    90
                         nop                                                              // 0x0054be17    90
                         nop                                                              // 0x0054be18    90
                         nop                                                              // 0x0054be19    90
                         nop                                                              // 0x0054be1a    90
                         nop                                                              // 0x0054be1b    90
                         nop                                                              // 0x0054be1c    90
                         nop                                                              // 0x0054be1d    90
                         nop                                                              // 0x0054be1e    90
                         nop                                                              // 0x0054be1f    90
                         push               ebx                                           // 0x0054be20    53
                         push               esi                                           // 0x0054be21    56
                         mov.s              ebx, ecx                                      // 0x0054be22    8bd9
                         push               edi                                           // 0x0054be24    57
                         {disp32} lea       esi, dword ptr [ebx + 0x00000128]             // 0x0054be25    8db328010000
                         mov                edi, 0x0000000e                               // 0x0054be2b    bf0e000000
_jmp_addr_0x0054be30:    sub                esi, 0x14                                     // 0x0054be30    83ee14
                         mov.s              ecx, esi                                      // 0x0054be33    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054be35    e826abeeff
                         dec                edi                                           // 0x0054be3a    4f
                         {disp8} jne        _jmp_addr_0x0054be30                          // 0x0054be3b    75f3
                         mov.s              ecx, ebx                                      // 0x0054be3d    8bcb
                         call               _jmp_addr_0x00436960                          // 0x0054be3f    e81cabeeff
                         pop                edi                                           // 0x0054be44    5f
                         pop                esi                                           // 0x0054be45    5e
                         pop                ebx                                           // 0x0054be46    5b
                         ret                                                              // 0x0054be47    c3
                         nop                                                              // 0x0054be48    90
                         nop                                                              // 0x0054be49    90
                         nop                                                              // 0x0054be4a    90
                         nop                                                              // 0x0054be4b    90
                         nop                                                              // 0x0054be4c    90
                         nop                                                              // 0x0054be4d    90
                         nop                                                              // 0x0054be4e    90
                         nop                                                              // 0x0054be4f    90
                         push               esi                                           // 0x0054be50    56
                         mov.s              esi, ecx                                      // 0x0054be51    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0054be53    e808abeeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054be58    f644240801
                         {disp8} je         _jmp_addr_0x0054be6d                          // 0x0054be5d    740e
                         push               0x00000090                                    // 0x0054be5f    6890000000
                         push               esi                                           // 0x0054be64    56
                         call               _jmp_addr_0x00436970                          // 0x0054be65    e806abeeff
                         add                esp, 0x08                                     // 0x0054be6a    83c408
_jmp_addr_0x0054be6d:    mov.s              eax, esi                                      // 0x0054be6d    8bc6
                         pop                esi                                           // 0x0054be6f    5e
                         ret                0x0004                                        // 0x0054be70    c20400
                         nop                                                              // 0x0054be73    90
                         nop                                                              // 0x0054be74    90
                         nop                                                              // 0x0054be75    90
                         nop                                                              // 0x0054be76    90
                         nop                                                              // 0x0054be77    90
                         nop                                                              // 0x0054be78    90
                         nop                                                              // 0x0054be79    90
                         nop                                                              // 0x0054be7a    90
                         nop                                                              // 0x0054be7b    90
                         nop                                                              // 0x0054be7c    90
                         nop                                                              // 0x0054be7d    90
                         nop                                                              // 0x0054be7e    90
                         nop                                                              // 0x0054be7f    90
                         push               ebx                                           // 0x0054be80    53
                         push               esi                                           // 0x0054be81    56
                         mov.s              ebx, ecx                                      // 0x0054be82    8bd9
                         push               edi                                           // 0x0054be84    57
                         {disp32} lea       esi, dword ptr [ebx + 0x00000128]             // 0x0054be85    8db328010000
                         mov                edi, 0x0000000e                               // 0x0054be8b    bf0e000000
_jmp_addr_0x0054be90:    sub                esi, 0x14                                     // 0x0054be90    83ee14
                         mov.s              ecx, esi                                      // 0x0054be93    8bce
                         call               _jmp_addr_0x00436960                          // 0x0054be95    e8c6aaeeff
                         dec                edi                                           // 0x0054be9a    4f
                         {disp8} jne        _jmp_addr_0x0054be90                          // 0x0054be9b    75f3
                         mov.s              ecx, ebx                                      // 0x0054be9d    8bcb
                         call               _jmp_addr_0x00436960                          // 0x0054be9f    e8bcaaeeff
                         test               byte ptr [esp + 0x10], 0x01                   // 0x0054bea4    f644241001
                         {disp8} je         _jmp_addr_0x0054beb9                          // 0x0054bea9    740e
                         push               0x00000128                                    // 0x0054beab    6828010000
                         push               ebx                                           // 0x0054beb0    53
                         call               _jmp_addr_0x00436970                          // 0x0054beb1    e8baaaeeff
                         add                esp, 0x08                                     // 0x0054beb6    83c408
_jmp_addr_0x0054beb9:    pop                edi                                           // 0x0054beb9    5f
                         pop                esi                                           // 0x0054beba    5e
                         mov.s              eax, ebx                                      // 0x0054bebb    8bc3
                         pop                ebx                                           // 0x0054bebd    5b
                         ret                0x0004                                        // 0x0054bebe    c20400
                         nop                                                              // 0x0054bec1    90
                         nop                                                              // 0x0054bec2    90
                         nop                                                              // 0x0054bec3    90
                         nop                                                              // 0x0054bec4    90
                         nop                                                              // 0x0054bec5    90
                         nop                                                              // 0x0054bec6    90
                         nop                                                              // 0x0054bec7    90
                         nop                                                              // 0x0054bec8    90
                         nop                                                              // 0x0054bec9    90
                         nop                                                              // 0x0054beca    90
                         nop                                                              // 0x0054becb    90
                         nop                                                              // 0x0054becc    90
                         nop                                                              // 0x0054becd    90
                         nop                                                              // 0x0054bece    90
                         nop                                                              // 0x0054becf    90
                         mov.s              eax, ecx                                      // 0x0054bed0    8bc1
                         xor.s              ecx, ecx                                      // 0x0054bed2    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0054bed4    894804
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0054bed7    894808
                         mov                dword ptr [eax], 0x008df840                   // 0x0054beda    c70040f88d00
                         ret                                                              // 0x0054bee0    c3
                         nop                                                              // 0x0054bee1    90
                         nop                                                              // 0x0054bee2    90
                         nop                                                              // 0x0054bee3    90
                         nop                                                              // 0x0054bee4    90
                         nop                                                              // 0x0054bee5    90
                         nop                                                              // 0x0054bee6    90
                         nop                                                              // 0x0054bee7    90
                         nop                                                              // 0x0054bee8    90
                         nop                                                              // 0x0054bee9    90
                         nop                                                              // 0x0054beea    90
                         nop                                                              // 0x0054beeb    90
                         nop                                                              // 0x0054beec    90
                         nop                                                              // 0x0054beed    90
                         nop                                                              // 0x0054beee    90
                         nop                                                              // 0x0054beef    90
                         {disp32} jmp       _jmp_addr_0x00436960                          // 0x0054bef0    e96baaeeff
                         nop                                                              // 0x0054bef5    90
                         nop                                                              // 0x0054bef6    90
                         nop                                                              // 0x0054bef7    90
                         nop                                                              // 0x0054bef8    90
                         nop                                                              // 0x0054bef9    90
                         nop                                                              // 0x0054befa    90
                         nop                                                              // 0x0054befb    90
                         nop                                                              // 0x0054befc    90
                         nop                                                              // 0x0054befd    90
                         nop                                                              // 0x0054befe    90
                         nop                                                              // 0x0054beff    90
                         push               esi                                           // 0x0054bf00    56
                         mov.s              esi, ecx                                      // 0x0054bf01    8bf1
                         call               _jmp_addr_0x00436960                          // 0x0054bf03    e858aaeeff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x0054bf08    f644240801
                         {disp8} je         _jmp_addr_0x0054bf1a                          // 0x0054bf0d    740b
                         push               0x14                                          // 0x0054bf0f    6a14
                         push               esi                                           // 0x0054bf11    56
                         call               _jmp_addr_0x00436970                          // 0x0054bf12    e859aaeeff
                         add                esp, 0x08                                     // 0x0054bf17    83c408
_jmp_addr_0x0054bf1a:    mov.s              eax, esi                                      // 0x0054bf1a    8bc6
                         pop                esi                                           // 0x0054bf1c    5e
                         ret                0x0004                                        // 0x0054bf1d    c20400
_jmp_addr_0x0054bf20:    xor.s              eax, eax                                      // 0x0054bf20    33c0
                         {disp32} mov       byte ptr [ecx + 0x00250174], al               // 0x0054bf22    888174012500
                         {disp32} mov       dword ptr [ecx + 0x00250188], eax             // 0x0054bf28    898188012500
                         {disp32} mov       dword ptr [ecx + 0x00250194], eax             // 0x0054bf2e    898194012500
                         {disp32} mov       dword ptr [ecx + 0x0025018c], eax             // 0x0054bf34    89818c012500
                         {disp32} mov       dword ptr [ecx + 0x00250190], eax             // 0x0054bf3a    898190012500
                         {disp32} mov       byte ptr [ecx + 0x002502c8], al               // 0x0054bf40    8881c8022500
                         {disp32} mov       dword ptr [ecx + 0x00205d44], eax             // 0x0054bf46    8981445d2000
                         {disp32} mov       dword ptr [ecx + 0x00250094], eax             // 0x0054bf4c    898194002500
                         {disp32} mov       dword ptr [ecx + 0x00205d38], eax             // 0x0054bf52    8981385d2000
                         {disp32} mov       dword ptr [ecx + 0x002502c0], eax             // 0x0054bf58    8981c0022500
                         {disp32} mov       dword ptr [ecx + 0x00205d50], eax             // 0x0054bf5e    8981505d2000
                         {disp32} mov       dword ptr [ecx + 0x00205d54], eax             // 0x0054bf64    8981545d2000
                         {disp32} mov       dword ptr [ecx + 0x00205d58], eax             // 0x0054bf6a    8981585d2000
                         {disp32} mov       byte ptr [ecx + 0x00005978], 0x01             // 0x0054bf70    c6817859000001
                         {disp32} mov       byte ptr [ecx + 0x00005979], al               // 0x0054bf77    888179590000
                         {disp32} mov       byte ptr [ecx + 0x00005318], al               // 0x0054bf7d    888118530000
                         {disp32} mov       dword ptr [ecx + 0x002502d0], eax             // 0x0054bf83    8981d0022500
                         {disp32} mov       dword ptr [ecx + 0x002502d4], eax             // 0x0054bf89    8981d4022500
                         {disp32} mov       dword ptr [ecx + 0x002502d8], eax             // 0x0054bf8f    8981d8022500
                         {disp32} mov       dword ptr [ecx + 0x002502dc], eax             // 0x0054bf95    8981dc022500
                         {disp32} mov       dword ptr [ecx + 0x002502e0], eax             // 0x0054bf9b    8981e0022500
                         {disp32} mov       dword ptr [ecx + 0x002502e4], eax             // 0x0054bfa1    8981e4022500
                         {disp8} mov        dword ptr [ecx + 0x14], 0x00000020            // 0x0054bfa7    c7411420000000
                         {disp32} mov       dword ptr [ecx + 0x00205a0c], eax             // 0x0054bfae    89810c5a2000
                         {disp32} mov       dword ptr [ecx + 0x00205a10], eax             // 0x0054bfb4    8981105a2000
                         {disp32} mov       dword ptr [ecx + 0x00205a14], eax             // 0x0054bfba    8981145a2000
                         {disp32} mov       dword ptr [ecx + 0x00205a18], eax             // 0x0054bfc0    8981185a2000
                         {disp32} mov       dword ptr [ecx + 0x00205a1c], eax             // 0x0054bfc6    89811c5a2000
                         ret                                                              // 0x0054bfcc    c3
                         nop                                                              // 0x0054bfcd    90
                         nop                                                              // 0x0054bfce    90
                         nop                                                              // 0x0054bfcf    90
                         push               esi                                           // 0x0054bfd0    56
                         push               edi                                           // 0x0054bfd1    57
                         mov.s              esi, ecx                                      // 0x0054bfd2    8bf1
                         call               _jmp_addr_0x0050f780                          // 0x0054bfd4    e8a737fcff
                         {disp32} mov       ecx, dword ptr [esi + 0x00250064]             // 0x0054bfd9    8b8e64002500
                         test               ecx, ecx                                      // 0x0054bfdf    85c9
                         {disp8} je         _jmp_addr_0x0054bfea                          // 0x0054bfe1    7407
                         mov                eax, dword ptr [ecx]                          // 0x0054bfe3    8b01
                         push               0x1                                           // 0x0054bfe5    6a01
                         call               dword ptr [eax + 4]                           // 0x0054bfe7    ff5004
_jmp_addr_0x0054bfea:    {disp32} mov       ecx, dword ptr [esi + 0x00250068]             // 0x0054bfea    8b8e68002500
                         test               ecx, ecx                                      // 0x0054bff0    85c9
                         {disp8} je         _jmp_addr_0x0054bffb                          // 0x0054bff2    7407
                         mov                edx, dword ptr [ecx]                          // 0x0054bff4    8b11
                         push               0x1                                           // 0x0054bff6    6a01
                         call               dword ptr [edx + 4]                           // 0x0054bff8    ff5204
_jmp_addr_0x0054bffb:    {disp32} mov       ecx, dword ptr [esi + 0x0025006c]             // 0x0054bffb    8b8e6c002500
                         test               ecx, ecx                                      // 0x0054c001    85c9
                         {disp8} je         _jmp_addr_0x0054c00c                          // 0x0054c003    7407
                         mov                eax, dword ptr [ecx]                          // 0x0054c005    8b01
                         push               0x1                                           // 0x0054c007    6a01
                         call               dword ptr [eax + 4]                           // 0x0054c009    ff5004
_jmp_addr_0x0054c00c:    {disp32} mov       ecx, dword ptr [esi + 0x00250070]             // 0x0054c00c    8b8e70002500
                         push               ecx                                           // 0x0054c012    51
                         call               ___dl__FPv                                    // 0x0054c013    e8802e2600
                         {disp32} mov       edx, dword ptr [esi + 0x00250074]             // 0x0054c018    8b9674002500
                         push               edx                                           // 0x0054c01e    52
                         call               ___dl__FPv                                    // 0x0054c01f    e8742e2600
                         {disp32} mov       ecx, dword ptr [esi + 0x00250090]             // 0x0054c024    8b8e90002500
                         add                esp, 0x08                                     // 0x0054c02a    83c408
                         test               ecx, ecx                                      // 0x0054c02d    85c9
                         {disp8} je         _jmp_addr_0x0054c038                          // 0x0054c02f    7407
                         mov                eax, dword ptr [ecx]                          // 0x0054c031    8b01
                         push               0x1                                           // 0x0054c033    6a01
                         call               dword ptr [eax + 4]                           // 0x0054c035    ff5004
_jmp_addr_0x0054c038:    {disp32} mov       ecx, dword ptr [esi + 0x00250058]             // 0x0054c038    8b8e58002500
                         test               ecx, ecx                                      // 0x0054c03e    85c9
                         {disp8} je         _jmp_addr_0x0054c049                          // 0x0054c040    7407
                         mov                edx, dword ptr [ecx]                          // 0x0054c042    8b11
                         push               0x1                                           // 0x0054c044    6a01
                         call               dword ptr [edx + 4]                           // 0x0054c046    ff5204
_jmp_addr_0x0054c049:    {disp32} mov       eax, dword ptr [esi + 0x002502d0]             // 0x0054c049    8b86d0022500
                         push               eax                                           // 0x0054c04f    50
                         call               ___dt__10LHFilePathFv                         // 0x0054c050    e8dbad2700
                         {disp32} mov       ecx, dword ptr [esi + 0x002502d4]             // 0x0054c055    8b8ed4022500
                         push               ecx                                           // 0x0054c05b    51
                         call               ___dt__10LHFilePathFv                         // 0x0054c05c    e8cfad2700
                         {disp32} mov       edx, dword ptr [esi + 0x002502d8]             // 0x0054c061    8b96d8022500
                         push               edx                                           // 0x0054c067    52
                         call               ___dt__10LHFilePathFv                         // 0x0054c068    e8c3ad2700
                         {disp32} mov       eax, dword ptr [esi + 0x002502dc]             // 0x0054c06d    8b86dc022500
                         push               eax                                           // 0x0054c073    50
                         call               ___dt__10LHFilePathFv                         // 0x0054c074    e8b7ad2700
                         {disp32} mov       ecx, dword ptr [esi + 0x002502e0]             // 0x0054c079    8b8ee0022500
                         push               ecx                                           // 0x0054c07f    51
                         call               ___dt__10LHFilePathFv                         // 0x0054c080    e8abad2700
                         {disp32} mov       edx, dword ptr [esi + 0x002502e4]             // 0x0054c085    8b96e4022500
                         push               edx                                           // 0x0054c08b    52
                         call               ___dt__10LHFilePathFv                         // 0x0054c08c    e89fad2700
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4f3ab4]        // 0x0054c091    8b0db49aeb00
                         add                esp, 0x18                                     // 0x0054c097    83c418
                         call               _jmp_addr_0x00840520                          // 0x0054c09a    e881442f00
                         {disp32} mov       dword ptr [data_bytes + 0x4bf36c], 0x00000000 // 0x0054c09f    c7056c53e80000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4bf370], 0x00000000 // 0x0054c0a9    c7057053e80000000000
                         call               _jmp_addr_0x00469960                          // 0x0054c0b3    e8a8d8f1ff
                         call               _jmp_addr_0x00844c80                          // 0x0054c0b8    e8c38b2f00
                         push               0x1                                           // 0x0054c0bd    6a01
                         call               _jmp_addr_0x0054a940                          // 0x0054c0bf    e87ce8ffff
                         push               0x0                                           // 0x0054c0c4    6a00
                         push               0x00844e30                                    // 0x0054c0c6    68304e8400
                         call               _jmp_addr_0x0082f3b0                          // 0x0054c0cb    e8e0322e00
                         add                esp, 0x0c                                     // 0x0054c0d0    83c40c
                         call               _jmp_addr_0x00844ca0                          // 0x0054c0d3    e8c88b2f00
                         push               0x00cd3af8                                    // 0x0054c0d8    68f83acd00
                         call               dword ptr [__imp__EnterCriticalSection@4]     // 0x0054c0dd    ff1580918a00
                         push               0x00cd3af8                                    // 0x0054c0e3    68f83acd00
                         call               dword ptr [__imp__LeaveCriticalSection@4]     // 0x0054c0e8    ff1584918a00
                         {disp32} mov       edi, dword ptr [rdata_bytes + 0x178]          // 0x0054c0ee    8b3d78918a00
                         push               0x00ef74f8                                    // 0x0054c0f4    68f874ef00
                         call               edi                                           // 0x0054c0f9    ffd7
                         push               0x00cd3af8                                    // 0x0054c0fb    68f83acd00
                         call               edi                                           // 0x0054c100    ffd7
                         {disp8} mov        cl, byte ptr [esi + 0x0a]                     // 0x0054c102    8a4e0a
                         {disp32} mov       edi, dword ptr [esi + 0x00250094]             // 0x0054c105    8bbe94002500
                         or                 cl, 1                                         // 0x0054c10b    80c901
                         test               edi, edi                                      // 0x0054c10e    85ff
                         {disp8} mov        byte ptr [esi + 0x0a], cl                     // 0x0054c110    884e0a
                         {disp8} je         _jmp_addr_0x0054c125                          // 0x0054c113    7410
                         mov.s              ecx, edi                                      // 0x0054c115    8bcf
                         call               _jmp_addr_0x005c4410                          // 0x0054c117    e8f4820700
                         push               edi                                           // 0x0054c11c    57
                         call               ___dl__FPv                                    // 0x0054c11d    e8762d2600
                         add                esp, 0x04                                     // 0x0054c122    83c404
_jmp_addr_0x0054c125:    {disp32} mov       edi, dword ptr [esi + 0x00250178]             // 0x0054c125    8bbe78012500
                         test               edi, edi                                      // 0x0054c12b    85ff
                         {disp8} je         _jmp_addr_0x0054c150                          // 0x0054c12d    7421
                         mov.s              ecx, edi                                      // 0x0054c12f    8bcf
                         call               _jmp_addr_0x0046b750                          // 0x0054c131    e81af6f1ff
                         mov.s              ecx, edi                                      // 0x0054c136    8bcf
                         call               @__dt__8LHOSFileFv@4                          // 0x0054c138    e843052700
                         push               edi                                           // 0x0054c13d    57
                         call               ___dl__FPv                                    // 0x0054c13e    e8552d2600
                         add                esp, 0x04                                     // 0x0054c143    83c404
                         {disp32} mov       dword ptr [esi + 0x00250178], 0x00000000      // 0x0054c146    c7867801250000000000
_jmp_addr_0x0054c150:    pop                edi                                           // 0x0054c150    5f
                         pop                esi                                           // 0x0054c151    5e
                         ret                0x0004                                        // 0x0054c152    c20400
                         nop                                                              // 0x0054c155    90
                         nop                                                              // 0x0054c156    90
                         nop                                                              // 0x0054c157    90
                         nop                                                              // 0x0054c158    90
                         nop                                                              // 0x0054c159    90
                         nop                                                              // 0x0054c15a    90
                         nop                                                              // 0x0054c15b    90
                         nop                                                              // 0x0054c15c    90
                         nop                                                              // 0x0054c15d    90
                         nop                                                              // 0x0054c15e    90
                         nop                                                              // 0x0054c15f    90
_jmp_addr_0x0054c160:    push               0x1                                           // 0x0054c160    6a01
                         call               _RenderLoadingFrame__Fb                       // 0x0054c162    e8d98c0a00
                         add                esp, 0x04                                     // 0x0054c167    83c404
                         call               _jmp_addr_0x007dee00                          // 0x0054c16a    e8912c2900
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2261fc]        // 0x0054c16f    a1fcc1be00
                         test               eax, eax                                      // 0x0054c174    85c0
                         {disp8} jne        _jmp_addr_0x0054c17e                          // 0x0054c176    7506
                         jmp                dword ptr [data_bytes + 0x226204]             // 0x0054c178    ff2504c2be00
_jmp_addr_0x0054c17e:    ret                                                              // 0x0054c17e    c3
                         nop                                                              // 0x0054c17f    90
