.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern _GetMidTextSize__Fv
.extern _GetSmallTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern @FindControl__8SetupBoxFi@12
.extern _jmp_addr_0x004081a0
.extern _jmp_addr_0x00408240
.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern @SetFocus__12SetupControlFb@9
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern ??1SetupControl@@UAE@XZ
.extern @Draw__11SetupButtonFbb@10
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.extern ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z
.extern ?unadjust@SetupThing@@SAMAAH0@Z
.extern ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z
.extern ?DrawLine@SetupThing@@SAXHHHHKHMM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern ?DrawTab@SetupThing@@SAXHHHHHHHPA_WHH@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _wcscat
.extern _wcscpy
.extern _wcslen
.extern _swprintf
.extern ??2@YAPAXI@Z
.extern ___nw__FUl
.extern @Composition_Get__Q24slim5TbIMEFv@4
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64

.globl @CalcCharpos__9SetupEditFi@12
.globl @__ct__9SetupEditFiiiiiPwi@33
.globl @__ct__14SetupBigButtonFiiiPwiii@36
.globl @SetNum__9HLineDataFi@12
.globl @__ct__15SetupHLineGraphFiiiiiPwb@33
.globl ?Reset@SetupHLineGraph@@UAEXXZ
.globl @__ct__14SetupVBarGraphFiiiiiPw@32
.globl ?Reset@SetupVBarGraph@@UAEXXZ
.globl @__ct__14SetupTabButtonFiiiiiPwiii@35
.globl @__ct__12SetupPictureFiiiP12LH3DMaterialiibib@38
.globl @__ct__17SetupColourPickerFiiiiiiP12LH3DMaterial@33
.globl @__ct__13SetupCheckBoxFiiibiPwi@33
.globl ?SetFocusNext@SetupBox@@QAEXXZ
.globl ?SetFocusPrev@SetupBox@@QAEXXZ
.globl _jmp_addr_0x00411150
.globl @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.globl _Click__12SetupPictureFii
.globl _GetBar__14SetupVBarGraphFiR8VBarData
.globl _SetLine__15SetupHLineGraphFiR9HLineData
.globl _Drag__12SetupPictureFii
.globl _HitTest__14SetupBigButtonFii
.globl _AddLine__15SetupHLineGraphFR9HLineData
.globl ??_GSetupPicture@@UAEPAXI@Z
.globl ??_GSetupCheckBox@@UAEPAXI@Z
.globl _Draw__15SetupHSBarGraphFbb
.globl _SetFocus__12SetupPictureFb
.globl _HitTest__13SetupCheckBoxFii
.globl _Drag__17SetupColourPickerFii
.globl _Click__17SetupColourPickerFii
.globl _SetScale__15SetupHSBarGraphFf
.globl _Draw__14SetupBigButtonFbb
.globl _KeyDown__13SetupCheckBoxFii
.globl _KeyDown__17SetupColourPickerFii
.globl _AddBar__14SetupVBarGraphFRC8VBarData
.globl _MouseDown__9SetupEditFiib
.globl _KeyDown__12SetupPictureFii
.globl _MouseDown__17SetupColourPickerFiib
.globl _KeyDown__14SetupTabButtonFii
.globl _SetBar__14SetupVBarGraphFiRC8VBarData
.globl _GetLine__15SetupHLineGraphFiR9HLineData
.globl _MouseUp__15SetupHLineGraphFiib
.globl _Draw__14SetupMP3ButtonFbb
.globl _Draw__12SetupPictureFbb
.globl _Reset__15SetupHLineGraphFv
.globl _KeyDown__14SetupVBarGraphFii
.globl _Draw__15SetupHLineGraphFbb
.globl _MouseDown__12SetupPictureFiib
.globl ??_GSetupTabButton@@UAEPAXI@Z
.globl ??_GSetupBigButton@@UAEPAXI@Z
.globl _Draw__14SetupVBarGraphFbb
.globl _Draw__9SetupEditFbb
.globl _MouseUp__12SetupPictureFiib
.globl ??_GSetupColourPicker@@UAEPAXI@Z
.globl ??_GSetupVBarGraph@@UAEPAXI@Z
.globl _SetScale__15SetupHLineGraphFffb
.globl _Drag__9SetupEditFii
.globl _Reset__14SetupVBarGraphFv
.globl _SetFocus__9SetupEditFb
.globl _Click__13SetupCheckBoxFii
.globl ??_GSetupHLineGraph@@UAEPAXI@Z
.globl _MouseUp__9SetupEditFiib
.globl _KeyDown__15SetupHLineGraphFii
.globl _Draw__14SetupTabButtonFbb
.globl ??_GSetupEdit@@UAEPAXI@Z
.globl _Draw__17SetupColourPickerFbb
.globl _MouseUp__17SetupColourPickerFiib
.globl _KeyDown__14SetupBigButtonFii
.globl _SetScale__14SetupVBarGraphFf
.globl _Draw__13SetupCheckBoxFbb

@CalcCharpos__9SetupEditFi@12:    sub                  esp, 0x08                                     // 0x0040c090    83ec08
                         push                 ebx                                           // 0x0040c093    53
                         push                 ebp                                           // 0x0040c094    55
                         push                 esi                                           // 0x0040c095    56
                         mov.s                esi, ecx                                      // 0x0040c096    8bf1
                         push                 edi                                           // 0x0040c098    57
                         {disp8} lea          ebp, dword ptr [esi + 0x24]                   // 0x0040c099    8d6e24
                         push                 ebp                                           // 0x0040c09c    55
                         call                 _wcslen                                       // 0x0040c09d    e8c0a33b00
                         {disp32} mov         edi, dword ptr [esi + 0x00000258]             // 0x0040c0a2    8bbe58020000
                         push                 ebp                                           // 0x0040c0a8    55
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0040c0a9    8944241c
                         mov                  ebx, 0x00000001                               // 0x0040c0ad    bb01000000
                         call                 _wcslen                                       // 0x0040c0b2    e8aba33b00
                         sub.s                eax, edi                                      // 0x0040c0b7    2bc7
                         add                  esp, 0x08                                     // 0x0040c0b9    83c408
                         cmp.s                eax, ebx                                      // 0x0040c0bc    3bc3
                         {disp8} jl           _jmp_addr_0x0040c133                          // 0x0040c0be    7c73
_jmp_addr_0x0040c0c0:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040c0c0    8b4620
                         test                 eax, eax                                      // 0x0040c0c3    85c0
                         {disp8} je           _jmp_addr_0x0040c0cd                          // 0x0040c0c5    7406
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040c0c7    89442410
                         {disp8} jmp          _jmp_addr_0x0040c0eb                          // 0x0040c0cb    eb1e
_jmp_addr_0x0040c0cd:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040c0cd    8b8634020000
                         test                 eax, eax                                      // 0x0040c0d3    85c0
                         {disp8} je           _jmp_addr_0x0040c0e3                          // 0x0040c0d5    740c
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040c0d7    8b80ac000000
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040c0dd    89442410
                         {disp8} jmp          _jmp_addr_0x0040c0eb                          // 0x0040c0e1    eb08
_jmp_addr_0x0040c0e3:    {disp8} mov          dword ptr [esp + 0x10], 0x0000000a            // 0x0040c0e3    c74424100a000000
_jmp_addr_0x0040c0eb:    {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0040c0eb    8b0d2ccdc400
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040c0f1    db442410
                         push                 ecx                                           // 0x0040c0f5    51
                         {disp8} lea          eax, dword ptr [esi + edi * 0x2 + 0x24]       // 0x0040c0f6    8d447e24
                         fstp                 dword ptr [esp]                               // 0x0040c0fa    d91c24
                         push                 ebx                                           // 0x0040c0fd    53
                         push                 eax                                           // 0x0040c0fe    50
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x0040c0ff    e82c504200
                         call                 _jmp_addr_0x007a1400                          // 0x0040c104    e8f7523900
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040c109    8b4e08
                         {disp8} lea          edx, dword ptr [ecx + eax * 0x1 + 0x04]       // 0x0040c10c    8d540104
                         cmp                  edx, dword ptr [esp + 0x1c]                   // 0x0040c110    3b54241c
                         {disp8} jg           _jmp_addr_0x0040c12e                          // 0x0040c114    7f18
                         {disp32} mov         edi, dword ptr [esi + 0x00000258]             // 0x0040c116    8bbe58020000
                         push                 ebp                                           // 0x0040c11c    55
                         inc                  ebx                                           // 0x0040c11d    43
                         call                 _wcslen                                       // 0x0040c11e    e83fa33b00
                         sub.s                eax, edi                                      // 0x0040c123    2bc7
                         add                  esp, 0x04                                     // 0x0040c125    83c404
                         cmp.s                ebx, eax                                      // 0x0040c128    3bd8
                         {disp8} jle          _jmp_addr_0x0040c0c0                          // 0x0040c12a    7e94
                         {disp8} jmp          _jmp_addr_0x0040c133                          // 0x0040c12c    eb05
_jmp_addr_0x0040c12e:    dec                  ebx                                           // 0x0040c12e    4b
                         {disp8} mov          dword ptr [esp + 0x14], ebx                   // 0x0040c12f    895c2414
_jmp_addr_0x0040c133:    {disp32} mov         eax, dword ptr [esi + 0x00000258]             // 0x0040c133    8b8658020000
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                   // 0x0040c139    8b4c2414
                         pop                  edi                                           // 0x0040c13d    5f
                         pop                  esi                                           // 0x0040c13e    5e
                         pop                  ebp                                           // 0x0040c13f    5d
                         add.s                eax, ecx                                      // 0x0040c140    03c1
                         pop                  ebx                                           // 0x0040c142    5b
                         add                  esp, 0x08                                     // 0x0040c143    83c408
                         ret                  0x0004                                        // 0x0040c146    c20400
                         nop                                                                // 0x0040c149    90
                         nop                                                                // 0x0040c14a    90
                         nop                                                                // 0x0040c14b    90
                         nop                                                                // 0x0040c14c    90
                         nop                                                                // 0x0040c14d    90
                         nop                                                                // 0x0040c14e    90
                         nop                                                                // 0x0040c14f    90
_Drag__9SetupEditFii:
                         {disp8} mov          eax, dword ptr [esp + 0x04]                   // 0x0040c150    8b442404
                         push                 esi                                           // 0x0040c154    56
                         mov.s                esi, ecx                                      // 0x0040c155    8bf1
                         push                 eax                                           // 0x0040c157    50
                         call                 @CalcCharpos__9SetupEditFi@12                 // 0x0040c158    e833ffffff
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax             // 0x0040c15d    89864c020000
                         {disp32} mov         dword ptr [esi + 0x00000250], eax             // 0x0040c163    898650020000
                         pop                  esi                                           // 0x0040c169    5e
                         ret                  0x0008                                        // 0x0040c16a    c20800
                         nop                                                                // 0x0040c16d    90
                         nop                                                                // 0x0040c16e    90
                         nop                                                                // 0x0040c16f    90
_MouseDown__9SetupEditFiib:
                         {disp8} mov          al, byte ptr [esp + 0x0c]                     // 0x0040c170    8a44240c
                         test                 al, al                                        // 0x0040c174    84c0
                         push                 esi                                           // 0x0040c176    56
                         mov.s                esi, ecx                                      // 0x0040c177    8bf1
                         {disp8} je           _jmp_addr_0x0040c197                          // 0x0040c179    741c
                         {disp8} mov          eax, dword ptr [esp + 0x08]                   // 0x0040c17b    8b442408
                         push                 eax                                           // 0x0040c17f    50
                         call                 @CalcCharpos__9SetupEditFi@12                 // 0x0040c180    e80bffffff
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax             // 0x0040c185    89864c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax             // 0x0040c18b    898654020000
                         {disp32} mov         dword ptr [esi + 0x00000250], eax             // 0x0040c191    898650020000
_jmp_addr_0x0040c197:    pop                  esi                                           // 0x0040c197    5e
                         ret                  0x000c                                        // 0x0040c198    c20c00
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040c19b    e8d956ffff
_MouseUp__9SetupEditFiib:
                         {disp8} mov          al, byte ptr [esp + 0x0c]                     // 0x0040c1a0    8a44240c
                         test                 al, al                                        // 0x0040c1a4    84c0
                         push                 esi                                           // 0x0040c1a6    56
                         mov.s                esi, ecx                                      // 0x0040c1a7    8bf1
                         {disp8} je           _jmp_addr_0x0040c21b                          // 0x0040c1a9    7470
                         {disp8} mov          eax, dword ptr [esp + 0x08]                   // 0x0040c1ab    8b442408
                         push                 eax                                           // 0x0040c1af    50
                         call                 @CalcCharpos__9SetupEditFi@12                 // 0x0040c1b0    e8dbfeffff
                         {disp32} mov         ecx, dword ptr [esi + 0x00000254]             // 0x0040c1b5    8b8e54020000
                         cmp.s                eax, ecx                                      // 0x0040c1bb    3bc1
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax             // 0x0040c1bd    89864c020000
                         {disp32} mov         dword ptr [esi + 0x00000250], eax             // 0x0040c1c3    898650020000
                         {disp8} jle          _jmp_addr_0x0040c1d7                          // 0x0040c1c9    7e0c
                         {disp32} mov         dword ptr [esi + 0x00000250], ecx             // 0x0040c1cb    898e50020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax             // 0x0040c1d1    898654020000
_jmp_addr_0x0040c1d7:    {disp32} mov         ecx, dword ptr [esi + 0x00000250]             // 0x0040c1d7    8b8e50020000
                         cmp                  ecx, dword ptr [esi + 0x00000254]             // 0x0040c1dd    3b8e54020000
                         {disp8} jne          _jmp_addr_0x0040c211                          // 0x0040c1e3    752c
                         {disp32} mov         eax, dword ptr [esi + 0x00000464]             // 0x0040c1e5    8b8664040000
                         test                 eax, eax                                      // 0x0040c1eb    85c0
                         {disp8} je           _jmp_addr_0x0040c211                          // 0x0040c1ed    7422
                         {disp8} lea          edx, dword ptr [esi + 0x24]                   // 0x0040c1ef    8d5624
                         push                 edx                                           // 0x0040c1f2    52
                         {disp32} mov         dword ptr [esi + 0x00000250], 0x00000000      // 0x0040c1f3    c7865002000000000000
                         call                 _wcslen                                       // 0x0040c1fd    e860a23b00
                         add                  esp, 0x04                                     // 0x0040c202    83c404
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax             // 0x0040c205    89864c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax             // 0x0040c20b    898654020000
_jmp_addr_0x0040c211:    {disp32} mov         dword ptr [esi + 0x00000464], 0x00000000      // 0x0040c211    c7866404000000000000
_jmp_addr_0x0040c21b:    pop                  esi                                           // 0x0040c21b    5e
                         ret                  0x000c                                        // 0x0040c21c    c20c00
                         nop                                                                // 0x0040c21f    90
@__ct__9SetupEditFiiiiiPwi@33:    {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040c220    8b442418
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x0040c224    8b542410
                         sub                  esp, 0x00000200                               // 0x0040c228    81ec00020000
                         push                 ebx                                           // 0x0040c22e    53
                         push                 ebp                                           // 0x0040c22f    55
                         push                 esi                                           // 0x0040c230    56
                         push                 edi                                           // 0x0040c231    57
                         push                 eax                                           // 0x0040c232    50
                         {disp32} mov         eax, dword ptr [esp + 0x00000220]             // 0x0040c233    8b842420020000
                         mov.s                esi, ecx                                      // 0x0040c23a    8bf1
                         {disp32} mov         ecx, dword ptr [esp + 0x00000228]             // 0x0040c23c    8b8c2428020000
                         push                 ecx                                           // 0x0040c243    51
                         {disp32} mov         ecx, dword ptr [esp + 0x00000220]             // 0x0040c244    8b8c2420020000
                         push                 edx                                           // 0x0040c24b    52
                         {disp32} mov         edx, dword ptr [esp + 0x00000220]             // 0x0040c24c    8b942420020000
                         push                 eax                                           // 0x0040c253    50
                         push                 ecx                                           // 0x0040c254    51
                         push                 edx                                           // 0x0040c255    52
                         mov.s                ecx, esi                                      // 0x0040c256    8bce
                         call                 ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0040c258    e8f3cfffff
                         {disp32} mov         eax, dword ptr [esp + 0x0000022c]             // 0x0040c25d    8b84242c020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040c264    8b8e34020000
                         xor.s                ebx, ebx                                      // 0x0040c26a    33db
                         push                 0x0085b680                                    // 0x0040c26c    6880b68500
                         mov                  dword ptr [esi], 0x008ab3a0                   // 0x0040c271    c706a0b38a00
                         {disp32} mov         dword ptr [esi + 0x00000240], 0x000000fe      // 0x0040c277    c78640020000fe000000
                         {disp32} mov         dword ptr [esi + 0x0000025c], eax             // 0x0040c281    89865c020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], ebx             // 0x0040c287    899e4c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], ebx             // 0x0040c28d    899e54020000
                         {disp32} mov         dword ptr [esi + 0x00000250], ebx             // 0x0040c293    899e50020000
                         {disp32} mov         byte ptr [esi + 0x00000260], bl               // 0x0040c299    889e60020000
                         call                 @FindControl__8SetupBoxFi@12                  // 0x0040c29f    e8bcbeffff
                         mov.s                edi, eax                                      // 0x0040c2a4    8bf8
                         cmp.s                edi, ebx                                      // 0x0040c2a6    3bfb
                         {disp32} mov         dword ptr [esi + 0x0000023c], edi             // 0x0040c2a8    89be3c020000
                         {disp8} je           _jmp_addr_0x0040c2dc                          // 0x0040c2ae    742c
                         {disp32} mov         eax, dword ptr [edi + 0x00000250]             // 0x0040c2b0    8b8750020000
                         cmp.s                eax, ebx                                      // 0x0040c2b6    3bc3
                         {disp8} jle          _jmp_addr_0x0040c2cd                          // 0x0040c2b8    7e13
_jmp_addr_0x0040c2ba:    dec                  eax                                           // 0x0040c2ba    48
                         push                 eax                                           // 0x0040c2bb    50
                         mov.s                ecx, edi                                      // 0x0040c2bc    8bcf
                         call                 @DeleteString__9SetupListFi@12                // 0x0040c2be    e89deaffff
                         {disp32} mov         eax, dword ptr [edi + 0x00000250]             // 0x0040c2c3    8b8750020000
                         cmp.s                eax, ebx                                      // 0x0040c2c9    3bc3
                         {disp8} jg           _jmp_addr_0x0040c2ba                          // 0x0040c2cb    7fed
_jmp_addr_0x0040c2cd:    {disp32} mov         ecx, dword ptr [esi + 0x0000023c]             // 0x0040c2cd    8b8e3c020000
                         mov                  edx, dword ptr [ecx]                          // 0x0040c2d3    8b11
                         push                 0x1                                           // 0x0040c2d5    6a01
                         call                 dword ptr [edx + 8]                           // 0x0040c2d7    ff5208
                         {disp8} jmp          _jmp_addr_0x0040c336                          // 0x0040c2da    eb5a
_jmp_addr_0x0040c2dc:    push                 0x0000067a                                    // 0x0040c2dc    687a060000
                         push                 0x009c8190                                    // 0x0040c2e1    6890819c00
                         push                 0x000002b0                                    // 0x0040c2e6    68b0020000
                         call                 ___nw__FUl                                    // 0x0040c2eb    e8a0f43c00
                         add                  esp, 0x0c                                     // 0x0040c2f0    83c40c
                         cmp.s                eax, ebx                                      // 0x0040c2f3    3bc3
                         {disp8} je           _jmp_addr_0x0040c30b                          // 0x0040c2f5    7414
                         push                 0x32                                          // 0x0040c2f7    6a32
                         push                 0x32                                          // 0x0040c2f9    6a32
                         push                 ebx                                           // 0x0040c2fb    53
                         push                 ebx                                           // 0x0040c2fc    53
                         push                 0x0085b680                                    // 0x0040c2fd    6880b68500
                         mov.s                ecx, eax                                      // 0x0040c302    8bc8
                         call                 @__ct__9SetupListFiiiii@28                    // 0x0040c304    e847e1ffff
                         {disp8} jmp          _jmp_addr_0x0040c30d                          // 0x0040c309    eb02
_jmp_addr_0x0040c30b:    xor.s                eax, eax                                      // 0x0040c30b    33c0
_jmp_addr_0x0040c30d:    {disp32} mov         dword ptr [esi + 0x0000023c], eax             // 0x0040c30d    89863c020000
                         mov                  edx, dword ptr [eax]                          // 0x0040c313    8b10
                         push                 0x1                                           // 0x0040c315    6a01
                         mov.s                ecx, eax                                      // 0x0040c317    8bc8
                         call                 dword ptr [edx + 8]                           // 0x0040c319    ff5208
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c31c    8b863c020000
                         {disp8} mov          dword ptr [eax + 0x04], 0x00000001            // 0x0040c322    c7400401000000
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]             // 0x0040c329    8b8e3c020000
                         {disp32} mov         byte ptr [ecx + 0x00000284], 0x01             // 0x0040c32f    c6818402000001
_jmp_addr_0x0040c336:    {disp32} mov         edx, dword ptr [esi + 0x00000240]             // 0x0040c336    8b9640020000
                         {disp8} mov          dword ptr [esi + 0x04], 0x00000001            // 0x0040c33c    c7460401000000
                         {disp8} mov          dword ptr [esi + 0x1c], ebx                   // 0x0040c343    895e1c
                         {disp8} mov          word ptr [esi + edx * 0x2 + 0x24], bx         // 0x0040c346    66895c5624
                         {disp32} mov         eax, dword ptr [esi + 0x00000240]             // 0x0040c34b    8b8640020000
                         {disp32} mov         word ptr [esi + eax * 0x2 + 0x00000262], bx   // 0x0040c351    66899c4662020000
                         cmp                  byte ptr [esi + 0x00000260], bl               // 0x0040c359    389e60020000
                         {disp8} je           _jmp_addr_0x0040c397                          // 0x0040c35f    7436
                         {disp8} lea          ecx, dword ptr [esi + 0x24]                   // 0x0040c361    8d4e24
                         push                 ecx                                           // 0x0040c364    51
                         call                 _wcslen                                       // 0x0040c365    e8f8a03b00
                         mov.s                edx, eax                                      // 0x0040c36a    8bd0
                         add                  esp, 0x04                                     // 0x0040c36c    83c404
                         xor.s                eax, eax                                      // 0x0040c36f    33c0
                         cmp.s                edx, ebx                                      // 0x0040c371    3bd3
                         {disp8} jle          _jmp_addr_0x0040c38d                          // 0x0040c373    7e18
                         mov.s                ecx, edx                                      // 0x0040c375    8bca
                         shr                  ecx, 1                                        // 0x0040c377    d1e9
                         {disp32} lea         edi, dword ptr [esi + 0x00000262]             // 0x0040c379    8dbe62020000
                         mov                  eax, 0x00230023                               // 0x0040c37f    b823002300
                         rep stosd                                                          // 0x0040c384    f3ab
                         adc.s                ecx, ecx                                      // 0x0040c386    13c9
                         data16 rep stosd                                                   // 0x0040c388    66f3ab
                         mov.s                eax, edx                                      // 0x0040c38b    8bc2
_jmp_addr_0x0040c38d:    {disp32} mov         word ptr [esi + eax * 0x2 + 0x00000262], bx   // 0x0040c38d    66899c4662020000
                         {disp8} jmp          _jmp_addr_0x0040c3aa                          // 0x0040c395    eb13
_jmp_addr_0x0040c397:    {disp8} lea          edx, dword ptr [esi + 0x24]                   // 0x0040c397    8d5624
                         push                 edx                                           // 0x0040c39a    52
                         {disp32} lea         eax, dword ptr [esi + 0x00000262]             // 0x0040c39b    8d8662020000
                         push                 eax                                           // 0x0040c3a1    50
                         call                 _wcscpy                                       // 0x0040c3a2    e80f9c3b00
                         add                  esp, 0x08                                     // 0x0040c3a7    83c408
_jmp_addr_0x0040c3aa:    {disp32} mov         eax, dword ptr [esi + 0x0000024c]             // 0x0040c3aa    8b864c020000
                         {disp32} mov         dword ptr [esi + 0x00000244], eax             // 0x0040c3b0    898644020000
                         {disp32} mov         dword ptr [esi + 0x00000248], eax             // 0x0040c3b6    898648020000
                         cmp                  dword ptr [data_bytes + 0x4c6104], ebx        // 0x0040c3bc    391d04c1e800
                         {disp32} je          _jmp_addr_0x0040c4f1                          // 0x0040c3c2    0f8429010000
                         cmp                  byte ptr [esi + 0x00000228], bl               // 0x0040c3c8    389e28020000
                         {disp32} je          _jmp_addr_0x0040c4f1                          // 0x0040c3ce    0f841d010000
                         cmp                  dword ptr [data_bytes + 0x286d00], ebx        // 0x0040c3d4    391d00cdc400
                         {disp32} je          _jmp_addr_0x0040c4f1                          // 0x0040c3da    0f8411010000
                         cmp.s                eax, ebx                                      // 0x0040c3e0    3bc3
                         {disp32} jl          _jmp_addr_0x0040c4f1                          // 0x0040c3e2    0f8c09010000
                         {disp32} lea         ebp, dword ptr [esi + 0x00000262]             // 0x0040c3e8    8dae62020000
                         push                 ebp                                           // 0x0040c3ee    55
                         call                 _wcslen                                       // 0x0040c3ef    e86ea03b00
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]             // 0x0040c3f4    8b8e4c020000
                         add                  esp, 0x04                                     // 0x0040c3fa    83c404
                         cmp.s                ecx, eax                                      // 0x0040c3fd    3bc8
                         {disp32} jg          _jmp_addr_0x0040c4f1                          // 0x0040c3ff    0f8fec000000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4c6104]        // 0x0040c405    8b0d04c1e800
                         call                 @Composition_Get__Q24slim5TbIMEFv@4           // 0x0040c40b    e840793e00
                         mov.s                edi, eax                                      // 0x0040c410    8bf8
                         cmp.s                edi, ebx                                      // 0x0040c412    3bfb
                         {disp8} je           _jmp_addr_0x0040c464                          // 0x0040c414    744e
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]             // 0x0040c416    8b8e4c020000
                         {disp32} lea         edx, dword ptr [esi + ecx * 0x2 + 0x00000262] // 0x0040c41c    8d944e62020000
                         push                 edx                                           // 0x0040c423    52
                         {disp8} lea          eax, dword ptr [esp + 0x14]                   // 0x0040c424    8d442414
                         push                 eax                                           // 0x0040c428    50
                         call                 _wcscpy                                       // 0x0040c429    e8889b3b00
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]             // 0x0040c42e    8b8e4c020000
                         {disp32} lea         edx, dword ptr [esi + ecx * 0x2 + 0x00000262] // 0x0040c434    8d944e62020000
                         push                 edi                                           // 0x0040c43b    57
                         push                 edx                                           // 0x0040c43c    52
                         call                 _wcscpy                                       // 0x0040c43d    e8749b3b00
                         {disp8} lea          eax, dword ptr [esp + 0x20]                   // 0x0040c442    8d442420
                         push                 eax                                           // 0x0040c446    50
                         push                 ebp                                           // 0x0040c447    55
                         call                 _wcscat                                       // 0x0040c448    e83f9b3b00
                         push                 edi                                           // 0x0040c44d    57
                         call                 _wcslen                                       // 0x0040c44e    e80fa03b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000248]             // 0x0040c453    8b8e48020000
                         add                  esp, 0x1c                                     // 0x0040c459    83c41c
                         add.s                ecx, eax                                      // 0x0040c45c    03c8
                         {disp32} mov         dword ptr [esi + 0x00000248], ecx             // 0x0040c45e    898e48020000
_jmp_addr_0x0040c464:    {disp32} mov         ecx, dword ptr [esi + 0x0000023c]             // 0x0040c464    8b8e3c020000
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040c46a    8b5610
                         {disp8} mov          dword ptr [ecx + 0x10], edx                   // 0x0040c46d    895110
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040c470    8b4610
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]             // 0x0040c473    8b8e3c020000
                         sub                  eax, 0x00000096                               // 0x0040c479    2d96000000
                         {disp8} mov          dword ptr [ecx + 0x08], eax                   // 0x0040c47e    894108
                         call                 _GetSmallTextSize__Fv                         // 0x0040c481    e88ab5ffff
                         {disp32} mov         edx, dword ptr [esi + 0x0000023c]             // 0x0040c486    8b963c020000
                         {disp8} mov          dword ptr [edx + 0x20], eax                   // 0x0040c48c    894220
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c48f    8b863c020000
                         {disp32} mov         dword ptr [eax + 0x00000240], 0x0000000a      // 0x0040c495    c780400200000a000000
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040c49f    8b4614
                         cmp                  eax, 0x00000190                               // 0x0040c4a2    3d90010000
                         {disp8} jge          _jmp_addr_0x0040c4d3                          // 0x0040c4a7    7d2a
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]             // 0x0040c4a9    8b8e3c020000
                         {disp8} mov          dword ptr [ecx + 0x0c], eax                   // 0x0040c4af    89410c
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c4b2    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x0c]                   // 0x0040c4b8    8b500c
                         add                  edx, 0x00000096                               // 0x0040c4bb    81c296000000
                         pop                  edi                                           // 0x0040c4c1    5f
                         {disp8} mov          dword ptr [eax + 0x14], edx                   // 0x0040c4c2    895014
                         mov.s                eax, esi                                      // 0x0040c4c5    8bc6
                         pop                  esi                                           // 0x0040c4c7    5e
                         pop                  ebp                                           // 0x0040c4c8    5d
                         pop                  ebx                                           // 0x0040c4c9    5b
                         add                  esp, 0x00000200                               // 0x0040c4ca    81c400020000
                         ret                  0x001c                                        // 0x0040c4d0    c21c00
_jmp_addr_0x0040c4d3:    {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c4d3    8b863c020000
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040c4d9    8b4e0c
                         {disp8} mov          dword ptr [eax + 0x14], ecx                   // 0x0040c4dc    894814
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c4df    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x14]                   // 0x0040c4e5    8b5014
                         sub                  edx, 0x00000096                               // 0x0040c4e8    81ea96000000
                         {disp8} mov          dword ptr [eax + 0x0c], edx                   // 0x0040c4ee    89500c
_jmp_addr_0x0040c4f1:    pop                  edi                                           // 0x0040c4f1    5f
                         mov.s                eax, esi                                      // 0x0040c4f2    8bc6
                         pop                  esi                                           // 0x0040c4f4    5e
                         pop                  ebp                                           // 0x0040c4f5    5d
                         pop                  ebx                                           // 0x0040c4f6    5b
                         add                  esp, 0x00000200                               // 0x0040c4f7    81c400020000
                         ret                  0x001c                                        // 0x0040c4fd    c21c00
_SetFocus__9SetupEditFb:
                         push                 ebx                                           // 0x0040c500    53
                         {disp8} mov          ebx, dword ptr [esp + 0x08]                   // 0x0040c501    8b5c2408
                         test                 bl, bl                                        // 0x0040c505    84db
                         push                 esi                                           // 0x0040c507    56
                         mov.s                esi, ecx                                      // 0x0040c508    8bf1
                         {disp8} je           _jmp_addr_0x0040c520                          // 0x0040c50a    7414
                         {disp32} mov         al, byte ptr [esi + 0x00000228]               // 0x0040c50c    8a8628020000
                         test                 al, al                                        // 0x0040c512    84c0
                         {disp8} jne          _jmp_addr_0x0040c520                          // 0x0040c514    750a
                         {disp32} mov         dword ptr [esi + 0x00000464], 0x00000001      // 0x0040c516    c7866404000001000000
_jmp_addr_0x0040c520:    push                 ebx                                           // 0x0040c520    53
                         mov.s                ecx, esi                                      // 0x0040c521    8bce
                         call                 @SetFocus__12SetupControlFb@9                 // 0x0040c523    e858ccffff
                         {disp8} lea          eax, dword ptr [esi + 0x24]                   // 0x0040c528    8d4624
                         push                 eax                                           // 0x0040c52b    50
                         call                 _wcslen                                       // 0x0040c52c    e8319f3b00
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax             // 0x0040c531    89864c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax             // 0x0040c537    898654020000
                         {disp32} mov         dword ptr [esi + 0x00000250], eax             // 0x0040c53d    898650020000
                         xor.s                eax, eax                                      // 0x0040c543    33c0
                         add                  esp, 0x04                                     // 0x0040c545    83c404
                         test                 bl, bl                                        // 0x0040c548    84db
                         {disp32} mov         dword ptr [esi + 0x00000258], eax             // 0x0040c54a    898658020000
                         {disp8} je           _jmp_addr_0x0040c558                          // 0x0040c550    7406
                         {disp32} mov         dword ptr [esi + 0x00000250], eax             // 0x0040c552    898650020000
_jmp_addr_0x0040c558:    pop                  esi                                           // 0x0040c558    5e
                         pop                  ebx                                           // 0x0040c559    5b
                         ret                  0x0004                                        // 0x0040c55a    c20400
                         nop                                                                // 0x0040c55d    90
                         nop                                                                // 0x0040c55e    90
                         nop                                                                // 0x0040c55f    90
??_GSetupEdit@@UAEPAXI@Z:
                         push                 esi                                           // 0x0040c560    56
                         mov.s                esi, ecx                                      // 0x0040c561    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x0040c563    e858ceffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x0040c568    f644240801
                         {disp8} je           _jmp_addr_0x0040c578                          // 0x0040c56d    7409
                         push                 esi                                           // 0x0040c56f    56
                         call                 ??3@YAXPAX@Z                                  // 0x0040c570    e823293a00
                         add                  esp, 0x04                                     // 0x0040c575    83c404
_jmp_addr_0x0040c578:    mov.s                eax, esi                                      // 0x0040c578    8bc6
                         pop                  esi                                           // 0x0040c57a    5e
                         ret                  0x0004                                        // 0x0040c57b    c20400
                         nop                                                                // 0x0040c57e    90
                         nop                                                                // 0x0040c57f    90
_Draw__9SetupEditFbb:
                         sub                  esp, 0x00000218                               // 0x0040c580    81ec18020000
                         push                 ebx                                           // 0x0040c586    53
                         push                 ebp                                           // 0x0040c587    55
                         push                 esi                                           // 0x0040c588    56
                         mov.s                esi, ecx                                      // 0x0040c589    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x00000240]             // 0x0040c58b    8b8640020000
                         xor.s                ebp, ebp                                      // 0x0040c591    33ed
                         {disp8} mov          word ptr [esi + eax * 0x2 + 0x24], bp         // 0x0040c593    66896c4624
                         {disp32} mov         ecx, dword ptr [esi + 0x00000240]             // 0x0040c598    8b8e40020000
                         {disp32} mov         word ptr [esi + ecx * 0x2 + 0x00000262], bp   // 0x0040c59e    6689ac4e62020000
                         {disp32} mov         al, byte ptr [esi + 0x00000260]               // 0x0040c5a6    8a8660020000
                         test                 al, al                                        // 0x0040c5ac    84c0
                         push                 edi                                           // 0x0040c5ae    57
                         {disp8} je           _jmp_addr_0x0040c5e7                          // 0x0040c5af    7436
                         {disp8} lea          edx, dword ptr [esi + 0x24]                   // 0x0040c5b1    8d5624
                         push                 edx                                           // 0x0040c5b4    52
                         call                 _wcslen                                       // 0x0040c5b5    e8a89e3b00
                         mov.s                edx, eax                                      // 0x0040c5ba    8bd0
                         add                  esp, 0x04                                     // 0x0040c5bc    83c404
                         xor.s                eax, eax                                      // 0x0040c5bf    33c0
                         cmp.s                edx, ebp                                      // 0x0040c5c1    3bd5
                         {disp8} jle          _jmp_addr_0x0040c5dd                          // 0x0040c5c3    7e18
                         mov.s                ecx, edx                                      // 0x0040c5c5    8bca
                         shr                  ecx, 1                                        // 0x0040c5c7    d1e9
                         {disp32} lea         edi, dword ptr [esi + 0x00000262]             // 0x0040c5c9    8dbe62020000
                         mov                  eax, 0x00230023                               // 0x0040c5cf    b823002300
                         rep stosd                                                          // 0x0040c5d4    f3ab
                         adc.s                ecx, ecx                                      // 0x0040c5d6    13c9
                         data16 rep stosd                                                   // 0x0040c5d8    66f3ab
                         mov.s                eax, edx                                      // 0x0040c5db    8bc2
_jmp_addr_0x0040c5dd:    {disp32} mov         word ptr [esi + eax * 0x2 + 0x00000262], bp   // 0x0040c5dd    6689ac4662020000
                         {disp8} jmp          _jmp_addr_0x0040c5fa                          // 0x0040c5e5    eb13
_jmp_addr_0x0040c5e7:    {disp8} lea          eax, dword ptr [esi + 0x24]                   // 0x0040c5e7    8d4624
                         push                 eax                                           // 0x0040c5ea    50
                         {disp32} lea         ecx, dword ptr [esi + 0x00000262]             // 0x0040c5eb    8d8e62020000
                         push                 ecx                                           // 0x0040c5f1    51
                         call                 _wcscpy                                       // 0x0040c5f2    e8bf993b00
                         add                  esp, 0x08                                     // 0x0040c5f7    83c408
_jmp_addr_0x0040c5fa:    {disp32} mov         eax, dword ptr [esi + 0x0000024c]             // 0x0040c5fa    8b864c020000
                         {disp32} mov         dword ptr [esi + 0x00000244], eax             // 0x0040c600    898644020000
                         {disp32} mov         dword ptr [esi + 0x00000248], eax             // 0x0040c606    898648020000
                         cmp                  dword ptr [data_bytes + 0x4c6104], ebp        // 0x0040c60c    392d04c1e800
                         {disp32} je          _jmp_addr_0x0040c737                          // 0x0040c612    0f841f010000
                         {disp32} mov         cl, byte ptr [esi + 0x00000228]               // 0x0040c618    8a8e28020000
                         test                 cl, cl                                        // 0x0040c61e    84c9
                         {disp32} je          _jmp_addr_0x0040c737                          // 0x0040c620    0f8411010000
                         cmp                  dword ptr [data_bytes + 0x286d00], ebp        // 0x0040c626    392d00cdc400
                         {disp32} je          _jmp_addr_0x0040c737                          // 0x0040c62c    0f8405010000
                         cmp.s                eax, ebp                                      // 0x0040c632    3bc5
                         {disp32} jl          _jmp_addr_0x0040c737                          // 0x0040c634    0f8cfd000000
                         {disp32} lea         ebx, dword ptr [esi + 0x00000262]             // 0x0040c63a    8d9e62020000
                         push                 ebx                                           // 0x0040c640    53
                         call                 _wcslen                                       // 0x0040c641    e81c9e3b00
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]             // 0x0040c646    8b8e4c020000
                         add                  esp, 0x04                                     // 0x0040c64c    83c404
                         cmp.s                ecx, eax                                      // 0x0040c64f    3bc8
                         {disp32} jg          _jmp_addr_0x0040c737                          // 0x0040c651    0f8fe0000000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4c6104]        // 0x0040c657    8b0d04c1e800
                         call                 @Composition_Get__Q24slim5TbIMEFv@4           // 0x0040c65d    e8ee763e00
                         mov.s                edi, eax                                      // 0x0040c662    8bf8
                         cmp.s                edi, ebp                                      // 0x0040c664    3bfd
                         {disp8} je           _jmp_addr_0x0040c6b6                          // 0x0040c666    744e
                         {disp32} mov         edx, dword ptr [esi + 0x0000024c]             // 0x0040c668    8b964c020000
                         {disp32} lea         eax, dword ptr [esi + edx * 0x2 + 0x00000262] // 0x0040c66e    8d845662020000
                         push                 eax                                           // 0x0040c675    50
                         {disp8} lea          ecx, dword ptr [esp + 0x2c]                   // 0x0040c676    8d4c242c
                         push                 ecx                                           // 0x0040c67a    51
                         call                 _wcscpy                                       // 0x0040c67b    e836993b00
                         {disp32} mov         edx, dword ptr [esi + 0x0000024c]             // 0x0040c680    8b964c020000
                         {disp32} lea         eax, dword ptr [esi + edx * 0x2 + 0x00000262] // 0x0040c686    8d845662020000
                         push                 edi                                           // 0x0040c68d    57
                         push                 eax                                           // 0x0040c68e    50
                         call                 _wcscpy                                       // 0x0040c68f    e822993b00
                         {disp8} lea          ecx, dword ptr [esp + 0x38]                   // 0x0040c694    8d4c2438
                         push                 ecx                                           // 0x0040c698    51
                         push                 ebx                                           // 0x0040c699    53
                         call                 _wcscat                                       // 0x0040c69a    e8ed983b00
                         push                 edi                                           // 0x0040c69f    57
                         call                 _wcslen                                       // 0x0040c6a0    e8bd9d3b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000248]             // 0x0040c6a5    8b8e48020000
                         add                  esp, 0x1c                                     // 0x0040c6ab    83c41c
                         add.s                ecx, eax                                      // 0x0040c6ae    03c8
                         {disp32} mov         dword ptr [esi + 0x00000248], ecx             // 0x0040c6b0    898e48020000
_jmp_addr_0x0040c6b6:    {disp32} mov         edx, dword ptr [esi + 0x0000023c]             // 0x0040c6b6    8b963c020000
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040c6bc    8b4610
                         {disp8} mov          dword ptr [edx + 0x10], eax                   // 0x0040c6bf    894210
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040c6c2    8b4e10
                         {disp32} mov         edx, dword ptr [esi + 0x0000023c]             // 0x0040c6c5    8b963c020000
                         sub                  ecx, 0x00000096                               // 0x0040c6cb    81e996000000
                         {disp8} mov          dword ptr [edx + 0x08], ecx                   // 0x0040c6d1    894a08
                         call                 _GetSmallTextSize__Fv                         // 0x0040c6d4    e837b3ffff
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]             // 0x0040c6d9    8b8e3c020000
                         {disp8} mov          dword ptr [ecx + 0x20], eax                   // 0x0040c6df    894120
                         {disp32} mov         edx, dword ptr [esi + 0x0000023c]             // 0x0040c6e2    8b963c020000
                         {disp32} mov         dword ptr [edx + 0x00000240], 0x0000000a      // 0x0040c6e8    c782400200000a000000
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040c6f2    8b4614
                         cmp                  eax, 0x00000190                               // 0x0040c6f5    3d90010000
                         {disp8} jge          _jmp_addr_0x0040c719                          // 0x0040c6fa    7d1d
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]             // 0x0040c6fc    8b8e3c020000
                         {disp8} mov          dword ptr [ecx + 0x0c], eax                   // 0x0040c702    89410c
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c705    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x0c]                   // 0x0040c70b    8b500c
                         add                  edx, 0x00000096                               // 0x0040c70e    81c296000000
                         {disp8} mov          dword ptr [eax + 0x14], edx                   // 0x0040c714    895014
                         {disp8} jmp          _jmp_addr_0x0040c737                          // 0x0040c717    eb1e
_jmp_addr_0x0040c719:    {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c719    8b863c020000
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040c71f    8b4e0c
                         {disp8} mov          dword ptr [eax + 0x14], ecx                   // 0x0040c722    894814
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040c725    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x14]                   // 0x0040c72b    8b5014
                         sub                  edx, 0x00000096                               // 0x0040c72e    81ea96000000
                         {disp8} mov          dword ptr [eax + 0x0c], edx                   // 0x0040c734    89500c
_jmp_addr_0x0040c737:    cmp                  dword ptr [esi + 0x0000025c], ebp             // 0x0040c737    39ae5c020000
                         {disp8} jne          _jmp_addr_0x0040c77f                          // 0x0040c73d    7540
                         {disp32} mov         eax, dword ptr [data_bytes + 0x2078]          // 0x0040c73f    a178809c00
                         cdq                                                                // 0x0040c744    99
                         push                 -0x1                                          // 0x0040c745    6aff
                         sub.s                eax, edx                                      // 0x0040c747    2bc2
                         push                 -0x1                                          // 0x0040c749    6aff
                         sar                  eax, 1                                        // 0x0040c74b    d1f8
                         push                 0x10                                          // 0x0040c74d    6a10
                         {disp32} mov         dword ptr [data_bytes + 0x2078], eax          // 0x0040c74f    a378809c00
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040c754    8b4614
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040c757    8b4e10
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040c75a    8b560c
                         push                 0x1                                           // 0x0040c75d    6a01
                         push                 eax                                           // 0x0040c75f    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040c760    8b4608
                         push                 ecx                                           // 0x0040c763    51
                         push                 edx                                           // 0x0040c764    52
                         push                 eax                                           // 0x0040c765    50
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x0040c766    e8b5740000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x2078]          // 0x0040c76b    8b0d78809c00
                         lea                  edx, dword ptr [ecx + ecx * 0x1]              // 0x0040c771    8d1409
                         add                  esp, 0x20                                     // 0x0040c774    83c420
                         {disp32} mov         dword ptr [data_bytes + 0x2078], edx          // 0x0040c777    891578809c00
                         {disp8} jmp          _jmp_addr_0x0040c79f                          // 0x0040c77d    eb20
_jmp_addr_0x0040c77f:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040c77f    8b4614
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040c782    8b4e10
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040c785    8b560c
                         push                 -0x1                                          // 0x0040c788    6aff
                         push                 -0x1                                          // 0x0040c78a    6aff
                         push                 0x10                                          // 0x0040c78c    6a10
                         push                 0x1                                           // 0x0040c78e    6a01
                         push                 eax                                           // 0x0040c790    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040c791    8b4608
                         push                 ecx                                           // 0x0040c794    51
                         push                 edx                                           // 0x0040c795    52
                         push                 eax                                           // 0x0040c796    50
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x0040c797    e884740000
                         add                  esp, 0x20                                     // 0x0040c79c    83c420
_jmp_addr_0x0040c79f:    {disp32} lea         edi, dword ptr [esi + 0x00000262]             // 0x0040c79f    8dbe62020000
                         push                 edi                                           // 0x0040c7a5    57
                         call                 _wcslen                                       // 0x0040c7a6    e8b79c3b00
                         mov.s                ebx, eax                                      // 0x0040c7ab    8bd8
                         add                  esp, 0x04                                     // 0x0040c7ad    83c404
                         cmp.s                ebx, ebp                                      // 0x0040c7b0    3bdd
                         {disp8} mov          dword ptr [esp + 0x18], ebp                   // 0x0040c7b2    896c2418
                         {disp8} jle          _jmp_addr_0x0040c81d                          // 0x0040c7b6    7e65
                         mov.s                ebp, ebx                                      // 0x0040c7b8    8beb
_jmp_addr_0x0040c7ba:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040c7ba    8b4620
                         test                 eax, eax                                      // 0x0040c7bd    85c0
                         {disp8} je           _jmp_addr_0x0040c7c7                          // 0x0040c7bf    7406
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040c7c1    89442414
                         {disp8} jmp          _jmp_addr_0x0040c7e5                          // 0x0040c7c5    eb1e
_jmp_addr_0x0040c7c7:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040c7c7    8b8634020000
                         test                 eax, eax                                      // 0x0040c7cd    85c0
                         {disp8} je           _jmp_addr_0x0040c7dd                          // 0x0040c7cf    740c
                         {disp32} mov         ecx, dword ptr [eax + 0x000000ac]             // 0x0040c7d1    8b88ac000000
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x0040c7d7    894c2414
                         {disp8} jmp          _jmp_addr_0x0040c7e5                          // 0x0040c7db    eb08
_jmp_addr_0x0040c7dd:    {disp8} mov          dword ptr [esp + 0x14], 0x0000000a            // 0x0040c7dd    c74424140a000000
_jmp_addr_0x0040c7e5:    {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0040c7e5    8b0d2ccdc400
                         {disp8} fild         dword ptr [esp + 0x14]                        // 0x0040c7eb    db442414
                         push                 ecx                                           // 0x0040c7ef    51
                         fstp                 dword ptr [esp]                               // 0x0040c7f0    d91c24
                         push                 ebp                                           // 0x0040c7f3    55
                         push                 edi                                           // 0x0040c7f4    57
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x0040c7f5    e836494200
                         call                 _jmp_addr_0x007a1400                          // 0x0040c7fa    e8014c3900
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040c7ff    8b5610
                         sub                  edx, dword ptr [esi + 0x08]                   // 0x0040c802    2b5608
                         sub                  edx, 0x09                                     // 0x0040c805    83ea09
                         cmp.s                eax, edx                                      // 0x0040c808    3bc2
                         {disp8} jl           _jmp_addr_0x0040c81d                          // 0x0040c80a    7c11
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040c80c    8b442418
                         inc                  eax                                           // 0x0040c810    40
                         add                  edi, 0x02                                     // 0x0040c811    83c702
                         dec                  ebp                                           // 0x0040c814    4d
                         cmp.s                eax, ebx                                      // 0x0040c815    3bc3
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040c817    89442418
                         {disp8} jl           _jmp_addr_0x0040c7ba                          // 0x0040c81b    7c9d
_jmp_addr_0x0040c81d:    {disp32} mov         eax, dword ptr [esi + 0x00000258]             // 0x0040c81d    8b8658020000
                         test                 eax, eax                                      // 0x0040c823    85c0
                         {disp8} jle          _jmp_addr_0x0040c833                          // 0x0040c825    7e0c
                         {disp8} mov          edi, dword ptr [esp + 0x18]                   // 0x0040c827    8b7c2418
                         cmp.s                eax, edi                                      // 0x0040c82b    3bc7
                         {disp8} jl           _jmp_addr_0x0040c839                          // 0x0040c82d    7c0a
                         mov.s                eax, edi                                      // 0x0040c82f    8bc7
                         {disp8} jmp          _jmp_addr_0x0040c839                          // 0x0040c831    eb06
_jmp_addr_0x0040c833:    {disp8} mov          edi, dword ptr [esp + 0x18]                   // 0x0040c833    8b7c2418
                         xor.s                eax, eax                                      // 0x0040c837    33c0
_jmp_addr_0x0040c839:    {disp32} mov         ecx, dword ptr [esi + 0x00000248]             // 0x0040c839    8b8e48020000
                         cmp.s                eax, ecx                                      // 0x0040c83f    3bc1
                         {disp32} mov         dword ptr [esi + 0x00000258], eax             // 0x0040c841    898658020000
                         {disp8} jle          _jmp_addr_0x0040c84f                          // 0x0040c847    7e06
                         {disp32} mov         dword ptr [esi + 0x00000258], ecx             // 0x0040c849    898e58020000
_jmp_addr_0x0040c84f:    mov                  ebp, 0x0000000a                               // 0x0040c84f    bd0a000000
_jmp_addr_0x0040c854:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040c854    8b4620
                         test                 eax, eax                                      // 0x0040c857    85c0
                         {disp8} je           _jmp_addr_0x0040c861                          // 0x0040c859    7406
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040c85b    89442414
                         {disp8} jmp          _jmp_addr_0x0040c87b                          // 0x0040c85f    eb1a
_jmp_addr_0x0040c861:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040c861    8b8634020000
                         test                 eax, eax                                      // 0x0040c867    85c0
                         {disp8} je           _jmp_addr_0x0040c877                          // 0x0040c869    740c
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040c86b    8b80ac000000
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040c871    89442414
                         {disp8} jmp          _jmp_addr_0x0040c87b                          // 0x0040c875    eb04
_jmp_addr_0x0040c877:    {disp8} mov          dword ptr [esp + 0x14], ebp                   // 0x0040c877    896c2414
_jmp_addr_0x0040c87b:    {disp32} mov         ecx, dword ptr [esi + 0x00000258]             // 0x0040c87b    8b8e58020000
                         {disp8} fild         dword ptr [esp + 0x14]                        // 0x0040c881    db442414
                         {disp32} mov         eax, dword ptr [esi + 0x00000248]             // 0x0040c885    8b8648020000
                         sub.s                eax, ecx                                      // 0x0040c88b    2bc1
                         {disp32} lea         edx, dword ptr [esi + ecx * 0x2 + 0x00000262] // 0x0040c88d    8d944e62020000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0040c894    8b0d2ccdc400
                         push                 ecx                                           // 0x0040c89a    51
                         fstp                 dword ptr [esp]                               // 0x0040c89b    d91c24
                         push                 eax                                           // 0x0040c89e    50
                         push                 edx                                           // 0x0040c89f    52
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x0040c8a0    e88b484200
                         call                 _jmp_addr_0x007a1400                          // 0x0040c8a5    e8564b3900
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040c8aa    8b4e10
                         sub                  ecx, dword ptr [esi + 0x08]                   // 0x0040c8ad    2b4e08
                         sub                  ecx, 0x09                                     // 0x0040c8b0    83e909
                         cmp.s                eax, ecx                                      // 0x0040c8b3    3bc1
                         {disp8} jl           _jmp_addr_0x0040c8ca                          // 0x0040c8b5    7c13
                         {disp32} mov         eax, dword ptr [esi + 0x00000258]             // 0x0040c8b7    8b8658020000
                         cmp.s                eax, edi                                      // 0x0040c8bd    3bc7
                         {disp8} jge          _jmp_addr_0x0040c8ca                          // 0x0040c8bf    7d09
                         inc                  eax                                           // 0x0040c8c1    40
                         {disp32} mov         dword ptr [esi + 0x00000258], eax             // 0x0040c8c2    898658020000
                         {disp8} jmp          _jmp_addr_0x0040c854                          // 0x0040c8c8    eb8a
_jmp_addr_0x0040c8ca:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040c8ca    8b4620
                         test                 eax, eax                                      // 0x0040c8cd    85c0
                         {disp8} je           _jmp_addr_0x0040c8d5                          // 0x0040c8cf    7404
                         mov.s                ebx, eax                                      // 0x0040c8d1    8bd8
                         {disp8} jmp          _jmp_addr_0x0040c8e9                          // 0x0040c8d3    eb14
_jmp_addr_0x0040c8d5:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040c8d5    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040c8db    85c9
                         {disp8} je           _jmp_addr_0x0040c8e7                          // 0x0040c8dd    7408
                         {disp32} mov         ebx, dword ptr [ecx + 0x000000ac]             // 0x0040c8df    8b99ac000000
                         {disp8} jmp          _jmp_addr_0x0040c8e9                          // 0x0040c8e5    eb02
_jmp_addr_0x0040c8e7:    mov.s                ebx, ebp                                      // 0x0040c8e7    8bdd
_jmp_addr_0x0040c8e9:    test                 eax, eax                                      // 0x0040c8e9    85c0
                         {disp8} je           _jmp_addr_0x0040c8f6                          // 0x0040c8eb    7409
                         cdq                                                                // 0x0040c8ed    99
                         sub.s                eax, edx                                      // 0x0040c8ee    2bc2
                         mov.s                ecx, eax                                      // 0x0040c8f0    8bc8
                         sar                  ecx, 1                                        // 0x0040c8f2    d1f9
                         {disp8} jmp          _jmp_addr_0x0040c914                          // 0x0040c8f4    eb1e
_jmp_addr_0x0040c8f6:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040c8f6    8b8634020000
                         test                 eax, eax                                      // 0x0040c8fc    85c0
                         {disp8} je           _jmp_addr_0x0040c90f                          // 0x0040c8fe    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040c900    8b80ac000000
                         cdq                                                                // 0x0040c906    99
                         sub.s                eax, edx                                      // 0x0040c907    2bc2
                         mov.s                ecx, eax                                      // 0x0040c909    8bc8
                         sar                  ecx, 1                                        // 0x0040c90b    d1f9
                         {disp8} jmp          _jmp_addr_0x0040c914                          // 0x0040c90d    eb05
_jmp_addr_0x0040c90f:    mov                  ecx, 0x00000005                               // 0x0040c90f    b905000000
_jmp_addr_0x0040c914:    {disp32} mov         edx, dword ptr [esi + 0x00000258]             // 0x0040c914    8b9658020000
                         {disp8} mov          edi, dword ptr [esi + 0x08]                   // 0x0040c91a    8b7e08
                         push                 0x0                                           // 0x0040c91d    6a00
                         {disp32} lea         eax, dword ptr [esi + edx * 0x2 + 0x00000262] // 0x0040c91f    8d845662020000
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040c926    8b5610
                         push                 0x00c4cce8                                    // 0x0040c929    68e8ccc400
                         push                 ebx                                           // 0x0040c92e    53
                         push                 eax                                           // 0x0040c92f    50
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040c930    8b460c
                         sub.s                edx, edi                                      // 0x0040c933    2bd7
                         sub                  edx, 0x08                                     // 0x0040c935    83ea08
                         push                 0x0                                           // 0x0040c938    6a00
                         push                 edx                                           // 0x0040c93a    52
                         add                  eax, dword ptr [esi + 0x14]                   // 0x0040c93b    034614
                         cdq                                                                // 0x0040c93e    99
                         sub.s                eax, edx                                      // 0x0040c93f    2bc2
                         sar                  eax, 1                                        // 0x0040c941    d1f8
                         sub.s                eax, ecx                                      // 0x0040c943    2bc1
                         push                 eax                                           // 0x0040c945    50
                         add                  edi, 0x04                                     // 0x0040c946    83c704
                         push                 edi                                           // 0x0040c949    57
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040c94a    e861500000
                         {disp32} mov         al, byte ptr [esp + 0x00000250]               // 0x0040c94f    8a842450020000
                         fstp                 st(0)                                         // 0x0040c956    ddd8
                         add                  esp, 0x20                                     // 0x0040c958    83c420
                         test                 al, al                                        // 0x0040c95b    84c0
                         {disp32} je          _jmp_addr_0x0040cd84                          // 0x0040c95d    0f8421040000
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]             // 0x0040c963    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000258]             // 0x0040c969    8b8658020000
                         cmp.s                edx, eax                                      // 0x0040c96f    3bd0
                         {disp32} mov         edi, dword ptr [esi + 0x00000254]             // 0x0040c971    8bbe54020000
                         {disp32} mov         ebx, dword ptr [esi + 0x00000244]             // 0x0040c977    8b9e44020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000248]             // 0x0040c97d    8b8e48020000
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040c983    89542418
                         {disp8} mov          dword ptr [esp + 0x1c], edi                   // 0x0040c987    897c241c
                         {disp8} mov          dword ptr [esp + 0x20], ebx                   // 0x0040c98b    895c2420
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x0040c98f    894c2414
                         {disp8} jge          _jmp_addr_0x0040c99b                          // 0x0040c993    7d06
                         mov.s                edx, eax                                      // 0x0040c995    8bd0
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040c997    89542418
_jmp_addr_0x0040c99b:    cmp.s                edi, eax                                      // 0x0040c99b    3bf8
                         {disp8} jge          _jmp_addr_0x0040c9a5                          // 0x0040c99d    7d06
                         mov.s                edi, eax                                      // 0x0040c99f    8bf8
                         {disp8} mov          dword ptr [esp + 0x1c], edi                   // 0x0040c9a1    897c241c
_jmp_addr_0x0040c9a5:    cmp.s                ebx, eax                                      // 0x0040c9a5    3bd8
                         {disp8} jge          _jmp_addr_0x0040c9af                          // 0x0040c9a7    7d06
                         mov.s                ebx, eax                                      // 0x0040c9a9    8bd8
                         {disp8} mov          dword ptr [esp + 0x20], ebx                   // 0x0040c9ab    895c2420
_jmp_addr_0x0040c9af:    cmp.s                ecx, eax                                      // 0x0040c9af    3bc8
                         {disp8} jge          _jmp_addr_0x0040c9b7                          // 0x0040c9b1    7d04
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040c9b3    89442414
_jmp_addr_0x0040c9b7:    {disp8} mov          ecx, dword ptr [esi + 0x20]                   // 0x0040c9b7    8b4e20
                         test                 ecx, ecx                                      // 0x0040c9ba    85c9
                         {disp8} je           _jmp_addr_0x0040c9c4                          // 0x0040c9bc    7406
                         {disp8} mov          dword ptr [esp + 0x10], ecx                   // 0x0040c9be    894c2410
                         {disp8} jmp          _jmp_addr_0x0040c9de                          // 0x0040c9c2    eb1a
_jmp_addr_0x0040c9c4:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040c9c4    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040c9ca    85c9
                         {disp8} je           _jmp_addr_0x0040c9da                          // 0x0040c9cc    740c
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000ac]             // 0x0040c9ce    8b89ac000000
                         {disp8} mov          dword ptr [esp + 0x10], ecx                   // 0x0040c9d4    894c2410
                         {disp8} jmp          _jmp_addr_0x0040c9de                          // 0x0040c9d8    eb04
_jmp_addr_0x0040c9da:    {disp8} mov          dword ptr [esp + 0x10], ebp                   // 0x0040c9da    896c2410
_jmp_addr_0x0040c9de:    {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0040c9de    8b0d2ccdc400
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040c9e4    db442410
                         push                 ecx                                           // 0x0040c9e8    51
                         sub.s                edx, eax                                      // 0x0040c9e9    2bd0
                         fstp                 dword ptr [esp]                               // 0x0040c9eb    d91c24
                         {disp32} lea         eax, dword ptr [esi + eax * 0x2 + 0x00000262] // 0x0040c9ee    8d844662020000
                         push                 edx                                           // 0x0040c9f5    52
                         push                 eax                                           // 0x0040c9f6    50
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x0040c9f7    e834474200
                         call                 _jmp_addr_0x007a1400                          // 0x0040c9fc    e8ff493900
                         mov.s                ebp, eax                                      // 0x0040ca01    8be8
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040ca03    8b4620
                         test                 eax, eax                                      // 0x0040ca06    85c0
                         {disp8} je           _jmp_addr_0x0040ca10                          // 0x0040ca08    7406
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040ca0a    89442410
                         {disp8} jmp          _jmp_addr_0x0040ca2e                          // 0x0040ca0e    eb1e
_jmp_addr_0x0040ca10:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040ca10    8b8634020000
                         test                 eax, eax                                      // 0x0040ca16    85c0
                         {disp8} je           _jmp_addr_0x0040ca26                          // 0x0040ca18    740c
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]             // 0x0040ca1a    8b90ac000000
                         {disp8} mov          dword ptr [esp + 0x10], edx                   // 0x0040ca20    89542410
                         {disp8} jmp          _jmp_addr_0x0040ca2e                          // 0x0040ca24    eb08
_jmp_addr_0x0040ca26:    {disp8} mov          dword ptr [esp + 0x10], 0x0000000a            // 0x0040ca26    c74424100a000000
_jmp_addr_0x0040ca2e:    {disp32} mov         ecx, dword ptr [esi + 0x00000258]             // 0x0040ca2e    8b8e58020000
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040ca34    db442410
                         mov.s                eax, edi                                      // 0x0040ca38    8bc7
                         sub.s                eax, ecx                                      // 0x0040ca3a    2bc1
                         {disp32} lea         edx, dword ptr [esi + ecx * 0x2 + 0x00000262] // 0x0040ca3c    8d944e62020000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0040ca43    8b0d2ccdc400
                         push                 ecx                                           // 0x0040ca49    51
                         fstp                 dword ptr [esp]                               // 0x0040ca4a    d91c24
                         push                 eax                                           // 0x0040ca4d    50
                         push                 edx                                           // 0x0040ca4e    52
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x0040ca4f    e8dc464200
                         call                 _jmp_addr_0x007a1400                          // 0x0040ca54    e8a7493900
                         mov.s                edi, eax                                      // 0x0040ca59    8bf8
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040ca5b    8b4620
                         test                 eax, eax                                      // 0x0040ca5e    85c0
                         {disp8} je           _jmp_addr_0x0040ca68                          // 0x0040ca60    7406
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040ca62    89442410
                         {disp8} jmp          _jmp_addr_0x0040ca86                          // 0x0040ca66    eb1e
_jmp_addr_0x0040ca68:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040ca68    8b8634020000
                         test                 eax, eax                                      // 0x0040ca6e    85c0
                         {disp8} je           _jmp_addr_0x0040ca7e                          // 0x0040ca70    740c
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040ca72    8b80ac000000
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040ca78    89442410
                         {disp8} jmp          _jmp_addr_0x0040ca86                          // 0x0040ca7c    eb08
_jmp_addr_0x0040ca7e:    {disp8} mov          dword ptr [esp + 0x10], 0x0000000a            // 0x0040ca7e    c74424100a000000
_jmp_addr_0x0040ca86:    {disp32} mov         ecx, dword ptr [esi + 0x00000258]             // 0x0040ca86    8b8e58020000
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040ca8c    db442410
                         mov.s                eax, ebx                                      // 0x0040ca90    8bc3
                         sub.s                eax, ecx                                      // 0x0040ca92    2bc1
                         {disp32} lea         edx, dword ptr [esi + ecx * 0x2 + 0x00000262] // 0x0040ca94    8d944e62020000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0040ca9b    8b0d2ccdc400
                         push                 ecx                                           // 0x0040caa1    51
                         fstp                 dword ptr [esp]                               // 0x0040caa2    d91c24
                         push                 eax                                           // 0x0040caa5    50
                         push                 edx                                           // 0x0040caa6    52
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x0040caa7    e884464200
                         call                 _jmp_addr_0x007a1400                          // 0x0040caac    e84f493900
                         {disp8} mov          dword ptr [esp + 0x24], eax                   // 0x0040cab1    89442424
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040cab5    8b4620
                         test                 eax, eax                                      // 0x0040cab8    85c0
                         {disp8} je           _jmp_addr_0x0040cac2                          // 0x0040caba    7406
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040cabc    89442410
                         {disp8} jmp          _jmp_addr_0x0040cae0                          // 0x0040cac0    eb1e
_jmp_addr_0x0040cac2:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040cac2    8b8634020000
                         test                 eax, eax                                      // 0x0040cac8    85c0
                         {disp8} je           _jmp_addr_0x0040cad8                          // 0x0040caca    740c
                         {disp32} mov         ecx, dword ptr [eax + 0x000000ac]             // 0x0040cacc    8b88ac000000
                         {disp8} mov          dword ptr [esp + 0x10], ecx                   // 0x0040cad2    894c2410
                         {disp8} jmp          _jmp_addr_0x0040cae0                          // 0x0040cad6    eb08
_jmp_addr_0x0040cad8:    {disp8} mov          dword ptr [esp + 0x10], 0x0000000a            // 0x0040cad8    c74424100a000000
_jmp_addr_0x0040cae0:    {disp32} mov         ecx, dword ptr [esi + 0x00000258]             // 0x0040cae0    8b8e58020000
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040cae6    db442410
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x0040caea    8b442414
                         sub.s                eax, ecx                                      // 0x0040caee    2bc1
                         {disp32} lea         edx, dword ptr [esi + ecx * 0x2 + 0x00000262] // 0x0040caf0    8d944e62020000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0040caf7    8b0d2ccdc400
                         push                 ecx                                           // 0x0040cafd    51
                         fstp                 dword ptr [esp]                               // 0x0040cafe    d91c24
                         push                 eax                                           // 0x0040cb01    50
                         push                 edx                                           // 0x0040cb02    52
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x0040cb03    e828464200
                         call                 _jmp_addr_0x007a1400                          // 0x0040cb08    e8f3483900
                         cmp.s                ebp, edi                                      // 0x0040cb0d    3bef
                         mov.s                ebx, eax                                      // 0x0040cb0f    8bd8
                         {disp8} jle          _jmp_addr_0x0040cb19                          // 0x0040cb11    7e06
                         mov.s                eax, ebp                                      // 0x0040cb13    8bc5
                         mov.s                ebp, edi                                      // 0x0040cb15    8bef
                         mov.s                edi, eax                                      // 0x0040cb17    8bf8
_jmp_addr_0x0040cb19:    {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040cb19    8b4608
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040cb1c    8b5610
                         sub.s                edx, eax                                      // 0x0040cb1f    2bd0
                         {disp8} lea          eax, dword ptr [edx + -0x08]                  // 0x0040cb21    8d42f8
                         inc                  edi                                           // 0x0040cb24    47
                         cmp.s                ebp, eax                                      // 0x0040cb25    3be8
                         {disp8} jle          _jmp_addr_0x0040cb2b                          // 0x0040cb27    7e02
                         mov.s                ebp, eax                                      // 0x0040cb29    8be8
_jmp_addr_0x0040cb2b:    cmp.s                edi, eax                                      // 0x0040cb2b    3bf8
                         {disp8} jle          _jmp_addr_0x0040cb31                          // 0x0040cb2d    7e02
                         mov.s                edi, eax                                      // 0x0040cb2f    8bf8
_jmp_addr_0x0040cb31:    {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040cb31    8b442418
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x0040cb35    8b4c241c
                         cmp.s                eax, ecx                                      // 0x0040cb39    3bc1
                         {disp8} jle          _jmp_addr_0x0040cb45                          // 0x0040cb3b    7e08
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040cb3d    894c2418
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0040cb41    8944241c
_jmp_addr_0x0040cb45:    cmp.s                edi, ebp                                      // 0x0040cb45    3bfd
                         {disp32} jle         _jmp_addr_0x0040cc99                          // 0x0040cb47    0f8e4c010000
                         {disp32} mov         eax, dword ptr [esi + 0x0000025c]             // 0x0040cb4d    8b865c020000
                         test                 eax, eax                                      // 0x0040cb53    85c0
                         {disp32} je          _jmp_addr_0x0040cc99                          // 0x0040cb55    0f843e010000
                         call                 dword ptr [__imp__GetTickCount@4]             // 0x0040cb5b    ff15c4918a00
                         mov.s                ecx, eax                                      // 0x0040cb61    8bc8
                         mov                  eax, 0x51eb851f                               // 0x0040cb63    b81f85eb51
                         mul                  ecx                                           // 0x0040cb68    f7e1
                         shr                  edx, 6                                        // 0x0040cb6a    c1ea06
                         test                 dl, 0x01                                      // 0x0040cb6d    f6c201
                         {disp8} je           _jmp_addr_0x0040cbbd                          // 0x0040cb70    744b
                         test                 ebx, ebx                                      // 0x0040cb72    85db
                         {disp8} jl           _jmp_addr_0x0040cbbd                          // 0x0040cb74    7c47
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040cb76    8b4608
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040cb79    8b5610
                         sub.s                edx, eax                                      // 0x0040cb7c    2bd0
                         sub                  edx, 0x08                                     // 0x0040cb7e    83ea08
                         cmp.s                ebx, edx                                      // 0x0040cb81    3bda
                         {disp8} jge          _jmp_addr_0x0040cbbd                          // 0x0040cb83    7d38
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x0040cb85    8b4e14
                         push                 0x1                                           // 0x0040cb88    6a01
                         push                 0x1                                           // 0x0040cb8a    6a01
                         push                 0x80ffffff                                    // 0x0040cb8c    68ffffff80
                         push                 0x80ffffff                                    // 0x0040cb91    68ffffff80
                         push                 0x80ffffff                                    // 0x0040cb96    68ffffff80
                         push                 0x80ffffff                                    // 0x0040cb9b    68ffffff80
                         sub                  ecx, 0x02                                     // 0x0040cba0    83e902
                         push                 ecx                                           // 0x0040cba3    51
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040cba4    8b4e0c
                         {disp8} lea          edx, dword ptr [eax + ebx * 0x1 + 0x07]       // 0x0040cba7    8d541807
                         push                 edx                                           // 0x0040cbab    52
                         add                  ecx, 0x2                                      // 0x0040cbac    83c102
                         push                 ecx                                           // 0x0040cbaf    51
                         {disp8} lea          edx, dword ptr [eax + ebx * 0x1 + 0x05]       // 0x0040cbb0    8d541805
                         push                 edx                                           // 0x0040cbb4    52
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040cbb5    e806670000
                         add                  esp, 0x28                                     // 0x0040cbba    83c428
_jmp_addr_0x0040cbbd:    {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x0040cbbd    8b44241c
                         cmp                  dword ptr [esp + 0x18], eax                   // 0x0040cbc1    39442418
                         {disp32} je          _jmp_addr_0x0040cc99                          // 0x0040cbc5    0f84ce000000
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x0040cbcb    8b4e14
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040cbce    8b4608
                         push                 0x1                                           // 0x0040cbd1    6a01
                         push                 0x1                                           // 0x0040cbd3    6a01
                         push                 0x80ffffff                                    // 0x0040cbd5    68ffffff80
                         push                 0x80ffffff                                    // 0x0040cbda    68ffffff80
                         push                 0x80ffffff                                    // 0x0040cbdf    68ffffff80
                         push                 0x80ffffff                                    // 0x0040cbe4    68ffffff80
                         sub                  ecx, 0x02                                     // 0x0040cbe9    83e902
                         push                 ecx                                           // 0x0040cbec    51
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040cbed    8b4e0c
                         {disp8} lea          edx, dword ptr [eax + edi * 0x1 + 0x05]       // 0x0040cbf0    8d543805
                         push                 edx                                           // 0x0040cbf4    52
                         add                  ecx, 0x2                                      // 0x0040cbf5    83c102
                         push                 ecx                                           // 0x0040cbf8    51
                         {disp8} lea          edx, dword ptr [eax + ebp * 0x1 + 0x04]       // 0x0040cbf9    8d542804
                         push                 edx                                           // 0x0040cbfd    52
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040cbfe    e8bd660000
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040cc03    8b4620
                         add                  esp, 0x28                                     // 0x0040cc06    83c428
                         test                 eax, eax                                      // 0x0040cc09    85c0
                         {disp8} je           _jmp_addr_0x0040cc11                          // 0x0040cc0b    7404
                         mov.s                ebx, eax                                      // 0x0040cc0d    8bd8
                         {disp8} jmp          _jmp_addr_0x0040cc28                          // 0x0040cc0f    eb17
_jmp_addr_0x0040cc11:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040cc11    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040cc17    85c9
                         {disp8} je           _jmp_addr_0x0040cc23                          // 0x0040cc19    7408
                         {disp32} mov         ebx, dword ptr [ecx + 0x000000ac]             // 0x0040cc1b    8b99ac000000
                         {disp8} jmp          _jmp_addr_0x0040cc28                          // 0x0040cc21    eb05
_jmp_addr_0x0040cc23:    mov                  ebx, 0x0000000a                               // 0x0040cc23    bb0a000000
_jmp_addr_0x0040cc28:    test                 eax, eax                                      // 0x0040cc28    85c0
                         {disp8} je           _jmp_addr_0x0040cc35                          // 0x0040cc2a    7409
                         cdq                                                                // 0x0040cc2c    99
                         sub.s                eax, edx                                      // 0x0040cc2d    2bc2
                         mov.s                edi, eax                                      // 0x0040cc2f    8bf8
                         sar                  edi, 1                                        // 0x0040cc31    d1ff
                         {disp8} jmp          _jmp_addr_0x0040cc53                          // 0x0040cc33    eb1e
_jmp_addr_0x0040cc35:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040cc35    8b8634020000
                         test                 eax, eax                                      // 0x0040cc3b    85c0
                         {disp8} je           _jmp_addr_0x0040cc4e                          // 0x0040cc3d    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040cc3f    8b80ac000000
                         cdq                                                                // 0x0040cc45    99
                         sub.s                eax, edx                                      // 0x0040cc46    2bc2
                         mov.s                edi, eax                                      // 0x0040cc48    8bf8
                         sar                  edi, 1                                        // 0x0040cc4a    d1ff
                         {disp8} jmp          _jmp_addr_0x0040cc53                          // 0x0040cc4c    eb05
_jmp_addr_0x0040cc4e:    mov                  edi, 0x00000005                               // 0x0040cc4e    bf05000000
_jmp_addr_0x0040cc53:    {disp8} mov          edx, dword ptr [esp + 0x18]                   // 0x0040cc53    8b542418
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x0040cc57    8b44241c
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040cc5b    8b4e08
                         sub.s                eax, edx                                      // 0x0040cc5e    2bc2
                         push                 eax                                           // 0x0040cc60    50
                         {disp32} lea         eax, dword ptr [esi + edx * 0x2 + 0x00000262] // 0x0040cc61    8d845662020000
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040cc68    8b5610
                         push                 0x00c4cce0                                    // 0x0040cc6b    68e0ccc400
                         push                 ebx                                           // 0x0040cc70    53
                         push                 eax                                           // 0x0040cc71    50
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040cc72    8b460c
                         sub.s                edx, ecx                                      // 0x0040cc75    2bd1
                         sub.s                edx, ebp                                      // 0x0040cc77    2bd5
                         sub                  edx, 0x08                                     // 0x0040cc79    83ea08
                         push                 0x0                                           // 0x0040cc7c    6a00
                         push                 edx                                           // 0x0040cc7e    52
                         add                  eax, dword ptr [esi + 0x14]                   // 0x0040cc7f    034614
                         cdq                                                                // 0x0040cc82    99
                         sub.s                eax, edx                                      // 0x0040cc83    2bc2
                         sar                  eax, 1                                        // 0x0040cc85    d1f8
                         sub.s                eax, edi                                      // 0x0040cc87    2bc7
                         push                 eax                                           // 0x0040cc89    50
                         {disp8} lea          eax, dword ptr [ecx + ebp * 0x1 + 0x04]       // 0x0040cc8a    8d442904
                         push                 eax                                           // 0x0040cc8e    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040cc8f    e81c4d0000
                         fstp                 st(0)                                         // 0x0040cc94    ddd8
                         add                  esp, 0x20                                     // 0x0040cc96    83c420
_jmp_addr_0x0040cc99:    {disp8} mov          ecx, dword ptr [esp + 0x20]                   // 0x0040cc99    8b4c2420
                         cmp                  dword ptr [esp + 0x14], ecx                   // 0x0040cc9d    394c2414
                         {disp32} jle         _jmp_addr_0x0040cd84                          // 0x0040cca1    0f8edd000000
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040cca7    8b4620
                         test                 eax, eax                                      // 0x0040ccaa    85c0
                         {disp8} je           _jmp_addr_0x0040ccb2                          // 0x0040ccac    7404
                         mov.s                ebx, eax                                      // 0x0040ccae    8bd8
                         {disp8} jmp          _jmp_addr_0x0040ccc9                          // 0x0040ccb0    eb17
_jmp_addr_0x0040ccb2:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040ccb2    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040ccb8    85c9
                         {disp8} je           _jmp_addr_0x0040ccc4                          // 0x0040ccba    7408
                         {disp32} mov         ebx, dword ptr [ecx + 0x000000ac]             // 0x0040ccbc    8b99ac000000
                         {disp8} jmp          _jmp_addr_0x0040ccc9                          // 0x0040ccc2    eb05
_jmp_addr_0x0040ccc4:    mov                  ebx, 0x0000000a                               // 0x0040ccc4    bb0a000000
_jmp_addr_0x0040ccc9:    test                 eax, eax                                      // 0x0040ccc9    85c0
                         {disp8} je           _jmp_addr_0x0040ccd6                          // 0x0040cccb    7409
                         cdq                                                                // 0x0040cccd    99
                         sub.s                eax, edx                                      // 0x0040ccce    2bc2
                         mov.s                edi, eax                                      // 0x0040ccd0    8bf8
                         sar                  edi, 1                                        // 0x0040ccd2    d1ff
                         {disp8} jmp          _jmp_addr_0x0040ccf4                          // 0x0040ccd4    eb1e
_jmp_addr_0x0040ccd6:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040ccd6    8b8634020000
                         test                 eax, eax                                      // 0x0040ccdc    85c0
                         {disp8} je           _jmp_addr_0x0040ccef                          // 0x0040ccde    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040cce0    8b80ac000000
                         cdq                                                                // 0x0040cce6    99
                         sub.s                eax, edx                                      // 0x0040cce7    2bc2
                         mov.s                edi, eax                                      // 0x0040cce9    8bf8
                         sar                  edi, 1                                        // 0x0040cceb    d1ff
                         {disp8} jmp          _jmp_addr_0x0040ccf4                          // 0x0040cced    eb05
_jmp_addr_0x0040ccef:    mov                  edi, 0x00000005                               // 0x0040ccef    bf05000000
_jmp_addr_0x0040ccf4:    {disp8} mov          edx, dword ptr [esp + 0x20]                   // 0x0040ccf4    8b542420
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x0040ccf8    8b442414
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040ccfc    8b4e08
                         sub.s                eax, edx                                      // 0x0040ccff    2bc2
                         push                 eax                                           // 0x0040cd01    50
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040cd02    8b4610
                         sub.s                eax, ecx                                      // 0x0040cd05    2bc1
                         push                 0x00c4cce4                                    // 0x0040cd07    68e4ccc400
                         push                 ebx                                           // 0x0040cd0c    53
                         {disp8} mov          ebx, dword ptr [esp + 0x30]                   // 0x0040cd0d    8b5c2430
                         sub.s                eax, ebx                                      // 0x0040cd11    2bc3
                         {disp32} lea         edx, dword ptr [esi + edx * 0x2 + 0x00000262] // 0x0040cd13    8d945662020000
                         push                 edx                                           // 0x0040cd1a    52
                         {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040cd1b    8b5614
                         sub                  eax, 0x08                                     // 0x0040cd1e    83e808
                         push                 0x0                                           // 0x0040cd21    6a00
                         push                 eax                                           // 0x0040cd23    50
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040cd24    8b460c
                         add.s                eax, edx                                      // 0x0040cd27    03c2
                         cdq                                                                // 0x0040cd29    99
                         sub.s                eax, edx                                      // 0x0040cd2a    2bc2
                         sar                  eax, 1                                        // 0x0040cd2c    d1f8
                         sub.s                eax, edi                                      // 0x0040cd2e    2bc7
                         push                 eax                                           // 0x0040cd30    50
                         {disp8} lea          ecx, dword ptr [ecx + ebx * 0x1 + 0x04]       // 0x0040cd31    8d4c1904
                         push                 ecx                                           // 0x0040cd35    51
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040cd36    e8754c0000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040cd3b    8b8e34020000
                         fstp                 st(0)                                         // 0x0040cd41    ddd8
                         add                  esp, 0x20                                     // 0x0040cd43    83c420
                         test                 ecx, ecx                                      // 0x0040cd46    85c9
                         {disp8} je           _jmp_addr_0x0040cd56                          // 0x0040cd48    740c
                         push                 0x0085b680                                    // 0x0040cd4a    6880b68500
                         call                 @FindControl__8SetupBoxFi@12                  // 0x0040cd4f    e80cb4ffff
                         {disp8} jmp          _jmp_addr_0x0040cd58                          // 0x0040cd54    eb02
_jmp_addr_0x0040cd56:    xor.s                eax, eax                                      // 0x0040cd56    33c0
_jmp_addr_0x0040cd58:    test                 eax, eax                                      // 0x0040cd58    85c0
                         {disp32} mov         dword ptr [esi + 0x0000023c], eax             // 0x0040cd5a    89863c020000
                         {disp8} je           _jmp_addr_0x0040cd84                          // 0x0040cd60    7422
                         {disp8} mov          edx, dword ptr [eax + 0x08]                   // 0x0040cd62    8b5008
                         sub                  dword ptr [eax + 0x10], edx                   // 0x0040cd65    295010
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040cd68    8b4608
                         {disp32} mov         edx, dword ptr [esi + 0x0000023c]             // 0x0040cd6b    8b963c020000
                         {disp8} lea          ecx, dword ptr [ebx + eax * 0x1 + 0x04]       // 0x0040cd71    8d4c0304
                         {disp8} mov          dword ptr [edx + 0x08], ecx                   // 0x0040cd75    894a08
                         {disp32} mov         esi, dword ptr [esi + 0x0000023c]             // 0x0040cd78    8bb63c020000
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040cd7e    8b4608
                         add                  dword ptr [esi + 0x10], eax                   // 0x0040cd81    014610
_jmp_addr_0x0040cd84:    pop                  edi                                           // 0x0040cd84    5f
                         pop                  esi                                           // 0x0040cd85    5e
                         pop                  ebp                                           // 0x0040cd86    5d
                         pop                  ebx                                           // 0x0040cd87    5b
                         add                  esp, 0x00000218                               // 0x0040cd88    81c418020000
                         ret                  0x0008                                        // 0x0040cd8e    c20800
                         nop                                                                // 0x0040cd91    90
                         nop                                                                // 0x0040cd92    90
                         nop                                                                // 0x0040cd93    90
                         nop                                                                // 0x0040cd94    90
                         nop                                                                // 0x0040cd95    90
                         nop                                                                // 0x0040cd96    90
                         nop                                                                // 0x0040cd97    90
                         nop                                                                // 0x0040cd98    90
                         nop                                                                // 0x0040cd99    90
                         nop                                                                // 0x0040cd9a    90
                         nop                                                                // 0x0040cd9b    90
                         nop                                                                // 0x0040cd9c    90
                         nop                                                                // 0x0040cd9d    90
                         nop                                                                // 0x0040cd9e    90
                         nop                                                                // 0x0040cd9f    90
_Draw__14SetupMP3ButtonFbb:
                         push                 ebx                                           // 0x0040cda0    53
                         {disp8} mov          ebx, dword ptr [esp + 0x08]                   // 0x0040cda1    8b5c2408
                         push                 esi                                           // 0x0040cda5    56
                         mov.s                esi, ecx                                      // 0x0040cda6    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x00000248]             // 0x0040cda8    8b8648020000
                         test                 eax, eax                                      // 0x0040cdae    85c0
                         push                 edi                                           // 0x0040cdb0    57
                         {disp8} je           _jmp_addr_0x0040cdbe                          // 0x0040cdb1    740b
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x0040cdb3    8b442414
                         push                 eax                                           // 0x0040cdb7    50
                         push                 ebx                                           // 0x0040cdb8    53
                         call                 @Draw__11SetupButtonFbb@10                    // 0x0040cdb9    e8e2c9ffff
_jmp_addr_0x0040cdbe:    {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040cdbe    8b5608
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040cdc1    8b4610
                         add.s                eax, edx                                      // 0x0040cdc4    03c2
                         cdq                                                                // 0x0040cdc6    99
                         sub.s                eax, edx                                      // 0x0040cdc7    2bc2
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040cdc9    8b560c
                         mov.s                ecx, eax                                      // 0x0040cdcc    8bc8
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040cdce    8b4614
                         add.s                eax, edx                                      // 0x0040cdd1    03c2
                         cdq                                                                // 0x0040cdd3    99
                         sub.s                eax, edx                                      // 0x0040cdd4    2bc2
                         mov.s                edi, eax                                      // 0x0040cdd6    8bf8
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]             // 0x0040cdd8    8b863c020000
                         sar                  ecx, 1                                        // 0x0040cdde    d1f9
                         sar                  edi, 1                                        // 0x0040cde0    d1ff
                         sub                  ecx, 0x09                                     // 0x0040cde2    83e909
                         sub                  edi, 0x09                                     // 0x0040cde5    83ef09
                         test                 eax, eax                                      // 0x0040cde8    85c0
                         {disp8} jne          _jmp_addr_0x0040cdf3                          // 0x0040cdea    7507
                         {disp8} mov          eax, dword ptr [esi + 0x1c]                   // 0x0040cdec    8b461c
                         test                 eax, eax                                      // 0x0040cdef    85c0
                         {disp8} je           _jmp_addr_0x0040cdf5                          // 0x0040cdf1    7402
_jmp_addr_0x0040cdf3:    inc                  ecx                                           // 0x0040cdf3    41
                         inc                  edi                                           // 0x0040cdf4    47
_jmp_addr_0x0040cdf5:    {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040cdf5    8b8644020000
                         mov.s                edx, eax                                      // 0x0040cdfb    8bd0
                         and                  edx, 0x03                                     // 0x0040cdfd    83e203
                         {disp8} mov          dword ptr [esp + 0x10], edx                   // 0x0040ce00    89542410
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040ce04    db442410
                         cdq                                                                // 0x0040ce08    99
                         and                  edx, 0x03                                     // 0x0040ce09    83e203
                         add.s                eax, edx                                      // 0x0040ce0c    03c2
                         {disp32} fmul        dword ptr [rdata_bytes + 0x23d8]              // 0x0040ce0e    d80dd8b38a00
                         sar                  eax, 2                                        // 0x0040ce14    c1f802
                         and                  eax, 0x03                                     // 0x0040ce17    83e003
                         inc                  eax                                           // 0x0040ce1a    40
                         test                 bl, bl                                        // 0x0040ce1b    84db
                         {disp32} fadd        dword ptr [rdata_bytes + 0x23d4]              // 0x0040ce1d    d805d4b38a00
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040ce23    89442410
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x0040ce27    d95c2414
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040ce2b    db442410
                         {disp32} fmul        dword ptr [rdata_bytes + 0x23d8]              // 0x0040ce2f    d80dd8b38a00
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040ce35    d95c2410
                         {disp8} jne          _jmp_addr_0x0040ce48                          // 0x0040ce39    750d
                         {disp8} mov          eax, dword ptr [esi + 0x1c]                   // 0x0040ce3b    8b461c
                         test                 eax, eax                                      // 0x0040ce3e    85c0
                         {disp32} lea         eax, dword ptr [esi + 0x0000024c]             // 0x0040ce40    8d864c020000
                         {disp8} je           _jmp_addr_0x0040ce4d                          // 0x0040ce46    7405
_jmp_addr_0x0040ce48:    mov                  eax, 0x00c4cce4                               // 0x0040ce48    b8e4ccc400
_jmp_addr_0x0040ce4d:    {disp8} fld          dword ptr [esp + 0x10]                        // 0x0040ce4d    d9442410
                         push                 0x42c80000                                    // 0x0040ce51    680000c842
                         {disp32} fadd        dword ptr [rdata_bytes + 0x23d8]              // 0x0040ce56    d805d8b38a00
                         push                 0x0                                           // 0x0040ce5c    6a00
                         {disp8} mov          edx, dword ptr [esp + 0x18]                   // 0x0040ce5e    8b542418
                         push                 0x0000a000                                    // 0x0040ce62    6800a00000
                         push                 0xffff6000                                    // 0x0040ce67    680060ffff
                         push                 0x1                                           // 0x0040ce6c    6a01
                         push                 eax                                           // 0x0040ce6e    50
                         {disp32} mov         eax, dword ptr [data_bytes + 0x516368]        // 0x0040ce6f    a168c3ed00
                         push                 eax                                           // 0x0040ce74    50
                         {disp8} mov          eax, dword ptr [esp + 0x30]                   // 0x0040ce75    8b442430
                         push                 ecx                                           // 0x0040ce79    51
                         fstp                 dword ptr [esp]                               // 0x0040ce7a    d91c24
                         push                 ecx                                           // 0x0040ce7d    51
                         {disp8} fld          dword ptr [esp + 0x38]                        // 0x0040ce7e    d9442438
                         {disp32} fadd        dword ptr [rdata_bytes + 0x23d8]              // 0x0040ce82    d805d8b38a00
                         fstp                 dword ptr [esp]                               // 0x0040ce88    d91c24
                         push                 edx                                           // 0x0040ce8b    52
                         push                 eax                                           // 0x0040ce8c    50
                         {disp8} lea          edx, dword ptr [edi + 0x10]                   // 0x0040ce8d    8d5710
                         push                 edx                                           // 0x0040ce90    52
                         {disp8} lea          eax, dword ptr [ecx + 0x10]                   // 0x0040ce91    8d4110
                         push                 eax                                           // 0x0040ce94    50
                         push                 edi                                           // 0x0040ce95    57
                         push                 ecx                                           // 0x0040ce96    51
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0040ce97    e8e45a0000
                         add                  esp, 0x3c                                     // 0x0040ce9c    83c43c
                         pop                  edi                                           // 0x0040ce9f    5f
                         pop                  esi                                           // 0x0040cea0    5e
                         pop                  ebx                                           // 0x0040cea1    5b
                         ret                  0x0008                                        // 0x0040cea2    c20800
                         nop                                                                // 0x0040cea5    90
                         nop                                                                // 0x0040cea6    90
                         nop                                                                // 0x0040cea7    90
                         nop                                                                // 0x0040cea8    90
                         nop                                                                // 0x0040cea9    90
                         nop                                                                // 0x0040ceaa    90
                         nop                                                                // 0x0040ceab    90
                         nop                                                                // 0x0040ceac    90
                         nop                                                                // 0x0040cead    90
                         nop                                                                // 0x0040ceae    90
                         nop                                                                // 0x0040ceaf    90
_Draw__14SetupBigButtonFbb:
                         push                 ebx                                           // 0x0040ceb0    53
                         {disp8} mov          bl, byte ptr [esp + 0x08]                     // 0x0040ceb1    8a5c2408
                         test                 bl, bl                                        // 0x0040ceb5    84db
                         push                 ebp                                           // 0x0040ceb7    55
                         push                 esi                                           // 0x0040ceb8    56
                         mov.s                esi, ecx                                      // 0x0040ceb9    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040cebb    8b4608
                         {disp32} mov         dword ptr [data_bytes + 0x286cb8], eax        // 0x0040cebe    a3b8ccc400
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040cec3    8b4e0c
                         {disp32} mov         dword ptr [data_bytes + 0x286cbc], ecx        // 0x0040cec6    890dbcccc400
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040cecc    8b5610
                         {disp32} mov         dword ptr [data_bytes + 0x286cc0], edx        // 0x0040cecf    8915c0ccc400
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040ced5    8b4614
                         push                 edi                                           // 0x0040ced8    57
                         {disp32} mov         dword ptr [data_bytes + 0x286cc4], eax        // 0x0040ced9    a3c4ccc400
                         {disp8} jne          _jmp_addr_0x0040cef3                          // 0x0040cede    7513
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x0040cee0    8a442418
                         test                 al, al                                        // 0x0040cee4    84c0
                         {disp8} je           _jmp_addr_0x0040ceef                          // 0x0040cee6    7407
                         cmp                  word ptr [esi + 0x24], 0x00                   // 0x0040cee8    66837e2400
                         {disp8} je           _jmp_addr_0x0040cef3                          // 0x0040ceed    7404
_jmp_addr_0x0040ceef:    xor.s                ecx, ecx                                      // 0x0040ceef    33c9
                         {disp8} jmp          _jmp_addr_0x0040cef8                          // 0x0040cef1    eb05
_jmp_addr_0x0040cef3:    mov                  ecx, 0x00000001                               // 0x0040cef3    b901000000
_jmp_addr_0x0040cef8:    {disp32} mov         edx, dword ptr [esi + 0x00000248]             // 0x0040cef8    8b9648020000
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040cefe    8b4608
                         {disp32} mov         edi, dword ptr [esi + 0x0000023c]             // 0x0040cf01    8bbe3c020000
                         push                 0x0000a000                                    // 0x0040cf07    6800a00000
                         push                 0xffff6000                                    // 0x0040cf0c    680060ffff
                         push                 0x1                                           // 0x0040cf11    6a01
                         push                 edx                                           // 0x0040cf13    52
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040cf14    8b5610
                         sub.s                edx, eax                                      // 0x0040cf17    2bd0
                         push                 edx                                           // 0x0040cf19    52
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040cf1a    8b560c
                         push                 ecx                                           // 0x0040cf1d    51
                         test                 edi, edi                                      // 0x0040cf1e    85ff
                         setne                cl                                            // 0x0040cf20    0f95c1
                         push                 ecx                                           // 0x0040cf23    51
                         push                 edx                                           // 0x0040cf24    52
                         push                 eax                                           // 0x0040cf25    50
                         call                 ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z // 0x0040cf26    e825520000
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040cf2b    8b8644020000
                         add                  esp, 0x24                                     // 0x0040cf31    83c424
                         cmp                  eax, 0x02                                     // 0x0040cf34    83f802
                         {disp32} jne         _jmp_addr_0x0040cff2                          // 0x0040cf37    0f85b5000000
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040cf3d    8b4620
                         test                 eax, eax                                      // 0x0040cf40    85c0
                         {disp8} jne          _jmp_addr_0x0040cf5b                          // 0x0040cf42    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040cf44    8b8634020000
                         test                 eax, eax                                      // 0x0040cf4a    85c0
                         {disp8} je           _jmp_addr_0x0040cf56                          // 0x0040cf4c    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040cf4e    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040cf5b                          // 0x0040cf54    eb05
_jmp_addr_0x0040cf56:    mov                  eax, 0x0000000a                               // 0x0040cf56    b80a000000
_jmp_addr_0x0040cf5b:    {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040cf5b    8b4e08
                         push                 0x0                                           // 0x0040cf5e    6a00
                         push                 0x00c4ccdc                                    // 0x0040cf60    68dcccc400
                         push                 eax                                           // 0x0040cf65    50
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040cf66    8b4614
                         add                  eax, 0x04                                     // 0x0040cf69    83c004
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x0040cf6c    8d7e24
                         push                 edi                                           // 0x0040cf6f    57
                         push                 0x1                                           // 0x0040cf70    6a01
                         push                 0x000003e8                                    // 0x0040cf72    68e8030000
                         push                 eax                                           // 0x0040cf77    50
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040cf78    8b4610
                         add.s                eax, ecx                                      // 0x0040cf7b    03c1
                         cdq                                                                // 0x0040cf7d    99
                         sub.s                eax, edx                                      // 0x0040cf7e    2bc2
                         sar                  eax, 1                                        // 0x0040cf80    d1f8
                         add                  eax, 0x02                                     // 0x0040cf82    83c002
                         push                 eax                                           // 0x0040cf85    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040cf86    e8254a0000
                         add                  esp, 0x20                                     // 0x0040cf8b    83c420
                         fstp                 st(0)                                         // 0x0040cf8e    ddd8
                         test                 bl, bl                                        // 0x0040cf90    84db
                         {disp8} jne          _jmp_addr_0x0040cfa9                          // 0x0040cf92    7515
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x0040cf94    8a442418
                         test                 al, al                                        // 0x0040cf98    84c0
                         {disp8} je           _jmp_addr_0x0040cfa2                          // 0x0040cf9a    7406
                         cmp                  word ptr [edi], 0x00                          // 0x0040cf9c    66833f00
                         {disp8} je           _jmp_addr_0x0040cfa9                          // 0x0040cfa0    7407
_jmp_addr_0x0040cfa2:    mov                  ecx, 0x00c4ccf8                               // 0x0040cfa2    b9f8ccc400
                         {disp8} jmp          _jmp_addr_0x0040cfae                          // 0x0040cfa7    eb05
_jmp_addr_0x0040cfa9:    mov                  ecx, 0x00c4cce4                               // 0x0040cfa9    b9e4ccc400
_jmp_addr_0x0040cfae:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040cfae    8b4620
                         test                 eax, eax                                      // 0x0040cfb1    85c0
                         {disp8} jne          _jmp_addr_0x0040cfcc                          // 0x0040cfb3    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040cfb5    8b8634020000
                         test                 eax, eax                                      // 0x0040cfbb    85c0
                         {disp8} je           _jmp_addr_0x0040cfc7                          // 0x0040cfbd    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040cfbf    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040cfcc                          // 0x0040cfc5    eb05
_jmp_addr_0x0040cfc7:    mov                  eax, 0x0000000a                               // 0x0040cfc7    b80a000000
_jmp_addr_0x0040cfcc:    {disp8} mov          ebx, dword ptr [esi + 0x08]                   // 0x0040cfcc    8b5e08
                         push                 0x0                                           // 0x0040cfcf    6a00
                         push                 ecx                                           // 0x0040cfd1    51
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x0040cfd2    8b4e14
                         push                 eax                                           // 0x0040cfd5    50
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040cfd6    8b4610
                         push                 edi                                           // 0x0040cfd9    57
                         add.s                eax, ebx                                      // 0x0040cfda    03c3
                         push                 0x1                                           // 0x0040cfdc    6a01
                         cdq                                                                // 0x0040cfde    99
                         push                 0x000003e8                                    // 0x0040cfdf    68e8030000
                         add                  ecx, 0x2                                      // 0x0040cfe4    83c102
                         sub.s                eax, edx                                      // 0x0040cfe7    2bc2
                         push                 ecx                                           // 0x0040cfe9    51
                         sar                  eax, 1                                        // 0x0040cfea    d1f8
                         push                 eax                                           // 0x0040cfec    50
                         {disp32} jmp         _jmp_addr_0x0040d21a                          // 0x0040cfed    e928020000
_jmp_addr_0x0040cff2:    test                 eax, eax                                      // 0x0040cff2    85c0
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040cff4    8b4620
                         {disp32} je          _jmp_addr_0x0040d10e                          // 0x0040cff7    0f8411010000
                         test                 eax, eax                                      // 0x0040cffd    85c0
                         {disp8} je           _jmp_addr_0x0040d005                          // 0x0040cfff    7404
                         mov.s                ebp, eax                                      // 0x0040d001    8be8
                         {disp8} jmp          _jmp_addr_0x0040d01c                          // 0x0040d003    eb17
_jmp_addr_0x0040d005:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040d005    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040d00b    85c9
                         {disp8} je           _jmp_addr_0x0040d017                          // 0x0040d00d    7408
                         {disp32} mov         ebp, dword ptr [ecx + 0x000000ac]             // 0x0040d00f    8ba9ac000000
                         {disp8} jmp          _jmp_addr_0x0040d01c                          // 0x0040d015    eb05
_jmp_addr_0x0040d017:    mov                  ebp, 0x0000000a                               // 0x0040d017    bd0a000000
_jmp_addr_0x0040d01c:    test                 eax, eax                                      // 0x0040d01c    85c0
                         {disp8} je           _jmp_addr_0x0040d029                          // 0x0040d01e    7409
                         cdq                                                                // 0x0040d020    99
                         sub.s                eax, edx                                      // 0x0040d021    2bc2
                         mov.s                ecx, eax                                      // 0x0040d023    8bc8
                         sar                  ecx, 1                                        // 0x0040d025    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d047                          // 0x0040d027    eb1e
_jmp_addr_0x0040d029:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d029    8b8634020000
                         test                 eax, eax                                      // 0x0040d02f    85c0
                         {disp8} je           _jmp_addr_0x0040d042                          // 0x0040d031    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040d033    8b80ac000000
                         cdq                                                                // 0x0040d039    99
                         sub.s                eax, edx                                      // 0x0040d03a    2bc2
                         mov.s                ecx, eax                                      // 0x0040d03c    8bc8
                         sar                  ecx, 1                                        // 0x0040d03e    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d047                          // 0x0040d040    eb05
_jmp_addr_0x0040d042:    mov                  ecx, 0x00000005                               // 0x0040d042    b905000000
_jmp_addr_0x0040d047:    {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040d047    8b5614
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040d04a    8b460c
                         add.s                eax, edx                                      // 0x0040d04d    03c2
                         push                 0x0                                           // 0x0040d04f    6a00
                         cdq                                                                // 0x0040d051    99
                         push                 0x00c4ccdc                                    // 0x0040d052    68dcccc400
                         sub.s                eax, edx                                      // 0x0040d057    2bc2
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040d059    8b5608
                         push                 ebp                                           // 0x0040d05c    55
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x0040d05d    8d7e24
                         push                 edi                                           // 0x0040d060    57
                         sar                  eax, 1                                        // 0x0040d061    d1f8
                         push                 0x2                                           // 0x0040d063    6a02
                         sub.s                eax, ecx                                      // 0x0040d065    2bc1
                         push                 0x000003e8                                    // 0x0040d067    68e8030000
                         add                  eax, 0x02                                     // 0x0040d06c    83c002
                         push                 eax                                           // 0x0040d06f    50
                         add                  edx, 0x02                                     // 0x0040d070    83c202
                         push                 edx                                           // 0x0040d073    52
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040d074    e837490000
                         add                  esp, 0x20                                     // 0x0040d079    83c420
                         fstp                 st(0)                                         // 0x0040d07c    ddd8
                         test                 bl, bl                                        // 0x0040d07e    84db
                         {disp8} jne          _jmp_addr_0x0040d097                          // 0x0040d080    7515
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x0040d082    8a442418
                         test                 al, al                                        // 0x0040d086    84c0
                         {disp8} je           _jmp_addr_0x0040d090                          // 0x0040d088    7406
                         cmp                  word ptr [edi], 0x00                          // 0x0040d08a    66833f00
                         {disp8} je           _jmp_addr_0x0040d097                          // 0x0040d08e    7407
_jmp_addr_0x0040d090:    mov                  ebp, 0x00c4ccf8                               // 0x0040d090    bdf8ccc400
                         {disp8} jmp          _jmp_addr_0x0040d09c                          // 0x0040d095    eb05
_jmp_addr_0x0040d097:    mov                  ebp, 0x00c4cce4                               // 0x0040d097    bde4ccc400
_jmp_addr_0x0040d09c:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040d09c    8b4620
                         test                 eax, eax                                      // 0x0040d09f    85c0
                         {disp8} je           _jmp_addr_0x0040d0a7                          // 0x0040d0a1    7404
                         mov.s                ebx, eax                                      // 0x0040d0a3    8bd8
                         {disp8} jmp          _jmp_addr_0x0040d0be                          // 0x0040d0a5    eb17
_jmp_addr_0x0040d0a7:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040d0a7    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040d0ad    85c9
                         {disp8} je           _jmp_addr_0x0040d0b9                          // 0x0040d0af    7408
                         {disp32} mov         ebx, dword ptr [ecx + 0x000000ac]             // 0x0040d0b1    8b99ac000000
                         {disp8} jmp          _jmp_addr_0x0040d0be                          // 0x0040d0b7    eb05
_jmp_addr_0x0040d0b9:    mov                  ebx, 0x0000000a                               // 0x0040d0b9    bb0a000000
_jmp_addr_0x0040d0be:    test                 eax, eax                                      // 0x0040d0be    85c0
                         {disp8} je           _jmp_addr_0x0040d0cb                          // 0x0040d0c0    7409
                         cdq                                                                // 0x0040d0c2    99
                         sub.s                eax, edx                                      // 0x0040d0c3    2bc2
                         mov.s                ecx, eax                                      // 0x0040d0c5    8bc8
                         sar                  ecx, 1                                        // 0x0040d0c7    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d0e9                          // 0x0040d0c9    eb1e
_jmp_addr_0x0040d0cb:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d0cb    8b8634020000
                         test                 eax, eax                                      // 0x0040d0d1    85c0
                         {disp8} je           _jmp_addr_0x0040d0e4                          // 0x0040d0d3    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040d0d5    8b80ac000000
                         cdq                                                                // 0x0040d0db    99
                         sub.s                eax, edx                                      // 0x0040d0dc    2bc2
                         mov.s                ecx, eax                                      // 0x0040d0de    8bc8
                         sar                  ecx, 1                                        // 0x0040d0e0    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d0e9                          // 0x0040d0e2    eb05
_jmp_addr_0x0040d0e4:    mov                  ecx, 0x00000005                               // 0x0040d0e4    b905000000
_jmp_addr_0x0040d0e9:    {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040d0e9    8b5614
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040d0ec    8b460c
                         push                 0x0                                           // 0x0040d0ef    6a00
                         push                 ebp                                           // 0x0040d0f1    55
                         add.s                eax, edx                                      // 0x0040d0f2    03c2
                         push                 ebx                                           // 0x0040d0f4    53
                         cdq                                                                // 0x0040d0f5    99
                         push                 edi                                           // 0x0040d0f6    57
                         sub.s                eax, edx                                      // 0x0040d0f7    2bc2
                         push                 0x2                                           // 0x0040d0f9    6a02
                         sar                  eax, 1                                        // 0x0040d0fb    d1f8
                         push                 0x000003e8                                    // 0x0040d0fd    68e8030000
                         sub.s                eax, ecx                                      // 0x0040d102    2bc1
                         push                 eax                                           // 0x0040d104    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040d105    8b4608
                         push                 eax                                           // 0x0040d108    50
                         {disp32} jmp         _jmp_addr_0x0040d21a                          // 0x0040d109    e90c010000
_jmp_addr_0x0040d10e:    test                 eax, eax                                      // 0x0040d10e    85c0
                         {disp8} je           _jmp_addr_0x0040d116                          // 0x0040d110    7404
                         mov.s                ebp, eax                                      // 0x0040d112    8be8
                         {disp8} jmp          _jmp_addr_0x0040d12d                          // 0x0040d114    eb17
_jmp_addr_0x0040d116:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040d116    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040d11c    85c9
                         {disp8} je           _jmp_addr_0x0040d128                          // 0x0040d11e    7408
                         {disp32} mov         ebp, dword ptr [ecx + 0x000000ac]             // 0x0040d120    8ba9ac000000
                         {disp8} jmp          _jmp_addr_0x0040d12d                          // 0x0040d126    eb05
_jmp_addr_0x0040d128:    mov                  ebp, 0x0000000a                               // 0x0040d128    bd0a000000
_jmp_addr_0x0040d12d:    test                 eax, eax                                      // 0x0040d12d    85c0
                         {disp8} je           _jmp_addr_0x0040d13a                          // 0x0040d12f    7409
                         cdq                                                                // 0x0040d131    99
                         sub.s                eax, edx                                      // 0x0040d132    2bc2
                         mov.s                ecx, eax                                      // 0x0040d134    8bc8
                         sar                  ecx, 1                                        // 0x0040d136    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d158                          // 0x0040d138    eb1e
_jmp_addr_0x0040d13a:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d13a    8b8634020000
                         test                 eax, eax                                      // 0x0040d140    85c0
                         {disp8} je           _jmp_addr_0x0040d153                          // 0x0040d142    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040d144    8b80ac000000
                         cdq                                                                // 0x0040d14a    99
                         sub.s                eax, edx                                      // 0x0040d14b    2bc2
                         mov.s                ecx, eax                                      // 0x0040d14d    8bc8
                         sar                  ecx, 1                                        // 0x0040d14f    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d158                          // 0x0040d151    eb05
_jmp_addr_0x0040d153:    mov                  ecx, 0x00000005                               // 0x0040d153    b905000000
_jmp_addr_0x0040d158:    {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040d158    8b5614
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040d15b    8b460c
                         push                 0x0                                           // 0x0040d15e    6a00
                         add.s                eax, edx                                      // 0x0040d160    03c2
                         push                 0x00c4ccdc                                    // 0x0040d162    68dcccc400
                         cdq                                                                // 0x0040d167    99
                         push                 ebp                                           // 0x0040d168    55
                         sub.s                eax, edx                                      // 0x0040d169    2bc2
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x0040d16b    8d7e24
                         push                 edi                                           // 0x0040d16e    57
                         sar                  eax, 1                                        // 0x0040d16f    d1f8
                         sub.s                eax, ecx                                      // 0x0040d171    2bc1
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040d173    8b4e10
                         push                 0x0                                           // 0x0040d176    6a00
                         push                 0x000003e8                                    // 0x0040d178    68e8030000
                         add                  eax, 0x02                                     // 0x0040d17d    83c002
                         push                 eax                                           // 0x0040d180    50
                         add                  ecx, 0x2                                      // 0x0040d181    83c102
                         push                 ecx                                           // 0x0040d184    51
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040d185    e826480000
                         add                  esp, 0x20                                     // 0x0040d18a    83c420
                         fstp                 st(0)                                         // 0x0040d18d    ddd8
                         test                 bl, bl                                        // 0x0040d18f    84db
                         {disp8} jne          _jmp_addr_0x0040d1a8                          // 0x0040d191    7515
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x0040d193    8a442418
                         test                 al, al                                        // 0x0040d197    84c0
                         {disp8} je           _jmp_addr_0x0040d1a1                          // 0x0040d199    7406
                         cmp                  word ptr [edi], 0x00                          // 0x0040d19b    66833f00
                         {disp8} je           _jmp_addr_0x0040d1a8                          // 0x0040d19f    7407
_jmp_addr_0x0040d1a1:    mov                  ebp, 0x00c4ccf8                               // 0x0040d1a1    bdf8ccc400
                         {disp8} jmp          _jmp_addr_0x0040d1ad                          // 0x0040d1a6    eb05
_jmp_addr_0x0040d1a8:    mov                  ebp, 0x00c4cce4                               // 0x0040d1a8    bde4ccc400
_jmp_addr_0x0040d1ad:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040d1ad    8b4620
                         test                 eax, eax                                      // 0x0040d1b0    85c0
                         {disp8} je           _jmp_addr_0x0040d1b8                          // 0x0040d1b2    7404
                         mov.s                ebx, eax                                      // 0x0040d1b4    8bd8
                         {disp8} jmp          _jmp_addr_0x0040d1cf                          // 0x0040d1b6    eb17
_jmp_addr_0x0040d1b8:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040d1b8    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040d1be    85c9
                         {disp8} je           _jmp_addr_0x0040d1ca                          // 0x0040d1c0    7408
                         {disp32} mov         ebx, dword ptr [ecx + 0x000000ac]             // 0x0040d1c2    8b99ac000000
                         {disp8} jmp          _jmp_addr_0x0040d1cf                          // 0x0040d1c8    eb05
_jmp_addr_0x0040d1ca:    mov                  ebx, 0x0000000a                               // 0x0040d1ca    bb0a000000
_jmp_addr_0x0040d1cf:    test                 eax, eax                                      // 0x0040d1cf    85c0
                         {disp8} je           _jmp_addr_0x0040d1dc                          // 0x0040d1d1    7409
                         cdq                                                                // 0x0040d1d3    99
                         sub.s                eax, edx                                      // 0x0040d1d4    2bc2
                         mov.s                ecx, eax                                      // 0x0040d1d6    8bc8
                         sar                  ecx, 1                                        // 0x0040d1d8    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d1fa                          // 0x0040d1da    eb1e
_jmp_addr_0x0040d1dc:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d1dc    8b8634020000
                         test                 eax, eax                                      // 0x0040d1e2    85c0
                         {disp8} je           _jmp_addr_0x0040d1f5                          // 0x0040d1e4    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040d1e6    8b80ac000000
                         cdq                                                                // 0x0040d1ec    99
                         sub.s                eax, edx                                      // 0x0040d1ed    2bc2
                         mov.s                ecx, eax                                      // 0x0040d1ef    8bc8
                         sar                  ecx, 1                                        // 0x0040d1f1    d1f9
                         {disp8} jmp          _jmp_addr_0x0040d1fa                          // 0x0040d1f3    eb05
_jmp_addr_0x0040d1f5:    mov                  ecx, 0x00000005                               // 0x0040d1f5    b905000000
_jmp_addr_0x0040d1fa:    {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040d1fa    8b5614
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040d1fd    8b460c
                         push                 0x0                                           // 0x0040d200    6a00
                         push                 ebp                                           // 0x0040d202    55
                         add.s                eax, edx                                      // 0x0040d203    03c2
                         push                 ebx                                           // 0x0040d205    53
                         cdq                                                                // 0x0040d206    99
                         push                 edi                                           // 0x0040d207    57
                         sub.s                eax, edx                                      // 0x0040d208    2bc2
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040d20a    8b5610
                         push                 0x0                                           // 0x0040d20d    6a00
                         sar                  eax, 1                                        // 0x0040d20f    d1f8
                         push                 0x000003e8                                    // 0x0040d211    68e8030000
                         sub.s                eax, ecx                                      // 0x0040d216    2bc1
                         push                 eax                                           // 0x0040d218    50
                         push                 edx                                           // 0x0040d219    52
_jmp_addr_0x0040d21a:    call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040d21a    e891470000
                         fstp                 st(0)                                         // 0x0040d21f    ddd8
                         {disp32} mov         eax, dword ptr [data_bytes + 0x286cb8]        // 0x0040d221    a1b8ccc400
                         add                  esi, 0x0000024c                               // 0x0040d226    81c64c020000
                         mov                  dword ptr [esi], eax                          // 0x0040d22c    8906
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286cbc]        // 0x0040d22e    8b0dbcccc400
                         {disp8} mov          dword ptr [esi + 0x04], ecx                   // 0x0040d234    894e04
                         {disp32} mov         edx, dword ptr [data_bytes + 0x286cc0]        // 0x0040d237    8b15c0ccc400
                         add                  esp, 0x20                                     // 0x0040d23d    83c420
                         {disp8} mov          dword ptr [esi + 0x08], edx                   // 0x0040d240    895608
                         {disp32} mov         eax, dword ptr [data_bytes + 0x286cc4]        // 0x0040d243    a1c4ccc400
                         pop                  edi                                           // 0x0040d248    5f
                         {disp8} mov          dword ptr [esi + 0x0c], eax                   // 0x0040d249    89460c
                         pop                  esi                                           // 0x0040d24c    5e
                         pop                  ebp                                           // 0x0040d24d    5d
                         pop                  ebx                                           // 0x0040d24e    5b
                         ret                  0x0008                                        // 0x0040d24f    c20800
                         nop                                                                // 0x0040d252    90
                         nop                                                                // 0x0040d253    90
                         nop                                                                // 0x0040d254    90
                         nop                                                                // 0x0040d255    90
                         nop                                                                // 0x0040d256    90
                         nop                                                                // 0x0040d257    90
                         nop                                                                // 0x0040d258    90
                         nop                                                                // 0x0040d259    90
                         nop                                                                // 0x0040d25a    90
                         nop                                                                // 0x0040d25b    90
                         nop                                                                // 0x0040d25c    90
                         nop                                                                // 0x0040d25d    90
                         nop                                                                // 0x0040d25e    90
                         nop                                                                // 0x0040d25f    90
@__ct__14SetupBigButtonFiiiPwiii@36:    {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0040d260    8b442410
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040d264    8b542408
                         push                 esi                                           // 0x0040d268    56
                         push                 edi                                           // 0x0040d269    57
                         xor.s                edi, edi                                      // 0x0040d26a    33ff
                         push                 edi                                           // 0x0040d26c    57
                         push                 eax                                           // 0x0040d26d    50
                         {disp8} mov          eax, dword ptr [esp + 0x24]                   // 0x0040d26e    8b442424
                         push                 eax                                           // 0x0040d272    50
                         push                 eax                                           // 0x0040d273    50
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x0040d274    8b44241c
                         mov.s                esi, ecx                                      // 0x0040d278    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x24]                   // 0x0040d27a    8b4c2424
                         push                 ecx                                           // 0x0040d27e    51
                         push                 edx                                           // 0x0040d27f    52
                         push                 eax                                           // 0x0040d280    50
                         mov.s                ecx, esi                                      // 0x0040d281    8bce
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x0040d283    e828c6ffff
                         {disp32} mov         dword ptr [esi + 0x00000258], edi             // 0x0040d288    89be58020000
                         {disp32} mov         dword ptr [esi + 0x00000254], edi             // 0x0040d28e    89be54020000
                         {disp32} mov         dword ptr [esi + 0x00000250], edi             // 0x0040d294    89be50020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], edi             // 0x0040d29a    89be4c020000
                         mov.s                ecx, esi                                      // 0x0040d2a0    8bce
                         mov                  dword ptr [esi], 0x008ab3e0                   // 0x0040d2a2    c706e0b38a00
                         {disp32} mov         dword ptr [esi + 0x0000023c], edi             // 0x0040d2a8    89be3c020000
                         call                 _jmp_addr_0x0040d380                          // 0x0040d2ae    e8cd000000
                         {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x0040d2b3    8b442420
                         cmp                  eax, 0x02                                     // 0x0040d2b7    83f802
                         {disp32} mov         dword ptr [esi + 0x00000244], eax             // 0x0040d2ba    898644020000
                         {disp8} jne          _jmp_addr_0x0040d2db                          // 0x0040d2c0    7519
                         call                 _GetMidTextSize__Fv                           // 0x0040d2c2    e839a7ffff
                         {disp8} mov          ecx, dword ptr [esp + 0x24]                   // 0x0040d2c7    8b4c2424
                         {disp8} mov          dword ptr [esi + 0x20], eax                   // 0x0040d2cb    894620
                         pop                  edi                                           // 0x0040d2ce    5f
                         {disp32} mov         dword ptr [esi + 0x00000248], ecx             // 0x0040d2cf    898e48020000
                         mov.s                eax, esi                                      // 0x0040d2d5    8bc6
                         pop                  esi                                           // 0x0040d2d7    5e
                         ret                  0x001c                                        // 0x0040d2d8    c21c00
_jmp_addr_0x0040d2db:    {disp8} mov          edx, dword ptr [esp + 0x24]                   // 0x0040d2db    8b542424
                         pop                  edi                                           // 0x0040d2df    5f
                         {disp32} mov         dword ptr [esi + 0x00000248], edx             // 0x0040d2e0    899648020000
                         mov.s                eax, esi                                      // 0x0040d2e6    8bc6
                         pop                  esi                                           // 0x0040d2e8    5e
                         ret                  0x001c                                        // 0x0040d2e9    c21c00
                         nop                                                                // 0x0040d2ec    90
                         nop                                                                // 0x0040d2ed    90
                         nop                                                                // 0x0040d2ee    90
                         nop                                                                // 0x0040d2ef    90
_KeyDown__14SetupBigButtonFii:
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000234]             // 0x0040d2f0    8b8934020000
                         test                 ecx, ecx                                      // 0x0040d2f6    85c9
                         {disp8} je           _jmp_addr_0x0040d308                          // 0x0040d2f8    740e
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040d2fa    8b542408
                         mov                  eax, dword ptr [ecx]                          // 0x0040d2fe    8b01
                         push                 edx                                           // 0x0040d300    52
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040d301    8b542408
                         push                 edx                                           // 0x0040d305    52
                         call                 dword ptr [eax]                               // 0x0040d306    ff10
_jmp_addr_0x0040d308:    ret                  0x0008                                        // 0x0040d308    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040d30b    e86945ffff
_HitTest__14SetupBigButtonFii:
                         {disp8} mov          edx, dword ptr [ecx + 0x08]                   // 0x0040d310    8b5108
                         {disp8} mov          eax, dword ptr [esp + 0x04]                   // 0x0040d313    8b442404
                         cmp.s                eax, edx                                      // 0x0040d317    3bc2
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040d319    8b542408
                         {disp8} jl           _jmp_addr_0x0040d32e                          // 0x0040d31d    7c0f
                         cmp                  edx, dword ptr [ecx + 0x0c]                   // 0x0040d31f    3b510c
                         {disp8} jl           _jmp_addr_0x0040d32e                          // 0x0040d322    7c0a
                         cmp                  eax, dword ptr [ecx + 0x10]                   // 0x0040d324    3b4110
                         {disp8} jge          _jmp_addr_0x0040d32e                          // 0x0040d327    7d05
                         cmp                  edx, dword ptr [ecx + 0x14]                   // 0x0040d329    3b5114
                         {disp8} jl           _jmp_addr_0x0040d353                          // 0x0040d32c    7c25
_jmp_addr_0x0040d32e:    cmp                  eax, dword ptr [ecx + 0x0000024c]             // 0x0040d32e    3b814c020000
                         {disp8} jl           _jmp_addr_0x0040d34e                          // 0x0040d334    7c18
                         cmp                  edx, dword ptr [ecx + 0x00000250]             // 0x0040d336    3b9150020000
                         {disp8} jl           _jmp_addr_0x0040d34e                          // 0x0040d33c    7c10
                         cmp                  eax, dword ptr [ecx + 0x00000254]             // 0x0040d33e    3b8154020000
                         {disp8} jge          _jmp_addr_0x0040d34e                          // 0x0040d344    7d08
                         cmp                  edx, dword ptr [ecx + 0x00000258]             // 0x0040d346    3b9158020000
                         {disp8} jl           _jmp_addr_0x0040d353                          // 0x0040d34c    7c05
_jmp_addr_0x0040d34e:    xor.s                eax, eax                                      // 0x0040d34e    33c0
                         ret                  0x0008                                        // 0x0040d350    c20800
_jmp_addr_0x0040d353:    mov                  eax, 0x00000001                               // 0x0040d353    b801000000
                         ret                  0x0008                                        // 0x0040d358    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040d35b    e81945ffff
??_GSetupBigButton@@UAEPAXI@Z:
                         push                 esi                                           // 0x0040d360    56
                         mov.s                esi, ecx                                      // 0x0040d361    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x0040d363    e858c0ffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x0040d368    f644240801
                         {disp8} je           _jmp_addr_0x0040d378                          // 0x0040d36d    7409
                         push                 esi                                           // 0x0040d36f    56
                         call                 ??3@YAXPAX@Z                                  // 0x0040d370    e8231b3a00
                         add                  esp, 0x04                                     // 0x0040d375    83c404
_jmp_addr_0x0040d378:    mov.s                eax, esi                                      // 0x0040d378    8bc6
                         pop                  esi                                           // 0x0040d37a    5e
                         ret                  0x0004                                        // 0x0040d37b    c20400
                         nop                                                                // 0x0040d37e    90
                         nop                                                                // 0x0040d37f    90
_jmp_addr_0x0040d380:    {disp32} mov         dword ptr [ecx + 0x00000248], 0x00000000      // 0x0040d380    c7814802000000000000
                         ret                                                                // 0x0040d38a    c3
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040d38b    e8e944ffff
                         {disp32} mov         dword ptr [ecx + 0x00000248], 0x00000000      // 0x0040d390    c7814802000000000000
                         ret                                                                // 0x0040d39a    c3
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040d39b    e8d944ffff
                         {disp32} mov         dword ptr [ecx + 0x00000248], 0x00000002      // 0x0040d3a0    c7814802000002000000
                         ret                                                                // 0x0040d3aa    c3
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040d3ab    e8c944ffff
                         {disp32} mov         dword ptr [ecx + 0x00000248], 0x00000003      // 0x0040d3b0    c7814802000003000000
                         ret                                                                // 0x0040d3ba    c3
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040d3bb    e8b944ffff
_Draw__15SetupHSBarGraphFbb:
                         sub                  esp, 0x00000218                               // 0x0040d3c0    81ec18020000
                         push                 ebx                                           // 0x0040d3c6    53
                         push                 esi                                           // 0x0040d3c7    56
                         push                 edi                                           // 0x0040d3c8    57
                         push                 -0x1                                          // 0x0040d3c9    6aff
                         push                 -0x1                                          // 0x0040d3cb    6aff
                         mov.s                esi, ecx                                      // 0x0040d3cd    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040d3cf    8b4614
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040d3d2    8b4e10
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040d3d5    8b560c
                         push                 0x10                                          // 0x0040d3d8    6a10
                         push                 0x1                                           // 0x0040d3da    6a01
                         push                 eax                                           // 0x0040d3dc    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040d3dd    8b4608
                         push                 ecx                                           // 0x0040d3e0    51
                         push                 edx                                           // 0x0040d3e1    52
                         push                 eax                                           // 0x0040d3e2    50
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x0040d3e3    e838680000
                         {disp8} mov          edx, dword ptr [esi + 0x20]                   // 0x0040d3e8    8b5620
                         add                  esp, 0x20                                     // 0x0040d3eb    83c420
                         test                 edx, edx                                      // 0x0040d3ee    85d2
                         {disp8} je           _jmp_addr_0x0040d3f6                          // 0x0040d3f0    7404
                         mov.s                ebx, edx                                      // 0x0040d3f2    8bda
                         {disp8} jmp          _jmp_addr_0x0040d40d                          // 0x0040d3f4    eb17
_jmp_addr_0x0040d3f6:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d3f6    8b8634020000
                         test                 eax, eax                                      // 0x0040d3fc    85c0
                         {disp8} je           _jmp_addr_0x0040d408                          // 0x0040d3fe    7408
                         {disp32} mov         ebx, dword ptr [eax + 0x000000ac]             // 0x0040d400    8b98ac000000
                         {disp8} jmp          _jmp_addr_0x0040d40d                          // 0x0040d406    eb05
_jmp_addr_0x0040d408:    mov                  ebx, 0x0000000a                               // 0x0040d408    bb0a000000
_jmp_addr_0x0040d40d:    test                 edx, edx                                      // 0x0040d40d    85d2
                         {disp8} jne          _jmp_addr_0x0040d428                          // 0x0040d40f    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d411    8b8634020000
                         test                 eax, eax                                      // 0x0040d417    85c0
                         {disp8} je           _jmp_addr_0x0040d423                          // 0x0040d419    7408
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]             // 0x0040d41b    8b90ac000000
                         {disp8} jmp          _jmp_addr_0x0040d428                          // 0x0040d421    eb05
_jmp_addr_0x0040d423:    mov                  edx, 0x0000000a                               // 0x0040d423    ba0a000000
_jmp_addr_0x0040d428:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040d428    8b4614
                         push                 0x0                                           // 0x0040d42b    6a00
                         push                 0x1                                           // 0x0040d42d    6a01
                         push                 0x00c4ccdc                                    // 0x0040d42f    68dcccc400
                         push                 ebx                                           // 0x0040d434    53
                         {disp8} lea          ecx, dword ptr [eax + 0x01]                   // 0x0040d435    8d4801
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x0040d438    8d7e24
                         push                 edi                                           // 0x0040d43b    57
                         push                 0x1                                           // 0x0040d43c    6a01
                         push                 ecx                                           // 0x0040d43e    51
                         {disp8} lea          edx, dword ptr [eax + edx * 0x1 + 0x01]       // 0x0040d43f    8d541001
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040d443    8b4610
                         push                 edx                                           // 0x0040d446    52
                         inc                  eax                                           // 0x0040d447    40
                         push                 eax                                           // 0x0040d448    50
                         push                 ecx                                           // 0x0040d449    51
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040d44a    8b4e08
                         inc                  ecx                                           // 0x0040d44d    41
                         push                 ecx                                           // 0x0040d44e    51
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040d44f    e8fc420000
                         fstp                 st(0)                                         // 0x0040d454    ddd8
                         {disp32} mov         al, byte ptr [esp + 0x00000254]               // 0x0040d456    8a842454020000
                         add                  esp, 0x2c                                     // 0x0040d45d    83c42c
                         test                 al, al                                        // 0x0040d460    84c0
                         {disp8} jne          _jmp_addr_0x0040d47c                          // 0x0040d462    7518
                         {disp32} mov         al, byte ptr [esp + 0x0000022c]               // 0x0040d464    8a84242c020000
                         test                 al, al                                        // 0x0040d46b    84c0
                         {disp8} je           _jmp_addr_0x0040d475                          // 0x0040d46d    7406
                         cmp                  word ptr [edi], 0x00                          // 0x0040d46f    66833f00
                         {disp8} je           _jmp_addr_0x0040d47c                          // 0x0040d473    7407
_jmp_addr_0x0040d475:    mov                  ebx, 0x00c4ccf8                               // 0x0040d475    bbf8ccc400
                         {disp8} jmp          _jmp_addr_0x0040d481                          // 0x0040d47a    eb05
_jmp_addr_0x0040d47c:    mov                  ebx, 0x00c4cce4                               // 0x0040d47c    bbe4ccc400
_jmp_addr_0x0040d481:    {disp8} mov          ecx, dword ptr [esi + 0x20]                   // 0x0040d481    8b4e20
                         test                 ecx, ecx                                      // 0x0040d484    85c9
                         {disp8} je           _jmp_addr_0x0040d48c                          // 0x0040d486    7404
                         mov.s                edx, ecx                                      // 0x0040d488    8bd1
                         {disp8} jmp          _jmp_addr_0x0040d4a3                          // 0x0040d48a    eb17
_jmp_addr_0x0040d48c:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d48c    8b8634020000
                         test                 eax, eax                                      // 0x0040d492    85c0
                         {disp8} je           _jmp_addr_0x0040d49e                          // 0x0040d494    7408
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]             // 0x0040d496    8b90ac000000
                         {disp8} jmp          _jmp_addr_0x0040d4a3                          // 0x0040d49c    eb05
_jmp_addr_0x0040d49e:    mov                  edx, 0x0000000a                               // 0x0040d49e    ba0a000000
_jmp_addr_0x0040d4a3:    test                 ecx, ecx                                      // 0x0040d4a3    85c9
                         {disp8} jne          _jmp_addr_0x0040d4be                          // 0x0040d4a5    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d4a7    8b8634020000
                         test                 eax, eax                                      // 0x0040d4ad    85c0
                         {disp8} je           _jmp_addr_0x0040d4b9                          // 0x0040d4af    7408
                         {disp32} mov         ecx, dword ptr [eax + 0x000000ac]             // 0x0040d4b1    8b88ac000000
                         {disp8} jmp          _jmp_addr_0x0040d4be                          // 0x0040d4b7    eb05
_jmp_addr_0x0040d4b9:    mov                  ecx, 0x0000000a                               // 0x0040d4b9    b90a000000
_jmp_addr_0x0040d4be:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040d4be    8b4614
                         push                 0x0                                           // 0x0040d4c1    6a00
                         push                 0x1                                           // 0x0040d4c3    6a01
                         push                 ebx                                           // 0x0040d4c5    53
                         push                 edx                                           // 0x0040d4c6    52
                         push                 edi                                           // 0x0040d4c7    57
                         push                 0x1                                           // 0x0040d4c8    6a01
                         push                 eax                                           // 0x0040d4ca    50
                         lea                  edx, dword ptr [eax + ecx * 0x1]              // 0x0040d4cb    8d1408
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040d4ce    8b4e10
                         push                 edx                                           // 0x0040d4d1    52
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040d4d2    8b5608
                         push                 ecx                                           // 0x0040d4d5    51
                         push                 eax                                           // 0x0040d4d6    50
                         push                 edx                                           // 0x0040d4d7    52
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040d4d8    e873420000
                         fstp                 st(0)                                         // 0x0040d4dd    ddd8
                         {disp32} fild        dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0040d4df    db053481c300
                         add                  esp, 0x2c                                     // 0x0040d4e5    83c42c
                         {disp32} fmul        dword ptr [_rdata_float0p001]                 // 0x0040d4e8    d80db0a38a00
                         {disp32} fadd        dword ptr [esi + 0x00000258]                  // 0x0040d4ee    d88658020000
                         {disp32} fcom        dword ptr [esi + 0x0000025c]                  // 0x0040d4f4    d8965c020000
                         {disp32} fst         dword ptr [esi + 0x00000258]                  // 0x0040d4fa    d99658020000
                         fnstsw               ax                                            // 0x0040d500    dfe0
                         test                 ah, 0x01                                      // 0x0040d502    f6c401
                         {disp8} jne          _jmp_addr_0x0040d539                          // 0x0040d505    7532
                         {disp32} mov         eax, dword ptr [esi + 0x00000248]             // 0x0040d507    8b8648020000
                         fstp                 st(0)                                         // 0x0040d50d    ddd8
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]             // 0x0040d50f    8b8e4c020000
                         {disp32} mov         edx, dword ptr [esi + 0x0000025c]             // 0x0040d515    8b965c020000
                         {disp32} mov         dword ptr [esi + 0x00000244], eax             // 0x0040d51b    898644020000
                         {disp32} mov         dword ptr [esi + 0x00000250], ecx             // 0x0040d521    898e50020000
                         {disp32} mov         dword ptr [esi + 0x00000254], 0x00000000      // 0x0040d527    c7865402000000000000
                         {disp32} mov         dword ptr [esi + 0x00000258], edx             // 0x0040d531    899658020000
                         {disp8} jmp          _jmp_addr_0x0040d5b5                          // 0x0040d537    eb7c
_jmp_addr_0x0040d539:    fld                  st(0)                                         // 0x0040d539    d9c0
                         fld                  st(0)                                         // 0x0040d53b    d9c0
                         fmulp                st(1), st                                     // 0x0040d53d    dec9
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x0040d53f    d80db4a38a00
                         fld                  st(1)                                         // 0x0040d545    d9c1
                         fmul                 st, st(1)                                     // 0x0040d547    d8c9
                         {disp32} fmul        dword ptr [__real@3eaaaaab]                   // 0x0040d549    d80d6cb28a00
                         fld                  st(1)                                         // 0x0040d54f    d9c1
                         {disp32} fmul        dword ptr [esi + 0x0000026c]                  // 0x0040d551    d88e6c020000
                         fld                  st(1)                                         // 0x0040d557    d9c1
                         {disp32} fmul        dword ptr [esi + 0x00000270]                  // 0x0040d559    d88e70020000
                         faddp                st(1), st                                     // 0x0040d55f    dec1
                         fxch                 st(3)                                         // 0x0040d561    d9cb
                         {disp32} fmul        dword ptr [esi + 0x00000268]                  // 0x0040d563    d88e68020000
                         faddp                st(3), st                                     // 0x0040d569    dec3
                         fxch                 st(2)                                         // 0x0040d56b    d9ca
                         {disp32} fadd        dword ptr [esi + 0x00000264]                  // 0x0040d56d    d88664020000
                         {disp32} fstp        dword ptr [esi + 0x00000250]                  // 0x0040d573    d99e50020000
                         fld                  st(0)                                         // 0x0040d579    d9c0
                         fmul                 st, st(1)                                     // 0x0040d57b    d8c9
                         {disp32} fmul        dword ptr [__real@3e2aaaab]                   // 0x0040d57d    d80d68b28a00
                         {disp32} fmul        dword ptr [esi + 0x00000270]                  // 0x0040d583    d88e70020000
                         fxch                 st(2)                                         // 0x0040d589    d9ca
                         {disp32} fmul        dword ptr [esi + 0x0000026c]                  // 0x0040d58b    d88e6c020000
                         faddp                st(2), st                                     // 0x0040d591    dec2
                         {disp32} fmul        dword ptr [esi + 0x00000268]                  // 0x0040d593    d88e68020000
                         faddp                st(1), st                                     // 0x0040d599    dec1
                         {disp32} fld         dword ptr [esi + 0x00000264]                  // 0x0040d59b    d98664020000
                         {disp32} fmul        dword ptr [esi + 0x00000258]                  // 0x0040d5a1    d88e58020000
                         faddp                st(1), st                                     // 0x0040d5a7    dec1
                         {disp32} fadd        dword ptr [esi + 0x00000260]                  // 0x0040d5a9    d88660020000
                         {disp32} fstp        dword ptr [esi + 0x00000244]                  // 0x0040d5af    d99e44020000
_jmp_addr_0x0040d5b5:    {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040d5b5    8b4608
                         add                  eax, 0x02                                     // 0x0040d5b8    83c002
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040d5bb    89442414
                         {disp32} mov         eax, dword ptr [esi + 0x00000274]             // 0x0040d5bf    8b8674020000
                         test                 eax, eax                                      // 0x0040d5c5    85c0
                         push                 ebp                                           // 0x0040d5c7    55
                         {disp8} mov          dword ptr [esp + 0x24], 0x00000000            // 0x0040d5c8    c744242400000000
                         {disp32} je          _jmp_addr_0x0040d6ee                          // 0x0040d5d0    0f8418010000
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040d5d6    8b4004
                         test                 eax, eax                                      // 0x0040d5d9    85c0
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040d5db    89442410
                         {disp32} je          _jmp_addr_0x0040d6ee                          // 0x0040d5df    0f8409010000
                         {disp8} jmp          _jmp_addr_0x0040d5eb                          // 0x0040d5e5    eb04
_jmp_addr_0x0040d5e7:    {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0040d5e7    8b442410
_jmp_addr_0x0040d5eb:    {disp8} fld          dword ptr [eax + 0x04]                        // 0x0040d5eb    d94004
                         mov                  edi, dword ptr [eax]                          // 0x0040d5ee    8b38
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040d5f0    8b4608
                         fabs                                                               // 0x0040d5f3    d9e1
                         {disp8} fadd         dword ptr [esp + 0x24]                        // 0x0040d5f5    d8442424
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040d5f9    8b4e10
                         sub.s                ecx, eax                                      // 0x0040d5fc    2bc8
                         sub                  ecx, 0x04                                     // 0x0040d5fe    83e904
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x0040d601    d95c2424
                         {disp8} mov          dword ptr [esp + 0x1c], ecx                   // 0x0040d605    894c241c
                         {disp32} fld         dword ptr [esi + 0x00000244]                  // 0x0040d609    d98644020000
                         {disp8} lea          edx, dword ptr [eax + 0x02]                   // 0x0040d60f    8d5002
                         {disp8} fmul         dword ptr [esp + 0x24]                        // 0x0040d612    d84c2424
                         {disp8} mov          dword ptr [esp + 0x14], edx                   // 0x0040d616    89542414
                         or                   edi, 0xff000000                               // 0x0040d61a    81cf000000ff
                         {disp32} fdiv        dword ptr [esi + 0x0000027c]                  // 0x0040d620    d8b67c020000
                         mov.s                ebp, edi                                      // 0x0040d626    8bef
                         and                  ebp, 0x7fffffff                               // 0x0040d628    81e5ffffff7f
                         {disp8} fimul        dword ptr [esp + 0x1c]                        // 0x0040d62e    da4c241c
                         {disp8} fiadd        dword ptr [esp + 0x14]                        // 0x0040d632    da442414
                         call                 _jmp_addr_0x007a1400                          // 0x0040d636    e8c53d3900
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040d63b    8b4e0c
                         {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040d63e    8b5614
                         mov.s                ebx, eax                                      // 0x0040d641    8bd8
                         mov.s                eax, ecx                                      // 0x0040d643    8bc1
                         add.s                eax, edx                                      // 0x0040d645    03c2
                         cdq                                                                // 0x0040d647    99
                         sub.s                eax, edx                                      // 0x0040d648    2bc2
                         mov.s                edx, eax                                      // 0x0040d64a    8bd0
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x0040d64c    8b442414
                         sar                  edx, 1                                        // 0x0040d650    d1fa
                         cmp.s                ebx, eax                                      // 0x0040d652    3bd8
                         {disp8} mov          dword ptr [esp + 0x1c], edx                   // 0x0040d654    8954241c
                         {disp8} jle          _jmp_addr_0x0040d664                          // 0x0040d658    7e0a
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040d65a    8b4610
                         add                  eax, -0x02                                    // 0x0040d65d    83c0fe
                         cmp.s                ebx, eax                                      // 0x0040d660    3bd8
                         {disp8} jl           _jmp_addr_0x0040d666                          // 0x0040d662    7c02
_jmp_addr_0x0040d664:    mov.s                ebx, eax                                      // 0x0040d664    8bd8
_jmp_addr_0x0040d666:    {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0040d666    8b442410
                         {disp8} fld          dword ptr [eax + 0x04]                        // 0x0040d66a    d94004
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x0040d66d    d81d98a38a00
                         fnstsw               ax                                            // 0x0040d673    dfe0
                         test                 ah, 0x01                                      // 0x0040d675    f6c401
                         {disp8} je           _jmp_addr_0x0040d680                          // 0x0040d678    7406
                         xor.s                edi, ebp                                      // 0x0040d67a    33fd
                         xor.s                ebp, edi                                      // 0x0040d67c    33ef
                         xor.s                edi, ebp                                      // 0x0040d67e    33fd
_jmp_addr_0x0040d680:    push                 0x1                                           // 0x0040d680    6a01
                         push                 0x0                                           // 0x0040d682    6a00
                         push                 edi                                           // 0x0040d684    57
                         push                 edi                                           // 0x0040d685    57
                         push                 ebp                                           // 0x0040d686    55
                         push                 ebp                                           // 0x0040d687    55
                         push                 edx                                           // 0x0040d688    52
                         add                  ecx, 0x2                                      // 0x0040d689    83c102
                         push                 ebx                                           // 0x0040d68c    53
                         push                 ecx                                           // 0x0040d68d    51
                         {disp8} mov          ecx, dword ptr [esp + 0x3c]                   // 0x0040d68e    8b4c243c
                         push                 ecx                                           // 0x0040d692    51
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040d693    e8285c0000
                         {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040d698    8b5614
                         {disp8} mov          eax, dword ptr [esp + 0x44]                   // 0x0040d69b    8b442444
                         {disp8} mov          ecx, dword ptr [esp + 0x40]                   // 0x0040d69f    8b4c2440
                         push                 0x1                                           // 0x0040d6a3    6a01
                         push                 0x0                                           // 0x0040d6a5    6a00
                         push                 ebp                                           // 0x0040d6a7    55
                         push                 ebp                                           // 0x0040d6a8    55
                         push                 edi                                           // 0x0040d6a9    57
                         push                 edi                                           // 0x0040d6aa    57
                         sub                  edx, 0x02                                     // 0x0040d6ab    83ea02
                         push                 edx                                           // 0x0040d6ae    52
                         push                 ebx                                           // 0x0040d6af    53
                         push                 eax                                           // 0x0040d6b0    50
                         push                 ecx                                           // 0x0040d6b1    51
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040d6b2    e8095c0000
                         {disp32} mov         eax, dword ptr [esi + 0x00000274]             // 0x0040d6b7    8b8674020000
                         add                  esp, 0x50                                     // 0x0040d6bd    83c450
                         test                 eax, eax                                      // 0x0040d6c0    85c0
                         {disp8} mov          dword ptr [esp + 0x18], ebx                   // 0x0040d6c2    895c2418
                         {disp8} je           _jmp_addr_0x0040d6ee                          // 0x0040d6c6    7426
_jmp_addr_0x0040d6c8:    {disp8} mov          ecx, dword ptr [eax + 0x04]                   // 0x0040d6c8    8b4804
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x0040d6cb    8b542410
                         cmp.s                ecx, edx                                      // 0x0040d6cf    3bca
                         mov                  eax, dword ptr [eax]                          // 0x0040d6d1    8b00
                         {disp8} je           _jmp_addr_0x0040d6db                          // 0x0040d6d3    7406
                         test                 eax, eax                                      // 0x0040d6d5    85c0
                         {disp8} je           _jmp_addr_0x0040d6ee                          // 0x0040d6d7    7415
                         {disp8} jmp          _jmp_addr_0x0040d6c8                          // 0x0040d6d9    ebed
_jmp_addr_0x0040d6db:    test                 eax, eax                                      // 0x0040d6db    85c0
                         {disp8} je           _jmp_addr_0x0040d6ee                          // 0x0040d6dd    740f
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040d6df    8b4004
                         test                 eax, eax                                      // 0x0040d6e2    85c0
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040d6e4    89442410
                         {disp32} jne         _jmp_addr_0x0040d5e7                          // 0x0040d6e8    0f85f9feffff
_jmp_addr_0x0040d6ee:    {disp8} mov          ebp, dword ptr [esi + 0x08]                   // 0x0040d6ee    8b6e08
                         {disp32} fld         dword ptr [rdata_bytes + 0x23d4]              // 0x0040d6f1    d905d4b38a00
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040d6f7    8b4610
                         {disp8} fst          dword ptr [esp + 0x18]                        // 0x0040d6fa    d9542418
                         sub.s                eax, ebp                                      // 0x0040d6fe    2bc5
                         cdq                                                                // 0x0040d700    99
                         and                  edx, 0x03                                     // 0x0040d701    83e203
                         add.s                eax, edx                                      // 0x0040d704    03c2
                         sar                  eax, 2                                        // 0x0040d706    c1f802
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0040d709    8944241c
                         {disp8} fild         dword ptr [esp + 0x1c]                        // 0x0040d70d    db44241c
                         pop                  ebp                                           // 0x0040d711    5d
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040d712    d95c2410
                         {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040d716    d9867c020000
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2418]              // 0x0040d71c    d80d18b48a00
                         {disp8} fcomp        dword ptr [esp + 0x10]                        // 0x0040d722    d85c2410
                         fnstsw               ax                                            // 0x0040d726    dfe0
                         test                 ah, 0x41                                      // 0x0040d728    f6c441
                         {disp8} jne          _jmp_addr_0x0040d746                          // 0x0040d72b    7519
_jmp_addr_0x0040d72d:    fadd.s               st(0), st(0)                                  // 0x0040d72d    dcc0
                         {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040d72f    d9867c020000
                         fdiv                 st, st(1)                                     // 0x0040d735    d8f1
                         {disp8} fcomp        dword ptr [esp + 0x10]                        // 0x0040d737    d85c2410
                         fnstsw               ax                                            // 0x0040d73b    dfe0
                         test                 ah, 0x41                                      // 0x0040d73d    f6c441
                         {disp8} je           _jmp_addr_0x0040d72d                          // 0x0040d740    74eb
                         {disp8} fst          dword ptr [esp + 0x14]                        // 0x0040d742    d9542414
_jmp_addr_0x0040d746:    {disp8} fst          dword ptr [esp + 0x0c]                        // 0x0040d746    d954240c
                         mov                  ebx, 0x00000001                               // 0x0040d74a    bb01000000
                         {disp32} fcomp       dword ptr [esi + 0x0000027c]                  // 0x0040d74f    d89e7c020000
                         fnstsw               ax                                            // 0x0040d755    dfe0
                         test                 bl, ah                                        // 0x0040d757    84e3
                         {disp32} je          _jmp_addr_0x0040d7df                          // 0x0040d759    0f8480000000
_jmp_addr_0x0040d75f:    {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040d75f    8b4e10
                         mov.s                eax, ebx                                      // 0x0040d762    8bc3
                         and                  al, 0x03                                      // 0x0040d764    2403
                         neg                  al                                            // 0x0040d766    f6d8
                         sbb.s                eax, eax                                      // 0x0040d768    1bc0
                         and                  eax, 0xc0000000                               // 0x0040d76a    25000000c0
                         add                  eax, 0x50ffffff                               // 0x0040d76f    05ffffff50
                         mov.s                edi, eax                                      // 0x0040d774    8bf8
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040d776    8b4608
                         sub.s                ecx, eax                                      // 0x0040d779    2bc8
                         sub                  ecx, 0x04                                     // 0x0040d77b    83e904
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040d77e    894c2418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040d782    db442418
                         {disp8} fld          dword ptr [esp + 0x0c]                        // 0x0040d786    d944240c
                         add                  eax, 0x02                                     // 0x0040d78a    83c002
                         {disp32} fdiv        dword ptr [esi + 0x0000027c]                  // 0x0040d78d    d8b67c020000
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040d793    89442418
                         inc                  ebx                                           // 0x0040d797    43
                         fmulp                st(1), st                                     // 0x0040d798    dec9
                         {disp8} fiadd        dword ptr [esp + 0x18]                        // 0x0040d79a    da442418
                         call                 _jmp_addr_0x007a1400                          // 0x0040d79e    e85d3c3900
                         {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040d7a3    8b5614
                         push                 0x1                                           // 0x0040d7a6    6a01
                         push                 0x0                                           // 0x0040d7a8    6a00
                         push                 edi                                           // 0x0040d7aa    57
                         push                 edi                                           // 0x0040d7ab    57
                         push                 edi                                           // 0x0040d7ac    57
                         push                 edi                                           // 0x0040d7ad    57
                         sub                  edx, 0x02                                     // 0x0040d7ae    83ea02
                         push                 edx                                           // 0x0040d7b1    52
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040d7b2    8b560c
                         {disp8} lea          ecx, dword ptr [eax + 0x01]                   // 0x0040d7b5    8d4801
                         push                 ecx                                           // 0x0040d7b8    51
                         add                  edx, 0x02                                     // 0x0040d7b9    83c202
                         push                 edx                                           // 0x0040d7bc    52
                         push                 eax                                           // 0x0040d7bd    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040d7be    e8fd5a0000
                         {disp8} fld          dword ptr [esp + 0x34]                        // 0x0040d7c3    d9442434
                         {disp8} fadd         dword ptr [esp + 0x3c]                        // 0x0040d7c7    d844243c
                         add                  esp, 0x28                                     // 0x0040d7cb    83c428
                         {disp8} fst          dword ptr [esp + 0x0c]                        // 0x0040d7ce    d954240c
                         {disp32} fcomp       dword ptr [esi + 0x0000027c]                  // 0x0040d7d2    d89e7c020000
                         fnstsw               ax                                            // 0x0040d7d8    dfe0
                         test                 ah, 0x01                                      // 0x0040d7da    f6c401
                         {disp8} jne          _jmp_addr_0x0040d75f                          // 0x0040d7dd    7580
_jmp_addr_0x0040d7df:    {disp32} mov         al, byte ptr [esp + 0x00000228]               // 0x0040d7df    8a842428020000
                         test                 al, al                                        // 0x0040d7e6    84c0
                         {disp32} je          _jmp_addr_0x0040d987                          // 0x0040d7e8    0f8499010000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x0040d7ee    a1c052e800
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0040d7f3    8b0dc452e800
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040d7f9    89442418
                         {disp8} mov          dword ptr [esp + 0x0c], eax                   // 0x0040d7fd    8944240c
                         {disp8} lea          eax, dword ptr [esp + 0x18]                   // 0x0040d801    8d442418
                         {disp8} mov          dword ptr [esp + 0x1c], ecx                   // 0x0040d805    894c241c
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040d809    894c2418
                         push                 eax                                           // 0x0040d80d    50
                         {disp8} lea          ecx, dword ptr [esp + 0x10]                   // 0x0040d80e    8d4c2410
                         push                 ecx                                           // 0x0040d812    51
                         call                 ?unadjust@SetupThing@@SAMAAH0@Z               // 0x0040d813    e818440000
                         fstp                 st(0)                                         // 0x0040d818    ddd8
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040d81a    8b4608
                         {disp8} mov          edx, dword ptr [esp + 0x14]                   // 0x0040d81d    8b542414
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040d821    8b4e10
                         sub.s                edx, eax                                      // 0x0040d824    2bd0
                         sub                  edx, 0x02                                     // 0x0040d826    83ea02
                         sub.s                ecx, eax                                      // 0x0040d829    2bc8
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040d82b    89542418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040d82f    db442418
                         sub                  ecx, 0x04                                     // 0x0040d833    83e904
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040d836    894c2418
                         add                  esp, 0x08                                     // 0x0040d83a    83c408
                         {disp8} fidiv        dword ptr [esp + 0x10]                        // 0x0040d83d    da742410
                         {disp32} fmul        dword ptr [esi + 0x0000027c]                  // 0x0040d841    d88e7c020000
                         {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0040d847    d81598a38a00
                         fnstsw               ax                                            // 0x0040d84d    dfe0
                         test                 ah, 0x41                                      // 0x0040d84f    f6c441
                         {disp8} jne          _jmp_addr_0x0040d86f                          // 0x0040d852    751b
                         {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040d854    d9867c020000
                         fld                  st(1)                                         // 0x0040d85a    d9c1
                         fcompp                                                             // 0x0040d85c    ded9
                         fnstsw               ax                                            // 0x0040d85e    dfe0
                         test                 ah, 0x01                                      // 0x0040d860    f6c401
                         {disp8} jne          _jmp_addr_0x0040d877                          // 0x0040d863    7512
                         fstp                 st(0)                                         // 0x0040d865    ddd8
                         {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040d867    d9867c020000
                         {disp8} jmp          _jmp_addr_0x0040d877                          // 0x0040d86d    eb08
_jmp_addr_0x0040d86f:    fstp                 st(0)                                         // 0x0040d86f    ddd8
                         {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x0040d871    d90598a38a00
_jmp_addr_0x0040d877:    {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040d877    d9867c020000
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x2414]              // 0x0040d87d    d81d14b48a00
                         fnstsw               ax                                            // 0x0040d883    dfe0
                         test                 ah, 0x41                                      // 0x0040d885    f6c441
                         {disp8} je           _jmp_addr_0x0040d8a4                          // 0x0040d888    741a
                         sub                  esp, 0x08                                     // 0x0040d88a    83ec08
                         fstp                 qword ptr [esp]                               // 0x0040d88d    dd1c24
                         {disp8} lea          edx, dword ptr [esp + 0x2c]                   // 0x0040d890    8d54242c
                         push                 0x009c8210                                    // 0x0040d894    6810829c00
                         push                 edx                                           // 0x0040d899    52
                         call                 _swprintf                                     // 0x0040d89a    e8e08b3b00
                         add                  esp, 0x10                                     // 0x0040d89f    83c410
                         {disp8} jmp          _jmp_addr_0x0040d8bc                          // 0x0040d8a2    eb18
_jmp_addr_0x0040d8a4:    call                 _jmp_addr_0x007a1400                          // 0x0040d8a4    e8573b3900
                         push                 eax                                           // 0x0040d8a9    50
                         {disp8} lea          eax, dword ptr [esp + 0x28]                   // 0x0040d8aa    8d442428
                         push                 0x009c8208                                    // 0x0040d8ae    6808829c00
                         push                 eax                                           // 0x0040d8b3    50
                         call                 _swprintf                                     // 0x0040d8b4    e8c68b3b00
                         add                  esp, 0x0c                                     // 0x0040d8b9    83c40c
_jmp_addr_0x0040d8bc:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040d8bc    8b4620
                         test                 eax, eax                                      // 0x0040d8bf    85c0
                         {disp8} je           _jmp_addr_0x0040d8c7                          // 0x0040d8c1    7404
                         mov.s                ecx, eax                                      // 0x0040d8c3    8bc8
                         {disp8} jmp          _jmp_addr_0x0040d8de                          // 0x0040d8c5    eb17
_jmp_addr_0x0040d8c7:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040d8c7    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040d8cd    85c9
                         {disp8} je           _jmp_addr_0x0040d8d9                          // 0x0040d8cf    7408
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000ac]             // 0x0040d8d1    8b89ac000000
                         {disp8} jmp          _jmp_addr_0x0040d8de                          // 0x0040d8d7    eb05
_jmp_addr_0x0040d8d9:    mov                  ecx, 0x0000000a                               // 0x0040d8d9    b90a000000
_jmp_addr_0x0040d8de:    test                 eax, eax                                      // 0x0040d8de    85c0
                         {disp8} jne          _jmp_addr_0x0040d8f9                          // 0x0040d8e0    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d8e2    8b8634020000
                         test                 eax, eax                                      // 0x0040d8e8    85c0
                         {disp8} je           _jmp_addr_0x0040d8f4                          // 0x0040d8ea    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040d8ec    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040d8f9                          // 0x0040d8f2    eb05
_jmp_addr_0x0040d8f4:    mov                  eax, 0x0000000a                               // 0x0040d8f4    b80a000000
_jmp_addr_0x0040d8f9:    {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040d8f9    8b560c
                         push                 0x0                                           // 0x0040d8fc    6a00
                         push                 0x00c4ccdc                                    // 0x0040d8fe    68dcccc400
                         push                 ecx                                           // 0x0040d903    51
                         {disp8} lea          ecx, dword ptr [esp + 0x30]                   // 0x0040d904    8d4c2430
                         push                 ecx                                           // 0x0040d908    51
                         sub.s                edx, eax                                      // 0x0040d909    2bd0
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x0040d90b    8b44241c
                         push                 0x1                                           // 0x0040d90f    6a01
                         dec                  edx                                           // 0x0040d911    4a
                         push                 0x64                                          // 0x0040d912    6a64
                         push                 edx                                           // 0x0040d914    52
                         inc                  eax                                           // 0x0040d915    40
                         push                 eax                                           // 0x0040d916    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040d917    e894400000
                         fstp                 st(0)                                         // 0x0040d91c    ddd8
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040d91e    8b4620
                         add                  esp, 0x20                                     // 0x0040d921    83c420
                         test                 eax, eax                                      // 0x0040d924    85c0
                         {disp8} je           _jmp_addr_0x0040d92c                          // 0x0040d926    7404
                         mov.s                ecx, eax                                      // 0x0040d928    8bc8
                         {disp8} jmp          _jmp_addr_0x0040d943                          // 0x0040d92a    eb17
_jmp_addr_0x0040d92c:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040d92c    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040d932    85c9
                         {disp8} je           _jmp_addr_0x0040d93e                          // 0x0040d934    7408
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000ac]             // 0x0040d936    8b89ac000000
                         {disp8} jmp          _jmp_addr_0x0040d943                          // 0x0040d93c    eb05
_jmp_addr_0x0040d93e:    mov                  ecx, 0x0000000a                               // 0x0040d93e    b90a000000
_jmp_addr_0x0040d943:    test                 eax, eax                                      // 0x0040d943    85c0
                         {disp8} jne          _jmp_addr_0x0040d95e                          // 0x0040d945    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040d947    8b8634020000
                         test                 eax, eax                                      // 0x0040d94d    85c0
                         {disp8} je           _jmp_addr_0x0040d959                          // 0x0040d94f    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040d951    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040d95e                          // 0x0040d957    eb05
_jmp_addr_0x0040d959:    mov                  eax, 0x0000000a                               // 0x0040d959    b80a000000
_jmp_addr_0x0040d95e:    {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040d95e    8b560c
                         push                 0x0                                           // 0x0040d961    6a00
                         push                 0x00c4ccf8                                    // 0x0040d963    68f8ccc400
                         push                 ecx                                           // 0x0040d968    51
                         {disp8} lea          ecx, dword ptr [esp + 0x30]                   // 0x0040d969    8d4c2430
                         push                 ecx                                           // 0x0040d96d    51
                         push                 0x1                                           // 0x0040d96e    6a01
                         sub.s                edx, eax                                      // 0x0040d970    2bd0
                         {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x0040d972    8b442420
                         push                 0x64                                          // 0x0040d976    6a64
                         sub                  edx, 0x02                                     // 0x0040d978    83ea02
                         push                 edx                                           // 0x0040d97b    52
                         push                 eax                                           // 0x0040d97c    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040d97d    e82e400000
                         fstp                 st(0)                                         // 0x0040d982    ddd8
                         add                  esp, 0x20                                     // 0x0040d984    83c420
_jmp_addr_0x0040d987:    pop                  edi                                           // 0x0040d987    5f
                         pop                  esi                                           // 0x0040d988    5e
                         pop                  ebx                                           // 0x0040d989    5b
                         add                  esp, 0x00000218                               // 0x0040d98a    81c418020000
                         ret                  0x0008                                        // 0x0040d990    c20800
                         nop                                                                // 0x0040d993    90
                         nop                                                                // 0x0040d994    90
                         nop                                                                // 0x0040d995    90
                         nop                                                                // 0x0040d996    90
                         nop                                                                // 0x0040d997    90
                         nop                                                                // 0x0040d998    90
                         nop                                                                // 0x0040d999    90
                         nop                                                                // 0x0040d99a    90
                         nop                                                                // 0x0040d99b    90
                         nop                                                                // 0x0040d99c    90
                         nop                                                                // 0x0040d99d    90
                         nop                                                                // 0x0040d99e    90
                         nop                                                                // 0x0040d99f    90
_SetScale__15SetupHSBarGraphFf:
                         {disp8} fld          dword ptr [esp + 0x04]                        // 0x0040d9a0    d9442404
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x0040d9a4    d81d98a38a00
                         fnstsw               ax                                            // 0x0040d9aa    dfe0
                         test                 ah, 0x41                                      // 0x0040d9ac    f6c441
                         {disp8} je           _jmp_addr_0x0040da18                          // 0x0040d9af    7467
                         {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040d9b1    8b8174020000
                         {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x0040d9b7    d90598a38a00
                         test                 eax, eax                                      // 0x0040d9bd    85c0
                         {disp8} je           _jmp_addr_0x0040da00                          // 0x0040d9bf    743f
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040d9c1    8b5004
                         test                 edx, edx                                      // 0x0040d9c4    85d2
                         {disp8} je           _jmp_addr_0x0040da00                          // 0x0040d9c6    7438
_jmp_addr_0x0040d9c8:    {disp8} fld          dword ptr [edx + 0x04]                        // 0x0040d9c8    d94204
                         {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040d9cb    8b8174020000
                         test                 eax, eax                                      // 0x0040d9d1    85c0
                         fabs                                                               // 0x0040d9d3    d9e1
                         fxch                 st(1)                                         // 0x0040d9d5    d9c9
                         faddp                st(1), st                                     // 0x0040d9d7    dec1
                         {disp8} je           _jmp_addr_0x0040d9f3                          // 0x0040d9d9    7418
_jmp_addr_0x0040d9db:    cmp                  dword ptr [eax + 0x04], edx                   // 0x0040d9db    395004
                         mov                  eax, dword ptr [eax]                          // 0x0040d9de    8b00
                         {disp8} je           _jmp_addr_0x0040d9e8                          // 0x0040d9e0    7406
                         test                 eax, eax                                      // 0x0040d9e2    85c0
                         {disp8} je           _jmp_addr_0x0040d9f3                          // 0x0040d9e4    740d
                         {disp8} jmp          _jmp_addr_0x0040d9db                          // 0x0040d9e6    ebf3
_jmp_addr_0x0040d9e8:    test                 eax, eax                                      // 0x0040d9e8    85c0
                         {disp8} je           _jmp_addr_0x0040d9f3                          // 0x0040d9ea    7407
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040d9ec    8b5004
                         test                 edx, edx                                      // 0x0040d9ef    85d2
                         {disp8} jne          _jmp_addr_0x0040d9c8                          // 0x0040d9f1    75d5
_jmp_addr_0x0040d9f3:    {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0040d9f3    d81598a38a00
                         fnstsw               ax                                            // 0x0040d9f9    dfe0
                         test                 ah, 0x41                                      // 0x0040d9fb    f6c441
                         {disp8} je           _jmp_addr_0x0040da0f                          // 0x0040d9fe    740f
_jmp_addr_0x0040da00:    fstp                 st(0)                                         // 0x0040da00    ddd8
                         {disp32} mov         dword ptr [ecx + 0x0000027c], 0x3f800000      // 0x0040da02    c7817c0200000000803f
                         ret                  0x0004                                        // 0x0040da0c    c20400
_jmp_addr_0x0040da0f:    {disp32} fstp        dword ptr [ecx + 0x0000027c]                  // 0x0040da0f    d9997c020000
                         ret                  0x0004                                        // 0x0040da15    c20400
_jmp_addr_0x0040da18:    {disp8} mov          eax, dword ptr [esp + 0x04]                   // 0x0040da18    8b442404
                         {disp32} mov         dword ptr [ecx + 0x0000027c], eax             // 0x0040da1c    89817c020000
                         ret                  0x0004                                        // 0x0040da22    c20400
                         nop                                                                // 0x0040da25    90
                         nop                                                                // 0x0040da26    90
                         nop                                                                // 0x0040da27    90
                         nop                                                                // 0x0040da28    90
                         nop                                                                // 0x0040da29    90
                         nop                                                                // 0x0040da2a    90
                         nop                                                                // 0x0040da2b    90
                         nop                                                                // 0x0040da2c    90
                         nop                                                                // 0x0040da2d    90
                         nop                                                                // 0x0040da2e    90
                         nop                                                                // 0x0040da2f    90
@SetNum__9HLineDataFi@12:push                 ebx                                           // 0x0040da30    53
                         push                 ebp                                           // 0x0040da31    55
                         {disp8} mov          ebp, dword ptr [esp + 0x0c]                   // 0x0040da32    8b6c240c
                         test                 ebp, ebp                                      // 0x0040da36    85ed
                         push                 esi                                           // 0x0040da38    56
                         push                 edi                                           // 0x0040da39    57
                         mov.s                ebx, ecx                                      // 0x0040da3a    8bd9
                         {disp8} jge          _jmp_addr_0x0040da40                          // 0x0040da3c    7d02
                         xor.s                ebp, ebp                                      // 0x0040da3e    33ed
_jmp_addr_0x0040da40:    push                 0x0000076d                                    // 0x0040da40    686d070000
                         {disp32} lea         esi, dword ptr [ebp * 0x4 + 0x00000000]       // 0x0040da45    8d34ad00000000
                         push                 0x009c8190                                    // 0x0040da4c    6890819c00
                         push                 esi                                           // 0x0040da51    56
                         call                 ___nw__FUl                                    // 0x0040da52    e839dd3c00
                         mov.s                edx, eax                                      // 0x0040da57    8bd0
                         mov.s                ecx, esi                                      // 0x0040da59    8bce
                         shr                  ecx, 2                                        // 0x0040da5b    c1e902
                         xor.s                eax, eax                                      // 0x0040da5e    33c0
                         mov.s                edi, edx                                      // 0x0040da60    8bfa
                         rep stosd                                                          // 0x0040da62    f3ab
                         mov.s                ecx, esi                                      // 0x0040da64    8bce
                         and                  ecx, 0x03                                     // 0x0040da66    83e103
                         rep stosb                                                          // 0x0040da69    f3aa
                         {disp8} mov          eax, dword ptr [ebx + 0x04]                   // 0x0040da6b    8b4304
                         add                  esp, 0x0c                                     // 0x0040da6e    83c40c
                         cmp.s                ebp, eax                                      // 0x0040da71    3be8
                         {disp8} mov          dword ptr [esp + 0x14], edx                   // 0x0040da73    89542414
                         {disp8} jge          _jmp_addr_0x0040da7b                          // 0x0040da77    7d02
                         mov.s                eax, ebp                                      // 0x0040da79    8bc5
_jmp_addr_0x0040da7b:    {disp8} mov          esi, dword ptr [ebx + 0x08]                   // 0x0040da7b    8b7308
                         mov.s                ecx, eax                                      // 0x0040da7e    8bc8
                         mov.s                edi, edx                                      // 0x0040da80    8bfa
                         rep movsd            es:[edi], dword ptr ds:[esi]                  // 0x0040da82    f3a5
                         {disp8} mov          eax, dword ptr [ebx + 0x08]                   // 0x0040da84    8b4308
                         push                 eax                                           // 0x0040da87    50
                         call                 ??3@YAXPAX@Z                                  // 0x0040da88    e80b143a00
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x0040da8d    8b4c2418
                         add                  esp, 0x04                                     // 0x0040da91    83c404
                         pop                  edi                                           // 0x0040da94    5f
                         pop                  esi                                           // 0x0040da95    5e
                         {disp8} mov          dword ptr [ebx + 0x04], ebp                   // 0x0040da96    896b04
                         pop                  ebp                                           // 0x0040da99    5d
                         {disp8} mov          dword ptr [ebx + 0x08], ecx                   // 0x0040da9a    894b08
                         pop                  ebx                                           // 0x0040da9d    5b
                         ret                  0x0004                                        // 0x0040da9e    c20400
                         nop                                                                // 0x0040daa1    90
                         nop                                                                // 0x0040daa2    90
                         nop                                                                // 0x0040daa3    90
                         nop                                                                // 0x0040daa4    90
                         nop                                                                // 0x0040daa5    90
                         nop                                                                // 0x0040daa6    90
                         nop                                                                // 0x0040daa7    90
                         nop                                                                // 0x0040daa8    90
                         nop                                                                // 0x0040daa9    90
                         nop                                                                // 0x0040daaa    90
                         nop                                                                // 0x0040daab    90
                         nop                                                                // 0x0040daac    90
                         nop                                                                // 0x0040daad    90
                         nop                                                                // 0x0040daae    90
                         nop                                                                // 0x0040daaf    90
_Draw__15SetupHLineGraphFbb:
                         sub                  esp, 0x00000244                               // 0x0040dab0    81ec44020000
                         push                 ebx                                           // 0x0040dab6    53
                         push                 ebp                                           // 0x0040dab7    55
                         push                 esi                                           // 0x0040dab8    56
                         push                 edi                                           // 0x0040dab9    57
                         push                 -0x1                                          // 0x0040daba    6aff
                         push                 -0x1                                          // 0x0040dabc    6aff
                         mov.s                esi, ecx                                      // 0x0040dabe    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040dac0    8b4614
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040dac3    8b4e10
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040dac6    8b560c
                         push                 0x10                                          // 0x0040dac9    6a10
                         push                 0x1                                           // 0x0040dacb    6a01
                         push                 eax                                           // 0x0040dacd    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040dace    8b4608
                         push                 ecx                                           // 0x0040dad1    51
                         push                 edx                                           // 0x0040dad2    52
                         push                 eax                                           // 0x0040dad3    50
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x0040dad4    e847610000
                         {disp8} mov          edx, dword ptr [esi + 0x20]                   // 0x0040dad9    8b5620
                         add                  esp, 0x20                                     // 0x0040dadc    83c420
                         test                 edx, edx                                      // 0x0040dadf    85d2
                         {disp8} je           _jmp_addr_0x0040dae7                          // 0x0040dae1    7404
                         mov.s                ebx, edx                                      // 0x0040dae3    8bda
                         {disp8} jmp          _jmp_addr_0x0040dafe                          // 0x0040dae5    eb17
_jmp_addr_0x0040dae7:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040dae7    8b8634020000
                         test                 eax, eax                                      // 0x0040daed    85c0
                         {disp8} je           _jmp_addr_0x0040daf9                          // 0x0040daef    7408
                         {disp32} mov         ebx, dword ptr [eax + 0x000000ac]             // 0x0040daf1    8b98ac000000
                         {disp8} jmp          _jmp_addr_0x0040dafe                          // 0x0040daf7    eb05
_jmp_addr_0x0040daf9:    mov                  ebx, 0x0000000a                               // 0x0040daf9    bb0a000000
_jmp_addr_0x0040dafe:    test                 edx, edx                                      // 0x0040dafe    85d2
                         {disp8} jne          _jmp_addr_0x0040db19                          // 0x0040db00    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040db02    8b8634020000
                         test                 eax, eax                                      // 0x0040db08    85c0
                         {disp8} je           _jmp_addr_0x0040db14                          // 0x0040db0a    7408
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]             // 0x0040db0c    8b90ac000000
                         {disp8} jmp          _jmp_addr_0x0040db19                          // 0x0040db12    eb05
_jmp_addr_0x0040db14:    mov                  edx, 0x0000000a                               // 0x0040db14    ba0a000000
_jmp_addr_0x0040db19:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040db19    8b4614
                         push                 0x0                                           // 0x0040db1c    6a00
                         push                 0x1                                           // 0x0040db1e    6a01
                         push                 0x00c4ccdc                                    // 0x0040db20    68dcccc400
                         push                 ebx                                           // 0x0040db25    53
                         {disp8} lea          ecx, dword ptr [eax + 0x01]                   // 0x0040db26    8d4801
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x0040db29    8d7e24
                         push                 edi                                           // 0x0040db2c    57
                         push                 0x1                                           // 0x0040db2d    6a01
                         push                 ecx                                           // 0x0040db2f    51
                         {disp8} lea          edx, dword ptr [edx + eax * 0x1 + 0x01]       // 0x0040db30    8d540201
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040db34    8b4610
                         push                 edx                                           // 0x0040db37    52
                         inc                  eax                                           // 0x0040db38    40
                         push                 eax                                           // 0x0040db39    50
                         push                 ecx                                           // 0x0040db3a    51
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040db3b    8b4e08
                         inc                  ecx                                           // 0x0040db3e    41
                         push                 ecx                                           // 0x0040db3f    51
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040db40    e80b3c0000
                         fstp                 st(0)                                         // 0x0040db45    ddd8
                         {disp32} mov         al, byte ptr [esp + 0x00000284]               // 0x0040db47    8a842484020000
                         add                  esp, 0x2c                                     // 0x0040db4e    83c42c
                         test                 al, al                                        // 0x0040db51    84c0
                         {disp8} jne          _jmp_addr_0x0040db6d                          // 0x0040db53    7518
                         {disp32} mov         al, byte ptr [esp + 0x0000025c]               // 0x0040db55    8a84245c020000
                         test                 al, al                                        // 0x0040db5c    84c0
                         {disp8} je           _jmp_addr_0x0040db66                          // 0x0040db5e    7406
                         cmp                  word ptr [edi], 0x00                          // 0x0040db60    66833f00
                         {disp8} je           _jmp_addr_0x0040db6d                          // 0x0040db64    7407
_jmp_addr_0x0040db66:    mov                  ebx, 0x00c4ccf8                               // 0x0040db66    bbf8ccc400
                         {disp8} jmp          _jmp_addr_0x0040db72                          // 0x0040db6b    eb05
_jmp_addr_0x0040db6d:    mov                  ebx, 0x00c4cce4                               // 0x0040db6d    bbe4ccc400
_jmp_addr_0x0040db72:    {disp8} mov          ecx, dword ptr [esi + 0x20]                   // 0x0040db72    8b4e20
                         test                 ecx, ecx                                      // 0x0040db75    85c9
                         {disp8} je           _jmp_addr_0x0040db7d                          // 0x0040db77    7404
                         mov.s                edx, ecx                                      // 0x0040db79    8bd1
                         {disp8} jmp          _jmp_addr_0x0040db94                          // 0x0040db7b    eb17
_jmp_addr_0x0040db7d:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040db7d    8b8634020000
                         test                 eax, eax                                      // 0x0040db83    85c0
                         {disp8} je           _jmp_addr_0x0040db8f                          // 0x0040db85    7408
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]             // 0x0040db87    8b90ac000000
                         {disp8} jmp          _jmp_addr_0x0040db94                          // 0x0040db8d    eb05
_jmp_addr_0x0040db8f:    mov                  edx, 0x0000000a                               // 0x0040db8f    ba0a000000
_jmp_addr_0x0040db94:    test                 ecx, ecx                                      // 0x0040db94    85c9
                         {disp8} jne          _jmp_addr_0x0040dbaf                          // 0x0040db96    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040db98    8b8634020000
                         test                 eax, eax                                      // 0x0040db9e    85c0
                         {disp8} je           _jmp_addr_0x0040dbaa                          // 0x0040dba0    7408
                         {disp32} mov         ecx, dword ptr [eax + 0x000000ac]             // 0x0040dba2    8b88ac000000
                         {disp8} jmp          _jmp_addr_0x0040dbaf                          // 0x0040dba8    eb05
_jmp_addr_0x0040dbaa:    mov                  ecx, 0x0000000a                               // 0x0040dbaa    b90a000000
_jmp_addr_0x0040dbaf:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040dbaf    8b4614
                         push                 0x0                                           // 0x0040dbb2    6a00
                         push                 0x1                                           // 0x0040dbb4    6a01
                         push                 ebx                                           // 0x0040dbb6    53
                         push                 edx                                           // 0x0040dbb7    52
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040dbb8    8b5610
                         push                 edi                                           // 0x0040dbbb    57
                         push                 0x1                                           // 0x0040dbbc    6a01
                         push                 eax                                           // 0x0040dbbe    50
                         add.s                ecx, eax                                      // 0x0040dbbf    03c8
                         push                 ecx                                           // 0x0040dbc1    51
                         push                 edx                                           // 0x0040dbc2    52
                         push                 eax                                           // 0x0040dbc3    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040dbc4    8b4608
                         push                 eax                                           // 0x0040dbc7    50
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040dbc8    e8833b0000
                         fstp                 st(0)                                         // 0x0040dbcd    ddd8
                         {disp32} fld         dword ptr [esi + 0x0000024c]                  // 0x0040dbcf    d9864c020000
                         {disp32} mov         al, byte ptr [esi + 0x00000254]               // 0x0040dbd5    8a8654020000
                         {disp32} fsub        dword ptr [esi + 0x00000250]                  // 0x0040dbdb    d8a650020000
                         add                  esp, 0x2c                                     // 0x0040dbe1    83c42c
                         test                 al, al                                        // 0x0040dbe4    84c0
                         {disp8} fstp         dword ptr [esp + 0x2c]                        // 0x0040dbe6    d95c242c
                         {disp32} je          _jmp_addr_0x0040de89                          // 0x0040dbea    0f8499020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040dbf0    8b8644020000
                         xor.s                edx, edx                                      // 0x0040dbf6    33d2
                         test                 eax, eax                                      // 0x0040dbf8    85c0
                         {disp32} je          _jmp_addr_0x0040e18e                          // 0x0040dbfa    0f848e050000
                         {disp8} mov          ecx, dword ptr [eax + 0x04]                   // 0x0040dc00    8b4804
                         test                 ecx, ecx                                      // 0x0040dc03    85c9
                         {disp32} je          _jmp_addr_0x0040e18e                          // 0x0040dc05    0f8483050000
_jmp_addr_0x0040dc0b:    {disp8} mov          eax, dword ptr [ecx + 0x04]                   // 0x0040dc0b    8b4104
                         cmp.s                eax, edx                                      // 0x0040dc0e    3bc2
                         {disp8} jl           _jmp_addr_0x0040dc16                          // 0x0040dc10    7c04
                         test                 edx, edx                                      // 0x0040dc12    85d2
                         {disp8} jne          _jmp_addr_0x0040dc18                          // 0x0040dc14    7502
_jmp_addr_0x0040dc16:    mov.s                edx, eax                                      // 0x0040dc16    8bd0
_jmp_addr_0x0040dc18:    {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040dc18    8b8644020000
                         test                 eax, eax                                      // 0x0040dc1e    85c0
                         {disp8} je           _jmp_addr_0x0040dc3a                          // 0x0040dc20    7418
_jmp_addr_0x0040dc22:    cmp                  dword ptr [eax + 0x04], ecx                   // 0x0040dc22    394804
                         mov                  eax, dword ptr [eax]                          // 0x0040dc25    8b00
                         {disp8} je           _jmp_addr_0x0040dc2f                          // 0x0040dc27    7406
                         test                 eax, eax                                      // 0x0040dc29    85c0
                         {disp8} je           _jmp_addr_0x0040dc3a                          // 0x0040dc2b    740d
                         {disp8} jmp          _jmp_addr_0x0040dc22                          // 0x0040dc2d    ebf3
_jmp_addr_0x0040dc2f:    test                 eax, eax                                      // 0x0040dc2f    85c0
                         {disp8} je           _jmp_addr_0x0040dc3a                          // 0x0040dc31    7407
                         {disp8} mov          ecx, dword ptr [eax + 0x04]                   // 0x0040dc33    8b4804
                         test                 ecx, ecx                                      // 0x0040dc36    85c9
                         {disp8} jne          _jmp_addr_0x0040dc0b                          // 0x0040dc38    75d1
_jmp_addr_0x0040dc3a:    cmp                  edx, 0x02                                     // 0x0040dc3a    83fa02
                         {disp32} jl          _jmp_addr_0x0040e18e                          // 0x0040dc3d    0f8c4b050000
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040dc43    8b4608
                         {disp8} lea          ecx, dword ptr [eax + 0x02]                   // 0x0040dc46    8d4802
                         {disp8} mov          dword ptr [esp + 0x24], ecx                   // 0x0040dc49    894c2424
                         {disp8} fild         dword ptr [esp + 0x24]                        // 0x0040dc4d    db442424
                         {disp8} lea          ecx, dword ptr [edx + -0x01]                  // 0x0040dc51    8d4aff
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040dc54    8b5610
                         sub.s                edx, eax                                      // 0x0040dc57    2bd0
                         sub                  edx, 0x04                                     // 0x0040dc59    83ea04
                         {disp8} fstp         dword ptr [esp + 0x20]                        // 0x0040dc5c    d95c2420
                         test                 ecx, ecx                                      // 0x0040dc60    85c9
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x0040dc62    89542424
                         {disp8} fild         dword ptr [esp + 0x24]                        // 0x0040dc66    db442424
                         {disp8} mov          dword ptr [esp + 0x34], ecx                   // 0x0040dc6a    894c2434
                         {disp8} fidiv        dword ptr [esp + 0x34]                        // 0x0040dc6e    da742434
                         {disp8} fstp         dword ptr [esp + 0x34]                        // 0x0040dc72    d95c2434
                         {disp32} jle         _jmp_addr_0x0040e18e                          // 0x0040dc76    0f8e12050000
                         {disp8} mov          dword ptr [esp + 0x28], 0x00000000            // 0x0040dc7c    c744242800000000
                         {disp8} mov          dword ptr [esp + 0x24], ecx                   // 0x0040dc84    894c2424
_jmp_addr_0x0040dc88:    {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040dc88    8b8644020000
                         test                 eax, eax                                      // 0x0040dc8e    85c0
                         {disp8} mov          dword ptr [esp + 0x10], 0x00000000            // 0x0040dc90    c744241000000000
                         {disp8} mov          dword ptr [esp + 0x14], 0x00000000            // 0x0040dc98    c744241400000000
                         {disp32} je          _jmp_addr_0x0040dd2b                          // 0x0040dca0    0f8485000000
                         {disp8} mov          ecx, dword ptr [eax + 0x04]                   // 0x0040dca6    8b4804
                         test                 ecx, ecx                                      // 0x0040dca9    85c9
                         {disp8} je           _jmp_addr_0x0040dd2b                          // 0x0040dcab    747e
                         {disp8} mov          edx, dword ptr [esp + 0x28]                   // 0x0040dcad    8b542428
_jmp_addr_0x0040dcb1:    {disp8} mov          eax, dword ptr [ecx + 0x08]                   // 0x0040dcb1    8b4108
                         {disp8} fld          dword ptr [esp + 0x10]                        // 0x0040dcb4    d9442410
                         fadd                 dword ptr [edx + eax * 0x1]                   // 0x0040dcb8    d80402
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040dcbb    d95c2410
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040dcbf    d9442414
                         {disp8} fadd         dword ptr [edx + eax * 0x1 + 0x04]            // 0x0040dcc3    d8440204
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040dcc7    8b8644020000
                         test                 eax, eax                                      // 0x0040dccd    85c0
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x0040dccf    d95c2414
                         {disp8} je           _jmp_addr_0x0040dced                          // 0x0040dcd3    7418
_jmp_addr_0x0040dcd5:    cmp                  dword ptr [eax + 0x04], ecx                   // 0x0040dcd5    394804
                         mov                  eax, dword ptr [eax]                          // 0x0040dcd8    8b00
                         {disp8} je           _jmp_addr_0x0040dce2                          // 0x0040dcda    7406
                         test                 eax, eax                                      // 0x0040dcdc    85c0
                         {disp8} je           _jmp_addr_0x0040dced                          // 0x0040dcde    740d
                         {disp8} jmp          _jmp_addr_0x0040dcd5                          // 0x0040dce0    ebf3
_jmp_addr_0x0040dce2:    test                 eax, eax                                      // 0x0040dce2    85c0
                         {disp8} je           _jmp_addr_0x0040dced                          // 0x0040dce4    7407
                         {disp8} mov          ecx, dword ptr [eax + 0x04]                   // 0x0040dce6    8b4804
                         test                 ecx, ecx                                      // 0x0040dce9    85c9
                         {disp8} jne          _jmp_addr_0x0040dcb1                          // 0x0040dceb    75c4
_jmp_addr_0x0040dced:    {disp8} fld          dword ptr [esp + 0x10]                        // 0x0040dced    d9442410
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x0040dcf1    d81d98a38a00
                         fnstsw               ax                                            // 0x0040dcf7    dfe0
                         test                 ah, 0x40                                      // 0x0040dcf9    f6c440
                         {disp8} jne          _jmp_addr_0x0040dd0c                          // 0x0040dcfc    750e
                         {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x0040dcfe    d90590a38a00
                         {disp8} fdiv         dword ptr [esp + 0x10]                        // 0x0040dd04    d8742410
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040dd08    d95c2410
_jmp_addr_0x0040dd0c:    {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040dd0c    d9442414
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x0040dd10    d81d98a38a00
                         fnstsw               ax                                            // 0x0040dd16    dfe0
                         test                 ah, 0x40                                      // 0x0040dd18    f6c440
                         {disp8} jne          _jmp_addr_0x0040dd2b                          // 0x0040dd1b    750e
                         {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x0040dd1d    d90590a38a00
                         {disp8} fdiv         dword ptr [esp + 0x14]                        // 0x0040dd23    d8742414
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x0040dd27    d95c2414
_jmp_addr_0x0040dd2b:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040dd2b    8b4614
                         add                  eax, -0x02                                    // 0x0040dd2e    83c0fe
                         {disp8} mov          dword ptr [esp + 0x4c], eax                   // 0x0040dd31    8944244c
                         {disp8} mov          dword ptr [esp + 0x50], eax                   // 0x0040dd35    89442450
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040dd39    8b8644020000
                         test                 eax, eax                                      // 0x0040dd3f    85c0
                         {disp8} mov          dword ptr [esp + 0x48], 0x00000000            // 0x0040dd41    c744244800000000
                         {disp8} mov          dword ptr [esp + 0x44], 0x00000000            // 0x0040dd49    c744244400000000
                         {disp32} je          _jmp_addr_0x0040de5e                          // 0x0040dd51    0f8407010000
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040dd57    8b4004
                         test                 eax, eax                                      // 0x0040dd5a    85c0
                         {disp8} mov          dword ptr [esp + 0x30], eax                   // 0x0040dd5c    89442430
                         {disp32} je          _jmp_addr_0x0040de5e                          // 0x0040dd60    0f84f8000000
                         {disp8} fld          dword ptr [esp + 0x34]                        // 0x0040dd66    d9442434
                         {disp8} fadd         dword ptr [esp + 0x20]                        // 0x0040dd6a    d8442420
                         call                 _jmp_addr_0x007a1400                          // 0x0040dd6e    e88d363900
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x0040dd73    d9442420
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040dd77    89442418
                         call                 _jmp_addr_0x007a1400                          // 0x0040dd7b    e880363900
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x0040dd80    8944243c
_jmp_addr_0x0040dd84:    {disp8} mov          eax, dword ptr [esp + 0x30]                   // 0x0040dd84    8b442430
                         {disp8} fld          dword ptr [esp + 0x10]                        // 0x0040dd88    d9442410
                         mov                  edi, dword ptr [eax]                          // 0x0040dd8c    8b38
                         {disp8} mov          eax, dword ptr [eax + 0x08]                   // 0x0040dd8e    8b4008
                         {disp8} mov          ecx, dword ptr [esp + 0x28]                   // 0x0040dd91    8b4c2428
                         fmul                 dword ptr [ecx + eax * 0x1]                   // 0x0040dd95    d80c01
                         or                   edi, 0xff000000                               // 0x0040dd98    81cf000000ff
                         mov.s                ebp, edi                                      // 0x0040dd9e    8bef
                         and                  ebp, 0x00ffffff                               // 0x0040dda0    81e5ffffff00
                         {disp8} fadd         dword ptr [esp + 0x48]                        // 0x0040dda6    d8442448
                         {disp8} fstp         dword ptr [esp + 0x48]                        // 0x0040ddaa    d95c2448
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040ddae    d9442414
                         {disp8} fmul         dword ptr [ecx + eax * 0x1 + 0x04]            // 0x0040ddb2    d84c0104
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040ddb6    8b4614
                         {disp8} lea          ecx, dword ptr [eax + -0x02]                  // 0x0040ddb9    8d48fe
                         {disp8} mov          dword ptr [esp + 0x38], ecx                   // 0x0040ddbc    894c2438
                         {disp8} fadd         dword ptr [esp + 0x44]                        // 0x0040ddc0    d8442444
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040ddc4    8b4e0c
                         sub.s                eax, ecx                                      // 0x0040ddc7    2bc1
                         sub                  eax, 0x04                                     // 0x0040ddc9    83e804
                         {disp8} fstp         dword ptr [esp + 0x44]                        // 0x0040ddcc    d95c2444
                         {disp8} fild         dword ptr [esp + 0x38]                        // 0x0040ddd0    db442438
                         {disp8} mov          dword ptr [esp + 0x38], eax                   // 0x0040ddd4    89442438
                         {disp8} fild         dword ptr [esp + 0x38]                        // 0x0040ddd8    db442438
                         fld                  st(0)                                         // 0x0040dddc    d9c0
                         {disp8} fmul         dword ptr [esp + 0x48]                        // 0x0040ddde    d84c2448
                         fsubr                st, st(2)                                     // 0x0040dde2    d8ea
                         call                 _jmp_addr_0x007a1400                          // 0x0040dde4    e817363900
                         {disp8} fmul         dword ptr [esp + 0x44]                        // 0x0040dde9    d84c2444
                         mov.s                ebx, eax                                      // 0x0040dded    8bd8
                         fsubr                st, st(1)                                     // 0x0040ddef    d8e9
                         call                 _jmp_addr_0x007a1400                          // 0x0040ddf1    e80a363900
                         fstp                 st(0)                                         // 0x0040ddf6    ddd8
                         {disp8} mov          ecx, dword ptr [esp + 0x3c]                   // 0x0040ddf8    8b4c243c
                         {disp8} mov          edx, dword ptr [esp + 0x50]                   // 0x0040ddfc    8b542450
                         push                 0x1                                           // 0x0040de00    6a01
                         push                 0x0                                           // 0x0040de02    6a00
                         push                 edi                                           // 0x0040de04    57
                         push                 edi                                           // 0x0040de05    57
                         push                 ebp                                           // 0x0040de06    55
                         push                 ebp                                           // 0x0040de07    55
                         push                 ebx                                           // 0x0040de08    53
                         push                 ecx                                           // 0x0040de09    51
                         push                 eax                                           // 0x0040de0a    50
                         {disp8} mov          dword ptr [esp + 0x5c], eax                   // 0x0040de0b    8944245c
                         {disp8} mov          eax, dword ptr [esp + 0x3c]                   // 0x0040de0f    8b44243c
                         push                 eax                                           // 0x0040de13    50
                         push                 edx                                           // 0x0040de14    52
                         push                 eax                                           // 0x0040de15    50
                         {disp8} mov          eax, dword ptr [esp + 0x7c]                   // 0x0040de16    8b44247c
                         push                 eax                                           // 0x0040de1a    50
                         push                 ecx                                           // 0x0040de1b    51
                         call                 ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z     // 0x0040de1c    e88f500000
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040de21    8b8644020000
                         {disp8} mov          ecx, dword ptr [esp + 0x70]                   // 0x0040de27    8b4c2470
                         add                  esp, 0x38                                     // 0x0040de2b    83c438
                         test                 eax, eax                                      // 0x0040de2e    85c0
                         {disp8} mov          dword ptr [esp + 0x4c], ebx                   // 0x0040de30    895c244c
                         {disp8} mov          dword ptr [esp + 0x50], ecx                   // 0x0040de34    894c2450
                         {disp8} je           _jmp_addr_0x0040de5e                          // 0x0040de38    7424
                         {disp8} mov          ecx, dword ptr [esp + 0x30]                   // 0x0040de3a    8b4c2430
_jmp_addr_0x0040de3e:    cmp                  dword ptr [eax + 0x04], ecx                   // 0x0040de3e    394804
                         mov                  eax, dword ptr [eax]                          // 0x0040de41    8b00
                         {disp8} je           _jmp_addr_0x0040de4b                          // 0x0040de43    7406
                         test                 eax, eax                                      // 0x0040de45    85c0
                         {disp8} je           _jmp_addr_0x0040de5e                          // 0x0040de47    7415
                         {disp8} jmp          _jmp_addr_0x0040de3e                          // 0x0040de49    ebf3
_jmp_addr_0x0040de4b:    test                 eax, eax                                      // 0x0040de4b    85c0
                         {disp8} je           _jmp_addr_0x0040de5e                          // 0x0040de4d    740f
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040de4f    8b4004
                         test                 eax, eax                                      // 0x0040de52    85c0
                         {disp8} mov          dword ptr [esp + 0x30], eax                   // 0x0040de54    89442430
                         {disp32} jne         _jmp_addr_0x0040dd84                          // 0x0040de58    0f8526ffffff
_jmp_addr_0x0040de5e:    {disp8} fld          dword ptr [esp + 0x34]                        // 0x0040de5e    d9442434
                         {disp8} mov          ecx, dword ptr [esp + 0x28]                   // 0x0040de62    8b4c2428
                         {disp8} mov          eax, dword ptr [esp + 0x24]                   // 0x0040de66    8b442424
                         {disp8} fadd         dword ptr [esp + 0x20]                        // 0x0040de6a    d8442420
                         add                  ecx, 0x4                                      // 0x0040de6e    83c104
                         dec                  eax                                           // 0x0040de71    48
                         {disp8} fstp         dword ptr [esp + 0x20]                        // 0x0040de72    d95c2420
                         {disp8} mov          dword ptr [esp + 0x28], ecx                   // 0x0040de76    894c2428
                         {disp8} mov          dword ptr [esp + 0x24], eax                   // 0x0040de7a    89442424
                         {disp32} jne         _jmp_addr_0x0040dc88                          // 0x0040de7e    0f8504feffff
                         {disp32} jmp         _jmp_addr_0x0040e18e                          // 0x0040de84    e905030000
_jmp_addr_0x0040de89:    {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040de89    8b8644020000
                         test                 eax, eax                                      // 0x0040de8f    85c0
                         {disp32} je          _jmp_addr_0x0040e18e                          // 0x0040de91    0f84f7020000
                         {disp8} mov          ebp, dword ptr [eax + 0x04]                   // 0x0040de97    8b6804
                         test                 ebp, ebp                                      // 0x0040de9a    85ed
                         {disp8} mov          dword ptr [esp + 0x10], ebp                   // 0x0040de9c    896c2410
                         {disp32} je          _jmp_addr_0x0040e18e                          // 0x0040dea0    0f84e8020000
_jmp_addr_0x0040dea6:    {disp8} mov          eax, dword ptr [ebp + 0x00]                   // 0x0040dea6    8b4500
                         {disp8} mov          ecx, dword ptr [ebp + 0x04]                   // 0x0040dea9    8b4d04
                         or                   eax, 0xff000000                               // 0x0040deac    0d000000ff
                         {disp8} mov          dword ptr [esp + 0x30], eax                   // 0x0040deb1    89442430
                         and                  eax, 0x00ffffff                               // 0x0040deb5    25ffffff00
                         cmp                  ecx, 0x01                                     // 0x0040deba    83f901
                         {disp8} mov          dword ptr [esp + 0x34], eax                   // 0x0040debd    89442434
                         {disp32} jle         _jmp_addr_0x0040e164                          // 0x0040dec1    0f8e9d020000
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040dec7    8b4608
                         {disp8} lea          edx, dword ptr [eax + 0x02]                   // 0x0040deca    8d5002
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040decd    89542418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040ded1    db442418
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040ded5    8b5610
                         sub.s                edx, eax                                      // 0x0040ded8    2bd0
                         sub                  edx, 0x04                                     // 0x0040deda    83ea04
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040dedd    89542418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040dee1    db442418
                         dec                  ecx                                           // 0x0040dee5    49
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040dee6    894c2418
                         {disp8} fidiv        dword ptr [esp + 0x18]                        // 0x0040deea    da742418
                         {disp8} mov          edi, dword ptr [esi + 0x14]                   // 0x0040deee    8b7e14
                         {disp8} mov          ecx, dword ptr [ebp + 0x08]                   // 0x0040def1    8b4d08
                         {disp8} mov          ebx, dword ptr [esi + 0x0c]                   // 0x0040def4    8b5e0c
                         {disp8} lea          eax, dword ptr [edi + -0x02]                  // 0x0040def7    8d47fe
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040defa    89442418
                         mov.s                edx, edi                                      // 0x0040defe    8bd7
                         sub.s                edx, ebx                                      // 0x0040df00    2bd3
                         sub                  edx, 0x04                                     // 0x0040df02    83ea04
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x0040df05    d95c2424
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040df09    db442418
                         fld                  dword ptr [ecx]                               // 0x0040df0d    d901
                         {disp32} fsub        dword ptr [esi + 0x00000250]                  // 0x0040df0f    d8a650020000
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040df15    89542418
                         {disp8} fdiv         dword ptr [esp + 0x2c]                        // 0x0040df19    d874242c
                         {disp8} fimul        dword ptr [esp + 0x18]                        // 0x0040df1d    da4c2418
                         fsubp                st(1), st                                     // 0x0040df21    dee9
                         call                 _jmp_addr_0x007a1400                          // 0x0040df23    e8d8343900
                         add                  ebx, 0x04                                     // 0x0040df28    83c304
                         cmp.s                eax, ebx                                      // 0x0040df2b    3bc3
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x0040df2d    89442428
                         {disp8} jle          _jmp_addr_0x0040df40                          // 0x0040df31    7e0d
                         {disp8} lea          ecx, dword ptr [edi + -0x04]                  // 0x0040df33    8d4ffc
                         cmp.s                eax, ecx                                      // 0x0040df36    3bc1
                         {disp8} jl           _jmp_addr_0x0040df44                          // 0x0040df38    7c0a
                         {disp8} mov          dword ptr [esp + 0x28], ecx                   // 0x0040df3a    894c2428
                         {disp8} jmp          _jmp_addr_0x0040df44                          // 0x0040df3e    eb04
_jmp_addr_0x0040df40:    {disp8} mov          dword ptr [esp + 0x28], ebx                   // 0x0040df40    895c2428
_jmp_addr_0x0040df44:    cmp                  dword ptr [ebp + 0x04], 0x01                  // 0x0040df44    837d0401
                         {disp8} mov          dword ptr [esp + 0x14], 0x00000001            // 0x0040df48    c744241401000000
                         {disp32} jle         _jmp_addr_0x0040e003                          // 0x0040df50    0f8ead000000
_jmp_addr_0x0040df56:    {disp8} mov          ebx, dword ptr [esi + 0x14]                   // 0x0040df56    8b5e14
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x0040df59    8b4c2410
                         {disp8} mov          edx, dword ptr [ecx + 0x08]                   // 0x0040df5d    8b5108
                         {disp8} mov          ebp, dword ptr [esi + 0x0c]                   // 0x0040df60    8b6e0c
                         {disp8} lea          eax, dword ptr [ebx + -0x02]                  // 0x0040df63    8d43fe
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040df66    89442418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040df6a    db442418
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x0040df6e    8b442414
                         fld                  dword ptr [edx + eax * 0x4]                   // 0x0040df72    d90482
                         mov.s                ecx, ebx                                      // 0x0040df75    8bcb
                         {disp32} fsub        dword ptr [esi + 0x00000250]                  // 0x0040df77    d8a650020000
                         sub.s                ecx, ebp                                      // 0x0040df7d    2bcd
                         sub                  ecx, 0x04                                     // 0x0040df7f    83e904
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040df82    894c2418
                         {disp8} fdiv         dword ptr [esp + 0x2c]                        // 0x0040df86    d874242c
                         {disp8} fimul        dword ptr [esp + 0x18]                        // 0x0040df8a    da4c2418
                         fsubp                st(1), st                                     // 0x0040df8e    dee9
                         call                 _jmp_addr_0x007a1400                          // 0x0040df90    e86b343900
                         mov.s                edi, eax                                      // 0x0040df95    8bf8
                         {disp8} lea          eax, dword ptr [ebp + 0x04]                   // 0x0040df97    8d4504
                         cmp.s                edi, eax                                      // 0x0040df9a    3bf8
                         {disp8} jle          _jmp_addr_0x0040dfa5                          // 0x0040df9c    7e07
                         {disp8} lea          eax, dword ptr [ebx + -0x04]                  // 0x0040df9e    8d43fc
                         cmp.s                edi, eax                                      // 0x0040dfa1    3bf8
                         {disp8} jl           _jmp_addr_0x0040dfa7                          // 0x0040dfa3    7c02
_jmp_addr_0x0040dfa5:    mov.s                edi, eax                                      // 0x0040dfa5    8bf8
_jmp_addr_0x0040dfa7:    {disp8} fld          dword ptr [esp + 0x24]                        // 0x0040dfa7    d9442424
                         {disp8} mov          edx, dword ptr [esp + 0x30]                   // 0x0040dfab    8b542430
                         push                 0x42c80000                                    // 0x0040dfaf    680000c842
                         fadd                 st, st(1)                                     // 0x0040dfb4    d8c1
                         push                 0x0                                           // 0x0040dfb6    6a00
                         push                 0x1                                           // 0x0040dfb8    6a01
                         push                 edx                                           // 0x0040dfba    52
                         {disp8} fstp         dword ptr [esp + 0x30]                        // 0x0040dfbb    d95c2430
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x0040dfbf    d9442430
                         push                 edi                                           // 0x0040dfc3    57
                         call                 _jmp_addr_0x007a1400                          // 0x0040dfc4    e837343900
                         push                 eax                                           // 0x0040dfc9    50
                         {disp8} mov          eax, dword ptr [esp + 0x40]                   // 0x0040dfca    8b442440
                         push                 eax                                           // 0x0040dfce    50
                         call                 _jmp_addr_0x007a1400                          // 0x0040dfcf    e82c343900
                         push                 eax                                           // 0x0040dfd4    50
                         call                 ?DrawLine@SetupThing@@SAXHHHHKHMM@Z           // 0x0040dfd5    e8c6450000
                         {disp8} fld          dword ptr [esp + 0x40]                        // 0x0040dfda    d9442440
                         {disp8} mov          eax, dword ptr [esp + 0x34]                   // 0x0040dfde    8b442434
                         {disp8} mov          ecx, dword ptr [esp + 0x30]                   // 0x0040dfe2    8b4c2430
                         {disp8} mov          edx, dword ptr [ecx + 0x04]                   // 0x0040dfe6    8b5104
                         add                  esp, 0x20                                     // 0x0040dfe9    83c420
                         inc                  eax                                           // 0x0040dfec    40
                         cmp.s                eax, edx                                      // 0x0040dfed    3bc2
                         {disp8} mov          dword ptr [esp + 0x28], edi                   // 0x0040dfef    897c2428
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040dff3    89442414
                         {disp32} jl          _jmp_addr_0x0040df56                          // 0x0040dff7    0f8c59ffffff
                         fstp                 st(0)                                         // 0x0040dffd    ddd8
                         mov.s                ebp, ecx                                      // 0x0040dfff    8be9
                         {disp8} jmp          _jmp_addr_0x0040e005                          // 0x0040e001    eb02
_jmp_addr_0x0040e003:    fstp                 st(0)                                         // 0x0040e003    ddd8
_jmp_addr_0x0040e005:    {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040e005    8b5608
                         {disp8} mov          edi, dword ptr [esi + 0x14]                   // 0x0040e008    8b7e14
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040e00b    8b460c
                         add                  edx, 0x02                                     // 0x0040e00e    83c202
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040e011    89542418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040e015    db442418
                         {disp8} mov          edx, dword ptr [ebp + 0x08]                   // 0x0040e019    8b5508
                         {disp8} lea          ecx, dword ptr [edi + -0x02]                  // 0x0040e01c    8d4ffe
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040e01f    894c2418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040e023    db442418
                         fld                  dword ptr [edx]                               // 0x0040e027    d902
                         mov.s                ecx, edi                                      // 0x0040e029    8bcf
                         {disp32} fsub        dword ptr [esi + 0x00000250]                  // 0x0040e02b    d8a650020000
                         sub.s                ecx, eax                                      // 0x0040e031    2bc8
                         sub                  ecx, 0x04                                     // 0x0040e033    83e904
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x0040e036    894c2418
                         {disp8} fdiv         dword ptr [esp + 0x2c]                        // 0x0040e03a    d874242c
                         {disp8} fimul        dword ptr [esp + 0x18]                        // 0x0040e03e    da4c2418
                         fsubp                st(1), st                                     // 0x0040e042    dee9
                         call                 _jmp_addr_0x007a1400                          // 0x0040e044    e8b7333900
                         mov.s                ebx, eax                                      // 0x0040e049    8bd8
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040e04b    8b460c
                         add                  eax, 0x04                                     // 0x0040e04e    83c004
                         cmp.s                ebx, eax                                      // 0x0040e051    3bd8
                         {disp8} jle          _jmp_addr_0x0040e05c                          // 0x0040e053    7e07
                         {disp8} lea          eax, dword ptr [edi + -0x04]                  // 0x0040e055    8d47fc
                         cmp.s                ebx, eax                                      // 0x0040e058    3bd8
                         {disp8} jl           _jmp_addr_0x0040e05e                          // 0x0040e05a    7c02
_jmp_addr_0x0040e05c:    mov.s                ebx, eax                                      // 0x0040e05c    8bd8
_jmp_addr_0x0040e05e:    {disp8} mov          ecx, dword ptr [ebp + 0x04]                   // 0x0040e05e    8b4d04
                         mov                  eax, 0x00000001                               // 0x0040e061    b801000000
                         cmp.s                ecx, eax                                      // 0x0040e066    3bc8
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040e068    89442414
                         {disp32} jle         _jmp_addr_0x0040e162                          // 0x0040e06c    0f8ef0000000
_jmp_addr_0x0040e072:    {disp8} mov          ebp, dword ptr [esi + 0x14]                   // 0x0040e072    8b6e14
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x0040e075    8b4c2410
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040e079    8b460c
                         {disp8} lea          edx, dword ptr [ebp + -0x02]                  // 0x0040e07c    8d55fe
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040e07f    89542418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040e083    db442418
                         {disp8} mov          edx, dword ptr [ecx + 0x08]                   // 0x0040e087    8b5108
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                   // 0x0040e08a    8b4c2414
                         fld                  dword ptr [edx + ecx * 0x4]                   // 0x0040e08e    d9048a
                         mov.s                edx, ebp                                      // 0x0040e091    8bd5
                         {disp32} fsub        dword ptr [esi + 0x00000250]                  // 0x0040e093    d8a650020000
                         sub.s                edx, eax                                      // 0x0040e099    2bd0
                         sub                  edx, 0x04                                     // 0x0040e09b    83ea04
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x0040e09e    89542418
                         {disp8} fdiv         dword ptr [esp + 0x2c]                        // 0x0040e0a2    d874242c
                         {disp8} fimul        dword ptr [esp + 0x18]                        // 0x0040e0a6    da4c2418
                         fsubp                st(1), st                                     // 0x0040e0aa    dee9
                         call                 _jmp_addr_0x007a1400                          // 0x0040e0ac    e84f333900
                         mov.s                edi, eax                                      // 0x0040e0b1    8bf8
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040e0b3    8b460c
                         add                  eax, 0x04                                     // 0x0040e0b6    83c004
                         cmp.s                edi, eax                                      // 0x0040e0b9    3bf8
                         {disp8} jle          _jmp_addr_0x0040e0c4                          // 0x0040e0bb    7e07
                         {disp8} lea          eax, dword ptr [ebp + -0x04]                  // 0x0040e0bd    8d45fc
                         cmp.s                edi, eax                                      // 0x0040e0c0    3bf8
                         {disp8} jl           _jmp_addr_0x0040e0c6                          // 0x0040e0c2    7c02
_jmp_addr_0x0040e0c4:    mov.s                edi, eax                                      // 0x0040e0c4    8bf8
_jmp_addr_0x0040e0c6:    fld                  st(0)                                         // 0x0040e0c6    d9c0
                         call                 _jmp_addr_0x007a1400                          // 0x0040e0c8    e833333900
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x0040e0cd    d9442424
                         fadd                 st, st(1)                                     // 0x0040e0d1    d8c1
                         mov.s                ebp, eax                                      // 0x0040e0d3    8be8
                         {disp8} fstp         dword ptr [esp + 0x20]                        // 0x0040e0d5    d95c2420
                         fstp                 st(0)                                         // 0x0040e0d9    ddd8
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x0040e0db    d9442420
                         call                 _jmp_addr_0x007a1400                          // 0x0040e0df    e81c333900
                         {disp8} mov          ecx, dword ptr [esp + 0x30]                   // 0x0040e0e4    8b4c2430
                         push                 0x1                                           // 0x0040e0e8    6a01
                         push                 0x0                                           // 0x0040e0ea    6a00
                         push                 ecx                                           // 0x0040e0ec    51
                         push                 ecx                                           // 0x0040e0ed    51
                         {disp8} mov          ecx, dword ptr [esp + 0x44]                   // 0x0040e0ee    8b4c2444
                         push                 ecx                                           // 0x0040e0f2    51
                         push                 ecx                                           // 0x0040e0f3    51
                         push                 ebx                                           // 0x0040e0f4    53
                         push                 ebp                                           // 0x0040e0f5    55
                         push                 edi                                           // 0x0040e0f6    57
                         push                 eax                                           // 0x0040e0f7    50
                         {disp8} lea          ecx, dword ptr [edi + -0x02]                  // 0x0040e0f8    8d4ffe
                         push                 ecx                                           // 0x0040e0fb    51
                         push                 eax                                           // 0x0040e0fc    50
                         {disp8} lea          edx, dword ptr [ebx + -0x02]                  // 0x0040e0fd    8d53fe
                         push                 edx                                           // 0x0040e100    52
                         push                 ebp                                           // 0x0040e101    55
                         {disp8} mov          dword ptr [esp + 0x50], eax                   // 0x0040e102    89442450
                         call                 ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z     // 0x0040e106    e8a54d0000
                         {disp8} mov          eax, dword ptr [esp + 0x68]                   // 0x0040e10b    8b442468
                         push                 0x1                                           // 0x0040e10f    6a01
                         push                 0x0                                           // 0x0040e111    6a00
                         push                 eax                                           // 0x0040e113    50
                         push                 eax                                           // 0x0040e114    50
                         {disp8} mov          eax, dword ptr [esp + 0x7c]                   // 0x0040e115    8b44247c
                         push                 eax                                           // 0x0040e119    50
                         push                 eax                                           // 0x0040e11a    50
                         {disp8} mov          eax, dword ptr [esp + 0x68]                   // 0x0040e11b    8b442468
                         push                 ebx                                           // 0x0040e11f    53
                         push                 ebp                                           // 0x0040e120    55
                         push                 edi                                           // 0x0040e121    57
                         push                 eax                                           // 0x0040e122    50
                         {disp8} lea          ecx, dword ptr [edi + 0x02]                   // 0x0040e123    8d4f02
                         push                 ecx                                           // 0x0040e126    51
                         push                 eax                                           // 0x0040e127    50
                         add                  ebx, 0x02                                     // 0x0040e128    83c302
                         push                 ebx                                           // 0x0040e12b    53
                         push                 ebp                                           // 0x0040e12c    55
                         call                 ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z     // 0x0040e12d    e87e4d0000
                         {disp32} fld         dword ptr [esp + 0x00000090]                  // 0x0040e132    d9842490000000
                         {disp32} mov         eax, dword ptr [esp + 0x00000084]             // 0x0040e139    8b842484000000
                         {disp32} mov         edx, dword ptr [esp + 0x00000080]             // 0x0040e140    8b942480000000
                         {disp8} mov          ecx, dword ptr [edx + 0x04]                   // 0x0040e147    8b4a04
                         add                  esp, 0x70                                     // 0x0040e14a    83c470
                         inc                  eax                                           // 0x0040e14d    40
                         cmp.s                eax, ecx                                      // 0x0040e14e    3bc1
                         mov.s                ebx, edi                                      // 0x0040e150    8bdf
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040e152    89442414
                         {disp32} jl          _jmp_addr_0x0040e072                          // 0x0040e156    0f8c16ffffff
                         fstp                 st(0)                                         // 0x0040e15c    ddd8
                         mov.s                ebp, edx                                      // 0x0040e15e    8bea
                         {disp8} jmp          _jmp_addr_0x0040e164                          // 0x0040e160    eb02
_jmp_addr_0x0040e162:    fstp                 st(0)                                         // 0x0040e162    ddd8
_jmp_addr_0x0040e164:    {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040e164    8b8644020000
                         test                 eax, eax                                      // 0x0040e16a    85c0
                         {disp8} je           _jmp_addr_0x0040e18e                          // 0x0040e16c    7420
_jmp_addr_0x0040e16e:    cmp                  dword ptr [eax + 0x04], ebp                   // 0x0040e16e    396804
                         mov                  eax, dword ptr [eax]                          // 0x0040e171    8b00
                         {disp8} je           _jmp_addr_0x0040e17b                          // 0x0040e173    7406
                         test                 eax, eax                                      // 0x0040e175    85c0
                         {disp8} je           _jmp_addr_0x0040e18e                          // 0x0040e177    7415
                         {disp8} jmp          _jmp_addr_0x0040e16e                          // 0x0040e179    ebf3
_jmp_addr_0x0040e17b:    test                 eax, eax                                      // 0x0040e17b    85c0
                         {disp8} je           _jmp_addr_0x0040e18e                          // 0x0040e17d    740f
                         {disp8} mov          ebp, dword ptr [eax + 0x04]                   // 0x0040e17f    8b6804
                         test                 ebp, ebp                                      // 0x0040e182    85ed
                         {disp8} mov          dword ptr [esp + 0x10], ebp                   // 0x0040e184    896c2410
                         {disp32} jne         _jmp_addr_0x0040dea6                          // 0x0040e188    0f8518fdffff
_jmp_addr_0x0040e18e:    {disp32} mov         al, byte ptr [esi + 0x00000254]               // 0x0040e18e    8a8654020000
                         test                 al, al                                        // 0x0040e194    84c0
                         {disp32} jne         _jmp_addr_0x0040e2cc                          // 0x0040e196    0f8530010000
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040e19c    8b4614
                         sub                  eax, dword ptr [esi + 0x0c]                   // 0x0040e19f    2b460c
                         cdq                                                                // 0x0040e1a2    99
                         and                  edx, 0x03                                     // 0x0040e1a3    83e203
                         add.s                eax, edx                                      // 0x0040e1a6    03c2
                         sar                  eax, 2                                        // 0x0040e1a8    c1f802
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040e1ab    89442418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040e1af    db442418
                         {disp8} mov          dword ptr [esp + 0x10], 0x3e800000            // 0x0040e1b3    c74424100000803e
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x0040e1bb    d95c2424
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x0040e1bf    d944242c
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2418]              // 0x0040e1c3    d80d18b48a00
                         {disp8} fcomp        dword ptr [esp + 0x24]                        // 0x0040e1c9    d85c2424
                         fnstsw               ax                                            // 0x0040e1cd    dfe0
                         test                 ah, 0x41                                      // 0x0040e1cf    f6c441
                         {disp8} jne          _jmp_addr_0x0040e1f1                          // 0x0040e1d2    751d
_jmp_addr_0x0040e1d4:    {disp8} fld          dword ptr [esp + 0x10]                        // 0x0040e1d4    d9442410
                         fadd.s               st(0), st(0)                                  // 0x0040e1d8    dcc0
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040e1da    d95c2410
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x0040e1de    d944242c
                         {disp8} fdiv         dword ptr [esp + 0x10]                        // 0x0040e1e2    d8742410
                         {disp8} fcomp        dword ptr [esp + 0x24]                        // 0x0040e1e6    d85c2424
                         fnstsw               ax                                            // 0x0040e1ea    dfe0
                         test                 ah, 0x41                                      // 0x0040e1ec    f6c441
                         {disp8} je           _jmp_addr_0x0040e1d4                          // 0x0040e1ef    74e3
_jmp_addr_0x0040e1f1:    {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x0040e1f1    d98650020000
                         {disp8} fdiv         dword ptr [esp + 0x10]                        // 0x0040e1f7    d8742410
                         call                 _jmp_addr_0x007a1400                          // 0x0040e1fb    e800323900
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040e200    89442418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0040e204    db442418
                         {disp8} fmul         dword ptr [esp + 0x10]                        // 0x0040e208    d84c2410
                         {disp8} fst          dword ptr [esp + 0x14]                        // 0x0040e20c    d9542414
                         {disp8} fdiv         dword ptr [esp + 0x10]                        // 0x0040e210    d8742410
                         call                 _jmp_addr_0x007a1400                          // 0x0040e214    e8e7313900
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040e219    d9442414
                         {disp32} fcomp       dword ptr [esi + 0x0000024c]                  // 0x0040e21d    d89e4c020000
                         mov.s                ebp, eax                                      // 0x0040e223    8be8
                         fnstsw               ax                                            // 0x0040e225    dfe0
                         test                 ah, 0x01                                      // 0x0040e227    f6c401
                         {disp32} je          _jmp_addr_0x0040e2cc                          // 0x0040e22a    0f849c000000
_jmp_addr_0x0040e230:    mov.s                eax, ebp                                      // 0x0040e230    8bc5
                         and                  al, 0x03                                      // 0x0040e232    2403
                         neg                  al                                            // 0x0040e234    f6d8
                         sbb.s                eax, eax                                      // 0x0040e236    1bc0
                         and                  eax, 0xc0000000                               // 0x0040e238    25000000c0
                         add                  eax, 0x50ffffff                               // 0x0040e23d    05ffffff50
                         test                 ebp, ebp                                      // 0x0040e242    85ed
                         mov.s                edi, eax                                      // 0x0040e244    8bf8
                         {disp8} jne          _jmp_addr_0x0040e24b                          // 0x0040e246    7503
                         or                   edi, 0xffffffff                               // 0x0040e248    83cfff
_jmp_addr_0x0040e24b:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040e24b    8b4614
                         {disp8} mov          ebx, dword ptr [esi + 0x0c]                   // 0x0040e24e    8b5e0c
                         {disp8} lea          ecx, dword ptr [eax + -0x02]                  // 0x0040e251    8d48fe
                         {disp8} mov          dword ptr [esp + 0x24], ecx                   // 0x0040e254    894c2424
                         {disp8} fild         dword ptr [esp + 0x24]                        // 0x0040e258    db442424
                         sub.s                eax, ebx                                      // 0x0040e25c    2bc3
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040e25e    d9442414
                         sub                  eax, 0x04                                     // 0x0040e262    83e804
                         {disp32} fsub        dword ptr [esi + 0x00000250]                  // 0x0040e265    d8a650020000
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040e26b    89442418
                         inc                  ebp                                           // 0x0040e26f    45
                         {disp8} fdiv         dword ptr [esp + 0x2c]                        // 0x0040e270    d874242c
                         {disp8} fimul        dword ptr [esp + 0x18]                        // 0x0040e274    da4c2418
                         fsubp                st(1), st                                     // 0x0040e278    dee9
                         call                 _jmp_addr_0x007a1400                          // 0x0040e27a    e881313900
                         add                  ebx, 0x02                                     // 0x0040e27f    83c302
                         cmp.s                eax, ebx                                      // 0x0040e282    3bc3
                         {disp8} jle          _jmp_addr_0x0040e2af                          // 0x0040e284    7e29
                         cmp                  eax, dword ptr [esp + 0x24]                   // 0x0040e286    3b442424
                         {disp8} jge          _jmp_addr_0x0040e2af                          // 0x0040e28a    7d23
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040e28c    8b4e10
                         push                 0x1                                           // 0x0040e28f    6a01
                         push                 0x0                                           // 0x0040e291    6a00
                         push                 edi                                           // 0x0040e293    57
                         push                 edi                                           // 0x0040e294    57
                         push                 edi                                           // 0x0040e295    57
                         push                 edi                                           // 0x0040e296    57
                         {disp8} lea          edx, dword ptr [eax + 0x01]                   // 0x0040e297    8d5001
                         push                 edx                                           // 0x0040e29a    52
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040e29b    8b5608
                         sub                  ecx, 0x02                                     // 0x0040e29e    83e902
                         push                 ecx                                           // 0x0040e2a1    51
                         push                 eax                                           // 0x0040e2a2    50
                         add                  edx, 0x02                                     // 0x0040e2a3    83c202
                         push                 edx                                           // 0x0040e2a6    52
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040e2a7    e814500000
                         add                  esp, 0x28                                     // 0x0040e2ac    83c428
_jmp_addr_0x0040e2af:    {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040e2af    d9442414
                         {disp8} fadd         dword ptr [esp + 0x10]                        // 0x0040e2b3    d8442410
                         {disp8} fst          dword ptr [esp + 0x14]                        // 0x0040e2b7    d9542414
                         {disp32} fcomp       dword ptr [esi + 0x0000024c]                  // 0x0040e2bb    d89e4c020000
                         fnstsw               ax                                            // 0x0040e2c1    dfe0
                         test                 ah, 0x01                                      // 0x0040e2c3    f6c401
                         {disp32} jne         _jmp_addr_0x0040e230                          // 0x0040e2c6    0f8564ffffff
_jmp_addr_0x0040e2cc:    {disp32} mov         al, byte ptr [esp + 0x00000258]               // 0x0040e2cc    8a842458020000
                         test                 al, al                                        // 0x0040e2d3    84c0
                         {disp32} je          _jmp_addr_0x0040e4f9                          // 0x0040e2d5    0f841e020000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x0040e2db    a1c052e800
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0040e2e0    8b0dc452e800
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040e2e6    89442418
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x0040e2ea    8944243c
                         {disp8} lea          eax, dword ptr [esp + 0x20]                   // 0x0040e2ee    8d442420
                         {disp8} mov          dword ptr [esp + 0x1c], ecx                   // 0x0040e2f2    894c241c
                         {disp8} mov          dword ptr [esp + 0x20], ecx                   // 0x0040e2f6    894c2420
                         push                 eax                                           // 0x0040e2fa    50
                         {disp8} lea          ecx, dword ptr [esp + 0x1c]                   // 0x0040e2fb    8d4c241c
                         push                 ecx                                           // 0x0040e2ff    51
                         call                 ?unadjust@SetupThing@@SAMAAH0@Z               // 0x0040e300    e82b390000
                         fstp                 st(0)                                         // 0x0040e305    ddd8
                         {disp32} mov         cl, byte ptr [esi + 0x00000254]               // 0x0040e307    8a8e54020000
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040e30d    8b4614
                         {disp8} mov          ebp, dword ptr [esp + 0x28]                   // 0x0040e310    8b6c2428
                         add                  esp, 0x08                                     // 0x0040e314    83c408
                         test                 cl, cl                                        // 0x0040e317    84c9
                         mov.s                edx, eax                                      // 0x0040e319    8bd0
                         {disp8} je           _jmp_addr_0x0040e368                          // 0x0040e31b    744b
                         {disp8} mov          edi, dword ptr [esi + 0x0c]                   // 0x0040e31d    8b7e0c
                         sub.s                edx, ebp                                      // 0x0040e320    2bd5
                         sub                  edx, 0x02                                     // 0x0040e322    83ea02
                         sub.s                eax, edi                                      // 0x0040e325    2bc7
                         {disp8} mov          dword ptr [esp + 0x3c], edx                   // 0x0040e327    8954243c
                         {disp8} fild         dword ptr [esp + 0x3c]                        // 0x0040e32b    db44243c
                         sub                  eax, 0x04                                     // 0x0040e32f    83e804
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x0040e332    8944243c
                         {disp8} fidiv        dword ptr [esp + 0x3c]                        // 0x0040e336    da74243c
                         {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0040e33a    d81598a38a00
                         fnstsw               ax                                            // 0x0040e340    dfe0
                         test                 ah, 0x41                                      // 0x0040e342    f6c441
                         {disp8} jne          _jmp_addr_0x0040e35e                          // 0x0040e345    7517
                         {disp32} fcom        dword ptr [_rdata_float1p0]                   // 0x0040e347    d81590a38a00
                         fnstsw               ax                                            // 0x0040e34d    dfe0
                         test                 ah, 0x01                                      // 0x0040e34f    f6c401
                         {disp8} jne          _jmp_addr_0x0040e3c3                          // 0x0040e352    756f
                         fstp                 st(0)                                         // 0x0040e354    ddd8
                         {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x0040e356    d90590a38a00
                         {disp8} jmp          _jmp_addr_0x0040e3c3                          // 0x0040e35c    eb65
_jmp_addr_0x0040e35e:    fstp                 st(0)                                         // 0x0040e35e    ddd8
                         {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x0040e360    d90598a38a00
                         {disp8} jmp          _jmp_addr_0x0040e3c3                          // 0x0040e366    eb5b
_jmp_addr_0x0040e368:    {disp8} mov          edi, dword ptr [esi + 0x0c]                   // 0x0040e368    8b7e0c
                         sub.s                edx, ebp                                      // 0x0040e36b    2bd5
                         sub                  edx, 0x02                                     // 0x0040e36d    83ea02
                         sub.s                eax, edi                                      // 0x0040e370    2bc7
                         {disp8} mov          dword ptr [esp + 0x3c], edx                   // 0x0040e372    8954243c
                         {disp8} fild         dword ptr [esp + 0x3c]                        // 0x0040e376    db44243c
                         sub                  eax, 0x04                                     // 0x0040e37a    83e804
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x0040e37d    8944243c
                         {disp8} fidiv        dword ptr [esp + 0x3c]                        // 0x0040e381    da74243c
                         {disp8} fmul         dword ptr [esp + 0x2c]                        // 0x0040e385    d84c242c
                         {disp32} fadd        dword ptr [esi + 0x00000250]                  // 0x0040e389    d88650020000
                         {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x0040e38f    d98650020000
                         fld                  st(1)                                         // 0x0040e395    d9c1
                         fcompp                                                             // 0x0040e397    ded9
                         fnstsw               ax                                            // 0x0040e399    dfe0
                         test                 ah, 0x41                                      // 0x0040e39b    f6c441
                         {disp8} jne          _jmp_addr_0x0040e3bb                          // 0x0040e39e    751b
                         {disp32} fld         dword ptr [esi + 0x0000024c]                  // 0x0040e3a0    d9864c020000
                         fld                  st(1)                                         // 0x0040e3a6    d9c1
                         fcompp                                                             // 0x0040e3a8    ded9
                         fnstsw               ax                                            // 0x0040e3aa    dfe0
                         test                 ah, 0x01                                      // 0x0040e3ac    f6c401
                         {disp8} jne          _jmp_addr_0x0040e3c3                          // 0x0040e3af    7512
                         fstp                 st(0)                                         // 0x0040e3b1    ddd8
                         {disp32} fld         dword ptr [esi + 0x0000024c]                  // 0x0040e3b3    d9864c020000
                         {disp8} jmp          _jmp_addr_0x0040e3c3                          // 0x0040e3b9    eb08
_jmp_addr_0x0040e3bb:    fstp                 st(0)                                         // 0x0040e3bb    ddd8
                         {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x0040e3bd    d98650020000
_jmp_addr_0x0040e3c3:    test                 cl, cl                                        // 0x0040e3c3    84c9
                         {disp8} je           _jmp_addr_0x0040e3df                          // 0x0040e3c5    7418
                         {disp32} fmul        dword ptr [rdata_bytes + 0x241c]              // 0x0040e3c7    d80d1cb48a00
                         call                 _jmp_addr_0x007a1400                          // 0x0040e3cd    e82e303900
                         push                 eax                                           // 0x0040e3d2    50
                         push                 0x009c8228                                    // 0x0040e3d3    6828829c00
                         {disp8} lea          eax, dword ptr [esp + 0x5c]                   // 0x0040e3d8    8d44245c
                         push                 eax                                           // 0x0040e3dc    50
                         {disp8} jmp          _jmp_addr_0x0040e41c                          // 0x0040e3dd    eb3d
_jmp_addr_0x0040e3df:    {disp32} fld         dword ptr [esi + 0x0000024c]                  // 0x0040e3df    d9864c020000
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x2414]              // 0x0040e3e5    d81d14b48a00
                         fnstsw               ax                                            // 0x0040e3eb    dfe0
                         test                 ah, 0x41                                      // 0x0040e3ed    f6c441
                         {disp8} je           _jmp_addr_0x0040e40c                          // 0x0040e3f0    741a
                         sub                  esp, 0x08                                     // 0x0040e3f2    83ec08
                         fstp                 qword ptr [esp]                               // 0x0040e3f5    dd1c24
                         {disp8} lea          ecx, dword ptr [esp + 0x5c]                   // 0x0040e3f8    8d4c245c
                         push                 0x009c821c                                    // 0x0040e3fc    681c829c00
                         push                 ecx                                           // 0x0040e401    51
                         call                 _swprintf                                     // 0x0040e402    e878803b00
                         add                  esp, 0x10                                     // 0x0040e407    83c410
                         {disp8} jmp          _jmp_addr_0x0040e424                          // 0x0040e40a    eb18
_jmp_addr_0x0040e40c:    call                 _jmp_addr_0x007a1400                          // 0x0040e40c    e8ef2f3900
                         push                 eax                                           // 0x0040e411    50
                         push                 0x009c8208                                    // 0x0040e412    6808829c00
                         {disp8} lea          edx, dword ptr [esp + 0x5c]                   // 0x0040e417    8d54245c
                         push                 edx                                           // 0x0040e41b    52
_jmp_addr_0x0040e41c:    call                 _swprintf                                     // 0x0040e41c    e85e803b00
                         add                  esp, 0x0c                                     // 0x0040e421    83c40c
_jmp_addr_0x0040e424:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040e424    8b4620
                         test                 eax, eax                                      // 0x0040e427    85c0
                         {disp8} je           _jmp_addr_0x0040e42f                          // 0x0040e429    7404
                         mov.s                ecx, eax                                      // 0x0040e42b    8bc8
                         {disp8} jmp          _jmp_addr_0x0040e446                          // 0x0040e42d    eb17
_jmp_addr_0x0040e42f:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040e42f    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040e435    85c9
                         {disp8} je           _jmp_addr_0x0040e441                          // 0x0040e437    7408
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000ac]             // 0x0040e439    8b89ac000000
                         {disp8} jmp          _jmp_addr_0x0040e446                          // 0x0040e43f    eb05
_jmp_addr_0x0040e441:    mov                  ecx, 0x0000000a                               // 0x0040e441    b90a000000
_jmp_addr_0x0040e446:    test                 eax, eax                                      // 0x0040e446    85c0
                         {disp8} jne          _jmp_addr_0x0040e461                          // 0x0040e448    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040e44a    8b8634020000
                         test                 eax, eax                                      // 0x0040e450    85c0
                         {disp8} je           _jmp_addr_0x0040e45c                          // 0x0040e452    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040e454    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040e461                          // 0x0040e45a    eb05
_jmp_addr_0x0040e45c:    mov                  eax, 0x0000000a                               // 0x0040e45c    b80a000000
_jmp_addr_0x0040e461:    push                 0x0                                           // 0x0040e461    6a00
                         push                 0x00c4ccdc                                    // 0x0040e463    68dcccc400
                         cdq                                                                // 0x0040e468    99
                         push                 ecx                                           // 0x0040e469    51
                         sub.s                eax, edx                                      // 0x0040e46a    2bc2
                         {disp8} mov          edx, dword ptr [esp + 0x2c]                   // 0x0040e46c    8b54242c
                         sar                  eax, 1                                        // 0x0040e470    d1f8
                         {disp8} lea          ecx, dword ptr [esp + 0x60]                   // 0x0040e472    8d4c2460
                         push                 ecx                                           // 0x0040e476    51
                         sub.s                edx, eax                                      // 0x0040e477    2bd0
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040e479    8b4608
                         push                 0x2                                           // 0x0040e47c    6a02
                         inc                  edx                                           // 0x0040e47e    42
                         push                 0x64                                          // 0x0040e47f    6a64
                         push                 edx                                           // 0x0040e481    52
                         dec                  eax                                           // 0x0040e482    48
                         push                 eax                                           // 0x0040e483    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040e484    e827350000
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040e489    8b4620
                         fstp                 st(0)                                         // 0x0040e48c    ddd8
                         add                  esp, 0x20                                     // 0x0040e48e    83c420
                         test                 eax, eax                                      // 0x0040e491    85c0
                         {disp8} je           _jmp_addr_0x0040e499                          // 0x0040e493    7404
                         mov.s                ecx, eax                                      // 0x0040e495    8bc8
                         {disp8} jmp          _jmp_addr_0x0040e4b0                          // 0x0040e497    eb17
_jmp_addr_0x0040e499:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040e499    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040e49f    85c9
                         {disp8} je           _jmp_addr_0x0040e4ab                          // 0x0040e4a1    7408
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000ac]             // 0x0040e4a3    8b89ac000000
                         {disp8} jmp          _jmp_addr_0x0040e4b0                          // 0x0040e4a9    eb05
_jmp_addr_0x0040e4ab:    mov                  ecx, 0x0000000a                               // 0x0040e4ab    b90a000000
_jmp_addr_0x0040e4b0:    test                 eax, eax                                      // 0x0040e4b0    85c0
                         {disp8} jne          _jmp_addr_0x0040e4cb                          // 0x0040e4b2    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040e4b4    8b8634020000
                         test                 eax, eax                                      // 0x0040e4ba    85c0
                         {disp8} je           _jmp_addr_0x0040e4c6                          // 0x0040e4bc    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040e4be    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040e4cb                          // 0x0040e4c4    eb05
_jmp_addr_0x0040e4c6:    mov                  eax, 0x0000000a                               // 0x0040e4c6    b80a000000
_jmp_addr_0x0040e4cb:    push                 0x0                                           // 0x0040e4cb    6a00
                         push                 0x00c4ccf8                                    // 0x0040e4cd    68f8ccc400
                         push                 ecx                                           // 0x0040e4d2    51
                         cdq                                                                // 0x0040e4d3    99
                         sub.s                eax, edx                                      // 0x0040e4d4    2bc2
                         {disp8} mov          edx, dword ptr [esp + 0x2c]                   // 0x0040e4d6    8b54242c
                         {disp8} lea          ecx, dword ptr [esp + 0x60]                   // 0x0040e4da    8d4c2460
                         push                 ecx                                           // 0x0040e4de    51
                         sar                  eax, 1                                        // 0x0040e4df    d1f8
                         push                 0x2                                           // 0x0040e4e1    6a02
                         sub.s                edx, eax                                      // 0x0040e4e3    2bd0
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040e4e5    8b4608
                         push                 0x64                                          // 0x0040e4e8    6a64
                         push                 edx                                           // 0x0040e4ea    52
                         sub                  eax, 0x02                                     // 0x0040e4eb    83e802
                         push                 eax                                           // 0x0040e4ee    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040e4ef    e8bc340000
                         fstp                 st(0)                                         // 0x0040e4f4    ddd8
                         add                  esp, 0x20                                     // 0x0040e4f6    83c420
_jmp_addr_0x0040e4f9:    pop                  edi                                           // 0x0040e4f9    5f
                         pop                  esi                                           // 0x0040e4fa    5e
                         pop                  ebp                                           // 0x0040e4fb    5d
                         pop                  ebx                                           // 0x0040e4fc    5b
                         add                  esp, 0x00000244                               // 0x0040e4fd    81c444020000
                         ret                  0x0008                                        // 0x0040e503    c20800
                         nop                                                                // 0x0040e506    90
                         nop                                                                // 0x0040e507    90
                         nop                                                                // 0x0040e508    90
                         nop                                                                // 0x0040e509    90
                         nop                                                                // 0x0040e50a    90
                         nop                                                                // 0x0040e50b    90
                         nop                                                                // 0x0040e50c    90
                         nop                                                                // 0x0040e50d    90
                         nop                                                                // 0x0040e50e    90
                         nop                                                                // 0x0040e50f    90
@__ct__15SetupHLineGraphFiiiiiPwb@33:    {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040e510    8b442418
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x0040e514    8b542410
                         push                 esi                                           // 0x0040e518    56
                         push                 0x0                                           // 0x0040e519    6a00
                         push                 eax                                           // 0x0040e51b    50
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040e51c    8b442418
                         mov.s                esi, ecx                                      // 0x0040e520    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x20]                   // 0x0040e522    8b4c2420
                         push                 ecx                                           // 0x0040e526    51
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x0040e527    8b4c2418
                         push                 edx                                           // 0x0040e52b    52
                         {disp8} mov          edx, dword ptr [esp + 0x18]                   // 0x0040e52c    8b542418
                         push                 eax                                           // 0x0040e530    50
                         push                 ecx                                           // 0x0040e531    51
                         push                 edx                                           // 0x0040e532    52
                         mov.s                ecx, esi                                      // 0x0040e533    8bce
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x0040e535    e876b3ffff
                         {disp32} mov         dword ptr [esi + 0x00000248], 0x00000000      // 0x0040e53a    c7864802000000000000
                         {disp32} mov         dword ptr [esi + 0x00000244], 0x00000000      // 0x0040e544    c7864402000000000000
                         mov                  dword ptr [esi], 0x008ab424                   // 0x0040e54e    c70624b48a00
                         {disp32} mov         dword ptr [esi + 0x0000023c], 0x00000000      // 0x0040e554    c7863c02000000000000
                         call                 _GetSmallTextSize__Fv                         // 0x0040e55e    e8ad94ffff
                         {disp8} mov          dword ptr [esi + 0x20], eax                   // 0x0040e563    894620
                         {disp8} mov          al, byte ptr [esp + 0x20]                     // 0x0040e566    8a442420
                         mov.s                ecx, esi                                      // 0x0040e56a    8bce
                         {disp32} mov         byte ptr [esi + 0x00000254], al               // 0x0040e56c    888654020000
                         call                 ?Reset@SetupHLineGraph@@UAEXXZ                // 0x0040e572    e869000000
                         mov.s                eax, esi                                      // 0x0040e577    8bc6
                         pop                  esi                                           // 0x0040e579    5e
                         ret                  0x001c                                        // 0x0040e57a    c21c00
                         nop                                                                // 0x0040e57d    90
                         nop                                                                // 0x0040e57e    90
                         nop                                                                // 0x0040e57f    90
_KeyDown__15SetupHLineGraphFii:
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000234]             // 0x0040e580    8b8934020000
                         test                 ecx, ecx                                      // 0x0040e586    85c9
                         {disp8} je           _jmp_addr_0x0040e598                          // 0x0040e588    740e
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040e58a    8b542408
                         mov                  eax, dword ptr [ecx]                          // 0x0040e58e    8b01
                         push                 edx                                           // 0x0040e590    52
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040e591    8b542408
                         push                 edx                                           // 0x0040e595    52
                         call                 dword ptr [eax]                               // 0x0040e596    ff10
_jmp_addr_0x0040e598:    ret                  0x0008                                        // 0x0040e598    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040e59b    e8d932ffff
_MouseUp__15SetupHLineGraphFiib:
                         {disp8} mov          al, byte ptr [esp + 0x0c]                     // 0x0040e5a0    8a44240c
                         test                 al, al                                        // 0x0040e5a4    84c0
                         {disp8} je           _jmp_addr_0x0040e5b9                          // 0x0040e5a6    7411
                         {disp32} mov         al, byte ptr [ecx + 0x00000254]               // 0x0040e5a8    8a8154020000
                         test                 al, al                                        // 0x0040e5ae    84c0
                         sete                 al                                            // 0x0040e5b0    0f94c0
                         {disp32} mov         byte ptr [ecx + 0x00000254], al               // 0x0040e5b3    888154020000
_jmp_addr_0x0040e5b9:    ret                  0x000c                                        // 0x0040e5b9    c20c00
                         nop                                                                // 0x0040e5bc    90
                         nop                                                                // 0x0040e5bd    90
                         nop                                                                // 0x0040e5be    90
                         nop                                                                // 0x0040e5bf    90
??_GSetupHLineGraph@@UAEPAXI@Z:
                         push                 esi                                           // 0x0040e5c0    56
                         mov.s                esi, ecx                                      // 0x0040e5c1    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x0040e5c3    e8f8adffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x0040e5c8    f644240801
                         {disp8} je           _jmp_addr_0x0040e5d8                          // 0x0040e5cd    7409
                         push                 esi                                           // 0x0040e5cf    56
                         call                 ??3@YAXPAX@Z                                  // 0x0040e5d0    e8c3083a00
                         add                  esp, 0x04                                     // 0x0040e5d5    83c404
_jmp_addr_0x0040e5d8:    mov.s                eax, esi                                      // 0x0040e5d8    8bc6
                         pop                  esi                                           // 0x0040e5da    5e
                         ret                  0x0004                                        // 0x0040e5db    c20400
                         nop                                                                // 0x0040e5de    90
                         nop                                                                // 0x0040e5df    90
_Reset__15SetupHLineGraphFv:
?Reset@SetupHLineGraph@@UAEXXZ:
                                  push                 ebx                                           // 0x0040e5e0    53
                         push                 ebp                                           // 0x0040e5e1    55
                         push                 esi                                           // 0x0040e5e2    56
                         push                 edi                                           // 0x0040e5e3    57
                         mov.s                edi, ecx                                      // 0x0040e5e4    8bf9
_jmp_addr_0x0040e5e6:    {disp32} mov         eax, dword ptr [edi + 0x00000244]             // 0x0040e5e6    8b8744020000
                         test                 eax, eax                                      // 0x0040e5ec    85c0
                         {disp8} je           _jmp_addr_0x0040e64b                          // 0x0040e5ee    745b
                         {disp8} mov          ebx, dword ptr [eax + 0x04]                   // 0x0040e5f0    8b5804
                         xor.s                ebp, ebp                                      // 0x0040e5f3    33ed
                         test                 eax, eax                                      // 0x0040e5f5    85c0
                         {disp8} je           _jmp_addr_0x0040e633                          // 0x0040e5f7    743a
_jmp_addr_0x0040e5f9:    cmp                  dword ptr [eax + 0x04], ebx                   // 0x0040e5f9    395804
                         mov                  esi, dword ptr [eax]                          // 0x0040e5fc    8b30
                         {disp8} jne          _jmp_addr_0x0040e62b                          // 0x0040e5fe    752b
                         cmp                  eax, dword ptr [edi + 0x00000244]             // 0x0040e600    3b8744020000
                         {disp8} jne          _jmp_addr_0x0040e610                          // 0x0040e606    7508
                         {disp32} mov         dword ptr [edi + 0x00000244], esi             // 0x0040e608    89b744020000
                         {disp8} jmp          _jmp_addr_0x0040e613                          // 0x0040e60e    eb03
_jmp_addr_0x0040e610:    {disp8} mov          dword ptr [ebp + 0x00], esi                   // 0x0040e610    897500
_jmp_addr_0x0040e613:    {disp32} mov         edx, dword ptr [edi + 0x00000248]             // 0x0040e613    8b9748020000
                         dec                  edx                                           // 0x0040e619    4a
                         push                 eax                                           // 0x0040e61a    50
                         {disp32} mov         dword ptr [edi + 0x00000248], edx             // 0x0040e61b    899748020000
                         call                 ??3@YAXPAX@Z                                  // 0x0040e621    e872083a00
                         add                  esp, 0x04                                     // 0x0040e626    83c404
                         {disp8} jmp          _jmp_addr_0x0040e62d                          // 0x0040e629    eb02
_jmp_addr_0x0040e62b:    mov.s                ebp, eax                                      // 0x0040e62b    8be8
_jmp_addr_0x0040e62d:    test                 esi, esi                                      // 0x0040e62d    85f6
                         mov.s                eax, esi                                      // 0x0040e62f    8bc6
                         {disp8} jne          _jmp_addr_0x0040e5f9                          // 0x0040e631    75c6
_jmp_addr_0x0040e633:    test                 ebx, ebx                                      // 0x0040e633    85db
                         {disp8} je           _jmp_addr_0x0040e5e6                          // 0x0040e635    74af
                         {disp8} mov          eax, dword ptr [ebx + 0x08]                   // 0x0040e637    8b4308
                         push                 eax                                           // 0x0040e63a    50
                         call                 ??3@YAXPAX@Z                                  // 0x0040e63b    e858083a00
                         push                 ebx                                           // 0x0040e640    53
                         call                 ??3@YAXPAX@Z                                  // 0x0040e641    e852083a00
                         add                  esp, 0x08                                     // 0x0040e646    83c408
                         {disp8} jmp          _jmp_addr_0x0040e5e6                          // 0x0040e649    eb9b
_jmp_addr_0x0040e64b:    pop                  edi                                           // 0x0040e64b    5f
                         pop                  esi                                           // 0x0040e64c    5e
                         pop                  ebp                                           // 0x0040e64d    5d
                         pop                  ebx                                           // 0x0040e64e    5b
                         ret                                                                // 0x0040e64f    c3
_SetScale__15SetupHLineGraphFffb:
                         {disp8} fld          dword ptr [esp + 0x04]                        // 0x0040e650    d9442404
                         push                 esi                                           // 0x0040e654    56
                         {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0040e655    d81598a38a00
                         push                 edi                                           // 0x0040e65b    57
                         fnstsw               ax                                            // 0x0040e65c    dfe0
                         test                 ah, 0x41                                      // 0x0040e65e    f6c441
                         {disp8} je           _jmp_addr_0x0040e6d8                          // 0x0040e661    7475
                         {disp32} mov         eax, dword ptr [ecx + 0x00000244]             // 0x0040e663    8b8144020000
                         fstp                 st(0)                                         // 0x0040e669    ddd8
                         test                 eax, eax                                      // 0x0040e66b    85c0
                         {disp32} fld         dword ptr [rdata_bytes + 0x246c]              // 0x0040e66d    d9056cb48a00
                         {disp8} mov          dword ptr [esp + 0x10], 0x501502f9            // 0x0040e673    c7442410f9021550
                         {disp8} je           _jmp_addr_0x0040e6ed                          // 0x0040e67b    7470
                         {disp8} mov          esi, dword ptr [eax + 0x04]                   // 0x0040e67d    8b7004
                         test                 esi, esi                                      // 0x0040e680    85f6
                         {disp8} je           _jmp_addr_0x0040e6ed                          // 0x0040e682    7469
_jmp_addr_0x0040e684:    {disp8} mov          eax, dword ptr [esi + 0x04]                   // 0x0040e684    8b4604
                         test                 eax, eax                                      // 0x0040e687    85c0
                         {disp8} jle          _jmp_addr_0x0040e6b6                          // 0x0040e689    7e2b
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040e68b    8b5608
                         mov.s                edi, eax                                      // 0x0040e68e    8bf8
_jmp_addr_0x0040e690:    fcom                 dword ptr [edx]                               // 0x0040e690    d812
                         fnstsw               ax                                            // 0x0040e692    dfe0
                         test                 ah, 0x01                                      // 0x0040e694    f6c401
                         {disp8} je           _jmp_addr_0x0040e69d                          // 0x0040e697    7404
                         fstp                 st(0)                                         // 0x0040e699    ddd8
                         fld                  dword ptr [edx]                               // 0x0040e69b    d902
_jmp_addr_0x0040e69d:    fld                  dword ptr [edx]                               // 0x0040e69d    d902
                         {disp8} fcomp        dword ptr [esp + 0x10]                        // 0x0040e69f    d85c2410
                         fnstsw               ax                                            // 0x0040e6a3    dfe0
                         test                 ah, 0x01                                      // 0x0040e6a5    f6c401
                         {disp8} je           _jmp_addr_0x0040e6b0                          // 0x0040e6a8    7406
                         mov                  eax, dword ptr [edx]                          // 0x0040e6aa    8b02
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x0040e6ac    89442410
_jmp_addr_0x0040e6b0:    add                  edx, 0x04                                     // 0x0040e6b0    83c204
                         dec                  edi                                           // 0x0040e6b3    4f
                         {disp8} jne          _jmp_addr_0x0040e690                          // 0x0040e6b4    75da
_jmp_addr_0x0040e6b6:    {disp32} mov         eax, dword ptr [ecx + 0x00000244]             // 0x0040e6b6    8b8144020000
                         test                 eax, eax                                      // 0x0040e6bc    85c0
                         {disp8} je           _jmp_addr_0x0040e6d8                          // 0x0040e6be    7418
_jmp_addr_0x0040e6c0:    cmp                  dword ptr [eax + 0x04], esi                   // 0x0040e6c0    397004
                         mov                  eax, dword ptr [eax]                          // 0x0040e6c3    8b00
                         {disp8} je           _jmp_addr_0x0040e6cd                          // 0x0040e6c5    7406
                         test                 eax, eax                                      // 0x0040e6c7    85c0
                         {disp8} je           _jmp_addr_0x0040e6d8                          // 0x0040e6c9    740d
                         {disp8} jmp          _jmp_addr_0x0040e6c0                          // 0x0040e6cb    ebf3
_jmp_addr_0x0040e6cd:    test                 eax, eax                                      // 0x0040e6cd    85c0
                         {disp8} je           _jmp_addr_0x0040e6d8                          // 0x0040e6cf    7407
                         {disp8} mov          esi, dword ptr [eax + 0x04]                   // 0x0040e6d1    8b7004
                         test                 esi, esi                                      // 0x0040e6d4    85f6
                         {disp8} jne          _jmp_addr_0x0040e684                          // 0x0040e6d6    75ac
_jmp_addr_0x0040e6d8:    {disp8} fld          dword ptr [esp + 0x10]                        // 0x0040e6d8    d9442410
                         fcomp                st(1)                                         // 0x0040e6dc    d8d9
                         fnstsw               ax                                            // 0x0040e6de    dfe0
                         test                 ah, 0x01                                      // 0x0040e6e0    f6c401
                         {disp8} je           _jmp_addr_0x0040e6ed                          // 0x0040e6e3    7408
                         {disp8} mov          al, byte ptr [esp + 0x14]                     // 0x0040e6e5    8a442414
                         test                 al, al                                        // 0x0040e6e9    84c0
                         {disp8} je           _jmp_addr_0x0040e6f5                          // 0x0040e6eb    7408
_jmp_addr_0x0040e6ed:    {disp8} mov          dword ptr [esp + 0x10], 0x00000000            // 0x0040e6ed    c744241000000000
_jmp_addr_0x0040e6f5:    {disp8} fcom         dword ptr [esp + 0x10]                        // 0x0040e6f5    d8542410
                         pop                  edi                                           // 0x0040e6f9    5f
                         pop                  esi                                           // 0x0040e6fa    5e
                         fnstsw               ax                                            // 0x0040e6fb    dfe0
                         test                 ah, 0x41                                      // 0x0040e6fd    f6c441
                         {disp8} je           _jmp_addr_0x0040e70e                          // 0x0040e700    740c
                         fstp                 st(0)                                         // 0x0040e702    ddd8
                         {disp8} fld          dword ptr [esp + 0x08]                        // 0x0040e704    d9442408
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x0040e708    d80590a38a00
_jmp_addr_0x0040e70e:    {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040e70e    8b542408
                         {disp32} fstp        dword ptr [ecx + 0x0000024c]                  // 0x0040e712    d9994c020000
                         {disp32} mov         dword ptr [ecx + 0x00000250], edx             // 0x0040e718    899150020000
                         ret                  0x000c                                        // 0x0040e71e    c20c00
                         nop                                                                // 0x0040e721    90
                         nop                                                                // 0x0040e722    90
                         nop                                                                // 0x0040e723    90
                         nop                                                                // 0x0040e724    90
                         nop                                                                // 0x0040e725    90
                         nop                                                                // 0x0040e726    90
                         nop                                                                // 0x0040e727    90
                         nop                                                                // 0x0040e728    90
                         nop                                                                // 0x0040e729    90
                         nop                                                                // 0x0040e72a    90
                         nop                                                                // 0x0040e72b    90
                         nop                                                                // 0x0040e72c    90
                         nop                                                                // 0x0040e72d    90
                         nop                                                                // 0x0040e72e    90
                         nop                                                                // 0x0040e72f    90
_AddLine__15SetupHLineGraphFR9HLineData:
                         push                 ecx                                           // 0x0040e730    51
                         push                 ebx                                           // 0x0040e731    53
                         push                 esi                                           // 0x0040e732    56
                         push                 0x00000824                                    // 0x0040e733    6824080000
                         mov.s                esi, ecx                                      // 0x0040e738    8bf1
                         push                 0x009c8190                                    // 0x0040e73a    6890819c00
                         push                 0xc                                           // 0x0040e73f    6a0c
                         {disp8} mov          dword ptr [esp + 0x14], esi                   // 0x0040e741    89742414
                         call                 ___nw__FUl                                    // 0x0040e745    e846d03c00
                         mov.s                ebx, eax                                      // 0x0040e74a    8bd8
                         add                  esp, 0x0c                                     // 0x0040e74c    83c40c
                         test                 ebx, ebx                                      // 0x0040e74f    85db
                         {disp8} je           _jmp_addr_0x0040e79c                          // 0x0040e751    7449
                         {disp8} mov          esi, dword ptr [esp + 0x10]                   // 0x0040e753    8b742410
                         mov                  dword ptr [ebx], 0x00000000                   // 0x0040e757    c70300000000
                         {disp8} mov          dword ptr [ebx + 0x04], 0x00000000            // 0x0040e75d    c7430400000000
                         {disp8} mov          dword ptr [ebx + 0x08], 0x00000000            // 0x0040e764    c7430800000000
                         mov                  eax, dword ptr [esi]                          // 0x0040e76b    8b06
                         mov                  dword ptr [ebx], eax                          // 0x0040e76d    8903
                         {disp8} mov          ecx, dword ptr [esi + 0x04]                   // 0x0040e76f    8b4e04
                         push                 edi                                           // 0x0040e772    57
                         push                 ecx                                           // 0x0040e773    51
                         mov.s                ecx, ebx                                      // 0x0040e774    8bcb
                         call                 @SetNum__9HLineDataFi@12                      // 0x0040e776    e8b5f2ffff
                         {disp8} mov          ecx, dword ptr [esi + 0x04]                   // 0x0040e77b    8b4e04
                         {disp8} mov          esi, dword ptr [esi + 0x08]                   // 0x0040e77e    8b7608
                         {disp8} mov          edi, dword ptr [ebx + 0x08]                   // 0x0040e781    8b7b08
                         shl                  ecx, 2                                        // 0x0040e784    c1e102
                         mov.s                edx, ecx                                      // 0x0040e787    8bd1
                         shr                  ecx, 2                                        // 0x0040e789    c1e902
                         rep movsd            es:[edi], dword ptr ds:[esi]                  // 0x0040e78c    f3a5
                         mov.s                ecx, edx                                      // 0x0040e78e    8bca
                         and                  ecx, 0x03                                     // 0x0040e790    83e103
                         rep movsb                                                          // 0x0040e793    f3a4
                         {disp8} mov          esi, dword ptr [esp + 0x0c]                   // 0x0040e795    8b74240c
                         pop                  edi                                           // 0x0040e799    5f
                         {disp8} jmp          _jmp_addr_0x0040e79e                          // 0x0040e79a    eb02
_jmp_addr_0x0040e79c:    xor.s                ebx, ebx                                      // 0x0040e79c    33db
_jmp_addr_0x0040e79e:    test                 ebx, ebx                                      // 0x0040e79e    85db
                         {disp8} je           _jmp_addr_0x0040e7e9                          // 0x0040e7a0    7447
                         push                 0x8                                           // 0x0040e7a2    6a08
                         call                 ??2@YAPAXI@Z                                  // 0x0040e7a4    e8457d3b00
                         add                  esp, 0x04                                     // 0x0040e7a9    83c404
                         test                 eax, eax                                      // 0x0040e7ac    85c0
                         {disp8} je           _jmp_addr_0x0040e7e9                          // 0x0040e7ae    7439
                         {disp8} mov          dword ptr [eax + 0x04], ebx                   // 0x0040e7b0    895804
                         mov                  dword ptr [eax], 0x00000000                   // 0x0040e7b3    c70000000000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000244]             // 0x0040e7b9    8b8e44020000
                         test                 ecx, ecx                                      // 0x0040e7bf    85c9
                         {disp8} je           _jmp_addr_0x0040e7dd                          // 0x0040e7c1    741a
_jmp_addr_0x0040e7c3:    mov.s                edx, ecx                                      // 0x0040e7c3    8bd1
                         mov                  ecx, dword ptr [ecx]                          // 0x0040e7c5    8b09
                         test                 ecx, ecx                                      // 0x0040e7c7    85c9
                         {disp8} jne          _jmp_addr_0x0040e7c3                          // 0x0040e7c9    75f8
                         test                 edx, edx                                      // 0x0040e7cb    85d2
                         {disp8} je           _jmp_addr_0x0040e7dd                          // 0x0040e7cd    740e
                         mov                  dword ptr [edx], eax                          // 0x0040e7cf    8902
                         {disp32} inc         dword ptr [esi + 0x00000248]                  // 0x0040e7d1    ff8648020000
                         pop                  esi                                           // 0x0040e7d7    5e
                         pop                  ebx                                           // 0x0040e7d8    5b
                         pop                  ecx                                           // 0x0040e7d9    59
                         ret                  0x0004                                        // 0x0040e7da    c20400
_jmp_addr_0x0040e7dd:    {disp32} mov         dword ptr [esi + 0x00000244], eax             // 0x0040e7dd    898644020000
                         {disp32} inc         dword ptr [esi + 0x00000248]                  // 0x0040e7e3    ff8648020000
_jmp_addr_0x0040e7e9:    pop                  esi                                           // 0x0040e7e9    5e
                         pop                  ebx                                           // 0x0040e7ea    5b
                         pop                  ecx                                           // 0x0040e7eb    59
                         ret                  0x0004                                        // 0x0040e7ec    c20400
                         nop                                                                // 0x0040e7ef    90
_SetLine__15SetupHLineGraphFiR9HLineData:
                         {disp8} mov          edx, dword ptr [esp + 0x04]                   // 0x0040e7f0    8b542404
                         test                 edx, edx                                      // 0x0040e7f4    85d2
                         push                 esi                                           // 0x0040e7f6    56
                         {disp8} jl           _jmp_addr_0x0040e83f                          // 0x0040e7f7    7c46
                         {disp32} mov         eax, dword ptr [ecx + 0x00000248]             // 0x0040e7f9    8b8148020000
                         cmp.s                edx, eax                                      // 0x0040e7ff    3bd0
                         {disp8} jge          _jmp_addr_0x0040e83f                          // 0x0040e801    7d3c
                         mov.s                esi, eax                                      // 0x0040e803    8bf0
                         test                 esi, esi                                      // 0x0040e805    85f6
                         {disp8} jbe          _jmp_addr_0x0040e83f                          // 0x0040e807    7636
                         {disp32} mov         eax, dword ptr [ecx + 0x00000244]             // 0x0040e809    8b8144020000
                         test                 eax, eax                                      // 0x0040e80f    85c0
                         {disp8} je           _jmp_addr_0x0040e83f                          // 0x0040e811    742c
                         cmp.s                edx, esi                                      // 0x0040e813    3bd6
                         {disp8} jge          _jmp_addr_0x0040e83f                          // 0x0040e815    7d28
                         test                 edx, edx                                      // 0x0040e817    85d2
                         {disp8} jle          _jmp_addr_0x0040e820                          // 0x0040e819    7e05
_jmp_addr_0x0040e81b:    dec                  edx                                           // 0x0040e81b    4a
                         mov                  eax, dword ptr [eax]                          // 0x0040e81c    8b00
                         {disp8} jne          _jmp_addr_0x0040e81b                          // 0x0040e81e    75fb
_jmp_addr_0x0040e820:    test                 eax, eax                                      // 0x0040e820    85c0
                         {disp8} je           _jmp_addr_0x0040e83f                          // 0x0040e822    741b
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040e824    8b4004
                         test                 eax, eax                                      // 0x0040e827    85c0
                         {disp8} je           _jmp_addr_0x0040e83f                          // 0x0040e829    7414
                         {disp8} mov          ecx, dword ptr [esp + 0x0c]                   // 0x0040e82b    8b4c240c
                         mov                  edx, dword ptr [ecx]                          // 0x0040e82f    8b11
                         mov                  dword ptr [eax], edx                          // 0x0040e831    8910
                         {disp8} mov          edx, dword ptr [ecx + 0x04]                   // 0x0040e833    8b5104
                         {disp8} mov          dword ptr [eax + 0x04], edx                   // 0x0040e836    895004
                         {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x0040e839    8b4908
                         {disp8} mov          dword ptr [eax + 0x08], ecx                   // 0x0040e83c    894808
_jmp_addr_0x0040e83f:    pop                  esi                                           // 0x0040e83f    5e
                         ret                  0x0008                                        // 0x0040e840    c20800
                         nop                                                                // 0x0040e843    90
                         nop                                                                // 0x0040e844    90
                         nop                                                                // 0x0040e845    90
                         nop                                                                // 0x0040e846    90
                         nop                                                                // 0x0040e847    90
                         nop                                                                // 0x0040e848    90
                         nop                                                                // 0x0040e849    90
                         nop                                                                // 0x0040e84a    90
                         nop                                                                // 0x0040e84b    90
                         nop                                                                // 0x0040e84c    90
                         nop                                                                // 0x0040e84d    90
                         nop                                                                // 0x0040e84e    90
                         nop                                                                // 0x0040e84f    90
_GetLine__15SetupHLineGraphFiR9HLineData:
                         {disp8} mov          edx, dword ptr [esp + 0x04]                   // 0x0040e850    8b542404
                         test                 edx, edx                                      // 0x0040e854    85d2
                         push                 esi                                           // 0x0040e856    56
                         {disp8} jl           _jmp_addr_0x0040e89f                          // 0x0040e857    7c46
                         {disp32} mov         eax, dword ptr [ecx + 0x00000248]             // 0x0040e859    8b8148020000
                         cmp.s                edx, eax                                      // 0x0040e85f    3bd0
                         {disp8} jge          _jmp_addr_0x0040e89f                          // 0x0040e861    7d3c
                         mov.s                esi, eax                                      // 0x0040e863    8bf0
                         test                 esi, esi                                      // 0x0040e865    85f6
                         {disp8} jbe          _jmp_addr_0x0040e89f                          // 0x0040e867    7636
                         {disp32} mov         eax, dword ptr [ecx + 0x00000244]             // 0x0040e869    8b8144020000
                         test                 eax, eax                                      // 0x0040e86f    85c0
                         {disp8} je           _jmp_addr_0x0040e89f                          // 0x0040e871    742c
                         cmp.s                edx, esi                                      // 0x0040e873    3bd6
                         {disp8} jge          _jmp_addr_0x0040e89f                          // 0x0040e875    7d28
                         test                 edx, edx                                      // 0x0040e877    85d2
                         {disp8} jle          _jmp_addr_0x0040e880                          // 0x0040e879    7e05
_jmp_addr_0x0040e87b:    dec                  edx                                           // 0x0040e87b    4a
                         mov                  eax, dword ptr [eax]                          // 0x0040e87c    8b00
                         {disp8} jne          _jmp_addr_0x0040e87b                          // 0x0040e87e    75fb
_jmp_addr_0x0040e880:    test                 eax, eax                                      // 0x0040e880    85c0
                         {disp8} je           _jmp_addr_0x0040e89f                          // 0x0040e882    741b
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040e884    8b4004
                         test                 eax, eax                                      // 0x0040e887    85c0
                         {disp8} je           _jmp_addr_0x0040e89f                          // 0x0040e889    7414
                         mov                  edx, dword ptr [eax]                          // 0x0040e88b    8b10
                         {disp8} mov          ecx, dword ptr [esp + 0x0c]                   // 0x0040e88d    8b4c240c
                         mov                  dword ptr [ecx], edx                          // 0x0040e891    8911
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040e893    8b5004
                         {disp8} mov          dword ptr [ecx + 0x04], edx                   // 0x0040e896    895104
                         {disp8} mov          eax, dword ptr [eax + 0x08]                   // 0x0040e899    8b4008
                         {disp8} mov          dword ptr [ecx + 0x08], eax                   // 0x0040e89c    894108
_jmp_addr_0x0040e89f:    pop                  esi                                           // 0x0040e89f    5e
                         ret                  0x0008                                        // 0x0040e8a0    c20800
                         nop                                                                // 0x0040e8a3    90
                         nop                                                                // 0x0040e8a4    90
                         nop                                                                // 0x0040e8a5    90
                         nop                                                                // 0x0040e8a6    90
                         nop                                                                // 0x0040e8a7    90
                         nop                                                                // 0x0040e8a8    90
                         nop                                                                // 0x0040e8a9    90
                         nop                                                                // 0x0040e8aa    90
                         nop                                                                // 0x0040e8ab    90
                         nop                                                                // 0x0040e8ac    90
                         nop                                                                // 0x0040e8ad    90
                         nop                                                                // 0x0040e8ae    90
                         nop                                                                // 0x0040e8af    90
_Draw__14SetupVBarGraphFbb:
                         sub                  esp, 0x00000220                               // 0x0040e8b0    81ec20020000
                         push                 ebx                                           // 0x0040e8b6    53
                         push                 esi                                           // 0x0040e8b7    56
                         push                 -0x1                                          // 0x0040e8b8    6aff
                         push                 -0x1                                          // 0x0040e8ba    6aff
                         mov.s                esi, ecx                                      // 0x0040e8bc    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040e8be    8b4614
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040e8c1    8b4e10
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x0040e8c4    8b560c
                         push                 0x10                                          // 0x0040e8c7    6a10
                         push                 0x1                                           // 0x0040e8c9    6a01
                         push                 eax                                           // 0x0040e8cb    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040e8cc    8b4608
                         push                 ecx                                           // 0x0040e8cf    51
                         push                 edx                                           // 0x0040e8d0    52
                         push                 eax                                           // 0x0040e8d1    50
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x0040e8d2    e849530000
                         {disp8} mov          edx, dword ptr [esi + 0x20]                   // 0x0040e8d7    8b5620
                         add                  esp, 0x20                                     // 0x0040e8da    83c420
                         test                 edx, edx                                      // 0x0040e8dd    85d2
                         {disp8} je           _jmp_addr_0x0040e8e5                          // 0x0040e8df    7404
                         mov.s                ebx, edx                                      // 0x0040e8e1    8bda
                         {disp8} jmp          _jmp_addr_0x0040e8fc                          // 0x0040e8e3    eb17
_jmp_addr_0x0040e8e5:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040e8e5    8b8634020000
                         test                 eax, eax                                      // 0x0040e8eb    85c0
                         {disp8} je           _jmp_addr_0x0040e8f7                          // 0x0040e8ed    7408
                         {disp32} mov         ebx, dword ptr [eax + 0x000000ac]             // 0x0040e8ef    8b98ac000000
                         {disp8} jmp          _jmp_addr_0x0040e8fc                          // 0x0040e8f5    eb05
_jmp_addr_0x0040e8f7:    mov                  ebx, 0x0000000a                               // 0x0040e8f7    bb0a000000
_jmp_addr_0x0040e8fc:    test                 edx, edx                                      // 0x0040e8fc    85d2
                         {disp8} jne          _jmp_addr_0x0040e917                          // 0x0040e8fe    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040e900    8b8634020000
                         test                 eax, eax                                      // 0x0040e906    85c0
                         {disp8} je           _jmp_addr_0x0040e912                          // 0x0040e908    7408
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]             // 0x0040e90a    8b90ac000000
                         {disp8} jmp          _jmp_addr_0x0040e917                          // 0x0040e910    eb05
_jmp_addr_0x0040e912:    mov                  edx, 0x0000000a                               // 0x0040e912    ba0a000000
_jmp_addr_0x0040e917:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040e917    8b4614
                         push                 ebp                                           // 0x0040e91a    55
                         push                 edi                                           // 0x0040e91b    57
                         push                 0x0                                           // 0x0040e91c    6a00
                         push                 0x1                                           // 0x0040e91e    6a01
                         push                 0x00c4ccdc                                    // 0x0040e920    68dcccc400
                         push                 ebx                                           // 0x0040e925    53
                         {disp8} lea          ecx, dword ptr [eax + 0x01]                   // 0x0040e926    8d4801
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x0040e929    8d7e24
                         push                 edi                                           // 0x0040e92c    57
                         push                 0x1                                           // 0x0040e92d    6a01
                         push                 ecx                                           // 0x0040e92f    51
                         {disp8} lea          edx, dword ptr [eax + edx * 0x1 + 0x01]       // 0x0040e930    8d541001
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x0040e934    8b4610
                         push                 edx                                           // 0x0040e937    52
                         inc                  eax                                           // 0x0040e938    40
                         push                 eax                                           // 0x0040e939    50
                         push                 ecx                                           // 0x0040e93a    51
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040e93b    8b4e08
                         inc                  ecx                                           // 0x0040e93e    41
                         push                 ecx                                           // 0x0040e93f    51
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040e940    e80b2e0000
                         fstp                 st(0)                                         // 0x0040e945    ddd8
                         {disp32} mov         al, byte ptr [esp + 0x00000260]               // 0x0040e947    8a842460020000
                         add                  esp, 0x2c                                     // 0x0040e94e    83c42c
                         test                 al, al                                        // 0x0040e951    84c0
                         {disp8} jne          _jmp_addr_0x0040e96d                          // 0x0040e953    7518
                         {disp32} mov         al, byte ptr [esp + 0x00000238]               // 0x0040e955    8a842438020000
                         test                 al, al                                        // 0x0040e95c    84c0
                         {disp8} je           _jmp_addr_0x0040e966                          // 0x0040e95e    7406
                         cmp                  word ptr [edi], 0x00                          // 0x0040e960    66833f00
                         {disp8} je           _jmp_addr_0x0040e96d                          // 0x0040e964    7407
_jmp_addr_0x0040e966:    mov                  ebx, 0x00c4ccf8                               // 0x0040e966    bbf8ccc400
                         {disp8} jmp          _jmp_addr_0x0040e972                          // 0x0040e96b    eb05
_jmp_addr_0x0040e96d:    mov                  ebx, 0x00c4cce4                               // 0x0040e96d    bbe4ccc400
_jmp_addr_0x0040e972:    {disp8} mov          ecx, dword ptr [esi + 0x20]                   // 0x0040e972    8b4e20
                         test                 ecx, ecx                                      // 0x0040e975    85c9
                         {disp8} je           _jmp_addr_0x0040e97d                          // 0x0040e977    7404
                         mov.s                edx, ecx                                      // 0x0040e979    8bd1
                         {disp8} jmp          _jmp_addr_0x0040e994                          // 0x0040e97b    eb17
_jmp_addr_0x0040e97d:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040e97d    8b8634020000
                         test                 eax, eax                                      // 0x0040e983    85c0
                         {disp8} je           _jmp_addr_0x0040e98f                          // 0x0040e985    7408
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]             // 0x0040e987    8b90ac000000
                         {disp8} jmp          _jmp_addr_0x0040e994                          // 0x0040e98d    eb05
_jmp_addr_0x0040e98f:    mov                  edx, 0x0000000a                               // 0x0040e98f    ba0a000000
_jmp_addr_0x0040e994:    test                 ecx, ecx                                      // 0x0040e994    85c9
                         {disp8} jne          _jmp_addr_0x0040e9af                          // 0x0040e996    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040e998    8b8634020000
                         test                 eax, eax                                      // 0x0040e99e    85c0
                         {disp8} je           _jmp_addr_0x0040e9aa                          // 0x0040e9a0    7408
                         {disp32} mov         ecx, dword ptr [eax + 0x000000ac]             // 0x0040e9a2    8b88ac000000
                         {disp8} jmp          _jmp_addr_0x0040e9af                          // 0x0040e9a8    eb05
_jmp_addr_0x0040e9aa:    mov                  ecx, 0x0000000a                               // 0x0040e9aa    b90a000000
_jmp_addr_0x0040e9af:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040e9af    8b4614
                         push                 0x0                                           // 0x0040e9b2    6a00
                         push                 0x1                                           // 0x0040e9b4    6a01
                         push                 ebx                                           // 0x0040e9b6    53
                         push                 edx                                           // 0x0040e9b7    52
                         push                 edi                                           // 0x0040e9b8    57
                         push                 0x1                                           // 0x0040e9b9    6a01
                         push                 eax                                           // 0x0040e9bb    50
                         lea                  edx, dword ptr [eax + ecx * 0x1]              // 0x0040e9bc    8d1408
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040e9bf    8b4e10
                         push                 edx                                           // 0x0040e9c2    52
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040e9c3    8b5608
                         push                 ecx                                           // 0x0040e9c6    51
                         push                 eax                                           // 0x0040e9c7    50
                         push                 edx                                           // 0x0040e9c8    52
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040e9c9    e8822d0000
                         fstp                 st(0)                                         // 0x0040e9ce    ddd8
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040e9d0    8b4608
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040e9d3    8b4e10
                         sub.s                ecx, eax                                      // 0x0040e9d6    2bc8
                         sub                  ecx, 0x04                                     // 0x0040e9d8    83e904
                         {disp8} mov          dword ptr [esp + 0x4c], ecx                   // 0x0040e9db    894c244c
                         {disp8} fild         dword ptr [esp + 0x4c]                        // 0x0040e9df    db44244c
                         add                  eax, 0x02                                     // 0x0040e9e3    83c002
                         {disp8} mov          dword ptr [esp + 0x4c], eax                   // 0x0040e9e6    8944244c
                         {disp32} fidiv       dword ptr [esi + 0x00000278]                  // 0x0040e9ea    dab678020000
                         add                  esp, 0x2c                                     // 0x0040e9f0    83c42c
                         {disp8} fstp         dword ptr [esp + 0x28]                        // 0x0040e9f3    d95c2428
                         {disp8} fild         dword ptr [esp + 0x20]                        // 0x0040e9f7    db442420
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x0040e9fb    d95c2414
                         {disp32} fild        dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0040e9ff    db053481c300
                         {disp32} fmul        dword ptr [_rdata_float0p001]                 // 0x0040ea05    d80db0a38a00
                         {disp32} fadd        dword ptr [esi + 0x00000258]                  // 0x0040ea0b    d88658020000
                         {disp32} fcom        dword ptr [esi + 0x0000025c]                  // 0x0040ea11    d8965c020000
                         {disp32} fst         dword ptr [esi + 0x00000258]                  // 0x0040ea17    d99658020000
                         fnstsw               ax                                            // 0x0040ea1d    dfe0
                         test                 ah, 0x01                                      // 0x0040ea1f    f6c401
                         {disp8} jne          _jmp_addr_0x0040ea56                          // 0x0040ea22    7532
                         {disp32} mov         edx, dword ptr [esi + 0x00000248]             // 0x0040ea24    8b9648020000
                         fstp                 st(0)                                         // 0x0040ea2a    ddd8
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]             // 0x0040ea2c    8b864c020000
                         {disp32} mov         ecx, dword ptr [esi + 0x0000025c]             // 0x0040ea32    8b8e5c020000
                         {disp32} mov         dword ptr [esi + 0x00000244], edx             // 0x0040ea38    899644020000
                         {disp32} mov         dword ptr [esi + 0x00000250], eax             // 0x0040ea3e    898650020000
                         {disp32} mov         dword ptr [esi + 0x00000254], 0x00000000      // 0x0040ea44    c7865402000000000000
                         {disp32} mov         dword ptr [esi + 0x00000258], ecx             // 0x0040ea4e    898e58020000
                         {disp8} jmp          _jmp_addr_0x0040ead4                          // 0x0040ea54    eb7e
_jmp_addr_0x0040ea56:    fld                  st(0)                                         // 0x0040ea56    d9c0
                         fld                  st(0)                                         // 0x0040ea58    d9c0
                         fmulp                st(1), st                                     // 0x0040ea5a    dec9
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x0040ea5c    d80db4a38a00
                         fld                  st(1)                                         // 0x0040ea62    d9c1
                         fmul                 st, st(1)                                     // 0x0040ea64    d8c9
                         {disp32} fmul        dword ptr [__real@3eaaaaab]                   // 0x0040ea66    d80d6cb28a00
                         fld                  st(0)                                         // 0x0040ea6c    d9c0
                         {disp32} fmul        dword ptr [esi + 0x00000270]                  // 0x0040ea6e    d88e70020000
                         fxch                 st(3)                                         // 0x0040ea74    d9cb
                         {disp32} fmul        dword ptr [esi + 0x00000268]                  // 0x0040ea76    d88e68020000
                         faddp                st(3), st                                     // 0x0040ea7c    dec3
                         fld                  st(1)                                         // 0x0040ea7e    d9c1
                         {disp32} fmul        dword ptr [esi + 0x0000026c]                  // 0x0040ea80    d88e6c020000
                         faddp                st(3), st                                     // 0x0040ea86    dec3
                         fxch                 st(2)                                         // 0x0040ea88    d9ca
                         {disp32} fadd        dword ptr [esi + 0x00000264]                  // 0x0040ea8a    d88664020000
                         {disp32} fstp        dword ptr [esi + 0x00000250]                  // 0x0040ea90    d99e50020000
                         fld                  st(0)                                         // 0x0040ea96    d9c0
                         fmul                 st, st(1)                                     // 0x0040ea98    d8c9
                         {disp32} fmul        dword ptr [__real@3e2aaaab]                   // 0x0040ea9a    d80d68b28a00
                         {disp32} fmul        dword ptr [esi + 0x00000270]                  // 0x0040eaa0    d88e70020000
                         fxch                 st(1)                                         // 0x0040eaa6    d9c9
                         {disp32} fmul        dword ptr [esi + 0x00000268]                  // 0x0040eaa8    d88e68020000
                         faddp                st(1), st                                     // 0x0040eaae    dec1
                         {disp32} fld         dword ptr [esi + 0x00000264]                  // 0x0040eab0    d98664020000
                         {disp32} fmul        dword ptr [esi + 0x00000258]                  // 0x0040eab6    d88e58020000
                         faddp                st(1), st                                     // 0x0040eabc    dec1
                         fxch                 st(1)                                         // 0x0040eabe    d9c9
                         {disp32} fmul        dword ptr [esi + 0x0000026c]                  // 0x0040eac0    d88e6c020000
                         faddp                st(1), st                                     // 0x0040eac6    dec1
                         {disp32} fadd        dword ptr [esi + 0x00000260]                  // 0x0040eac8    d88660020000
                         {disp32} fstp        dword ptr [esi + 0x00000244]                  // 0x0040eace    d99e44020000
_jmp_addr_0x0040ead4:    {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040ead4    d9867c020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000274]             // 0x0040eada    8b8674020000
                         test                 eax, eax                                      // 0x0040eae0    85c0
                         {disp32} fsub        dword ptr [esi + 0x00000280]                  // 0x0040eae2    d8a680020000
                         {disp8} fstp         dword ptr [esp + 0x18]                        // 0x0040eae8    d95c2418
                         {disp32} je          _jmp_addr_0x0040ebfd                          // 0x0040eaec    0f840b010000
                         {disp8} mov          ecx, dword ptr [eax + 0x04]                   // 0x0040eaf2    8b4804
                         test                 ecx, ecx                                      // 0x0040eaf5    85c9
                         {disp8} mov          dword ptr [esp + 0x1c], ecx                   // 0x0040eaf7    894c241c
                         {disp32} je          _jmp_addr_0x0040ebfd                          // 0x0040eafb    0f84fc000000
                         {disp8} jmp          _jmp_addr_0x0040eb07                          // 0x0040eb01    eb04
_jmp_addr_0x0040eb03:    {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x0040eb03    8b4c241c
_jmp_addr_0x0040eb07:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040eb07    8b4614
                         {disp8} lea          edx, dword ptr [eax + -0x02]                  // 0x0040eb0a    8d50fe
                         {disp8} mov          dword ptr [esp + 0x10], edx                   // 0x0040eb0d    89542410
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040eb11    db442410
                         sub                  eax, dword ptr [esi + 0x0c]                   // 0x0040eb15    2b460c
                         sub                  eax, 0x04                                     // 0x0040eb18    83e804
                         {disp8} mov          dword ptr [esp + 0x20], eax                   // 0x0040eb1b    89442420
                         {disp8} fild         dword ptr [esp + 0x20]                        // 0x0040eb1f    db442420
                         {disp8} fld          dword ptr [ecx + 0x04]                        // 0x0040eb23    d94104
                         mov                  edi, dword ptr [ecx]                          // 0x0040eb26    8b39
                         {disp32} fsub        dword ptr [esi + 0x00000280]                  // 0x0040eb28    d8a680020000
                         or                   edi, 0xff000000                               // 0x0040eb2e    81cf000000ff
                         mov.s                ebp, edi                                      // 0x0040eb34    8bef
                         and                  ebp, 0x3fffffff                               // 0x0040eb36    81e5ffffff3f
                         {disp32} fmul        dword ptr [esi + 0x00000244]                  // 0x0040eb3c    d88e44020000
                         {disp8} fdiv         dword ptr [esp + 0x18]                        // 0x0040eb42    d8742418
                         fmul                 st, st(1)                                     // 0x0040eb46    d8c9
                         fsubr                st, st(2)                                     // 0x0040eb48    d8ea
                         call                 _jmp_addr_0x007a1400                          // 0x0040eb4a    e8b1283900
                         {disp32} fld         dword ptr [esi + 0x00000280]                  // 0x0040eb4f    d98680020000
                         fchs                                                               // 0x0040eb55    d9e0
                         mov.s                ebx, eax                                      // 0x0040eb57    8bd8
                         {disp32} fmul        dword ptr [esi + 0x00000244]                  // 0x0040eb59    d88e44020000
                         {disp8} fdiv         dword ptr [esp + 0x18]                        // 0x0040eb5f    d8742418
                         fmul                 st, st(1)                                     // 0x0040eb63    d8c9
                         fsubr                st, st(2)                                     // 0x0040eb65    d8ea
                         call                 _jmp_addr_0x007a1400                          // 0x0040eb67    e894283900
                         fstp                 st(0)                                         // 0x0040eb6c    ddd8
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040eb6e    8b4e0c
                         fstp                 st(0)                                         // 0x0040eb71    ddd8
                         add                  ecx, 0x2                                      // 0x0040eb73    83c102
                         cmp.s                ebx, ecx                                      // 0x0040eb76    3bd9
                         {disp8} jle          _jmp_addr_0x0040eb82                          // 0x0040eb78    7e08
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x0040eb7a    8b4c2410
                         cmp.s                ebx, ecx                                      // 0x0040eb7e    3bd9
                         {disp8} jl           _jmp_addr_0x0040eb84                          // 0x0040eb80    7c02
_jmp_addr_0x0040eb82:    mov.s                ebx, ecx                                      // 0x0040eb82    8bd9
_jmp_addr_0x0040eb84:    {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040eb84    d9442414
                         push                 0x1                                           // 0x0040eb88    6a01
                         {disp8} fadd         dword ptr [esp + 0x2c]                        // 0x0040eb8a    d844242c
                         push                 0x0                                           // 0x0040eb8e    6a00
                         push                 ebp                                           // 0x0040eb90    55
                         push                 ebp                                           // 0x0040eb91    55
                         {disp8} fstp         dword ptr [esp + 0x20]                        // 0x0040eb92    d95c2420
                         push                 edi                                           // 0x0040eb96    57
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x0040eb97    d9442424
                         add                  eax, -0x02                                    // 0x0040eb9b    83c0fe
                         {disp32} fsub        dword ptr [rdata_bytes + 0x2478]              // 0x0040eb9e    d82578b48a00
                         push                 edi                                           // 0x0040eba4    57
                         push                 eax                                           // 0x0040eba5    50
                         call                 _jmp_addr_0x007a1400                          // 0x0040eba6    e855283900
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x0040ebab    d9442430
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2478]              // 0x0040ebaf    d80578b48a00
                         push                 eax                                           // 0x0040ebb5    50
                         push                 ebx                                           // 0x0040ebb6    53
                         call                 _jmp_addr_0x007a1400                          // 0x0040ebb7    e844283900
                         push                 eax                                           // 0x0040ebbc    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040ebbd    e8fe460000
                         {disp8} mov          eax, dword ptr [esp + 0x38]                   // 0x0040ebc2    8b442438
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x0040ebc6    8944243c
                         {disp32} mov         eax, dword ptr [esi + 0x00000274]             // 0x0040ebca    8b8674020000
                         add                  esp, 0x28                                     // 0x0040ebd0    83c428
                         test                 eax, eax                                      // 0x0040ebd3    85c0
                         {disp8} je           _jmp_addr_0x0040ebfd                          // 0x0040ebd5    7426
_jmp_addr_0x0040ebd7:    {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040ebd7    8b5004
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x0040ebda    8b4c241c
                         cmp.s                edx, ecx                                      // 0x0040ebde    3bd1
                         mov                  eax, dword ptr [eax]                          // 0x0040ebe0    8b00
                         {disp8} je           _jmp_addr_0x0040ebea                          // 0x0040ebe2    7406
                         test                 eax, eax                                      // 0x0040ebe4    85c0
                         {disp8} je           _jmp_addr_0x0040ebfd                          // 0x0040ebe6    7415
                         {disp8} jmp          _jmp_addr_0x0040ebd7                          // 0x0040ebe8    ebed
_jmp_addr_0x0040ebea:    test                 eax, eax                                      // 0x0040ebea    85c0
                         {disp8} je           _jmp_addr_0x0040ebfd                          // 0x0040ebec    740f
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040ebee    8b4004
                         test                 eax, eax                                      // 0x0040ebf1    85c0
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0040ebf3    8944241c
                         {disp32} jne         _jmp_addr_0x0040eb03                          // 0x0040ebf7    0f8506ffffff
_jmp_addr_0x0040ebfd:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040ebfd    8b4614
                         {disp32} fld         dword ptr [rdata_bytes + 0x23d4]              // 0x0040ec00    d905d4b38a00
                         {disp8} mov          ebp, dword ptr [esi + 0x0c]                   // 0x0040ec06    8b6e0c
                         {disp8} fst          dword ptr [esp + 0x20]                        // 0x0040ec09    d9542420
                         sub.s                eax, ebp                                      // 0x0040ec0d    2bc5
                         cdq                                                                // 0x0040ec0f    99
                         and                  edx, 0x03                                     // 0x0040ec10    83e203
                         add.s                eax, edx                                      // 0x0040ec13    03c2
                         sar                  eax, 2                                        // 0x0040ec15    c1f802
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x0040ec18    89442428
                         {disp8} fild         dword ptr [esp + 0x28]                        // 0x0040ec1c    db442428
                         {disp8} fstp         dword ptr [esp + 0x1c]                        // 0x0040ec20    d95c241c
                         {disp8} fld          dword ptr [esp + 0x18]                        // 0x0040ec24    d9442418
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2418]              // 0x0040ec28    d80d18b48a00
                         {disp8} fcomp        dword ptr [esp + 0x1c]                        // 0x0040ec2e    d85c241c
                         fnstsw               ax                                            // 0x0040ec32    dfe0
                         test                 ah, 0x41                                      // 0x0040ec34    f6c441
                         {disp8} jne          _jmp_addr_0x0040ec50                          // 0x0040ec37    7517
_jmp_addr_0x0040ec39:    fadd.s               st(0), st(0)                                  // 0x0040ec39    dcc0
                         {disp8} fld          dword ptr [esp + 0x18]                        // 0x0040ec3b    d9442418
                         fdiv                 st, st(1)                                     // 0x0040ec3f    d8f1
                         {disp8} fcomp        dword ptr [esp + 0x1c]                        // 0x0040ec41    d85c241c
                         fnstsw               ax                                            // 0x0040ec45    dfe0
                         test                 ah, 0x41                                      // 0x0040ec47    f6c441
                         {disp8} je           _jmp_addr_0x0040ec39                          // 0x0040ec4a    74ed
                         {disp8} fst          dword ptr [esp + 0x20]                        // 0x0040ec4c    d9542420
_jmp_addr_0x0040ec50:    {disp32} fld         dword ptr [esi + 0x00000280]                  // 0x0040ec50    d98680020000
                         fdiv                 st, st(1)                                     // 0x0040ec56    d8f1
                         call                 _jmp_addr_0x007a1400                          // 0x0040ec58    e8a3273900
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x0040ec5d    89442428
                         {disp8} fild         dword ptr [esp + 0x28]                        // 0x0040ec61    db442428
                         fmul                 st, st(1)                                     // 0x0040ec65    d8c9
                         {disp8} fst          dword ptr [esp + 0x14]                        // 0x0040ec67    d9542414
                         fdiv                 st, st(1)                                     // 0x0040ec6b    d8f1
                         call                 _jmp_addr_0x007a1400                          // 0x0040ec6d    e88e273900
                         fstp                 st(0)                                         // 0x0040ec72    ddd8
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040ec74    d9442414
                         mov.s                ebp, eax                                      // 0x0040ec78    8be8
                         {disp32} fcomp       dword ptr [esi + 0x0000027c]                  // 0x0040ec7a    d89e7c020000
                         and                  ebp, 0x01                                     // 0x0040ec80    83e501
                         fnstsw               ax                                            // 0x0040ec83    dfe0
                         test                 ah, 0x01                                      // 0x0040ec85    f6c401
                         {disp32} je          _jmp_addr_0x0040ed2e                          // 0x0040ec88    0f84a0000000
_jmp_addr_0x0040ec8e:    {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040ec8e    8b4614
                         {disp8} mov          edi, dword ptr [esi + 0x0c]                   // 0x0040ec91    8b7e0c
                         {disp8} lea          ecx, dword ptr [eax + -0x02]                  // 0x0040ec94    8d48fe
                         {disp8} mov          dword ptr [esp + 0x10], ecx                   // 0x0040ec97    894c2410
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x0040ec9b    db442410
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0040ec9f    d9442414
                         mov.s                edx, ebp                                      // 0x0040eca3    8bd5
                         {disp32} fsub        dword ptr [esi + 0x00000280]                  // 0x0040eca5    d8a680020000
                         and                  dl, 0x03                                      // 0x0040ecab    80e203
                         neg                  dl                                            // 0x0040ecae    f6da
                         {disp8} fdiv         dword ptr [esp + 0x18]                        // 0x0040ecb0    d8742418
                         sbb.s                edx, edx                                      // 0x0040ecb4    1bd2
                         sub.s                eax, edi                                      // 0x0040ecb6    2bc7
                         sub                  eax, 0x04                                     // 0x0040ecb8    83e804
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x0040ecbb    89442428
                         and                  edx, 0xc0000000                               // 0x0040ecbf    81e2000000c0
                         add                  edx, 0x50ffffff                               // 0x0040ecc5    81c2ffffff50
                         mov.s                ebx, edx                                      // 0x0040eccb    8bda
                         inc                  ebp                                           // 0x0040eccd    45
                         {disp8} fimul        dword ptr [esp + 0x28]                        // 0x0040ecce    da4c2428
                         fsubp                st(1), st                                     // 0x0040ecd2    dee9
                         call                 _jmp_addr_0x007a1400                          // 0x0040ecd4    e827273900
                         add                  edi, 0x02                                     // 0x0040ecd9    83c702
                         cmp.s                eax, edi                                      // 0x0040ecdc    3bc7
                         {disp8} jle          _jmp_addr_0x0040ecec                          // 0x0040ecde    7e0c
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x0040ece0    8b4c2410
                         cmp.s                eax, ecx                                      // 0x0040ece4    3bc1
                         {disp8} jl           _jmp_addr_0x0040ecee                          // 0x0040ece6    7c06
                         mov.s                eax, ecx                                      // 0x0040ece8    8bc1
                         {disp8} jmp          _jmp_addr_0x0040ecee                          // 0x0040ecea    eb02
_jmp_addr_0x0040ecec:    mov.s                eax, edi                                      // 0x0040ecec    8bc7
_jmp_addr_0x0040ecee:    {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040ecee    8b4e10
                         push                 0x1                                           // 0x0040ecf1    6a01
                         push                 0x0                                           // 0x0040ecf3    6a00
                         push                 ebx                                           // 0x0040ecf5    53
                         push                 ebx                                           // 0x0040ecf6    53
                         push                 ebx                                           // 0x0040ecf7    53
                         push                 ebx                                           // 0x0040ecf8    53
                         {disp8} lea          edx, dword ptr [eax + 0x01]                   // 0x0040ecf9    8d5001
                         push                 edx                                           // 0x0040ecfc    52
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040ecfd    8b5608
                         sub                  ecx, 0x02                                     // 0x0040ed00    83e902
                         push                 ecx                                           // 0x0040ed03    51
                         push                 eax                                           // 0x0040ed04    50
                         add                  edx, 0x02                                     // 0x0040ed05    83c202
                         push                 edx                                           // 0x0040ed08    52
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0040ed09    e8b2450000
                         {disp8} fld          dword ptr [esp + 0x3c]                        // 0x0040ed0e    d944243c
                         {disp8} fadd         dword ptr [esp + 0x48]                        // 0x0040ed12    d8442448
                         add                  esp, 0x28                                     // 0x0040ed16    83c428
                         {disp8} fst          dword ptr [esp + 0x14]                        // 0x0040ed19    d9542414
                         {disp32} fcomp       dword ptr [esi + 0x0000027c]                  // 0x0040ed1d    d89e7c020000
                         fnstsw               ax                                            // 0x0040ed23    dfe0
                         test                 ah, 0x01                                      // 0x0040ed25    f6c401
                         {disp32} jne         _jmp_addr_0x0040ec8e                          // 0x0040ed28    0f8560ffffff
_jmp_addr_0x0040ed2e:    {disp32} mov         al, byte ptr [esp + 0x00000234]               // 0x0040ed2e    8a842434020000
                         test                 al, al                                        // 0x0040ed35    84c0
                         pop                  edi                                           // 0x0040ed37    5f
                         pop                  ebp                                           // 0x0040ed38    5d
                         {disp32} je          _jmp_addr_0x0040eeea                          // 0x0040ed39    0f84ab010000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x0040ed3f    a1c052e800
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0040ed44    8b0dc452e800
                         {disp8} mov          dword ptr [esp + 0x20], eax                   // 0x0040ed4a    89442420
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x0040ed4e    89442418
                         {disp8} lea          eax, dword ptr [esp + 0x08]                   // 0x0040ed52    8d442408
                         {disp8} mov          dword ptr [esp + 0x24], ecx                   // 0x0040ed56    894c2424
                         {disp8} mov          dword ptr [esp + 0x08], ecx                   // 0x0040ed5a    894c2408
                         push                 eax                                           // 0x0040ed5e    50
                         {disp8} lea          ecx, dword ptr [esp + 0x24]                   // 0x0040ed5f    8d4c2424
                         push                 ecx                                           // 0x0040ed63    51
                         call                 ?unadjust@SetupThing@@SAMAAH0@Z               // 0x0040ed64    e8c72e0000
                         fstp                 st(0)                                         // 0x0040ed69    ddd8
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040ed6b    8b4614
                         {disp8} mov          ebx, dword ptr [esp + 0x10]                   // 0x0040ed6e    8b5c2410
                         mov.s                edx, eax                                      // 0x0040ed72    8bd0
                         sub.s                edx, ebx                                      // 0x0040ed74    2bd3
                         sub                  edx, 0x02                                     // 0x0040ed76    83ea02
                         {disp8} mov          dword ptr [esp + 0x20], edx                   // 0x0040ed79    89542420
                         {disp8} fild         dword ptr [esp + 0x20]                        // 0x0040ed7d    db442420
                         sub                  eax, dword ptr [esi + 0x0c]                   // 0x0040ed81    2b460c
                         sub                  eax, 0x04                                     // 0x0040ed84    83e804
                         {disp8} mov          dword ptr [esp + 0x20], eax                   // 0x0040ed87    89442420
                         {disp8} fidiv        dword ptr [esp + 0x20]                        // 0x0040ed8b    da742420
                         add                  esp, 0x08                                     // 0x0040ed8f    83c408
                         {disp8} fmul         dword ptr [esp + 0x10]                        // 0x0040ed92    d84c2410
                         {disp32} fadd        dword ptr [esi + 0x00000280]                  // 0x0040ed96    d88680020000
                         {disp32} fld         dword ptr [esi + 0x00000280]                  // 0x0040ed9c    d98680020000
                         fld                  st(1)                                         // 0x0040eda2    d9c1
                         fcompp                                                             // 0x0040eda4    ded9
                         fnstsw               ax                                            // 0x0040eda6    dfe0
                         test                 ah, 0x41                                      // 0x0040eda8    f6c441
                         {disp8} jne          _jmp_addr_0x0040edc8                          // 0x0040edab    751b
                         {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040edad    d9867c020000
                         fld                  st(1)                                         // 0x0040edb3    d9c1
                         fcompp                                                             // 0x0040edb5    ded9
                         fnstsw               ax                                            // 0x0040edb7    dfe0
                         test                 ah, 0x01                                      // 0x0040edb9    f6c401
                         {disp8} jne          _jmp_addr_0x0040edd0                          // 0x0040edbc    7512
                         fstp                 st(0)                                         // 0x0040edbe    ddd8
                         {disp32} fld         dword ptr [esi + 0x0000027c]                  // 0x0040edc0    d9867c020000
                         {disp8} jmp          _jmp_addr_0x0040edd0                          // 0x0040edc6    eb08
_jmp_addr_0x0040edc8:    fstp                 st(0)                                         // 0x0040edc8    ddd8
                         {disp32} fld         dword ptr [esi + 0x00000280]                  // 0x0040edca    d98680020000
_jmp_addr_0x0040edd0:    {disp8} fld          dword ptr [esp + 0x10]                        // 0x0040edd0    d9442410
                         fabs                                                               // 0x0040edd4    d9e1
                         {disp32} fcomp       qword ptr [rdata_bytes + 0x2470]              // 0x0040edd6    dc1d70b48a00
                         fnstsw               ax                                            // 0x0040eddc    dfe0
                         test                 ah, 0x41                                      // 0x0040edde    f6c441
                         {disp8} je           _jmp_addr_0x0040edfd                          // 0x0040ede1    741a
                         sub                  esp, 0x08                                     // 0x0040ede3    83ec08
                         fstp                 qword ptr [esp]                               // 0x0040ede6    dd1c24
                         {disp8} lea          eax, dword ptr [esp + 0x30]                   // 0x0040ede9    8d442430
                         push                 0x009c8210                                    // 0x0040eded    6810829c00
                         push                 eax                                           // 0x0040edf2    50
                         call                 _swprintf                                     // 0x0040edf3    e887763b00
                         add                  esp, 0x10                                     // 0x0040edf8    83c410
                         {disp8} jmp          _jmp_addr_0x0040ee15                          // 0x0040edfb    eb18
_jmp_addr_0x0040edfd:    call                 _jmp_addr_0x007a1400                          // 0x0040edfd    e8fe253900
                         push                 eax                                           // 0x0040ee02    50
                         {disp8} lea          ecx, dword ptr [esp + 0x2c]                   // 0x0040ee03    8d4c242c
                         push                 0x009c8208                                    // 0x0040ee07    6808829c00
                         push                 ecx                                           // 0x0040ee0c    51
                         call                 _swprintf                                     // 0x0040ee0d    e86d763b00
                         add                  esp, 0x0c                                     // 0x0040ee12    83c40c
_jmp_addr_0x0040ee15:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040ee15    8b4620
                         test                 eax, eax                                      // 0x0040ee18    85c0
                         {disp8} je           _jmp_addr_0x0040ee20                          // 0x0040ee1a    7404
                         mov.s                ecx, eax                                      // 0x0040ee1c    8bc8
                         {disp8} jmp          _jmp_addr_0x0040ee37                          // 0x0040ee1e    eb17
_jmp_addr_0x0040ee20:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040ee20    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040ee26    85c9
                         {disp8} je           _jmp_addr_0x0040ee32                          // 0x0040ee28    7408
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000ac]             // 0x0040ee2a    8b89ac000000
                         {disp8} jmp          _jmp_addr_0x0040ee37                          // 0x0040ee30    eb05
_jmp_addr_0x0040ee32:    mov                  ecx, 0x0000000a                               // 0x0040ee32    b90a000000
_jmp_addr_0x0040ee37:    test                 eax, eax                                      // 0x0040ee37    85c0
                         {disp8} jne          _jmp_addr_0x0040ee52                          // 0x0040ee39    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040ee3b    8b8634020000
                         test                 eax, eax                                      // 0x0040ee41    85c0
                         {disp8} je           _jmp_addr_0x0040ee4d                          // 0x0040ee43    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040ee45    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040ee52                          // 0x0040ee4b    eb05
_jmp_addr_0x0040ee4d:    mov                  eax, 0x0000000a                               // 0x0040ee4d    b80a000000
_jmp_addr_0x0040ee52:    push                 0x0                                           // 0x0040ee52    6a00
                         push                 0x00c4ccdc                                    // 0x0040ee54    68dcccc400
                         push                 ecx                                           // 0x0040ee59    51
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                   // 0x0040ee5a    8b4c2414
                         {disp8} lea          edx, dword ptr [esp + 0x34]                   // 0x0040ee5e    8d542434
                         push                 edx                                           // 0x0040ee62    52
                         cdq                                                                // 0x0040ee63    99
                         sub.s                eax, edx                                      // 0x0040ee64    2bc2
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040ee66    8b5608
                         sar                  eax, 1                                        // 0x0040ee69    d1f8
                         push                 0x2                                           // 0x0040ee6b    6a02
                         sub.s                ecx, eax                                      // 0x0040ee6d    2bc8
                         inc                  ecx                                           // 0x0040ee6f    41
                         push                 0x64                                          // 0x0040ee70    6a64
                         push                 ecx                                           // 0x0040ee72    51
                         dec                  edx                                           // 0x0040ee73    4a
                         push                 edx                                           // 0x0040ee74    52
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040ee75    e8362b0000
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x0040ee7a    8b4620
                         fstp                 st(0)                                         // 0x0040ee7d    ddd8
                         add                  esp, 0x20                                     // 0x0040ee7f    83c420
                         test                 eax, eax                                      // 0x0040ee82    85c0
                         {disp8} je           _jmp_addr_0x0040ee8a                          // 0x0040ee84    7404
                         mov.s                ecx, eax                                      // 0x0040ee86    8bc8
                         {disp8} jmp          _jmp_addr_0x0040eea1                          // 0x0040ee88    eb17
_jmp_addr_0x0040ee8a:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x0040ee8a    8b8e34020000
                         test                 ecx, ecx                                      // 0x0040ee90    85c9
                         {disp8} je           _jmp_addr_0x0040ee9c                          // 0x0040ee92    7408
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000ac]             // 0x0040ee94    8b89ac000000
                         {disp8} jmp          _jmp_addr_0x0040eea1                          // 0x0040ee9a    eb05
_jmp_addr_0x0040ee9c:    mov                  ecx, 0x0000000a                               // 0x0040ee9c    b90a000000
_jmp_addr_0x0040eea1:    test                 eax, eax                                      // 0x0040eea1    85c0
                         {disp8} jne          _jmp_addr_0x0040eebc                          // 0x0040eea3    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040eea5    8b8634020000
                         test                 eax, eax                                      // 0x0040eeab    85c0
                         {disp8} je           _jmp_addr_0x0040eeb7                          // 0x0040eead    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x0040eeaf    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040eebc                          // 0x0040eeb5    eb05
_jmp_addr_0x0040eeb7:    mov                  eax, 0x0000000a                               // 0x0040eeb7    b80a000000
_jmp_addr_0x0040eebc:    push                 0x0                                           // 0x0040eebc    6a00
                         push                 0x00c4ccf8                                    // 0x0040eebe    68f8ccc400
                         push                 ecx                                           // 0x0040eec3    51
                         cdq                                                                // 0x0040eec4    99
                         sub.s                eax, edx                                      // 0x0040eec5    2bc2
                         {disp8} mov          edx, dword ptr [esp + 0x14]                   // 0x0040eec7    8b542414
                         {disp8} lea          ecx, dword ptr [esp + 0x34]                   // 0x0040eecb    8d4c2434
                         push                 ecx                                           // 0x0040eecf    51
                         sar                  eax, 1                                        // 0x0040eed0    d1f8
                         push                 0x2                                           // 0x0040eed2    6a02
                         sub.s                edx, eax                                      // 0x0040eed4    2bd0
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040eed6    8b4608
                         push                 0x64                                          // 0x0040eed9    6a64
                         push                 edx                                           // 0x0040eedb    52
                         sub                  eax, 0x02                                     // 0x0040eedc    83e802
                         push                 eax                                           // 0x0040eedf    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0040eee0    e8cb2a0000
                         fstp                 st(0)                                         // 0x0040eee5    ddd8
                         add                  esp, 0x20                                     // 0x0040eee7    83c420
_jmp_addr_0x0040eeea:    pop                  esi                                           // 0x0040eeea    5e
                         pop                  ebx                                           // 0x0040eeeb    5b
                         add                  esp, 0x00000220                               // 0x0040eeec    81c420020000
                         ret                  0x0008                                        // 0x0040eef2    c20800
                         nop                                                                // 0x0040eef5    90
                         nop                                                                // 0x0040eef6    90
                         nop                                                                // 0x0040eef7    90
                         nop                                                                // 0x0040eef8    90
                         nop                                                                // 0x0040eef9    90
                         nop                                                                // 0x0040eefa    90
                         nop                                                                // 0x0040eefb    90
                         nop                                                                // 0x0040eefc    90
                         nop                                                                // 0x0040eefd    90
                         nop                                                                // 0x0040eefe    90
                         nop                                                                // 0x0040eeff    90
@__ct__14SetupVBarGraphFiiiiiPw@32:    {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040ef00    8b442418
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x0040ef04    8b542410
                         push                 esi                                           // 0x0040ef08    56
                         push                 edi                                           // 0x0040ef09    57
                         mov.s                esi, ecx                                      // 0x0040ef0a    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x0040ef0c    8b4c241c
                         xor.s                edi, edi                                      // 0x0040ef10    33ff
                         push                 edi                                           // 0x0040ef12    57
                         push                 eax                                           // 0x0040ef13    50
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x0040ef14    8b44241c
                         push                 ecx                                           // 0x0040ef18    51
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x0040ef19    8b4c241c
                         push                 edx                                           // 0x0040ef1d    52
                         {disp8} mov          edx, dword ptr [esp + 0x1c]                   // 0x0040ef1e    8b54241c
                         push                 eax                                           // 0x0040ef22    50
                         push                 ecx                                           // 0x0040ef23    51
                         push                 edx                                           // 0x0040ef24    52
                         mov.s                ecx, esi                                      // 0x0040ef25    8bce
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x0040ef27    e884a9ffff
                         {disp32} mov         dword ptr [esi + 0x00000278], edi             // 0x0040ef2c    89be78020000
                         {disp32} mov         dword ptr [esi + 0x00000274], edi             // 0x0040ef32    89be74020000
                         mov                  dword ptr [esi], 0x008ab480                   // 0x0040ef38    c70680b48a00
                         {disp32} mov         dword ptr [esi + 0x0000023c], edi             // 0x0040ef3e    89be3c020000
                         {disp32} mov         dword ptr [esi + 0x00000280], edi             // 0x0040ef44    89be80020000
                         {disp32} mov         dword ptr [esi + 0x0000027c], edi             // 0x0040ef4a    89be7c020000
                         call                 _GetSmallTextSize__Fv                         // 0x0040ef50    e8bb8affff
                         mov.s                ecx, esi                                      // 0x0040ef55    8bce
                         {disp8} mov          dword ptr [esi + 0x20], eax                   // 0x0040ef57    894620
                         call                 ?Reset@SetupVBarGraph@@UAEXXZ                 // 0x0040ef5a    e851000000
                         pop                  edi                                           // 0x0040ef5f    5f
                         mov.s                eax, esi                                      // 0x0040ef60    8bc6
                         pop                  esi                                           // 0x0040ef62    5e
                         ret                  0x0018                                        // 0x0040ef63    c21800
                         nop                                                                // 0x0040ef66    90
                         nop                                                                // 0x0040ef67    90
                         nop                                                                // 0x0040ef68    90
                         nop                                                                // 0x0040ef69    90
                         nop                                                                // 0x0040ef6a    90
                         nop                                                                // 0x0040ef6b    90
                         nop                                                                // 0x0040ef6c    90
                         nop                                                                // 0x0040ef6d    90
                         nop                                                                // 0x0040ef6e    90
                         nop                                                                // 0x0040ef6f    90
_KeyDown__14SetupVBarGraphFii:
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000234]             // 0x0040ef70    8b8934020000
                         test                 ecx, ecx                                      // 0x0040ef76    85c9
                         {disp8} je           _jmp_addr_0x0040ef88                          // 0x0040ef78    740e
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040ef7a    8b542408
                         mov                  eax, dword ptr [ecx]                          // 0x0040ef7e    8b01
                         push                 edx                                           // 0x0040ef80    52
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040ef81    8b542408
                         push                 edx                                           // 0x0040ef85    52
                         call                 dword ptr [eax]                               // 0x0040ef86    ff10
_jmp_addr_0x0040ef88:    ret                  0x0008                                        // 0x0040ef88    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040ef8b    e8e928ffff
??_GSetupVBarGraph@@UAEPAXI@Z:
                         push                 esi                                           // 0x0040ef90    56
                         mov.s                esi, ecx                                      // 0x0040ef91    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x0040ef93    e828a4ffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x0040ef98    f644240801
                         {disp8} je           _jmp_addr_0x0040efa8                          // 0x0040ef9d    7409
                         push                 esi                                           // 0x0040ef9f    56
                         call                 ??3@YAXPAX@Z                                  // 0x0040efa0    e8f3fe3900
                         add                  esp, 0x04                                     // 0x0040efa5    83c404
_jmp_addr_0x0040efa8:    mov.s                eax, esi                                      // 0x0040efa8    8bc6
                         pop                  esi                                           // 0x0040efaa    5e
                         ret                  0x0004                                        // 0x0040efab    c20400
                         nop                                                                // 0x0040efae    90
                         nop                                                                // 0x0040efaf    90
_Reset__14SetupVBarGraphFv:
?Reset@SetupVBarGraph@@UAEXXZ:
                                 sub                  esp, 0x74                                     // 0x0040efb0    83ec74
                         push                 ebx                                           // 0x0040efb3    53
                         push                 ebp                                           // 0x0040efb4    55
                         push                 esi                                           // 0x0040efb5    56
                         push                 edi                                           // 0x0040efb6    57
                         mov.s                esi, ecx                                      // 0x0040efb7    8bf1
_jmp_addr_0x0040efb9:    {disp32} mov         eax, dword ptr [esi + 0x00000274]             // 0x0040efb9    8b8674020000
                         xor.s                ebx, ebx                                      // 0x0040efbf    33db
                         cmp.s                eax, ebx                                      // 0x0040efc1    3bc3
                         {disp8} je           _jmp_addr_0x0040f00c                          // 0x0040efc3    7447
                         {disp8} mov          ebp, dword ptr [eax + 0x04]                   // 0x0040efc5    8b6804
_jmp_addr_0x0040efc8:    cmp                  dword ptr [eax + 0x04], ebp                   // 0x0040efc8    396804
                         mov                  edi, dword ptr [eax]                          // 0x0040efcb    8b38
                         {disp8} jne          _jmp_addr_0x0040eff9                          // 0x0040efcd    752a
                         cmp                  eax, dword ptr [esi + 0x00000274]             // 0x0040efcf    3b8674020000
                         {disp8} jne          _jmp_addr_0x0040efdf                          // 0x0040efd5    7508
                         {disp32} mov         dword ptr [esi + 0x00000274], edi             // 0x0040efd7    89be74020000
                         {disp8} jmp          _jmp_addr_0x0040efe1                          // 0x0040efdd    eb02
_jmp_addr_0x0040efdf:    mov                  dword ptr [ebx], edi                          // 0x0040efdf    893b
_jmp_addr_0x0040efe1:    {disp32} mov         edx, dword ptr [esi + 0x00000278]             // 0x0040efe1    8b9678020000
                         dec                  edx                                           // 0x0040efe7    4a
                         push                 eax                                           // 0x0040efe8    50
                         {disp32} mov         dword ptr [esi + 0x00000278], edx             // 0x0040efe9    899678020000
                         call                 ??3@YAXPAX@Z                                  // 0x0040efef    e8a4fe3900
                         add                  esp, 0x04                                     // 0x0040eff4    83c404
                         {disp8} jmp          _jmp_addr_0x0040effb                          // 0x0040eff7    eb02
_jmp_addr_0x0040eff9:    mov.s                ebx, eax                                      // 0x0040eff9    8bd8
_jmp_addr_0x0040effb:    test                 edi, edi                                      // 0x0040effb    85ff
                         mov.s                eax, edi                                      // 0x0040effd    8bc7
                         {disp8} jne          _jmp_addr_0x0040efc8                          // 0x0040efff    75c7
                         push                 ebp                                           // 0x0040f001    55
                         call                 ??3@YAXPAX@Z                                  // 0x0040f002    e891fe3900
                         add                  esp, 0x04                                     // 0x0040f007    83c404
                         {disp8} jmp          _jmp_addr_0x0040efb9                          // 0x0040f00a    ebad
_jmp_addr_0x0040f00c:    {disp32} mov         dword ptr [esi + 0x00000248], ebx             // 0x0040f00c    899e48020000
                         {disp32} mov         dword ptr [esi + 0x00000244], ebx             // 0x0040f012    899e44020000
                         {disp32} mov         dword ptr [esi + 0x00000260], ebx             // 0x0040f018    899e60020000
                         {disp32} mov         dword ptr [esi + 0x0000025c], ebx             // 0x0040f01e    899e5c020000
                         {disp32} mov         dword ptr [esi + 0x00000258], ebx             // 0x0040f024    899e58020000
                         {disp32} mov         dword ptr [esi + 0x00000270], ebx             // 0x0040f02a    899e70020000
                         {disp32} mov         dword ptr [esi + 0x0000026c], ebx             // 0x0040f030    899e6c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], ebx             // 0x0040f036    899e54020000
                         {disp32} mov         dword ptr [esi + 0x00000268], ebx             // 0x0040f03c    899e68020000
                         {disp32} mov         dword ptr [esi + 0x00000250], ebx             // 0x0040f042    899e50020000
                         {disp32} mov         dword ptr [esi + 0x00000264], ebx             // 0x0040f048    899e64020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], ebx             // 0x0040f04e    899e4c020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]             // 0x0040f054    8b8e50020000
                         mov.s                eax, ebx                                      // 0x0040f05a    8bc3
                         {disp32} mov         dword ptr [esi + 0x00000264], ecx             // 0x0040f05c    898e64020000
                         {disp8} lea          edx, dword ptr [esp + 0x24]                   // 0x0040f062    8d542424
                         {disp8} lea          ecx, dword ptr [esp + 0x54]                   // 0x0040f066    8d4c2454
                         {disp32} mov         dword ptr [esi + 0x00000260], eax             // 0x0040f06a    898660020000
                         {disp32} mov         dword ptr [esi + 0x00000248], 0x3f800000      // 0x0040f070    c786480200000000803f
                         {disp32} mov         dword ptr [esi + 0x0000024c], ebx             // 0x0040f07a    899e4c020000
                         {disp32} mov         dword ptr [esi + 0x0000025c], 0x3f000000      // 0x0040f080    c7865c0200000000003f
                         {disp32} mov         dword ptr [esi + 0x00000258], ebx             // 0x0040f08a    899e58020000
                         {disp8} mov          dword ptr [esp + 0x24], 0x3b2aaaab            // 0x0040f090    c7442424abaa2a3b
                         {disp8} mov          dword ptr [esp + 0x28], 0x3caaaaab            // 0x0040f098    c7442428abaaaa3c
                         {disp8} mov          dword ptr [esp + 0x2c], 0x3e000000            // 0x0040f0a0    c744242c0000003e
                         {disp8} mov          dword ptr [esp + 0x30], 0x3caaaaab            // 0x0040f0a8    c7442430abaaaa3c
                         {disp8} mov          dword ptr [esp + 0x34], 0x3e000000            // 0x0040f0b0    c74424340000003e
                         {disp8} mov          dword ptr [esp + 0x38], 0x3f000000            // 0x0040f0b8    c74424380000003f
                         {disp8} mov          dword ptr [esp + 0x3c], 0x3e000000            // 0x0040f0c0    c744243c0000003e
                         {disp8} mov          dword ptr [esp + 0x40], 0x3f000000            // 0x0040f0c8    c74424400000003f
                         {disp8} mov          dword ptr [esp + 0x44], 0x3f800000            // 0x0040f0d0    c74424440000803f
                         {disp8} mov          dword ptr [esp + 0x50], 0x00000000            // 0x0040f0d8    c744245000000000
                         {disp8} mov          dword ptr [esp + 0x4c], 0x00000000            // 0x0040f0e0    c744244c00000000
                         {disp8} mov          dword ptr [esp + 0x48], 0x00000000            // 0x0040f0e8    c744244800000000
                         call                 ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x0040f0f0    e89bc13e00
                         {disp32} fld         dword ptr [esi + 0x00000248]                  // 0x0040f0f5    d98648020000
                         {disp32} fsub        dword ptr [esi + 0x00000260]                  // 0x0040f0fb    d8a660020000
                         pop                  edi                                           // 0x0040f101    5f
                         {disp32} fld         dword ptr [esi + 0x00000264]                  // 0x0040f102    d98664020000
                         {disp32} fmul        dword ptr [esi + 0x0000025c]                  // 0x0040f108    d88e5c020000
                         fsubp                st(1), st                                     // 0x0040f10e    dee9
                         {disp32} fld         dword ptr [esi + 0x0000024c]                  // 0x0040f110    d9864c020000
                         {disp32} fsub        dword ptr [esi + 0x00000264]                  // 0x0040f116    d8a664020000
                         {disp8} fstp         dword ptr [esp + 0x18]                        // 0x0040f11c    d95c2418
                         {disp8} mov          edx, dword ptr [esp + 0x18]                   // 0x0040f120    8b542418
                         {disp8} mov          dword ptr [esp + 0x10], edx                   // 0x0040f124    89542410
                         {disp8} fst          dword ptr [esp + 0x0c]                        // 0x0040f128    d954240c
                         {disp8} fld          dword ptr [esp + 0x5c]                        // 0x0040f12c    d944245c
                         {disp8} fmul         dword ptr [esp + 0x18]                        // 0x0040f130    d84c2418
                         {disp8} fld          dword ptr [esp + 0x50]                        // 0x0040f134    d9442450
                         fmul                 st, st(2)                                     // 0x0040f138    d8ca
                         faddp                st(1), st                                     // 0x0040f13a    dec1
                         {disp8} fadd         dword ptr [esp + 0x74]                        // 0x0040f13c    d8442474
                         fstp                 st(1)                                         // 0x0040f140    ddd9
                         {disp8} fld          dword ptr [esp + 0x54]                        // 0x0040f142    d9442454
                         {disp8} fmul         dword ptr [esp + 0x0c]                        // 0x0040f146    d84c240c
                         {disp8} fld          dword ptr [esp + 0x60]                        // 0x0040f14a    d9442460
                         {disp8} fmul         dword ptr [esp + 0x18]                        // 0x0040f14e    d84c2418
                         faddp                st(1), st                                     // 0x0040f152    dec1
                         {disp8} fadd         dword ptr [esp + 0x78]                        // 0x0040f154    d8442478
                         {disp8} fstp         dword ptr [esp + 0x18]                        // 0x0040f158    d95c2418
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040f15c    8b442418
                         {disp8} fld          dword ptr [esp + 0x64]                        // 0x0040f160    d9442464
                         {disp32} mov         dword ptr [esi + 0x0000026c], eax             // 0x0040f164    89866c020000
                         {disp8} fmul         dword ptr [esp + 0x10]                        // 0x0040f16a    d84c2410
                         {disp8} fld          dword ptr [esp + 0x58]                        // 0x0040f16e    d9442458
                         {disp8} fmul         dword ptr [esp + 0x0c]                        // 0x0040f172    d84c240c
                         faddp                st(1), st                                     // 0x0040f176    dec1
                         {disp8} fadd         dword ptr [esp + 0x7c]                        // 0x0040f178    d844247c
                         {disp8} fstp         dword ptr [esp + 0x1c]                        // 0x0040f17c    d95c241c
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x0040f180    8b4c241c
                         {disp32} mov         dword ptr [esi + 0x00000268], ecx             // 0x0040f184    898e68020000
                         {disp32} fstp        dword ptr [esi + 0x00000270]                  // 0x0040f18a    d99e70020000
                         {disp32} mov         dword ptr [esi + 0x00000280], ebx             // 0x0040f190    899e80020000
                         {disp32} mov         dword ptr [esi + 0x0000027c], ebx             // 0x0040f196    899e7c020000
                         pop                  esi                                           // 0x0040f19c    5e
                         pop                  ebp                                           // 0x0040f19d    5d
                         pop                  ebx                                           // 0x0040f19e    5b
                         add                  esp, 0x74                                     // 0x0040f19f    83c474
                         ret                                                                // 0x0040f1a2    c3
                         nop                                                                // 0x0040f1a3    90
                         nop                                                                // 0x0040f1a4    90
                         nop                                                                // 0x0040f1a5    90
                         nop                                                                // 0x0040f1a6    90
                         nop                                                                // 0x0040f1a7    90
                         nop                                                                // 0x0040f1a8    90
                         nop                                                                // 0x0040f1a9    90
                         nop                                                                // 0x0040f1aa    90
                         nop                                                                // 0x0040f1ab    90
                         nop                                                                // 0x0040f1ac    90
                         nop                                                                // 0x0040f1ad    90
                         nop                                                                // 0x0040f1ae    90
                         nop                                                                // 0x0040f1af    90
_SetScale__14SetupVBarGraphFf:
                         {disp8} fld          dword ptr [esp + 0x04]                        // 0x0040f1b0    d9442404
                         {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0040f1b4    d81598a38a00
                         fnstsw               ax                                            // 0x0040f1ba    dfe0
                         test                 ah, 0x41                                      // 0x0040f1bc    f6c441
                         {disp8} je           _jmp_addr_0x0040f220                          // 0x0040f1bf    745f
                         {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040f1c1    8b8174020000
                         fstp                 st(0)                                         // 0x0040f1c7    ddd8
                         test                 eax, eax                                      // 0x0040f1c9    85c0
                         {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x0040f1cb    d90598a38a00
                         {disp8} je           _jmp_addr_0x0040f218                          // 0x0040f1d1    7445
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040f1d3    8b5004
                         test                 edx, edx                                      // 0x0040f1d6    85d2
                         {disp8} je           _jmp_addr_0x0040f218                          // 0x0040f1d8    743e
_jmp_addr_0x0040f1da:    {disp8} fcom         dword ptr [edx + 0x04]                        // 0x0040f1da    d85204
                         fnstsw               ax                                            // 0x0040f1dd    dfe0
                         test                 ah, 0x01                                      // 0x0040f1df    f6c401
                         {disp8} je           _jmp_addr_0x0040f1e9                          // 0x0040f1e2    7405
                         fstp                 st(0)                                         // 0x0040f1e4    ddd8
                         {disp8} fld          dword ptr [edx + 0x04]                        // 0x0040f1e6    d94204
_jmp_addr_0x0040f1e9:    {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040f1e9    8b8174020000
                         test                 eax, eax                                      // 0x0040f1ef    85c0
                         {disp8} je           _jmp_addr_0x0040f20b                          // 0x0040f1f1    7418
_jmp_addr_0x0040f1f3:    cmp                  dword ptr [eax + 0x04], edx                   // 0x0040f1f3    395004
                         mov                  eax, dword ptr [eax]                          // 0x0040f1f6    8b00
                         {disp8} je           _jmp_addr_0x0040f200                          // 0x0040f1f8    7406
                         test                 eax, eax                                      // 0x0040f1fa    85c0
                         {disp8} je           _jmp_addr_0x0040f20b                          // 0x0040f1fc    740d
                         {disp8} jmp          _jmp_addr_0x0040f1f3                          // 0x0040f1fe    ebf3
_jmp_addr_0x0040f200:    test                 eax, eax                                      // 0x0040f200    85c0
                         {disp8} je           _jmp_addr_0x0040f20b                          // 0x0040f202    7407
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040f204    8b5004
                         test                 edx, edx                                      // 0x0040f207    85d2
                         {disp8} jne          _jmp_addr_0x0040f1da                          // 0x0040f209    75cf
_jmp_addr_0x0040f20b:    {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0040f20b    d81598a38a00
                         fnstsw               ax                                            // 0x0040f211    dfe0
                         test                 ah, 0x41                                      // 0x0040f213    f6c441
                         {disp8} je           _jmp_addr_0x0040f220                          // 0x0040f216    7408
_jmp_addr_0x0040f218:    fstp                 st(0)                                         // 0x0040f218    ddd8
                         {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x0040f21a    d90590a38a00
_jmp_addr_0x0040f220:    {disp32} fstp        dword ptr [ecx + 0x0000027c]                  // 0x0040f220    d9997c020000
                         {disp32} mov         dword ptr [ecx + 0x00000280], 0x00000000      // 0x0040f226    c7818002000000000000
                         {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040f230    8b8174020000
                         test                 eax, eax                                      // 0x0040f236    85c0
                         {disp8} je           _jmp_addr_0x0040f27c                          // 0x0040f238    7442
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040f23a    8b5004
                         test                 edx, edx                                      // 0x0040f23d    85d2
                         {disp8} je           _jmp_addr_0x0040f27c                          // 0x0040f23f    743b
_jmp_addr_0x0040f241:    {disp32} fld         dword ptr [ecx + 0x00000280]                  // 0x0040f241    d98180020000
                         {disp8} fcomp        dword ptr [edx + 0x04]                        // 0x0040f247    d85a04
                         fnstsw               ax                                            // 0x0040f24a    dfe0
                         test                 ah, 0x41                                      // 0x0040f24c    f6c441
                         {disp8} jne          _jmp_addr_0x0040f25a                          // 0x0040f24f    7509
                         {disp8} mov          eax, dword ptr [edx + 0x04]                   // 0x0040f251    8b4204
                         {disp32} mov         dword ptr [ecx + 0x00000280], eax             // 0x0040f254    898180020000
_jmp_addr_0x0040f25a:    {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040f25a    8b8174020000
                         test                 eax, eax                                      // 0x0040f260    85c0
                         {disp8} je           _jmp_addr_0x0040f27c                          // 0x0040f262    7418
_jmp_addr_0x0040f264:    cmp                  dword ptr [eax + 0x04], edx                   // 0x0040f264    395004
                         mov                  eax, dword ptr [eax]                          // 0x0040f267    8b00
                         {disp8} je           _jmp_addr_0x0040f271                          // 0x0040f269    7406
                         test                 eax, eax                                      // 0x0040f26b    85c0
                         {disp8} je           _jmp_addr_0x0040f27c                          // 0x0040f26d    740d
                         {disp8} jmp          _jmp_addr_0x0040f264                          // 0x0040f26f    ebf3
_jmp_addr_0x0040f271:    test                 eax, eax                                      // 0x0040f271    85c0
                         {disp8} je           _jmp_addr_0x0040f27c                          // 0x0040f273    7407
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0040f275    8b5004
                         test                 edx, edx                                      // 0x0040f278    85d2
                         {disp8} jne          _jmp_addr_0x0040f241                          // 0x0040f27a    75c5
_jmp_addr_0x0040f27c:    ret                  0x0004                                        // 0x0040f27c    c20400
                         nop                                                                // 0x0040f27f    90
_AddBar__14SetupVBarGraphFRC8VBarData:
                         push                 esi                                           // 0x0040f280    56
                         push                 edi                                           // 0x0040f281    57
                         push                 0x00000890                                    // 0x0040f282    6890080000
                         push                 0x009c8190                                    // 0x0040f287    6890819c00
                         push                 0x8                                           // 0x0040f28c    6a08
                         mov.s                edi, ecx                                      // 0x0040f28e    8bf9
                         call                 ___nw__FUl                                    // 0x0040f290    e8fbc43c00
                         add                  esp, 0x0c                                     // 0x0040f295    83c40c
                         test                 eax, eax                                      // 0x0040f298    85c0
                         {disp8} je           _jmp_addr_0x0040f2ae                          // 0x0040f29a    7412
                         {disp8} mov          ecx, dword ptr [esp + 0x0c]                   // 0x0040f29c    8b4c240c
                         mov                  edx, dword ptr [ecx]                          // 0x0040f2a0    8b11
                         mov                  dword ptr [eax], edx                          // 0x0040f2a2    8910
                         {disp8} mov          ecx, dword ptr [ecx + 0x04]                   // 0x0040f2a4    8b4904
                         {disp8} mov          dword ptr [eax + 0x04], ecx                   // 0x0040f2a7    894804
                         mov.s                esi, eax                                      // 0x0040f2aa    8bf0
                         {disp8} jmp          _jmp_addr_0x0040f2b0                          // 0x0040f2ac    eb02
_jmp_addr_0x0040f2ae:    xor.s                esi, esi                                      // 0x0040f2ae    33f6
_jmp_addr_0x0040f2b0:    test                 esi, esi                                      // 0x0040f2b0    85f6
                         {disp8} je           _jmp_addr_0x0040f2fa                          // 0x0040f2b2    7446
                         push                 0x8                                           // 0x0040f2b4    6a08
                         call                 ??2@YAPAXI@Z                                  // 0x0040f2b6    e833723b00
                         add                  esp, 0x04                                     // 0x0040f2bb    83c404
                         test                 eax, eax                                      // 0x0040f2be    85c0
                         {disp8} je           _jmp_addr_0x0040f2fa                          // 0x0040f2c0    7438
                         {disp8} mov          dword ptr [eax + 0x04], esi                   // 0x0040f2c2    897004
                         mov                  dword ptr [eax], 0x00000000                   // 0x0040f2c5    c70000000000
                         {disp32} mov         ecx, dword ptr [edi + 0x00000274]             // 0x0040f2cb    8b8f74020000
                         test                 ecx, ecx                                      // 0x0040f2d1    85c9
                         {disp8} je           _jmp_addr_0x0040f2ee                          // 0x0040f2d3    7419
_jmp_addr_0x0040f2d5:    mov.s                edx, ecx                                      // 0x0040f2d5    8bd1
                         mov                  ecx, dword ptr [ecx]                          // 0x0040f2d7    8b09
                         test                 ecx, ecx                                      // 0x0040f2d9    85c9
                         {disp8} jne          _jmp_addr_0x0040f2d5                          // 0x0040f2db    75f8
                         test                 edx, edx                                      // 0x0040f2dd    85d2
                         {disp8} je           _jmp_addr_0x0040f2ee                          // 0x0040f2df    740d
                         mov                  dword ptr [edx], eax                          // 0x0040f2e1    8902
                         {disp32} inc         dword ptr [edi + 0x00000278]                  // 0x0040f2e3    ff8778020000
                         pop                  edi                                           // 0x0040f2e9    5f
                         pop                  esi                                           // 0x0040f2ea    5e
                         ret                  0x0004                                        // 0x0040f2eb    c20400
_jmp_addr_0x0040f2ee:    {disp32} mov         dword ptr [edi + 0x00000274], eax             // 0x0040f2ee    898774020000
                         {disp32} inc         dword ptr [edi + 0x00000278]                  // 0x0040f2f4    ff8778020000
_jmp_addr_0x0040f2fa:    pop                  edi                                           // 0x0040f2fa    5f
                         pop                  esi                                           // 0x0040f2fb    5e
                         ret                  0x0004                                        // 0x0040f2fc    c20400
                         nop                                                                // 0x0040f2ff    90
_SetBar__14SetupVBarGraphFiRC8VBarData:
                         {disp8} mov          edx, dword ptr [esp + 0x04]                   // 0x0040f300    8b542404
                         test                 edx, edx                                      // 0x0040f304    85d2
                         push                 esi                                           // 0x0040f306    56
                         {disp8} jl           _jmp_addr_0x0040f349                          // 0x0040f307    7c40
                         {disp32} mov         eax, dword ptr [ecx + 0x00000278]             // 0x0040f309    8b8178020000
                         cmp.s                edx, eax                                      // 0x0040f30f    3bd0
                         {disp8} jge          _jmp_addr_0x0040f349                          // 0x0040f311    7d36
                         mov.s                esi, eax                                      // 0x0040f313    8bf0
                         test                 esi, esi                                      // 0x0040f315    85f6
                         {disp8} jbe          _jmp_addr_0x0040f349                          // 0x0040f317    7630
                         {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040f319    8b8174020000
                         test                 eax, eax                                      // 0x0040f31f    85c0
                         {disp8} je           _jmp_addr_0x0040f349                          // 0x0040f321    7426
                         cmp.s                edx, esi                                      // 0x0040f323    3bd6
                         {disp8} jge          _jmp_addr_0x0040f349                          // 0x0040f325    7d22
                         test                 edx, edx                                      // 0x0040f327    85d2
                         {disp8} jle          _jmp_addr_0x0040f330                          // 0x0040f329    7e05
_jmp_addr_0x0040f32b:    dec                  edx                                           // 0x0040f32b    4a
                         mov                  eax, dword ptr [eax]                          // 0x0040f32c    8b00
                         {disp8} jne          _jmp_addr_0x0040f32b                          // 0x0040f32e    75fb
_jmp_addr_0x0040f330:    test                 eax, eax                                      // 0x0040f330    85c0
                         {disp8} je           _jmp_addr_0x0040f349                          // 0x0040f332    7415
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040f334    8b4004
                         test                 eax, eax                                      // 0x0040f337    85c0
                         {disp8} je           _jmp_addr_0x0040f349                          // 0x0040f339    740e
                         {disp8} mov          ecx, dword ptr [esp + 0x0c]                   // 0x0040f33b    8b4c240c
                         mov                  edx, dword ptr [ecx]                          // 0x0040f33f    8b11
                         mov                  dword ptr [eax], edx                          // 0x0040f341    8910
                         {disp8} mov          ecx, dword ptr [ecx + 0x04]                   // 0x0040f343    8b4904
                         {disp8} mov          dword ptr [eax + 0x04], ecx                   // 0x0040f346    894804
_jmp_addr_0x0040f349:    pop                  esi                                           // 0x0040f349    5e
                         ret                  0x0008                                        // 0x0040f34a    c20800
                         nop                                                                // 0x0040f34d    90
                         nop                                                                // 0x0040f34e    90
                         nop                                                                // 0x0040f34f    90
_GetBar__14SetupVBarGraphFiR8VBarData:
                         {disp8} mov          edx, dword ptr [esp + 0x04]                   // 0x0040f350    8b542404
                         test                 edx, edx                                      // 0x0040f354    85d2
                         push                 esi                                           // 0x0040f356    56
                         {disp8} jl           _jmp_addr_0x0040f399                          // 0x0040f357    7c40
                         {disp32} mov         eax, dword ptr [ecx + 0x00000278]             // 0x0040f359    8b8178020000
                         cmp.s                edx, eax                                      // 0x0040f35f    3bd0
                         {disp8} jge          _jmp_addr_0x0040f399                          // 0x0040f361    7d36
                         mov.s                esi, eax                                      // 0x0040f363    8bf0
                         test                 esi, esi                                      // 0x0040f365    85f6
                         {disp8} jbe          _jmp_addr_0x0040f399                          // 0x0040f367    7630
                         {disp32} mov         eax, dword ptr [ecx + 0x00000274]             // 0x0040f369    8b8174020000
                         test                 eax, eax                                      // 0x0040f36f    85c0
                         {disp8} je           _jmp_addr_0x0040f399                          // 0x0040f371    7426
                         cmp.s                edx, esi                                      // 0x0040f373    3bd6
                         {disp8} jge          _jmp_addr_0x0040f399                          // 0x0040f375    7d22
                         test                 edx, edx                                      // 0x0040f377    85d2
                         {disp8} jle          _jmp_addr_0x0040f380                          // 0x0040f379    7e05
_jmp_addr_0x0040f37b:    dec                  edx                                           // 0x0040f37b    4a
                         mov                  eax, dword ptr [eax]                          // 0x0040f37c    8b00
                         {disp8} jne          _jmp_addr_0x0040f37b                          // 0x0040f37e    75fb
_jmp_addr_0x0040f380:    test                 eax, eax                                      // 0x0040f380    85c0
                         {disp8} je           _jmp_addr_0x0040f399                          // 0x0040f382    7415
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040f384    8b4004
                         test                 eax, eax                                      // 0x0040f387    85c0
                         {disp8} je           _jmp_addr_0x0040f399                          // 0x0040f389    740e
                         mov                  edx, dword ptr [eax]                          // 0x0040f38b    8b10
                         {disp8} mov          ecx, dword ptr [esp + 0x0c]                   // 0x0040f38d    8b4c240c
                         mov                  dword ptr [ecx], edx                          // 0x0040f391    8911
                         {disp8} mov          eax, dword ptr [eax + 0x04]                   // 0x0040f393    8b4004
                         {disp8} mov          dword ptr [ecx + 0x04], eax                   // 0x0040f396    894104
_jmp_addr_0x0040f399:    pop                  esi                                           // 0x0040f399    5e
                         ret                  0x0008                                        // 0x0040f39a    c20800
                         nop                                                                // 0x0040f39d    90
                         nop                                                                // 0x0040f39e    90
                         nop                                                                // 0x0040f39f    90
_Draw__14SetupTabButtonFbb:
                         sub                  esp, 0x18                                     // 0x0040f3a0    83ec18
                         push                 ebp                                           // 0x0040f3a3    55
                         push                 esi                                           // 0x0040f3a4    56
                         push                 edi                                           // 0x0040f3a5    57
                         mov.s                esi, ecx                                      // 0x0040f3a6    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]             // 0x0040f3a8    8b8650020000
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]             // 0x0040f3ae    8b8e4c020000
                         {disp32} mov         edx, dword ptr [esi + 0x00000248]             // 0x0040f3b4    8b9648020000
                         push                 0x0                                           // 0x0040f3ba    6a00
                         push                 eax                                           // 0x0040f3bc    50
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040f3bd    8b8644020000
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x0040f3c3    8d7e24
                         push                 edi                                           // 0x0040f3c6    57
                         push                 ecx                                           // 0x0040f3c7    51
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x0040f3c8    8b4e14
                         push                 edx                                           // 0x0040f3cb    52
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040f3cc    8b5610
                         push                 eax                                           // 0x0040f3cf    50
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040f3d0    8b460c
                         push                 ecx                                           // 0x0040f3d3    51
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x0040f3d4    8b4e08
                         push                 edx                                           // 0x0040f3d7    52
                         push                 eax                                           // 0x0040f3d8    50
                         push                 ecx                                           // 0x0040f3d9    51
                         call                 ?DrawTab@SetupThing@@SAXHHHHHHHPA_WHH@Z       // 0x0040f3da    e8813f0000
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040f3df    8b8644020000
                         {disp32} mov         edx, dword ptr [data_bytes + 0x2078]          // 0x0040f3e5    8b1578809c00
                         add                  esp, 0x28                                     // 0x0040f3eb    83c428
                         test                 eax, eax                                      // 0x0040f3ee    85c0
                         {disp8} mov          dword ptr [esp + 0x20], edx                   // 0x0040f3f0    89542420
                         {disp8} jne          _jmp_addr_0x0040f40c                          // 0x0040f3f4    7516
                         {disp32} fild        dword ptr [data_bytes + 0x2078]               // 0x0040f3f6    db0578809c00
                         {disp32} fmul        dword ptr [rdata_bytes + 0x24c8]              // 0x0040f3fc    d80dc8b48a00
                         call                 _jmp_addr_0x007a1400                          // 0x0040f402    e8f91f3900
                         {disp32} mov         dword ptr [data_bytes + 0x2078], eax          // 0x0040f407    a378809c00
_jmp_addr_0x0040f40c:    {disp8} mov          ebp, dword ptr [esi + 0x20]                   // 0x0040f40c    8b6e20
                         test                 ebp, ebp                                      // 0x0040f40f    85ed
                         {disp32} mov         eax, dword ptr [data_bytes + 0x506d08]        // 0x0040f411    a108cdec00
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0040f416    8944241c
                         {disp8} jne          _jmp_addr_0x0040f433                          // 0x0040f41a    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040f41c    8b8634020000
                         test                 eax, eax                                      // 0x0040f422    85c0
                         {disp8} je           _jmp_addr_0x0040f42e                          // 0x0040f424    7408
                         {disp32} mov         ebp, dword ptr [eax + 0x000000ac]             // 0x0040f426    8ba8ac000000
                         {disp8} jmp          _jmp_addr_0x0040f433                          // 0x0040f42c    eb05
_jmp_addr_0x0040f42e:    mov                  ebp, 0x0000000a                               // 0x0040f42e    bd0a000000
_jmp_addr_0x0040f433:    {disp8} mov          dword ptr [esp + 0x10], ebp                   // 0x0040f433    896c2410
                         call                 _GetSmallTextSize__Fv                         // 0x0040f437    e8d485ffff
                         cdq                                                                // 0x0040f43c    99
                         sub.s                eax, edx                                      // 0x0040f43d    2bc2
                         sar                  eax, 1                                        // 0x0040f43f    d1f8
                         cmp.s                ebp, eax                                      // 0x0040f441    3be8
                         {disp32} jle         _jmp_addr_0x0040f507                          // 0x0040f443    0f8ebe000000
                         push                 ebx                                           // 0x0040f449    53
                         mov                  bl, -0x01                                     // 0x0040f44a    b3ff
_jmp_addr_0x0040f44c:    {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x0040f44c    8b4e0c
                         {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x0040f44f    8b5614
                         add                  ecx, 0x7                                      // 0x0040f452    83c107
                         push                 0x0                                           // 0x0040f455    6a00
                         {disp8} mov          dword ptr [esp + 0x1c], ecx                   // 0x0040f457    894c241c
                         {disp8} fild         dword ptr [esp + 0x1c]                        // 0x0040f45b    db44241c
                         push                 0x0                                           // 0x0040f45f    6a00
                         push                 0x1                                           // 0x0040f461    6a01
                         add                  edx, 0x64                                     // 0x0040f463    83c264
                         {disp8} fstp         dword ptr [esp + 0x28]                        // 0x0040f466    d95c2428
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x0040f46a    89542424
                         {disp8} fild         dword ptr [esp + 0x24]                        // 0x0040f46e    db442424
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x0040f472    8b5608
                         {disp8} lea          eax, dword ptr [esp + 0x1c]                   // 0x0040f475    8d44241c
                         push                 eax                                           // 0x0040f479    50
                         {disp8} mov          eax, dword ptr [esp + 0x2c]                   // 0x0040f47a    8b44242c
                         {disp8} fstp         dword ptr [esp + 0x28]                        // 0x0040f47e    d95c2428
                         {disp8} fild         dword ptr [esp + 0x24]                        // 0x0040f482    db442424
                         push                 ecx                                           // 0x0040f486    51
                         {disp8} mov          ecx, dword ptr [esp + 0x2c]                   // 0x0040f487    8b4c242c
                         add                  edx, 0x09                                     // 0x0040f48b    83c209
                         fstp                 dword ptr [esp]                               // 0x0040f48e    d91c24
                         push                 0x41a00000                                    // 0x0040f491    680000a041
                         push                 eax                                           // 0x0040f496    50
                         push                 ecx                                           // 0x0040f497    51
                         push                 ecx                                           // 0x0040f498    51
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x0040f499    8b4e10
                         sub                  ecx, 0x07                                     // 0x0040f49c    83e907
                         {disp8} mov          dword ptr [esp + 0x40], ecx                   // 0x0040f49f    894c2440
                         {disp8} fild         dword ptr [esp + 0x40]                        // 0x0040f4a3    db442440
                         push                 ecx                                           // 0x0040f4a7    51
                         {disp8} mov          dword ptr [esp + 0x44], edx                   // 0x0040f4a8    89542444
                         {disp8} mov          byte ptr [esp + 0x38], bl                     // 0x0040f4ac    885c2438
                         fstp                 dword ptr [esp]                               // 0x0040f4b0    d91c24
                         push                 eax                                           // 0x0040f4b3    50
                         {disp8} fild         dword ptr [esp + 0x48]                        // 0x0040f4b4    db442448
                         push                 eax                                           // 0x0040f4b8    50
                         push                 ecx                                           // 0x0040f4b9    51
                         {disp8} mov          ecx, dword ptr [esp + 0x54]                   // 0x0040f4ba    8b4c2454
                         fstp                 dword ptr [esp]                               // 0x0040f4be    d91c24
                         push                 edi                                           // 0x0040f4c1    57
                         {disp8} mov          byte ptr [esp + 0x49], bl                     // 0x0040f4c2    885c2449
                         {disp8} mov          byte ptr [esp + 0x4a], bl                     // 0x0040f4c6    885c244a
                         {disp8} mov          byte ptr [esp + 0x4b], bl                     // 0x0040f4ca    885c244b
                         call                 @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x0040f4ce    e8dd204200
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x0040f4d3    8b4614
                         sub                  eax, dword ptr [esi + 0x0c]                   // 0x0040f4d6    2b460c
                         sub                  eax, 0x06                                     // 0x0040f4d9    83e806
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0040f4dc    8944241c
                         {disp8} fild         dword ptr [esp + 0x1c]                        // 0x0040f4e0    db44241c
                         fxch                 st(1)                                         // 0x0040f4e4    d9c9
                         fcompp                                                             // 0x0040f4e6    ded9
                         fnstsw               ax                                            // 0x0040f4e8    dfe0
                         test                 ah, 0x01                                      // 0x0040f4ea    f6c401
                         {disp8} jne          _jmp_addr_0x0040f506                          // 0x0040f4ed    7517
                         dec                  ebp                                           // 0x0040f4ef    4d
                         {disp8} mov          dword ptr [esp + 0x14], ebp                   // 0x0040f4f0    896c2414
                         call                 _GetSmallTextSize__Fv                         // 0x0040f4f4    e81785ffff
                         cdq                                                                // 0x0040f4f9    99
                         sub.s                eax, edx                                      // 0x0040f4fa    2bc2
                         sar                  eax, 1                                        // 0x0040f4fc    d1f8
                         cmp.s                ebp, eax                                      // 0x0040f4fe    3be8
                         {disp32} jg          _jmp_addr_0x0040f44c                          // 0x0040f500    0f8f46ffffff
_jmp_addr_0x0040f506:    pop                  ebx                                           // 0x0040f506    5b
_jmp_addr_0x0040f507:    {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040f507    8b460c
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x0040f50a    8b4e14
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040f50d    8b5610
                         push                 0x0                                           // 0x0040f510    6a00
                         push                 0x1                                           // 0x0040f512    6a01
                         push                 0x00c4ccdc                                    // 0x0040f514    68dcccc400
                         push                 ebp                                           // 0x0040f519    55
                         push                 edi                                           // 0x0040f51a    57
                         add                  eax, 0x08                                     // 0x0040f51b    83c008
                         push                 0x1                                           // 0x0040f51e    6a01
                         push                 eax                                           // 0x0040f520    50
                         add                  ecx, 0x2                                      // 0x0040f521    83c102
                         push                 ecx                                           // 0x0040f524    51
                         sub                  edx, 0x07                                     // 0x0040f525    83ea07
                         push                 edx                                           // 0x0040f528    52
                         push                 eax                                           // 0x0040f529    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040f52a    8b4608
                         add                  eax, 0x09                                     // 0x0040f52d    83c009
                         push                 eax                                           // 0x0040f530    50
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040f531    e81a220000
                         fstp                 st(0)                                         // 0x0040f536    ddd8
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040f538    8b460c
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x0040f53b    8b4e14
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040f53e    8b5610
                         push                 0x0                                           // 0x0040f541    6a00
                         push                 0x1                                           // 0x0040f543    6a01
                         push                 0x00c4ccdc                                    // 0x0040f545    68dcccc400
                         push                 ebp                                           // 0x0040f54a    55
                         push                 edi                                           // 0x0040f54b    57
                         add                  eax, 0x08                                     // 0x0040f54c    83c008
                         push                 0x1                                           // 0x0040f54f    6a01
                         push                 eax                                           // 0x0040f551    50
                         add                  ecx, 0x2                                      // 0x0040f552    83c102
                         push                 ecx                                           // 0x0040f555    51
                         sub                  edx, 0x07                                     // 0x0040f556    83ea07
                         push                 edx                                           // 0x0040f559    52
                         push                 eax                                           // 0x0040f55a    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040f55b    8b4608
                         add                  eax, 0x09                                     // 0x0040f55e    83c009
                         push                 eax                                           // 0x0040f561    50
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040f562    e8e9210000
                         fstp                 st(0)                                         // 0x0040f567    ddd8
                         {disp32} mov         al, byte ptr [esp + 0x00000080]               // 0x0040f569    8a842480000000
                         add                  esp, 0x58                                     // 0x0040f570    83c458
                         test                 al, al                                        // 0x0040f573    84c0
                         {disp8} jne          _jmp_addr_0x0040f58c                          // 0x0040f575    7515
                         {disp8} mov          al, byte ptr [esp + 0x2c]                     // 0x0040f577    8a44242c
                         test                 al, al                                        // 0x0040f57b    84c0
                         {disp8} je           _jmp_addr_0x0040f585                          // 0x0040f57d    7406
                         cmp                  word ptr [edi], 0x00                          // 0x0040f57f    66833f00
                         {disp8} je           _jmp_addr_0x0040f58c                          // 0x0040f583    7407
_jmp_addr_0x0040f585:    mov                  ecx, 0x00c4ccf8                               // 0x0040f585    b9f8ccc400
                         {disp8} jmp          _jmp_addr_0x0040f591                          // 0x0040f58a    eb05
_jmp_addr_0x0040f58c:    mov                  ecx, 0x00c4cce4                               // 0x0040f58c    b9e4ccc400
_jmp_addr_0x0040f591:    {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x0040f591    8b460c
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x0040f594    8b5610
                         push                 0x0                                           // 0x0040f597    6a00
                         push                 0x1                                           // 0x0040f599    6a01
                         push                 ecx                                           // 0x0040f59b    51
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x0040f59c    8b4e14
                         push                 ebp                                           // 0x0040f59f    55
                         push                 edi                                           // 0x0040f5a0    57
                         add                  eax, 0x07                                     // 0x0040f5a1    83c007
                         push                 0x1                                           // 0x0040f5a4    6a01
                         push                 eax                                           // 0x0040f5a6    50
                         inc                  ecx                                           // 0x0040f5a7    41
                         push                 ecx                                           // 0x0040f5a8    51
                         sub                  edx, 0x08                                     // 0x0040f5a9    83ea08
                         push                 edx                                           // 0x0040f5ac    52
                         push                 eax                                           // 0x0040f5ad    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0040f5ae    8b4608
                         add                  eax, 0x08                                     // 0x0040f5b1    83c008
                         push                 eax                                           // 0x0040f5b4    50
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0040f5b5    e896210000
                         fstp                 st(0)                                         // 0x0040f5ba    ddd8
                         {disp8} mov          ecx, dword ptr [esp + 0x4c]                   // 0x0040f5bc    8b4c244c
                         add                  esp, 0x2c                                     // 0x0040f5c0    83c42c
                         pop                  edi                                           // 0x0040f5c3    5f
                         pop                  esi                                           // 0x0040f5c4    5e
                         {disp32} mov         dword ptr [data_bytes + 0x2078], ecx          // 0x0040f5c5    890d78809c00
                         pop                  ebp                                           // 0x0040f5cb    5d
                         add                  esp, 0x18                                     // 0x0040f5cc    83c418
                         ret                  0x0008                                        // 0x0040f5cf    c20800
                         nop                                                                // 0x0040f5d2    90
                         nop                                                                // 0x0040f5d3    90
                         nop                                                                // 0x0040f5d4    90
                         nop                                                                // 0x0040f5d5    90
                         nop                                                                // 0x0040f5d6    90
                         nop                                                                // 0x0040f5d7    90
                         nop                                                                // 0x0040f5d8    90
                         nop                                                                // 0x0040f5d9    90
                         nop                                                                // 0x0040f5da    90
                         nop                                                                // 0x0040f5db    90
                         nop                                                                // 0x0040f5dc    90
                         nop                                                                // 0x0040f5dd    90
                         nop                                                                // 0x0040f5de    90
                         nop                                                                // 0x0040f5df    90
@__ct__14SetupTabButtonFiiiiiPwiii@35:    {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040f5e0    8b442418
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x0040f5e4    8b542410
                         push                 esi                                           // 0x0040f5e8    56
                         push                 0x0                                           // 0x0040f5e9    6a00
                         push                 eax                                           // 0x0040f5eb    50
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x0040f5ec    8b442418
                         mov.s                esi, ecx                                      // 0x0040f5f0    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x20]                   // 0x0040f5f2    8b4c2420
                         push                 ecx                                           // 0x0040f5f6    51
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x0040f5f7    8b4c2418
                         push                 edx                                           // 0x0040f5fb    52
                         {disp8} mov          edx, dword ptr [esp + 0x18]                   // 0x0040f5fc    8b542418
                         push                 eax                                           // 0x0040f600    50
                         push                 ecx                                           // 0x0040f601    51
                         push                 edx                                           // 0x0040f602    52
                         mov.s                ecx, esi                                      // 0x0040f603    8bce
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x0040f605    e8a6a2ffff
                         {disp8} mov          eax, dword ptr [esp + 0x24]                   // 0x0040f60a    8b442424
                         {disp8} mov          ecx, dword ptr [esp + 0x28]                   // 0x0040f60e    8b4c2428
                         mov                  dword ptr [esi], 0x008ab4d0                   // 0x0040f612    c706d0b48a00
                         {disp32} mov         dword ptr [esi + 0x00000250], 0xffffffff      // 0x0040f618    c78650020000ffffffff
                         {disp32} mov         dword ptr [esi + 0x00000248], eax             // 0x0040f622    898648020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], ecx             // 0x0040f628    898e4c020000
                         {disp32} mov         dword ptr [esi + 0x0000023c], 0x00000000      // 0x0040f62e    c7863c02000000000000
                         call                 _GetMidTextSize__Fv                           // 0x0040f638    e8c383ffff
                         {disp8} mov          edx, dword ptr [esp + 0x20]                   // 0x0040f63d    8b542420
                         {disp8} mov          dword ptr [esi + 0x20], eax                   // 0x0040f641    894620
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040f644    8b8634020000
                         test                 eax, eax                                      // 0x0040f64a    85c0
                         {disp32} mov         dword ptr [esi + 0x00000244], edx             // 0x0040f64c    899644020000
                         {disp8} je           _jmp_addr_0x0040f65e                          // 0x0040f652    740a
                         {disp32} mov         dword ptr [eax + 0x00000094], 0x00000002      // 0x0040f654    c7809400000002000000
_jmp_addr_0x0040f65e:    mov.s                eax, esi                                      // 0x0040f65e    8bc6
                         pop                  esi                                           // 0x0040f660    5e
                         ret                  0x0024                                        // 0x0040f661    c22400
                         nop                                                                // 0x0040f664    90
                         nop                                                                // 0x0040f665    90
                         nop                                                                // 0x0040f666    90
                         nop                                                                // 0x0040f667    90
                         nop                                                                // 0x0040f668    90
                         nop                                                                // 0x0040f669    90
                         nop                                                                // 0x0040f66a    90
                         nop                                                                // 0x0040f66b    90
                         nop                                                                // 0x0040f66c    90
                         nop                                                                // 0x0040f66d    90
                         nop                                                                // 0x0040f66e    90
                         nop                                                                // 0x0040f66f    90
_KeyDown__14SetupTabButtonFii:
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000234]             // 0x0040f670    8b8934020000
                         test                 ecx, ecx                                      // 0x0040f676    85c9
                         {disp8} je           _jmp_addr_0x0040f688                          // 0x0040f678    740e
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040f67a    8b542408
                         mov                  eax, dword ptr [ecx]                          // 0x0040f67e    8b01
                         push                 edx                                           // 0x0040f680    52
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0040f681    8b542408
                         push                 edx                                           // 0x0040f685    52
                         call                 dword ptr [eax]                               // 0x0040f686    ff10
_jmp_addr_0x0040f688:    ret                  0x0008                                        // 0x0040f688    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0040f68b    e8e921ffff
??_GSetupTabButton@@UAEPAXI@Z:
                         push                 esi                                           // 0x0040f690    56
                         mov.s                esi, ecx                                      // 0x0040f691    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x0040f693    e8289dffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x0040f698    f644240801
                         {disp8} je           _jmp_addr_0x0040f6a8                          // 0x0040f69d    7409
                         push                 esi                                           // 0x0040f69f    56
                         call                 ??3@YAXPAX@Z                                  // 0x0040f6a0    e8f3f73900
                         add                  esp, 0x04                                     // 0x0040f6a5    83c404
_jmp_addr_0x0040f6a8:    mov.s                eax, esi                                      // 0x0040f6a8    8bc6
                         pop                  esi                                           // 0x0040f6aa    5e
                         ret                  0x0004                                        // 0x0040f6ab    c20400
                         nop                                                                // 0x0040f6ae    90
                         nop                                                                // 0x0040f6af    90
_MouseDown__12SetupPictureFiib:
                         {disp8} mov          dl, byte ptr [esp + 0x0c]                     // 0x0040f6b0    8a54240c
                         sub                  esp, 0x74                                     // 0x0040f6b4    83ec74
                         push                 esi                                           // 0x0040f6b7    56
                         mov.s                esi, ecx                                      // 0x0040f6b8    8bf1
                         xor.s                ecx, ecx                                      // 0x0040f6ba    33c9
                         cmp.s                dl, cl                                        // 0x0040f6bc    3ad1
                         mov                  eax, 0x00000001                               // 0x0040f6be    b801000000
                         {disp32} mov         dword ptr [esi + 0x00000244], 0xffffffff      // 0x0040f6c3    c78644020000ffffffff
                         {disp32} mov         dword ptr [esi + 0x0000023c], eax             // 0x0040f6cd    89863c020000
                         {disp32} je          _jmp_addr_0x0040f832                          // 0x0040f6d3    0f8459010000
                         cmp                  byte ptr [esi + 0x00000280], cl               // 0x0040f6d9    388e80020000
                         {disp8} je           _jmp_addr_0x0040f6e7                          // 0x0040f6df    7406
                         {disp32} mov         byte ptr [esi + 0x00000281], al               // 0x0040f6e1    888681020000
_jmp_addr_0x0040f6e7:    cmp                  byte ptr [esi + 0x00000290], cl               // 0x0040f6e7    388e90020000
                         {disp32} je          _jmp_addr_0x0040f832                          // 0x0040f6ed    0f843f010000
                         {disp32} mov         edx, dword ptr [esi + 0x00000254]             // 0x0040f6f3    8b9654020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000248]             // 0x0040f6f9    8b8648020000
                         {disp32} mov         dword ptr [esi + 0x00000268], edx             // 0x0040f6ff    899668020000
                         {disp32} mov         dword ptr [esi + 0x00000250], ecx             // 0x0040f705    898e50020000
                         {disp32} mov         dword ptr [esi + 0x0000025c], ecx             // 0x0040f70b    898e5c020000
                         {disp8} lea          edx, dword ptr [esp + 0x18]                   // 0x0040f711    8d542418
                         {disp8} lea          ecx, dword ptr [esp + 0x48]                   // 0x0040f715    8d4c2448
                         {disp32} mov         dword ptr [esi + 0x00000264], eax             // 0x0040f719    898664020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], 0x3f800000      // 0x0040f71f    c7864c0200000000803f
                         {disp32} mov         dword ptr [esi + 0x00000260], 0x3f000000      // 0x0040f729    c786600200000000003f
                         {disp8} mov          dword ptr [esp + 0x18], 0x3b2aaaab            // 0x0040f733    c7442418abaa2a3b
                         {disp8} mov          dword ptr [esp + 0x1c], 0x3caaaaab            // 0x0040f73b    c744241cabaaaa3c
                         {disp8} mov          dword ptr [esp + 0x20], 0x3e000000            // 0x0040f743    c74424200000003e
                         {disp8} mov          dword ptr [esp + 0x24], 0x3caaaaab            // 0x0040f74b    c7442424abaaaa3c
                         {disp8} mov          dword ptr [esp + 0x28], 0x3e000000            // 0x0040f753    c74424280000003e
                         {disp8} mov          dword ptr [esp + 0x2c], 0x3f000000            // 0x0040f75b    c744242c0000003f
                         {disp8} mov          dword ptr [esp + 0x30], 0x3e000000            // 0x0040f763    c74424300000003e
                         {disp8} mov          dword ptr [esp + 0x34], 0x3f000000            // 0x0040f76b    c74424340000003f
                         {disp8} mov          dword ptr [esp + 0x38], 0x3f800000            // 0x0040f773    c74424380000803f
                         {disp8} mov          dword ptr [esp + 0x44], 0x00000000            // 0x0040f77b    c744244400000000
                         {disp8} mov          dword ptr [esp + 0x40], 0x00000000            // 0x0040f783    c744244000000000
                         {disp8} mov          dword ptr [esp + 0x3c], 0x00000000            // 0x0040f78b    c744243c00000000
                         call                 ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x0040f793    e8f8ba3e00
                         {disp32} fld         dword ptr [esi + 0x0000024c]                  // 0x0040f798    d9864c020000
                         {disp32} fsub        dword ptr [esi + 0x00000264]                  // 0x0040f79e    d8a664020000
                         {disp32} fld         dword ptr [esi + 0x00000268]                  // 0x0040f7a4    d98668020000
                         {disp32} fmul        dword ptr [esi + 0x00000260]                  // 0x0040f7aa    d88e60020000
                         fsubp                st(1), st                                     // 0x0040f7b0    dee9
                         {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x0040f7b2    d98650020000
                         {disp32} fsub        dword ptr [esi + 0x00000268]                  // 0x0040f7b8    d8a668020000
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040f7be    d95c2410
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0040f7c2    8b442410
                         {disp8} mov          dword ptr [esp + 0x08], eax                   // 0x0040f7c6    89442408
                         {disp8} fst          dword ptr [esp + 0x04]                        // 0x0040f7ca    d9542404
                         {disp8} fld          dword ptr [esp + 0x54]                        // 0x0040f7ce    d9442454
                         {disp8} fmul         dword ptr [esp + 0x10]                        // 0x0040f7d2    d84c2410
                         {disp8} fld          dword ptr [esp + 0x48]                        // 0x0040f7d6    d9442448
                         fmul                 st, st(2)                                     // 0x0040f7da    d8ca
                         faddp                st(1), st                                     // 0x0040f7dc    dec1
                         {disp8} fadd         dword ptr [esp + 0x6c]                        // 0x0040f7de    d844246c
                         fstp                 st(1)                                         // 0x0040f7e2    ddd9
                         {disp8} fld          dword ptr [esp + 0x4c]                        // 0x0040f7e4    d944244c
                         {disp8} fmul         dword ptr [esp + 0x04]                        // 0x0040f7e8    d84c2404
                         {disp8} fld          dword ptr [esp + 0x58]                        // 0x0040f7ec    d9442458
                         {disp8} fmul         dword ptr [esp + 0x10]                        // 0x0040f7f0    d84c2410
                         faddp                st(1), st                                     // 0x0040f7f4    dec1
                         {disp8} fadd         dword ptr [esp + 0x70]                        // 0x0040f7f6    d8442470
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040f7fa    d95c2410
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x0040f7fe    8b4c2410
                         {disp8} fld          dword ptr [esp + 0x5c]                        // 0x0040f802    d944245c
                         {disp32} mov         dword ptr [esi + 0x00000270], ecx             // 0x0040f806    898e70020000
                         {disp8} fmul         dword ptr [esp + 0x08]                        // 0x0040f80c    d84c2408
                         {disp8} fld          dword ptr [esp + 0x50]                        // 0x0040f810    d9442450
                         {disp8} fmul         dword ptr [esp + 0x04]                        // 0x0040f814    d84c2404
                         faddp                st(1), st                                     // 0x0040f818    dec1
                         {disp8} fadd         dword ptr [esp + 0x74]                        // 0x0040f81a    d8442474
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x0040f81e    d95c2414
                         {disp8} mov          edx, dword ptr [esp + 0x14]                   // 0x0040f822    8b542414
                         {disp32} mov         dword ptr [esi + 0x0000026c], edx             // 0x0040f826    89966c020000
                         {disp32} fstp        dword ptr [esi + 0x00000274]                  // 0x0040f82c    d99e74020000
_jmp_addr_0x0040f832:    pop                  esi                                           // 0x0040f832    5e
                         add                  esp, 0x74                                     // 0x0040f833    83c474
                         ret                  0x000c                                        // 0x0040f836    c20c00
                         nop                                                                // 0x0040f839    90
                         nop                                                                // 0x0040f83a    90
                         nop                                                                // 0x0040f83b    90
                         nop                                                                // 0x0040f83c    90
                         nop                                                                // 0x0040f83d    90
                         nop                                                                // 0x0040f83e    90
                         nop                                                                // 0x0040f83f    90
_MouseUp__12SetupPictureFiib:
                         {disp8} mov          al, byte ptr [esp + 0x0c]                     // 0x0040f840    8a44240c
                         sub                  esp, 0x6c                                     // 0x0040f844    83ec6c
                         push                 ebx                                           // 0x0040f847    53
                         xor.s                ebx, ebx                                      // 0x0040f848    33db
                         cmp.s                al, bl                                        // 0x0040f84a    3ac3
                         push                 esi                                           // 0x0040f84c    56
                         mov.s                esi, ecx                                      // 0x0040f84d    8bf1
                         {disp32} mov         dword ptr [esi + 0x0000023c], ebx             // 0x0040f84f    899e3c020000
                         {disp32} je          _jmp_addr_0x0040f9f9                          // 0x0040f855    0f849e010000
                         cmp                  byte ptr [esi + 0x00000280], bl               // 0x0040f85b    389e80020000
                         {disp8} je           _jmp_addr_0x0040f891                          // 0x0040f861    742e
                         cmp                  byte ptr [esi + 0x00000281], bl               // 0x0040f863    389e81020000
                         {disp8} je           _jmp_addr_0x0040f88b                          // 0x0040f869    7420
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x0040f86b    8b8634020000
                         {disp32} mov         ecx, dword ptr [eax + 0x000000b0]             // 0x0040f871    8b88b0000000
                         cmp.s                ecx, ebx                                      // 0x0040f877    3bcb
                         {disp8} je           _jmp_addr_0x0040f88b                          // 0x0040f879    7410
                         {disp8} mov          edx, dword ptr [esp + 0x7c]                   // 0x0040f87b    8b54247c
                         push                 edx                                           // 0x0040f87f    52
                         {disp8} mov          edx, dword ptr [esp + 0x7c]                   // 0x0040f880    8b54247c
                         push                 edx                                           // 0x0040f884    52
                         push                 esi                                           // 0x0040f885    56
                         push                 eax                                           // 0x0040f886    50
                         push                 0xb                                           // 0x0040f887    6a0b
                         call                 ecx                                           // 0x0040f889    ffd1
_jmp_addr_0x0040f88b:    {disp32} mov         byte ptr [esi + 0x00000281], bl               // 0x0040f88b    889e81020000
_jmp_addr_0x0040f891:    cmp                  byte ptr [esi + 0x00000290], bl               // 0x0040f891    389e90020000
                         {disp32} je          _jmp_addr_0x0040f9f9                          // 0x0040f897    0f845c010000
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x0040f89d    8b8644020000
                         cmp.s                eax, ebx                                      // 0x0040f8a3    3bc3
                         {disp8} jl           _jmp_addr_0x0040f8b5                          // 0x0040f8a5    7c0e
                         xor.s                edx, edx                                      // 0x0040f8a7    33d2
                         div                  dword ptr [esi + 0x0000028c]                  // 0x0040f8a9    f7b68c020000
                         {disp32} mov         dword ptr [esi + 0x00000284], edx             // 0x0040f8af    899684020000
_jmp_addr_0x0040f8b5:    {disp32} mov         ecx, dword ptr [esi + 0x00000254]             // 0x0040f8b5    8b8e54020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000248]             // 0x0040f8bb    8b8648020000
                         {disp32} mov         dword ptr [esi + 0x00000268], ecx             // 0x0040f8c1    898e68020000
                         {disp8} lea          edx, dword ptr [esp + 0x14]                   // 0x0040f8c7    8d542414
                         {disp8} lea          ecx, dword ptr [esp + 0x44]                   // 0x0040f8cb    8d4c2444
                         {disp32} mov         dword ptr [esi + 0x00000264], eax             // 0x0040f8cf    898664020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], ebx             // 0x0040f8d5    899e4c020000
                         {disp32} mov         dword ptr [esi + 0x00000250], ebx             // 0x0040f8db    899e50020000
                         {disp32} mov         dword ptr [esi + 0x00000260], 0x3f800000      // 0x0040f8e1    c786600200000000803f
                         {disp32} mov         dword ptr [esi + 0x0000025c], ebx             // 0x0040f8eb    899e5c020000
                         {disp8} mov          dword ptr [esp + 0x14], 0x3d2aaaab            // 0x0040f8f1    c7442414abaa2a3d
                         {disp8} mov          dword ptr [esp + 0x18], 0x3e2aaaab            // 0x0040f8f9    c7442418abaa2a3e
                         {disp8} mov          dword ptr [esp + 0x1c], 0x3f000000            // 0x0040f901    c744241c0000003f
                         {disp8} mov          dword ptr [esp + 0x20], 0x3e2aaaab            // 0x0040f909    c7442420abaa2a3e
                         {disp8} mov          dword ptr [esp + 0x24], 0x3f000000            // 0x0040f911    c74424240000003f
                         {disp8} mov          dword ptr [esp + 0x28], 0x3f800000            // 0x0040f919    c74424280000803f
                         {disp8} mov          dword ptr [esp + 0x2c], 0x3f000000            // 0x0040f921    c744242c0000003f
                         {disp8} mov          dword ptr [esp + 0x30], 0x3f800000            // 0x0040f929    c74424300000803f
                         {disp8} mov          dword ptr [esp + 0x34], 0x3f800000            // 0x0040f931    c74424340000803f
                         {disp8} mov          dword ptr [esp + 0x40], 0x00000000            // 0x0040f939    c744244000000000
                         {disp8} mov          dword ptr [esp + 0x3c], 0x00000000            // 0x0040f941    c744243c00000000
                         {disp8} mov          dword ptr [esp + 0x38], 0x00000000            // 0x0040f949    c744243800000000
                         call                 ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x0040f951    e83ab93e00
                         {disp32} fld         dword ptr [esi + 0x0000024c]                  // 0x0040f956    d9864c020000
                         {disp32} fsub        dword ptr [esi + 0x00000264]                  // 0x0040f95c    d8a664020000
                         {disp32} fld         dword ptr [esi + 0x00000268]                  // 0x0040f962    d98668020000
                         {disp32} fmul        dword ptr [esi + 0x00000260]                  // 0x0040f968    d88e60020000
                         fsubp                st(1), st                                     // 0x0040f96e    dee9
                         {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x0040f970    d98650020000
                         {disp32} fsub        dword ptr [esi + 0x00000268]                  // 0x0040f976    d8a668020000
                         {disp8} fstp         dword ptr [esp + 0x0c]                        // 0x0040f97c    d95c240c
                         {disp8} mov          edx, dword ptr [esp + 0x0c]                   // 0x0040f980    8b54240c
                         {disp8} mov          dword ptr [esp + 0x7c], edx                   // 0x0040f984    8954247c
                         {disp32} fst         dword ptr [esp + 0x00000080]                  // 0x0040f988    d9942480000000
                         {disp8} fld          dword ptr [esp + 0x50]                        // 0x0040f98f    d9442450
                         {disp8} fmul         dword ptr [esp + 0x0c]                        // 0x0040f993    d84c240c
                         {disp8} fld          dword ptr [esp + 0x44]                        // 0x0040f997    d9442444
                         fmul                 st, st(2)                                     // 0x0040f99b    d8ca
                         faddp                st(1), st                                     // 0x0040f99d    dec1
                         {disp8} fadd         dword ptr [esp + 0x68]                        // 0x0040f99f    d8442468
                         fstp                 st(1)                                         // 0x0040f9a3    ddd9
                         {disp8} fld          dword ptr [esp + 0x48]                        // 0x0040f9a5    d9442448
                         {disp32} fmul        dword ptr [esp + 0x00000080]                  // 0x0040f9a9    d88c2480000000
                         {disp8} fld          dword ptr [esp + 0x54]                        // 0x0040f9b0    d9442454
                         {disp8} fmul         dword ptr [esp + 0x0c]                        // 0x0040f9b4    d84c240c
                         faddp                st(1), st                                     // 0x0040f9b8    dec1
                         {disp8} fadd         dword ptr [esp + 0x6c]                        // 0x0040f9ba    d844246c
                         {disp8} fstp         dword ptr [esp + 0x0c]                        // 0x0040f9be    d95c240c
                         {disp8} mov          eax, dword ptr [esp + 0x0c]                   // 0x0040f9c2    8b44240c
                         {disp8} fld          dword ptr [esp + 0x58]                        // 0x0040f9c6    d9442458
                         {disp32} mov         dword ptr [esi + 0x00000270], eax             // 0x0040f9ca    898670020000
                         {disp8} fmul         dword ptr [esp + 0x7c]                        // 0x0040f9d0    d84c247c
                         {disp8} fld          dword ptr [esp + 0x4c]                        // 0x0040f9d4    d944244c
                         {disp32} fmul        dword ptr [esp + 0x00000080]                  // 0x0040f9d8    d88c2480000000
                         faddp                st(1), st                                     // 0x0040f9df    dec1
                         {disp8} fadd         dword ptr [esp + 0x70]                        // 0x0040f9e1    d8442470
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x0040f9e5    d95c2410
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x0040f9e9    8b4c2410
                         {disp32} mov         dword ptr [esi + 0x0000026c], ecx             // 0x0040f9ed    898e6c020000
                         {disp32} fstp        dword ptr [esi + 0x00000274]                  // 0x0040f9f3    d99e74020000
_jmp_addr_0x0040f9f9:    pop                  esi                                           // 0x0040f9f9    5e
                         pop                  ebx                                           // 0x0040f9fa    5b
                         add                  esp, 0x6c                                     // 0x0040f9fb    83c46c
                         ret                  0x000c                                        // 0x0040f9fe    c20c00
                         nop                                                                // 0x0040fa01    90
                         nop                                                                // 0x0040fa02    90
                         nop                                                                // 0x0040fa03    90
                         nop                                                                // 0x0040fa04    90
                         nop                                                                // 0x0040fa05    90
                         nop                                                                // 0x0040fa06    90
                         nop                                                                // 0x0040fa07    90
                         nop                                                                // 0x0040fa08    90
                         nop                                                                // 0x0040fa09    90
                         nop                                                                // 0x0040fa0a    90
                         nop                                                                // 0x0040fa0b    90
                         nop                                                                // 0x0040fa0c    90
                         nop                                                                // 0x0040fa0d    90
                         nop                                                                // 0x0040fa0e    90
                         nop                                                                // 0x0040fa0f    90
_Drag__12SetupPictureFii:
                         ret                  0x0008                                        // 0x0040fa10    c20800
                         nop                                                                // 0x0040fa13    90
                         nop                                                                // 0x0040fa14    90
                         nop                                                                // 0x0040fa15    90
                         nop                                                                // 0x0040fa16    90
                         nop                                                                // 0x0040fa17    90
                         nop                                                                // 0x0040fa18    90
                         nop                                                                // 0x0040fa19    90
                         nop                                                                // 0x0040fa1a    90
                         nop                                                                // 0x0040fa1b    90
                         nop                                                                // 0x0040fa1c    90
                         nop                                                                // 0x0040fa1d    90
                         nop                                                                // 0x0040fa1e    90
                         nop                                                                // 0x0040fa1f    90
_Draw__12SetupPictureFbb:
                         {disp32} fild        dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0040fa20    db053481c300
                         sub                  esp, 0x000000ac                               // 0x0040fa26    81ecac000000
                         push                 ebx                                           // 0x0040fa2c    53
                         push                 ebp                                           // 0x0040fa2d    55
                         {disp32} fmul        dword ptr [_rdata_float0p001]                 // 0x0040fa2e    d80db0a38a00
                         push                 esi                                           // 0x0040fa34    56
                         push                 edi                                           // 0x0040fa35    57
                         mov.s                edi, ecx                                      // 0x0040fa36    8bf9
                         {disp32} fadd        dword ptr [edi + 0x0000025c]                  // 0x0040fa38    d8875c020000
                         {disp32} fcom        dword ptr [edi + 0x00000260]                  // 0x0040fa3e    d89760020000
                         {disp32} fst         dword ptr [edi + 0x0000025c]                  // 0x0040fa44    d9975c020000
                         fnstsw               ax                                            // 0x0040fa4a    dfe0
                         test                 ah, 0x01                                      // 0x0040fa4c    f6c401
                         {disp8} jne          _jmp_addr_0x0040fa83                          // 0x0040fa4f    7532
                         {disp32} mov         eax, dword ptr [edi + 0x0000024c]             // 0x0040fa51    8b874c020000
                         fstp                 st(0)                                         // 0x0040fa57    ddd8
                         {disp32} mov         ecx, dword ptr [edi + 0x00000250]             // 0x0040fa59    8b8f50020000
                         {disp32} mov         edx, dword ptr [edi + 0x00000260]             // 0x0040fa5f    8b9760020000
                         {disp32} mov         dword ptr [edi + 0x00000248], eax             // 0x0040fa65    898748020000
                         {disp32} mov         dword ptr [edi + 0x00000254], ecx             // 0x0040fa6b    898f54020000
                         {disp32} mov         dword ptr [edi + 0x00000258], 0x00000000      // 0x0040fa71    c7875802000000000000
                         {disp32} mov         dword ptr [edi + 0x0000025c], edx             // 0x0040fa7b    89975c020000
                         {disp8} jmp          _jmp_addr_0x0040fafd                          // 0x0040fa81    eb7a
_jmp_addr_0x0040fa83:    fld                  st(0)                                         // 0x0040fa83    d9c0
                         fld                  st(0)                                         // 0x0040fa85    d9c0
                         fmulp                st(1), st                                     // 0x0040fa87    dec9
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x0040fa89    d80db4a38a00
                         fld                  st(0)                                         // 0x0040fa8f    d9c0
                         fmul                 st, st(2)                                     // 0x0040fa91    d8ca
                         {disp32} fmul        dword ptr [__real@3eaaaaab]                   // 0x0040fa93    d80d6cb28a00
                         fxch                 st(2)                                         // 0x0040fa99    d9ca
                         {disp32} fmul        dword ptr [edi + 0x0000026c]                  // 0x0040fa9b    d88f6c020000
                         fld                  st(1)                                         // 0x0040faa1    d9c1
                         {disp32} fmul        dword ptr [edi + 0x00000270]                  // 0x0040faa3    d88f70020000
                         faddp                st(1), st                                     // 0x0040faa9    dec1
                         fld                  st(2)                                         // 0x0040faab    d9c2
                         {disp32} fmul        dword ptr [edi + 0x00000274]                  // 0x0040faad    d88f74020000
                         faddp                st(1), st                                     // 0x0040fab3    dec1
                         {disp32} fadd        dword ptr [edi + 0x00000268]                  // 0x0040fab5    d88768020000
                         {disp32} fstp        dword ptr [edi + 0x00000254]                  // 0x0040fabb    d99f54020000
                         fld                  st(0)                                         // 0x0040fac1    d9c0
                         fmul                 st, st(1)                                     // 0x0040fac3    d8c9
                         {disp32} fmul        dword ptr [__real@3e2aaaab]                   // 0x0040fac5    d80d68b28a00
                         {disp32} fmul        dword ptr [edi + 0x00000274]                  // 0x0040facb    d88f74020000
                         fxch                 st(2)                                         // 0x0040fad1    d9ca
                         {disp32} fmul        dword ptr [edi + 0x00000270]                  // 0x0040fad3    d88f70020000
                         faddp                st(2), st                                     // 0x0040fad9    dec2
                         {disp32} fmul        dword ptr [edi + 0x0000026c]                  // 0x0040fadb    d88f6c020000
                         faddp                st(1), st                                     // 0x0040fae1    dec1
                         {disp32} fld         dword ptr [edi + 0x00000268]                  // 0x0040fae3    d98768020000
                         {disp32} fmul        dword ptr [edi + 0x0000025c]                  // 0x0040fae9    d88f5c020000
                         faddp                st(1), st                                     // 0x0040faef    dec1
                         {disp32} fadd        dword ptr [edi + 0x00000264]                  // 0x0040faf1    d88764020000
                         {disp32} fstp        dword ptr [edi + 0x00000248]                  // 0x0040faf7    d99f48020000
_jmp_addr_0x0040fafd:    {disp32} mov         esi, dword ptr [edi + 0x00000244]             // 0x0040fafd    8bb744020000
                         test                 esi, esi                                      // 0x0040fb03    85f6
                         {disp8} jge          _jmp_addr_0x0040fb0d                          // 0x0040fb05    7d06
                         {disp32} mov         esi, dword ptr [edi + 0x00000284]             // 0x0040fb07    8bb784020000
_jmp_addr_0x0040fb0d:    {disp32} mov         ecx, dword ptr [edi + 0x00000288]             // 0x0040fb0d    8b8f88020000
                         mov.s                eax, esi                                      // 0x0040fb13    8bc6
                         cdq                                                                // 0x0040fb15    99
                         idiv                 ecx                                           // 0x0040fb16    f7f9
                         mov.s                eax, esi                                      // 0x0040fb18    8bc6
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x0040fb1a    894c2414
                         {disp8} fild         dword ptr [esp + 0x14]                        // 0x0040fb1e    db442414
                         {disp8} mov          dword ptr [esp + 0x38], edx                   // 0x0040fb22    89542438
                         {disp8} fild         dword ptr [esp + 0x38]                        // 0x0040fb26    db442438
                         cdq                                                                // 0x0040fb2a    99
                         idiv                 ecx                                           // 0x0040fb2b    f7f9
                         fdiv                 st, st(1)                                     // 0x0040fb2d    d8f1
                         {disp32} mov         ecx, dword ptr [edi + 0x0000027c]             // 0x0040fb2f    8b8f7c020000
                         test                 ecx, ecx                                      // 0x0040fb35    85c9
                         {disp8} mov          dword ptr [esp + 0x7c], ecx                   // 0x0040fb37    894c247c
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2510]              // 0x0040fb3b    d80510b58a00
                         {disp8} fstp         dword ptr [esp + 0x48]                        // 0x0040fb41    d95c2448
                         {disp8} mov          dword ptr [esp + 0x38], eax                   // 0x0040fb45    89442438
                         {disp8} fild         dword ptr [esp + 0x38]                        // 0x0040fb49    db442438
                         fdiv                 st, st(1)                                     // 0x0040fb4d    d8f1
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2510]              // 0x0040fb4f    d80510b58a00
                         {disp8} fstp         dword ptr [esp + 0x40]                        // 0x0040fb55    d95c2440
                         {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x0040fb59    d90590a38a00
                         fdiv                 st, st(1)                                     // 0x0040fb5f    d8f1
                         {disp32} fsub        dword ptr [rdata_bytes + 0x250c]              // 0x0040fb61    d8250cb58a00
                         {disp8} fstp         dword ptr [esp + 0x20]                        // 0x0040fb67    d95c2420
                         fstp                 st(0)                                         // 0x0040fb6b    ddd8
                         {disp8} jne          _jmp_addr_0x0040fb8a                          // 0x0040fb6d    751b
                         {disp32} mov         al, byte ptr [esp + 0x000000c4]               // 0x0040fb6f    8a8424c4000000
                         test                 al, al                                        // 0x0040fb76    84c0
                         mov                  eax, 0x00c4ccf8                               // 0x0040fb78    b8f8ccc400
                         {disp8} jne          _jmp_addr_0x0040fb84                          // 0x0040fb7d    7505
                         mov                  eax, 0x00c4ccd8                               // 0x0040fb7f    b8d8ccc400
_jmp_addr_0x0040fb84:    mov                  eax, dword ptr [eax]                          // 0x0040fb84    8b00
                         {disp8} mov          dword ptr [esp + 0x7c], eax                   // 0x0040fb86    8944247c
_jmp_addr_0x0040fb8a:    {disp32} mov         eax, dword ptr [edi + 0x00000278]             // 0x0040fb8a    8b8778020000
                         test                 eax, eax                                      // 0x0040fb90    85c0
                         {disp8} je           _jmp_addr_0x0040fbf8                          // 0x0040fb92    7464
                         test                 ecx, ecx                                      // 0x0040fb94    85c9
                         {disp8} jne          _jmp_addr_0x0040fbf8                          // 0x0040fb96    7560
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x0040fb98    d9442420
                         push                 0x42c80000                                    // 0x0040fb9c    680000c842
                         {disp8} fadd         dword ptr [esp + 0x44]                        // 0x0040fba1    d8442444
                         push                 ecx                                           // 0x0040fba5    51
                         {disp8} mov          edx, dword ptr [edi + 0x14]                   // 0x0040fba6    8b5714
                         {disp8} mov          ebp, dword ptr [esp + 0x50]                   // 0x0040fba9    8b6c2450
                         push                 0x0000a000                                    // 0x0040fbad    6800a00000
                         push                 0xffff6000                                    // 0x0040fbb2    680060ffff
                         push                 0x1                                           // 0x0040fbb7    6a01
                         push                 0x00c4ccdc                                    // 0x0040fbb9    68dcccc400
                         push                 eax                                           // 0x0040fbbe    50
                         {disp8} mov          eax, dword ptr [edi + 0x10]                   // 0x0040fbbf    8b4710
                         push                 ecx                                           // 0x0040fbc2    51
                         fstp                 dword ptr [esp]                               // 0x0040fbc3    d91c24
                         push                 ecx                                           // 0x0040fbc6    51
                         {disp8} fld          dword ptr [esp + 0x44]                        // 0x0040fbc7    d9442444
                         {disp8} mov          ecx, dword ptr [esp + 0x64]                   // 0x0040fbcb    8b4c2464
                         {disp8} fadd         dword ptr [esp + 0x6c]                        // 0x0040fbcf    d844246c
                         add                  edx, 0x02                                     // 0x0040fbd3    83c202
                         add                  eax, 0x02                                     // 0x0040fbd6    83c002
                         fstp                 dword ptr [esp]                               // 0x0040fbd9    d91c24
                         push                 ecx                                           // 0x0040fbdc    51
                         {disp8} mov          ecx, dword ptr [edi + 0x0c]                   // 0x0040fbdd    8b4f0c
                         push                 ebp                                           // 0x0040fbe0    55
                         push                 edx                                           // 0x0040fbe1    52
                         {disp8} mov          edx, dword ptr [edi + 0x08]                   // 0x0040fbe2    8b5708
                         push                 eax                                           // 0x0040fbe5    50
                         add                  ecx, 0x2                                      // 0x0040fbe6    83c102
                         push                 ecx                                           // 0x0040fbe9    51
                         add                  edx, 0x02                                     // 0x0040fbea    83c202
                         push                 edx                                           // 0x0040fbed    52
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0040fbee    e88d2d0000
                         add                  esp, 0x3c                                     // 0x0040fbf3    83c43c
                         {disp8} jmp          _jmp_addr_0x0040fbfc                          // 0x0040fbf6    eb04
_jmp_addr_0x0040fbf8:    {disp8} mov          ebp, dword ptr [esp + 0x48]                   // 0x0040fbf8    8b6c2448
_jmp_addr_0x0040fbfc:    {disp32} mov         eax, dword ptr [edi + 0x00000278]             // 0x0040fbfc    8b8778020000
                         test                 eax, eax                                      // 0x0040fc02    85c0
                         {disp32} je          _jmp_addr_0x00410451                          // 0x0040fc04    0f8447080000
                         {disp32} mov         cl, byte ptr [esp + 0x000000c0]               // 0x0040fc0a    8a8c24c0000000
                         test                 cl, cl                                        // 0x0040fc11    84c9
                         mov                  ecx, 0x00c4cce4                               // 0x0040fc13    b9e4ccc400
                         {disp8} jne          _jmp_addr_0x0040fc1e                          // 0x0040fc18    7504
                         {disp8} lea          ecx, dword ptr [esp + 0x7c]                   // 0x0040fc1a    8d4c247c
_jmp_addr_0x0040fc1e:    {disp8} fld          dword ptr [esp + 0x20]                        // 0x0040fc1e    d9442420
                         push                 0x42c80000                                    // 0x0040fc22    680000c842
                         {disp8} fadd         dword ptr [esp + 0x44]                        // 0x0040fc27    d8442444
                         push                 0x0                                           // 0x0040fc2b    6a00
                         push                 0x0000a000                                    // 0x0040fc2d    6800a00000
                         {disp8} mov          edx, dword ptr [edi + 0x10]                   // 0x0040fc32    8b5710
                         push                 0xffff6000                                    // 0x0040fc35    680060ffff
                         push                 0x1                                           // 0x0040fc3a    6a01
                         push                 ecx                                           // 0x0040fc3c    51
                         push                 eax                                           // 0x0040fc3d    50
                         {disp8} mov          eax, dword ptr [esp + 0x5c]                   // 0x0040fc3e    8b44245c
                         push                 ecx                                           // 0x0040fc42    51
                         fstp                 dword ptr [esp]                               // 0x0040fc43    d91c24
                         push                 ecx                                           // 0x0040fc46    51
                         {disp8} fld          dword ptr [esp + 0x44]                        // 0x0040fc47    d9442444
                         {disp8} mov          ecx, dword ptr [edi + 0x14]                   // 0x0040fc4b    8b4f14
                         {disp8} fadd         dword ptr [esp + 0x6c]                        // 0x0040fc4e    d844246c
                         fstp                 dword ptr [esp]                               // 0x0040fc52    d91c24
                         push                 eax                                           // 0x0040fc55    50
                         {disp8} mov          eax, dword ptr [edi + 0x0c]                   // 0x0040fc56    8b470c
                         push                 ebp                                           // 0x0040fc59    55
                         push                 ecx                                           // 0x0040fc5a    51
                         {disp8} mov          ecx, dword ptr [edi + 0x08]                   // 0x0040fc5b    8b4f08
                         push                 edx                                           // 0x0040fc5e    52
                         push                 eax                                           // 0x0040fc5f    50
                         push                 ecx                                           // 0x0040fc60    51
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0040fc61    e81a2d0000
                         {disp32} fld         dword ptr [edi + 0x00000248]                  // 0x0040fc66    d98748020000
                         {disp32} fmul        dword ptr [__real@437f0000]                   // 0x0040fc6c    d80d70b28a00
                         add                  esp, 0x3c                                     // 0x0040fc72    83c43c
                         {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0040fc75    d81598a38a00
                         fnstsw               ax                                            // 0x0040fc7b    dfe0
                         test                 ah, 0x41                                      // 0x0040fc7d    f6c441
                         {disp8} jne          _jmp_addr_0x0040fc99                          // 0x0040fc80    7517
                         {disp32} fcom        dword ptr [__real@437f0000]                   // 0x0040fc82    d81570b28a00
                         fnstsw               ax                                            // 0x0040fc88    dfe0
                         test                 ah, 0x01                                      // 0x0040fc8a    f6c401
                         {disp8} jne          _jmp_addr_0x0040fca1                          // 0x0040fc8d    7512
                         fstp                 st(0)                                         // 0x0040fc8f    ddd8
                         {disp32} fld         dword ptr [__real@437f0000]                   // 0x0040fc91    d90570b28a00
                         {disp8} jmp          _jmp_addr_0x0040fca1                          // 0x0040fc97    eb08
_jmp_addr_0x0040fc99:    fstp                 st(0)                                         // 0x0040fc99    ddd8
                         {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x0040fc9b    d90598a38a00
_jmp_addr_0x0040fca1:    call                 _jmp_addr_0x007a1400                          // 0x0040fca1    e85a173900
                         mov                  edx, 0x000000ff                               // 0x0040fca6    baff000000
                         sub.s                edx, eax                                      // 0x0040fcab    2bd0
                         cmp                  eax, 0x05                                     // 0x0040fcad    83f805
                         {disp8} mov          dword ptr [esp + 0x38], edx                   // 0x0040fcb0    89542438
                         {disp8} fild         dword ptr [esp + 0x38]                        // 0x0040fcb4    db442438
                         {disp8} mov          dword ptr [esp + 0x2c], eax                   // 0x0040fcb8    8944242c
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2508]              // 0x0040fcbc    d80d08b58a00
                         {disp8} fstp         dword ptr [esp + 0x38]                        // 0x0040fcc2    d95c2438
                         {disp32} jle         _jmp_addr_0x00410451                          // 0x0040fcc6    0f8e85070000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x0040fccc    a1c052e800
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0040fcd1    8b0dc452e800
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x0040fcd7    89442428
                         {disp32} mov         dword ptr [esp + 0x00000084], eax             // 0x0040fcdb    89842484000000
                         {disp32} lea         eax, dword ptr [esp + 0x00000080]             // 0x0040fce2    8d842480000000
                         {disp32} mov         dword ptr [esp + 0x00000088], ecx             // 0x0040fce9    898c2488000000
                         {disp32} mov         dword ptr [esp + 0x00000080], ecx             // 0x0040fcf0    898c2480000000
                         push                 eax                                           // 0x0040fcf7    50
                         {disp8} lea          ecx, dword ptr [esp + 0x2c]                   // 0x0040fcf8    8d4c242c
                         push                 ecx                                           // 0x0040fcfc    51
                         call                 ?unadjust@SetupThing@@SAMAAH0@Z               // 0x0040fcfd    e82e1f0000
                         fstp                 st(0)                                         // 0x0040fd02    ddd8
                         {disp8} mov          ebp, dword ptr [edi + 0x14]                   // 0x0040fd04    8b6f14
                         {disp8} mov          ecx, dword ptr [edi + 0x0c]                   // 0x0040fd07    8b4f0c
                         mov.s                eax, ebp                                      // 0x0040fd0a    8bc5
                         sub.s                eax, ecx                                      // 0x0040fd0c    2bc1
                         cdq                                                                // 0x0040fd0e    99
                         sub.s                eax, edx                                      // 0x0040fd0f    2bc2
                         mov.s                ebx, eax                                      // 0x0040fd11    8bd8
                         sar                  ebx, 1                                        // 0x0040fd13    d1fb
                         {disp8} mov          dword ptr [esp + 0x3c], ebx                   // 0x0040fd15    895c243c
                         add                  esp, 0x08                                     // 0x0040fd19    83c408
                         {disp8} fild         dword ptr [esp + 0x34]                        // 0x0040fd1c    db442434
                         {disp32} fmul        dword ptr [__real@3f400000]                   // 0x0040fd20    d80d74b28a00
                         call                 _jmp_addr_0x007a1400                          // 0x0040fd26    e8d5163900
                         {disp8} mov          edx, dword ptr [edi + 0x08]                   // 0x0040fd2b    8b5708
                         mov.s                esi, eax                                      // 0x0040fd2e    8bf0
                         {disp8} mov          dword ptr [esp + 0x60], eax                   // 0x0040fd30    89442460
                         lea                  eax, dword ptr [ebx + eax * 0x4]              // 0x0040fd34    8d0483
                         {disp8} mov          dword ptr [esp + 0x4c], eax                   // 0x0040fd37    8944244c
                         {disp8} fild         dword ptr [esp + 0x4c]                        // 0x0040fd3b    db44244c
                         add                  eax, 0x03                                     // 0x0040fd3f    83c003
                         {disp8} mov          dword ptr [esp + 0x44], eax                   // 0x0040fd42    89442444
                         {disp8} mov          eax, dword ptr [edi + 0x10]                   // 0x0040fd46    8b4710
                         {disp8} mov          ecx, dword ptr [esp + 0x2c]                   // 0x0040fd49    8b4c242c
                         {disp32} fst         qword ptr [esp + 0x000000ac]                  // 0x0040fd4d    dd9424ac000000
                         {disp8} fild         dword ptr [esp + 0x44]                        // 0x0040fd54    db442444
                         add.s                eax, edx                                      // 0x0040fd58    03c2
                         imul                 esi, ecx                                      // 0x0040fd5a    0faff1
                         {disp32} fstp        qword ptr [esp + 0x000000b4]                  // 0x0040fd5d    dd9c24b4000000
                         {disp8} fild         dword ptr [esp + 0x34]                        // 0x0040fd64    db442434
                         {disp8} fstp         qword ptr [esp + 0x64]                        // 0x0040fd68    dd5c2464
                         cdq                                                                // 0x0040fd6c    99
                         sub.s                eax, edx                                      // 0x0040fd6d    2bc2
                         sar                  eax, 1                                        // 0x0040fd6f    d1f8
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x0040fd71    8944243c
                         {disp8} mov          eax, dword ptr [edi + 0x0c]                   // 0x0040fd75    8b470c
                         add.s                eax, ebp                                      // 0x0040fd78    03c5
                         cdq                                                                // 0x0040fd7a    99
                         sub.s                eax, edx                                      // 0x0040fd7b    2bc2
                         sar                  eax, 1                                        // 0x0040fd7d    d1f8
                         {disp8} mov          dword ptr [esp + 0x5c], eax                   // 0x0040fd7f    8944245c
                         add                  ebx, -0x03                                    // 0x0040fd83    83c3fd
                         mov.s                eax, ecx                                      // 0x0040fd86    8bc1
                         {disp8} fild         dword ptr [esp + 0x5c]                        // 0x0040fd88    db44245c
                         {disp8} mov          dword ptr [esp + 0x54], ebx                   // 0x0040fd8c    895c2454
                         cdq                                                                // 0x0040fd90    99
                         {disp8} fstp         qword ptr [esp + 0x6c]                        // 0x0040fd91    dd5c246c
                         sub.s                eax, edx                                      // 0x0040fd95    2bc2
                         {disp8} fild         dword ptr [esp + 0x54]                        // 0x0040fd97    db442454
                         mov.s                ebx, eax                                      // 0x0040fd9b    8bd8
                         sar                  ebx, 1                                        // 0x0040fd9d    d1fb
                         shl                  ebx, 0x18                                     // 0x0040fd9f    c1e318
                         {disp32} fstp        qword ptr [esp + 0x00000084]                  // 0x0040fda2    dd9c2484000000
                         mov.s                ebp, ebx                                      // 0x0040fda9    8beb
                         {disp8} fild         dword ptr [esp + 0x3c]                        // 0x0040fdab    db44243c
                         sar                  esi, 8                                        // 0x0040fdaf    c1fe08
                         and                  ebp, 0x00ffffff                               // 0x0040fdb2    81e5ffffff00
                         {disp8} mov          dword ptr [esp + 0x30], 0x00000000            // 0x0040fdb8    c744243000000000
                         {disp8} fstp         qword ptr [esp + 0x74]                        // 0x0040fdc0    dd5c2474
                         {disp8} jmp          _jmp_addr_0x0040fdcd                          // 0x0040fdc4    eb07
_jmp_addr_0x0040fdc6:    {disp32} fld         qword ptr [esp + 0x000000ac]                  // 0x0040fdc6    dd8424ac000000
_jmp_addr_0x0040fdcd:    {disp8} fild         dword ptr [esp + 0x30]                        // 0x0040fdcd    db442430
                         fld                  st(0)                                         // 0x0040fdd1    d9c0
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2504]              // 0x0040fdd3    d80d04b58a00
                         fld                  st(0)                                         // 0x0040fdd9    d9c0
                         fcos                                                               // 0x0040fddb    d9ff
                         {disp32} fst         qword ptr [esp + 0x0000008c]                  // 0x0040fddd    dd94248c000000
                         fmul                 st, st(3)                                     // 0x0040fde4    d8cb
                         {disp8} fadd         qword ptr [esp + 0x6c]                        // 0x0040fde6    dc44246c
                         call                 _jmp_addr_0x007a1400                          // 0x0040fdea    e811163900
                         fsin                                                               // 0x0040fdef    d9fe
                         {disp8} mov          dword ptr [esp + 0x58], eax                   // 0x0040fdf1    89442458
                         {disp32} fst         qword ptr [esp + 0x00000094]                  // 0x0040fdf5    dd942494000000
                         fmul                 st, st(2)                                     // 0x0040fdfc    d8ca
                         {disp8} fadd         qword ptr [esp + 0x74]                        // 0x0040fdfe    dc442474
                         call                 _jmp_addr_0x007a1400                          // 0x0040fe02    e8f9153900
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x0040fe07    d80590a38a00
                         {disp8} mov          dword ptr [esp + 0x50], eax                   // 0x0040fe0d    89442450
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2504]              // 0x0040fe11    d80d04b58a00
                         fld                  st(0)                                         // 0x0040fe17    d9c0
                         fcos                                                               // 0x0040fe19    d9ff
                         {disp32} fst         qword ptr [esp + 0x0000009c]                  // 0x0040fe1b    dd94249c000000
                         fmul                 st, st(2)                                     // 0x0040fe22    d8ca
                         {disp8} fadd         qword ptr [esp + 0x6c]                        // 0x0040fe24    dc44246c
                         call                 _jmp_addr_0x007a1400                          // 0x0040fe28    e8d3153900
                         fsin                                                               // 0x0040fe2d    d9fe
                         {disp8} mov          dword ptr [esp + 0x24], eax                   // 0x0040fe2f    89442424
                         {disp32} fst         qword ptr [esp + 0x000000a4]                  // 0x0040fe33    dd9424a4000000
                         fld                  st(0)                                         // 0x0040fe3a    d9c0
                         fmul                 st, st(2)                                     // 0x0040fe3c    d8ca
                         {disp8} fadd         qword ptr [esp + 0x74]                        // 0x0040fe3e    dc442474
                         call                 _jmp_addr_0x007a1400                          // 0x0040fe42    e8b9153900
                         {disp32} fld         qword ptr [esp + 0x0000009c]                  // 0x0040fe47    dd84249c000000
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x0040fe4e    dc4c2464
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0040fe52    89442414
                         {disp8} fadd         qword ptr [esp + 0x6c]                        // 0x0040fe56    dc44246c
                         call                 _jmp_addr_0x007a1400                          // 0x0040fe5a    e8a1153900
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x0040fe5f    dc4c2464
                         {disp8} mov          dword ptr [esp + 0x54], eax                   // 0x0040fe63    89442454
                         {disp8} fadd         qword ptr [esp + 0x74]                        // 0x0040fe67    dc442474
                         call                 _jmp_addr_0x007a1400                          // 0x0040fe6b    e890153900
                         fstp                 st(0)                                         // 0x0040fe70    ddd8
                         {disp32} fld         qword ptr [esp + 0x0000008c]                  // 0x0040fe72    dd84248c000000
                         {disp8} mov          dword ptr [esp + 0x4c], eax                   // 0x0040fe79    8944244c
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x0040fe7d    dc4c2464
                         {disp8} fadd         qword ptr [esp + 0x6c]                        // 0x0040fe81    dc44246c
                         call                 _jmp_addr_0x007a1400                          // 0x0040fe85    e876153900
                         {disp32} fld         qword ptr [esp + 0x00000094]                  // 0x0040fe8a    dd842494000000
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x0040fe91    dc4c2464
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0040fe95    8944241c
                         {disp8} fadd         qword ptr [esp + 0x74]                        // 0x0040fe99    dc442474
                         call                 _jmp_addr_0x007a1400                          // 0x0040fe9d    e85e153900
                         {disp8} mov          edx, dword ptr [esp + 0x58]                   // 0x0040fea2    8b542458
                         {disp8} mov          ecx, dword ptr [esp + 0x50]                   // 0x0040fea6    8b4c2450
                         push                 0x1                                           // 0x0040feaa    6a01
                         push                 0x0                                           // 0x0040feac    6a00
                         push                 ebx                                           // 0x0040feae    53
                         push                 ebx                                           // 0x0040feaf    53
                         push                 ebx                                           // 0x0040feb0    53
                         push                 ebx                                           // 0x0040feb1    53
                         push                 edx                                           // 0x0040feb2    52
                         {disp8} mov          edx, dword ptr [esp + 0x40]                   // 0x0040feb3    8b542440
                         push                 ecx                                           // 0x0040feb7    51
                         {disp8} mov          ecx, dword ptr [esp + 0x34]                   // 0x0040feb8    8b4c2434
                         push                 edx                                           // 0x0040febc    52
                         {disp8} mov          edx, dword ptr [esp + 0x78]                   // 0x0040febd    8b542478
                         push                 ecx                                           // 0x0040fec1    51
                         {disp8} mov          ecx, dword ptr [esp + 0x74]                   // 0x0040fec2    8b4c2474
                         push                 edx                                           // 0x0040fec6    52
                         {disp8} mov          edx, dword ptr [esp + 0x48]                   // 0x0040fec7    8b542448
                         push                 ecx                                           // 0x0040fecb    51
                         push                 edx                                           // 0x0040fecc    52
                         push                 eax                                           // 0x0040fecd    50
                         {disp8} mov          dword ptr [esp + 0x50], eax                   // 0x0040fece    89442450
                         call                 ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z     // 0x0040fed2    e8d92f0000
                         {disp32} mov         eax, dword ptr [esp + 0x00000090]             // 0x0040fed7    8b842490000000
                         push                 0x1                                           // 0x0040fede    6a01
                         push                 0x0                                           // 0x0040fee0    6a00
                         push                 ebx                                           // 0x0040fee2    53
                         push                 ebx                                           // 0x0040fee3    53
                         push                 ebp                                           // 0x0040fee4    55
                         push                 ebp                                           // 0x0040fee5    55
                         {disp32} fld         qword ptr [esp + 0x00000104]                  // 0x0040fee6    dd842404010000
                         {disp32} mov         ecx, dword ptr [esp + 0x000000a0]             // 0x0040feed    8b8c24a0000000
                         {disp32} fld         qword ptr [esp + 0x000000ec]                  // 0x0040fef4    dd8424ec000000
                         {disp8} mov          edx, dword ptr [esp + 0x74]                   // 0x0040fefb    8b542474
                         push                 eax                                           // 0x0040feff    50
                         fmul                 st, st(1)                                     // 0x0040ff00    d8c9
                         {disp8} mov          eax, dword ptr [esp + 0x68]                   // 0x0040ff02    8b442468
                         push                 ecx                                           // 0x0040ff06    51
                         {disp32} fadd        qword ptr [esp + 0x000000c4]                  // 0x0040ff07    dc8424c4000000
                         push                 edx                                           // 0x0040ff0e    52
                         push                 eax                                           // 0x0040ff0f    50
                         call                 _jmp_addr_0x007a1400                          // 0x0040ff10    e8eb143900
                         {disp32} fld         qword ptr [esp + 0x00000104]                  // 0x0040ff15    dd842404010000
                         fmul                 st, st(1)                                     // 0x0040ff1c    d8c9
                         push                 eax                                           // 0x0040ff1e    50
                         {disp32} fadd        qword ptr [esp + 0x000000d8]                  // 0x0040ff1f    dc8424d8000000
                         call                 _jmp_addr_0x007a1400                          // 0x0040ff26    e8d5143900
                         {disp32} fld         qword ptr [esp + 0x000000f0]                  // 0x0040ff2b    dd8424f0000000
                         fmul                 st, st(1)                                     // 0x0040ff32    d8c9
                         push                 eax                                           // 0x0040ff34    50
                         {disp32} fadd        qword ptr [esp + 0x000000d4]                  // 0x0040ff35    dc8424d4000000
                         call                 _jmp_addr_0x007a1400                          // 0x0040ff3c    e8bf143900
                         {disp32} fld         qword ptr [esp + 0x000000fc]                  // 0x0040ff41    dd8424fc000000
                         fmul                 st, st(1)                                     // 0x0040ff48    d8c9
                         push                 eax                                           // 0x0040ff4a    50
                         {disp32} fadd        qword ptr [esp + 0x000000e0]                  // 0x0040ff4b    dc8424e0000000
                         call                 _jmp_addr_0x007a1400                          // 0x0040ff52    e8a9143900
                         fstp                 st(0)                                         // 0x0040ff57    ddd8
                         push                 eax                                           // 0x0040ff59    50
                         call                 ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z     // 0x0040ff5a    e8512f0000
                         {disp32} fld         qword ptr [esp + 0x000000f4]                  // 0x0040ff5f    dd8424f4000000
                         {disp32} mov         ecx, dword ptr [esp + 0x0000008c]             // 0x0040ff66    8b8c248c000000
                         {disp32} fld         qword ptr [esp + 0x0000010c]                  // 0x0040ff6d    dd84240c010000
                         {disp32} mov         edx, dword ptr [esp + 0x00000088]             // 0x0040ff74    8b942488000000
                         fmul                 st, st(1)                                     // 0x0040ff7b    d8c9
                         {disp32} mov         eax, dword ptr [esp + 0x000000c4]             // 0x0040ff7d    8b8424c4000000
                         add                  esp, 0x70                                     // 0x0040ff84    83c470
                         {disp8} fadd         qword ptr [esp + 0x6c]                        // 0x0040ff87    dc44246c
                         push                 0x1                                           // 0x0040ff8b    6a01
                         push                 0x0                                           // 0x0040ff8d    6a00
                         push                 ebx                                           // 0x0040ff8f    53
                         push                 ebx                                           // 0x0040ff90    53
                         push                 ebp                                           // 0x0040ff91    55
                         push                 ebp                                           // 0x0040ff92    55
                         push                 ecx                                           // 0x0040ff93    51
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x0040ff94    8b4c2468
                         push                 edx                                           // 0x0040ff98    52
                         push                 eax                                           // 0x0040ff99    50
                         push                 ecx                                           // 0x0040ff9a    51
                         call                 _jmp_addr_0x007a1400                          // 0x0040ff9b    e860143900
                         {disp32} fld         qword ptr [esp + 0x000000cc]                  // 0x0040ffa0    dd8424cc000000
                         fmul                 st, st(1)                                     // 0x0040ffa7    d8c9
                         push                 eax                                           // 0x0040ffa9    50
                         {disp32} fadd        qword ptr [esp + 0x000000a0]                  // 0x0040ffaa    dc8424a0000000
                         call                 _jmp_addr_0x007a1400                          // 0x0040ffb1    e84a143900
                         {disp32} fld         qword ptr [esp + 0x000000b8]                  // 0x0040ffb6    dd8424b8000000
                         fmul                 st, st(1)                                     // 0x0040ffbd    d8c9
                         push                 eax                                           // 0x0040ffbf    50
                         {disp32} fadd        qword ptr [esp + 0x0000009c]                  // 0x0040ffc0    dc84249c000000
                         call                 _jmp_addr_0x007a1400                          // 0x0040ffc7    e834143900
                         {disp32} fld         qword ptr [esp + 0x000000c4]                  // 0x0040ffcc    dd8424c4000000
                         fmul                 st, st(1)                                     // 0x0040ffd3    d8c9
                         push                 eax                                           // 0x0040ffd5    50
                         {disp32} fadd        qword ptr [esp + 0x000000a8]                  // 0x0040ffd6    dc8424a8000000
                         call                 _jmp_addr_0x007a1400                          // 0x0040ffdd    e81e143900
                         fstp                 st(0)                                         // 0x0040ffe2    ddd8
                         push                 eax                                           // 0x0040ffe4    50
                         call                 ?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z     // 0x0040ffe5    e8c62e0000
                         {disp8} mov          eax, dword ptr [esp + 0x68]                   // 0x0040ffea    8b442468
                         add                  esp, 0x38                                     // 0x0040ffee    83c438
                         inc                  eax                                           // 0x0040fff1    40
                         cmp                  eax, 0x20                                     // 0x0040fff2    83f820
                         {disp8} mov          dword ptr [esp + 0x30], eax                   // 0x0040fff5    89442430
                         {disp32} jl          _jmp_addr_0x0040fdc6                          // 0x0040fff9    0f8cc7fdffff
                         {disp8} mov          edx, dword ptr [esp + 0x60]                   // 0x0040ffff    8b542460
                         {disp8} mov          ebp, dword ptr [esp + 0x34]                   // 0x00410003    8b6c2434
                         {disp32} mov         ecx, dword ptr [edi + 0x0000028c]             // 0x00410007    8b8f8c020000
                         add.s                ebp, edx                                      // 0x0041000d    03ea
                         {disp8} mov          ebx, dword ptr [esp + 0x28]                   // 0x0041000f    8b5c2428
                         mov                  eax, 0x55555556                               // 0x00410013    b856555555
                         imul                 ecx                                           // 0x00410018    f7e9
                         {disp8} mov          ecx, dword ptr [esp + 0x3c]                   // 0x0041001a    8b4c243c
                         mov.s                eax, edx                                      // 0x0041001e    8bc2
                         shr                  eax, 0x1f                                     // 0x00410020    c1e81f
                         {disp8} lea          edx, dword ptr [edx + eax * 0x1 + 0x01]       // 0x00410023    8d540201
                         {disp32} mov         eax, dword ptr [data_bytes + 0x2078]          // 0x00410027    a178809c00
                         {disp8} mov          dword ptr [esp + 0x54], eax                   // 0x0041002c    89442454
                         imul                 eax, dword ptr [esp + 0x2c]                   // 0x00410030    0faf44242c
                         {disp8} mov          dword ptr [esp + 0x30], edx                   // 0x00410035    89542430
                         sub.s                ecx, ebx                                      // 0x00410039    2bcb
                         sar                  eax, 8                                        // 0x0041003b    c1f808
                         {disp8} fild         dword ptr [esp + 0x30]                        // 0x0041003e    db442430
                         {disp32} mov         dword ptr [data_bytes + 0x2078], eax          // 0x00410042    a378809c00
                         {disp8} mov          eax, dword ptr [esp + 0x5c]                   // 0x00410047    8b44245c
                         mov.s                ebx, ecx                                      // 0x0041004b    8bd9
                         {disp32} fdivr       dword ptr [__real@40c90fdb]                   // 0x0041004d    d83d10b28a00
                         imul                 ebx, ecx                                      // 0x00410053    0fafd9
                         {disp8} mov          dword ptr [esp + 0x34], ebp                   // 0x00410056    896c2434
                         sub                  eax, dword ptr [esp + 0x00000080]             // 0x0041005a    2b842480000000
                         mov.s                ecx, eax                                      // 0x00410061    8bc8
                         imul                 ecx, eax                                      // 0x00410063    0fafc8
                         {disp8} fstp         dword ptr [esp + 0x50]                        // 0x00410066    d95c2450
                         {disp8} mov          eax, dword ptr [esp + 0x44]                   // 0x0041006a    8b442444
                         add.s                ebx, ecx                                      // 0x0041006e    03d9
                         mov.s                ecx, eax                                      // 0x00410070    8bc8
                         imul                 ecx, eax                                      // 0x00410072    0fafc8
                         cmp.s                ebx, ecx                                      // 0x00410075    3bd9
                         {disp8} jle          _jmp_addr_0x00410083                          // 0x00410077    7e0a
                         {disp32} mov         dword ptr [edi + 0x00000244], 0xffffffff      // 0x00410079    c78744020000ffffffff
_jmp_addr_0x00410083:    xor.s                ebx, ebx                                      // 0x00410083    33db
                         test                 edx, edx                                      // 0x00410085    85d2
                         {disp8} mov          dword ptr [esp + 0x1c], ebx                   // 0x00410087    895c241c
                         {disp32} jle         _jmp_addr_0x00410249                          // 0x0041008b    0f8eb8010000
                         {disp8} fild         dword ptr [esp + 0x34]                        // 0x00410091    db442434
                         mov.s                eax, esi                                      // 0x00410095    8bc6
                         imul                 eax, esi                                      // 0x00410097    0fafc6
                         {disp8} fstp         qword ptr [esp + 0x64]                        // 0x0041009a    dd5c2464
                         {disp8} mov          dword ptr [esp + 0x58], eax                   // 0x0041009e    89442458
                         {disp8} jmp          _jmp_addr_0x004100a8                          // 0x004100a2    eb04
_jmp_addr_0x004100a4:    {disp8} mov          ebx, dword ptr [esp + 0x1c]                   // 0x004100a4    8b5c241c
_jmp_addr_0x004100a8:    {disp32} mov         ecx, dword ptr [edi + 0x00000288]             // 0x004100a8    8b8f88020000
                         mov.s                eax, ebx                                      // 0x004100ae    8bc3
                         cdq                                                                // 0x004100b0    99
                         idiv                 ecx                                           // 0x004100b1    f7f9
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x004100b3    894c2414
                         mov.s                eax, ebx                                      // 0x004100b7    8bc3
                         {disp8} fild         dword ptr [esp + 0x14]                        // 0x004100b9    db442414
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x004100bd    89542418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x004100c1    db442418
                         cdq                                                                // 0x004100c5    99
                         idiv                 ecx                                           // 0x004100c6    f7f9
                         fdiv                 st, st(1)                                     // 0x004100c8    d8f1
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2510]              // 0x004100ca    d80510b58a00
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x004100d0    d95c2424
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x004100d4    89442418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x004100d8    db442418
                         fdiv                 st, st(1)                                     // 0x004100dc    d8f1
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2510]              // 0x004100de    d80510b58a00
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x004100e4    d95c2414
                         fstp                 st(0)                                         // 0x004100e8    ddd8
                         {disp8} fild         dword ptr [esp + 0x1c]                        // 0x004100ea    db44241c
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x004100ee    d84c2450
                         {disp8} fadd         dword ptr [esp + 0x38]                        // 0x004100f2    d8442438
                         fld                  st(0)                                         // 0x004100f6    d9c0
                         fsin                                                               // 0x004100f8    d9fe
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x004100fa    dc4c2464
                         {disp8} fadd         qword ptr [esp + 0x74]                        // 0x004100fe    dc442474
                         call                 _jmp_addr_0x007a1400                          // 0x00410102    e8f9123900
                         fcos                                                               // 0x00410107    d9ff
                         mov.s                ebx, eax                                      // 0x00410109    8bd8
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x0041010b    dc4c2464
                         {disp8} fsubr        qword ptr [esp + 0x6c]                        // 0x0041010f    dc6c246c
                         call                 _jmp_addr_0x007a1400                          // 0x00410113    e8e8123900
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x00410118    d9442414
                         {disp32} mov         ecx, dword ptr [esp + 0x00000080]             // 0x0041011c    8b8c2480000000
                         {disp8} fadd         dword ptr [esp + 0x20]                        // 0x00410123    d8442420
                         {disp8} mov          edx, dword ptr [esp + 0x28]                   // 0x00410127    8b542428
                         mov.s                ebp, eax                                      // 0x0041012b    8be8
                         sub.s                eax, ecx                                      // 0x0041012d    2bc1
                         {disp8} fstp         dword ptr [esp + 0x44]                        // 0x0041012f    d95c2444
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x00410133    d9442424
                         mov.s                ecx, ebx                                      // 0x00410137    8bcb
                         sub.s                ecx, edx                                      // 0x00410139    2bca
                         {disp8} fadd         dword ptr [esp + 0x20]                        // 0x0041013b    d8442420
                         mov.s                edx, ecx                                      // 0x0041013f    8bd1
                         imul                 edx, ecx                                      // 0x00410141    0fafd1
                         {disp8} fstp         dword ptr [esp + 0x3c]                        // 0x00410144    d95c243c
                         push                 0x42c80000                                    // 0x00410148    680000c842
                         mov.s                ecx, eax                                      // 0x0041014d    8bc8
                         imul                 ecx, eax                                      // 0x0041014f    0fafc8
                         {disp8} mov          eax, dword ptr [esp + 0x5c]                   // 0x00410152    8b44245c
                         push                 0x0                                           // 0x00410156    6a00
                         push                 0x0000a000                                    // 0x00410158    6800a00000
                         add.s                edx, ecx                                      // 0x0041015d    03d1
                         push                 0xffff6000                                    // 0x0041015f    680060ffff
                         cmp.s                edx, eax                                      // 0x00410164    3bd0
                         {disp32} mov         edx, dword ptr [edi + 0x00000278]             // 0x00410166    8b9778020000
                         push                 0x1                                           // 0x0041016c    6a01
                         push                 0x00c4ccdc                                    // 0x0041016e    68dcccc400
                         push                 edx                                           // 0x00410173    52
                         {disp8} mov          edx, dword ptr [esp + 0x60]                   // 0x00410174    8b542460
                         push                 edx                                           // 0x00410178    52
                         {disp8} mov          edx, dword ptr [esp + 0x5c]                   // 0x00410179    8b54245c
                         push                 edx                                           // 0x0041017d    52
                         {disp8} mov          edx, dword ptr [esp + 0x38]                   // 0x0041017e    8b542438
                         push                 edx                                           // 0x00410182    52
                         {disp8} mov          edx, dword ptr [esp + 0x4c]                   // 0x00410183    8b54244c
                         push                 edx                                           // 0x00410187    52
                         setl                 byte ptr [esp + 0x3f]                         // 0x00410188    0f9c44243f
                         {disp8} lea          edx, dword ptr [esi + ebp * 0x1 + 0x02]       // 0x0041018d    8d542e02
                         mov.s                eax, ebp                                      // 0x00410191    8bc5
                         push                 edx                                           // 0x00410193    52
                         sub.s                eax, esi                                      // 0x00410194    2bc6
                         mov.s                ecx, ebx                                      // 0x00410196    8bcb
                         sub.s                ecx, esi                                      // 0x00410198    2bce
                         {disp8} lea          edx, dword ptr [esi + ebx * 0x1 + 0x02]       // 0x0041019a    8d541e02
                         {disp8} mov          dword ptr [esp + 0x48], eax                   // 0x0041019e    89442448
                         push                 edx                                           // 0x004101a2    52
                         add                  eax, 0x02                                     // 0x004101a3    83c002
                         {disp32} mov         dword ptr [esp + 0x00000090], ecx             // 0x004101a6    898c2490000000
                         push                 eax                                           // 0x004101ad    50
                         add                  ecx, 0x2                                      // 0x004101ae    83c102
                         push                 ecx                                           // 0x004101b1    51
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004101b2    e8c9270000
                         {disp8} mov          al, byte ptr [esp + 0x4f]                     // 0x004101b7    8a44244f
                         add                  esp, 0x3c                                     // 0x004101bb    83c43c
                         test                 al, al                                        // 0x004101be    84c0
                         mov                  eax, 0x00c4cce4                               // 0x004101c0    b8e4ccc400
                         {disp8} jne          _jmp_addr_0x004101cc                          // 0x004101c5    7505
                         mov                  eax, 0x00c4ccf8                               // 0x004101c7    b8f8ccc400
_jmp_addr_0x004101cc:    {disp8} mov          ecx, dword ptr [esp + 0x44]                   // 0x004101cc    8b4c2444
                         {disp8} mov          edx, dword ptr [esp + 0x3c]                   // 0x004101d0    8b54243c
                         push                 0x42c80000                                    // 0x004101d4    680000c842
                         push                 0x0                                           // 0x004101d9    6a00
                         push                 0x0000a000                                    // 0x004101db    6800a00000
                         push                 0xffff6000                                    // 0x004101e0    680060ffff
                         push                 0x1                                           // 0x004101e5    6a01
                         push                 eax                                           // 0x004101e7    50
                         {disp32} mov         eax, dword ptr [edi + 0x00000278]             // 0x004101e8    8b8778020000
                         push                 eax                                           // 0x004101ee    50
                         {disp8} mov          eax, dword ptr [esp + 0x30]                   // 0x004101ef    8b442430
                         push                 ecx                                           // 0x004101f3    51
                         {disp8} mov          ecx, dword ptr [esp + 0x44]                   // 0x004101f4    8b4c2444
                         push                 edx                                           // 0x004101f8    52
                         {disp8} mov          edx, dword ptr [esp + 0x3c]                   // 0x004101f9    8b54243c
                         push                 eax                                           // 0x004101fd    50
                         {disp32} mov         eax, dword ptr [esp + 0x00000084]             // 0x004101fe    8b842484000000
                         push                 ecx                                           // 0x00410205    51
                         add.s                ebp, esi                                      // 0x00410206    03ee
                         push                 ebp                                           // 0x00410208    55
                         add.s                ebx, esi                                      // 0x00410209    03de
                         push                 ebx                                           // 0x0041020b    53
                         push                 edx                                           // 0x0041020c    52
                         push                 eax                                           // 0x0041020d    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0041020e    e86d270000
                         {disp8} mov          al, byte ptr [esp + 0x4f]                     // 0x00410213    8a44244f
                         add                  esp, 0x3c                                     // 0x00410217    83c43c
                         test                 al, al                                        // 0x0041021a    84c0
                         {disp8} je           _jmp_addr_0x00410232                          // 0x0041021c    7414
                         cmp                  dword ptr [esp + 0x2c], 0x000000fd            // 0x0041021e    817c242cfd000000
                         {disp8} jle          _jmp_addr_0x00410232                          // 0x00410226    7e0a
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x00410228    8b4c241c
                         {disp32} mov         dword ptr [edi + 0x00000244], ecx             // 0x0041022c    898f44020000
_jmp_addr_0x00410232:    {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x00410232    8b44241c
                         {disp8} mov          ecx, dword ptr [esp + 0x30]                   // 0x00410236    8b4c2430
                         inc                  eax                                           // 0x0041023a    40
                         cmp.s                eax, ecx                                      // 0x0041023b    3bc1
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0041023d    8944241c
                         {disp32} jl          _jmp_addr_0x004100a4                          // 0x00410241    0f8c5dfeffff
                         mov.s                edx, ecx                                      // 0x00410247    8bd1
_jmp_addr_0x00410249:    {disp8} mov          eax, dword ptr [esp + 0x34]                   // 0x00410249    8b442434
                         {disp8} mov          ecx, dword ptr [esp + 0x60]                   // 0x0041024d    8b4c2460
                         lea                  eax, dword ptr [eax + ecx * 0x2]              // 0x00410251    8d0448
                         {disp8} mov          dword ptr [esp + 0x34], eax                   // 0x00410254    89442434
                         {disp32} mov         eax, dword ptr [edi + 0x0000028c]             // 0x00410258    8b878c020000
                         sub.s                eax, edx                                      // 0x0041025e    2bc2
                         test                 eax, eax                                      // 0x00410260    85c0
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x00410262    8944243c
                         {disp8} fild         dword ptr [esp + 0x3c]                        // 0x00410266    db44243c
                         {disp8} mov          dword ptr [esp + 0x1c], 0x00000000            // 0x0041026a    c744241c00000000
                         {disp32} fdivr       dword ptr [__real@40c90fdb]                   // 0x00410272    d83d10b28a00
                         {disp8} fstp         dword ptr [esp + 0x50]                        // 0x00410278    d95c2450
                         {disp32} jle         _jmp_addr_0x00410443                          // 0x0041027c    0f8ec1010000
                         {disp8} fild         dword ptr [esp + 0x34]                        // 0x00410282    db442434
                         mov.s                eax, esi                                      // 0x00410286    8bc6
                         imul                 eax, esi                                      // 0x00410288    0fafc6
                         {disp8} fstp         qword ptr [esp + 0x64]                        // 0x0041028b    dd5c2464
                         {disp8} mov          dword ptr [esp + 0x58], eax                   // 0x0041028f    89442458
                         {disp8} jmp          _jmp_addr_0x00410299                          // 0x00410293    eb04
_jmp_addr_0x00410295:    {disp8} mov          edx, dword ptr [esp + 0x30]                   // 0x00410295    8b542430
_jmp_addr_0x00410299:    {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x00410299    8b44241c
                         {disp32} mov         ecx, dword ptr [edi + 0x00000288]             // 0x0041029d    8b8f88020000
                         lea                  ebx, dword ptr [eax + edx * 0x1]              // 0x004102a3    8d1c10
                         mov.s                eax, ebx                                      // 0x004102a6    8bc3
                         cdq                                                                // 0x004102a8    99
                         idiv                 ecx                                           // 0x004102a9    f7f9
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x004102ab    894c2414
                         mov.s                eax, ebx                                      // 0x004102af    8bc3
                         {disp8} mov          dword ptr [esp + 0x4c], ebx                   // 0x004102b1    895c244c
                         {disp8} fild         dword ptr [esp + 0x14]                        // 0x004102b5    db442414
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x004102b9    89542418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x004102bd    db442418
                         cdq                                                                // 0x004102c1    99
                         idiv                 ecx                                           // 0x004102c2    f7f9
                         fdiv                 st, st(1)                                     // 0x004102c4    d8f1
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2510]              // 0x004102c6    d80510b58a00
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x004102cc    d95c2414
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x004102d0    89442418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x004102d4    db442418
                         fdiv                 st, st(1)                                     // 0x004102d8    d8f1
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2510]              // 0x004102da    d80510b58a00
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x004102e0    d95c2424
                         fstp                 st(0)                                         // 0x004102e4    ddd8
                         {disp8} fild         dword ptr [esp + 0x1c]                        // 0x004102e6    db44241c
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x004102ea    d84c2450
                         {disp8} fsub         dword ptr [esp + 0x38]                        // 0x004102ee    d8642438
                         fld                  st(0)                                         // 0x004102f2    d9c0
                         fsin                                                               // 0x004102f4    d9fe
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x004102f6    dc4c2464
                         {disp8} fadd         qword ptr [esp + 0x74]                        // 0x004102fa    dc442474
                         call                 _jmp_addr_0x007a1400                          // 0x004102fe    e8fd103900
                         fcos                                                               // 0x00410303    d9ff
                         mov.s                ebx, eax                                      // 0x00410305    8bd8
                         {disp8} fmul         qword ptr [esp + 0x64]                        // 0x00410307    dc4c2464
                         {disp8} fsubr        qword ptr [esp + 0x6c]                        // 0x0041030b    dc6c246c
                         call                 _jmp_addr_0x007a1400                          // 0x0041030f    e8ec103900
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x00410314    d9442424
                         {disp32} mov         ecx, dword ptr [esp + 0x00000080]             // 0x00410318    8b8c2480000000
                         {disp8} fadd         dword ptr [esp + 0x20]                        // 0x0041031f    d8442420
                         {disp8} mov          edx, dword ptr [esp + 0x28]                   // 0x00410323    8b542428
                         mov.s                ebp, eax                                      // 0x00410327    8be8
                         sub.s                eax, ecx                                      // 0x00410329    2bc1
                         {disp8} fstp         dword ptr [esp + 0x60]                        // 0x0041032b    d95c2460
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0041032f    d9442414
                         mov.s                ecx, ebx                                      // 0x00410333    8bcb
                         sub.s                ecx, edx                                      // 0x00410335    2bca
                         {disp8} fadd         dword ptr [esp + 0x20]                        // 0x00410337    d8442420
                         mov.s                edx, ecx                                      // 0x0041033b    8bd1
                         imul                 edx, ecx                                      // 0x0041033d    0fafd1
                         {disp8} fstp         dword ptr [esp + 0x44]                        // 0x00410340    d95c2444
                         push                 0x42c80000                                    // 0x00410344    680000c842
                         mov.s                ecx, eax                                      // 0x00410349    8bc8
                         imul                 ecx, eax                                      // 0x0041034b    0fafc8
                         {disp8} mov          eax, dword ptr [esp + 0x5c]                   // 0x0041034e    8b44245c
                         push                 0x0                                           // 0x00410352    6a00
                         push                 0x0000a000                                    // 0x00410354    6800a00000
                         add.s                edx, ecx                                      // 0x00410359    03d1
                         cmp.s                edx, eax                                      // 0x0041035b    3bd0
                         {disp32} mov         edx, dword ptr [edi + 0x00000278]             // 0x0041035d    8b9778020000
                         push                 0xffff6000                                    // 0x00410363    680060ffff
                         push                 0x1                                           // 0x00410368    6a01
                         push                 0x00c4ccdc                                    // 0x0041036a    68dcccc400
                         push                 edx                                           // 0x0041036f    52
                         {disp8} mov          edx, dword ptr [esp + 0x7c]                   // 0x00410370    8b54247c
                         push                 edx                                           // 0x00410374    52
                         {disp8} mov          edx, dword ptr [esp + 0x64]                   // 0x00410375    8b542464
                         push                 edx                                           // 0x00410379    52
                         {disp8} mov          edx, dword ptr [esp + 0x48]                   // 0x0041037a    8b542448
                         push                 edx                                           // 0x0041037e    52
                         {disp8} mov          edx, dword ptr [esp + 0x3c]                   // 0x0041037f    8b54243c
                         push                 edx                                           // 0x00410383    52
                         setl                 byte ptr [esp + 0x3f]                         // 0x00410384    0f9c44243f
                         mov.s                eax, ebp                                      // 0x00410389    8bc5
                         sub.s                eax, esi                                      // 0x0041038b    2bc6
                         mov.s                ecx, ebx                                      // 0x0041038d    8bcb
                         {disp8} lea          edx, dword ptr [esi + ebp * 0x1 + 0x02]       // 0x0041038f    8d542e02
                         sub.s                ecx, esi                                      // 0x00410393    2bce
                         push                 edx                                           // 0x00410395    52
                         {disp8} mov          dword ptr [esp + 0x48], eax                   // 0x00410396    89442448
                         {disp32} mov         dword ptr [esp + 0x0000008c], ecx             // 0x0041039a    898c248c000000
                         {disp8} lea          edx, dword ptr [esi + ebx * 0x1 + 0x02]       // 0x004103a1    8d541e02
                         push                 edx                                           // 0x004103a5    52
                         add                  eax, 0x02                                     // 0x004103a6    83c002
                         push                 eax                                           // 0x004103a9    50
                         add                  ecx, 0x2                                      // 0x004103aa    83c102
                         push                 ecx                                           // 0x004103ad    51
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004103ae    e8cd250000
                         {disp8} mov          al, byte ptr [esp + 0x4f]                     // 0x004103b3    8a44244f
                         add                  esp, 0x3c                                     // 0x004103b7    83c43c
                         test                 al, al                                        // 0x004103ba    84c0
                         mov                  eax, 0x00c4cce4                               // 0x004103bc    b8e4ccc400
                         {disp8} jne          _jmp_addr_0x004103c8                          // 0x004103c1    7505
                         mov                  eax, 0x00c4ccf8                               // 0x004103c3    b8f8ccc400
_jmp_addr_0x004103c8:    {disp8} mov          ecx, dword ptr [esp + 0x60]                   // 0x004103c8    8b4c2460
                         {disp8} mov          edx, dword ptr [esp + 0x44]                   // 0x004103cc    8b542444
                         push                 0x42c80000                                    // 0x004103d0    680000c842
                         push                 0x0                                           // 0x004103d5    6a00
                         push                 0x0000a000                                    // 0x004103d7    6800a00000
                         push                 0xffff6000                                    // 0x004103dc    680060ffff
                         push                 0x1                                           // 0x004103e1    6a01
                         push                 eax                                           // 0x004103e3    50
                         {disp32} mov         eax, dword ptr [edi + 0x00000278]             // 0x004103e4    8b8778020000
                         push                 eax                                           // 0x004103ea    50
                         {disp8} mov          eax, dword ptr [esp + 0x40]                   // 0x004103eb    8b442440
                         push                 ecx                                           // 0x004103ef    51
                         {disp8} mov          ecx, dword ptr [esp + 0x34]                   // 0x004103f0    8b4c2434
                         push                 edx                                           // 0x004103f4    52
                         {disp8} mov          edx, dword ptr [esp + 0x3c]                   // 0x004103f5    8b54243c
                         push                 eax                                           // 0x004103f9    50
                         {disp32} mov         eax, dword ptr [esp + 0x00000084]             // 0x004103fa    8b842484000000
                         push                 ecx                                           // 0x00410401    51
                         add.s                ebp, esi                                      // 0x00410402    03ee
                         push                 ebp                                           // 0x00410404    55
                         add.s                ebx, esi                                      // 0x00410405    03de
                         push                 ebx                                           // 0x00410407    53
                         push                 edx                                           // 0x00410408    52
                         push                 eax                                           // 0x00410409    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0041040a    e871250000
                         {disp8} mov          al, byte ptr [esp + 0x4f]                     // 0x0041040f    8a44244f
                         add                  esp, 0x3c                                     // 0x00410413    83c43c
                         test                 al, al                                        // 0x00410416    84c0
                         {disp8} je           _jmp_addr_0x0041042e                          // 0x00410418    7414
                         cmp                  dword ptr [esp + 0x2c], 0x000000fd            // 0x0041041a    817c242cfd000000
                         {disp8} jle          _jmp_addr_0x0041042e                          // 0x00410422    7e0a
                         {disp8} mov          ecx, dword ptr [esp + 0x4c]                   // 0x00410424    8b4c244c
                         {disp32} mov         dword ptr [edi + 0x00000244], ecx             // 0x00410428    898f44020000
_jmp_addr_0x0041042e:    {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x0041042e    8b44241c
                         {disp8} mov          ecx, dword ptr [esp + 0x3c]                   // 0x00410432    8b4c243c
                         inc                  eax                                           // 0x00410436    40
                         cmp.s                eax, ecx                                      // 0x00410437    3bc1
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x00410439    8944241c
                         {disp32} jl          _jmp_addr_0x00410295                          // 0x0041043d    0f8c52feffff
_jmp_addr_0x00410443:    {disp8} mov          edx, dword ptr [esp + 0x54]                   // 0x00410443    8b542454
                         {disp8} mov          ebp, dword ptr [esp + 0x48]                   // 0x00410447    8b6c2448
                         {disp32} mov         dword ptr [data_bytes + 0x2078], edx          // 0x0041044b    891578809c00
_jmp_addr_0x00410451:    {disp32} mov         al, byte ptr [edi + 0x00000281]               // 0x00410451    8a8781020000
                         test                 al, al                                        // 0x00410457    84c0
                         {disp32} je          _jmp_addr_0x004105b9                          // 0x00410459    0f845a010000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x0041045f    a1c052e800
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x00410464    8b0dc452e800
                         {disp8} mov          ebx, dword ptr [edi + 0x08]                   // 0x0041046a    8b5f08
                         {disp8} mov          esi, dword ptr [edi + 0x10]                   // 0x0041046d    8b7710
                         {disp8} mov          edx, dword ptr [edi + 0x0c]                   // 0x00410470    8b570c
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x00410473    89442428
                         {disp32} mov         dword ptr [esp + 0x00000084], eax             // 0x00410477    89842484000000
                         {disp8} lea          eax, dword ptr [esp + 0x2c]                   // 0x0041047e    8d44242c
                         {disp32} mov         dword ptr [esp + 0x00000088], ecx             // 0x00410482    898c2488000000
                         {disp8} mov          dword ptr [esp + 0x2c], ecx                   // 0x00410489    894c242c
                         sub.s                esi, ebx                                      // 0x0041048d    2bf3
                         {disp8} mov          ebx, dword ptr [edi + 0x14]                   // 0x0041048f    8b5f14
                         push                 eax                                           // 0x00410492    50
                         {disp8} lea          ecx, dword ptr [esp + 0x2c]                   // 0x00410493    8d4c242c
                         push                 ecx                                           // 0x00410497    51
                         sub.s                ebx, edx                                      // 0x00410498    2bda
                         call                 ?unadjust@SetupThing@@SAMAAH0@Z               // 0x0041049a    e891170000
                         fstp                 st(0)                                         // 0x0041049f    ddd8
                         {disp8} mov          eax, dword ptr [esp + 0x30]                   // 0x004104a1    8b442430
                         {disp8} mov          ecx, dword ptr [esp + 0x34]                   // 0x004104a5    8b4c2434
                         {disp32} mov         edx, dword ptr [edi + 0x00000278]             // 0x004104a9    8b9778020000
                         sub                  eax, 0x20                                     // 0x004104af    83e820
                         sub                  ecx, 0x20                                     // 0x004104b2    83e920
                         add                  esp, 0x08                                     // 0x004104b5    83c408
                         add.s                esi, eax                                      // 0x004104b8    03f0
                         add.s                ebx, ecx                                      // 0x004104ba    03d9
                         test                 edx, edx                                      // 0x004104bc    85d2
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x004104be    89442428
                         {disp8} mov          dword ptr [esp + 0x2c], ecx                   // 0x004104c2    894c242c
                         {disp8} je           _jmp_addr_0x00410520                          // 0x004104c6    7458
                         cmp                  dword ptr [edi + 0x0000027c], 0x00            // 0x004104c8    83bf7c02000000
                         {disp8} jne          _jmp_addr_0x00410520                          // 0x004104cf    754f
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x004104d1    d9442420
                         push                 0x42c80000                                    // 0x004104d5    680000c842
                         {disp8} fadd         dword ptr [esp + 0x44]                        // 0x004104da    d8442444
                         push                 0x0                                           // 0x004104de    6a00
                         push                 0x0000a000                                    // 0x004104e0    6800a00000
                         push                 0xffff6000                                    // 0x004104e5    680060ffff
                         push                 0x1                                           // 0x004104ea    6a01
                         push                 0x00c4ccdc                                    // 0x004104ec    68dcccc400
                         push                 edx                                           // 0x004104f1    52
                         {disp8} mov          edx, dword ptr [esp + 0x5c]                   // 0x004104f2    8b54245c
                         push                 ecx                                           // 0x004104f6    51
                         fstp                 dword ptr [esp]                               // 0x004104f7    d91c24
                         push                 ecx                                           // 0x004104fa    51
                         {disp8} fld          dword ptr [esp + 0x44]                        // 0x004104fb    d9442444
                         add                  ecx, 0x2                                      // 0x004104ff    83c102
                         {disp8} fadd         dword ptr [esp + 0x6c]                        // 0x00410502    d844246c
                         add                  eax, -0x02                                    // 0x00410506    83c0fe
                         fstp                 dword ptr [esp]                               // 0x00410509    d91c24
                         push                 edx                                           // 0x0041050c    52
                         push                 ebp                                           // 0x0041050d    55
                         {disp8} lea          edx, dword ptr [ebx + 0x02]                   // 0x0041050e    8d5302
                         push                 edx                                           // 0x00410511    52
                         {disp8} lea          edx, dword ptr [esi + -0x02]                  // 0x00410512    8d56fe
                         push                 edx                                           // 0x00410515    52
                         push                 ecx                                           // 0x00410516    51
                         push                 eax                                           // 0x00410517    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00410518    e863240000
                         add                  esp, 0x3c                                     // 0x0041051d    83c43c
_jmp_addr_0x00410520:    call                 dword ptr [__imp__GetTickCount@4]             // 0x00410520    ff15c4918a00
                         mov.s                ecx, eax                                      // 0x00410526    8bc8
                         mov                  eax, 0x51eb851f                               // 0x00410528    b81f85eb51
                         mul                  ecx                                           // 0x0041052d    f7e1
                         {disp32} mov         eax, dword ptr [edi + 0x00000278]             // 0x0041052f    8b8778020000
                         shr                  edx, 7                                        // 0x00410535    c1ea07
                         mov.s                ecx, edx                                      // 0x00410538    8bca
                         {disp8} mov          edx, dword ptr [esp + 0x7c]                   // 0x0041053a    8b54247c
                         xor                  edx, 0x00ffffff                               // 0x0041053e    81f2ffffff00
                         and                  ecx, 0x01                                     // 0x00410544    83e101
                         test                 eax, eax                                      // 0x00410547    85c0
                         {disp8} mov          dword ptr [esp + 0x18], edx                   // 0x00410549    89542418
                         {disp8} je           _jmp_addr_0x004105a9                          // 0x0041054d    745a
                         {disp8} mov          edx, dword ptr [edi + 0x1c]                   // 0x0041054f    8b571c
                         test                 edx, edx                                      // 0x00410552    85d2
                         {disp8} jl           _jmp_addr_0x0041055e                          // 0x00410554    7c08
                         test                 ecx, ecx                                      // 0x00410556    85c9
                         {disp8} lea          ecx, dword ptr [esp + 0x18]                   // 0x00410558    8d4c2418
                         {disp8} jne          _jmp_addr_0x00410562                          // 0x0041055c    7504
_jmp_addr_0x0041055e:    {disp8} lea          ecx, dword ptr [esp + 0x7c]                   // 0x0041055e    8d4c247c
_jmp_addr_0x00410562:    {disp8} fld          dword ptr [esp + 0x20]                        // 0x00410562    d9442420
                         push                 0x42c80000                                    // 0x00410566    680000c842
                         {disp8} fadd         dword ptr [esp + 0x44]                        // 0x0041056b    d8442444
                         push                 0x0                                           // 0x0041056f    6a00
                         push                 0x0000a000                                    // 0x00410571    6800a00000
                         push                 0xffff6000                                    // 0x00410576    680060ffff
                         push                 0x1                                           // 0x0041057b    6a01
                         {disp8} mov          edx, dword ptr [esp + 0x3c]                   // 0x0041057d    8b54243c
                         push                 ecx                                           // 0x00410581    51
                         push                 eax                                           // 0x00410582    50
                         {disp8} mov          eax, dword ptr [esp + 0x5c]                   // 0x00410583    8b44245c
                         push                 ecx                                           // 0x00410587    51
                         fstp                 dword ptr [esp]                               // 0x00410588    d91c24
                         push                 ecx                                           // 0x0041058b    51
                         {disp8} fld          dword ptr [esp + 0x44]                        // 0x0041058c    d9442444
                         {disp8} mov          ecx, dword ptr [esp + 0x50]                   // 0x00410590    8b4c2450
                         {disp8} fadd         dword ptr [esp + 0x6c]                        // 0x00410594    d844246c
                         fstp                 dword ptr [esp]                               // 0x00410598    d91c24
                         push                 eax                                           // 0x0041059b    50
                         push                 ebp                                           // 0x0041059c    55
                         push                 ebx                                           // 0x0041059d    53
                         push                 esi                                           // 0x0041059e    56
                         push                 ecx                                           // 0x0041059f    51
                         push                 edx                                           // 0x004105a0    52
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004105a1    e8da230000
                         add                  esp, 0x3c                                     // 0x004105a6    83c43c
_jmp_addr_0x004105a9:    {disp32} mov         ecx, dword ptr [edi + 0x00000234]             // 0x004105a9    8b8f34020000
                         test                 ecx, ecx                                      // 0x004105af    85c9
                         {disp8} je           _jmp_addr_0x004105b9                          // 0x004105b1    7406
                         push                 edi                                           // 0x004105b3    57
                         call                 @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x004105b4    e8878bffff
_jmp_addr_0x004105b9:    pop                  edi                                           // 0x004105b9    5f
                         pop                  esi                                           // 0x004105ba    5e
                         pop                  ebp                                           // 0x004105bb    5d
                         pop                  ebx                                           // 0x004105bc    5b
                         add                  esp, 0x000000ac                               // 0x004105bd    81c4ac000000
                         ret                  0x0008                                        // 0x004105c3    c20800
                         nop                                                                // 0x004105c6    90
                         nop                                                                // 0x004105c7    90
                         nop                                                                // 0x004105c8    90
                         nop                                                                // 0x004105c9    90
                         nop                                                                // 0x004105ca    90
                         nop                                                                // 0x004105cb    90
                         nop                                                                // 0x004105cc    90
                         nop                                                                // 0x004105cd    90
                         nop                                                                // 0x004105ce    90
                         nop                                                                // 0x004105cf    90
@__ct__12SetupPictureFiiiP12LH3DMaterialiibib@38:    {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x004105d0    8b442420
                         {disp8} mov          edx, dword ptr [esp + 0x04]                   // 0x004105d4    8b542404
                         push                 ebx                                           // 0x004105d8    53
                         push                 esi                                           // 0x004105d9    56
                         xor.s                ebx, ebx                                      // 0x004105da    33db
                         push                 ebx                                           // 0x004105dc    53
                         push                 0x00c4cd30                                    // 0x004105dd    6830cdc400
                         push                 eax                                           // 0x004105e2    50
                         push                 eax                                           // 0x004105e3    50
                         {disp8} mov          eax, dword ptr [esp + 0x24]                   // 0x004105e4    8b442424
                         mov.s                esi, ecx                                      // 0x004105e8    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x20]                   // 0x004105ea    8b4c2420
                         push                 eax                                           // 0x004105ee    50
                         push                 ecx                                           // 0x004105ef    51
                         push                 edx                                           // 0x004105f0    52
                         mov.s                ecx, esi                                      // 0x004105f1    8bce
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x004105f3    e8b892ffff
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x004105f8    8b44241c
                         mov                  dword ptr [esi], 0x008ab518                   // 0x004105fc    c70618b58a00
                         {disp32} mov         dword ptr [esi + 0x00000244], 0xffffffff      // 0x00410602    c78644020000ffffffff
                         {disp32} mov         dword ptr [esi + 0x0000024c], ebx             // 0x0041060c    899e4c020000
                         {disp32} mov         dword ptr [esi + 0x00000248], ebx             // 0x00410612    899e48020000
                         {disp32} mov         dword ptr [esi + 0x00000264], ebx             // 0x00410618    899e64020000
                         {disp32} mov         dword ptr [esi + 0x00000260], ebx             // 0x0041061e    899e60020000
                         {disp32} mov         dword ptr [esi + 0x0000025c], ebx             // 0x00410624    899e5c020000
                         {disp32} mov         dword ptr [esi + 0x00000274], ebx             // 0x0041062a    899e74020000
                         {disp32} mov         dword ptr [esi + 0x00000270], ebx             // 0x00410630    899e70020000
                         {disp32} mov         dword ptr [esi + 0x00000258], ebx             // 0x00410636    899e58020000
                         {disp32} mov         dword ptr [esi + 0x0000026c], ebx             // 0x0041063c    899e6c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], ebx             // 0x00410642    899e54020000
                         {disp32} mov         dword ptr [esi + 0x00000268], ebx             // 0x00410648    899e68020000
                         {disp32} mov         dword ptr [esi + 0x00000250], ebx             // 0x0041064e    899e50020000
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x00410654    8b4c2418
                         {disp32} mov         dword ptr [esi + 0x0000024c], ebx             // 0x00410658    899e4c020000
                         {disp32} mov         dword ptr [esi + 0x00000248], ebx             // 0x0041065e    899e48020000
                         {disp32} mov         dword ptr [esi + 0x00000264], ebx             // 0x00410664    899e64020000
                         {disp32} mov         dword ptr [esi + 0x00000260], ebx             // 0x0041066a    899e60020000
                         {disp32} mov         dword ptr [esi + 0x0000025c], ebx             // 0x00410670    899e5c020000
                         {disp32} mov         dword ptr [esi + 0x00000274], ebx             // 0x00410676    899e74020000
                         {disp32} mov         dword ptr [esi + 0x00000270], ebx             // 0x0041067c    899e70020000
                         {disp32} mov         dword ptr [esi + 0x00000258], ebx             // 0x00410682    899e58020000
                         {disp32} mov         dword ptr [esi + 0x0000026c], ebx             // 0x00410688    899e6c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], ebx             // 0x0041068e    899e54020000
                         {disp32} mov         dword ptr [esi + 0x00000268], ebx             // 0x00410694    899e68020000
                         {disp32} mov         dword ptr [esi + 0x00000250], ebx             // 0x0041069a    899e50020000
                         {disp32} mov         dword ptr [esi + 0x00000284], eax             // 0x004106a0    898684020000
                         {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x004106a6    8b442420
                         mov.s                edx, eax                                      // 0x004106aa    8bd0
                         imul                 edx, eax                                      // 0x004106ac    0fafd0
                         {disp32} mov         dword ptr [esi + 0x00000288], eax             // 0x004106af    898688020000
                         {disp8} mov          al, byte ptr [esp + 0x24]                     // 0x004106b5    8a442424
                         {disp32} mov         dword ptr [esi + 0x00000278], ecx             // 0x004106b9    898e78020000
                         {disp8} mov          cl, byte ptr [esp + 0x2c]                     // 0x004106bf    8a4c242c
                         {disp32} mov         byte ptr [esi + 0x00000290], al               // 0x004106c3    888690020000
                         {disp32} mov         dword ptr [esi + 0x0000023c], ebx             // 0x004106c9    899e3c020000
                         {disp32} mov         dword ptr [esi + 0x0000027c], ebx             // 0x004106cf    899e7c020000
                         {disp32} mov         byte ptr [esi + 0x00000281], bl               // 0x004106d5    889e81020000
                         {disp32} mov         dword ptr [esi + 0x0000028c], edx             // 0x004106db    89968c020000
                         {disp32} mov         byte ptr [esi + 0x00000280], cl               // 0x004106e1    888e80020000
                         mov.s                eax, esi                                      // 0x004106e7    8bc6
                         pop                  esi                                           // 0x004106e9    5e
                         pop                  ebx                                           // 0x004106ea    5b
                         ret                  0x0024                                        // 0x004106eb    c22400
                         nop                                                                // 0x004106ee    90
                         nop                                                                // 0x004106ef    90
_KeyDown__12SetupPictureFii:
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000234]             // 0x004106f0    8b8934020000
                         test                 ecx, ecx                                      // 0x004106f6    85c9
                         {disp8} je           _jmp_addr_0x00410708                          // 0x004106f8    740e
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x004106fa    8b542408
                         mov                  eax, dword ptr [ecx]                          // 0x004106fe    8b01
                         push                 edx                                           // 0x00410700    52
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x00410701    8b542408
                         push                 edx                                           // 0x00410705    52
                         call                 dword ptr [eax]                               // 0x00410706    ff10
_jmp_addr_0x00410708:    ret                  0x0008                                        // 0x00410708    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0041070b    e86911ffff
_Click__12SetupPictureFii:
                         ret                  0x0008                                        // 0x00410710    c20800
                         nop                                                                // 0x00410713    90
                         nop                                                                // 0x00410714    90
                         nop                                                                // 0x00410715    90
                         nop                                                                // 0x00410716    90
                         nop                                                                // 0x00410717    90
                         nop                                                                // 0x00410718    90
                         nop                                                                // 0x00410719    90
                         nop                                                                // 0x0041071a    90
                         nop                                                                // 0x0041071b    90
                         nop                                                                // 0x0041071c    90
                         nop                                                                // 0x0041071d    90
                         nop                                                                // 0x0041071e    90
                         nop                                                                // 0x0041071f    90
??_GSetupPicture@@UAEPAXI@Z:
                         push                 esi                                           // 0x00410720    56
                         mov.s                esi, ecx                                      // 0x00410721    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x00410723    e8988cffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x00410728    f644240801
                         {disp8} je           _jmp_addr_0x00410738                          // 0x0041072d    7409
                         push                 esi                                           // 0x0041072f    56
                         call                 ??3@YAXPAX@Z                                  // 0x00410730    e863e73900
                         add                  esp, 0x04                                     // 0x00410735    83c404
_jmp_addr_0x00410738:    mov.s                eax, esi                                      // 0x00410738    8bc6
                         pop                  esi                                           // 0x0041073a    5e
                         ret                  0x0004                                        // 0x0041073b    c20400
                         nop                                                                // 0x0041073e    90
                         nop                                                                // 0x0041073f    90
_SetFocus__12SetupPictureFb:
                         {disp8} mov          dl, byte ptr [esp + 0x04]                     // 0x00410740    8a542404
                         xor.s                eax, eax                                      // 0x00410744    33c0
                         cmp.s                dl, al                                        // 0x00410746    3ad0
                         {disp32} jne         _jmp_addr_0x004107e8                          // 0x00410748    0f859a000000
                         {disp32} mov         dword ptr [ecx + 0x00000244], 0xffffffff      // 0x0041074e    c78144020000ffffffff
                         {disp32} mov         dword ptr [ecx + 0x0000024c], eax             // 0x00410758    89814c020000
                         {disp32} mov         dword ptr [ecx + 0x00000248], eax             // 0x0041075e    898148020000
                         {disp32} mov         dword ptr [ecx + 0x00000264], eax             // 0x00410764    898164020000
                         {disp32} mov         dword ptr [ecx + 0x00000260], eax             // 0x0041076a    898160020000
                         {disp32} mov         dword ptr [ecx + 0x0000025c], eax             // 0x00410770    89815c020000
                         {disp32} mov         dword ptr [ecx + 0x00000274], eax             // 0x00410776    898174020000
                         {disp32} mov         dword ptr [ecx + 0x00000270], eax             // 0x0041077c    898170020000
                         {disp32} mov         dword ptr [ecx + 0x00000258], eax             // 0x00410782    898158020000
                         {disp32} mov         dword ptr [ecx + 0x0000026c], eax             // 0x00410788    89816c020000
                         {disp32} mov         dword ptr [ecx + 0x00000254], eax             // 0x0041078e    898154020000
                         {disp32} mov         dword ptr [ecx + 0x00000268], eax             // 0x00410794    898168020000
                         {disp32} mov         dword ptr [ecx + 0x00000250], eax             // 0x0041079a    898150020000
                         {disp32} mov         dword ptr [ecx + 0x0000024c], eax             // 0x004107a0    89814c020000
                         {disp32} mov         dword ptr [ecx + 0x00000248], eax             // 0x004107a6    898148020000
                         {disp32} mov         dword ptr [ecx + 0x00000264], eax             // 0x004107ac    898164020000
                         {disp32} mov         dword ptr [ecx + 0x00000260], eax             // 0x004107b2    898160020000
                         {disp32} mov         dword ptr [ecx + 0x0000025c], eax             // 0x004107b8    89815c020000
                         {disp32} mov         dword ptr [ecx + 0x00000274], eax             // 0x004107be    898174020000
                         {disp32} mov         dword ptr [ecx + 0x00000270], eax             // 0x004107c4    898170020000
                         {disp32} mov         dword ptr [ecx + 0x00000258], eax             // 0x004107ca    898158020000
                         {disp32} mov         dword ptr [ecx + 0x0000026c], eax             // 0x004107d0    89816c020000
                         {disp32} mov         dword ptr [ecx + 0x00000254], eax             // 0x004107d6    898154020000
                         {disp32} mov         dword ptr [ecx + 0x00000268], eax             // 0x004107dc    898168020000
                         {disp32} mov         dword ptr [ecx + 0x00000250], eax             // 0x004107e2    898150020000
_jmp_addr_0x004107e8:    ret                  0x0004                                        // 0x004107e8    c20400
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004107eb    e88910ffff
_MouseDown__17SetupColourPickerFiib:
                         {disp32} mov         dword ptr [ecx + 0x0000023c], 0x00000001      // 0x004107f0    c7813c02000001000000
                         ret                  0x000c                                        // 0x004107fa    c20c00
                         nop                                                                // 0x004107fd    90
                         nop                                                                // 0x004107fe    90
                         nop                                                                // 0x004107ff    90
_MouseUp__17SetupColourPickerFiib:
                         {disp32} mov         dword ptr [ecx + 0x0000023c], 0x00000000      // 0x00410800    c7813c02000000000000
                         ret                  0x000c                                        // 0x0041080a    c20c00
                         nop                                                                // 0x0041080d    90
                         nop                                                                // 0x0041080e    90
                         nop                                                                // 0x0041080f    90
_Drag__17SetupColourPickerFii:
                         {disp8} mov          eax, dword ptr [ecx + 0x0c]                   // 0x00410810    8b410c
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x00410813    8b542408
                         sub.s                edx, eax                                      // 0x00410817    2bd0
                         {disp8} mov          dword ptr [esp + 0x08], edx                   // 0x00410819    89542408
                         {disp8} mov          edx, dword ptr [ecx + 0x14]                   // 0x0041081d    8b5114
                         {disp8} fild         dword ptr [esp + 0x08]                        // 0x00410820    db442408
                         sub.s                edx, eax                                      // 0x00410824    2bd0
                         {disp8} mov          dword ptr [esp + 0x08], edx                   // 0x00410826    89542408
                         {disp8} fidiv        dword ptr [esp + 0x08]                        // 0x0041082a    da742408
                         {disp32} fcom        dword ptr [_rdata_float0p0]                   // 0x0041082e    d81598a38a00
                         {disp32} fst         dword ptr [ecx + 0x00000250]                  // 0x00410834    d99150020000
                         fnstsw               ax                                            // 0x0041083a    dfe0
                         test                 ah, 0x41                                      // 0x0041083c    f6c441
                         {disp8} jne          _jmp_addr_0x00410866                          // 0x0041083f    7525
                         {disp32} fcom        dword ptr [_rdata_float1p0]                   // 0x00410841    d81590a38a00
                         fnstsw               ax                                            // 0x00410847    dfe0
                         test                 ah, 0x01                                      // 0x00410849    f6c401
                         {disp8} je           _jmp_addr_0x00410857                          // 0x0041084c    7409
                         {disp32} fstp        dword ptr [ecx + 0x00000250]                  // 0x0041084e    d99950020000
                         ret                  0x0008                                        // 0x00410854    c20800
_jmp_addr_0x00410857:    fstp                 st(0)                                         // 0x00410857    ddd8
                         {disp32} mov         dword ptr [ecx + 0x00000250], 0x3f800000      // 0x00410859    c781500200000000803f
                         ret                  0x0008                                        // 0x00410863    c20800
_jmp_addr_0x00410866:    fstp                 st(0)                                         // 0x00410866    ddd8
                         {disp32} mov         dword ptr [ecx + 0x00000250], 0x00000000      // 0x00410868    c7815002000000000000
                         ret                  0x0008                                        // 0x00410872    c20800
                         nop                                                                // 0x00410875    90
                         nop                                                                // 0x00410876    90
                         nop                                                                // 0x00410877    90
                         nop                                                                // 0x00410878    90
                         nop                                                                // 0x00410879    90
                         nop                                                                // 0x0041087a    90
                         nop                                                                // 0x0041087b    90
                         nop                                                                // 0x0041087c    90
                         nop                                                                // 0x0041087d    90
                         nop                                                                // 0x0041087e    90
                         nop                                                                // 0x0041087f    90
_Draw__17SetupColourPickerFbb:
                         sub                  esp, 0x14                                     // 0x00410880    83ec14
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x00410883    a1c052e800
                         push                 ebx                                           // 0x00410888    53
                         push                 ebp                                           // 0x00410889    55
                         push                 esi                                           // 0x0041088a    56
                         mov.s                esi, ecx                                      // 0x0041088b    8bf1
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0041088d    8b0dc452e800
                         {disp8} mov          dword ptr [esp + 0x0c], eax                   // 0x00410893    8944240c
                         {disp8} mov          dword ptr [esp + 0x18], eax                   // 0x00410897    89442418
                         push                 edi                                           // 0x0041089b    57
                         {disp8} lea          eax, dword ptr [esp + 0x14]                   // 0x0041089c    8d442414
                         {disp8} mov          dword ptr [esp + 0x20], ecx                   // 0x004108a0    894c2420
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x004108a4    894c2414
                         push                 eax                                           // 0x004108a8    50
                         {disp8} lea          ecx, dword ptr [esp + 0x14]                   // 0x004108a9    8d4c2414
                         push                 ecx                                           // 0x004108ad    51
                         call                 ?unadjust@SetupThing@@SAMAAH0@Z               // 0x004108ae    e87d130000
                         fstp                 st(0)                                         // 0x004108b3    ddd8
                         {disp8} mov          al, byte ptr [esp + 0x30]                     // 0x004108b5    8a442430
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x004108b9    8b4e10
                         xor.s                edx, edx                                      // 0x004108bc    33d2
                         test                 al, al                                        // 0x004108be    84c0
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x004108c0    8b4614
                         setne                dl                                            // 0x004108c3    0f95c2
                         push                 -0x1                                          // 0x004108c6    6aff
                         push                 -0x1                                          // 0x004108c8    6aff
                         push                 0x10                                          // 0x004108ca    6a10
                         add                  eax, 0x02                                     // 0x004108cc    83c002
                         sub                  ecx, 0x0e                                     // 0x004108cf    83e90e
                         inc                  edx                                           // 0x004108d2    42
                         push                 edx                                           // 0x004108d3    52
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x004108d4    8b560c
                         push                 eax                                           // 0x004108d7    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x004108d8    8b4608
                         push                 ecx                                           // 0x004108db    51
                         sub                  edx, 0x02                                     // 0x004108dc    83ea02
                         push                 edx                                           // 0x004108df    52
                         add                  eax, 0x0e                                     // 0x004108e0    83c00e
                         push                 eax                                           // 0x004108e3    50
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x004108e4    e837330000
                         {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x004108e9    d98650020000
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x004108ef    d81d98a38a00
                         add                  esp, 0x28                                     // 0x004108f5    83c428
                         fnstsw               ax                                            // 0x004108f8    dfe0
                         test                 ah, 0x41                                      // 0x004108fa    f6c441
                         {disp8} jne          _jmp_addr_0x00410922                          // 0x004108fd    7523
                         {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x004108ff    d98650020000
                         {disp32} fcomp       dword ptr [_rdata_float1p0]                   // 0x00410905    d81d90a38a00
                         fnstsw               ax                                            // 0x0041090b    dfe0
                         test                 ah, 0x01                                      // 0x0041090d    f6c401
                         {disp8} je           _jmp_addr_0x0041091a                          // 0x00410910    7408
                         {disp32} fld         dword ptr [esi + 0x00000250]                  // 0x00410912    d98650020000
                         {disp8} jmp          _jmp_addr_0x00410928                          // 0x00410918    eb0e
_jmp_addr_0x0041091a:    {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x0041091a    d90590a38a00
                         {disp8} jmp          _jmp_addr_0x00410928                          // 0x00410920    eb06
_jmp_addr_0x00410922:    {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x00410922    d90598a38a00
_jmp_addr_0x00410928:    {disp8} mov          ebp, dword ptr [esi + 0x14]                   // 0x00410928    8b6e14
                         {disp32} fst         dword ptr [esi + 0x00000250]                  // 0x0041092b    d99650020000
                         {disp8} mov          ebx, dword ptr [esi + 0x0c]                   // 0x00410931    8b5e0c
                         mov.s                ecx, ebp                                      // 0x00410934    8bcd
                         sub.s                ecx, ebx                                      // 0x00410936    2bcb
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x00410938    894c2418
                         {disp8} fild         dword ptr [esp + 0x18]                        // 0x0041093c    db442418
                         {disp8} mov          dword ptr [esp + 0x1c], ebx                   // 0x00410940    895c241c
                         fmul                 st, st(1)                                     // 0x00410944    d8c9
                         {disp8} fiadd        dword ptr [esp + 0x1c]                        // 0x00410946    da44241c
                         call                 _jmp_addr_0x007a1400                          // 0x0041094a    e8b10a3900
                         fstp                 st(0)                                         // 0x0041094f    ddd8
                         mov.s                edi, eax                                      // 0x00410951    8bf8
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]             // 0x00410953    8b864c020000
                         test                 eax, eax                                      // 0x00410959    85c0
                         {disp8} mov          dword ptr [esp + 0x1c], edi                   // 0x0041095b    897c241c
                         {disp32} je          _jmp_addr_0x00410a11                          // 0x0041095f    0f84ac000000
                         {disp32} mov         edi, dword ptr [esi + 0x00000254]             // 0x00410965    8bbe54020000
                         push                 0x1                                           // 0x0041096b    6a01
                         push                 0x1                                           // 0x0041096d    6a01
                         push                 edi                                           // 0x0041096f    57
                         lea                  eax, dword ptr [ebx + ebp * 0x1]              // 0x00410970    8d042b
                         cdq                                                                // 0x00410973    99
                         sub.s                eax, edx                                      // 0x00410974    2bc2
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x00410976    8b5610
                         push                 edi                                           // 0x00410979    57
                         push                 0x0                                           // 0x0041097a    6a00
                         mov.s                ebp, eax                                      // 0x0041097c    8be8
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0041097e    8b4608
                         push                 0x0                                           // 0x00410981    6a00
                         sar                  ebp, 1                                        // 0x00410983    d1fd
                         push                 ebp                                           // 0x00410985    55
                         sub                  edx, 0x10                                     // 0x00410986    83ea10
                         push                 edx                                           // 0x00410989    52
                         add                  eax, 0x10                                     // 0x0041098a    83c010
                         push                 ebx                                           // 0x0041098d    53
                         push                 eax                                           // 0x0041098e    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0041098f    e82c290000
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x00410994    8b4e14
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x00410997    8b5610
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x0041099a    8b4608
                         push                 0x1                                           // 0x0041099d    6a01
                         push                 0x1                                           // 0x0041099f    6a01
                         push                 -0x1                                          // 0x004109a1    6aff
                         push                 -0x1                                          // 0x004109a3    6aff
                         push                 edi                                           // 0x004109a5    57
                         push                 edi                                           // 0x004109a6    57
                         push                 ecx                                           // 0x004109a7    51
                         sub                  edx, 0x10                                     // 0x004109a8    83ea10
                         push                 edx                                           // 0x004109ab    52
                         add                  eax, 0x10                                     // 0x004109ac    83c010
                         push                 ebp                                           // 0x004109af    55
                         push                 eax                                           // 0x004109b0    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x004109b1    e80a290000
                         {disp8} mov          al, byte ptr [esp + 0x78]                     // 0x004109b6    8a442478
                         add                  esp, 0x50                                     // 0x004109ba    83c450
                         test                 al, al                                        // 0x004109bd    84c0
                         {disp8} je           _jmp_addr_0x004109d4                          // 0x004109bf    7413
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x004109c1    8b4e10
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x004109c4    8b442410
                         sub                  ecx, 0x10                                     // 0x004109c8    83e910
                         cmp.s                eax, ecx                                      // 0x004109cb    3bc1
                         {disp8} mov          byte ptr [esp + 0x28], 0x01                   // 0x004109cd    c644242801
                         {disp8} jg           _jmp_addr_0x004109d9                          // 0x004109d2    7f05
_jmp_addr_0x004109d4:    {disp8} mov          byte ptr [esp + 0x28], 0x00                   // 0x004109d4    c644242800
_jmp_addr_0x004109d9:    {disp8} mov          edx, dword ptr [esp + 0x28]                   // 0x004109d9    8b542428
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x004109dd    8b44241c
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x004109e1    8b4e10
                         push                 0x0000a000                                    // 0x004109e4    6800a00000
                         push                 0xffff6000                                    // 0x004109e9    680060ffff
                         push                 0x0                                           // 0x004109ee    6a00
                         push                 0x2                                           // 0x004109f0    6a02
                         push                 0x10                                          // 0x004109f2    6a10
                         push                 edx                                           // 0x004109f4    52
                         push                 0x1                                           // 0x004109f5    6a01
                         add                  eax, -0x08                                    // 0x004109f7    83c0f8
                         push                 eax                                           // 0x004109fa    50
                         sub                  ecx, 0x10                                     // 0x004109fb    83e910
                         push                 ecx                                           // 0x004109fe    51
                         call                 ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z // 0x004109ff    e84c170000
                         add                  esp, 0x24                                     // 0x00410a04    83c424
                         pop                  edi                                           // 0x00410a07    5f
                         pop                  esi                                           // 0x00410a08    5e
                         pop                  ebp                                           // 0x00410a09    5d
                         pop                  ebx                                           // 0x00410a0a    5b
                         add                  esp, 0x14                                     // 0x00410a0b    83c414
                         ret                  0x0008                                        // 0x00410a0e    c20800
_jmp_addr_0x00410a11:    {disp8} mov          al, byte ptr [esp + 0x28]                     // 0x00410a11    8a442428
                         test                 al, al                                        // 0x00410a15    84c0
                         {disp8} je           _jmp_addr_0x00410a2c                          // 0x00410a17    7413
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x00410a19    8b5608
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x00410a1c    8b442410
                         add                  edx, 0x10                                     // 0x00410a20    83c210
                         cmp.s                eax, edx                                      // 0x00410a23    3bc2
                         {disp8} mov          byte ptr [esp + 0x28], 0x01                   // 0x00410a25    c644242801
                         {disp8} jl           _jmp_addr_0x00410a31                          // 0x00410a2a    7c05
_jmp_addr_0x00410a2c:    {disp8} mov          byte ptr [esp + 0x28], 0x00                   // 0x00410a2c    c644242800
_jmp_addr_0x00410a31:    {disp32} mov         eax, dword ptr [esi + 0x00000248]             // 0x00410a31    8b8648020000
                         test                 eax, eax                                      // 0x00410a37    85c0
                         {disp8} je           _jmp_addr_0x00410a88                          // 0x00410a39    744d
                         push                 0x42c80000                                    // 0x00410a3b    680000c842
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x00410a40    8b5610
                         push                 0x0                                           // 0x00410a43    6a00
                         push                 0x0000a000                                    // 0x00410a45    6800a00000
                         push                 0xffff6000                                    // 0x00410a4a    680060ffff
                         push                 0x1                                           // 0x00410a4f    6a01
                         {disp8} lea          ecx, dword ptr [esp + 0x30]                   // 0x00410a51    8d4c2430
                         push                 ecx                                           // 0x00410a55    51
                         push                 eax                                           // 0x00410a56    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x00410a57    8b4608
                         push                 0x3f7f8000                                    // 0x00410a5a    6800807f3f
                         push                 0x3dfc0000                                    // 0x00410a5f    680000fc3d
                         push                 0x3e020000                                    // 0x00410a64    680000023e
                         push                 0x3b000000                                    // 0x00410a69    680000003b
                         push                 ebp                                           // 0x00410a6e    55
                         sub                  edx, 0x10                                     // 0x00410a6f    83ea10
                         push                 edx                                           // 0x00410a72    52
                         add                  eax, 0x10                                     // 0x00410a73    83c010
                         push                 ebx                                           // 0x00410a76    53
                         push                 eax                                           // 0x00410a77    50
                         {disp8} mov          dword ptr [esp + 0x58], 0xffffffff            // 0x00410a78    c7442458ffffffff
                         call                 ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00410a80    e8fb1e0000
                         add                  esp, 0x3c                                     // 0x00410a85    83c43c
_jmp_addr_0x00410a88:    {disp8} mov          ecx, dword ptr [esp + 0x28]                   // 0x00410a88    8b4c2428
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x00410a8c    8b5608
                         push                 0x0000a000                                    // 0x00410a8f    6800a00000
                         push                 0xffff6000                                    // 0x00410a94    680060ffff
                         push                 0x0                                           // 0x00410a99    6a00
                         push                 0x3                                           // 0x00410a9b    6a03
                         push                 0x10                                          // 0x00410a9d    6a10
                         push                 ecx                                           // 0x00410a9f    51
                         push                 0x1                                           // 0x00410aa0    6a01
                         add                  edi, -0x08                                    // 0x00410aa2    83c7f8
                         push                 edi                                           // 0x00410aa5    57
                         push                 edx                                           // 0x00410aa6    52
                         call                 ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z // 0x00410aa7    e8a4160000
                         add                  esp, 0x24                                     // 0x00410aac    83c424
                         pop                  edi                                           // 0x00410aaf    5f
                         pop                  esi                                           // 0x00410ab0    5e
                         pop                  ebp                                           // 0x00410ab1    5d
                         pop                  ebx                                           // 0x00410ab2    5b
                         add                  esp, 0x14                                     // 0x00410ab3    83c414
                         ret                  0x0008                                        // 0x00410ab6    c20800
                         nop                                                                // 0x00410ab9    90
                         nop                                                                // 0x00410aba    90
                         nop                                                                // 0x00410abb    90
                         nop                                                                // 0x00410abc    90
                         nop                                                                // 0x00410abd    90
                         nop                                                                // 0x00410abe    90
                         nop                                                                // 0x00410abf    90
@__ct__17SetupColourPickerFiiiiiiP12LH3DMaterial@33:    {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x00410ac0    8b442414
                         {disp8} mov          edx, dword ptr [esp + 0x0c]                   // 0x00410ac4    8b54240c
                         push                 esi                                           // 0x00410ac8    56
                         push                 0x0                                           // 0x00410ac9    6a00
                         push                 0x00c4cd30                                    // 0x00410acb    6830cdc400
                         push                 eax                                           // 0x00410ad0    50
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x00410ad1    8b442418
                         mov.s                esi, ecx                                      // 0x00410ad5    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x20]                   // 0x00410ad7    8b4c2420
                         push                 ecx                                           // 0x00410adb    51
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x00410adc    8b4c2418
                         push                 edx                                           // 0x00410ae0    52
                         push                 eax                                           // 0x00410ae1    50
                         push                 ecx                                           // 0x00410ae2    51
                         mov.s                ecx, esi                                      // 0x00410ae3    8bce
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x00410ae5    e8c68dffff
                         {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x00410aea    8b442420
                         {disp8} mov          edx, dword ptr [esp + 0x1c]                   // 0x00410aee    8b54241c
                         {disp32} mov         dword ptr [esi + 0x00000248], eax             // 0x00410af2    898648020000
                         mov                  dword ptr [esi], 0x008ab550                   // 0x00410af8    c70650b58a00
                         {disp32} mov         dword ptr [esi + 0x0000024c], edx             // 0x00410afe    89964c020000
                         {disp32} mov         dword ptr [esi + 0x00000244], 0xff000000      // 0x00410b04    c78644020000000000ff
                         {disp32} mov         dword ptr [esi + 0x00000254], 0x00808080      // 0x00410b0e    c7865402000080808000
                         {disp32} mov         dword ptr [esi + 0x00000250], 0x3f000000      // 0x00410b18    c786500200000000003f
                         mov.s                eax, esi                                      // 0x00410b22    8bc6
                         pop                  esi                                           // 0x00410b24    5e
                         ret                  0x001c                                        // 0x00410b25    c21c00
                         nop                                                                // 0x00410b28    90
                         nop                                                                // 0x00410b29    90
                         nop                                                                // 0x00410b2a    90
                         nop                                                                // 0x00410b2b    90
                         nop                                                                // 0x00410b2c    90
                         nop                                                                // 0x00410b2d    90
                         nop                                                                // 0x00410b2e    90
                         nop                                                                // 0x00410b2f    90
_KeyDown__17SetupColourPickerFii:
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000234]             // 0x00410b30    8b8934020000
                         test                 ecx, ecx                                      // 0x00410b36    85c9
                         {disp8} je           _jmp_addr_0x00410b48                          // 0x00410b38    740e
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x00410b3a    8b542408
                         mov                  eax, dword ptr [ecx]                          // 0x00410b3e    8b01
                         push                 edx                                           // 0x00410b40    52
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x00410b41    8b542408
                         push                 edx                                           // 0x00410b45    52
                         call                 dword ptr [eax]                               // 0x00410b46    ff10
_jmp_addr_0x00410b48:    ret                  0x0008                                        // 0x00410b48    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00410b4b    e8290dffff
_Click__17SetupColourPickerFii:
                         ret                  0x0008                                        // 0x00410b50    c20800
                         nop                                                                // 0x00410b53    90
                         nop                                                                // 0x00410b54    90
                         nop                                                                // 0x00410b55    90
                         nop                                                                // 0x00410b56    90
                         nop                                                                // 0x00410b57    90
                         nop                                                                // 0x00410b58    90
                         nop                                                                // 0x00410b59    90
                         nop                                                                // 0x00410b5a    90
                         nop                                                                // 0x00410b5b    90
                         nop                                                                // 0x00410b5c    90
                         nop                                                                // 0x00410b5d    90
                         nop                                                                // 0x00410b5e    90
                         nop                                                                // 0x00410b5f    90
??_GSetupColourPicker@@UAEPAXI@Z:
                         push                 esi                                           // 0x00410b60    56
                         mov.s                esi, ecx                                      // 0x00410b61    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x00410b63    e85888ffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x00410b68    f644240801
                         {disp8} je           _jmp_addr_0x00410b78                          // 0x00410b6d    7409
                         push                 esi                                           // 0x00410b6f    56
                         call                 ??3@YAXPAX@Z                                  // 0x00410b70    e823e33900
                         add                  esp, 0x04                                     // 0x00410b75    83c404
_jmp_addr_0x00410b78:    mov.s                eax, esi                                      // 0x00410b78    8bc6
                         pop                  esi                                           // 0x00410b7a    5e
                         ret                  0x0004                                        // 0x00410b7b    c20400
                         nop                                                                // 0x00410b7e    90
                         nop                                                                // 0x00410b7f    90
_Draw__13SetupCheckBoxFbb:
                         push                 ebx                                           // 0x00410b80    53
                         push                 ebp                                           // 0x00410b81    55
                         push                 esi                                           // 0x00410b82    56
                         mov.s                esi, ecx                                      // 0x00410b83    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x00410b85    8b4608
                         {disp32} mov         dword ptr [data_bytes + 0x286cb8], eax        // 0x00410b88    a3b8ccc400
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                   // 0x00410b8d    8b4e0c
                         {disp32} mov         dword ptr [data_bytes + 0x286cbc], ecx        // 0x00410b90    890dbcccc400
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x00410b96    8b5610
                         {disp8} mov          ebx, dword ptr [esp + 0x10]                   // 0x00410b99    8b5c2410
                         {disp32} mov         dword ptr [data_bytes + 0x286cc0], edx        // 0x00410b9d    8915c0ccc400
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x00410ba3    8b4614
                         {disp32} mov         dword ptr [data_bytes + 0x286cc4], eax        // 0x00410ba6    a3c4ccc400
                         {disp32} mov         ebp, dword ptr [esi + 0x00000248]             // 0x00410bab    8bae48020000
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x00410bb1    8b4608
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x00410bb4    8b5610
                         push                 edi                                           // 0x00410bb7    57
                         {disp32} mov         edi, dword ptr [esi + 0x0000023c]             // 0x00410bb8    8bbe3c020000
                         xor.s                ecx, ecx                                      // 0x00410bbe    33c9
                         push                 0x0000a000                                    // 0x00410bc0    6800a00000
                         test                 ebp, ebp                                      // 0x00410bc5    85ed
                         setne                cl                                            // 0x00410bc7    0f95c1
                         push                 0xffff6000                                    // 0x00410bca    680060ffff
                         push                 0x1                                           // 0x00410bcf    6a01
                         sub.s                edx, eax                                      // 0x00410bd1    2bd0
                         test                 edi, edi                                      // 0x00410bd3    85ff
                         push                 ecx                                           // 0x00410bd5    51
                         push                 edx                                           // 0x00410bd6    52
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                   // 0x00410bd7    8b560c
                         setne                cl                                            // 0x00410bda    0f95c1
                         push                 ebx                                           // 0x00410bdd    53
                         push                 ecx                                           // 0x00410bde    51
                         push                 edx                                           // 0x00410bdf    52
                         push                 eax                                           // 0x00410be0    50
                         call                 ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z // 0x00410be1    e86a150000
                         {disp32} mov         eax, dword ptr [esi + 0x00000244]             // 0x00410be6    8b8644020000
                         add                  esp, 0x24                                     // 0x00410bec    83c424
                         cmp                  eax, 0x02                                     // 0x00410bef    83f802
                         {disp32} jne         _jmp_addr_0x00410cad                          // 0x00410bf2    0f85b5000000
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x00410bf8    8b4620
                         test                 eax, eax                                      // 0x00410bfb    85c0
                         {disp8} jne          _jmp_addr_0x00410c16                          // 0x00410bfd    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x00410bff    8b8634020000
                         test                 eax, eax                                      // 0x00410c05    85c0
                         {disp8} je           _jmp_addr_0x00410c11                          // 0x00410c07    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x00410c09    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x00410c16                          // 0x00410c0f    eb05
_jmp_addr_0x00410c11:    mov                  eax, 0x0000000a                               // 0x00410c11    b80a000000
_jmp_addr_0x00410c16:    {disp8} mov          ecx, dword ptr [esi + 0x08]                   // 0x00410c16    8b4e08
                         push                 0x0                                           // 0x00410c19    6a00
                         push                 0x00c4ccdc                                    // 0x00410c1b    68dcccc400
                         push                 eax                                           // 0x00410c20    50
                         {disp8} mov          eax, dword ptr [esi + 0x14]                   // 0x00410c21    8b4614
                         add                  eax, 0x04                                     // 0x00410c24    83c004
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x00410c27    8d7e24
                         push                 edi                                           // 0x00410c2a    57
                         push                 0x1                                           // 0x00410c2b    6a01
                         push                 0x000003e8                                    // 0x00410c2d    68e8030000
                         push                 eax                                           // 0x00410c32    50
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x00410c33    8b4610
                         add.s                eax, ecx                                      // 0x00410c36    03c1
                         cdq                                                                // 0x00410c38    99
                         sub.s                eax, edx                                      // 0x00410c39    2bc2
                         sar                  eax, 1                                        // 0x00410c3b    d1f8
                         add                  eax, 0x02                                     // 0x00410c3d    83c002
                         push                 eax                                           // 0x00410c40    50
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00410c41    e86a0d0000
                         add                  esp, 0x20                                     // 0x00410c46    83c420
                         fstp                 st(0)                                         // 0x00410c49    ddd8
                         test                 bl, bl                                        // 0x00410c4b    84db
                         {disp8} jne          _jmp_addr_0x00410c64                          // 0x00410c4d    7515
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x00410c4f    8a442418
                         test                 al, al                                        // 0x00410c53    84c0
                         {disp8} je           _jmp_addr_0x00410c5d                          // 0x00410c55    7406
                         cmp                  word ptr [edi], 0x00                          // 0x00410c57    66833f00
                         {disp8} je           _jmp_addr_0x00410c64                          // 0x00410c5b    7407
_jmp_addr_0x00410c5d:    mov                  ecx, 0x00c4ccf8                               // 0x00410c5d    b9f8ccc400
                         {disp8} jmp          _jmp_addr_0x00410c69                          // 0x00410c62    eb05
_jmp_addr_0x00410c64:    mov                  ecx, 0x00c4cce4                               // 0x00410c64    b9e4ccc400
_jmp_addr_0x00410c69:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x00410c69    8b4620
                         test                 eax, eax                                      // 0x00410c6c    85c0
                         {disp8} jne          _jmp_addr_0x00410c87                          // 0x00410c6e    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x00410c70    8b8634020000
                         test                 eax, eax                                      // 0x00410c76    85c0
                         {disp8} je           _jmp_addr_0x00410c82                          // 0x00410c78    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x00410c7a    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x00410c87                          // 0x00410c80    eb05
_jmp_addr_0x00410c82:    mov                  eax, 0x0000000a                               // 0x00410c82    b80a000000
_jmp_addr_0x00410c87:    {disp8} mov          ebx, dword ptr [esi + 0x08]                   // 0x00410c87    8b5e08
                         push                 0x0                                           // 0x00410c8a    6a00
                         push                 ecx                                           // 0x00410c8c    51
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x00410c8d    8b4e14
                         push                 eax                                           // 0x00410c90    50
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x00410c91    8b4610
                         push                 edi                                           // 0x00410c94    57
                         add.s                eax, ebx                                      // 0x00410c95    03c3
                         push                 0x1                                           // 0x00410c97    6a01
                         cdq                                                                // 0x00410c99    99
                         push                 0x000003e8                                    // 0x00410c9a    68e8030000
                         add                  ecx, 0x2                                      // 0x00410c9f    83c102
                         sub.s                eax, edx                                      // 0x00410ca2    2bc2
                         push                 ecx                                           // 0x00410ca4    51
                         sar                  eax, 1                                        // 0x00410ca5    d1f8
                         push                 eax                                           // 0x00410ca7    50
                         {disp32} jmp         _jmp_addr_0x00410ed7                          // 0x00410ca8    e92a020000
_jmp_addr_0x00410cad:    test                 eax, eax                                      // 0x00410cad    85c0
                         {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x00410caf    8b4620
                         {disp32} je          _jmp_addr_0x00410dca                          // 0x00410cb2    0f8412010000
                         test                 eax, eax                                      // 0x00410cb8    85c0
                         {disp8} je           _jmp_addr_0x00410cc0                          // 0x00410cba    7404
                         mov.s                ebp, eax                                      // 0x00410cbc    8be8
                         {disp8} jmp          _jmp_addr_0x00410cd7                          // 0x00410cbe    eb17
_jmp_addr_0x00410cc0:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x00410cc0    8b8e34020000
                         test                 ecx, ecx                                      // 0x00410cc6    85c9
                         {disp8} je           _jmp_addr_0x00410cd2                          // 0x00410cc8    7408
                         {disp32} mov         ebp, dword ptr [ecx + 0x000000ac]             // 0x00410cca    8ba9ac000000
                         {disp8} jmp          _jmp_addr_0x00410cd7                          // 0x00410cd0    eb05
_jmp_addr_0x00410cd2:    mov                  ebp, 0x0000000a                               // 0x00410cd2    bd0a000000
_jmp_addr_0x00410cd7:    test                 eax, eax                                      // 0x00410cd7    85c0
                         {disp8} je           _jmp_addr_0x00410ce4                          // 0x00410cd9    7409
                         cdq                                                                // 0x00410cdb    99
                         sub.s                eax, edx                                      // 0x00410cdc    2bc2
                         mov.s                ecx, eax                                      // 0x00410cde    8bc8
                         sar                  ecx, 1                                        // 0x00410ce0    d1f9
                         {disp8} jmp          _jmp_addr_0x00410d02                          // 0x00410ce2    eb1e
_jmp_addr_0x00410ce4:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x00410ce4    8b8634020000
                         test                 eax, eax                                      // 0x00410cea    85c0
                         {disp8} je           _jmp_addr_0x00410cfd                          // 0x00410cec    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x00410cee    8b80ac000000
                         cdq                                                                // 0x00410cf4    99
                         sub.s                eax, edx                                      // 0x00410cf5    2bc2
                         mov.s                ecx, eax                                      // 0x00410cf7    8bc8
                         sar                  ecx, 1                                        // 0x00410cf9    d1f9
                         {disp8} jmp          _jmp_addr_0x00410d02                          // 0x00410cfb    eb05
_jmp_addr_0x00410cfd:    mov                  ecx, 0x00000005                               // 0x00410cfd    b905000000
_jmp_addr_0x00410d02:    {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x00410d02    8b5614
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x00410d05    8b460c
                         add.s                eax, edx                                      // 0x00410d08    03c2
                         push                 0x0                                           // 0x00410d0a    6a00
                         cdq                                                                // 0x00410d0c    99
                         push                 0x00c4ccdc                                    // 0x00410d0d    68dcccc400
                         sub.s                eax, edx                                      // 0x00410d12    2bc2
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x00410d14    8b5608
                         push                 ebp                                           // 0x00410d17    55
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x00410d18    8d7e24
                         push                 edi                                           // 0x00410d1b    57
                         sar                  eax, 1                                        // 0x00410d1c    d1f8
                         push                 0x2                                           // 0x00410d1e    6a02
                         sub.s                eax, ecx                                      // 0x00410d20    2bc1
                         push                 0x000003e8                                    // 0x00410d22    68e8030000
                         add                  eax, 0x02                                     // 0x00410d27    83c002
                         push                 eax                                           // 0x00410d2a    50
                         sub                  edx, 0x02                                     // 0x00410d2b    83ea02
                         push                 edx                                           // 0x00410d2e    52
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00410d2f    e87c0c0000
                         add                  esp, 0x20                                     // 0x00410d34    83c420
                         fstp                 st(0)                                         // 0x00410d37    ddd8
                         test                 bl, bl                                        // 0x00410d39    84db
                         {disp8} jne          _jmp_addr_0x00410d52                          // 0x00410d3b    7515
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x00410d3d    8a442418
                         test                 al, al                                        // 0x00410d41    84c0
                         {disp8} je           _jmp_addr_0x00410d4b                          // 0x00410d43    7406
                         cmp                  word ptr [edi], 0x00                          // 0x00410d45    66833f00
                         {disp8} je           _jmp_addr_0x00410d52                          // 0x00410d49    7407
_jmp_addr_0x00410d4b:    mov                  ebp, 0x00c4ccf8                               // 0x00410d4b    bdf8ccc400
                         {disp8} jmp          _jmp_addr_0x00410d57                          // 0x00410d50    eb05
_jmp_addr_0x00410d52:    mov                  ebp, 0x00c4cce4                               // 0x00410d52    bde4ccc400
_jmp_addr_0x00410d57:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x00410d57    8b4620
                         test                 eax, eax                                      // 0x00410d5a    85c0
                         {disp8} je           _jmp_addr_0x00410d62                          // 0x00410d5c    7404
                         mov.s                ebx, eax                                      // 0x00410d5e    8bd8
                         {disp8} jmp          _jmp_addr_0x00410d79                          // 0x00410d60    eb17
_jmp_addr_0x00410d62:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x00410d62    8b8e34020000
                         test                 ecx, ecx                                      // 0x00410d68    85c9
                         {disp8} je           _jmp_addr_0x00410d74                          // 0x00410d6a    7408
                         {disp32} mov         ebx, dword ptr [ecx + 0x000000ac]             // 0x00410d6c    8b99ac000000
                         {disp8} jmp          _jmp_addr_0x00410d79                          // 0x00410d72    eb05
_jmp_addr_0x00410d74:    mov                  ebx, 0x0000000a                               // 0x00410d74    bb0a000000
_jmp_addr_0x00410d79:    test                 eax, eax                                      // 0x00410d79    85c0
                         {disp8} je           _jmp_addr_0x00410d86                          // 0x00410d7b    7409
                         cdq                                                                // 0x00410d7d    99
                         sub.s                eax, edx                                      // 0x00410d7e    2bc2
                         mov.s                ecx, eax                                      // 0x00410d80    8bc8
                         sar                  ecx, 1                                        // 0x00410d82    d1f9
                         {disp8} jmp          _jmp_addr_0x00410da4                          // 0x00410d84    eb1e
_jmp_addr_0x00410d86:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x00410d86    8b8634020000
                         test                 eax, eax                                      // 0x00410d8c    85c0
                         {disp8} je           _jmp_addr_0x00410d9f                          // 0x00410d8e    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x00410d90    8b80ac000000
                         cdq                                                                // 0x00410d96    99
                         sub.s                eax, edx                                      // 0x00410d97    2bc2
                         mov.s                ecx, eax                                      // 0x00410d99    8bc8
                         sar                  ecx, 1                                        // 0x00410d9b    d1f9
                         {disp8} jmp          _jmp_addr_0x00410da4                          // 0x00410d9d    eb05
_jmp_addr_0x00410d9f:    mov                  ecx, 0x00000005                               // 0x00410d9f    b905000000
_jmp_addr_0x00410da4:    {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x00410da4    8b460c
                         push                 0x0                                           // 0x00410da7    6a00
                         push                 ebp                                           // 0x00410da9    55
                         push                 ebx                                           // 0x00410daa    53
                         add                  eax, dword ptr [esi + 0x14]                   // 0x00410dab    034614
                         cdq                                                                // 0x00410dae    99
                         push                 edi                                           // 0x00410daf    57
                         sub.s                eax, edx                                      // 0x00410db0    2bc2
                         push                 0x2                                           // 0x00410db2    6a02
                         sar                  eax, 1                                        // 0x00410db4    d1f8
                         sub.s                eax, ecx                                      // 0x00410db6    2bc1
                         push                 0x000003e8                                    // 0x00410db8    68e8030000
                         push                 eax                                           // 0x00410dbd    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x00410dbe    8b4608
                         sub                  eax, 0x04                                     // 0x00410dc1    83e804
                         push                 eax                                           // 0x00410dc4    50
                         {disp32} jmp         _jmp_addr_0x00410ed7                          // 0x00410dc5    e90d010000
_jmp_addr_0x00410dca:    test                 eax, eax                                      // 0x00410dca    85c0
                         {disp8} je           _jmp_addr_0x00410dd2                          // 0x00410dcc    7404
                         mov.s                ebp, eax                                      // 0x00410dce    8be8
                         {disp8} jmp          _jmp_addr_0x00410de9                          // 0x00410dd0    eb17
_jmp_addr_0x00410dd2:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x00410dd2    8b8e34020000
                         test                 ecx, ecx                                      // 0x00410dd8    85c9
                         {disp8} je           _jmp_addr_0x00410de4                          // 0x00410dda    7408
                         {disp32} mov         ebp, dword ptr [ecx + 0x000000ac]             // 0x00410ddc    8ba9ac000000
                         {disp8} jmp          _jmp_addr_0x00410de9                          // 0x00410de2    eb05
_jmp_addr_0x00410de4:    mov                  ebp, 0x0000000a                               // 0x00410de4    bd0a000000
_jmp_addr_0x00410de9:    test                 eax, eax                                      // 0x00410de9    85c0
                         {disp8} je           _jmp_addr_0x00410df6                          // 0x00410deb    7409
                         cdq                                                                // 0x00410ded    99
                         sub.s                eax, edx                                      // 0x00410dee    2bc2
                         mov.s                ecx, eax                                      // 0x00410df0    8bc8
                         sar                  ecx, 1                                        // 0x00410df2    d1f9
                         {disp8} jmp          _jmp_addr_0x00410e14                          // 0x00410df4    eb1e
_jmp_addr_0x00410df6:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x00410df6    8b8634020000
                         test                 eax, eax                                      // 0x00410dfc    85c0
                         {disp8} je           _jmp_addr_0x00410e0f                          // 0x00410dfe    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x00410e00    8b80ac000000
                         cdq                                                                // 0x00410e06    99
                         sub.s                eax, edx                                      // 0x00410e07    2bc2
                         mov.s                ecx, eax                                      // 0x00410e09    8bc8
                         sar                  ecx, 1                                        // 0x00410e0b    d1f9
                         {disp8} jmp          _jmp_addr_0x00410e14                          // 0x00410e0d    eb05
_jmp_addr_0x00410e0f:    mov                  ecx, 0x00000005                               // 0x00410e0f    b905000000
_jmp_addr_0x00410e14:    {disp8} mov          edx, dword ptr [esi + 0x14]                   // 0x00410e14    8b5614
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x00410e17    8b460c
                         push                 0x0                                           // 0x00410e1a    6a00
                         add.s                eax, edx                                      // 0x00410e1c    03c2
                         push                 0x00c4ccdc                                    // 0x00410e1e    68dcccc400
                         cdq                                                                // 0x00410e23    99
                         push                 ebp                                           // 0x00410e24    55
                         sub.s                eax, edx                                      // 0x00410e25    2bc2
                         {disp8} lea          edi, dword ptr [esi + 0x24]                   // 0x00410e27    8d7e24
                         push                 edi                                           // 0x00410e2a    57
                         sar                  eax, 1                                        // 0x00410e2b    d1f8
                         sub.s                eax, ecx                                      // 0x00410e2d    2bc1
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x00410e2f    8b4e10
                         push                 0x0                                           // 0x00410e32    6a00
                         push                 0x000003e8                                    // 0x00410e34    68e8030000
                         add                  eax, 0x02                                     // 0x00410e39    83c002
                         push                 eax                                           // 0x00410e3c    50
                         add                  ecx, 0x6                                      // 0x00410e3d    83c106
                         push                 ecx                                           // 0x00410e40    51
                         call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00410e41    e86a0b0000
                         add                  esp, 0x20                                     // 0x00410e46    83c420
                         fstp                 st(0)                                         // 0x00410e49    ddd8
                         test                 bl, bl                                        // 0x00410e4b    84db
                         {disp8} jne          _jmp_addr_0x00410e64                          // 0x00410e4d    7515
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x00410e4f    8a442418
                         test                 al, al                                        // 0x00410e53    84c0
                         {disp8} je           _jmp_addr_0x00410e5d                          // 0x00410e55    7406
                         cmp                  word ptr [edi], 0x00                          // 0x00410e57    66833f00
                         {disp8} je           _jmp_addr_0x00410e64                          // 0x00410e5b    7407
_jmp_addr_0x00410e5d:    mov                  ebp, 0x00c4ccf8                               // 0x00410e5d    bdf8ccc400
                         {disp8} jmp          _jmp_addr_0x00410e69                          // 0x00410e62    eb05
_jmp_addr_0x00410e64:    mov                  ebp, 0x00c4cce4                               // 0x00410e64    bde4ccc400
_jmp_addr_0x00410e69:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x00410e69    8b4620
                         test                 eax, eax                                      // 0x00410e6c    85c0
                         {disp8} je           _jmp_addr_0x00410e74                          // 0x00410e6e    7404
                         mov.s                ebx, eax                                      // 0x00410e70    8bd8
                         {disp8} jmp          _jmp_addr_0x00410e8b                          // 0x00410e72    eb17
_jmp_addr_0x00410e74:    {disp32} mov         ecx, dword ptr [esi + 0x00000234]             // 0x00410e74    8b8e34020000
                         test                 ecx, ecx                                      // 0x00410e7a    85c9
                         {disp8} je           _jmp_addr_0x00410e86                          // 0x00410e7c    7408
                         {disp32} mov         ebx, dword ptr [ecx + 0x000000ac]             // 0x00410e7e    8b99ac000000
                         {disp8} jmp          _jmp_addr_0x00410e8b                          // 0x00410e84    eb05
_jmp_addr_0x00410e86:    mov                  ebx, 0x0000000a                               // 0x00410e86    bb0a000000
_jmp_addr_0x00410e8b:    test                 eax, eax                                      // 0x00410e8b    85c0
                         {disp8} je           _jmp_addr_0x00410e98                          // 0x00410e8d    7409
                         cdq                                                                // 0x00410e8f    99
                         sub.s                eax, edx                                      // 0x00410e90    2bc2
                         mov.s                ecx, eax                                      // 0x00410e92    8bc8
                         sar                  ecx, 1                                        // 0x00410e94    d1f9
                         {disp8} jmp          _jmp_addr_0x00410eb6                          // 0x00410e96    eb1e
_jmp_addr_0x00410e98:    {disp32} mov         eax, dword ptr [esi + 0x00000234]             // 0x00410e98    8b8634020000
                         test                 eax, eax                                      // 0x00410e9e    85c0
                         {disp8} je           _jmp_addr_0x00410eb1                          // 0x00410ea0    740f
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]             // 0x00410ea2    8b80ac000000
                         cdq                                                                // 0x00410ea8    99
                         sub.s                eax, edx                                      // 0x00410ea9    2bc2
                         mov.s                ecx, eax                                      // 0x00410eab    8bc8
                         sar                  ecx, 1                                        // 0x00410ead    d1f9
                         {disp8} jmp          _jmp_addr_0x00410eb6                          // 0x00410eaf    eb05
_jmp_addr_0x00410eb1:    mov                  ecx, 0x00000005                               // 0x00410eb1    b905000000
_jmp_addr_0x00410eb6:    {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x00410eb6    8b460c
                         push                 0x0                                           // 0x00410eb9    6a00
                         push                 ebp                                           // 0x00410ebb    55
                         push                 ebx                                           // 0x00410ebc    53
                         add                  eax, dword ptr [esi + 0x14]                   // 0x00410ebd    034614
                         cdq                                                                // 0x00410ec0    99
                         push                 edi                                           // 0x00410ec1    57
                         sub.s                eax, edx                                      // 0x00410ec2    2bc2
                         {disp8} mov          edx, dword ptr [esi + 0x10]                   // 0x00410ec4    8b5610
                         push                 0x0                                           // 0x00410ec7    6a00
                         sar                  eax, 1                                        // 0x00410ec9    d1f8
                         push                 0x000003e8                                    // 0x00410ecb    68e8030000
                         sub.s                eax, ecx                                      // 0x00410ed0    2bc1
                         push                 eax                                           // 0x00410ed2    50
                         add                  edx, 0x04                                     // 0x00410ed3    83c204
                         push                 edx                                           // 0x00410ed6    52
_jmp_addr_0x00410ed7:    call                 ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00410ed7    e8d40a0000
                         fstp                 st(0)                                         // 0x00410edc    ddd8
                         {disp32} mov         eax, dword ptr [data_bytes + 0x286cb8]        // 0x00410ede    a1b8ccc400
                         add                  esi, 0x00000250                               // 0x00410ee3    81c650020000
                         mov                  dword ptr [esi], eax                          // 0x00410ee9    8906
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286cbc]        // 0x00410eeb    8b0dbcccc400
                         {disp8} mov          dword ptr [esi + 0x04], ecx                   // 0x00410ef1    894e04
                         {disp32} mov         edx, dword ptr [data_bytes + 0x286cc0]        // 0x00410ef4    8b15c0ccc400
                         add                  esp, 0x20                                     // 0x00410efa    83c420
                         {disp8} mov          dword ptr [esi + 0x08], edx                   // 0x00410efd    895608
                         {disp32} mov         eax, dword ptr [data_bytes + 0x286cc4]        // 0x00410f00    a1c4ccc400
                         pop                  edi                                           // 0x00410f05    5f
                         {disp8} mov          dword ptr [esi + 0x0c], eax                   // 0x00410f06    89460c
                         pop                  esi                                           // 0x00410f09    5e
                         pop                  ebp                                           // 0x00410f0a    5d
                         pop                  ebx                                           // 0x00410f0b    5b
                         ret                  0x0008                                        // 0x00410f0c    c20800
                         nop                                                                // 0x00410f0f    90
@__ct__13SetupCheckBoxFiiibiPwi@33:    {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x00410f10    8b442418
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x00410f14    8b542408
                         push                 esi                                           // 0x00410f18    56
                         push                 edi                                           // 0x00410f19    57
                         xor.s                edi, edi                                      // 0x00410f1a    33ff
                         push                 edi                                           // 0x00410f1c    57
                         push                 eax                                           // 0x00410f1d    50
                         {disp8} mov          eax, dword ptr [esp + 0x2c]                   // 0x00410f1e    8b44242c
                         push                 eax                                           // 0x00410f22    50
                         push                 eax                                           // 0x00410f23    50
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x00410f24    8b44241c
                         mov.s                esi, ecx                                      // 0x00410f28    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x24]                   // 0x00410f2a    8b4c2424
                         push                 ecx                                           // 0x00410f2e    51
                         push                 edx                                           // 0x00410f2f    52
                         push                 eax                                           // 0x00410f30    50
                         mov.s                ecx, esi                                      // 0x00410f31    8bce
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x00410f33    e87889ffff
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x00410f38    8b4c241c
                         {disp8} mov          dl, byte ptr [esp + 0x18]                     // 0x00410f3c    8a542418
                         {disp32} mov         dword ptr [esi + 0x0000025c], edi             // 0x00410f40    89be5c020000
                         {disp32} mov         dword ptr [esi + 0x00000258], edi             // 0x00410f46    89be58020000
                         {disp32} mov         dword ptr [esi + 0x00000254], edi             // 0x00410f4c    89be54020000
                         {disp32} mov         dword ptr [esi + 0x00000250], edi             // 0x00410f52    89be50020000
                         mov                  dword ptr [esi], 0x008ab588                   // 0x00410f58    c70688b58a00
                         {disp32} mov         dword ptr [esi + 0x0000023c], edi             // 0x00410f5e    89be3c020000
                         {disp32} mov         dword ptr [esi + 0x00000248], ecx             // 0x00410f64    898e48020000
                         {disp32} mov         byte ptr [esi + 0x0000024c], dl               // 0x00410f6a    88964c020000
                         call                 _GetMidTextSize__Fv                           // 0x00410f70    e88b6affff
                         {disp8} mov          dword ptr [esi + 0x20], eax                   // 0x00410f75    894620
                         pop                  edi                                           // 0x00410f78    5f
                         {disp32} mov         dword ptr [esi + 0x00000244], 0x00000002      // 0x00410f79    c7864402000002000000
                         mov.s                eax, esi                                      // 0x00410f83    8bc6
                         pop                  esi                                           // 0x00410f85    5e
                         ret                  0x001c                                        // 0x00410f86    c21c00
                         nop                                                                // 0x00410f89    90
                         nop                                                                // 0x00410f8a    90
                         nop                                                                // 0x00410f8b    90
                         nop                                                                // 0x00410f8c    90
                         nop                                                                // 0x00410f8d    90
                         nop                                                                // 0x00410f8e    90
                         nop                                                                // 0x00410f8f    90
_HitTest__13SetupCheckBoxFii:
                         {disp8} mov          eax, dword ptr [ecx + 0x14]                   // 0x00410f90    8b4114
                         push                 ebx                                           // 0x00410f93    53
                         {disp8} mov          ebx, dword ptr [ecx + 0x10]                   // 0x00410f94    8b5910
                         push                 ebp                                           // 0x00410f97    55
                         {disp8} mov          ebp, dword ptr [ecx + 0x08]                   // 0x00410f98    8b6908
                         push                 esi                                           // 0x00410f9b    56
                         {disp8} mov          esi, dword ptr [esp + 0x14]                   // 0x00410f9c    8b742414
                         push                 edi                                           // 0x00410fa0    57
                         add                  eax, dword ptr [ecx + 0x0c]                   // 0x00410fa1    03410c
                         {disp8} mov          edi, dword ptr [esp + 0x14]                   // 0x00410fa4    8b7c2414
                         cdq                                                                // 0x00410fa8    99
                         sub.s                eax, edx                                      // 0x00410fa9    2bc2
                         sar                  eax, 1                                        // 0x00410fab    d1f8
                         sub.s                esi, eax                                      // 0x00410fad    2bf0
                         lea                  eax, dword ptr [ebx + ebp * 0x1]              // 0x00410faf    8d042b
                         cdq                                                                // 0x00410fb2    99
                         sub.s                eax, edx                                      // 0x00410fb3    2bc2
                         sar                  eax, 1                                        // 0x00410fb5    d1f8
                         sub.s                edi, eax                                      // 0x00410fb7    2bf8
                         mov.s                eax, ebx                                      // 0x00410fb9    8bc3
                         sub.s                eax, ebp                                      // 0x00410fbb    2bc5
                         cdq                                                                // 0x00410fbd    99
                         sub.s                eax, edx                                      // 0x00410fbe    2bc2
                         mov.s                edx, edi                                      // 0x00410fc0    8bd7
                         imul                 edx, edi                                      // 0x00410fc2    0fafd7
                         mov.s                edi, esi                                      // 0x00410fc5    8bfe
                         sar                  eax, 1                                        // 0x00410fc7    d1f8
                         imul                 edi, esi                                      // 0x00410fc9    0faffe
                         mov.s                esi, eax                                      // 0x00410fcc    8bf0
                         imul                 esi, eax                                      // 0x00410fce    0faff0
                         add.s                edx, edi                                      // 0x00410fd1    03d7
                         cmp.s                edx, esi                                      // 0x00410fd3    3bd6
                         {disp8} jl           _jmp_addr_0x00411008                          // 0x00410fd5    7c31
                         {disp8} mov          edx, dword ptr [esp + 0x14]                   // 0x00410fd7    8b542414
                         cmp                  edx, dword ptr [ecx + 0x00000250]             // 0x00410fdb    3b9150020000
                         {disp8} jl           _jmp_addr_0x00410fff                          // 0x00410fe1    7c1c
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x00410fe3    8b442418
                         cmp                  eax, dword ptr [ecx + 0x00000254]             // 0x00410fe7    3b8154020000
                         {disp8} jl           _jmp_addr_0x00410fff                          // 0x00410fed    7c10
                         cmp                  edx, dword ptr [ecx + 0x00000258]             // 0x00410fef    3b9158020000
                         {disp8} jge          _jmp_addr_0x00410fff                          // 0x00410ff5    7d08
                         cmp                  eax, dword ptr [ecx + 0x0000025c]             // 0x00410ff7    3b815c020000
                         {disp8} jl           _jmp_addr_0x00411008                          // 0x00410ffd    7c09
_jmp_addr_0x00410fff:    pop                  edi                                           // 0x00410fff    5f
                         pop                  esi                                           // 0x00411000    5e
                         pop                  ebp                                           // 0x00411001    5d
                         xor.s                eax, eax                                      // 0x00411002    33c0
                         pop                  ebx                                           // 0x00411004    5b
                         ret                  0x0008                                        // 0x00411005    c20800
_jmp_addr_0x00411008:    pop                  edi                                           // 0x00411008    5f
                         pop                  esi                                           // 0x00411009    5e
                         pop                  ebp                                           // 0x0041100a    5d
                         mov                  eax, 0x00000001                               // 0x0041100b    b801000000
                         pop                  ebx                                           // 0x00411010    5b
                         ret                  0x0008                                        // 0x00411011    c20800
                         nop                                                                // 0x00411014    90
                         nop                                                                // 0x00411015    90
                         nop                                                                // 0x00411016    90
                         nop                                                                // 0x00411017    90
                         nop                                                                // 0x00411018    90
                         nop                                                                // 0x00411019    90
                         nop                                                                // 0x0041101a    90
                         nop                                                                // 0x0041101b    90
                         nop                                                                // 0x0041101c    90
                         nop                                                                // 0x0041101d    90
                         nop                                                                // 0x0041101e    90
                         nop                                                                // 0x0041101f    90
_Click__13SetupCheckBoxFii:
                         {disp32} mov         al, byte ptr [ecx + 0x0000024c]               // 0x00411020    8a814c020000
                         test                 al, al                                        // 0x00411026    84c0
                         {disp8} je           _jmp_addr_0x00411037                          // 0x00411028    740d
                         {disp32} mov         dword ptr [ecx + 0x00000248], 0x00000001      // 0x0041102a    c7814802000001000000
                         ret                  0x0008                                        // 0x00411034    c20800
_jmp_addr_0x00411037:    {disp32} mov         edx, dword ptr [ecx + 0x00000248]             // 0x00411037    8b9148020000
                         xor.s                eax, eax                                      // 0x0041103d    33c0
                         test                 edx, edx                                      // 0x0041103f    85d2
                         sete                 al                                            // 0x00411041    0f94c0
                         {disp32} mov         dword ptr [ecx + 0x00000248], eax             // 0x00411044    898148020000
                         ret                  0x0008                                        // 0x0041104a    c20800
                         nop                                                                // 0x0041104d    90
                         nop                                                                // 0x0041104e    90
                         nop                                                                // 0x0041104f    90
_KeyDown__13SetupCheckBoxFii:
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000234]             // 0x00411050    8b8934020000
                         test                 ecx, ecx                                      // 0x00411056    85c9
                         {disp8} je           _jmp_addr_0x00411068                          // 0x00411058    740e
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x0041105a    8b542408
                         mov                  eax, dword ptr [ecx]                          // 0x0041105e    8b01
                         push                 edx                                           // 0x00411060    52
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x00411061    8b542408
                         push                 edx                                           // 0x00411065    52
                         call                 dword ptr [eax]                               // 0x00411066    ff10
_jmp_addr_0x00411068:    ret                  0x0008                                        // 0x00411068    c20800
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0041106b    e80908ffff
??_GSetupCheckBox@@UAEPAXI@Z:
                         push                 esi                                           // 0x00411070    56
                         mov.s                esi, ecx                                      // 0x00411071    8bf1
                         call                 ??1SetupControl@@UAE@XZ                       // 0x00411073    e84883ffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x00411078    f644240801
                         {disp8} je           _jmp_addr_0x00411088                          // 0x0041107d    7409
                         push                 esi                                           // 0x0041107f    56
                         call                 ??3@YAXPAX@Z                                  // 0x00411080    e813de3900
                         add                  esp, 0x04                                     // 0x00411085    83c404
_jmp_addr_0x00411088:    mov.s                eax, esi                                      // 0x00411088    8bc6
                         pop                  esi                                           // 0x0041108a    5e
                         ret                  0x0004                                        // 0x0041108b    c20400
                         nop                                                                // 0x0041108e    90
                         nop                                                                // 0x0041108f    90
?SetFocusNext@SetupBox@@QAEXXZ:
                                 push                 ebx                                           // 0x00411090    53
                         push                 ebp                                           // 0x00411091    55
                         push                 esi                                           // 0x00411092    56
                         push                 edi                                           // 0x00411093    57
                         mov.s                edi, ecx                                      // 0x00411094    8bf9
                         {disp8} mov          esi, dword ptr [edi + 0x70]                   // 0x00411096    8b7770
                         mov.s                ebx, esi                                      // 0x00411099    8bde
_jmp_addr_0x0041109b:    {disp8} mov          ebp, dword ptr [edi + 0x6c]                   // 0x0041109b    8b6f6c
                         mov.s                eax, ebp                                      // 0x0041109e    8bc5
                         test                 eax, eax                                      // 0x004110a0    85c0
                         {disp8} je           _jmp_addr_0x004110c1                          // 0x004110a2    741d
                         {disp8} mov          edx, dword ptr [edi + 0x70]                   // 0x004110a4    8b5770
_jmp_addr_0x004110a7:    {disp32} mov         ecx, dword ptr [eax + 0x00000230]             // 0x004110a7    8b8830020000
                         cmp.s                ecx, edx                                      // 0x004110ad    3bca
                         {disp8} je           _jmp_addr_0x004110bf                          // 0x004110af    740e
                         test                 ecx, ecx                                      // 0x004110b1    85c9
                         {disp8} jne          _jmp_addr_0x004110b7                          // 0x004110b3    7502
                         mov.s                esi, eax                                      // 0x004110b5    8bf0
_jmp_addr_0x004110b7:    mov.s                eax, ecx                                      // 0x004110b7    8bc1
                         test                 eax, eax                                      // 0x004110b9    85c0
                         {disp8} jne          _jmp_addr_0x004110a7                          // 0x004110bb    75ea
                         {disp8} jmp          _jmp_addr_0x004110c1                          // 0x004110bd    eb02
_jmp_addr_0x004110bf:    mov.s                esi, eax                                      // 0x004110bf    8bf0
_jmp_addr_0x004110c1:    test                 esi, esi                                      // 0x004110c1    85f6
                         {disp8} jne          _jmp_addr_0x004110c7                          // 0x004110c3    7502
                         mov.s                esi, ebp                                      // 0x004110c5    8bf5
_jmp_addr_0x004110c7:    cmp                  esi, dword ptr [edi + 0x70]                   // 0x004110c7    3b7770
                         {disp8} je           _jmp_addr_0x004110ef                          // 0x004110ca    7423
                         push                 esi                                           // 0x004110cc    56
                         mov.s                ecx, edi                                      // 0x004110cd    8bcf
                         call                 @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x004110cf    e86c80ffff
                         cmp.s                esi, ebx                                      // 0x004110d4    3bf3
                         {disp8} je           _jmp_addr_0x004110ef                          // 0x004110d6    7417
                         test                 esi, esi                                      // 0x004110d8    85f6
                         {disp8} je           _jmp_addr_0x004110ef                          // 0x004110da    7413
                         {disp32} mov         al, byte ptr [esi + 0x0000022a]               // 0x004110dc    8a862a020000
                         test                 al, al                                        // 0x004110e2    84c0
                         {disp8} je           _jmp_addr_0x0041109b                          // 0x004110e4    74b5
                         cmp                  byte ptr [esi + 0x00000229], 0x01             // 0x004110e6    80be2902000001
                         {disp8} je           _jmp_addr_0x0041109b                          // 0x004110ed    74ac
_jmp_addr_0x004110ef:    pop                  edi                                           // 0x004110ef    5f
                         pop                  esi                                           // 0x004110f0    5e
                         pop                  ebp                                           // 0x004110f1    5d
                         pop                  ebx                                           // 0x004110f2    5b
                         ret                                                                // 0x004110f3    c3
                         nop                                                                // 0x004110f4    90
                         nop                                                                // 0x004110f5    90
                         nop                                                                // 0x004110f6    90
                         nop                                                                // 0x004110f7    90
                         nop                                                                // 0x004110f8    90
                         nop                                                                // 0x004110f9    90
                         nop                                                                // 0x004110fa    90
                         nop                                                                // 0x004110fb    90
                         nop                                                                // 0x004110fc    90
                         nop                                                                // 0x004110fd    90
                         nop                                                                // 0x004110fe    90
                         nop                                                                // 0x004110ff    90
?SetFocusPrev@SetupBox@@QAEXXZ:
                                 push                 ebp                                           // 0x00411100    55
                         push                 esi                                           // 0x00411101    56
                         push                 edi                                           // 0x00411102    57
                         mov.s                edi, ecx                                      // 0x00411103    8bf9
                         {disp8} mov          ebp, dword ptr [edi + 0x70]                   // 0x00411105    8b6f70
                         mov.s                esi, ebp                                      // 0x00411108    8bf5
_jmp_addr_0x0041110a:    test                 esi, esi                                      // 0x0041110a    85f6
                         {disp8} je           _jmp_addr_0x00411118                          // 0x0041110c    740a
                         {disp32} mov         esi, dword ptr [esi + 0x00000230]             // 0x0041110e    8bb630020000
                         test                 esi, esi                                      // 0x00411114    85f6
                         {disp8} jne          _jmp_addr_0x0041111b                          // 0x00411116    7503
_jmp_addr_0x00411118:    {disp8} mov          esi, dword ptr [edi + 0x6c]                   // 0x00411118    8b776c
_jmp_addr_0x0041111b:    cmp                  esi, dword ptr [edi + 0x70]                   // 0x0041111b    3b7770
                         {disp8} je           _jmp_addr_0x00411143                          // 0x0041111e    7423
                         push                 esi                                           // 0x00411120    56
                         mov.s                ecx, edi                                      // 0x00411121    8bcf
                         call                 @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x00411123    e81880ffff
                         cmp.s                esi, ebp                                      // 0x00411128    3bf5
                         {disp8} je           _jmp_addr_0x00411143                          // 0x0041112a    7417
                         test                 esi, esi                                      // 0x0041112c    85f6
                         {disp8} je           _jmp_addr_0x00411143                          // 0x0041112e    7413
                         {disp32} mov         al, byte ptr [esi + 0x0000022a]               // 0x00411130    8a862a020000
                         test                 al, al                                        // 0x00411136    84c0
                         {disp8} je           _jmp_addr_0x0041110a                          // 0x00411138    74d0
                         cmp                  byte ptr [esi + 0x00000229], 0x01             // 0x0041113a    80be2902000001
                         {disp8} je           _jmp_addr_0x0041110a                          // 0x00411141    74c7
_jmp_addr_0x00411143:    pop                  edi                                           // 0x00411143    5f
                         pop                  esi                                           // 0x00411144    5e
                         pop                  ebp                                           // 0x00411145    5d
                         ret                                                                // 0x00411146    c3
                         nop                                                                // 0x00411147    90
                         nop                                                                // 0x00411148    90
                         nop                                                                // 0x00411149    90
                         nop                                                                // 0x0041114a    90
                         nop                                                                // 0x0041114b    90
                         nop                                                                // 0x0041114c    90
                         nop                                                                // 0x0041114d    90
                         nop                                                                // 0x0041114e    90
                         nop                                                                // 0x0041114f    90
_jmp_addr_0x00411150:    push                 esi                                           // 0x00411150    56
                         mov.s                esi, ecx                                      // 0x00411151    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x68]                   // 0x00411153    8b4668
                         test                 eax, eax                                      // 0x00411156    85c0
                         {disp8} je           _jmp_addr_0x00411184                          // 0x00411158    742a
                         {disp8} mov          ecx, dword ptr [esi + 0x6c]                   // 0x0041115a    8b4e6c
                         {disp8} mov          dword ptr [esi + 0x68], ecx                   // 0x0041115d    894e68
                         mov.s                ecx, eax                                      // 0x00411160    8bc8
                         test                 ecx, ecx                                      // 0x00411162    85c9
                         {disp8} mov          dword ptr [esi + 0x6c], eax                   // 0x00411164    89466c
                         {disp8} je           _jmp_addr_0x00411177                          // 0x00411167    740e
_jmp_addr_0x00411169:    mov                  eax, dword ptr [ecx]                          // 0x00411169    8b01
                         push                 0x1                                           // 0x0041116b    6a01
                         call                 dword ptr [eax + 0x30]                        // 0x0041116d    ff5030
                         {disp8} mov          ecx, dword ptr [esi + 0x6c]                   // 0x00411170    8b4e6c
                         test                 ecx, ecx                                      // 0x00411173    85c9
                         {disp8} jne          _jmp_addr_0x00411169                          // 0x00411175    75f2
_jmp_addr_0x00411177:    {disp8} mov          ecx, dword ptr [esi + 0x68]                   // 0x00411177    8b4e68
                         {disp8} mov          dword ptr [esi + 0x6c], ecx                   // 0x0041117a    894e6c
                         {disp8} mov          dword ptr [esi + 0x68], 0x00000000            // 0x0041117d    c7466800000000
_jmp_addr_0x00411184:    pop                  esi                                           // 0x00411184    5e
                         ret                                                                // 0x00411185    c3
                         nop                                                                // 0x00411186    90
                         nop                                                                // 0x00411187    90
                         nop                                                                // 0x00411188    90
                         nop                                                                // 0x00411189    90
                         nop                                                                // 0x0041118a    90
                         nop                                                                // 0x0041118b    90
                         nop                                                                // 0x0041118c    90
                         nop                                                                // 0x0041118d    90
                         nop                                                                // 0x0041118e    90
                         nop                                                                // 0x0041118f    90
@MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20:    push                 ebx                                           // 0x00411190    53
                         push                 ebp                                           // 0x00411191    55
                         push                 esi                                           // 0x00411192    56
                         push                 edi                                           // 0x00411193    57
                         mov.s                edi, ecx                                      // 0x00411194    8bf9
                         {disp8} mov          al, byte ptr [edi + 0x64]                     // 0x00411196    8a4764
                         test                 al, al                                        // 0x00411199    84c0
                         {disp8} je           _jmp_addr_0x004111a2                          // 0x0041119b    7405
                         call                 _jmp_addr_0x00408240                          // 0x0041119d    e89e70ffff
_jmp_addr_0x004111a2:    mov.s                ecx, edi                                      // 0x004111a2    8bcf
                         call                 _jmp_addr_0x00411150                          // 0x004111a4    e8a7ffffff
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x004111a9    8b44241c
                         push                 eax                                           // 0x004111ad    50
                         mov.s                ecx, edi                                      // 0x004111ae    8bcf
                         {disp32} mov         dword ptr [edi + 0x000000c0], 0xffffffff      // 0x004111b0    c787c0000000ffffffff
                         {disp32} mov         dword ptr [edi + 0x000000a4], 0x000001f4      // 0x004111ba    c787a4000000f4010000
                         {disp32} mov         dword ptr [edi + 0x000000a8], 0x000000c8      // 0x004111c4    c787a8000000c8000000
                         call                 _jmp_addr_0x004081a0                          // 0x004111ce    e8cd6fffff
                         push                 0x00000a04                                    // 0x004111d3    68040a0000
                         push                 0x009c8190                                    // 0x004111d8    6890819c00
                         push                 0x00000244                                    // 0x004111dd    6844020000
                         {disp32} mov         dword ptr [data_bytes + 0x286d1c], edi        // 0x004111e2    893d1ccdc400
                         call                 ___nw__FUl                                    // 0x004111e8    e8a3a53c00
                         {disp8} mov          ebp, dword ptr [esp + 0x20]                   // 0x004111ed    8b6c2420
                         mov.s                esi, eax                                      // 0x004111f1    8bf0
                         add                  esp, 0x0c                                     // 0x004111f3    83c40c
                         test                 esi, esi                                      // 0x004111f6    85f6
                         {disp8} je           _jmp_addr_0x0041123e                          // 0x004111f8    7444
                         push                 ebp                                           // 0x004111fa    55
                         push                 0x00000082                                    // 0x004111fb    6882000000
                         push                 0x00000190                                    // 0x00411200    6890010000
                         push                 0x000000dc                                    // 0x00411205    68dc000000
                         push                 0x000000c8                                    // 0x0041120a    68c8000000
                         push                 0x0000270f                                    // 0x0041120f    680f270000
                         mov.s                ecx, esi                                      // 0x00411214    8bce
                         call                 ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00411216    e83580ffff
                         mov                  dword ptr [esi], 0x008ab5c0                   // 0x0041121b    c706c0b58a00
                         {disp32} mov         dword ptr [esi + 0x0000023c], 0x00000004      // 0x00411221    c7863c02000004000000
                         {disp32} mov         byte ptr [esi + 0x0000022a], 0x00             // 0x0041122b    c6862a02000000
                         {disp32} mov         dword ptr [esi + 0x00000240], 0x00000000      // 0x00411232    c7864002000000000000
                         {disp8} jmp          _jmp_addr_0x00411240                          // 0x0041123c    eb02
_jmp_addr_0x0041123e:    xor.s                esi, esi                                      // 0x0041123e    33f6
_jmp_addr_0x00411240:    {disp32} mov         dword ptr [edi + 0x000000b4], esi             // 0x00411240    89b7b4000000
                         call                 _jmp_addr_0x00407a20                          // 0x00411246    e8d567ffff
                         inc                  eax                                           // 0x0041124b    40
                         {disp8} mov          dword ptr [esi + 0x20], eax                   // 0x0041124c    894620
                         mov                  bl, -0x01                                     // 0x0041124f    b3ff
_jmp_addr_0x00411251:    {disp8} mov          eax, dword ptr [esi + 0x20]                   // 0x00411251    8b4620
                         push                 0x1                                           // 0x00411254    6a01
                         push                 0x0                                           // 0x00411256    6a00
                         push                 0x1                                           // 0x00411258    6a01
                         dec                  eax                                           // 0x0041125a    48
                         mov.s                ecx, eax                                      // 0x0041125b    8bc8
                         {disp8} mov          dword ptr [esp + 0x20], ecx                   // 0x0041125d    894c2420
                         {disp8} fild         dword ptr [esp + 0x20]                        // 0x00411261    db442420
                         {disp8} lea          edx, dword ptr [esp + 0x28]                   // 0x00411265    8d542428
                         push                 edx                                           // 0x00411269    52
                         push                 ecx                                           // 0x0041126a    51
                         fstp                 dword ptr [esp]                               // 0x0041126b    d91c24
                         push                 0x40a00000                                    // 0x0041126e    680000a040
                         push                 0x0                                           // 0x00411273    6a00
                         push                 0x44048000                                    // 0x00411275    6800800444
                         push                 0x44048000                                    // 0x0041127a    6800800444
                         push                 0x43c80000                                    // 0x0041127f    680000c843
                         push                 0x0                                           // 0x00411284    6a00
                         push                 0x0                                           // 0x00411286    6a00
                         push                 0x0                                           // 0x00411288    6a00
                         {disp8} mov          dword ptr [esi + 0x20], eax                   // 0x0041128a    894620
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0041128d    8b0d2ccdc400
                         push                 ebp                                           // 0x00411293    55
                         {disp8} mov          byte ptr [esp + 0x54], bl                     // 0x00411294    885c2454
                         {disp8} mov          byte ptr [esp + 0x55], bl                     // 0x00411298    885c2455
                         {disp8} mov          byte ptr [esp + 0x56], bl                     // 0x0041129c    885c2456
                         {disp8} mov          byte ptr [esp + 0x57], bl                     // 0x004112a0    885c2457
                         call                 @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x004112a4    e807034200
                         call                 _jmp_addr_0x007a1400                          // 0x004112a9    e852013900
                         cmp                  eax, 0x7d                                     // 0x004112ae    83f87d
                         {disp8} jl           _jmp_addr_0x004112bd                          // 0x004112b1    7c0a
                         call                 _GetSmallTextSize__Fv                         // 0x004112b3    e85867ffff
                         cmp                  dword ptr [esi + 0x20], eax                   // 0x004112b8    394620
                         {disp8} jg           _jmp_addr_0x00411251                          // 0x004112bb    7f94
_jmp_addr_0x004112bd:    call                 _GetMidTextSize__Fv                           // 0x004112bd    e83e67ffff
                         mov.s                esi, eax                                      // 0x004112c2    8bf0
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x004112c4    8b442418
                         dec                  eax                                           // 0x004112c8    48
                         cmp                  eax, 0x04                                     // 0x004112c9    83f804
                         {disp32} ja          _jmp_addr_0x004115e8                          // 0x004112cc    0f8716030000
                         jmp                  dword ptr [eax*4 + 0x411654]                  // 0x004112d2    ff248554164100
                         push                 0x00000a3a                                    // 0x004112d9    683a0a0000
                         push                 0x009c8190                                    // 0x004112de    6890819c00
                         push                 0x00000244                                    // 0x004112e3    6844020000
                         call                 ___nw__FUl                                    // 0x004112e8    e8a3a43c00
                         add                  esp, 0x0c                                     // 0x004112ed    83c40c
                         test                 eax, eax                                      // 0x004112f0    85c0
                         {disp32} je          _jmp_addr_0x00411648                          // 0x004112f2    0f8450030000
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a23 // 0x004112f8    813dac7cd100230a0000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00411302    8b0da87cd100
                         {disp8} jbe          _jmp_addr_0x00411310                          // 0x00411308    7606
                         add                  ecx, 0x000079a4                               // 0x0041130a    81c1a4790000
_jmp_addr_0x00411310:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x00411310    8b4908
                         push                 0x0                                           // 0x00411313    6a00
                         push                 ecx                                           // 0x00411315    51
                         push                 0x20                                          // 0x00411316    6a20
                         push                 0x00000096                                    // 0x00411318    6896000000
                         push                 0x00000152                                    // 0x0041131d    6852010000
                         push                 0x00000145                                    // 0x00411322    6845010000
                         push                 0x00002711                                    // 0x00411327    6811270000
                         mov.s                ecx, eax                                      // 0x0041132c    8bc8
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x0041132e    e87d85ffff
                         pop                  edi                                           // 0x00411333    5f
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x00411334    897020
                         pop                  esi                                           // 0x00411337    5e
                         pop                  ebp                                           // 0x00411338    5d
                         pop                  ebx                                           // 0x00411339    5b
                         ret                  0x000c                                        // 0x0041133a    c20c00
                         push                 0x00000a3d                                    // 0x0041133d    683d0a0000
                         push                 0x009c8190                                    // 0x00411342    6890819c00
                         push                 0x0000025c                                    // 0x00411347    685c020000
                         call                 ___nw__FUl                                    // 0x0041134c    e83fa43c00
                         add                  esp, 0x0c                                     // 0x00411351    83c40c
                         test                 eax, eax                                      // 0x00411354    85c0
                         {disp8} je           _jmp_addr_0x0041139a                          // 0x00411356    7442
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a23 // 0x00411358    813dac7cd100230a0000
                         {disp8} ja           _jmp_addr_0x0041136c                          // 0x00411362    7708
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00411364    8b0da87cd100
                         {disp8} jmp          _jmp_addr_0x00411378                          // 0x0041136a    eb0c
_jmp_addr_0x0041136c:    {disp32} mov         edx, dword ptr [data_bytes + 0x351ca8]        // 0x0041136c    8b15a87cd100
                         {disp32} lea         ecx, dword ptr [edx + 0x000079a4]             // 0x00411372    8d8aa4790000
_jmp_addr_0x00411378:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x00411378    8b4908
                         push                 0x2                                           // 0x0041137b    6a02
                         push                 0x0                                           // 0x0041137d    6a00
                         push                 0x20                                          // 0x0041137f    6a20
                         push                 ecx                                           // 0x00411381    51
                         push                 0x00000152                                    // 0x00411382    6852010000
                         push                 0x000000c8                                    // 0x00411387    68c8000000
                         push                 0x00002711                                    // 0x0041138c    6811270000
                         mov.s                ecx, eax                                      // 0x00411391    8bc8
                         call                 @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00411393    e8c8beffff
                         {disp8} jmp          _jmp_addr_0x0041139c                          // 0x00411398    eb02
_jmp_addr_0x0041139a:    xor.s                eax, eax                                      // 0x0041139a    33c0
_jmp_addr_0x0041139c:    push                 0x00000a3e                                    // 0x0041139c    683e0a0000
                         push                 0x009c8190                                    // 0x004113a1    6890819c00
                         push                 0x0000025c                                    // 0x004113a6    685c020000
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x004113ab    897020
                         call                 ___nw__FUl                                    // 0x004113ae    e8dda33c00
                         add                  esp, 0x0c                                     // 0x004113b3    83c40c
                         test                 eax, eax                                      // 0x004113b6    85c0
                         {disp32} je          _jmp_addr_0x00411648                          // 0x004113b8    0f848a020000
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x004113be    813dac7cd100240a0000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x004113c8    8b0da87cd100
                         {disp8} jbe          _jmp_addr_0x004113d6                          // 0x004113ce    7606
                         add                  ecx, 0x000079b0                               // 0x004113d0    81c1b0790000
_jmp_addr_0x004113d6:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x004113d6    8b4908
                         push                 0x3                                           // 0x004113d9    6a03
                         push                 0x1                                           // 0x004113db    6a01
                         push                 0x20                                          // 0x004113dd    6a20
                         push                 ecx                                           // 0x004113df    51
                         push                 0x00000152                                    // 0x004113e0    6852010000
                         push                 0x00000238                                    // 0x004113e5    6838020000
                         push                 0x00002710                                    // 0x004113ea    6810270000
                         mov.s                ecx, eax                                      // 0x004113ef    8bc8
                         call                 @__ct__14SetupBigButtonFiiiPwiii@36           // 0x004113f1    e86abeffff
                         pop                  edi                                           // 0x004113f6    5f
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x004113f7    897020
                         pop                  esi                                           // 0x004113fa    5e
                         pop                  ebp                                           // 0x004113fb    5d
                         pop                  ebx                                           // 0x004113fc    5b
                         ret                  0x000c                                        // 0x004113fd    c20c00
                         push                 0x00000a42                                    // 0x00411400    68420a0000
                         push                 0x009c8190                                    // 0x00411405    6890819c00
                         push                 0x0000025c                                    // 0x0041140a    685c020000
                         call                 ___nw__FUl                                    // 0x0041140f    e87ca33c00
                         add                  esp, 0x0c                                     // 0x00411414    83c40c
                         test                 eax, eax                                      // 0x00411417    85c0
                         {disp8} je           _jmp_addr_0x0041145d                          // 0x00411419    7442
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a21 // 0x0041141b    813dac7cd100210a0000
                         {disp8} ja           _jmp_addr_0x0041142f                          // 0x00411425    7708
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00411427    8b0da87cd100
                         {disp8} jmp          _jmp_addr_0x0041143b                          // 0x0041142d    eb0c
_jmp_addr_0x0041142f:    {disp32} mov         edx, dword ptr [data_bytes + 0x351ca8]        // 0x0041142f    8b15a87cd100
                         {disp32} lea         ecx, dword ptr [edx + 0x0000798c]             // 0x00411435    8d8a8c790000
_jmp_addr_0x0041143b:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x0041143b    8b4908
                         push                 0x2                                           // 0x0041143e    6a02
                         push                 0x0                                           // 0x00411440    6a00
                         push                 0x20                                          // 0x00411442    6a20
                         push                 ecx                                           // 0x00411444    51
                         push                 0x00000152                                    // 0x00411445    6852010000
                         push                 0x000000c8                                    // 0x0041144a    68c8000000
                         push                 0x00002712                                    // 0x0041144f    6812270000
                         mov.s                ecx, eax                                      // 0x00411454    8bc8
                         call                 @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00411456    e805beffff
                         {disp8} jmp          _jmp_addr_0x0041145f                          // 0x0041145b    eb02
_jmp_addr_0x0041145d:    xor.s                eax, eax                                      // 0x0041145d    33c0
_jmp_addr_0x0041145f:    push                 0x00000a43                                    // 0x0041145f    68430a0000
                         push                 0x009c8190                                    // 0x00411464    6890819c00
                         push                 0x0000025c                                    // 0x00411469    685c020000
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x0041146e    897020
                         call                 ___nw__FUl                                    // 0x00411471    e81aa33c00
                         add                  esp, 0x0c                                     // 0x00411476    83c40c
                         test                 eax, eax                                      // 0x00411479    85c0
                         {disp32} je          _jmp_addr_0x00411648                          // 0x0041147b    0f84c7010000
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a22 // 0x00411481    813dac7cd100220a0000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0041148b    8b0da87cd100
                         {disp8} jbe          _jmp_addr_0x00411499                          // 0x00411491    7606
                         add                  ecx, 0x00007998                               // 0x00411493    81c198790000
_jmp_addr_0x00411499:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x00411499    8b4908
                         push                 0x3                                           // 0x0041149c    6a03
                         push                 0x1                                           // 0x0041149e    6a01
                         push                 0x20                                          // 0x004114a0    6a20
                         push                 ecx                                           // 0x004114a2    51
                         push                 0x00000152                                    // 0x004114a3    6852010000
                         push                 0x00000238                                    // 0x004114a8    6838020000
                         push                 0x00002713                                    // 0x004114ad    6813270000
                         mov.s                ecx, eax                                      // 0x004114b2    8bc8
                         call                 @__ct__14SetupBigButtonFiiiPwiii@36           // 0x004114b4    e8a7bdffff
                         pop                  edi                                           // 0x004114b9    5f
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x004114ba    897020
                         pop                  esi                                           // 0x004114bd    5e
                         pop                  ebp                                           // 0x004114be    5d
                         pop                  ebx                                           // 0x004114bf    5b
                         ret                  0x000c                                        // 0x004114c0    c20c00
                         push                 0x00000a4b                                    // 0x004114c3    684b0a0000
                         push                 0x009c8190                                    // 0x004114c8    6890819c00
                         push                 0x0000025c                                    // 0x004114cd    685c020000
                         call                 ___nw__FUl                                    // 0x004114d2    e8b9a23c00
                         add                  esp, 0x0c                                     // 0x004114d7    83c40c
                         test                 eax, eax                                      // 0x004114da    85c0
                         {disp8} je           _jmp_addr_0x00411520                          // 0x004114dc    7442
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a21 // 0x004114de    813dac7cd100210a0000
                         {disp8} ja           _jmp_addr_0x004114f2                          // 0x004114e8    7708
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x004114ea    8b0da87cd100
                         {disp8} jmp          _jmp_addr_0x004114fe                          // 0x004114f0    eb0c
_jmp_addr_0x004114f2:    {disp32} mov         edx, dword ptr [data_bytes + 0x351ca8]        // 0x004114f2    8b15a87cd100
                         {disp32} lea         ecx, dword ptr [edx + 0x0000798c]             // 0x004114f8    8d8a8c790000
_jmp_addr_0x004114fe:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x004114fe    8b4908
                         push                 0x2                                           // 0x00411501    6a02
                         push                 0x0                                           // 0x00411503    6a00
                         push                 0x20                                          // 0x00411505    6a20
                         push                 ecx                                           // 0x00411507    51
                         push                 0x00000152                                    // 0x00411508    6852010000
                         push                 0x000000c8                                    // 0x0041150d    68c8000000
                         push                 0x00002712                                    // 0x00411512    6812270000
                         mov.s                ecx, eax                                      // 0x00411517    8bc8
                         call                 @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00411519    e842bdffff
                         {disp8} jmp          _jmp_addr_0x00411522                          // 0x0041151e    eb02
_jmp_addr_0x00411520:    xor.s                eax, eax                                      // 0x00411520    33c0
_jmp_addr_0x00411522:    push                 0x00000a4c                                    // 0x00411522    684c0a0000
                         push                 0x009c8190                                    // 0x00411527    6890819c00
                         push                 0x0000025c                                    // 0x0041152c    685c020000
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x00411531    897020
                         call                 ___nw__FUl                                    // 0x00411534    e857a23c00
                         add                  esp, 0x0c                                     // 0x00411539    83c40c
                         test                 eax, eax                                      // 0x0041153c    85c0
                         {disp8} je           _jmp_addr_0x0041157a                          // 0x0041153e    743a
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a22 // 0x00411540    813dac7cd100220a0000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0041154a    8b0da87cd100
                         {disp8} jbe          _jmp_addr_0x00411558                          // 0x00411550    7606
                         add                  ecx, 0x00007998                               // 0x00411552    81c198790000
_jmp_addr_0x00411558:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x00411558    8b4908
                         push                 0x3                                           // 0x0041155b    6a03
                         push                 0x1                                           // 0x0041155d    6a01
                         push                 0x20                                          // 0x0041155f    6a20
                         push                 ecx                                           // 0x00411561    51
                         push                 0x00000152                                    // 0x00411562    6852010000
                         push                 0x00000238                                    // 0x00411567    6838020000
                         push                 0x00002713                                    // 0x0041156c    6813270000
                         mov.s                ecx, eax                                      // 0x00411571    8bc8
                         call                 @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00411573    e8e8bcffff
                         {disp8} jmp          _jmp_addr_0x0041157c                          // 0x00411578    eb02
_jmp_addr_0x0041157a:    xor.s                eax, eax                                      // 0x0041157a    33c0
_jmp_addr_0x0041157c:    push                 0x00000a51                                    // 0x0041157c    68510a0000
                         push                 0x009c8190                                    // 0x00411581    6890819c00
                         push                 0x00000244                                    // 0x00411586    6844020000
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x0041158b    897020
                         call                 ___nw__FUl                                    // 0x0041158e    e8fda13c00
                         add                  esp, 0x0c                                     // 0x00411593    83c40c
                         test                 eax, eax                                      // 0x00411596    85c0
                         {disp32} je          _jmp_addr_0x00411648                          // 0x00411598    0f84aa000000
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a23 // 0x0041159e    813dac7cd100230a0000
                         {disp8} ja           _jmp_addr_0x004115b2                          // 0x004115a8    7708
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x004115aa    8b0da87cd100
                         {disp8} jmp          _jmp_addr_0x004115be                          // 0x004115b0    eb0c
_jmp_addr_0x004115b2:    {disp32} mov         edx, dword ptr [data_bytes + 0x351ca8]        // 0x004115b2    8b15a87cd100
                         {disp32} lea         ecx, dword ptr [edx + 0x000079a4]             // 0x004115b8    8d8aa4790000
_jmp_addr_0x004115be:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x004115be    8b4908
                         push                 0x0                                           // 0x004115c1    6a00
                         push                 ecx                                           // 0x004115c3    51
                         push                 0x20                                          // 0x004115c4    6a20
                         push                 0x78                                          // 0x004115c6    6a78
                         push                 0x00000152                                    // 0x004115c8    6852010000
                         push                 0x00000154                                    // 0x004115cd    6854010000
                         push                 0x00002711                                    // 0x004115d2    6811270000
                         mov.s                ecx, eax                                      // 0x004115d7    8bc8
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x004115d9    e8d282ffff
                         pop                  edi                                           // 0x004115de    5f
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x004115df    897020
                         pop                  esi                                           // 0x004115e2    5e
                         pop                  ebp                                           // 0x004115e3    5d
                         pop                  ebx                                           // 0x004115e4    5b
                         ret                  0x000c                                        // 0x004115e5    c20c00
_jmp_addr_0x004115e8:    push                 0x00000a37                                    // 0x004115e8    68370a0000
                         push                 0x009c8190                                    // 0x004115ed    6890819c00
                         push                 0x00000244                                    // 0x004115f2    6844020000
                         call                 ___nw__FUl                                    // 0x004115f7    e894a13c00
                         add                  esp, 0x0c                                     // 0x004115fc    83c40c
                         test                 eax, eax                                      // 0x004115ff    85c0
                         {disp8} je           _jmp_addr_0x00411648                          // 0x00411601    7445
                         cmp                  dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x00411603    813dac7cd100240a0000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0041160d    8b0da87cd100
                         {disp8} jbe          _jmp_addr_0x0041161b                          // 0x00411613    7606
                         add                  ecx, 0x000079b0                               // 0x00411615    81c1b0790000
_jmp_addr_0x0041161b:    {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x0041161b    8b4908
                         push                 0x0                                           // 0x0041161e    6a00
                         push                 ecx                                           // 0x00411620    51
                         push                 0x20                                          // 0x00411621    6a20
                         push                 0x00000096                                    // 0x00411623    6896000000
                         push                 0x00000152                                    // 0x00411628    6852010000
                         push                 0x00000145                                    // 0x0041162d    6845010000
                         push                 0x00002710                                    // 0x00411632    6810270000
                         mov.s                ecx, eax                                      // 0x00411637    8bc8
                         call                 @__ct__10SetupButtonFiiiiiPwi@36              // 0x00411639    e87282ffff
                         pop                  edi                                           // 0x0041163e    5f
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x0041163f    897020
                         pop                  esi                                           // 0x00411642    5e
                         pop                  ebp                                           // 0x00411643    5d
                         pop                  ebx                                           // 0x00411644    5b
                         ret                  0x000c                                        // 0x00411645    c20c00
_jmp_addr_0x00411648:    xor.s                eax, eax                                      // 0x00411648    33c0
                         {disp8} mov          dword ptr [eax + 0x20], esi                   // 0x0041164a    897020
                         pop                  edi                                           // 0x0041164d    5f
                         pop                  esi                                           // 0x0041164e    5e
                         pop                  ebp                                           // 0x0041164f    5d
                         pop                  ebx                                           // 0x00411650    5b
                         ret                  0x000c                                        // 0x00411651    c20c00

// Snippet: jmptbl, [0x00411654, 0x00411668)
.byte 0xd9, 0x12, 0x41, 0x00      // 0x00411654
.byte 0x3d, 0x13, 0x41, 0x00      // 0x00411658
.byte 0x00, 0x14, 0x41, 0x00      // 0x0041165c
.byte 0xc3, 0x14, 0x41, 0x00      // 0x00411660
.byte 0x4d, 0x16, 0x41, 0x00      // 0x00411664

// Snippet: db, [0x00411668, 0x00411670)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00411668
.byte 0x90, 0x90, 0x90, 0x90      // 0x0041166c

