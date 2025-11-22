.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _NeedsBiggerText__Fv
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ
.extern _jmp_addr_0x004489d0
.extern _jmp_addr_0x00448c00
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z
.extern _jmp_addr_0x005c4800
.extern _jmp_addr_0x005c5e50
.extern _jmp_addr_0x005c6550
.extern _jmp_addr_0x005c6670
.extern _jmp_addr_0x005c6740
.extern _jmp_addr_0x005c78f0
.extern _jmp_addr_0x005c81c0
.extern ?TriggerCategory@HelpSystem@@QAEXW4HELP_SET_CATEGORY@@@Z
.extern _jmp_addr_0x005c82f0
.extern _jmp_addr_0x005c86b0
.extern _jmp_addr_0x005c8720
.extern _jmp_addr_0x005d78d0
.extern _jmp_addr_0x005d7e40
.extern ?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x006e9d10
.extern _StartScript__7GScriptFPc@4
.extern ?StopHelpScripts@GScript@@QAEXXZ
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern ?GetScriptType@ScriptDLL@@QAEPAXK@Z
.extern _jmp_addr_0x0070d0f0
.extern _jmp_addr_0x00735330
.extern ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z
.extern _jmp_addr_0x00740ea0
.extern _jmp_addr_0x00746ee0
.extern _jmp_addr_0x007472b0
.extern ?IsVagrant@Villager@@QAE_NXZ
.extern _jmp_addr_0x00779b20
.extern _jmp_addr_0x0077f840
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ___RTDynamicCast
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern _wcscmp
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x00824b10
.extern ?RegisterFinishFrameCallback@LH3DRender@@QAEXK_NP6AXPAX@Z1@Z
.extern _jmp_addr_0x0082f3b0

.globl ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z
.globl ?RunMessage@HelpSystem@@QAEIKKPAD@Z
.globl _jmp_addr_0x005c8e60
.globl _jmp_addr_0x005c8fe0
.globl _jmp_addr_0x005c9090
.globl _jmp_addr_0x005c9300
.globl ?HelpQuery@HelpSystem@@QAEXXZ
.globl _jmp_addr_0x005c9a70
.globl _jmp_addr_0x005c9c60
.globl _jmp_addr_0x005cad00
.globl @__ct__8HelpTextFRC8LHRegion@12
.globl _jmp_addr_0x005cb000
.globl _jmp_addr_0x005cb010
.globl _jmp_addr_0x005cb020
.globl _jmp_addr_0x005cb090
.globl _jmp_addr_0x005cb0f0
.globl _jmp_addr_0x005cb120
.globl _jmp_addr_0x005cb190
.globl _jmp_addr_0x005cb1b0
.globl _jmp_addr_0x005cb1d0
.globl _jmp_addr_0x005cb200

.globl _globl_ct_0x005c8920
.globl _globl_ct_0x005c8950
.globl _globl_ct_0x005c8970
.globl _globl_ct_0x005c8a00
.globl _globl_ct_0x005c8a30
.globl _globl_ct_0x005c8a50
.globl _globl_ct_0x005c8f80
.globl _globl_ct_0x005c8fb0
.globl _globl_ct_0x005c9410
.globl _globl_ct_0x005c9440
.globl _globl_ct_0x005c9460
.globl _globl_ct_0x005c9940
.globl _globl_ct_0x005c9970
.globl _globl_ct_0x005c99a0
.globl _globl_ct_0x005caa80
.globl _globl_ct_0x005caab0
.globl _globl_ct_0x005caad0
.globl _globl_ct_0x005cab00
.globl _globl_ct_0x005caba0
.globl _globl_ct_0x005cac40
.globl _globl_ct_0x005cace0
.globl ?GetBaseInfo@GToolTipsInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGToolTipsInfo@@UAEPAXI@Z
.globl ??_GHelpText@@UAEPAXI@Z

start_0x005c8920_0x005cb2a0:
// Snippet: asm, [0x005c8920, 0x005cb264)
_globl_ct_0x005c8920:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005c8920    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005c8926    b001
                         test               al, cl                                        // 0x005c8928    84c8
                         {disp8} jne        _jmp_addr_0x005c8934                          // 0x005c892a    7508
                         or.s               cl, al                                        // 0x005c892c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005c892e    880d34c9fa00
_jmp_addr_0x005c8934:    {disp32} jmp       _jmp_addr_0x005c8940                          // 0x005c8934    e907000000
                         nop                                                              // 0x005c8939    90
                         nop                                                              // 0x005c893a    90
                         nop                                                              // 0x005c893b    90
                         nop                                                              // 0x005c893c    90
                         nop                                                              // 0x005c893d    90
                         nop                                                              // 0x005c893e    90
                         nop                                                              // 0x005c893f    90
_jmp_addr_0x005c8940:    push               0x00407870                                    // 0x005c8940    6870784000
                         call               _atexit                                       // 0x005c8945    e847ce1f00
                         pop                ecx                                           // 0x005c894a    59
                         ret                                                              // 0x005c894b    c3
                         nop                                                              // 0x005c894c    90
                         nop                                                              // 0x005c894d    90
                         nop                                                              // 0x005c894e    90
                         nop                                                              // 0x005c894f    90
_globl_ct_0x005c8950:    {disp32} jmp       _jmp_addr_0x005c8960                          // 0x005c8950    e90b000000
                         nop                                                              // 0x005c8955    90
                         nop                                                              // 0x005c8956    90
                         nop                                                              // 0x005c8957    90
                         nop                                                              // 0x005c8958    90
                         nop                                                              // 0x005c8959    90
                         nop                                                              // 0x005c895a    90
                         nop                                                              // 0x005c895b    90
                         nop                                                              // 0x005c895c    90
                         nop                                                              // 0x005c895d    90
                         nop                                                              // 0x005c895e    90
                         nop                                                              // 0x005c895f    90
_jmp_addr_0x005c8960:    {disp32} mov       dword ptr [data_bytes + 0x350398], 0xffffffff // 0x005c8960    c7059863d100ffffffff
                         ret                                                              // 0x005c896a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005c896b    e8898ee3ff
_globl_ct_0x005c8970:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005c8970    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005c8976    b001
                         test               al, cl                                        // 0x005c8978    84c8
                         {disp8} jne        _jmp_addr_0x005c8984                          // 0x005c897a    7508
                         or.s               cl, al                                        // 0x005c897c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005c897e    880d34c9fa00
_jmp_addr_0x005c8984:    {disp32} jmp       _jmp_addr_0x005c8990                          // 0x005c8984    e907000000
                         nop                                                              // 0x005c8989    90
                         nop                                                              // 0x005c898a    90
                         nop                                                              // 0x005c898b    90
                         nop                                                              // 0x005c898c    90
                         nop                                                              // 0x005c898d    90
                         nop                                                              // 0x005c898e    90
                         nop                                                              // 0x005c898f    90
_jmp_addr_0x005c8990:    push               0x00407870                                    // 0x005c8990    6870784000
                         call               _atexit                                       // 0x005c8995    e8f7cd1f00
                         pop                ecx                                           // 0x005c899a    59
                         ret                                                              // 0x005c899b    c3
                         nop                                                              // 0x005c899c    90
                         nop                                                              // 0x005c899d    90
                         nop                                                              // 0x005c899e    90
                         nop                                                              // 0x005c899f    90
                         push               ebx                                           // 0x005c89a0    53
                         push               esi                                           // 0x005c89a1    56
                         push               edi                                           // 0x005c89a2    57
                         mov.s              edi, ecx                                      // 0x005c89a3    8bf9
                         xor.s              ebx, ebx                                      // 0x005c89a5    33db
                         mov                esi, 0x00bf0d28                               // 0x005c89a7    be280dbf00
_jmp_addr_0x005c89ac:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005c89ac    8b4604
                         {disp8} mov        ecx, dword ptr [edi + eax * 0x4 + 0x30]       // 0x005c89af    8b4c8730
                         test               ecx, ecx                                      // 0x005c89b3    85c9
                         {disp8} je         _jmp_addr_0x005c89cc                          // 0x005c89b5    7415
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x814b0]        // 0x005c89b7    8b0db0a49200
                         mov                edx, dword ptr [esi]                          // 0x005c89bd    8b16
                         push               ecx                                           // 0x005c89bf    51
                         push               edx                                           // 0x005c89c0    52
                         mov.s              ecx, edi                                      // 0x005c89c1    8bcf
                         call               _jmp_addr_0x005c8e60                          // 0x005c89c3    e898040000
                         test               eax, eax                                      // 0x005c89c8    85c0
                         {disp8} jne        _jmp_addr_0x005c89de                          // 0x005c89ca    7512
_jmp_addr_0x005c89cc:    add                esi, 0x08                                     // 0x005c89cc    83c608
                         inc                ebx                                           // 0x005c89cf    43
                         cmp                esi, 0x00bf0d60                               // 0x005c89d0    81fe600dbf00
                         .byte              0x72, 0xd4// {disp8} jb _jmp_addr_0x005c89ac  // 0x005c89d6    72d4
                         pop                edi                                           // 0x005c89d8    5f
                         pop                esi                                           // 0x005c89d9    5e
                         xor.s              eax, eax                                      // 0x005c89da    33c0
                         pop                ebx                                           // 0x005c89dc    5b
                         ret                                                              // 0x005c89dd    c3
_jmp_addr_0x005c89de:    {disp32} mov       eax, dword ptr [ebx * 0x8 + 0x00bf0d28]       // 0x005c89de    8b04dd280dbf00
                         push               0x0                                           // 0x005c89e5    6a00
                         push               eax                                           // 0x005c89e7    50
                         mov.s              ecx, edi                                      // 0x005c89e8    8bcf
                         call               ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z                          // 0x005c89ea    e891010000
                         pop                edi                                           // 0x005c89ef    5f
                         pop                esi                                           // 0x005c89f0    5e
                         mov                eax, 0x00000001                               // 0x005c89f1    b801000000
                         pop                ebx                                           // 0x005c89f6    5b
                         ret                                                              // 0x005c89f7    c3
                         nop                                                              // 0x005c89f8    90
                         nop                                                              // 0x005c89f9    90
                         nop                                                              // 0x005c89fa    90
                         nop                                                              // 0x005c89fb    90
                         nop                                                              // 0x005c89fc    90
                         nop                                                              // 0x005c89fd    90
                         nop                                                              // 0x005c89fe    90
                         nop                                                              // 0x005c89ff    90
_globl_ct_0x005c8a00:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005c8a00    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005c8a06    b001
                         test               al, cl                                        // 0x005c8a08    84c8
                         {disp8} jne        _jmp_addr_0x005c8a14                          // 0x005c8a0a    7508
                         or.s               cl, al                                        // 0x005c8a0c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005c8a0e    880d34c9fa00
_jmp_addr_0x005c8a14:    {disp32} jmp       _jmp_addr_0x005c8a20                          // 0x005c8a14    e907000000
                         nop                                                              // 0x005c8a19    90
                         nop                                                              // 0x005c8a1a    90
                         nop                                                              // 0x005c8a1b    90
                         nop                                                              // 0x005c8a1c    90
                         nop                                                              // 0x005c8a1d    90
                         nop                                                              // 0x005c8a1e    90
                         nop                                                              // 0x005c8a1f    90
_jmp_addr_0x005c8a20:    push               0x00407870                                    // 0x005c8a20    6870784000
                         call               _atexit                                       // 0x005c8a25    e867cd1f00
                         pop                ecx                                           // 0x005c8a2a    59
                         ret                                                              // 0x005c8a2b    c3
                         nop                                                              // 0x005c8a2c    90
                         nop                                                              // 0x005c8a2d    90
                         nop                                                              // 0x005c8a2e    90
                         nop                                                              // 0x005c8a2f    90
_globl_ct_0x005c8a30:    {disp32} jmp       _jmp_addr_0x005c8a40                          // 0x005c8a30    e90b000000
                         nop                                                              // 0x005c8a35    90
                         nop                                                              // 0x005c8a36    90
                         nop                                                              // 0x005c8a37    90
                         nop                                                              // 0x005c8a38    90
                         nop                                                              // 0x005c8a39    90
                         nop                                                              // 0x005c8a3a    90
                         nop                                                              // 0x005c8a3b    90
                         nop                                                              // 0x005c8a3c    90
                         nop                                                              // 0x005c8a3d    90
                         nop                                                              // 0x005c8a3e    90
                         nop                                                              // 0x005c8a3f    90
_jmp_addr_0x005c8a40:    {disp32} mov       dword ptr [data_bytes + 0x3503a0], 0xffffffff // 0x005c8a40    c705a063d100ffffffff
                         ret                                                              // 0x005c8a4a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005c8a4b    e8a98de3ff
_globl_ct_0x005c8a50:    {disp32} jmp       _jmp_addr_0x005c8a60                          // 0x005c8a50    e90b000000
                         nop                                                              // 0x005c8a55    90
                         nop                                                              // 0x005c8a56    90
                         nop                                                              // 0x005c8a57    90
                         nop                                                              // 0x005c8a58    90
                         nop                                                              // 0x005c8a59    90
                         nop                                                              // 0x005c8a5a    90
                         nop                                                              // 0x005c8a5b    90
                         nop                                                              // 0x005c8a5c    90
                         nop                                                              // 0x005c8a5d    90
                         nop                                                              // 0x005c8a5e    90
                         nop                                                              // 0x005c8a5f    90
_jmp_addr_0x005c8a60:    {disp32} fld       dword ptr [rdata_bytes + 0x814b8]             // 0x005c8a60    d905b8a49200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x814b4]             // 0x005c8a66    d80db4a49200
                         {disp32} fstp      dword ptr [data_bytes + 0x35039c]             // 0x005c8a6c    d91d9c63d100
                         ret                                                              // 0x005c8a72    c3
                         nop                                                              // 0x005c8a73    90
                         nop                                                              // 0x005c8a74    90
                         nop                                                              // 0x005c8a75    90
                         nop                                                              // 0x005c8a76    90
                         nop                                                              // 0x005c8a77    90
                         nop                                                              // 0x005c8a78    90
                         nop                                                              // 0x005c8a79    90
                         nop                                                              // 0x005c8a7a    90
                         nop                                                              // 0x005c8a7b    90
                         nop                                                              // 0x005c8a7c    90
                         nop                                                              // 0x005c8a7d    90
                         nop                                                              // 0x005c8a7e    90
                         nop                                                              // 0x005c8a7f    90
_jmp_addr_0x005c8a80:    {disp32} mov       eax, dword ptr [_game]                        // 0x005c8a80    a15c19d000
                         push               esi                                           // 0x005c8a85    56
                         push               edi                                           // 0x005c8a86    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005c8a87    8b7c240c
                         mov.s              esi, ecx                                      // 0x005c8a8b    8bf1
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x005c8a8d    8b88405a2000
                         {disp8} mov        dword ptr [esi + edi * 0x4 + 0x78], ecx       // 0x005c8a93    894cbe78
                         lea                edx, dword ptr [edi + edi * 0x4]              // 0x005c8a97    8d14bf
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00bf0d6c]       // 0x005c8a9a    8b04956c0dbf00
                         push               eax                                           // 0x005c8aa1    50
                         mov.s              ecx, esi                                      // 0x005c8aa2    8bce
                         call               ?TriggerCategory@HelpSystem@@QAEXW4HELP_SET_CATEGORY@@@Z                          // 0x005c8aa4    e8d7f7ffff
                         {disp32} inc       dword ptr [esi + edi * 0x4 + 0x000002fc]      // 0x005c8aa9    ff84befc020000
                         {disp32} mov       dword ptr [esi + 0x0000055c], edi             // 0x005c8ab0    89be5c050000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c8ab6    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]             // 0x005c8abc    8b91405a2000
                         {disp32} mov       dword ptr [esi + 0x00000560], edx             // 0x005c8ac2    899660050000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8ac8    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250060]             // 0x005c8acd    8b8860002500
                         push               0x2a                                          // 0x005c8ad3    6a2a
                         call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z                          // 0x005c8ad5    e806bcffff
                         pop                edi                                           // 0x005c8ada    5f
                         pop                esi                                           // 0x005c8adb    5e
                         ret                0x0004                                        // 0x005c8adc    c20400
                         nop                                                              // 0x005c8adf    90
_jmp_addr_0x005c8ae0:    push               esi                                           // 0x005c8ae0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x005c8ae1    8b742408
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x005c8ae5    8d04b6
                         shl                eax, 2                                        // 0x005c8ae8    c1e002
                         {disp32} mov       edx, dword ptr [eax + 0x00bf0d68]             // 0x005c8aeb    8b90680dbf00
                         sub                edx, 0x00                                     // 0x005c8af1    83ea00
                         {disp8} je         _jmp_addr_0x005c8b56                          // 0x005c8af4    7460
                         dec                edx                                           // 0x005c8af6    4a
                         {disp8} je         _jmp_addr_0x005c8b40                          // 0x005c8af7    7447
                         dec                edx                                           // 0x005c8af9    4a
                         {disp8} jne        _jmp_addr_0x005c8b28                          // 0x005c8afa    752c
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x005c8afc    8b742414
                         test               esi, esi                                      // 0x005c8b00    85f6
                         {disp8} je         _jmp_addr_0x005c8b28                          // 0x005c8b02    7424
                         mov                eax, dword ptr [esi]                          // 0x005c8b04    8b06
                         mov.s              ecx, esi                                      // 0x005c8b06    8bce
                         call               dword ptr [eax + 0x4d8]                       // 0x005c8b08    ff90d8040000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005c8b0e    8b4c240c
                         mov                dword ptr [ecx], eax                          // 0x005c8b12    8901
                         mov                edx, dword ptr [esi]                          // 0x005c8b14    8b16
                         mov.s              ecx, esi                                      // 0x005c8b16    8bce
                         call               dword ptr [edx + 0x4dc]                       // 0x005c8b18    ff92dc040000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005c8b1e    8b4c2410
                         mov                dword ptr [ecx], eax                          // 0x005c8b22    8901
                         pop                esi                                           // 0x005c8b24    5e
                         ret                0x0010                                        // 0x005c8b25    c21000
_jmp_addr_0x005c8b28:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005c8b28    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005c8b2c    8b44240c
                         mov                dword ptr [edx], 0x00000000                   // 0x005c8b30    c70200000000
                         mov                dword ptr [eax], 0x00000000                   // 0x005c8b36    c70000000000
                         pop                esi                                           // 0x005c8b3c    5e
                         ret                0x0010                                        // 0x005c8b3d    c21000
_jmp_addr_0x005c8b40:    push               esi                                           // 0x005c8b40    56
                         call               _jmp_addr_0x005c8c10                          // 0x005c8b41    e8ca000000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005c8b46    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005c8b4a    8b54240c
                         mov                dword ptr [ecx], eax                          // 0x005c8b4e    8901
                         mov                dword ptr [edx], eax                          // 0x005c8b50    8902
                         pop                esi                                           // 0x005c8b52    5e
                         ret                0x0010                                        // 0x005c8b53    c21000
_jmp_addr_0x005c8b56:    {disp32} mov       ecx, dword ptr [eax + 0x00bf0d60]             // 0x005c8b56    8b88600dbf00
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005c8b5c    8b54240c
                         mov                dword ptr [edx], ecx                          // 0x005c8b60    890a
                         {disp32} mov       eax, dword ptr [eax + 0x00bf0d64]             // 0x005c8b62    8b80640dbf00
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005c8b68    8b4c2410
                         mov                dword ptr [ecx], eax                          // 0x005c8b6c    8901
                         pop                esi                                           // 0x005c8b6e    5e
                         ret                0x0010                                        // 0x005c8b6f    c21000
                         nop                                                              // 0x005c8b72    90
                         nop                                                              // 0x005c8b73    90
                         nop                                                              // 0x005c8b74    90
                         nop                                                              // 0x005c8b75    90
                         nop                                                              // 0x005c8b76    90
                         nop                                                              // 0x005c8b77    90
                         nop                                                              // 0x005c8b78    90
                         nop                                                              // 0x005c8b79    90
                         nop                                                              // 0x005c8b7a    90
                         nop                                                              // 0x005c8b7b    90
                         nop                                                              // 0x005c8b7c    90
                         nop                                                              // 0x005c8b7d    90
                         nop                                                              // 0x005c8b7e    90
                         nop                                                              // 0x005c8b7f    90
?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z:
                         sub                esp, 0x08                                     // 0x005c8b80    83ec08
                         push               edi                                           // 0x005c8b83    57
                         mov.s              edi, ecx                                      // 0x005c8b84    8bf9
                         call               ?StopRunningScripts@HelpSystem@@QAEIXZ        // 0x005c8b86    e8f5000000
                         test               eax, eax                                      // 0x005c8b8b    85c0
                         {disp8} je         _jmp_addr_0x005c8c05                          // 0x005c8b8d    7476
                         push               ebx                                           // 0x005c8b8f    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x005c8b90    8b5c2414
                         push               esi                                           // 0x005c8b94    56
                         push               ebx                                           // 0x005c8b95    53
                         mov.s              ecx, edi                                      // 0x005c8b96    8bcf
                         call               _jmp_addr_0x005c8a80                          // 0x005c8b98    e8e3feffff
                         lea                esi, dword ptr [ebx + ebx * 0x4]              // 0x005c8b9d    8d349b
                         shl                esi, 2                                        // 0x005c8ba0    c1e602
                         cmp                dword ptr [esi + 0x00bf0d68], 0x03            // 0x005c8ba3    83be680dbf0003
                         {disp8} je         _jmp_addr_0x005c8be9                          // 0x005c8baa    743d
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005c8bac    8b44241c
                         push               eax                                           // 0x005c8bb0    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x005c8bb1    8d4c2410
                         push               ecx                                           // 0x005c8bb5    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x005c8bb6    8d542418
                         push               edx                                           // 0x005c8bba    52
                         push               ebx                                           // 0x005c8bbb    53
                         mov.s              ecx, edi                                      // 0x005c8bbc    8bcf
                         call               _jmp_addr_0x005c8ae0                          // 0x005c8bbe    e81dffffff
                         {disp32} mov       eax, dword ptr [esi + 0x00bf0d70]             // 0x005c8bc3    8b86700dbf00
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x005c8bc9    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005c8bcd    8b542410
                         push               eax                                           // 0x005c8bd1    50
                         push               ecx                                           // 0x005c8bd2    51
                         push               edx                                           // 0x005c8bd3    52
                         mov.s              ecx, edi                                      // 0x005c8bd4    8bcf
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c8bd6    e805010000
                         pop                esi                                           // 0x005c8bdb    5e
                         pop                ebx                                           // 0x005c8bdc    5b
                         mov                eax, 0x00000001                               // 0x005c8bdd    b801000000
                         pop                edi                                           // 0x005c8be2    5f
                         add                esp, 0x08                                     // 0x005c8be3    83c408
                         ret                0x0008                                        // 0x005c8be6    c20800
_jmp_addr_0x005c8be9:    {disp32} mov       eax, dword ptr [esi + 0x00bf0d70]             // 0x005c8be9    8b86700dbf00
                         push               eax                                           // 0x005c8bef    50
                         mov.s              ecx, edi                                      // 0x005c8bf0    8bcf
                         call               _jmp_addr_0x005c8c90                          // 0x005c8bf2    e899000000
                         pop                esi                                           // 0x005c8bf7    5e
                         pop                ebx                                           // 0x005c8bf8    5b
                         mov                eax, 0x00000001                               // 0x005c8bf9    b801000000
                         pop                edi                                           // 0x005c8bfe    5f
                         add                esp, 0x08                                     // 0x005c8bff    83c408
                         ret                0x0008                                        // 0x005c8c02    c20800
_jmp_addr_0x005c8c05:    xor.s              eax, eax                                      // 0x005c8c05    33c0
                         pop                edi                                           // 0x005c8c07    5f
                         add                esp, 0x08                                     // 0x005c8c08    83c408
                         ret                0x0008                                        // 0x005c8c0b    c20800
                         nop                                                              // 0x005c8c0e    90
                         nop                                                              // 0x005c8c0f    90
_jmp_addr_0x005c8c10:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005c8c10    8b442404
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005c8c14    8d0480
                         shl                eax, 2                                        // 0x005c8c17    c1e002
                         push               esi                                           // 0x005c8c1a    56
                         {disp32} mov       esi, dword ptr [eax + 0x00bf0d60]             // 0x005c8c1b    8bb0600dbf00
                         {disp32} mov       eax, dword ptr [eax + 0x00bf0d64]             // 0x005c8c21    8b80640dbf00
                         sub.s              eax, esi                                      // 0x005c8c27    2bc6
                         inc                eax                                           // 0x005c8c29    40
                         push               eax                                           // 0x005c8c2a    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x005c8c2b    e840591100
                         add                esp, 0x04                                     // 0x005c8c30    83c404
                         add.s              eax, esi                                      // 0x005c8c33    03c6
                         pop                esi                                           // 0x005c8c35    5e
                         ret                0x0004                                        // 0x005c8c36    c20400
                         nop                                                              // 0x005c8c39    90
                         nop                                                              // 0x005c8c3a    90
                         nop                                                              // 0x005c8c3b    90
                         nop                                                              // 0x005c8c3c    90
                         nop                                                              // 0x005c8c3d    90
                         nop                                                              // 0x005c8c3e    90
                         nop                                                              // 0x005c8c3f    90
?StopHelpScriptsForNewHelp@HelpSystem@@QAEIXZ:
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8c40    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x005c8c45    8b885c002500
                         {disp32} mov       eax, dword ptr [ecx + 0x000045cc]             // 0x005c8c4b    8b81cc450000
                         test               eax, eax                                      // 0x005c8c51    85c0
                         {disp8} je         _jmp_addr_0x005c8c68                          // 0x005c8c53    7413
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x005c8c55    8b0d105cd900
                         push               eax                                           // 0x005c8c5b    50
                         call               ?GetScriptType@ScriptDLL@@QAEPAXK@Z           // 0x005c8c5c    e8efdf1200
                         test               al, 0x42                                      // 0x005c8c61    a842
                         {disp8} jne        _jmp_addr_0x005c8c68                          // 0x005c8c63    7503
                         xor.s              eax, eax                                      // 0x005c8c65    33c0
                         ret                                                              // 0x005c8c67    c3
_jmp_addr_0x005c8c68:    call               ?StopHelpScripts@GScript@@QAEXXZ              // 0x005c8c68    e8133b1200
                         mov                eax, 0x00000001                               // 0x005c8c6d    b801000000
                         ret                                                              // 0x005c8c72    c3
                         nop                                                              // 0x005c8c73    90
                         nop                                                              // 0x005c8c74    90
                         nop                                                              // 0x005c8c75    90
                         nop                                                              // 0x005c8c76    90
                         nop                                                              // 0x005c8c77    90
                         nop                                                              // 0x005c8c78    90
                         nop                                                              // 0x005c8c79    90
                         nop                                                              // 0x005c8c7a    90
                         nop                                                              // 0x005c8c7b    90
                         nop                                                              // 0x005c8c7c    90
                         nop                                                              // 0x005c8c7d    90
                         nop                                                              // 0x005c8c7e    90
                         nop                                                              // 0x005c8c7f    90
?StopRunningScripts@HelpSystem@@QAEIXZ:
                         {disp32} jmp       ?StopHelpScriptsForNewHelp@HelpSystem@@QAEIXZ // 0x005c8c80    e9bbffffff
                         nop                                                              // 0x005c8c85    90
                         nop                                                              // 0x005c8c86    90
                         nop                                                              // 0x005c8c87    90
                         nop                                                              // 0x005c8c88    90
                         nop                                                              // 0x005c8c89    90
                         nop                                                              // 0x005c8c8a    90
                         nop                                                              // 0x005c8c8b    90
                         nop                                                              // 0x005c8c8c    90
                         nop                                                              // 0x005c8c8d    90
                         nop                                                              // 0x005c8c8e    90
                         nop                                                              // 0x005c8c8f    90
_jmp_addr_0x005c8c90:    push               esi                                           // 0x005c8c90    56
                         mov.s              esi, ecx                                      // 0x005c8c91    8bf1
                         call               ?StopRunningScripts@HelpSystem@@QAEIXZ        // 0x005c8c93    e8e8ffffff
                         test               eax, eax                                      // 0x005c8c98    85c0
                         {disp8} je         _jmp_addr_0x005c8ccb                          // 0x005c8c9a    742f
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8c9c    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x005c8ca1    8b88405a2000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005c8ca7    8b542408
                         {disp32} mov       dword ptr [esi + 0x00000560], ecx             // 0x005c8cab    898e60050000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8cb1    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x005c8cb6    8b8890002500
                         push               edx                                           // 0x005c8cbc    52
                         call               _StartScript__7GScriptFPc@4                   // 0x005c8cbd    e84e2a1200
                         mov                eax, 0x00000001                               // 0x005c8cc2    b801000000
                         pop                esi                                           // 0x005c8cc7    5e
                         ret                0x0004                                        // 0x005c8cc8    c20400
_jmp_addr_0x005c8ccb:    xor.s              eax, eax                                      // 0x005c8ccb    33c0
                         pop                esi                                           // 0x005c8ccd    5e
                         ret                0x0004                                        // 0x005c8cce    c20400
                         nop                                                              // 0x005c8cd1    90
                         nop                                                              // 0x005c8cd2    90
                         nop                                                              // 0x005c8cd3    90
                         nop                                                              // 0x005c8cd4    90
                         nop                                                              // 0x005c8cd5    90
                         nop                                                              // 0x005c8cd6    90
                         nop                                                              // 0x005c8cd7    90
                         nop                                                              // 0x005c8cd8    90
                         nop                                                              // 0x005c8cd9    90
                         nop                                                              // 0x005c8cda    90
                         nop                                                              // 0x005c8cdb    90
                         nop                                                              // 0x005c8cdc    90
                         nop                                                              // 0x005c8cdd    90
                         nop                                                              // 0x005c8cde    90
                         nop                                                              // 0x005c8cdf    90
?RunMessage@HelpSystem@@QAEIKKPAD@Z:
                         sub                esp, 0x08                                     // 0x005c8ce0    83ec08
                         push               ebx                                           // 0x005c8ce3    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x005c8ce4    8b5c2414
                         push               esi                                           // 0x005c8ce8    56
                         push               edi                                           // 0x005c8ce9    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005c8cea    8b7c2418
                         cmp.s              edi, ebx                                      // 0x005c8cee    3bfb
                         mov.s              esi, ecx                                      // 0x005c8cf0    8bf1
                         {disp32} ja        _jmp_addr_0x005c8d7c                          // 0x005c8cf2    0f8784000000
                         call               ?StopRunningScripts@HelpSystem@@QAEIXZ        // 0x005c8cf8    e883ffffff
                         test               eax, eax                                      // 0x005c8cfd    85c0
                         {disp8} je         _jmp_addr_0x005c8d7c                          // 0x005c8cff    747b
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8d01    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x005c8d06    8b88405a2000
                         {disp32} mov       dword ptr [esi + 0x00000560], ecx             // 0x005c8d0c    898e60050000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x005c8d12    8b0d105cd900
                         xor.s              esi, esi                                      // 0x005c8d18    33f6
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x005c8d1a    897c240c
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005c8d1e    89742410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x005c8d22    df6c240c
                         push               0x2                                           // 0x005c8d26    6a02
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005c8d28    d95c241c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005c8d2c    8b54241c
                         push               edx                                           // 0x005c8d30    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x005c8d31    e86ade1200
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x005c8d36    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x005c8d3c    895c240c
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005c8d40    89742410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x005c8d44    df6c240c
                         push               0x2                                           // 0x005c8d48    6a02
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005c8d4a    d95c241c
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005c8d4e    8b44241c
                         push               eax                                           // 0x005c8d52    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x005c8d53    e848de1200
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005c8d58    8b4c2420
                         {disp32} mov       edx, dword ptr [_game]                        // 0x005c8d5c    8b155c19d000
                         push               ecx                                           // 0x005c8d62    51
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x005c8d63    8b8a90002500
                         call               _StartScript__7GScriptFPc@4                   // 0x005c8d69    e8a2291200
                         pop                edi                                           // 0x005c8d6e    5f
                         pop                esi                                           // 0x005c8d6f    5e
                         mov                eax, 0x00000001                               // 0x005c8d70    b801000000
                         pop                ebx                                           // 0x005c8d75    5b
                         add                esp, 0x08                                     // 0x005c8d76    83c408
                         ret                0x000c                                        // 0x005c8d79    c20c00
_jmp_addr_0x005c8d7c:    pop                edi                                           // 0x005c8d7c    5f
                         pop                esi                                           // 0x005c8d7d    5e
                         xor.s              eax, eax                                      // 0x005c8d7e    33c0
                         pop                ebx                                           // 0x005c8d80    5b
                         add                esp, 0x08                                     // 0x005c8d81    83c408
                         ret                0x000c                                        // 0x005c8d84    c20c00
                         nop                                                              // 0x005c8d87    90
                         nop                                                              // 0x005c8d88    90
                         nop                                                              // 0x005c8d89    90
                         nop                                                              // 0x005c8d8a    90
                         nop                                                              // 0x005c8d8b    90
                         nop                                                              // 0x005c8d8c    90
                         nop                                                              // 0x005c8d8d    90
                         nop                                                              // 0x005c8d8e    90
                         nop                                                              // 0x005c8d8f    90
                         sub                esp, 0x08                                     // 0x005c8d90    83ec08
                         push               ebx                                           // 0x005c8d93    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x005c8d94    8b5c2414
                         push               esi                                           // 0x005c8d98    56
                         push               edi                                           // 0x005c8d99    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005c8d9a    8b7c2418
                         cmp.s              edi, ebx                                      // 0x005c8d9e    3bfb
                         mov.s              esi, ecx                                      // 0x005c8da0    8bf1
                         {disp32} ja        _jmp_addr_0x005c8e4b                          // 0x005c8da2    0f87a3000000
                         call               ?StopRunningScripts@HelpSystem@@QAEIXZ        // 0x005c8da8    e8d3feffff
                         test               eax, eax                                      // 0x005c8dad    85c0
                         {disp32} je        _jmp_addr_0x005c8e4b                          // 0x005c8daf    0f8496000000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8db5    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a40]             // 0x005c8dba    8b88405a2000
                         {disp32} mov       dword ptr [esi + 0x00000560], ecx             // 0x005c8dc0    898e60050000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x005c8dc6    8b0d105cd900
                         xor.s              esi, esi                                      // 0x005c8dcc    33f6
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x005c8dce    897c240c
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005c8dd2    89742410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x005c8dd6    df6c240c
                         push               0x2                                           // 0x005c8dda    6a02
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005c8ddc    d95c241c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005c8de0    8b54241c
                         push               edx                                           // 0x005c8de4    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x005c8de5    e8b6dd1200
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x005c8dea    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x005c8df0    895c240c
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x005c8df4    89742410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x005c8df8    df6c240c
                         push               0x2                                           // 0x005c8dfc    6a02
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005c8dfe    d95c241c
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005c8e02    8b44241c
                         push               eax                                           // 0x005c8e06    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x005c8e07    e894dd1200
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005c8e0c    8b4c2420
                         push               esi                                           // 0x005c8e10    56
                         push               ecx                                           // 0x005c8e11    51
                         call               _jmp_addr_0x0070d0f0                          // 0x005c8e12    e8d9421400
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x005c8e17    8b0d105cd900
                         add                esp, 0x08                                     // 0x005c8e1d    83c408
                         push               0x4                                           // 0x005c8e20    6a04
                         push               eax                                           // 0x005c8e22    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x005c8e23    e878dd1200
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005c8e28    8b542424
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8e2c    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x005c8e31    8b8890002500
                         push               edx                                           // 0x005c8e37    52
                         call               _StartScript__7GScriptFPc@4                   // 0x005c8e38    e8d3281200
                         pop                edi                                           // 0x005c8e3d    5f
                         pop                esi                                           // 0x005c8e3e    5e
                         mov                eax, 0x00000001                               // 0x005c8e3f    b801000000
                         pop                ebx                                           // 0x005c8e44    5b
                         add                esp, 0x08                                     // 0x005c8e45    83c408
                         ret                0x0010                                        // 0x005c8e48    c21000
_jmp_addr_0x005c8e4b:    pop                edi                                           // 0x005c8e4b    5f
                         pop                esi                                           // 0x005c8e4c    5e
                         xor.s              eax, eax                                      // 0x005c8e4d    33c0
                         pop                ebx                                           // 0x005c8e4f    5b
                         add                esp, 0x08                                     // 0x005c8e50    83c408
                         ret                0x0010                                        // 0x005c8e53    c21000
                         nop                                                              // 0x005c8e56    90
                         nop                                                              // 0x005c8e57    90
                         nop                                                              // 0x005c8e58    90
                         nop                                                              // 0x005c8e59    90
                         nop                                                              // 0x005c8e5a    90
                         nop                                                              // 0x005c8e5b    90
                         nop                                                              // 0x005c8e5c    90
                         nop                                                              // 0x005c8e5d    90
                         nop                                                              // 0x005c8e5e    90
                         nop                                                              // 0x005c8e5f    90
_jmp_addr_0x005c8e60:    sub                esp, 0x08                                     // 0x005c8e60    83ec08
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8e63    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]             // 0x005c8e68    8b90405a2000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005c8e6e    8b44240c
                         push               esi                                           // 0x005c8e72    56
                         {disp8} mov        esi, dword ptr [ecx + eax * 0x4 + 0x78]       // 0x005c8e73    8b748178
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33ba38]        // 0x005c8e77    8b0d381ad000
                         sub.s              edx, esi                                      // 0x005c8e7d    2bd6
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005c8e7f    89542410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x005c8e83    db442410
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x005c8e87    894c2404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x005c8e8b    c744240800000000
                         {disp8} fimul      dword ptr [esp + 0x04]                        // 0x005c8e93    da4c2404
                         pop                esi                                           // 0x005c8e97    5e
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x005c8e98    d80db0a38a00
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x005c8e9e    d85c2410
                         fnstsw             ax                                            // 0x005c8ea2    dfe0
                         test               ah, 0x41                                      // 0x005c8ea4    f6c441
                         {disp8} jne        _jmp_addr_0x005c8eb4                          // 0x005c8ea7    750b
                         mov                eax, 0x00000001                               // 0x005c8ea9    b801000000
                         add                esp, 0x08                                     // 0x005c8eae    83c408
                         ret                0x0008                                        // 0x005c8eb1    c20800
_jmp_addr_0x005c8eb4:    xor.s              eax, eax                                      // 0x005c8eb4    33c0
                         add                esp, 0x08                                     // 0x005c8eb6    83c408
                         ret                0x0008                                        // 0x005c8eb9    c20800
                         nop                                                              // 0x005c8ebc    90
                         nop                                                              // 0x005c8ebd    90
                         nop                                                              // 0x005c8ebe    90
                         nop                                                              // 0x005c8ebf    90
_jmp_addr_0x005c8ec0:    sub                esp, 0x08                                     // 0x005c8ec0    83ec08
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8ec3    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]             // 0x005c8ec8    8b90405a2000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005c8ece    8b44240c
                         push               esi                                           // 0x005c8ed2    56
                         {disp32} mov       esi, dword ptr [ecx + eax * 0x4 + 0x000002d8] // 0x005c8ed3    8bb481d8020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33ba38]        // 0x005c8eda    8b0d381ad000
                         sub.s              edx, esi                                      // 0x005c8ee0    2bd6
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005c8ee2    89542410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x005c8ee6    db442410
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x005c8eea    894c2404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x005c8eee    c744240800000000
                         {disp8} fimul      dword ptr [esp + 0x04]                        // 0x005c8ef6    da4c2404
                         pop                esi                                           // 0x005c8efa    5e
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x005c8efb    d80db0a38a00
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x005c8f01    d85c2410
                         fnstsw             ax                                            // 0x005c8f05    dfe0
                         test               ah, 0x41                                      // 0x005c8f07    f6c441
                         {disp8} jne        _jmp_addr_0x005c8f17                          // 0x005c8f0a    750b
                         mov                eax, 0x00000001                               // 0x005c8f0c    b801000000
                         add                esp, 0x08                                     // 0x005c8f11    83c408
                         ret                0x0008                                        // 0x005c8f14    c20800
_jmp_addr_0x005c8f17:    xor.s              eax, eax                                      // 0x005c8f17    33c0
                         add                esp, 0x08                                     // 0x005c8f19    83c408
                         ret                0x0008                                        // 0x005c8f1c    c20800
                         nop                                                              // 0x005c8f1f    90
                         sub                esp, 0x08                                     // 0x005c8f20    83ec08
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c8f23    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]             // 0x005c8f28    8b90405a2000
                         sub                edx, dword ptr [ecx + 0x00000560]             // 0x005c8f2e    2b9160050000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x33ba38]        // 0x005c8f34    a1381ad000
                         {disp8} mov        dword ptr [esp + 0x00], edx                   // 0x005c8f39    89542400
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x005c8f3d    db442400
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x005c8f41    89442400
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x005c8f45    c744240400000000
                         {disp8} fimul      dword ptr [esp + 0x00]                        // 0x005c8f4d    da4c2400
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x005c8f51    d80db0a38a00
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x005c8f57    d85c240c
                         fnstsw             ax                                            // 0x005c8f5b    dfe0
                         test               ah, 0x41                                      // 0x005c8f5d    f6c441
                         {disp8} jne        _jmp_addr_0x005c8f6d                          // 0x005c8f60    750b
                         mov                eax, 0x00000001                               // 0x005c8f62    b801000000
                         add                esp, 0x08                                     // 0x005c8f67    83c408
                         ret                0x0004                                        // 0x005c8f6a    c20400
_jmp_addr_0x005c8f6d:    xor.s              eax, eax                                      // 0x005c8f6d    33c0
                         add                esp, 0x08                                     // 0x005c8f6f    83c408
                         ret                0x0004                                        // 0x005c8f72    c20400
                         nop                                                              // 0x005c8f75    90
                         nop                                                              // 0x005c8f76    90
                         nop                                                              // 0x005c8f77    90
                         nop                                                              // 0x005c8f78    90
                         nop                                                              // 0x005c8f79    90
                         nop                                                              // 0x005c8f7a    90
                         nop                                                              // 0x005c8f7b    90
                         nop                                                              // 0x005c8f7c    90
                         nop                                                              // 0x005c8f7d    90
                         nop                                                              // 0x005c8f7e    90
                         nop                                                              // 0x005c8f7f    90
_globl_ct_0x005c8f80:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005c8f80    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005c8f86    b001
                         test               al, cl                                        // 0x005c8f88    84c8
                         {disp8} jne        _jmp_addr_0x005c8f94                          // 0x005c8f8a    7508
                         or.s               cl, al                                        // 0x005c8f8c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005c8f8e    880d34c9fa00
_jmp_addr_0x005c8f94:    {disp32} jmp       _jmp_addr_0x005c8fa0                          // 0x005c8f94    e907000000
                         nop                                                              // 0x005c8f99    90
                         nop                                                              // 0x005c8f9a    90
                         nop                                                              // 0x005c8f9b    90
                         nop                                                              // 0x005c8f9c    90
                         nop                                                              // 0x005c8f9d    90
                         nop                                                              // 0x005c8f9e    90
                         nop                                                              // 0x005c8f9f    90
_jmp_addr_0x005c8fa0:    push               0x00407870                                    // 0x005c8fa0    6870784000
                         call               _atexit                                       // 0x005c8fa5    e8e7c71f00
                         pop                ecx                                           // 0x005c8faa    59
                         ret                                                              // 0x005c8fab    c3
                         nop                                                              // 0x005c8fac    90
                         nop                                                              // 0x005c8fad    90
                         nop                                                              // 0x005c8fae    90
                         nop                                                              // 0x005c8faf    90
_globl_ct_0x005c8fb0:    {disp32} jmp       _jmp_addr_0x005c8fc0                          // 0x005c8fb0    e90b000000
                         nop                                                              // 0x005c8fb5    90
                         nop                                                              // 0x005c8fb6    90
                         nop                                                              // 0x005c8fb7    90
                         nop                                                              // 0x005c8fb8    90
                         nop                                                              // 0x005c8fb9    90
                         nop                                                              // 0x005c8fba    90
                         nop                                                              // 0x005c8fbb    90
                         nop                                                              // 0x005c8fbc    90
                         nop                                                              // 0x005c8fbd    90
                         nop                                                              // 0x005c8fbe    90
                         nop                                                              // 0x005c8fbf    90
_jmp_addr_0x005c8fc0:    {disp32} fld       dword ptr [rdata_bytes + 0x814c8]             // 0x005c8fc0    d905c8a49200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x814c4]             // 0x005c8fc6    d80dc4a49200
                         {disp32} fstp      dword ptr [data_bytes + 0x3503ac]             // 0x005c8fcc    d91dac63d100
                         ret                                                              // 0x005c8fd2    c3
                         nop                                                              // 0x005c8fd3    90
                         nop                                                              // 0x005c8fd4    90
                         nop                                                              // 0x005c8fd5    90
                         nop                                                              // 0x005c8fd6    90
                         nop                                                              // 0x005c8fd7    90
                         nop                                                              // 0x005c8fd8    90
                         nop                                                              // 0x005c8fd9    90
                         nop                                                              // 0x005c8fda    90
                         nop                                                              // 0x005c8fdb    90
                         nop                                                              // 0x005c8fdc    90
                         nop                                                              // 0x005c8fdd    90
                         nop                                                              // 0x005c8fde    90
                         nop                                                              // 0x005c8fdf    90
_jmp_addr_0x005c8fe0:    push               esi                                           // 0x005c8fe0    56
                         mov.s              esi, ecx                                      // 0x005c8fe1    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c8fe3    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005c8fe9    e862c8f8ff
                         mov.s              ecx, eax                                      // 0x005c8fee    8bc8
                         call               _jmp_addr_0x005d7e40                          // 0x005c8ff0    e84bee0000
                         mov.s              ecx, esi                                      // 0x005c8ff5    8bce
                         {disp32} mov       dword ptr [esi + 0x00000578], 0x00000000      // 0x005c8ff7    c7867805000000000000
                         call               _jmp_addr_0x005c5e50                          // 0x005c9001    e84aceffff
                         mov.s              ecx, esi                                      // 0x005c9006    8bce
                         call               _jmp_addr_0x005c9060                          // 0x005c9008    e853000000
                         mov.s              ecx, esi                                      // 0x005c900d    8bce
                         call               _jmp_addr_0x005c9d00                          // 0x005c900f    e8ec0c0000
                         mov.s              ecx, esi                                      // 0x005c9014    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x351bdc], 0x00000000 // 0x005c9016    c705dc7bd10000000000
                         call               _jmp_addr_0x005c82f0                          // 0x005c9020    e8cbf2ffff
                         {disp32} mov       eax, dword ptr [esi + 0x000045f8]             // 0x005c9025    8b86f8450000
                         test               eax, eax                                      // 0x005c902b    85c0
                         {disp8} je         _jmp_addr_0x005c9050                          // 0x005c902d    7421
                         {disp32} mov       eax, dword ptr [esi + 0x000045f4]             // 0x005c902f    8b86f4450000
                         xor.s              ecx, ecx                                      // 0x005c9035    33c9
                         test               eax, eax                                      // 0x005c9037    85c0
                         setne              cl                                            // 0x005c9039    0f95c1
                         mov.s              eax, ecx                                      // 0x005c903c    8bc1
                         test               eax, eax                                      // 0x005c903e    85c0
                         {disp8} je         _jmp_addr_0x005c9050                          // 0x005c9040    740e
                         mov.s              ecx, esi                                      // 0x005c9042    8bce
                         call               _jmp_addr_0x005c86b0                          // 0x005c9044    e867f6ffff
                         mov.s              ecx, esi                                      // 0x005c9049    8bce
                         call               _jmp_addr_0x005c81c0                          // 0x005c904b    e870f1ffff
_jmp_addr_0x005c9050:    pop                esi                                           // 0x005c9050    5e
                         ret                                                              // 0x005c9051    c3
                         nop                                                              // 0x005c9052    90
                         nop                                                              // 0x005c9053    90
                         nop                                                              // 0x005c9054    90
                         nop                                                              // 0x005c9055    90
                         nop                                                              // 0x005c9056    90
                         nop                                                              // 0x005c9057    90
                         nop                                                              // 0x005c9058    90
                         nop                                                              // 0x005c9059    90
                         nop                                                              // 0x005c905a    90
                         nop                                                              // 0x005c905b    90
                         nop                                                              // 0x005c905c    90
                         nop                                                              // 0x005c905d    90
                         nop                                                              // 0x005c905e    90
                         nop                                                              // 0x005c905f    90
_jmp_addr_0x005c9060:    push               esi                                           // 0x005c9060    56
                         mov.s              esi, ecx                                      // 0x005c9061    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x005c9063    8b4e08
                         test               ecx, ecx                                      // 0x005c9066    85c9
                         {disp8} je         _jmp_addr_0x005c9072                          // 0x005c9068    7408
                         mov                eax, dword ptr [ecx]                          // 0x005c906a    8b01
                         call               dword ptr [eax + 0x5fc]                       // 0x005c906c    ff90fc050000
_jmp_addr_0x005c9072:    {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x005c9072    8b4e0c
                         test               ecx, ecx                                      // 0x005c9075    85c9
                         pop                esi                                           // 0x005c9077    5e
                         {disp8} je         _jmp_addr_0x005c9082                          // 0x005c9078    7408
                         mov                edx, dword ptr [ecx]                          // 0x005c907a    8b11
                         jmp                dword ptr [edx + 0x5fc]                       // 0x005c907c    ffa2fc050000
_jmp_addr_0x005c9082:    ret                                                              // 0x005c9082    c3
                         nop                                                              // 0x005c9083    90
                         nop                                                              // 0x005c9084    90
                         nop                                                              // 0x005c9085    90
                         nop                                                              // 0x005c9086    90
                         nop                                                              // 0x005c9087    90
                         nop                                                              // 0x005c9088    90
                         nop                                                              // 0x005c9089    90
                         nop                                                              // 0x005c908a    90
                         nop                                                              // 0x005c908b    90
                         nop                                                              // 0x005c908c    90
                         nop                                                              // 0x005c908d    90
                         nop                                                              // 0x005c908e    90
                         nop                                                              // 0x005c908f    90
_jmp_addr_0x005c9090:    sub                esp, 0x30                                     // 0x005c9090    83ec30
                         push               esi                                           // 0x005c9093    56
                         push               edi                                           // 0x005c9094    57
                         mov.s              edi, ecx                                      // 0x005c9095    8bf9
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3503a8]          // 0x005c9097    8a0da863d100
                         mov                al, 0x01                                      // 0x005c909d    b001
                         test               al, cl                                        // 0x005c909f    84c8
                         {disp8} jne        _jmp_addr_0x005c90b5                          // 0x005c90a1    7512
                         or.s               cl, al                                        // 0x005c90a3    0ac8
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x814c0]        // 0x005c90a5    a1c0a49200
                         {disp32} mov       byte ptr [data_bytes + 0x3503a8], cl          // 0x005c90aa    880da863d100
                         {disp32} mov       dword ptr [data_bytes + 0x3503a4], eax        // 0x005c90b0    a3a463d100
_jmp_addr_0x005c90b5:    {disp32} mov       eax, dword ptr [edi + 0x00000578]             // 0x005c90b5    8b8778050000
                         test               eax, eax                                      // 0x005c90bb    85c0
                         {disp32} jne       _jmp_addr_0x005c92dc                          // 0x005c90bd    0f8519020000
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005c90c3    d9442440
                         {disp32} fcomp     dword ptr [data_bytes + 0x350170]             // 0x005c90c7    d81d7061d100
                         fnstsw             ax                                            // 0x005c90cd    dfe0
                         test               ah, 0x01                                      // 0x005c90cf    f6c401
                         {disp32} je        _jmp_addr_0x005c92dc                          // 0x005c90d2    0f8404020000
                         {disp32} mov       eax, dword ptr [edi + 0x00000568]             // 0x005c90d8    8b8768050000
                         test               eax, eax                                      // 0x005c90de    85c0
                         {disp8} je         _jmp_addr_0x005c90f7                          // 0x005c90e0    7415
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x005c90e2    d9442440
                         {disp32} fcomp     dword ptr [edi + 0x00000570]                  // 0x005c90e6    d89f70050000
                         fnstsw             ax                                            // 0x005c90ec    dfe0
                         test               ah, 0x01                                      // 0x005c90ee    f6c401
                         {disp32} je        _jmp_addr_0x005c92dc                          // 0x005c90f1    0f84e5010000
_jmp_addr_0x005c90f7:    {disp8} mov        esi, dword ptr [esp + 0x3c]                   // 0x005c90f7    8b74243c
                         mov                edx, dword ptr [esi]                          // 0x005c90fb    8b16
                         mov.s              ecx, esi                                      // 0x005c90fd    8bce
                         call               dword ptr [edx + 0x4e0]                       // 0x005c90ff    ff92e0040000
                         test               eax, eax                                      // 0x005c9105    85c0
                         {disp32} je        _jmp_addr_0x005c92dc                          // 0x005c9107    0f84cf010000
                         mov                eax, dword ptr [esi]                          // 0x005c910d    8b06
                         mov.s              ecx, esi                                      // 0x005c910f    8bce
                         call               dword ptr [eax + 0x4e4]                       // 0x005c9111    ff90e4040000
                         mov                edx, dword ptr [esi]                          // 0x005c9117    8b16
                         push               eax                                           // 0x005c9119    50
                         mov.s              ecx, esi                                      // 0x005c911a    8bce
                         call               dword ptr [edx + 0x4e0]                       // 0x005c911c    ff92e0040000
                         push               eax                                           // 0x005c9122    50
                         push               esi                                           // 0x005c9123    56
                         mov.s              ecx, edi                                      // 0x005c9124    8bcf
                         call               _jmp_addr_0x005c8720                          // 0x005c9126    e8f5f5ffff
                         test               eax, eax                                      // 0x005c912b    85c0
                         {disp32} je        _jmp_addr_0x005c92dc                          // 0x005c912d    0f84a9010000
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x005c9133    8b461c
                         push               ebx                                           // 0x005c9136    53
                         {disp8} lea        ebx, dword ptr [esi + 0x14]                   // 0x005c9137    8d5e14
                         mov.s              ecx, ebx                                      // 0x005c913a    8bcb
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x005c913c    89442440
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005c9140    e84b9f2300
                         {disp8} fadd       dword ptr [esp + 0x40]                        // 0x005c9145    d8442440
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c9149    8b0d5c19d000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x005c914f    d95c2428
                         fild               dword ptr [ebx]                               // 0x005c9153    db03
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005c9155    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005c915b    d95c2424
                         {disp8} fild       dword ptr [ebx + 0x04]                        // 0x005c915f    db4304
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005c9162    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x005c9168    d95c242c
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005c916c    e80f30f8ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]        // 0x005c9171    8b0db81dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]        // 0x005c9177    8b15bc1dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]        // 0x005c917d    a1c01dea00
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x005c9182    894c240c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c9186    8b0d5c19d000
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005c918c    89542410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005c9190    89442414
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x005c9194    e8e72ff8ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc4]        // 0x005c9199    8b0dc41dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc8]        // 0x005c919f    8b15c81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdcc]        // 0x005c91a5    a1cc1dea00
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005c91aa    894c2418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x005c91ae    d9442418
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x005c91b2    d864240c
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x005c91b6    89542434
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x005c91ba    d9442434
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x005c91be    89442438
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x005c91c2    d8642410
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005c91c6    89442420
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x005c91ca    d9442438
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005c91ce    8954241c
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005c91d2    d8642414
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x005c91d6    894c2430
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x005c91da    d9442424
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x005c91de    d864240c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005c91e2    d9442428
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x005c91e6    d8642410
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x005c91ea    d944242c
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x005c91ee    d8642414
                         fld                st(5)                                         // 0x005c91f2    d9c5
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005c91f4    d81d98a38a00
                         fnstsw             ax                                            // 0x005c91fa    dfe0
                         test               ah, 0x40                                      // 0x005c91fc    f6c440
                         {disp8} je         _jmp_addr_0x005c921f                          // 0x005c91ff    741e
                         fld                st(4)                                         // 0x005c9201    d9c4
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005c9203    d81d98a38a00
                         fnstsw             ax                                            // 0x005c9209    dfe0
                         test               ah, 0x40                                      // 0x005c920b    f6c440
                         {disp8} je         _jmp_addr_0x005c921f                          // 0x005c920e    740f
                         fld                st(3)                                         // 0x005c9210    d9c3
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005c9212    d81d98a38a00
                         fnstsw             ax                                            // 0x005c9218    dfe0
                         test               ah, 0x40                                      // 0x005c921a    f6c440
                         {disp8} jne        _jmp_addr_0x005c924d                          // 0x005c921d    752e
_jmp_addr_0x005c921f:    fld                st(4)                                         // 0x005c921f    d9c4
                         fmul               st, st(5)                                     // 0x005c9221    d8cd
                         fld                st(4)                                         // 0x005c9223    d9c4
                         fmul               st, st(5)                                     // 0x005c9225    d8cd
                         faddp              st(1), st                                     // 0x005c9227    dec1
                         fld                st(6)                                         // 0x005c9229    d9c6
                         fmul               st, st(7)                                     // 0x005c922b    d8cf
                         faddp              st(1), st                                     // 0x005c922d    dec1
                         fsqrt                                                            // 0x005c922f    d9fa
                         {disp8} fst        dword ptr [esp + 0x40]                        // 0x005c9231    d9542440
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005c9235    d83d90a38a00
                         fld                st(0)                                         // 0x005c923b    d9c0
                         fmulp              st(7), st                                     // 0x005c923d    decf
                         fxch               st(5)                                         // 0x005c923f    d9cd
                         fmul               st, st(5)                                     // 0x005c9241    d8cd
                         fxch               st(5)                                         // 0x005c9243    d9cd
                         fxch               st(4)                                         // 0x005c9245    d9cc
                         fmul               st, st(4)                                     // 0x005c9247    d8cc
                         fxch               st(4)                                         // 0x005c9249    d9cc
                         fstp               st(0)                                         // 0x005c924b    ddd8
_jmp_addr_0x005c924d:    fld                st(2)                                         // 0x005c924d    d9c2
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005c924f    d81d98a38a00
                         fnstsw             ax                                            // 0x005c9255    dfe0
                         test               ah, 0x40                                      // 0x005c9257    f6c440
                         {disp8} je         _jmp_addr_0x005c9278                          // 0x005c925a    741c
                         fld                st(1)                                         // 0x005c925c    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005c925e    d81d98a38a00
                         fnstsw             ax                                            // 0x005c9264    dfe0
                         test               ah, 0x40                                      // 0x005c9266    f6c440
                         {disp8} je         _jmp_addr_0x005c9278                          // 0x005c9269    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005c926b    d81598a38a00
                         fnstsw             ax                                            // 0x005c9271    dfe0
                         test               ah, 0x40                                      // 0x005c9273    f6c440
                         {disp8} jne        _jmp_addr_0x005c92a4                          // 0x005c9276    752c
_jmp_addr_0x005c9278:    fld                st(0)                                         // 0x005c9278    d9c0
                         fmul               st, st(1)                                     // 0x005c927a    d8c9
                         fld                st(2)                                         // 0x005c927c    d9c2
                         fmul               st, st(3)                                     // 0x005c927e    d8cb
                         faddp              st(1), st                                     // 0x005c9280    dec1
                         fld                st(3)                                         // 0x005c9282    d9c3
                         fmul               st, st(4)                                     // 0x005c9284    d8cc
                         faddp              st(1), st                                     // 0x005c9286    dec1
                         fsqrt                                                            // 0x005c9288    d9fa
                         {disp8} fst        dword ptr [esp + 0x40]                        // 0x005c928a    d9542440
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x005c928e    d83d90a38a00
                         fld                st(0)                                         // 0x005c9294    d9c0
                         fmulp              st(4), st                                     // 0x005c9296    decc
                         fld                st(0)                                         // 0x005c9298    d9c0
                         fmulp              st(3), st                                     // 0x005c929a    decb
                         fxch               st(1)                                         // 0x005c929c    d9c9
                         fmul               st, st(1)                                     // 0x005c929e    d8c9
                         fxch               st(1)                                         // 0x005c92a0    d9c9
                         fstp               st(0)                                         // 0x005c92a2    ddd8
_jmp_addr_0x005c92a4:    fxch               st(3)                                         // 0x005c92a4    d9cb
                         pop                ebx                                           // 0x005c92a6    5b
                         fmul               st, st(3)                                     // 0x005c92a7    d8cb
                         fxch               st(4)                                         // 0x005c92a9    d9cc
                         fmul               st, st(1)                                     // 0x005c92ab    d8c9
                         faddp              st(4), st                                     // 0x005c92ad    dec4
                         fxch               st(4)                                         // 0x005c92af    d9cc
                         fmul               st, st(1)                                     // 0x005c92b1    d8c9
                         faddp              st(3), st                                     // 0x005c92b3    dec3
                         fxch               st(2)                                         // 0x005c92b5    d9ca
                         {disp32} fcomp     dword ptr [data_bytes + 0x3503a4]             // 0x005c92b7    d81da463d100
                         fstp               st(0)                                         // 0x005c92bd    ddd8
                         fxch               st(1)                                         // 0x005c92bf    d9c9
                         fnstsw             ax                                            // 0x005c92c1    dfe0
                         fstp               st(0)                                         // 0x005c92c3    ddd8
                         test               ah, 0x41                                      // 0x005c92c5    f6c441
                         fstp               st(0)                                         // 0x005c92c8    ddd8
                         {disp8} jne        _jmp_addr_0x005c92dc                          // 0x005c92ca    7510
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x005c92cc    8b4c2440
                         {disp32} mov       dword ptr [edi + 0x00000568], esi             // 0x005c92d0    89b768050000
                         {disp32} mov       dword ptr [edi + 0x00000570], ecx             // 0x005c92d6    898f70050000
_jmp_addr_0x005c92dc:    pop                edi                                           // 0x005c92dc    5f
                         pop                esi                                           // 0x005c92dd    5e
                         add                esp, 0x30                                     // 0x005c92de    83c430
                         ret                0x0008                                        // 0x005c92e1    c20800
                         nop                                                              // 0x005c92e4    90
                         nop                                                              // 0x005c92e5    90
                         nop                                                              // 0x005c92e6    90
                         nop                                                              // 0x005c92e7    90
                         nop                                                              // 0x005c92e8    90
                         nop                                                              // 0x005c92e9    90
                         nop                                                              // 0x005c92ea    90
                         nop                                                              // 0x005c92eb    90
                         nop                                                              // 0x005c92ec    90
                         nop                                                              // 0x005c92ed    90
                         nop                                                              // 0x005c92ee    90
                         nop                                                              // 0x005c92ef    90
                         xor.s              eax, eax                                      // 0x005c92f0    33c0
                         ret                                                              // 0x005c92f2    c3
                         nop                                                              // 0x005c92f3    90
                         nop                                                              // 0x005c92f4    90
                         nop                                                              // 0x005c92f5    90
                         nop                                                              // 0x005c92f6    90
                         nop                                                              // 0x005c92f7    90
                         nop                                                              // 0x005c92f8    90
                         nop                                                              // 0x005c92f9    90
                         nop                                                              // 0x005c92fa    90
                         nop                                                              // 0x005c92fb    90
                         nop                                                              // 0x005c92fc    90
                         nop                                                              // 0x005c92fd    90
                         nop                                                              // 0x005c92fe    90
                         nop                                                              // 0x005c92ff    90
_jmp_addr_0x005c9300:    push               esi                                           // 0x005c9300    56
                         mov.s              esi, ecx                                      // 0x005c9301    8bf1
                         {disp32} mov       dword ptr [esi + 0x00000564], 0x00000000      // 0x005c9303    c7866405000000000000
                         call               _jmp_addr_0x005c6740                          // 0x005c930d    e82ed4ffff
                         test               eax, eax                                      // 0x005c9312    85c0
                         {disp8} jne        _jmp_addr_0x005c9355                          // 0x005c9314    753f
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c9316    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x005c931b    8b885c002500
                         test               ecx, ecx                                      // 0x005c9321    85c9
                         {disp8} je         _jmp_addr_0x005c9355                          // 0x005c9323    7430
                         push               0x1                                           // 0x005c9325    6a01
                         mov.s              ecx, esi                                      // 0x005c9327    8bce
                         call               _jmp_addr_0x005c6550                          // 0x005c9329    e822d2ffff
                         test               eax, eax                                      // 0x005c932e    85c0
                         {disp8} je         _jmp_addr_0x005c933d                          // 0x005c9330    740b
                         push               0x0                                           // 0x005c9332    6a00
                         push               0x1                                           // 0x005c9334    6a01
                         mov.s              ecx, esi                                      // 0x005c9336    8bce
                         call               _jmp_addr_0x005c6670                          // 0x005c9338    e833d3ffff
_jmp_addr_0x005c933d:    push               0x2                                           // 0x005c933d    6a02
                         mov.s              ecx, esi                                      // 0x005c933f    8bce
                         call               _jmp_addr_0x005c6550                          // 0x005c9341    e80ad2ffff
                         test               eax, eax                                      // 0x005c9346    85c0
                         {disp8} je         _jmp_addr_0x005c9355                          // 0x005c9348    740b
                         push               0x0                                           // 0x005c934a    6a00
                         push               0x2                                           // 0x005c934c    6a02
                         mov.s              ecx, esi                                      // 0x005c934e    8bce
                         call               _jmp_addr_0x005c6670                          // 0x005c9350    e81bd3ffff
_jmp_addr_0x005c9355:    pop                esi                                           // 0x005c9355    5e
                         ret                                                              // 0x005c9356    c3
                         nop                                                              // 0x005c9357    90
                         nop                                                              // 0x005c9358    90
                         nop                                                              // 0x005c9359    90
                         nop                                                              // 0x005c935a    90
                         nop                                                              // 0x005c935b    90
                         nop                                                              // 0x005c935c    90
                         nop                                                              // 0x005c935d    90
                         nop                                                              // 0x005c935e    90
                         nop                                                              // 0x005c935f    90
                         push               esi                                           // 0x005c9360    56
                         push               edi                                           // 0x005c9361    57
                         mov.s              edi, ecx                                      // 0x005c9362    8bf9
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c9364    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005c936a    e8e1c4f8ff
                         {disp32} mov       ecx, dword ptr [eax + 0x0000039c]             // 0x005c936f    8b889c030000
                         call               ?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ                          // 0x005c9375    e8b62d0100
                         mov.s              esi, eax                                      // 0x005c937a    8bf0
                         test               esi, esi                                      // 0x005c937c    85f6
                         {disp8} je         _jmp_addr_0x005c93f6                          // 0x005c937e    7476
                         test               byte ptr [esi + 0x25], 0x04                   // 0x005c9380    f6462504
                         {disp8} jne        _jmp_addr_0x005c93f6                          // 0x005c9384    7570
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x814bc]        // 0x005c9386    a1bca49200
                         push               eax                                           // 0x005c938b    50
                         push               0x7                                           // 0x005c938c    6a07
                         mov.s              ecx, edi                                      // 0x005c938e    8bcf
                         call               _jmp_addr_0x005c8ec0                          // 0x005c9390    e82bfbffff
                         test               eax, eax                                      // 0x005c9395    85c0
                         {disp8} je         _jmp_addr_0x005c9400                          // 0x005c9397    7467
                         cmp                esi, dword ptr [edi + 0x00000574]             // 0x005c9399    3bb774050000
                         {disp8} je         _jmp_addr_0x005c9400                          // 0x005c939f    745f
                         mov                edx, dword ptr [esi]                          // 0x005c93a1    8b16
                         mov.s              ecx, esi                                      // 0x005c93a3    8bce
                         call               dword ptr [edx + 0x650]                       // 0x005c93a5    ff9250060000
                         test               eax, eax                                      // 0x005c93ab    85c0
                         {disp8} je         _jmp_addr_0x005c9400                          // 0x005c93ad    7451
                         mov                eax, dword ptr [esi]                          // 0x005c93af    8b06
                         mov.s              ecx, esi                                      // 0x005c93b1    8bce
                         call               dword ptr [eax + 0x654]                       // 0x005c93b3    ff9054060000
                         mov                edx, dword ptr [esi]                          // 0x005c93b9    8b16
                         push               eax                                           // 0x005c93bb    50
                         mov.s              ecx, esi                                      // 0x005c93bc    8bce
                         call               dword ptr [edx + 0x650]                       // 0x005c93be    ff9250060000
                         push               eax                                           // 0x005c93c4    50
                         push               esi                                           // 0x005c93c5    56
                         mov.s              ecx, edi                                      // 0x005c93c6    8bcf
                         call               _jmp_addr_0x005c8720                          // 0x005c93c8    e853f3ffff
                         test               eax, eax                                      // 0x005c93cd    85c0
                         {disp8} je         _jmp_addr_0x005c9400                          // 0x005c93cf    742f
                         mov                eax, dword ptr [esi]                          // 0x005c93d1    8b06
                         push               esi                                           // 0x005c93d3    56
                         mov.s              ecx, esi                                      // 0x005c93d4    8bce
                         call               dword ptr [eax + 0x650]                       // 0x005c93d6    ff9050060000
                         push               eax                                           // 0x005c93dc    50
                         mov.s              ecx, edi                                      // 0x005c93dd    8bcf
                         call               ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z                          // 0x005c93df    e89cf7ffff
                         test               eax, eax                                      // 0x005c93e4    85c0
                         {disp8} je         _jmp_addr_0x005c9400                          // 0x005c93e6    7418
                         {disp32} mov       dword ptr [edi + 0x00000574], esi             // 0x005c93e8    89b774050000
                         pop                edi                                           // 0x005c93ee    5f
                         mov                eax, 0x00000001                               // 0x005c93ef    b801000000
                         pop                esi                                           // 0x005c93f4    5e
                         ret                                                              // 0x005c93f5    c3
_jmp_addr_0x005c93f6:    {disp32} mov       dword ptr [edi + 0x00000574], 0x00000000      // 0x005c93f6    c7877405000000000000
_jmp_addr_0x005c9400:    pop                edi                                           // 0x005c9400    5f
                         xor.s              eax, eax                                      // 0x005c9401    33c0
                         pop                esi                                           // 0x005c9403    5e
                         ret                                                              // 0x005c9404    c3
                         nop                                                              // 0x005c9405    90
                         nop                                                              // 0x005c9406    90
                         nop                                                              // 0x005c9407    90
                         nop                                                              // 0x005c9408    90
                         nop                                                              // 0x005c9409    90
                         nop                                                              // 0x005c940a    90
                         nop                                                              // 0x005c940b    90
                         nop                                                              // 0x005c940c    90
                         nop                                                              // 0x005c940d    90
                         nop                                                              // 0x005c940e    90
                         nop                                                              // 0x005c940f    90
_globl_ct_0x005c9410:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005c9410    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005c9416    b001
                         test               al, cl                                        // 0x005c9418    84c8
                         {disp8} jne        _jmp_addr_0x005c9424                          // 0x005c941a    7508
                         or.s               cl, al                                        // 0x005c941c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005c941e    880d34c9fa00
_jmp_addr_0x005c9424:    {disp32} jmp       _jmp_addr_0x005c9430                          // 0x005c9424    e907000000
                         nop                                                              // 0x005c9429    90
                         nop                                                              // 0x005c942a    90
                         nop                                                              // 0x005c942b    90
                         nop                                                              // 0x005c942c    90
                         nop                                                              // 0x005c942d    90
                         nop                                                              // 0x005c942e    90
                         nop                                                              // 0x005c942f    90
_jmp_addr_0x005c9430:    push               0x00407870                                    // 0x005c9430    6870784000
                         call               _atexit                                       // 0x005c9435    e857c31f00
                         pop                ecx                                           // 0x005c943a    59
                         ret                                                              // 0x005c943b    c3
                         nop                                                              // 0x005c943c    90
                         nop                                                              // 0x005c943d    90
                         nop                                                              // 0x005c943e    90
                         nop                                                              // 0x005c943f    90
_globl_ct_0x005c9440:    {disp32} jmp       _jmp_addr_0x005c9450                          // 0x005c9440    e90b000000
                         nop                                                              // 0x005c9445    90
                         nop                                                              // 0x005c9446    90
                         nop                                                              // 0x005c9447    90
                         nop                                                              // 0x005c9448    90
                         nop                                                              // 0x005c9449    90
                         nop                                                              // 0x005c944a    90
                         nop                                                              // 0x005c944b    90
                         nop                                                              // 0x005c944c    90
                         nop                                                              // 0x005c944d    90
                         nop                                                              // 0x005c944e    90
                         nop                                                              // 0x005c944f    90
_jmp_addr_0x005c9450:    {disp32} mov       dword ptr [data_bytes + 0x3503b4], 0xffffffff // 0x005c9450    c705b463d100ffffffff
                         ret                                                              // 0x005c945a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005c945b    e89983e3ff
_globl_ct_0x005c9460:    {disp32} jmp       _jmp_addr_0x005c9470                          // 0x005c9460    e90b000000
                         nop                                                              // 0x005c9465    90
                         nop                                                              // 0x005c9466    90
                         nop                                                              // 0x005c9467    90
                         nop                                                              // 0x005c9468    90
                         nop                                                              // 0x005c9469    90
                         nop                                                              // 0x005c946a    90
                         nop                                                              // 0x005c946b    90
                         nop                                                              // 0x005c946c    90
                         nop                                                              // 0x005c946d    90
                         nop                                                              // 0x005c946e    90
                         nop                                                              // 0x005c946f    90
_jmp_addr_0x005c9470:    {disp32} fld       dword ptr [rdata_bytes + 0x814d0]             // 0x005c9470    d905d0a49200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x814cc]             // 0x005c9476    d80dcca49200
                         {disp32} fstp      dword ptr [data_bytes + 0x3503b0]             // 0x005c947c    d91db063d100
                         ret                                                              // 0x005c9482    c3
                         nop                                                              // 0x005c9483    90
                         nop                                                              // 0x005c9484    90
                         nop                                                              // 0x005c9485    90
                         nop                                                              // 0x005c9486    90
                         nop                                                              // 0x005c9487    90
                         nop                                                              // 0x005c9488    90
                         nop                                                              // 0x005c9489    90
                         nop                                                              // 0x005c948a    90
                         nop                                                              // 0x005c948b    90
                         nop                                                              // 0x005c948c    90
                         nop                                                              // 0x005c948d    90
                         nop                                                              // 0x005c948e    90
                         nop                                                              // 0x005c948f    90
_jmp_addr_0x005c9490:    push               0x0                                           // 0x005c9490    6a00
                         push               0x21                                          // 0x005c9492    6a21
                         call               ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z                          // 0x005c9494    e8e7f6ffff
                         ret                                                              // 0x005c9499    c3
                         call               dword ptr [__imp__ioctlsocket@4]              // 0x005c949a    ff151c998a00
?GetHelpQueryOnGameThingWithPos@HelpSystem@@QAEXPAVGameThingWithPos@@@Z:
                         sub                esp, 0x0c                                     // 0x005c94a0    83ec0c
                         push               ebx                                           // 0x005c94a3    53
                         push               ebp                                           // 0x005c94a4    55
                         push               esi                                           // 0x005c94a5    56
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x005c94a6    8b74241c
                         mov                eax, dword ptr [esi]                          // 0x005c94aa    8b06
                         push               edi                                           // 0x005c94ac    57
                         mov.s              ebx, ecx                                      // 0x005c94ad    8bd9
                         push               0x0                                           // 0x005c94af    6a00
                         mov.s              ecx, esi                                      // 0x005c94b1    8bce
                         call               dword ptr [eax + 0x2c8]                       // 0x005c94b3    ff90c8020000
                         test               eax, eax                                      // 0x005c94b9    85c0
                         {disp32} je        _jmp_addr_0x005c95c3                          // 0x005c94bb    0f8402010000
                         test               byte ptr [esi + 0x25], 0x04                   // 0x005c94c1    f6462504
                         {disp8} je         _jmp_addr_0x005c94e7                          // 0x005c94c5    7420
                         push               0x00bf1988                                    // 0x005c94c7    688819bf00
                         push               0x000017e8                                    // 0x005c94cc    68e8170000
                         push               0x000017e8                                    // 0x005c94d1    68e8170000
                         mov.s              ecx, ebx                                      // 0x005c94d6    8bcb
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c94d8    e803f8ffff
                         pop                edi                                           // 0x005c94dd    5f
                         pop                esi                                           // 0x005c94de    5e
                         pop                ebp                                           // 0x005c94df    5d
                         pop                ebx                                           // 0x005c94e0    5b
                         add                esp, 0x0c                                     // 0x005c94e1    83c40c
                         ret                0x0004                                        // 0x005c94e4    c20400
_jmp_addr_0x005c94e7:    xor.s              ecx, ecx                                      // 0x005c94e7    33c9
                         {disp32} mov       cx, word ptr [esi + 0x000000e0]               // 0x005c94e9    668b8ee0000000
                         shr                ecx, 9                                        // 0x005c94f0    c1e909
                         test               cl, 0x01                                      // 0x005c94f3    f6c101
                         {disp8} je         _jmp_addr_0x005c9517                          // 0x005c94f6    741f
                         xor.s              eax, eax                                      // 0x005c94f8    33c0
                         {disp32} mov       al, byte ptr [esi + 0x000000f2]               // 0x005c94fa    8a86f2000000
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x005c9500    8d14c500000000
                         sub.s              edx, eax                                      // 0x005c9507    2bd0
                         cmp                dword ptr [edx * 0x4 + 0x0099a204], 0x01      // 0x005c9509    833c9504a2990001
                         {disp32} je        _jmp_addr_0x005c960e                          // 0x005c9511    0f84f7000000
_jmp_addr_0x005c9517:    mov                eax, dword ptr [esi]                          // 0x005c9517    8b06
                         mov.s              ecx, esi                                      // 0x005c9519    8bce
                         call               dword ptr [eax + 0xaf4]                       // 0x005c951b    ff90f40a0000
                         test               eax, eax                                      // 0x005c9521    85c0
                         {disp8} je         _jmp_addr_0x005c9545                          // 0x005c9523    7420
                         push               0x00bf1988                                    // 0x005c9525    688819bf00
                         push               0x00000bdc                                    // 0x005c952a    68dc0b0000
                         push               0x00000bdc                                    // 0x005c952f    68dc0b0000
                         mov.s              ecx, ebx                                      // 0x005c9534    8bcb
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c9536    e8a5f7ffff
                         pop                edi                                           // 0x005c953b    5f
                         pop                esi                                           // 0x005c953c    5e
                         pop                ebp                                           // 0x005c953d    5d
                         pop                ebx                                           // 0x005c953e    5b
                         add                esp, 0x0c                                     // 0x005c953f    83c40c
                         ret                0x0004                                        // 0x005c9542    c20400
_jmp_addr_0x005c9545:    mov                edx, dword ptr [esi]                          // 0x005c9545    8b16
                         mov.s              ecx, esi                                      // 0x005c9547    8bce
                         call               dword ptr [edx + 0x458]                       // 0x005c9549    ff9258040000
                         test               eax, eax                                      // 0x005c954f    85c0
                         {disp8} je         _jmp_addr_0x005c9567                          // 0x005c9551    7414
                         push               esi                                           // 0x005c9553    56
                         push               0x23                                          // 0x005c9554    6a23
                         mov.s              ecx, ebx                                      // 0x005c9556    8bcb
                         call               ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z                          // 0x005c9558    e823f6ffff
                         pop                edi                                           // 0x005c955d    5f
                         pop                esi                                           // 0x005c955e    5e
                         pop                ebp                                           // 0x005c955f    5d
                         pop                ebx                                           // 0x005c9560    5b
                         add                esp, 0x0c                                     // 0x005c9561    83c40c
                         ret                0x0004                                        // 0x005c9564    c20400
_jmp_addr_0x005c9567:    mov.s              ecx, esi                                      // 0x005c9567    8bce
                         call               ?IsVagrant@Villager@@QAE_NXZ                  // 0x005c9569    e8329c1800
                         test               eax, eax                                      // 0x005c956e    85c0
                         {disp8} je         _jmp_addr_0x005c9586                          // 0x005c9570    7414
                         push               esi                                           // 0x005c9572    56
                         push               0x26                                          // 0x005c9573    6a26
                         mov.s              ecx, ebx                                      // 0x005c9575    8bcb
                         call               ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z                          // 0x005c9577    e804f6ffff
                         pop                edi                                           // 0x005c957c    5f
                         pop                esi                                           // 0x005c957d    5e
                         pop                ebp                                           // 0x005c957e    5d
                         pop                ebx                                           // 0x005c957f    5b
                         add                esp, 0x0c                                     // 0x005c9580    83c40c
                         ret                0x0004                                        // 0x005c9583    c20400
_jmp_addr_0x005c9586:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005c9586    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x005c958c    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x005c958e    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005c9594    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005c9597    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005c959a    8d0450
                         mov                edx, dword ptr [esi]                          // 0x005c959d    8b16
                         shl                eax, 5                                        // 0x005c959f    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x005c95a2    8d7c0818
                         mov.s              ecx, esi                                      // 0x005c95a6    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x005c95a8    ff521c
                         cmp.s              eax, edi                                      // 0x005c95ab    3bc7
                         {disp8} je         _jmp_addr_0x005c960e                          // 0x005c95ad    745f
                         push               esi                                           // 0x005c95af    56
                         push               0x22                                          // 0x005c95b0    6a22
                         mov.s              ecx, ebx                                      // 0x005c95b2    8bcb
                         call               ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z                          // 0x005c95b4    e8c7f5ffff
                         pop                edi                                           // 0x005c95b9    5f
                         pop                esi                                           // 0x005c95ba    5e
                         pop                ebp                                           // 0x005c95bb    5d
                         pop                ebx                                           // 0x005c95bc    5b
                         add                esp, 0x0c                                     // 0x005c95bd    83c40c
                         ret                0x0004                                        // 0x005c95c0    c20400
_jmp_addr_0x005c95c3:    mov                eax, dword ptr [esi]                          // 0x005c95c3    8b06
                         mov.s              ecx, esi                                      // 0x005c95c5    8bce
                         call               dword ptr [eax + 0x490]                       // 0x005c95c7    ff9090040000
                         test               eax, eax                                      // 0x005c95cd    85c0
                         {disp8} je         _jmp_addr_0x005c960e                          // 0x005c95cf    743d
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c95d1    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x005c95d7    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x005c95d9    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005c95df    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005c95e2    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005c95e5    8d0450
                         mov                edx, dword ptr [esi]                          // 0x005c95e8    8b16
                         shl                eax, 5                                        // 0x005c95ea    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x005c95ed    8d7c0818
                         mov.s              ecx, esi                                      // 0x005c95f1    8bce
                         call               dword ptr [edx + 0x1c]                        // 0x005c95f3    ff521c
                         cmp.s              eax, edi                                      // 0x005c95f6    3bc7
                         {disp8} je         _jmp_addr_0x005c960e                          // 0x005c95f8    7414
                         push               esi                                           // 0x005c95fa    56
                         push               0x61                                          // 0x005c95fb    6a61
                         mov.s              ecx, ebx                                      // 0x005c95fd    8bcb
                         call               ?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z                          // 0x005c95ff    e87cf5ffff
                         pop                edi                                           // 0x005c9604    5f
                         pop                esi                                           // 0x005c9605    5e
                         pop                ebp                                           // 0x005c9606    5d
                         pop                ebx                                           // 0x005c9607    5b
                         add                esp, 0x0c                                     // 0x005c9608    83c40c
                         ret                0x0004                                        // 0x005c960b    c20400
_jmp_addr_0x005c960e:    mov                eax, dword ptr [esi]                          // 0x005c960e    8b06
                         mov.s              ecx, esi                                      // 0x005c9610    8bce
                         call               dword ptr [eax + 0x4d8]                       // 0x005c9612    ff90d8040000
                         mov                edx, dword ptr [esi]                          // 0x005c9618    8b16
                         mov.s              ecx, esi                                      // 0x005c961a    8bce
                         mov.s              edi, eax                                      // 0x005c961c    8bf8
                         call               dword ptr [edx + 0x4dc]                       // 0x005c961e    ff92dc040000
                         test               edi, edi                                      // 0x005c9624    85ff
                         mov.s              ebp, eax                                      // 0x005c9626    8be8
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x005c9628    896c2418
                         {disp32} jbe       _jmp_addr_0x005c9764                          // 0x005c962c    0f8632010000
                         mov                eax, dword ptr [esi]                          // 0x005c9632    8b06
                         mov.s              ecx, esi                                      // 0x005c9634    8bce
                         call               dword ptr [eax + 0x1e0]                       // 0x005c9636    ff90e0010000
                         test               eax, eax                                      // 0x005c963c    85c0
                         {disp32} jne       _jmp_addr_0x005c974c                          // 0x005c963e    0f8508010000
                         mov                edx, dword ptr [esi]                          // 0x005c9644    8b16
                         mov.s              ecx, esi                                      // 0x005c9646    8bce
                         call               dword ptr [edx + 0x1e4]                       // 0x005c9648    ff92e4010000
                         test               eax, eax                                      // 0x005c964e    85c0
                         {disp32} jne       _jmp_addr_0x005c974c                          // 0x005c9650    0f85f6000000
                         mov                eax, dword ptr [esi]                          // 0x005c9656    8b06
                         mov.s              ecx, esi                                      // 0x005c9658    8bce
                         call               dword ptr [eax + 0x1e8]                       // 0x005c965a    ff90e8010000
                         test               eax, eax                                      // 0x005c9660    85c0
                         {disp32} je        _jmp_addr_0x005c9734                          // 0x005c9662    0f84cc000000
                         mov                edx, dword ptr [esi]                          // 0x005c9668    8b16
                         mov.s              ecx, esi                                      // 0x005c966a    8bce
                         call               dword ptr [edx + 0x48]                        // 0x005c966c    ff5248
                         mov.s              ebp, eax                                      // 0x005c966f    8be8
                         test               ebp, ebp                                      // 0x005c9671    85ed
                         {disp32} je        _jmp_addr_0x005c9715                          // 0x005c9673    0f849c000000
                         {disp8} mov        eax, dword ptr [esi + 0x5c]                   // 0x005c9679    8b465c
                         push               eax                                           // 0x005c967c    50
                         mov.s              ecx, ebp                                      // 0x005c967d    8bcd
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z// 0x005c967f    e89c4d1700
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005c9684    d81d90a38a00
                         fnstsw             ax                                            // 0x005c968a    dfe0
                         test               ah, 0x01                                      // 0x005c968c    f6c401
                         {disp8} je         _jmp_addr_0x005c96a2                          // 0x005c968f    7411
                         {disp8} mov        eax, dword ptr [esi + 0x5c]                   // 0x005c9691    8b465c
                         push               eax                                           // 0x005c9694    50
                         mov.s              ecx, ebp                                      // 0x005c9695    8bcd
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z// 0x005c9697    e8844d1700
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x005c969c    d95c2420
                         {disp8} jmp        _jmp_addr_0x005c96aa                          // 0x005c96a0    eb08
_jmp_addr_0x005c96a2:    {disp8} mov        dword ptr [esp + 0x20], 0x3f800000            // 0x005c96a2    c74424200000803f
_jmp_addr_0x005c96aa:    {disp32} mov       ebp, dword ptr [_script_dll]                  // 0x005c96aa    8b2d105cd900
                         mov.s              ecx, esi                                      // 0x005c96b0    8bce
                         call               _jmp_addr_0x00746ee0                          // 0x005c96b2    e829d81700
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005c96b7    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x005c96bb    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x005c96c3    df6c2410
                         push               0x2                                           // 0x005c96c7    6a02
                         mov.s              ecx, ebp                                      // 0x005c96c9    8bcd
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005c96cb    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005c96cf    8b442414
                         push               eax                                           // 0x005c96d3    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x005c96d4    e8c7d41200
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005c96d9    d9442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005c96dd    d80d1cb48a00
                         push               0x2                                           // 0x005c96e3    6a02
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x005c96e5    d95c2424
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005c96e9    8b4c2424
                         push               ecx                                           // 0x005c96ed    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x005c96ee    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x005c96f4    e8a7d41200
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x005c96f9    8b542418
                         push               0x00bf19b0                                    // 0x005c96fd    68b019bf00
                         push               edx                                           // 0x005c9702    52
                         push               edi                                           // 0x005c9703    57
                         mov.s              ecx, ebx                                      // 0x005c9704    8bcb
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c9706    e8d5f5ffff
                         pop                edi                                           // 0x005c970b    5f
                         pop                esi                                           // 0x005c970c    5e
                         pop                ebp                                           // 0x005c970d    5d
                         pop                ebx                                           // 0x005c970e    5b
                         add                esp, 0x0c                                     // 0x005c970f    83c40c
                         ret                0x0004                                        // 0x005c9712    c20400
_jmp_addr_0x005c9715:    mov.s              ecx, esi                                      // 0x005c9715    8bce
                         call               _jmp_addr_0x00746ee0                          // 0x005c9717    e8c4d71700
                         push               0x00bf1988                                    // 0x005c971c    688819bf00
                         push               eax                                           // 0x005c9721    50
                         push               eax                                           // 0x005c9722    50
                         mov.s              ecx, ebx                                      // 0x005c9723    8bcb
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c9725    e8b6f5ffff
                         pop                edi                                           // 0x005c972a    5f
                         pop                esi                                           // 0x005c972b    5e
                         pop                ebp                                           // 0x005c972c    5d
                         pop                ebx                                           // 0x005c972d    5b
                         add                esp, 0x0c                                     // 0x005c972e    83c40c
                         ret                0x0004                                        // 0x005c9731    c20400
_jmp_addr_0x005c9734:    push               0x00bf1988                                    // 0x005c9734    688819bf00
                         push               ebp                                           // 0x005c9739    55
                         push               edi                                           // 0x005c973a    57
                         mov.s              ecx, ebx                                      // 0x005c973b    8bcb
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c973d    e89ef5ffff
                         pop                edi                                           // 0x005c9742    5f
                         pop                esi                                           // 0x005c9743    5e
                         pop                ebp                                           // 0x005c9744    5d
                         pop                ebx                                           // 0x005c9745    5b
                         add                esp, 0x0c                                     // 0x005c9746    83c40c
                         ret                0x0004                                        // 0x005c9749    c20400
_jmp_addr_0x005c974c:    push               0x00bf19a4                                    // 0x005c974c    68a419bf00
                         push               ebp                                           // 0x005c9751    55
                         push               edi                                           // 0x005c9752    57
                         mov.s              ecx, ebx                                      // 0x005c9753    8bcb
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c9755    e886f5ffff
                         pop                edi                                           // 0x005c975a    5f
                         pop                esi                                           // 0x005c975b    5e
                         pop                ebp                                           // 0x005c975c    5d
                         pop                ebx                                           // 0x005c975d    5b
                         add                esp, 0x0c                                     // 0x005c975e    83c40c
                         ret                0x0004                                        // 0x005c9761    c20400
_jmp_addr_0x005c9764:    mov.s              ecx, ebx                                      // 0x005c9764    8bcb
                         call               _jmp_addr_0x005c9490                          // 0x005c9766    e825fdffff
                         pop                edi                                           // 0x005c976b    5f
                         pop                esi                                           // 0x005c976c    5e
                         pop                ebp                                           // 0x005c976d    5d
                         pop                ebx                                           // 0x005c976e    5b
                         add                esp, 0x0c                                     // 0x005c976f    83c40c
                         ret                0x0004                                        // 0x005c9772    c20400
                         nop                                                              // 0x005c9775    90
                         nop                                                              // 0x005c9776    90
                         nop                                                              // 0x005c9777    90
                         nop                                                              // 0x005c9778    90
                         nop                                                              // 0x005c9779    90
                         nop                                                              // 0x005c977a    90
                         nop                                                              // 0x005c977b    90
                         nop                                                              // 0x005c977c    90
                         nop                                                              // 0x005c977d    90
                         nop                                                              // 0x005c977e    90
                         nop                                                              // 0x005c977f    90
_jmp_addr_0x005c9780:    sub                esp, 0x0c                                     // 0x005c9780    83ec0c
                         push               ebx                                           // 0x005c9783    53
                         push               esi                                           // 0x005c9784    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x005c9785    8b742418
                         cmp                dword ptr [esi], 0x00                         // 0x005c9789    833e00
                         push               edi                                           // 0x005c978c    57
                         mov.s              edi, ecx                                      // 0x005c978d    8bf9
                         {disp8} jne        _jmp_addr_0x005c97ac                          // 0x005c978f    751b
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005c9791    8b4604
                         test               eax, eax                                      // 0x005c9794    85c0
                         {disp8} jne        _jmp_addr_0x005c97ac                          // 0x005c9796    7514
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x005c9798    d94608
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005c979b    d81d98a38a00
                         fnstsw             ax                                            // 0x005c97a1    dfe0
                         test               ah, 0x40                                      // 0x005c97a3    f6c440
                         {disp32} jne       _jmp_addr_0x005c98ca                          // 0x005c97a6    0f851e010000
_jmp_addr_0x005c97ac:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x005c97ac    8b4608
                         mov.s              ecx, esi                                      // 0x005c97af    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005c97b1    8944241c
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x005c97b5    e8d6982300
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x005c97ba    d844241c
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x005c97be    8d4c240c
                         push               ecx                                           // 0x005c97c2    51
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x005c97c3    d95c2414
                         fild               dword ptr [esi]                               // 0x005c97c7    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005c97c9    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005c97cf    d95c2410
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x005c97d3    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x005c97d6    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005c97dc    d95c2418
                         call               _jmp_addr_0x00824b10                          // 0x005c97e0    e82bb32500
                         add                esp, 0x04                                     // 0x005c97e5    83c404
                         test               eax, eax                                      // 0x005c97e8    85c0
                         {disp8} je         _jmp_addr_0x005c980b                          // 0x005c97ea    741f
                         push               0x00bf1988                                    // 0x005c97ec    688819bf00
                         push               0x00000b22                                    // 0x005c97f1    68220b0000
                         push               0x00000b22                                    // 0x005c97f6    68220b0000
                         mov.s              ecx, edi                                      // 0x005c97fb    8bcf
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c97fd    e8def4ffff
                         pop                edi                                           // 0x005c9802    5f
                         pop                esi                                           // 0x005c9803    5e
                         pop                ebx                                           // 0x005c9804    5b
                         add                esp, 0x0c                                     // 0x005c9805    83c40c
                         ret                0x0004                                        // 0x005c9808    c20400
_jmp_addr_0x005c980b:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x005c980b    d9442410
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x26188]             // 0x005c980f    dc1d88f18c00
                         fnstsw             ax                                            // 0x005c9815    dfe0
                         test               ah, 0x41                                      // 0x005c9817    f6c441
                         {disp8} je         _jmp_addr_0x005c9897                          // 0x005c981a    747b
                         xor.s              eax, eax                                      // 0x005c981c    33c0
                         {disp8} mov        ax, word ptr [esi + 0x02]                     // 0x005c981e    668b4602
                         xor.s              ecx, ecx                                      // 0x005c9822    33c9
                         {disp8} mov        cx, word ptr [esi + 0x06]                     // 0x005c9824    668b4e06
                         test               eax, eax                                      // 0x005c9828    85c0
                         {disp8} jl         _jmp_addr_0x005c9897                          // 0x005c982a    7c6b
                         cmp                eax, 0x000001ff                               // 0x005c982c    3dff010000
                         {disp8} jg         _jmp_addr_0x005c9897                          // 0x005c9831    7f64
                         test               ecx, ecx                                      // 0x005c9833    85c9
                         {disp8} jl         _jmp_addr_0x005c9897                          // 0x005c9835    7c60
                         cmp                ecx, 0x000001ff                               // 0x005c9837    81f9ff010000
                         {disp8} jg         _jmp_addr_0x005c9897                          // 0x005c983d    7f58
                         push               ebp                                           // 0x005c983f    55
                         mov.s              ebp, eax                                      // 0x005c9840    8be8
                         sar                ebp, 4                                        // 0x005c9842    c1fd04
                         shl                ebp, 5                                        // 0x005c9845    c1e505
                         mov.s              ebx, ecx                                      // 0x005c9848    8bd9
                         sar                ebx, 4                                        // 0x005c984a    c1fb04
                         xor.s              edx, edx                                      // 0x005c984d    33d2
                         {disp32} mov       dl, byte ptr [ebx + ebp + ?g_index_block@LH3DIsland@@3PAY0CA@EA]   // 0x005c984f    8a942b64c9e900
                         pop                ebp                                           // 0x005c9856    5d
                         test               edx, edx                                      // 0x005c9857    85d2
                         {disp8} je         _jmp_addr_0x005c9897                          // 0x005c9859    743c
                         and                eax, 0x0f                                     // 0x005c985b    83e00f
                         mov.s              ebx, eax                                      // 0x005c985e    8bd8
                         shl                ebx, 4                                        // 0x005c9860    c1e304
                         add.s              ebx, eax                                      // 0x005c9863    03d8
                         {disp32} mov       eax, dword ptr [edx * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x005c9865    8b049564c5e900
                         and                ecx, 0x0f                                     // 0x005c986c    83e10f
                         add.s              ebx, ecx                                      // 0x005c986f    03d9
                         lea                eax, dword ptr [eax + ebx * 0x8]              // 0x005c9871    8d04d8
                         test               eax, eax                                      // 0x005c9874    85c0
                         {disp8} je         _jmp_addr_0x005c9897                          // 0x005c9876    741f
                         push               0x00bf1988                                    // 0x005c9878    688819bf00
                         push               0x00000b85                                    // 0x005c987d    68850b0000
                         push               0x00000b85                                    // 0x005c9882    68850b0000
                         mov.s              ecx, edi                                      // 0x005c9887    8bcf
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c9889    e852f4ffff
                         pop                edi                                           // 0x005c988e    5f
                         pop                esi                                           // 0x005c988f    5e
                         pop                ebx                                           // 0x005c9890    5b
                         add                esp, 0x0c                                     // 0x005c9891    83c40c
                         ret                0x0004                                        // 0x005c9894    c20400
_jmp_addr_0x005c9897:    {disp8} mov        ax, word ptr [esi + 0x06]                     // 0x005c9897    668b4606
                         {disp8} mov        si, word ptr [esi + 0x02]                     // 0x005c989b    668b7602
                         push               eax                                           // 0x005c989f    50
                         push               esi                                           // 0x005c98a0    56
                         call               _jmp_addr_0x00735330                          // 0x005c98a1    e88aba1600
                         {disp8} mov        ecx, dword ptr [eax + 0x4c]                   // 0x005c98a6    8b484c
                         add                esp, 0x08                                     // 0x005c98a9    83c408
                         test               ecx, ecx                                      // 0x005c98ac    85c9
                         {disp8} je         _jmp_addr_0x005c98ca                          // 0x005c98ae    741a
                         {disp8} mov        edx, dword ptr [eax + 0x50]                   // 0x005c98b0    8b5050
                         push               0x00bf1988                                    // 0x005c98b3    688819bf00
                         push               edx                                           // 0x005c98b8    52
                         push               ecx                                           // 0x005c98b9    51
                         mov.s              ecx, edi                                      // 0x005c98ba    8bcf
                         call               ?RunMessage@HelpSystem@@QAEIKKPAD@Z           // 0x005c98bc    e81ff4ffff
                         pop                edi                                           // 0x005c98c1    5f
                         pop                esi                                           // 0x005c98c2    5e
                         pop                ebx                                           // 0x005c98c3    5b
                         add                esp, 0x0c                                     // 0x005c98c4    83c40c
                         ret                0x0004                                        // 0x005c98c7    c20400
_jmp_addr_0x005c98ca:    mov.s              ecx, edi                                      // 0x005c98ca    8bcf
                         call               _jmp_addr_0x005c9490                          // 0x005c98cc    e8bffbffff
                         pop                edi                                           // 0x005c98d1    5f
                         pop                esi                                           // 0x005c98d2    5e
                         pop                ebx                                           // 0x005c98d3    5b
                         add                esp, 0x0c                                     // 0x005c98d4    83c40c
                         ret                0x0004                                        // 0x005c98d7    c20400
                         call               dword ptr [rdata_bytes + 0x39c]               // 0x005c98da    ff159c938a00
?HelpQuery@HelpSystem@@QAEXXZ:
                         push               esi                                           // 0x005c98e0    56
                         mov.s              esi, ecx                                      // 0x005c98e1    8bf1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c98e3    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005c98e9    e862bff8ff
                         {disp32} mov       ecx, dword ptr [eax + 0x0000039c]             // 0x005c98ee    8b889c030000
                         call               ?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ                          // 0x005c98f4    e837280100
                         test               eax, eax                                      // 0x005c98f9    85c0
                         {disp8} jne        _jmp_addr_0x005c9912                          // 0x005c98fb    7515
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c98fd    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005c9903    e848bff8ff
                         {disp32} mov       eax, dword ptr [eax + 0x000003c8]             // 0x005c9908    8b80c8030000
                         test               eax, eax                                      // 0x005c990e    85c0
                         {disp8} je         _jmp_addr_0x005c991c                          // 0x005c9910    740a
_jmp_addr_0x005c9912:    push               eax                                           // 0x005c9912    50
                         mov.s              ecx, esi                                      // 0x005c9913    8bce
                         call               ?GetHelpQueryOnGameThingWithPos@HelpSystem@@QAEXPAVGameThingWithPos@@@Z                          // 0x005c9915    e886fbffff
                         pop                esi                                           // 0x005c991a    5e
                         ret                                                              // 0x005c991b    c3
_jmp_addr_0x005c991c:    {disp32} mov       ecx, dword ptr [_game]                        // 0x005c991c    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005c9922    e829bff8ff
                         add                eax, 0x000003b8                               // 0x005c9927    05b8030000
                         push               eax                                           // 0x005c992c    50
                         mov.s              ecx, esi                                      // 0x005c992d    8bce
                         call               _jmp_addr_0x005c9780                          // 0x005c992f    e84cfeffff
                         pop                esi                                           // 0x005c9934    5e
                         ret                                                              // 0x005c9935    c3
                         nop                                                              // 0x005c9936    90
                         nop                                                              // 0x005c9937    90
                         nop                                                              // 0x005c9938    90
                         nop                                                              // 0x005c9939    90
                         nop                                                              // 0x005c993a    90
                         nop                                                              // 0x005c993b    90
                         nop                                                              // 0x005c993c    90
                         nop                                                              // 0x005c993d    90
                         nop                                                              // 0x005c993e    90
                         nop                                                              // 0x005c993f    90
_globl_ct_0x005c9940:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005c9940    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005c9946    b001
                         test               al, cl                                        // 0x005c9948    84c8
                         {disp8} jne        _jmp_addr_0x005c9954                          // 0x005c994a    7508
                         or.s               cl, al                                        // 0x005c994c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005c994e    880d34c9fa00
_jmp_addr_0x005c9954:    {disp32} jmp       _jmp_addr_0x005c9960                          // 0x005c9954    e907000000
                         nop                                                              // 0x005c9959    90
                         nop                                                              // 0x005c995a    90
                         nop                                                              // 0x005c995b    90
                         nop                                                              // 0x005c995c    90
                         nop                                                              // 0x005c995d    90
                         nop                                                              // 0x005c995e    90
                         nop                                                              // 0x005c995f    90
_jmp_addr_0x005c9960:    push               0x00407870                                    // 0x005c9960    6870784000
                         call               _atexit                                       // 0x005c9965    e827be1f00
                         pop                ecx                                           // 0x005c996a    59
                         ret                                                              // 0x005c996b    c3
                         nop                                                              // 0x005c996c    90
                         nop                                                              // 0x005c996d    90
                         nop                                                              // 0x005c996e    90
                         nop                                                              // 0x005c996f    90
_globl_ct_0x005c9970:    {disp32} jmp       _jmp_addr_0x005c9980                          // 0x005c9970    e90b000000
                         nop                                                              // 0x005c9975    90
                         nop                                                              // 0x005c9976    90
                         nop                                                              // 0x005c9977    90
                         nop                                                              // 0x005c9978    90
                         nop                                                              // 0x005c9979    90
                         nop                                                              // 0x005c997a    90
                         nop                                                              // 0x005c997b    90
                         nop                                                              // 0x005c997c    90
                         nop                                                              // 0x005c997d    90
                         nop                                                              // 0x005c997e    90
                         nop                                                              // 0x005c997f    90
_jmp_addr_0x005c9980:    {disp32} fld       dword ptr [rdata_bytes + 0x814dc]             // 0x005c9980    d905dca49200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x814d8]             // 0x005c9986    d80dd8a49200
                         {disp32} fstp      dword ptr [data_bytes + 0x350914]             // 0x005c998c    d91d1469d100
                         ret                                                              // 0x005c9992    c3
                         nop                                                              // 0x005c9993    90
                         nop                                                              // 0x005c9994    90
                         nop                                                              // 0x005c9995    90
                         nop                                                              // 0x005c9996    90
                         nop                                                              // 0x005c9997    90
                         nop                                                              // 0x005c9998    90
                         nop                                                              // 0x005c9999    90
                         nop                                                              // 0x005c999a    90
                         nop                                                              // 0x005c999b    90
                         nop                                                              // 0x005c999c    90
                         nop                                                              // 0x005c999d    90
                         nop                                                              // 0x005c999e    90
                         nop                                                              // 0x005c999f    90
_globl_ct_0x005c99a0:    call               _jmp_addr_0x005c99b0                          // 0x005c99a0    e80b000000
                         {disp32} jmp       _jmp_addr_0x005c9a00                          // 0x005c99a5    e956000000
                         nop                                                              // 0x005c99aa    90
                         nop                                                              // 0x005c99ab    90
                         nop                                                              // 0x005c99ac    90
                         nop                                                              // 0x005c99ad    90
                         nop                                                              // 0x005c99ae    90
                         nop                                                              // 0x005c99af    90
_jmp_addr_0x005c99b0:    mov                eax, 0x00d16918                               // 0x005c99b0    b81869d100
                         mov                ecx, 0x000000aa                               // 0x005c99b5    b9aa000000
                         xor.s              edx, edx                                      // 0x005c99ba    33d2
.att_syntax
_jmp_addr_0x005c99bc:    movl               $??_7Base@@6B@, (%eax)                        // 0x005c99bc    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x005c99c2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x005c99c5    895008
                         mov                dword ptr [eax], 0x0092a4e8                   // 0x005c99c8    c700e8a49200
                         add                eax, 0x1c                                     // 0x005c99ce    83c01c
                         dec                ecx                                           // 0x005c99d1    49
                         {disp8} jne        _jmp_addr_0x005c99bc                          // 0x005c99d2    75e8
                         ret                                                              // 0x005c99d4    c3
                         nop                                                              // 0x005c99d5    90
                         nop                                                              // 0x005c99d6    90
                         nop                                                              // 0x005c99d7    90
                         nop                                                              // 0x005c99d8    90
                         nop                                                              // 0x005c99d9    90
                         nop                                                              // 0x005c99da    90
                         nop                                                              // 0x005c99db    90
                         nop                                                              // 0x005c99dc    90
                         nop                                                              // 0x005c99dd    90
                         nop                                                              // 0x005c99de    90
                         nop                                                              // 0x005c99df    90
?GetBaseInfo@GToolTipsInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005c99e0    8b442404
                         mov                dword ptr [eax], 0x000000aa                   // 0x005c99e4    c700aa000000
                         mov                eax, 0x00d16918                               // 0x005c99ea    b81869d100
                         ret                0x0004                                        // 0x005c99ef    c20400
                         nop                                                              // 0x005c99f2    90
                         nop                                                              // 0x005c99f3    90
                         nop                                                              // 0x005c99f4    90
                         nop                                                              // 0x005c99f5    90
                         nop                                                              // 0x005c99f6    90
                         nop                                                              // 0x005c99f7    90
                         nop                                                              // 0x005c99f8    90
                         nop                                                              // 0x005c99f9    90
                         nop                                                              // 0x005c99fa    90
                         nop                                                              // 0x005c99fb    90
                         nop                                                              // 0x005c99fc    90
                         nop                                                              // 0x005c99fd    90
                         nop                                                              // 0x005c99fe    90
                         nop                                                              // 0x005c99ff    90
_jmp_addr_0x005c9a00:    push               0x005c9a10                                    // 0x005c9a00    68109a5c00
                         call               _atexit                                       // 0x005c9a05    e887bd1f00
                         pop                ecx                                           // 0x005c9a0a    59
                         ret                                                              // 0x005c9a0b    c3
                         nop                                                              // 0x005c9a0c    90
                         nop                                                              // 0x005c9a0d    90
                         nop                                                              // 0x005c9a0e    90
                         nop                                                              // 0x005c9a0f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x350910]          // 0x005c9a10    8a0d1069d100
                         mov                al, 0x01                                      // 0x005c9a16    b001
                         test               al, cl                                        // 0x005c9a18    84c8
                         {disp8} jne        _jmp_addr_0x005c9a3f                          // 0x005c9a1a    7523
                         push               esi                                           // 0x005c9a1c    56
                         or.s               cl, al                                        // 0x005c9a1d    0ac8
                         push               edi                                           // 0x005c9a1f    57
                         {disp32} mov       byte ptr [data_bytes + 0x350910], cl          // 0x005c9a20    880d1069d100
                         mov                esi, 0x00d17bb0                               // 0x005c9a26    beb07bd100
                         mov                edi, 0x000000aa                               // 0x005c9a2b    bfaa000000
_jmp_addr_0x005c9a30:    sub                esi, 0x1c                                     // 0x005c9a30    83ee1c
                         mov.s              ecx, esi                                      // 0x005c9a33    8bce
                         call               _jmp_addr_0x00436960                          // 0x005c9a35    e826cfe6ff
                         dec                edi                                           // 0x005c9a3a    4f
                         {disp8} jne        _jmp_addr_0x005c9a30                          // 0x005c9a3b    75f3
                         pop                edi                                           // 0x005c9a3d    5f
                         pop                esi                                           // 0x005c9a3e    5e
_jmp_addr_0x005c9a3f:    ret                                                              // 0x005c9a3f    c3
??_GGToolTipsInfo@@UAEPAXI@Z:
                         push               esi                                           // 0x005c9a40    56
                         mov.s              esi, ecx                                      // 0x005c9a41    8bf1
                         call               _jmp_addr_0x00436960                          // 0x005c9a43    e818cfe6ff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x005c9a48    f644240801
                         {disp8} je         _jmp_addr_0x005c9a5a                          // 0x005c9a4d    740b
                         push               0x1c                                          // 0x005c9a4f    6a1c
                         push               esi                                           // 0x005c9a51    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x005c9a52    e819cfe6ff
                         add                esp, 0x08                                     // 0x005c9a57    83c408
_jmp_addr_0x005c9a5a:    mov.s              eax, esi                                      // 0x005c9a5a    8bc6
                         pop                esi                                           // 0x005c9a5c    5e
                         ret                0x0004                                        // 0x005c9a5d    c20400
_jmp_addr_0x005c9a60:    xor.s              eax, eax                                      // 0x005c9a60    33c0
                         ret                                                              // 0x005c9a62    c3
                         nop                                                              // 0x005c9a63    90
                         nop                                                              // 0x005c9a64    90
                         nop                                                              // 0x005c9a65    90
                         nop                                                              // 0x005c9a66    90
                         nop                                                              // 0x005c9a67    90
                         nop                                                              // 0x005c9a68    90
                         nop                                                              // 0x005c9a69    90
                         nop                                                              // 0x005c9a6a    90
                         nop                                                              // 0x005c9a6b    90
                         nop                                                              // 0x005c9a6c    90
                         nop                                                              // 0x005c9a6d    90
                         nop                                                              // 0x005c9a6e    90
                         nop                                                              // 0x005c9a6f    90
_jmp_addr_0x005c9a70:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005c9a70    8b4c2404
                         sub                esp, 0x08                                     // 0x005c9a74    83ec08
                         push               ebx                                           // 0x005c9a77    53
                         push               esi                                           // 0x005c9a78    56
                         push               edi                                           // 0x005c9a79    57
                         xor.s              edi, edi                                      // 0x005c9a7a    33ff
                         cmp.s              ecx, edi                                      // 0x005c9a7c    3bcf
                         {disp32} je        _jmp_addr_0x005c9c50                          // 0x005c9a7e    0f84cc010000
                         sub                ecx, 0x00000e73                               // 0x005c9a84    81e9730e0000
                         cmp                ecx, 0x000000aa                               // 0x005c9a8a    81f9aa000000
                         {disp32} jae       _jmp_addr_0x005c9c50                          // 0x005c9a90    0f83ba010000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x005c9a96    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x0025005c]             // 0x005c9a9b    8b905c002500
                         {disp32} mov       eax, dword ptr [edx + 0x000045fc]             // 0x005c9aa1    8b82fc450000
                         mov                ebx, 0x00000001                               // 0x005c9aa7    bb01000000
                         cmp.s              eax, ebx                                      // 0x005c9aac    3bc3
                         {disp8} jne        _jmp_addr_0x005c9ad0                          // 0x005c9aae    7520
                         {disp32} lea       eax, dword ptr [ecx * 0x8 + 0x00000000]       // 0x005c9ab0    8d04cd00000000
                         sub.s              eax, ecx                                      // 0x005c9ab7    2bc1
                         {disp32} fld       dword ptr [eax * 0x4 + 0x00d16928]            // 0x005c9ab9    d904852869d100
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x814e0]             // 0x005c9ac0    d81de0a49200
                         fnstsw             ax                                            // 0x005c9ac6    dfe0
                         test               bl, ah                                        // 0x005c9ac8    84e3
                         {disp32} jne       _jmp_addr_0x005c9c50                          // 0x005c9aca    0f8580010000
_jmp_addr_0x005c9ad0:    {disp32} mov       edx, dword ptr [data_bytes + 0x22b9c4]        // 0x005c9ad0    8b15c419bf00
                         cmp.s              ecx, edx                                      // 0x005c9ad6    3bca
                         {disp8} jne        _jmp_addr_0x005c9ae0                          // 0x005c9ad8    7506
                         {disp32} mov       dword ptr [data_bytes + 0x351bdc], ebx        // 0x005c9ada    891ddc7bd100
_jmp_addr_0x005c9ae0:    {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x005c9ae0    8b742424
                         cmp.s              esi, edi                                      // 0x005c9ae4    3bf7
                         {disp8} jne        _jmp_addr_0x005c9af4                          // 0x005c9ae6    750c
                         cmp                dword ptr [data_bytes + 0x351bc8], edi        // 0x005c9ae8    393dc87bd100
                         {disp32} jg        _jmp_addr_0x005c9c50                          // 0x005c9aee    0f8f5c010000
_jmp_addr_0x005c9af4:    cmp                edx, -0x01                                    // 0x005c9af4    83faff
                         {disp8} je         _jmp_addr_0x005c9b45                          // 0x005c9af7    744c
                         push               ebp                                           // 0x005c9af9    55
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00000000]       // 0x005c9afa    8d04d500000000
                         sub.s              eax, edx                                      // 0x005c9b01    2bc2
                         {disp32} fld       dword ptr [eax * 0x4 + 0x00d16928]            // 0x005c9b03    d904852869d100
                         {disp32} lea       ebp, dword ptr [ecx * 0x8 + 0x00000000]       // 0x005c9b0a    8d2ccd00000000
                         sub.s              ebp, ecx                                      // 0x005c9b11    2be9
                         {disp32} fcomp     dword ptr [ebp * 0x4 + 0x00d16928]            // 0x005c9b13    d81cad2869d100
                         pop                ebp                                           // 0x005c9b1a    5d
                         fnstsw             ax                                            // 0x005c9b1b    dfe0
                         test               ah, 0x41                                      // 0x005c9b1d    f6c441
                         {disp8} je         _jmp_addr_0x005c9b2a                          // 0x005c9b20    7408
                         cmp.s              ecx, edx                                      // 0x005c9b22    3bca
                         {disp8} jne        _jmp_addr_0x005c9b45                          // 0x005c9b24    751f
                         cmp.s              esi, edi                                      // 0x005c9b26    3bf7
                         {disp8} jne        _jmp_addr_0x005c9b4f                          // 0x005c9b28    7525
_jmp_addr_0x005c9b2a:    {disp32} fld       dword ptr [edx * 0x4 + 0x00d16668]            // 0x005c9b2a    d904956866d100
                         pop                edi                                           // 0x005c9b31    5f
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x005c9b32    d80590a38a00
                         pop                esi                                           // 0x005c9b38    5e
                         pop                ebx                                           // 0x005c9b39    5b
                         {disp32} fstp      dword ptr [edx * 0x4 + 0x00d16668]            // 0x005c9b3a    d91c956866d100
                         add                esp, 0x08                                     // 0x005c9b41    83c408
                         ret                                                              // 0x005c9b44    c3
_jmp_addr_0x005c9b45:    cmp.s              esi, edi                                      // 0x005c9b45    3bf7
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], edi        // 0x005c9b47    893dc47bd100
                         {disp8} je         _jmp_addr_0x005c9b55                          // 0x005c9b4d    7406
_jmp_addr_0x005c9b4f:    {disp32} mov       dword ptr [data_bytes + 0x351bc4], ebx        // 0x005c9b4f    891dc47bd100
_jmp_addr_0x005c9b55:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005c9b55    d90590a38a00
                         {disp32} lea       esi, dword ptr [ecx * 0x8 + 0x00000000]       // 0x005c9b5b    8d34cd00000000
                         {disp32} fdiv      dword ptr [rdata_bytes + 0x814d4]             // 0x005c9b62    d835d4a49200
                         sub.s              esi, ecx                                      // 0x005c9b68    2bf1
                         shl                esi, 2                                        // 0x005c9b6a    c1e602
                         {disp32} mov       dword ptr [data_bytes + 0x22b9c4], ecx        // 0x005c9b6d    890dc419bf00
                         fld                st(0)                                         // 0x005c9b73    d9c0
                         {disp32} fmul      dword ptr [esi + 0x00d1692c]                  // 0x005c9b75    d88e2c69d100
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x005c9b7b    d80d14b48a00
                         call               _jmp_addr_0x007a1400                          // 0x005c9b81    e87a781d00
                         {disp32} fmul      dword ptr [esi + 0x00d16930]                  // 0x005c9b86    d88e3069d100
                         {disp32} mov       dword ptr [data_bytes + 0x351bc8], eax        // 0x005c9b8c    a3c87bd100
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x005c9b91    d80d14b48a00
                         call               _jmp_addr_0x007a1400                          // 0x005c9b97    e864781d00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005c9b9c    8b4c2420
                         push               0x00bf19cc                                    // 0x005c9ba0    68cc19bf00
                         push               0x00d17bd8                                    // 0x005c9ba5    68d87bd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bcc], eax        // 0x005c9baa    a3cc7bd100
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x005c9baf    8b442424
                         push               0x00d17bd4                                    // 0x005c9bb3    68d47bd100
                         push               eax                                           // 0x005c9bb8    50
                         {disp32} mov       dword ptr [data_bytes + 0x351bd0], ecx        // 0x005c9bb9    890dd07bd100
                         {disp32} mov       dword ptr [data_bytes + 0x22b9c8], eax        // 0x005c9bbf    a3c819bf00
                         call               _jmp_addr_0x005c78f0                          // 0x005c9bc4    e827ddffff
                         add                esp, 0x10                                     // 0x005c9bc9    83c410
                         test               eax, eax                                      // 0x005c9bcc    85c0
                         {disp8} jne        _jmp_addr_0x005c9be6                          // 0x005c9bce    7516
                         {disp32} mov       dword ptr [data_bytes + 0x351bd8], edi        // 0x005c9bd0    893dd87bd100
                         call               _jmp_addr_0x005c4800                          // 0x005c9bd6    e825acffff
                         {disp32} mov       dword ptr [data_bytes + 0x22b9cc], eax        // 0x005c9bdb    a3cc19bf00
                         {disp32} mov       dword ptr [data_bytes + 0x351bd4], edi        // 0x005c9be0    893dd47bd100
_jmp_addr_0x005c9be6:    {disp32} mov       edx, dword ptr [data_bytes + 0x22b9c4]        // 0x005c9be6    8b15c419bf00
                         {disp32} mov       dword ptr [data_bytes + 0x351bdc], ebx        // 0x005c9bec    891ddc7bd100
                         {disp32} lea       esi, dword ptr [edx * 0x4 + 0x00000000]       // 0x005c9bf2    8d349500000000
                         call               _jmp_addr_0x005c9a60                          // 0x005c9bf9    e862feffff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x005c9bfe    8944240c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22b9c4]        // 0x005c9c02    a1c419bf00
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x005c9c07    897c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x005c9c0b    df6c240c
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]       // 0x005c9c0f    8d0cc500000000
                         sub.s              ecx, eax                                      // 0x005c9c16    2bc8
                         {disp32} fstp      dword ptr [esi + 0x00d16668]                  // 0x005c9c18    d99e6866d100
                         {disp32} fld       dword ptr [ecx * 0x4 + 0x00d16928]            // 0x005c9c1e    d9048d2869d100
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x814e0]             // 0x005c9c25    d81de0a49200
                         fnstsw             ax                                            // 0x005c9c2b    dfe0
                         test               ah, 0x01                                      // 0x005c9c2d    f6c401
                         {disp8} je         _jmp_addr_0x005c9c50                          // 0x005c9c30    741e
                         {disp32} mov       edx, dword ptr [esi + 0x00d163c0]             // 0x005c9c32    8b96c063d100
                         inc                edx                                           // 0x005c9c38    42
                         mov.s              eax, edx                                      // 0x005c9c39    8bc2
                         cmp                eax, 0x50                                     // 0x005c9c3b    83f850
                         {disp32} mov       dword ptr [esi + 0x00d163c0], edx             // 0x005c9c3e    8996c063d100
                         {disp8} jbe        _jmp_addr_0x005c9c50                          // 0x005c9c44    760a
                         {disp32} mov       dword ptr [esi + 0x00d163c0], 0x00000050      // 0x005c9c46    c786c063d10050000000
_jmp_addr_0x005c9c50:    pop                edi                                           // 0x005c9c50    5f
                         pop                esi                                           // 0x005c9c51    5e
                         pop                ebx                                           // 0x005c9c52    5b
                         add                esp, 0x08                                     // 0x005c9c53    83c408
                         ret                                                              // 0x005c9c56    c3
                         nop                                                              // 0x005c9c57    90
                         nop                                                              // 0x005c9c58    90
                         nop                                                              // 0x005c9c59    90
                         nop                                                              // 0x005c9c5a    90
                         nop                                                              // 0x005c9c5b    90
                         nop                                                              // 0x005c9c5c    90
                         nop                                                              // 0x005c9c5d    90
                         nop                                                              // 0x005c9c5e    90
                         nop                                                              // 0x005c9c5f    90
_jmp_addr_0x005c9c60:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005c9c60    8b442404
                         push               0x0                                           // 0x005c9c64    6a00
                         push               0x1                                           // 0x005c9c66    6a01
                         push               0x0                                           // 0x005c9c68    6a00
                         push               -0x1                                          // 0x005c9c6a    6aff
                         push               eax                                           // 0x005c9c6c    50
                         call               _jmp_addr_0x005c9a70                          // 0x005c9c6d    e8fefdffff
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005c9c72    8b4c241c
                         add                esp, 0x14                                     // 0x005c9c76    83c414
                         {disp32} mov       dword ptr [data_bytes + 0x351bbc], ecx        // 0x005c9c79    890dbc7bd100
                         ret                                                              // 0x005c9c7f    c3
_jmp_addr_0x005c9c80:    {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005c9c80    8b4c2408
                         xor.s              edx, edx                                      // 0x005c9c84    33d2
                         cmp.s              ecx, edx                                      // 0x005c9c86    3bca
                         {disp8} je         _jmp_addr_0x005c9c97                          // 0x005c9c88    740d
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x005c9c8a    d9410c
                         {disp8} fcomp      dword ptr [ecx + 0x04]                        // 0x005c9c8d    d85904
                         fnstsw             ax                                            // 0x005c9c90    dfe0
                         test               ah, 0x40                                      // 0x005c9c92    f6c440
                         {disp8} je         _jmp_addr_0x005c9cec                          // 0x005c9c95    7455
_jmp_addr_0x005c9c97:    cmp                dword ptr [data_bytes + 0x351bc8], edx        // 0x005c9c97    3915c87bd100
                         {disp8} jg         _jmp_addr_0x005c9cec                          // 0x005c9c9d    7f4d
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22b9c4]        // 0x005c9c9f    a1c419bf00
                         push               esi                                           // 0x005c9ca4    56
                         {disp32} lea       esi, dword ptr [eax * 0x8 + 0x00000000]       // 0x005c9ca5    8d34c500000000
                         sub.s              esi, eax                                      // 0x005c9cac    2bf0
                         {disp32} fld       dword ptr [esi * 0x4 + 0x00d16928]            // 0x005c9cae    d904b52869d100
                         pop                esi                                           // 0x005c9cb5    5e
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x814e0]             // 0x005c9cb6    d81de0a49200
                         fnstsw             ax                                            // 0x005c9cbc    dfe0
                         test               ah, 0x01                                      // 0x005c9cbe    f6c401
                         {disp8} je         _jmp_addr_0x005c9cec                          // 0x005c9cc1    7429
                         cmp.s              ecx, edx                                      // 0x005c9cc3    3bca
                         {disp8} jne        _jmp_addr_0x005c9cca                          // 0x005c9cc5    7503
                         xor.s              eax, eax                                      // 0x005c9cc7    33c0
                         ret                                                              // 0x005c9cc9    c3
_jmp_addr_0x005c9cca:    {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x005c9cca    d9410c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005c9ccd    d81d90a38a00
                         fnstsw             ax                                            // 0x005c9cd3    dfe0
                         test               ah, 0x01                                      // 0x005c9cd5    f6c401
                         {disp8} jne        _jmp_addr_0x005c9cec                          // 0x005c9cd8    7512
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x005c9cda    8b410c
                         mov                dword ptr [ecx], eax                          // 0x005c9cdd    8901
                         {disp8} mov        dword ptr [ecx + 0x08], 0x3f800000            // 0x005c9cdf    c741080000803f
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x005c9ce6    895104
                         {disp8} mov        dword ptr [ecx + 0x10], edx                   // 0x005c9ce9    895110
_jmp_addr_0x005c9cec:    mov                eax, 0x00000001                               // 0x005c9cec    b801000000
                         ret                                                              // 0x005c9cf1    c3
                         nop                                                              // 0x005c9cf2    90
                         nop                                                              // 0x005c9cf3    90
                         nop                                                              // 0x005c9cf4    90
                         nop                                                              // 0x005c9cf5    90
                         nop                                                              // 0x005c9cf6    90
                         nop                                                              // 0x005c9cf7    90
                         nop                                                              // 0x005c9cf8    90
                         nop                                                              // 0x005c9cf9    90
                         nop                                                              // 0x005c9cfa    90
                         nop                                                              // 0x005c9cfb    90
                         nop                                                              // 0x005c9cfc    90
                         nop                                                              // 0x005c9cfd    90
                         nop                                                              // 0x005c9cfe    90
                         nop                                                              // 0x005c9cff    90
_jmp_addr_0x005c9d00:    sub                esp, 0x00000224                               // 0x005c9d00    81ec24020000
                         push               ebx                                           // 0x005c9d06    53
                         push               ebp                                           // 0x005c9d07    55
                         push               esi                                           // 0x005c9d08    56
                         mov.s              esi, ecx                                      // 0x005c9d09    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000045fc]             // 0x005c9d0b    8b86fc450000
                         xor.s              ebx, ebx                                      // 0x005c9d11    33db
                         cmp.s              eax, ebx                                      // 0x005c9d13    3bc3
                         push               edi                                           // 0x005c9d15    57
                         {disp32} je        _jmp_addr_0x005c9f99                          // 0x005c9d16    0f847d020000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005c9d1c    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x0025005c]             // 0x005c9d22    8b815c002500
                         cmp                dword ptr [eax + 0x000045e8], ebx             // 0x005c9d28    3998e8450000
                         {disp8} je         _jmp_addr_0x005c9d3c                          // 0x005c9d2e    740c
                         cmp                dword ptr [eax + 0x000045ec], ebx             // 0x005c9d30    3998ec450000
                         {disp32} jne       _jmp_addr_0x005c9f99                          // 0x005c9d36    0f855d020000
_jmp_addr_0x005c9d3c:    cmp                dword ptr [data_bytes + 0x351bb8], ebx        // 0x005c9d3c    391db87bd100
                         {disp8} jg         _jmp_addr_0x005c9d63                          // 0x005c9d42    7f1f
                         test               byte ptr [ecx + 0x14], 0x04                   // 0x005c9d44    f6411404
                         {disp8} je         _jmp_addr_0x005c9d63                          // 0x005c9d48    7419
                         cmp                dword ptr [ecx + 0x00205a28], 0x01            // 0x005c9d4a    83b9285a200001
                         {disp8} je         _jmp_addr_0x005c9d63                          // 0x005c9d51    7410
                         {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x005c9d53    8b7e2c
                         cmp.s              edi, ebx                                      // 0x005c9d56    3bfb
                         {disp32} je        _jmp_addr_0x005c9fb3                          // 0x005c9d58    0f8455020000
                         {disp32} jmp       _jmp_addr_0x005c9fa0                          // 0x005c9d5e    e93d020000
_jmp_addr_0x005c9d63:    xor.s              ecx, ecx                                      // 0x005c9d63    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x005c9d65    668b0d5a50e800
                         mov                eax, 0x51eb851f                               // 0x005c9d6c    b81f85eb51
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x005c9d71    895c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x005c9d75    895c241c
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x005c9d79    895c2420
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x005c9d7d    895c2428
                         imul               ecx                                           // 0x005c9d81    f7e9
                         sar                edx, 3                                        // 0x005c9d83    c1fa03
                         mov.s              eax, edx                                      // 0x005c9d86    8bc2
                         shr                eax, 0x1f                                     // 0x005c9d88    c1e81f
                         add.s              edx, eax                                      // 0x005c9d8b    03d0
                         mov.s              ebp, edx                                      // 0x005c9d8d    8bea
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x005c9d8f    8d4c2428
                         push               ecx                                           // 0x005c9d93    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x005c9d94    8d54241c
                         push               edx                                           // 0x005c9d98    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x005c9d99    8d442428
                         push               eax                                           // 0x005c9d9d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x005c9d9e    8d4c2428
                         push               ecx                                           // 0x005c9da2    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x005c9da3    8d542434
                         push               edx                                           // 0x005c9da7    52
                         push               0x00000080                                    // 0x005c9da8    6880000000
                         {disp8} lea        eax, dword ptr [esp + 0x4c]                   // 0x005c9dad    8d44244c
                         push               eax                                           // 0x005c9db1    50
                         mov.s              ecx, esi                                      // 0x005c9db2    8bce
                         call               _jmp_addr_0x005c9fc0                          // 0x005c9db4    e807020000
                         test               eax, eax                                      // 0x005c9db9    85c0
                         {disp8} je         _jmp_addr_0x005c9e1c                          // 0x005c9dbb    745f
                         {disp32} mov       ecx, dword ptr [esi + 0x000045fc]             // 0x005c9dbd    8b8efc450000
                         cmp                ecx, 0x01                                     // 0x005c9dc3    83f901
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22b9c4]        // 0x005c9dc6    a1c419bf00
                         {disp8} jne        _jmp_addr_0x005c9dfa                          // 0x005c9dcb    752d
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]       // 0x005c9dcd    8d14c500000000
                         sub.s              edx, eax                                      // 0x005c9dd4    2bd0
                         {disp32} fld       dword ptr [edx * 0x4 + 0x00d16928]            // 0x005c9dd6    d904952869d100
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x814e0]             // 0x005c9ddd    d81de0a49200
                         fnstsw             ax                                            // 0x005c9de3    dfe0
                         test               ah, 0x01                                      // 0x005c9de5    f6c401
                         {disp8} je         _jmp_addr_0x005c9dfa                          // 0x005c9de8    7410
                         {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x005c9dea    8b7e2c
                         cmp.s              edi, ebx                                      // 0x005c9ded    3bfb
                         {disp32} je        _jmp_addr_0x005c9fb3                          // 0x005c9def    0f84be010000
                         {disp32} jmp       _jmp_addr_0x005c9fa0                          // 0x005c9df5    e9a6010000
_jmp_addr_0x005c9dfa:    cmp                dword ptr [data_bytes + 0x351bb8], ebx        // 0x005c9dfa    391db87bd100
                         {disp8} jg         _jmp_addr_0x005c9e2c                          // 0x005c9e00    7f2a
                         cmp                ecx, 0x02                                     // 0x005c9e02    83f902
                         {disp8} jne        _jmp_addr_0x005c9e2c                          // 0x005c9e05    7525
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x005c9e07    8b462c
                         push               eax                                           // 0x005c9e0a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x005c9e0b    8d4c242c
                         push               ecx                                           // 0x005c9e0f    51
                         call               _jmp_addr_0x005c9c80                          // 0x005c9e10    e86bfeffff
                         add                esp, 0x08                                     // 0x005c9e15    83c408
                         test               eax, eax                                      // 0x005c9e18    85c0
                         {disp8} jne        _jmp_addr_0x005c9e2c                          // 0x005c9e1a    7510
_jmp_addr_0x005c9e1c:    {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x005c9e1c    8b7e2c
                         cmp.s              edi, ebx                                      // 0x005c9e1f    3bfb
                         {disp32} je        _jmp_addr_0x005c9fb3                          // 0x005c9e21    0f848c010000
                         {disp32} jmp       _jmp_addr_0x005c9fa0                          // 0x005c9e27    e974010000
_jmp_addr_0x005c9e2c:    cmp                dword ptr [data_bytes + 0x351bc8], ebx        // 0x005c9e2c    391dc87bd100
                         {disp8} jle        _jmp_addr_0x005c9e43                          // 0x005c9e32    7e0f
                         test               byte ptr [data_bytes + 0x7d6c], 0x02          // 0x005c9e34    f6056cdd9c0002
                         {disp8} je         _jmp_addr_0x005c9e43                          // 0x005c9e3b    7406
                         dec                dword ptr [data_bytes + 0x351bc8]             // 0x005c9e3d    ff0dc87bd100
_jmp_addr_0x005c9e43:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351bd0]        // 0x005c9e43    8b0dd07bd100
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x005c9e49    8b462c
                         or                 ecx, 0x16                                     // 0x005c9e4c    83c916
                         cmp.s              eax, ebx                                      // 0x005c9e4f    3bc3
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005c9e51    894c2418
                         {disp8} je         _jmp_addr_0x005c9eb1                          // 0x005c9e55    745a
                         {disp8} mov        edx, dword ptr [eax + 0x18]                   // 0x005c9e57    8b5018
                         cmp                edx, dword ptr [esp + 0x1c]                   // 0x005c9e5a    3b54241c
                         {disp8} jne        _jmp_addr_0x005c9e93                          // 0x005c9e5e    7533
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                   // 0x005c9e60    8b501c
                         cmp                edx, dword ptr [esp + 0x20]                   // 0x005c9e63    3b542420
                         {disp8} jne        _jmp_addr_0x005c9e93                          // 0x005c9e67    752a
                         {disp8} mov        edx, dword ptr [eax + 0x14]                   // 0x005c9e69    8b5014
                         cmp                edx, dword ptr [esp + 0x24]                   // 0x005c9e6c    3b542424
                         {disp8} jne        _jmp_addr_0x005c9e93                          // 0x005c9e70    7521
                         cmp                dword ptr [eax + 0x0000012c], ecx             // 0x005c9e72    39882c010000
                         {disp8} jne        _jmp_addr_0x005c9e93                          // 0x005c9e78    7519
                         add                eax, 0x20                                     // 0x005c9e7a    83c020
                         push               eax                                           // 0x005c9e7d    50
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x005c9e7e    8d442438
                         push               eax                                           // 0x005c9e82    50
                         call               _wcscmp                          // 0x005c9e83    e857d01f00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005c9e88    8b4c2420
                         add                esp, 0x08                                     // 0x005c9e8c    83c408
                         test               eax, eax                                      // 0x005c9e8f    85c0
                         {disp8} je         _jmp_addr_0x005c9eb1                          // 0x005c9e91    741e
_jmp_addr_0x005c9e93:    {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x005c9e93    8b7e2c
                         cmp.s              edi, ebx                                      // 0x005c9e96    3bfb
                         {disp8} je         _jmp_addr_0x005c9eae                          // 0x005c9e98    7414
                         mov.s              ecx, edi                                      // 0x005c9e9a    8bcf
                         call               _jmp_addr_0x00448c00                          // 0x005c9e9c    e85fede7ff
                         push               edi                                           // 0x005c9ea1    57
                         call               ??3@YAXPAX@Z                                  // 0x005c9ea2    e8f14f1e00
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005c9ea7    8b4c241c
                         add                esp, 0x04                                     // 0x005c9eab    83c404
_jmp_addr_0x005c9eae:    {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x005c9eae    895e2c
_jmp_addr_0x005c9eb1:    cmp                dword ptr [esi + 0x2c], ebx                   // 0x005c9eb1    395e2c
                         {disp32} jne       _jmp_addr_0x005c9fb3                          // 0x005c9eb4    0f85f9000000
                         cmp                dword ptr [data_bytes + 0x351bc4], ebx        // 0x005c9eba    391dc47bd100
                         {disp8} jne        _jmp_addr_0x005c9f33                          // 0x005c9ec0    7571
                         cmp                dword ptr [esi + 0x000045fc], 0x03            // 0x005c9ec2    83befc45000003
                         {disp8} je         _jmp_addr_0x005c9f33                          // 0x005c9ec9    7468
                         push               0x00000080                                    // 0x005c9ecb    6880000000
                         mov                al, -0x01                                     // 0x005c9ed0    b0ff
                         {disp8} mov        byte ptr [esp + 0x14], al                     // 0x005c9ed2    88442414
                         {disp8} mov        byte ptr [esp + 0x15], al                     // 0x005c9ed6    88442415
                         {disp8} mov        byte ptr [esp + 0x16], al                     // 0x005c9eda    88442416
                         {disp8} mov        byte ptr [esp + 0x17], al                     // 0x005c9ede    88442417
                         {disp8} mov        byte ptr [esp + 0x19], al                     // 0x005c9ee2    88442419
                         {disp8} mov        byte ptr [esp + 0x1a], al                     // 0x005c9ee6    8844241a
                         {disp8} mov        byte ptr [esp + 0x1b], al                     // 0x005c9eea    8844241b
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x005c9eee    8d542414
                         push               edx                                           // 0x005c9ef2    52
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x005c9ef3    8b542428
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x005c9ef7    8d44241c
                         push               eax                                           // 0x005c9efb    50
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005c9efc    8b442428
                         push               ecx                                           // 0x005c9f00    51
                         push               ebp                                           // 0x005c9f01    55
                         push               ebx                                           // 0x005c9f02    53
                         push               ebx                                           // 0x005c9f03    53
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x005c9f04    8d4c2450
                         push               ecx                                           // 0x005c9f08    51
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x005c9f09    8b4c2444
                         push               edx                                           // 0x005c9f0d    52
                         {disp32} mov       edx, dword ptr [data_bytes + 0x22b9c4]        // 0x005c9f0e    8b15c419bf00
                         push               eax                                           // 0x005c9f14    50
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00d163c0]       // 0x005c9f15    8b0495c063d100
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x005c9f1c    89442454
                         {disp8} mov        dword ptr [esp + 0x58], ebx                   // 0x005c9f20    895c2458
                         {disp8} fild       qword ptr [esp + 0x54]                        // 0x005c9f24    df6c2454
                         push               ecx                                           // 0x005c9f28    51
                         push               ecx                                           // 0x005c9f29    51
                         {disp8} mov        byte ptr [esp + 0x44], bl                     // 0x005c9f2a    885c2444
                         fstp               dword ptr [esp]                               // 0x005c9f2e    d91c24
                         {disp8} jmp        _jmp_addr_0x005c9f7d                          // 0x005c9f31    eb4a
_jmp_addr_0x005c9f33:    push               0x00000080                                    // 0x005c9f33    6880000000
                         mov                al, -0x01                                     // 0x005c9f38    b0ff
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x005c9f3a    8d542418
                         push               edx                                           // 0x005c9f3e    52
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x005c9f3f    8b542428
                         {disp8} mov        byte ptr [esp + 0x1c], al                     // 0x005c9f43    8844241c
                         {disp8} mov        byte ptr [esp + 0x1d], al                     // 0x005c9f47    8844241d
                         {disp8} mov        byte ptr [esp + 0x1e], al                     // 0x005c9f4b    8844241e
                         {disp8} mov        byte ptr [esp + 0x1f], al                     // 0x005c9f4f    8844241f
                         {disp8} mov        byte ptr [esp + 0x19], al                     // 0x005c9f53    88442419
                         {disp8} mov        byte ptr [esp + 0x1a], al                     // 0x005c9f57    8844241a
                         {disp8} mov        byte ptr [esp + 0x1b], al                     // 0x005c9f5b    8844241b
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x005c9f5f    8d442418
                         push               eax                                           // 0x005c9f63    50
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x005c9f64    8b442428
                         push               ecx                                           // 0x005c9f68    51
                         push               ebp                                           // 0x005c9f69    55
                         push               ebx                                           // 0x005c9f6a    53
                         push               ebx                                           // 0x005c9f6b    53
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x005c9f6c    8d4c2450
                         push               ecx                                           // 0x005c9f70    51
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x005c9f71    8b4c2444
                         push               edx                                           // 0x005c9f75    52
                         push               eax                                           // 0x005c9f76    50
                         push               ecx                                           // 0x005c9f77    51
                         {disp8} mov        byte ptr [esp + 0x3c], bl                     // 0x005c9f78    885c243c
                         push               ebx                                           // 0x005c9f7c    53
_jmp_addr_0x005c9f7d:    push               0x3f800000                                    // 0x005c9f7d    680000803f
                         push               ebx                                           // 0x005c9f82    53
                         call               _jmp_addr_0x004489d0                          // 0x005c9f83    e848eae7ff
                         add                esp, 0x38                                     // 0x005c9f88    83c438
                         pop                edi                                           // 0x005c9f8b    5f
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x005c9f8c    89462c
                         pop                esi                                           // 0x005c9f8f    5e
                         pop                ebp                                           // 0x005c9f90    5d
                         pop                ebx                                           // 0x005c9f91    5b
                         add                esp, 0x00000224                               // 0x005c9f92    81c424020000
                         ret                                                              // 0x005c9f98    c3
_jmp_addr_0x005c9f99:    {disp8} mov        edi, dword ptr [esi + 0x2c]                   // 0x005c9f99    8b7e2c
                         cmp.s              edi, ebx                                      // 0x005c9f9c    3bfb
                         {disp8} je         _jmp_addr_0x005c9fb3                          // 0x005c9f9e    7413
_jmp_addr_0x005c9fa0:    mov.s              ecx, edi                                      // 0x005c9fa0    8bcf
                         call               _jmp_addr_0x00448c00                          // 0x005c9fa2    e859ece7ff
                         push               edi                                           // 0x005c9fa7    57
                         call               ??3@YAXPAX@Z                                  // 0x005c9fa8    e8eb4e1e00
                         add                esp, 0x04                                     // 0x005c9fad    83c404
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x005c9fb0    895e2c
_jmp_addr_0x005c9fb3:    pop                edi                                           // 0x005c9fb3    5f
                         pop                esi                                           // 0x005c9fb4    5e
                         pop                ebp                                           // 0x005c9fb5    5d
                         pop                ebx                                           // 0x005c9fb6    5b
                         add                esp, 0x00000224                               // 0x005c9fb7    81c424020000
                         ret                                                              // 0x005c9fbd    c3
                         nop                                                              // 0x005c9fbe    90
                         nop                                                              // 0x005c9fbf    90
_jmp_addr_0x005c9fc0:    push               ebp                                           // 0x005c9fc0    55
                         mov.s              ebp, esp                                      // 0x005c9fc1    8bec
                         and                esp, 0xfffffff8                               // 0x005c9fc3    83e4f8
                         sub                esp, 0x1c                                     // 0x005c9fc6    83ec1c
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                   // 0x005c9fc9    8b4520
                         {disp8} mov        ecx, dword ptr [ebp + 0x1c]                   // 0x005c9fcc    8b4d1c
                         push               ebx                                           // 0x005c9fcf    53
                         push               esi                                           // 0x005c9fd0    56
                         push               edi                                           // 0x005c9fd1    57
                         push               eax                                           // 0x005c9fd2    50
                         push               ecx                                           // 0x005c9fd3    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x005c9fd4    8d542418
                         push               edx                                           // 0x005c9fd8    52
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x005c9fd9    8d442420
                         xor.s              esi, esi                                      // 0x005c9fdd    33f6
                         or                 edi, 0xffffffff                               // 0x005c9fdf    83cfff
                         push               eax                                           // 0x005c9fe2    50
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x005c9fe3    89742420
                         {disp8} mov        dword ptr [esp + 0x24], edi                   // 0x005c9fe7    897c2424
                         call               _jmp_addr_0x005d78d0                          // 0x005c9feb    e8e0d80000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351bcc]        // 0x005c9ff0    a1cc7bd100
                         add                esp, 0x10                                     // 0x005c9ff5    83c410
                         cmp.s              eax, esi                                      // 0x005c9ff8    3bc6
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351bdc]        // 0x005c9ffa    a1dc7bd100
                         {disp8} jle        _jmp_addr_0x005ca01c                          // 0x005c9fff    7e1b
                         cmp.s              eax, esi                                      // 0x005ca001    3bc6
                         {disp8} jne        _jmp_addr_0x005ca01c                          // 0x005ca003    7517
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351bcc]        // 0x005ca005    a1cc7bd100
                         dec                eax                                           // 0x005ca00a    48
                         {disp32} mov       dword ptr [data_bytes + 0x351bdc], 0x00000001 // 0x005ca00b    c705dc7bd10001000000
                         {disp32} mov       dword ptr [data_bytes + 0x351bcc], eax        // 0x005ca015    a3cc7bd100
                         {disp8} jmp        _jmp_addr_0x005ca025                          // 0x005ca01a    eb09
_jmp_addr_0x005ca01c:    cmp                eax, 0x01                                     // 0x005ca01c    83f801
                         {disp32} jne       _jmp_addr_0x005caa67                          // 0x005ca01f    0f85420a0000
_jmp_addr_0x005ca025:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351bd4]        // 0x005ca025    8b0dd47bd100
                         {disp8} mov        esi, dword ptr [ebp + 0x10]                   // 0x005ca02b    8b7510
                         {disp8} mov        ebx, dword ptr [ebp + 0x14]                   // 0x005ca02e    8b5d14
                         {disp8} mov        edi, dword ptr [ebp + 0x18]                   // 0x005ca031    8b7d18
                         mov                dword ptr [esi], ecx                          // 0x005ca034    890e
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351bd8]        // 0x005ca036    8b15d87bd100
                         mov                dword ptr [ebx], edx                          // 0x005ca03c    8913
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22b9cc]        // 0x005ca03e    a1cc19bf00
                         {disp8} mov        edx, dword ptr [ebp + 0x1c]                   // 0x005ca043    8b551c
                         mov                dword ptr [edi], eax                          // 0x005ca046    8907
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351bd0]        // 0x005ca048    8b0dd07bd100
                         mov                dword ptr [edx], ecx                          // 0x005ca04e    890a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22b9c4]        // 0x005ca050    a1c419bf00
                         add                eax, 0x00000e73                               // 0x005ca055    05730e0000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005ca05a    89442410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22b9c8]        // 0x005ca05e    a1c819bf00
                         cmp                eax, -0x01                                    // 0x005ca063    83f8ff
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005ca066    89442414
                         {disp8} jne        _jmp_addr_0x005ca078                          // 0x005ca06a    750c
                         mov                dword ptr [esi], 0x00000000                   // 0x005ca06c    c70600000000
                         mov                dword ptr [edi], 0x00000003                   // 0x005ca072    c70703000000
_jmp_addr_0x005ca078:    push               edi                                           // 0x005ca078    57
                         push               ebx                                           // 0x005ca079    53
                         push               esi                                           // 0x005ca07a    56
                         push               eax                                           // 0x005ca07b    50
                         call               _jmp_addr_0x005c78f0                          // 0x005ca07c    e86fd8ffff
                         add                esp, 0x10                                     // 0x005ca081    83c410
                         test               eax, eax                                      // 0x005ca084    85c0
                         {disp8} jne        _jmp_addr_0x005ca092                          // 0x005ca086    750a
                         mov                dword ptr [ebx], eax                          // 0x005ca088    8903
                         mov                dword ptr [edi], 0x00000003                   // 0x005ca08a    c70703000000
                         mov                dword ptr [esi], eax                          // 0x005ca090    8906
_jmp_addr_0x005ca092:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca092    8b442410
                         cmp                eax, 0x00000ee6                               // 0x005ca096    3de60e0000
                         {disp8} jne        _jmp_addr_0x005ca0df                          // 0x005ca09b    7542
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000ee6 // 0x005ca09d    813dac7cd100e60e0000
                         {disp8} ja         _jmp_addr_0x005ca0b0                          // 0x005ca0a7    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca0a9    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca0bc                          // 0x005ca0ae    eb0c
_jmp_addr_0x005ca0b0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca0b0    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000b2c8]             // 0x005ca0b6    8d81c8b20000
_jmp_addr_0x005ca0bc:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005ca0bc    8b5008
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x005ca0bf    8b4508
                         push               0x00e05ef4                                    // 0x005ca0c2    68f45ee000
                         push               edx                                           // 0x005ca0c7    52
                         push               eax                                           // 0x005ca0c8    50
                         call               _swprintf                                     // 0x005ca0c9    e8b1c31f00
                         add                esp, 0x0c                                     // 0x005ca0ce    83c40c
                         mov                eax, 0x00000001                               // 0x005ca0d1    b801000000
                         pop                edi                                           // 0x005ca0d6    5f
                         pop                esi                                           // 0x005ca0d7    5e
                         pop                ebx                                           // 0x005ca0d8    5b
                         mov.s              esp, ebp                                      // 0x005ca0d9    8be5
                         pop                ebp                                           // 0x005ca0db    5d
                         ret                0x001c                                        // 0x005ca0dc    c21c00
_jmp_addr_0x005ca0df:    cmp                eax, 0x00000ee1                               // 0x005ca0df    3de10e0000
                         {disp32} je        _jmp_addr_0x005caa2f                          // 0x005ca0e4    0f8445090000
                         cmp                eax, 0x00000ea2                               // 0x005ca0ea    3da20e0000
                         {disp32} je        _jmp_addr_0x005caa2f                          // 0x005ca0ef    0f843a090000
                         cmp                eax, 0x00000eea                               // 0x005ca0f5    3dea0e0000
                         {disp32} je        _jmp_addr_0x005caa2f                          // 0x005ca0fa    0f842f090000
                         cmp                eax, 0x00000eeb                               // 0x005ca100    3deb0e0000
                         {disp32} je        _jmp_addr_0x005caa2f                          // 0x005ca105    0f8424090000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005ca10b    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005ca111    e83ab7f8ff
                         {disp32} mov       esi, dword ptr [eax + 0x00000400]             // 0x005ca116    8bb000040000
                         xor.s              ebx, ebx                                      // 0x005ca11c    33db
                         cmp.s              esi, ebx                                      // 0x005ca11e    3bf3
                         {disp32} je        _jmp_addr_0x005ca9d6                          // 0x005ca120    0f84b0080000
                         cmp                dword ptr [esp + 0x10], 0x00000ef4            // 0x005ca126    817c2410f40e0000
                         {disp8} jne        _jmp_addr_0x005ca1a7                          // 0x005ca12e    7577
                         push               ebx                                           // 0x005ca130    53
                         push               0x009c7f80                                    // 0x005ca131    68807f9c00
                         push               0x009c7f50                                    // 0x005ca136    68507f9c00
                         push               ebx                                           // 0x005ca13b    53
                         push               esi                                           // 0x005ca13c    56
                         call               ___RTDynamicCast                              // 0x005ca13d    e8d7b81f00
                         mov.s              edi, eax                                      // 0x005ca142    8bf8
                         add                esp, 0x14                                     // 0x005ca144    83c414
                         cmp.s              edi, ebx                                      // 0x005ca147    3bfb
                         {disp8} je         _jmp_addr_0x005ca1a7                          // 0x005ca149    745c
                         mov                edx, dword ptr [edi]                          // 0x005ca14b    8b17
                         mov.s              ecx, edi                                      // 0x005ca14d    8bcf
                         call               dword ptr [edx + 0x890]                       // 0x005ca14f    ff9290080000
                         test               eax, eax                                      // 0x005ca155    85c0
                         {disp8} jne        _jmp_addr_0x005ca165                          // 0x005ca157    750c
                         mov                eax, dword ptr [edi]                          // 0x005ca159    8b07
                         mov.s              ecx, edi                                      // 0x005ca15b    8bcf
                         call               dword ptr [eax + 0x880]                       // 0x005ca15d    ff9080080000
                         {disp8} jmp        _jmp_addr_0x005ca16f                          // 0x005ca163    eb0a
_jmp_addr_0x005ca165:    mov                edx, dword ptr [edi]                          // 0x005ca165    8b17
                         mov.s              ecx, edi                                      // 0x005ca167    8bcf
                         call               dword ptr [edx + 0x884]                       // 0x005ca169    ff9284080000
_jmp_addr_0x005ca16f:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca16f    8b442410
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca173    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca17f                          // 0x005ca179    7304
                         cmp.s              eax, ebx                                      // 0x005ca17b    3bc3
                         {disp8} ja         _jmp_addr_0x005ca186                          // 0x005ca17d    7707
_jmp_addr_0x005ca17f:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca17f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca192                          // 0x005ca184    eb0c
_jmp_addr_0x005ca186:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca186    8b0da87cd100
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x005ca18c    8d0440
                         lea                eax, dword ptr [ecx + eax * 0x4]              // 0x005ca18f    8d0481
_jmp_addr_0x005ca192:    {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005ca192    d80d1cb48a00
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005ca198    8b5008
                         sub                esp, 0x08                                     // 0x005ca19b    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca19e    dd1c24
                         push               edx                                           // 0x005ca1a1    52
                         {disp32} jmp       _jmp_addr_0x005ca9bb                          // 0x005ca1a2    e914080000
_jmp_addr_0x005ca1a7:    cmp                dword ptr [esp + 0x10], 0x00000efb            // 0x005ca1a7    817c2410fb0e0000
                         {disp32} jne       _jmp_addr_0x005ca2fd                          // 0x005ca1af    0f8548010000
                         push               ebx                                           // 0x005ca1b5    53
                         push               0x009d9678                                    // 0x005ca1b6    6878969d00
                         push               0x009c7f50                                    // 0x005ca1bb    68507f9c00
                         push               ebx                                           // 0x005ca1c0    53
                         push               esi                                           // 0x005ca1c1    56
                         call               ___RTDynamicCast                              // 0x005ca1c2    e852b81f00
                         add                esp, 0x14                                     // 0x005ca1c7    83c414
                         cmp.s              eax, ebx                                      // 0x005ca1ca    3bc3
                         {disp8} je         _jmp_addr_0x005ca21d                          // 0x005ca1cc    744f
                         {disp8} mov        eax, dword ptr [eax + 0x60]                   // 0x005ca1ce    8b4060
                         push               ebx                                           // 0x005ca1d1    53
                         push               0x00bf1a10                                    // 0x005ca1d2    68101abf00
                         push               0x009c7f18                                    // 0x005ca1d7    68187f9c00
                         push               ebx                                           // 0x005ca1dc    53
                         push               eax                                           // 0x005ca1dd    50
                         call               ___RTDynamicCast                              // 0x005ca1de    e836b81f00
                         add                esp, 0x14                                     // 0x005ca1e3    83c414
                         mov.s              ecx, eax                                      // 0x005ca1e6    8bc8
                         call               _jmp_addr_0x00779b20                          // 0x005ca1e8    e833f91a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351cac]        // 0x005ca1ed    8b0dac7cd100
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005ca1f3    89442418
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca1f7    8b442410
                         cmp.s              eax, ecx                                      // 0x005ca1fb    3bc1
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x005ca1fd    895c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x005ca201    df6c2418
                         {disp32} jae       _jmp_addr_0x005ca693                          // 0x005ca205    0f8388040000
                         cmp.s              eax, ebx                                      // 0x005ca20b    3bc3
                         {disp32} ja        _jmp_addr_0x005ca69a                          // 0x005ca20d    0f8787040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca213    a1a87cd100
                         {disp32} jmp       _jmp_addr_0x005ca6a6                          // 0x005ca218    e989040000
_jmp_addr_0x005ca21d:    push               ebx                                           // 0x005ca21d    53
                         push               0x009c7f80                                    // 0x005ca21e    68807f9c00
                         push               0x009c7f50                                    // 0x005ca223    68507f9c00
                         push               ebx                                           // 0x005ca228    53
                         push               esi                                           // 0x005ca229    56
                         call               ___RTDynamicCast                              // 0x005ca22a    e8eab71f00
                         mov.s              edi, eax                                      // 0x005ca22f    8bf8
                         add                esp, 0x14                                     // 0x005ca231    83c414
                         cmp.s              edi, ebx                                      // 0x005ca234    3bfb
                         {disp8} je         _jmp_addr_0x005ca27f                          // 0x005ca236    7447
                         {disp8} mov        ecx, dword ptr [edi + 0x74]                   // 0x005ca238    8b4f74
                         cmp.s              ecx, ebx                                      // 0x005ca23b    3bcb
                         {disp8} je         _jmp_addr_0x005ca27f                          // 0x005ca23d    7440
                         call               ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ    // 0x005ca23f    e8ac23e7ff
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005ca244    d81d98a38a00
                         fnstsw             ax                                            // 0x005ca24a    dfe0
                         test               ah, 0x41                                      // 0x005ca24c    f6c441
                         {disp8} jne        _jmp_addr_0x005ca25b                          // 0x005ca24f    750a
                         {disp8} mov        ecx, dword ptr [edi + 0x74]                   // 0x005ca251    8b4f74
                         call               ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ    // 0x005ca254    e89723e7ff
                         {disp8} jmp        _jmp_addr_0x005ca261                          // 0x005ca259    eb06
_jmp_addr_0x005ca25b:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x005ca25b    d90598a38a00
_jmp_addr_0x005ca261:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca261    8b442410
_jmp_addr_0x005ca265:    cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca265    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca275                          // 0x005ca26b    7308
                         cmp.s              eax, ebx                                      // 0x005ca26d    3bc3
                         {disp32} ja        _jmp_addr_0x005ca753                          // 0x005ca26f    0f87de040000
_jmp_addr_0x005ca275:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca275    a1a87cd100
                         {disp32} jmp       _jmp_addr_0x005ca75e                          // 0x005ca27a    e9df040000
_jmp_addr_0x005ca27f:    cmp.s              edi, ebx                                      // 0x005ca27f    3bfb
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000ef4            // 0x005ca281    c7442410f40e0000
                         {disp8} je         _jmp_addr_0x005ca2fd                          // 0x005ca289    7472
                         mov                eax, dword ptr [edi]                          // 0x005ca28b    8b07
                         mov.s              ecx, edi                                      // 0x005ca28d    8bcf
                         call               dword ptr [eax + 0x890]                       // 0x005ca28f    ff9090080000
                         test               eax, eax                                      // 0x005ca295    85c0
                         {disp8} jne        _jmp_addr_0x005ca2a5                          // 0x005ca297    750c
                         mov                edx, dword ptr [edi]                          // 0x005ca299    8b17
                         mov.s              ecx, edi                                      // 0x005ca29b    8bcf
                         call               dword ptr [edx + 0x880]                       // 0x005ca29d    ff9280080000
                         {disp8} jmp        _jmp_addr_0x005ca2af                          // 0x005ca2a3    eb0a
_jmp_addr_0x005ca2a5:    mov                eax, dword ptr [edi]                          // 0x005ca2a5    8b07
                         mov.s              ecx, edi                                      // 0x005ca2a7    8bcf
                         call               dword ptr [eax + 0x884]                       // 0x005ca2a9    ff9084080000
_jmp_addr_0x005ca2af:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca2af    8b442410
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca2b3    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca2bf                          // 0x005ca2b9    7304
                         cmp.s              eax, ebx                                      // 0x005ca2bb    3bc3
                         {disp8} ja         _jmp_addr_0x005ca2c6                          // 0x005ca2bd    7707
_jmp_addr_0x005ca2bf:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca2bf    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca2d2                          // 0x005ca2c4    eb0c
_jmp_addr_0x005ca2c6:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca2c6    8b15a87cd100
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x005ca2cc    8d0c40
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x005ca2cf    8d048a
_jmp_addr_0x005ca2d2:    {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005ca2d2    d80d1cb48a00
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005ca2d8    8b4008
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x005ca2db    8b4d08
                         sub                esp, 0x08                                     // 0x005ca2de    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca2e1    dd1c24
                         push               eax                                           // 0x005ca2e4    50
                         push               ecx                                           // 0x005ca2e5    51
                         call               dword ptr [rdata_bytes + 0x360]               // 0x005ca2e6    ff1560938a00
                         add                esp, 0x10                                     // 0x005ca2ec    83c410
                         mov                eax, 0x00000001                               // 0x005ca2ef    b801000000
                         pop                edi                                           // 0x005ca2f4    5f
                         pop                esi                                           // 0x005ca2f5    5e
                         pop                ebx                                           // 0x005ca2f6    5b
                         mov.s              esp, ebp                                      // 0x005ca2f7    8be5
                         pop                ebp                                           // 0x005ca2f9    5d
                         ret                0x001c                                        // 0x005ca2fa    c21c00
_jmp_addr_0x005ca2fd:    push               ebx                                           // 0x005ca2fd    53
                         push               0x00bf1a10                                    // 0x005ca2fe    68101abf00
                         push               0x009c7f50                                    // 0x005ca303    68507f9c00
                         push               ebx                                           // 0x005ca308    53
                         push               esi                                           // 0x005ca309    56
                         call               ___RTDynamicCast                              // 0x005ca30a    e80ab71f00
                         mov.s              edi, eax                                      // 0x005ca30f    8bf8
                         add                esp, 0x14                                     // 0x005ca311    83c414
                         cmp.s              edi, ebx                                      // 0x005ca314    3bfb
                         {disp32} je        _jmp_addr_0x005ca3c6                          // 0x005ca316    0f84aa000000
                         mov                edx, dword ptr [edi]                          // 0x005ca31c    8b17
                         mov.s              ecx, edi                                      // 0x005ca31e    8bcf
                         call               dword ptr [edx + 0x890]                       // 0x005ca320    ff9290080000
                         test               eax, eax                                      // 0x005ca326    85c0
                         {disp32} je        _jmp_addr_0x005ca3c6                          // 0x005ca328    0f8498000000
                         mov                eax, dword ptr [edi]                          // 0x005ca32e    8b07
                         mov.s              ecx, edi                                      // 0x005ca330    8bcf
                         call               dword ptr [eax + 0x88c]                       // 0x005ca332    ff908c080000
                         test               eax, eax                                      // 0x005ca338    85c0
                         {disp32} je        _jmp_addr_0x005ca3c6                          // 0x005ca33a    0f8486000000
                         {disp32} mov       eax, dword ptr [edi + 0x000000c4]             // 0x005ca340    8b87c4000000
                         {disp8} mov        edx, dword ptr [edi + 0x28]                   // 0x005ca346    8b5728
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x005ca349    8d0480
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x005ca34c    8d0c80
                         shl                ecx, 2                                        // 0x005ca34f    c1e102
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005ca352    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x005ca356    895c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x005ca35a    df6c2418
                         {disp32} fdiv      dword ptr [edx + 0x000001ac]                  // 0x005ca35e    d8b2ac010000
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x241c]              // 0x005ca364    d82d1cb48a00
                         call               _jmp_addr_0x007a1400                          // 0x005ca36a    e891701d00
                         cdq                                                              // 0x005ca36f    99
                         mov                ecx, 0x00000064                               // 0x005ca370    b964000000
                         idiv               ecx                                           // 0x005ca375    f7f9
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca377    8b442410
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca37b    3b05ac7cd100
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x005ca381    89542418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x005ca385    db442418
                         {disp8} jae        _jmp_addr_0x005ca38f                          // 0x005ca389    7304
                         cmp.s              eax, ebx                                      // 0x005ca38b    3bc3
                         {disp8} ja         _jmp_addr_0x005ca3a7                          // 0x005ca38d    7718
_jmp_addr_0x005ca38f:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca38f    a1a87cd100
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005ca394    8b4808
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x005ca397    8b5508
                         sub                esp, 0x08                                     // 0x005ca39a    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca39d    dd1c24
                         push               ecx                                           // 0x005ca3a0    51
                         push               edx                                           // 0x005ca3a1    52
                         {disp32} jmp       _jmp_addr_0x005ca6b4                          // 0x005ca3a2    e90d030000
_jmp_addr_0x005ca3a7:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x005ca3a7    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca3aa    a1a87cd100
                         {disp8} mov        ecx, dword ptr [eax + edx * 0x4 + 0x08]       // 0x005ca3af    8b4c9008
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x005ca3b3    8d0490
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x005ca3b6    8b5508
                         sub                esp, 0x08                                     // 0x005ca3b9    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca3bc    dd1c24
                         push               ecx                                           // 0x005ca3bf    51
                         push               edx                                           // 0x005ca3c0    52
                         {disp32} jmp       _jmp_addr_0x005ca6b4                          // 0x005ca3c1    e9ee020000
_jmp_addr_0x005ca3c6:    mov                eax, dword ptr [esi]                          // 0x005ca3c6    8b06
                         mov.s              ecx, esi                                      // 0x005ca3c8    8bce
                         call               dword ptr [eax + 0xb8]                        // 0x005ca3ca    ff90b8000000
                         cmp.s              eax, ebx                                      // 0x005ca3d0    3bc3
                         {disp32} je        _jmp_addr_0x005ca4ab                          // 0x005ca3d2    0f84d3000000
                         mov                edx, dword ptr [eax]                          // 0x005ca3d8    8b10
                         mov.s              ecx, eax                                      // 0x005ca3da    8bc8
                         call               dword ptr [edx + 0x914]                       // 0x005ca3dc    ff9214090000
                         cmp.s              eax, ebx                                      // 0x005ca3e2    3bc3
                         {disp32} je        _jmp_addr_0x005ca4ab                          // 0x005ca3e4    0f84c1000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000134]             // 0x005ca3ea    8b8834010000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005ca3f0    894c2418
                         mov.s              ecx, eax                                      // 0x005ca3f4    8bc8
                         call               _jmp_addr_0x0077f840                          // 0x005ca3f6    e845541b00
                         {disp8} fdivr      dword ptr [esp + 0x18]                        // 0x005ca3fb    d87c2418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005ca3ff    d80d1cb48a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005ca405    d81598a38a00
                         fnstsw             ax                                            // 0x005ca40b    dfe0
                         test               ah, 0x40                                      // 0x005ca40d    f6c440
                         {disp8} jne        _jmp_addr_0x005ca462                          // 0x005ca410    7550
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca412    8b442410
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca416    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca422                          // 0x005ca41c    7304
                         cmp.s              eax, ebx                                      // 0x005ca41e    3bc3
                         {disp8} ja         _jmp_addr_0x005ca429                          // 0x005ca420    7707
_jmp_addr_0x005ca422:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca422    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca434                          // 0x005ca427    eb0b
_jmp_addr_0x005ca429:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x005ca429    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca42c    a1a87cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x005ca431    8d0490
_jmp_addr_0x005ca434:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005ca434    8b4808
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x005ca437    8b5508
                         sub                esp, 0x08                                     // 0x005ca43a    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca43d    dd1c24
                         push               ecx                                           // 0x005ca440    51
                         push               0x00bf19f8                                    // 0x005ca441    68f819bf00
                         push               edx                                           // 0x005ca446    52
                         call               _swprintf                                     // 0x005ca447    e833c01f00
                         mov                eax, 0x00000001                               // 0x005ca44c    b801000000
                         add                esp, 0x14                                     // 0x005ca451    83c414
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], eax        // 0x005ca454    a3c47bd100
                         pop                edi                                           // 0x005ca459    5f
                         pop                esi                                           // 0x005ca45a    5e
                         pop                ebx                                           // 0x005ca45b    5b
                         mov.s              esp, ebp                                      // 0x005ca45c    8be5
                         pop                ebp                                           // 0x005ca45e    5d
                         ret                0x001c                                        // 0x005ca45f    c21c00
_jmp_addr_0x005ca462:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca462    8b442410
                         fstp               st(0)                                         // 0x005ca466    ddd8
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca468    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca474                          // 0x005ca46e    7304
                         cmp.s              eax, ebx                                      // 0x005ca470    3bc3
                         {disp8} ja         _jmp_addr_0x005ca47b                          // 0x005ca472    7707
_jmp_addr_0x005ca474:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca474    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca487                          // 0x005ca479    eb0c
_jmp_addr_0x005ca47b:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca47b    8b0da87cd100
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x005ca481    8d0440
                         lea                eax, dword ptr [ecx + eax * 0x4]              // 0x005ca484    8d0481
_jmp_addr_0x005ca487:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005ca487    8b5008
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x005ca48a    8b4508
                         push               edx                                           // 0x005ca48d    52
                         push               eax                                           // 0x005ca48e    50
                         call               dword ptr [rdata_bytes + 0x360]               // 0x005ca48f    ff1560938a00
                         mov                eax, 0x00000001                               // 0x005ca495    b801000000
                         add                esp, 0x08                                     // 0x005ca49a    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], eax        // 0x005ca49d    a3c47bd100
                         pop                edi                                           // 0x005ca4a2    5f
                         pop                esi                                           // 0x005ca4a3    5e
                         pop                ebx                                           // 0x005ca4a4    5b
                         mov.s              esp, ebp                                      // 0x005ca4a5    8be5
                         pop                ebp                                           // 0x005ca4a7    5d
                         ret                0x001c                                        // 0x005ca4a8    c21c00
_jmp_addr_0x005ca4ab:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca4ab    8b442410
                         cmp                eax, 0x00000ee8                               // 0x005ca4af    3de80e0000
                         {disp8} jne        _jmp_addr_0x005ca510                          // 0x005ca4b4    755a
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], 0x00000001 // 0x005ca4b6    c705c47bd10001000000
                         mov                edx, dword ptr [esi]                          // 0x005ca4c0    8b16
                         mov.s              ecx, esi                                      // 0x005ca4c2    8bce
                         call               dword ptr [edx + 0x11c]                       // 0x005ca4c4    ff921c010000
_jmp_addr_0x005ca4ca:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca4ca    8b442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005ca4ce    d80d1cb48a00
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca4d4    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca4e0                          // 0x005ca4da    7304
                         cmp.s              eax, ebx                                      // 0x005ca4dc    3bc3
                         {disp8} ja         _jmp_addr_0x005ca4f4                          // 0x005ca4de    7714
_jmp_addr_0x005ca4e0:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca4e0    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005ca4e5    8b5008
                         sub                esp, 0x08                                     // 0x005ca4e8    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca4eb    dd1c24
                         push               edx                                           // 0x005ca4ee    52
                         {disp32} jmp       _jmp_addr_0x005ca9bb                          // 0x005ca4ef    e9c7040000
_jmp_addr_0x005ca4f4:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca4f4    8b0da87cd100
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x005ca4fa    8d0440
                         {disp8} mov        edx, dword ptr [ecx + eax * 0x4 + 0x08]       // 0x005ca4fd    8b548108
                         lea                eax, dword ptr [ecx + eax * 0x4]              // 0x005ca501    8d0481
                         sub                esp, 0x08                                     // 0x005ca504    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca507    dd1c24
                         push               edx                                           // 0x005ca50a    52
                         {disp32} jmp       _jmp_addr_0x005ca9bb                          // 0x005ca50b    e9ab040000
_jmp_addr_0x005ca510:    cmp                eax, 0x00000ee7                               // 0x005ca510    3de70e0000
                         {disp8} jne        _jmp_addr_0x005ca562                          // 0x005ca515    754b
                         mov.s              ecx, esi                                      // 0x005ca517    8bce
                         call               _jmp_addr_0x006e9d10                          // 0x005ca519    e8f2f71100
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005ca51e    8b4c2410
                         cmp                ecx, dword ptr [data_bytes + 0x351cac]        // 0x005ca522    3b0dac7cd100
                         {disp8} jae        _jmp_addr_0x005ca52e                          // 0x005ca528    7304
                         cmp.s              ecx, ebx                                      // 0x005ca52a    3bcb
                         {disp8} ja         _jmp_addr_0x005ca536                          // 0x005ca52c    7708
_jmp_addr_0x005ca52e:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca52e    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005ca542                          // 0x005ca534    eb0c
_jmp_addr_0x005ca536:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca536    8b15a87cd100
                         lea                ecx, dword ptr [ecx + ecx * 0x2]              // 0x005ca53c    8d0c49
                         lea                ecx, dword ptr [edx + ecx * 0x4]              // 0x005ca53f    8d0c8a
_jmp_addr_0x005ca542:    push               eax                                           // 0x005ca542    50
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x005ca543    8b4108
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x005ca546    8b4d08
                         push               eax                                           // 0x005ca549    50
                         push               ecx                                           // 0x005ca54a    51
                         call               dword ptr [rdata_bytes + 0x360]               // 0x005ca54b    ff1560938a00
                         add                esp, 0x0c                                     // 0x005ca551    83c40c
                         mov                eax, 0x00000001                               // 0x005ca554    b801000000
                         pop                edi                                           // 0x005ca559    5f
                         pop                esi                                           // 0x005ca55a    5e
                         pop                ebx                                           // 0x005ca55b    5b
                         mov.s              esp, ebp                                      // 0x005ca55c    8be5
                         pop                ebp                                           // 0x005ca55e    5d
                         ret                0x001c                                        // 0x005ca55f    c21c00
_jmp_addr_0x005ca562:    cmp                eax, 0x00000ee9                               // 0x005ca562    3de90e0000
                         {disp8} jne        _jmp_addr_0x005ca5c6                          // 0x005ca567    755d
                         push               ebx                                           // 0x005ca569    53
                         push               0x009c8ee8                                    // 0x005ca56a    68e88e9c00
                         push               0x009c7f50                                    // 0x005ca56f    68507f9c00
                         push               ebx                                           // 0x005ca574    53
                         push               esi                                           // 0x005ca575    56
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], 0x00000001 // 0x005ca576    c705c47bd10001000000
                         call               ___RTDynamicCast                              // 0x005ca580    e894b41f00
                         add                esp, 0x14                                     // 0x005ca585    83c414
                         cmp.s              eax, ebx                                      // 0x005ca588    3bc3
                         {disp32} je        _jmp_addr_0x005ca775                          // 0x005ca58a    0f84e5010000
                         {disp32} mov       eax, dword ptr [eax + 0x00000100]             // 0x005ca590    8b8000010000
                         cmp.s              eax, ebx                                      // 0x005ca596    3bc3
                         {disp32} je        _jmp_addr_0x005ca775                          // 0x005ca598    0f84d7010000
                         {disp32} fld       dword ptr [eax + 0x000000f0]                  // 0x005ca59e    d980f0000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca5a4    8b442410
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca5a8    3b05ac7cd100
                         {disp32} jae       _jmp_addr_0x005ca275                          // 0x005ca5ae    0f83c1fcffff
                         cmp.s              eax, ebx                                      // 0x005ca5b4    3bc3
                         {disp32} ja        _jmp_addr_0x005ca753                          // 0x005ca5b6    0f8797010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca5bc    a1a87cd100
                         {disp32} jmp       _jmp_addr_0x005ca75e                          // 0x005ca5c1    e998010000
_jmp_addr_0x005ca5c6:    cmp                eax, 0x00000ece                               // 0x005ca5c6    3dce0e0000
                         {disp8} je         _jmp_addr_0x005ca5d4                          // 0x005ca5cb    7407
                         cmp                eax, 0x00000eff                               // 0x005ca5cd    3dff0e0000
                         {disp8} jne        _jmp_addr_0x005ca603                          // 0x005ca5d2    752f
_jmp_addr_0x005ca5d4:    push               ebx                                           // 0x005ca5d4    53
                         push               0x009d9678                                    // 0x005ca5d5    6878969d00
                         push               0x009c7f50                                    // 0x005ca5da    68507f9c00
                         push               ebx                                           // 0x005ca5df    53
                         push               esi                                           // 0x005ca5e0    56
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], 0x00000001 // 0x005ca5e1    c705c47bd10001000000
                         call               ___RTDynamicCast                              // 0x005ca5eb    e829b41f00
                         add                esp, 0x14                                     // 0x005ca5f0    83c414
                         cmp.s              eax, ebx                                      // 0x005ca5f3    3bc3
                         {disp8} je         _jmp_addr_0x005ca5ff                          // 0x005ca5f5    7408
                         {disp8} fld        dword ptr [eax + 0x64]                        // 0x005ca5f7    d94064
                         {disp32} jmp       _jmp_addr_0x005ca4ca                          // 0x005ca5fa    e9cbfeffff
_jmp_addr_0x005ca5ff:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca5ff    8b442410
_jmp_addr_0x005ca603:    cmp                eax, 0x00000efd                               // 0x005ca603    3dfd0e0000
                         {disp32} je        _jmp_addr_0x005ca8fa                          // 0x005ca608    0f84ec020000
                         cmp                eax, 0x00000efe                               // 0x005ca60e    3dfe0e0000
                         {disp32} je        _jmp_addr_0x005ca8fa                          // 0x005ca613    0f84e1020000
                         cmp                eax, 0x00000e88                               // 0x005ca619    3d880e0000
                         {disp32} jne       _jmp_addr_0x005ca6d0                          // 0x005ca61e    0f85ac000000
                         mov                edx, dword ptr [esi]                          // 0x005ca624    8b16
                         mov.s              ecx, esi                                      // 0x005ca626    8bce
                         call               dword ptr [edx + 0x1e8]                       // 0x005ca628    ff92e8010000
                         test               eax, eax                                      // 0x005ca62e    85c0
                         {disp32} je        _jmp_addr_0x005caa73                          // 0x005ca630    0f843d040000
                         mov                eax, dword ptr [esi]                          // 0x005ca636    8b06
                         mov.s              ecx, esi                                      // 0x005ca638    8bce
                         call               dword ptr [eax + 0x48]                        // 0x005ca63a    ff5048
                         mov.s              edi, eax                                      // 0x005ca63d    8bf8
                         cmp.s              edi, ebx                                      // 0x005ca63f    3bfb
                         {disp32} je        _jmp_addr_0x005caa73                          // 0x005ca641    0f842c040000
                         mov.s              ecx, esi                                      // 0x005ca647    8bce
                         call               _jmp_addr_0x007472b0                          // 0x005ca649    e862cc1700
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005ca64e    89442410
                         {disp8} mov        eax, dword ptr [esi + 0x5c]                   // 0x005ca652    8b465c
                         push               eax                                           // 0x005ca655    50
                         mov.s              ecx, edi                                      // 0x005ca656    8bcf
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z// 0x005ca658    e8c33d1700
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005ca65d    d81d90a38a00
                         fnstsw             ax                                            // 0x005ca663    dfe0
                         test               ah, 0x01                                      // 0x005ca665    f6c401
                         {disp8} je         _jmp_addr_0x005ca677                          // 0x005ca668    740d
                         {disp8} mov        esi, dword ptr [esi + 0x5c]                   // 0x005ca66a    8b765c
                         push               esi                                           // 0x005ca66d    56
                         mov.s              ecx, edi                                      // 0x005ca66e    8bcf
                         call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z// 0x005ca670    e8ab3d1700
                         {disp8} jmp        _jmp_addr_0x005ca67d                          // 0x005ca675    eb06
_jmp_addr_0x005ca677:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x005ca677    d90590a38a00
_jmp_addr_0x005ca67d:    {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005ca67d    d80d1cb48a00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca683    8b442410
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca687    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca693                          // 0x005ca68d    7304
                         cmp.s              eax, ebx                                      // 0x005ca68f    3bc3
                         {disp8} ja         _jmp_addr_0x005ca69a                          // 0x005ca691    7707
_jmp_addr_0x005ca693:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca693    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca6a6                          // 0x005ca698    eb0c
_jmp_addr_0x005ca69a:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca69a    8b15a87cd100
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x005ca6a0    8d0c40
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x005ca6a3    8d048a
_jmp_addr_0x005ca6a6:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005ca6a6    8b4008
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x005ca6a9    8b4d08
                         sub                esp, 0x08                                     // 0x005ca6ac    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca6af    dd1c24
                         push               eax                                           // 0x005ca6b2    50
                         push               ecx                                           // 0x005ca6b3    51
_jmp_addr_0x005ca6b4:    call               dword ptr [rdata_bytes + 0x360]               // 0x005ca6b4    ff1560938a00
                         mov                eax, 0x00000001                               // 0x005ca6ba    b801000000
                         add                esp, 0x10                                     // 0x005ca6bf    83c410
                         {disp32} mov       dword ptr [data_bytes + 0x351bc4], eax        // 0x005ca6c2    a3c47bd100
                         pop                edi                                           // 0x005ca6c7    5f
                         pop                esi                                           // 0x005ca6c8    5e
                         pop                ebx                                           // 0x005ca6c9    5b
                         mov.s              esp, ebp                                      // 0x005ca6ca    8be5
                         pop                ebp                                           // 0x005ca6cc    5d
                         ret                0x001c                                        // 0x005ca6cd    c21c00
_jmp_addr_0x005ca6d0:    cmp                eax, 0x00000ecc                               // 0x005ca6d0    3dcc0e0000
                         {disp32} jne       _jmp_addr_0x005ca787                          // 0x005ca6d5    0f85ac000000
                         mov                edx, dword ptr [esi]                          // 0x005ca6db    8b16
                         mov.s              ecx, esi                                      // 0x005ca6dd    8bce
                         call               dword ptr [edx + 0x1e0]                       // 0x005ca6df    ff92e0010000
                         test               eax, eax                                      // 0x005ca6e5    85c0
                         {disp8} jne        _jmp_addr_0x005ca6fb                          // 0x005ca6e7    7512
                         mov                eax, dword ptr [esi]                          // 0x005ca6e9    8b06
                         mov.s              ecx, esi                                      // 0x005ca6eb    8bce
                         call               dword ptr [eax + 0x1e4]                       // 0x005ca6ed    ff90e4010000
                         test               eax, eax                                      // 0x005ca6f3    85c0
                         {disp32} je        _jmp_addr_0x005ca783                          // 0x005ca6f5    0f8488000000
_jmp_addr_0x005ca6fb:    mov                edx, dword ptr [esi]                          // 0x005ca6fb    8b16
                         mov.s              ecx, esi                                      // 0x005ca6fd    8bce
                         call               dword ptr [edx + 0x48]                        // 0x005ca6ff    ff5248
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005ca702    8b0d5c19d000
                         xor.s              edx, edx                                      // 0x005ca708    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x00205a59]               // 0x005ca70a    8a91595a2000
                         lea                esi, dword ptr [edx + edx * 0x4]              // 0x005ca710    8d3492
                         lea                esi, dword ptr [edx + esi * 0x8]              // 0x005ca713    8d34f2
                         lea                edx, dword ptr [edx + esi * 0x2]              // 0x005ca716    8d1472
                         shl                edx, 5                                        // 0x005ca719    c1e205
                         {disp8} lea        ecx, dword ptr [edx + ecx * 0x1 + 0x18]       // 0x005ca71c    8d4c0a18
                         push               ecx                                           // 0x005ca720    51
                         mov.s              ecx, eax                                      // 0x005ca721    8bc8
                         call               _jmp_addr_0x00740ea0                          // 0x005ca723    e878671700
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x005ca728    d80d28b28a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x005ca72e    d81598a38a00
                         fnstsw             ax                                            // 0x005ca734    dfe0
                         test               ah, 0x01                                      // 0x005ca736    f6c401
                         {disp32} je        _jmp_addr_0x005ca261                          // 0x005ca739    0f8422fbffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2678]              // 0x005ca73f    d80d78b68a00
                         mov                eax, 0x00000ee0                               // 0x005ca745    b8e00e0000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005ca74a    89442410
                         {disp32} jmp       _jmp_addr_0x005ca265                          // 0x005ca74e    e912fbffff
_jmp_addr_0x005ca753:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x005ca753    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca756    a1a87cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x005ca75b    8d0490
_jmp_addr_0x005ca75e:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005ca75e    8b4808
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x005ca761    8b5508
                         sub                esp, 0x08                                     // 0x005ca764    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca767    dd1c24
                         push               ecx                                           // 0x005ca76a    51
                         push               edx                                           // 0x005ca76b    52
                         call               dword ptr [rdata_bytes + 0x360]               // 0x005ca76c    ff1560938a00
                         add                esp, 0x10                                     // 0x005ca772    83c410
_jmp_addr_0x005ca775:    mov                eax, 0x00000001                               // 0x005ca775    b801000000
                         pop                edi                                           // 0x005ca77a    5f
                         pop                esi                                           // 0x005ca77b    5e
                         pop                ebx                                           // 0x005ca77c    5b
                         mov.s              esp, ebp                                      // 0x005ca77d    8be5
                         pop                ebp                                           // 0x005ca77f    5d
                         ret                0x001c                                        // 0x005ca780    c21c00
_jmp_addr_0x005ca783:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca783    8b442410
_jmp_addr_0x005ca787:    cmp                eax, 0x00000efc                               // 0x005ca787    3dfc0e0000
                         {disp32} jne       _jmp_addr_0x005ca83e                          // 0x005ca78c    0f85ac000000
                         mov                eax, dword ptr [esi]                          // 0x005ca792    8b06
                         mov.s              ecx, esi                                      // 0x005ca794    8bce
                         call               dword ptr [eax + 0x1e0]                       // 0x005ca796    ff90e0010000
                         test               eax, eax                                      // 0x005ca79c    85c0
                         {disp8} jne        _jmp_addr_0x005ca7b2                          // 0x005ca79e    7512
                         mov                edx, dword ptr [esi]                          // 0x005ca7a0    8b16
                         mov.s              ecx, esi                                      // 0x005ca7a2    8bce
                         call               dword ptr [edx + 0x1e4]                       // 0x005ca7a4    ff92e4010000
                         test               eax, eax                                      // 0x005ca7aa    85c0
                         {disp32} je        _jmp_addr_0x005ca83a                          // 0x005ca7ac    0f8488000000
_jmp_addr_0x005ca7b2:    mov                eax, dword ptr [esi]                          // 0x005ca7b2    8b06
                         mov.s              ecx, esi                                      // 0x005ca7b4    8bce
                         call               dword ptr [eax + 0x48]                        // 0x005ca7b6    ff5048
                         mov.s              esi, eax                                      // 0x005ca7b9    8bf0
                         {disp32} mov       ecx, dword ptr [esi + 0x0000061c]             // 0x005ca7bb    8b8e1c060000
                         {disp32} mov       edx, dword ptr [esi + 0x00000618]             // 0x005ca7c1    8b9618060000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca7c7    8b442410
                         add.s              ecx, edx                                      // 0x005ca7cb    03ca
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005ca7cd    894c2418
                         cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca7d1    3b05ac7cd100
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x005ca7d7    895c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x005ca7db    df6c2418
                         {disp8} jae        _jmp_addr_0x005ca7e5                          // 0x005ca7df    7304
                         cmp.s              eax, ebx                                      // 0x005ca7e1    3bc3
                         {disp8} ja         _jmp_addr_0x005ca7ec                          // 0x005ca7e3    7707
_jmp_addr_0x005ca7e5:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca7e5    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca7f7                          // 0x005ca7ea    eb0b
_jmp_addr_0x005ca7ec:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x005ca7ec    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca7ef    a1a87cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x005ca7f4    8d0490
_jmp_addr_0x005ca7f7:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005ca7f7    8b4808
                         {disp8} mov        edi, dword ptr [ebp + 0x08]                   // 0x005ca7fa    8b7d08
                         sub                esp, 0x08                                     // 0x005ca7fd    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca800    dd1c24
                         push               ecx                                           // 0x005ca803    51
                         push               edi                                           // 0x005ca804    57
                         call               dword ptr [rdata_bytes + 0x360]               // 0x005ca805    ff1560938a00
                         {disp32} mov       edx, dword ptr [esi + 0x00000650]             // 0x005ca80b    8b9650060000
                         {disp32} mov       eax, dword ptr [esi + 0x00000644]             // 0x005ca811    8b8644060000
                         add                esp, 0x10                                     // 0x005ca817    83c410
                         add.s              edx, eax                                      // 0x005ca81a    03d0
                         push               edx                                           // 0x005ca81c    52
                         push               edi                                           // 0x005ca81d    57
                         push               0x00bf19ec                                    // 0x005ca81e    68ec19bf00
                         push               edi                                           // 0x005ca823    57
                         call               _swprintf                                     // 0x005ca824    e856bc1f00
                         add                esp, 0x10                                     // 0x005ca829    83c410
                         mov                eax, 0x00000001                               // 0x005ca82c    b801000000
                         pop                edi                                           // 0x005ca831    5f
                         pop                esi                                           // 0x005ca832    5e
                         pop                ebx                                           // 0x005ca833    5b
                         mov.s              esp, ebp                                      // 0x005ca834    8be5
                         pop                ebp                                           // 0x005ca836    5d
                         ret                0x001c                                        // 0x005ca837    c21c00
_jmp_addr_0x005ca83a:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca83a    8b442410
_jmp_addr_0x005ca83e:    cmp                eax, 0x00000ef9                               // 0x005ca83e    3df90e0000
                         {disp32} jne       _jmp_addr_0x005ca9da                          // 0x005ca843    0f8591010000
                         mov                eax, dword ptr [esi]                          // 0x005ca849    8b06
                         push               ebx                                           // 0x005ca84b    53
                         mov.s              ecx, esi                                      // 0x005ca84c    8bce
                         call               dword ptr [eax + 0x300]                       // 0x005ca84e    ff9000030000
                         test               eax, eax                                      // 0x005ca854    85c0
                         {disp32} je        _jmp_addr_0x005ca9d6                          // 0x005ca856    0f847a010000
                         push               ebx                                           // 0x005ca85c    53
                         push               0x009c8ec8                                    // 0x005ca85d    68c88e9c00
                         push               0x009c7f50                                    // 0x005ca862    68507f9c00
                         push               ebx                                           // 0x005ca867    53
                         push               esi                                           // 0x005ca868    56
                         call               ___RTDynamicCast                              // 0x005ca869    e8abb11f00
                         mov.s              esi, eax                                      // 0x005ca86e    8bf0
                         mov                edx, dword ptr [esi]                          // 0x005ca870    8b16
                         add                esp, 0x14                                     // 0x005ca872    83c414
                         push               ebx                                           // 0x005ca875    53
                         mov.s              ecx, esi                                      // 0x005ca876    8bce
                         call               dword ptr [edx + 0x98]                        // 0x005ca878    ff9298000000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005ca87e    89442418
                         mov                eax, dword ptr [esi]                          // 0x005ca882    8b06
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x005ca884    895c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x005ca888    df6c2418
                         push               0x1                                           // 0x005ca88c    6a01
                         mov.s              ecx, esi                                      // 0x005ca88e    8bce
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x005ca890    d95c241c
                         call               dword ptr [eax + 0x98]                        // 0x005ca894    ff9098000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351cac]        // 0x005ca89a    8b0dac7cd100
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005ca8a0    89442420
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca8a4    8b442410
                         cmp.s              eax, ecx                                      // 0x005ca8a8    3bc1
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x005ca8aa    895c2424
                         {disp8} fild       qword ptr [esp + 0x20]                        // 0x005ca8ae    df6c2420
                         {disp8} jae        _jmp_addr_0x005ca8b8                          // 0x005ca8b2    7304
                         cmp.s              eax, ebx                                      // 0x005ca8b4    3bc3
                         {disp8} ja         _jmp_addr_0x005ca8bf                          // 0x005ca8b6    7707
_jmp_addr_0x005ca8b8:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca8b8    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca8cb                          // 0x005ca8bd    eb0c
_jmp_addr_0x005ca8bf:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca8bf    8b15a87cd100
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x005ca8c5    8d0c40
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x005ca8c8    8d048a
_jmp_addr_0x005ca8cb:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005ca8cb    8b4008
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x005ca8ce    8b4d08
                         sub                esp, 0x08                                     // 0x005ca8d1    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca8d4    dd1c24
                         sub                esp, 0x08                                     // 0x005ca8d7    83ec08
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005ca8da    d9442428
                         fstp               qword ptr [esp]                               // 0x005ca8de    dd1c24
                         push               eax                                           // 0x005ca8e1    50
                         push               ecx                                           // 0x005ca8e2    51
                         call               dword ptr [rdata_bytes + 0x360]               // 0x005ca8e3    ff1560938a00
                         add                esp, 0x18                                     // 0x005ca8e9    83c418
_jmp_addr_0x005ca8ec:    mov                eax, 0x00000001                               // 0x005ca8ec    b801000000
                         pop                edi                                           // 0x005ca8f1    5f
                         pop                esi                                           // 0x005ca8f2    5e
                         pop                ebx                                           // 0x005ca8f3    5b
                         mov.s              esp, ebp                                      // 0x005ca8f4    8be5
                         pop                ebp                                           // 0x005ca8f6    5d
                         ret                0x001c                                        // 0x005ca8f7    c21c00
_jmp_addr_0x005ca8fa:    push               ebx                                           // 0x005ca8fa    53
                         push               0x00becb98                                    // 0x005ca8fb    6898cbbe00
                         push               0x009c7f50                                    // 0x005ca900    68507f9c00
                         push               ebx                                           // 0x005ca905    53
                         push               esi                                           // 0x005ca906    56
                         call               ___RTDynamicCast                              // 0x005ca907    e80db11f00
                         mov.s              ecx, eax                                      // 0x005ca90c    8bc8
                         add                esp, 0x14                                     // 0x005ca90e    83c414
                         cmp.s              ecx, ebx                                      // 0x005ca911    3bcb
                         {disp32} je        _jmp_addr_0x005ca775                          // 0x005ca913    0f845cfeffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca919    8b442410
                         cmp                eax, 0x00000efd                               // 0x005ca91d    3dfd0e0000
                         {disp8} jne        _jmp_addr_0x005ca97d                          // 0x005ca922    7559
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000efd // 0x005ca924    813dac7cd100fd0e0000
                         {disp8} ja         _jmp_addr_0x005ca937                          // 0x005ca92e    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca930    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca943                          // 0x005ca935    eb0c
_jmp_addr_0x005ca937:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca937    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000b3dc]             // 0x005ca93d    8d82dcb30000
_jmp_addr_0x005ca943:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x005ca943    8b7008
                         mov                eax, dword ptr [ecx]                          // 0x005ca946    8b01
                         push               ebx                                           // 0x005ca948    53
                         call               dword ptr [eax + 0x98]                        // 0x005ca949    ff9098000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x005ca94f    8b4d08
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005ca952    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x005ca956    895c2424
                         {disp8} fild       qword ptr [esp + 0x20]                        // 0x005ca95a    df6c2420
                         sub                esp, 0x08                                     // 0x005ca95e    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca961    dd1c24
                         push               esi                                           // 0x005ca964    56
                         push               ecx                                           // 0x005ca965    51
                         call               dword ptr [rdata_bytes + 0x360]               // 0x005ca966    ff1560938a00
                         add                esp, 0x10                                     // 0x005ca96c    83c410
                         mov                eax, 0x00000001                               // 0x005ca96f    b801000000
                         pop                edi                                           // 0x005ca974    5f
                         pop                esi                                           // 0x005ca975    5e
                         pop                ebx                                           // 0x005ca976    5b
                         mov.s              esp, ebp                                      // 0x005ca977    8be5
                         pop                ebp                                           // 0x005ca979    5d
                         ret                0x001c                                        // 0x005ca97a    c21c00
_jmp_addr_0x005ca97d:    cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca97d    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca989                          // 0x005ca983    7304
                         cmp.s              eax, ebx                                      // 0x005ca985    3bc3
                         {disp8} ja         _jmp_addr_0x005ca990                          // 0x005ca987    7707
_jmp_addr_0x005ca989:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca989    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca99b                          // 0x005ca98e    eb0b
_jmp_addr_0x005ca990:    lea                edx, dword ptr [eax + eax * 0x2]              // 0x005ca990    8d1440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca993    a1a87cd100
                         lea                eax, dword ptr [eax + edx * 0x4]              // 0x005ca998    8d0490
_jmp_addr_0x005ca99b:    mov                edx, dword ptr [ecx]                          // 0x005ca99b    8b11
                         {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x005ca99d    8b7008
                         push               0x1                                           // 0x005ca9a0    6a01
                         call               dword ptr [edx + 0x98]                        // 0x005ca9a2    ff9298000000
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x005ca9a8    89442420
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x005ca9ac    895c2424
                         {disp8} fild       qword ptr [esp + 0x20]                        // 0x005ca9b0    df6c2420
                         sub                esp, 0x08                                     // 0x005ca9b4    83ec08
                         fstp               qword ptr [esp]                               // 0x005ca9b7    dd1c24
                         push               esi                                           // 0x005ca9ba    56
_jmp_addr_0x005ca9bb:    {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x005ca9bb    8b4508
                         push               eax                                           // 0x005ca9be    50
_jmp_addr_0x005ca9bf:    call               dword ptr [rdata_bytes + 0x360]               // 0x005ca9bf    ff1560938a00
                         add                esp, 0x10                                     // 0x005ca9c5    83c410
                         mov                eax, 0x00000001                               // 0x005ca9c8    b801000000
                         pop                edi                                           // 0x005ca9cd    5f
                         pop                esi                                           // 0x005ca9ce    5e
                         pop                ebx                                           // 0x005ca9cf    5b
                         mov.s              esp, ebp                                      // 0x005ca9d0    8be5
                         pop                ebp                                           // 0x005ca9d2    5d
                         ret                0x001c                                        // 0x005ca9d3    c21c00
_jmp_addr_0x005ca9d6:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005ca9d6    8b442410
_jmp_addr_0x005ca9da:    cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005ca9da    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005ca9e6                          // 0x005ca9e0    7304
                         cmp.s              eax, ebx                                      // 0x005ca9e2    3bc3
                         {disp8} ja         _jmp_addr_0x005ca9ed                          // 0x005ca9e4    7707
_jmp_addr_0x005ca9e6:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005ca9e6    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005ca9f9                          // 0x005ca9eb    eb0c
_jmp_addr_0x005ca9ed:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005ca9ed    8b15a87cd100
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x005ca9f3    8d0c40
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x005ca9f6    8d048a
_jmp_addr_0x005ca9f9:    {disp8} mov        ecx, dword ptr [ebp + 0x0c]                   // 0x005ca9f9    8b4d0c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005ca9fc    8b5008
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x005ca9ff    8b4508
                         push               ecx                                           // 0x005caa02    51
                         push               edx                                           // 0x005caa03    52
                         push               eax                                           // 0x005caa04    50
                         call               _wcsncpy                                      // 0x005caa05    e81bba1f00
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005caa0a    8b442420
                         add                esp, 0x0c                                     // 0x005caa0e    83c40c
                         cmp                eax, -0x01                                    // 0x005caa11    83f8ff
                         {disp32} jne       _jmp_addr_0x005ca8ec                          // 0x005caa14    0f85d2feffff
                         cmp                dword ptr [esp + 0x10], ebx                   // 0x005caa1a    395c2410
                         {disp32} jne       _jmp_addr_0x005ca8ec                          // 0x005caa1e    0f85c8feffff
                         xor.s              eax, eax                                      // 0x005caa24    33c0
                         pop                edi                                           // 0x005caa26    5f
                         pop                esi                                           // 0x005caa27    5e
                         pop                ebx                                           // 0x005caa28    5b
                         mov.s              esp, ebp                                      // 0x005caa29    8be5
                         pop                ebp                                           // 0x005caa2b    5d
                         ret                0x001c                                        // 0x005caa2c    c21c00
_jmp_addr_0x005caa2f:    cmp                eax, dword ptr [data_bytes + 0x351cac]        // 0x005caa2f    3b05ac7cd100
                         {disp8} jae        _jmp_addr_0x005caa3b                          // 0x005caa35    7304
                         test               eax, eax                                      // 0x005caa37    85c0
                         {disp8} ja         _jmp_addr_0x005caa42                          // 0x005caa39    7707
_jmp_addr_0x005caa3b:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005caa3b    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005caa4e                          // 0x005caa40    eb0c
_jmp_addr_0x005caa42:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005caa42    8b15a87cd100
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x005caa48    8d0c40
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x005caa4b    8d048a
_jmp_addr_0x005caa4e:    {disp32} fld       dword ptr [data_bytes + 0x351bbc]             // 0x005caa4e    d905bc7bd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005caa54    8b4008
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x005caa57    8b4d08
                         sub                esp, 0x08                                     // 0x005caa5a    83ec08
                         fstp               qword ptr [esp]                               // 0x005caa5d    dd1c24
                         push               eax                                           // 0x005caa60    50
                         push               ecx                                           // 0x005caa61    51
                         {disp32} jmp       _jmp_addr_0x005ca9bf                          // 0x005caa62    e958ffffff
_jmp_addr_0x005caa67:    {disp32} mov       dword ptr [data_bytes + 0x351bc8], esi        // 0x005caa67    8935c87bd100
                         {disp32} mov       dword ptr [data_bytes + 0x22b9c4], edi        // 0x005caa6d    893dc419bf00
_jmp_addr_0x005caa73:    pop                edi                                           // 0x005caa73    5f
                         pop                esi                                           // 0x005caa74    5e
                         xor.s              eax, eax                                      // 0x005caa75    33c0
                         pop                ebx                                           // 0x005caa77    5b
                         mov.s              esp, ebp                                      // 0x005caa78    8be5
                         pop                ebp                                           // 0x005caa7a    5d
                         ret                0x001c                                        // 0x005caa7b    c21c00
                         nop                                                              // 0x005caa7e    90
                         nop                                                              // 0x005caa7f    90
_globl_ct_0x005caa80:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x005caa80    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x005caa86    b001
                         test               al, cl                                        // 0x005caa88    84c8
                         {disp8} jne        _jmp_addr_0x005caa94                          // 0x005caa8a    7508
                         or.s               cl, al                                        // 0x005caa8c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x005caa8e    880d34c9fa00
_jmp_addr_0x005caa94:    {disp32} jmp       _jmp_addr_0x005caaa0                          // 0x005caa94    e907000000
                         nop                                                              // 0x005caa99    90
                         nop                                                              // 0x005caa9a    90
                         nop                                                              // 0x005caa9b    90
                         nop                                                              // 0x005caa9c    90
                         nop                                                              // 0x005caa9d    90
                         nop                                                              // 0x005caa9e    90
                         nop                                                              // 0x005caa9f    90
_jmp_addr_0x005caaa0:    push               0x00407870                                    // 0x005caaa0    6870784000
                         call               _atexit                                       // 0x005caaa5    e8e7ac1f00
                         pop                ecx                                           // 0x005caaaa    59
                         ret                                                              // 0x005caaab    c3
                         nop                                                              // 0x005caaac    90
                         nop                                                              // 0x005caaad    90
                         nop                                                              // 0x005caaae    90
                         nop                                                              // 0x005caaaf    90
_globl_ct_0x005caab0:    {disp32} jmp       _jmp_addr_0x005caac0                          // 0x005caab0    e90b000000
                         nop                                                              // 0x005caab5    90
                         nop                                                              // 0x005caab6    90
                         nop                                                              // 0x005caab7    90
                         nop                                                              // 0x005caab8    90
                         nop                                                              // 0x005caab9    90
                         nop                                                              // 0x005caaba    90
                         nop                                                              // 0x005caabb    90
                         nop                                                              // 0x005caabc    90
                         nop                                                              // 0x005caabd    90
                         nop                                                              // 0x005caabe    90
                         nop                                                              // 0x005caabf    90
_jmp_addr_0x005caac0:    {disp32} mov       dword ptr [data_bytes + 0x351c94], 0xffffffff // 0x005caac0    c705947cd100ffffffff
                         ret                                                              // 0x005caaca    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005caacb    e8296de3ff
_globl_ct_0x005caad0:    {disp32} jmp       _jmp_addr_0x005caae0                          // 0x005caad0    e90b000000
                         nop                                                              // 0x005caad5    90
                         nop                                                              // 0x005caad6    90
                         nop                                                              // 0x005caad7    90
                         nop                                                              // 0x005caad8    90
                         nop                                                              // 0x005caad9    90
                         nop                                                              // 0x005caada    90
                         nop                                                              // 0x005caadb    90
                         nop                                                              // 0x005caadc    90
                         nop                                                              // 0x005caadd    90
                         nop                                                              // 0x005caade    90
                         nop                                                              // 0x005caadf    90
_jmp_addr_0x005caae0:    {disp32} fld       dword ptr [rdata_bytes + 0x81518]             // 0x005caae0    d90518a59200
                         {disp32} fmul      dword ptr [rdata_bytes + 0x81514]             // 0x005caae6    d80d14a59200
                         {disp32} fstp      dword ptr [data_bytes + 0x351c90]             // 0x005caaec    d91d907cd100
                         ret                                                              // 0x005caaf2    c3
                         nop                                                              // 0x005caaf3    90
                         nop                                                              // 0x005caaf4    90
                         nop                                                              // 0x005caaf5    90
                         nop                                                              // 0x005caaf6    90
                         nop                                                              // 0x005caaf7    90
                         nop                                                              // 0x005caaf8    90
                         nop                                                              // 0x005caaf9    90
                         nop                                                              // 0x005caafa    90
                         nop                                                              // 0x005caafb    90
                         nop                                                              // 0x005caafc    90
                         nop                                                              // 0x005caafd    90
                         nop                                                              // 0x005caafe    90
                         nop                                                              // 0x005caaff    90
_globl_ct_0x005cab00:    call               _jmp_addr_0x005cab10                          // 0x005cab00    e80b000000
                         {disp32} jmp       _jmp_addr_0x005cab20                          // 0x005cab05    e916000000
                         nop                                                              // 0x005cab0a    90
                         nop                                                              // 0x005cab0b    90
                         nop                                                              // 0x005cab0c    90
                         nop                                                              // 0x005cab0d    90
                         nop                                                              // 0x005cab0e    90
                         nop                                                              // 0x005cab0f    90
_jmp_addr_0x005cab10:    xor.s              eax, eax                                      // 0x005cab10    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x351ca8], eax        // 0x005cab12    a3a87cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351cac], eax        // 0x005cab17    a3ac7cd100
                         ret                                                              // 0x005cab1c    c3
                         nop                                                              // 0x005cab1d    90
                         nop                                                              // 0x005cab1e    90
                         nop                                                              // 0x005cab1f    90
_jmp_addr_0x005cab20:    push               0x005cab30                                    // 0x005cab20    6830ab5c00
                         call               _atexit                                       // 0x005cab25    e867ac1f00
                         pop                ecx                                           // 0x005cab2a    59
                         ret                                                              // 0x005cab2b    c3
                         nop                                                              // 0x005cab2c    90
                         nop                                                              // 0x005cab2d    90
                         nop                                                              // 0x005cab2e    90
                         nop                                                              // 0x005cab2f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x351c8c]          // 0x005cab30    8a0d8c7cd100
                         mov                al, 0x01                                      // 0x005cab36    b001
                         test               al, cl                                        // 0x005cab38    84c8
                         {disp8} jne        _jmp_addr_0x005cab9b                          // 0x005cab3a    755f
                         or.s               cl, al                                        // 0x005cab3c    0ac8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]        // 0x005cab3e    a1ac7cd100
                         test               eax, eax                                      // 0x005cab43    85c0
                         {disp32} mov       byte ptr [data_bytes + 0x351c8c], cl          // 0x005cab45    880d8c7cd100
                         {disp8} je         _jmp_addr_0x005cab9b                          // 0x005cab4b    744e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005cab4d    8b0da87cd100
                         test               ecx, ecx                                      // 0x005cab53    85c9
                         {disp8} je         _jmp_addr_0x005cab91                          // 0x005cab55    743a
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                  // 0x005cab57    8b41fc
                         push               ebx                                           // 0x005cab5a    53
                         {disp8} lea        ebx, dword ptr [ecx + -0x04]                  // 0x005cab5b    8d59fc
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x005cab5e    8d1440
                         dec                eax                                           // 0x005cab61    48
                         lea                ecx, dword ptr [ecx + edx * 0x4]              // 0x005cab62    8d0c91
                         {disp8} js         _jmp_addr_0x005cab87                          // 0x005cab65    7820
                         push               esi                                           // 0x005cab67    56
                         push               edi                                           // 0x005cab68    57
                         {disp8} lea        esi, dword ptr [ecx + 0x08]                   // 0x005cab69    8d7108
                         {disp8} lea        edi, dword ptr [eax + 0x01]                   // 0x005cab6c    8d7801
_jmp_addr_0x005cab6f:    {disp8} mov        eax, dword ptr [esi + -0x0c]                  // 0x005cab6f    8b46f4
                         sub                esi, 0x0c                                     // 0x005cab72    83ee0c
                         test               eax, eax                                      // 0x005cab75    85c0
                         {disp8} je         _jmp_addr_0x005cab82                          // 0x005cab77    7409
                         push               eax                                           // 0x005cab79    50
                         call               ??3@YAXPAX@Z                                  // 0x005cab7a    e819431e00
                         add                esp, 0x04                                     // 0x005cab7f    83c404
_jmp_addr_0x005cab82:    dec                edi                                           // 0x005cab82    4f
                         {disp8} jne        _jmp_addr_0x005cab6f                          // 0x005cab83    75ea
                         pop                edi                                           // 0x005cab85    5f
                         pop                esi                                           // 0x005cab86    5e
_jmp_addr_0x005cab87:    push               ebx                                           // 0x005cab87    53
                         call               ??3@YAXPAX@Z                                  // 0x005cab88    e80b431e00
                         add                esp, 0x04                                     // 0x005cab8d    83c404
                         pop                ebx                                           // 0x005cab90    5b
_jmp_addr_0x005cab91:    {disp32} mov       dword ptr [data_bytes + 0x351cac], 0x00000000 // 0x005cab91    c705ac7cd10000000000
_jmp_addr_0x005cab9b:    ret                                                              // 0x005cab9b    c3
                         nop                                                              // 0x005cab9c    90
                         nop                                                              // 0x005cab9d    90
                         nop                                                              // 0x005cab9e    90
                         nop                                                              // 0x005cab9f    90
_globl_ct_0x005caba0:    call               _jmp_addr_0x005cabb0                          // 0x005caba0    e80b000000
                         {disp32} jmp       _jmp_addr_0x005cabc0                          // 0x005caba5    e916000000
                         nop                                                              // 0x005cabaa    90
                         nop                                                              // 0x005cabab    90
                         nop                                                              // 0x005cabac    90
                         nop                                                              // 0x005cabad    90
                         nop                                                              // 0x005cabae    90
                         nop                                                              // 0x005cabaf    90
_jmp_addr_0x005cabb0:    xor.s              eax, eax                                      // 0x005cabb0    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x351ca0], eax        // 0x005cabb2    a3a07cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351ca4], eax        // 0x005cabb7    a3a47cd100
                         ret                                                              // 0x005cabbc    c3
                         nop                                                              // 0x005cabbd    90
                         nop                                                              // 0x005cabbe    90
                         nop                                                              // 0x005cabbf    90
_jmp_addr_0x005cabc0:    push               0x005cabd0                                    // 0x005cabc0    68d0ab5c00
                         call               _atexit                                       // 0x005cabc5    e8c7ab1f00
                         pop                ecx                                           // 0x005cabca    59
                         ret                                                              // 0x005cabcb    c3
                         nop                                                              // 0x005cabcc    90
                         nop                                                              // 0x005cabcd    90
                         nop                                                              // 0x005cabce    90
                         nop                                                              // 0x005cabcf    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x351c84]          // 0x005cabd0    8a0d847cd100
                         mov                al, 0x01                                      // 0x005cabd6    b001
                         test               al, cl                                        // 0x005cabd8    84c8
                         {disp8} jne        _jmp_addr_0x005cac3b                          // 0x005cabda    755f
                         or.s               cl, al                                        // 0x005cabdc    0ac8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca4]        // 0x005cabde    a1a47cd100
                         test               eax, eax                                      // 0x005cabe3    85c0
                         {disp32} mov       byte ptr [data_bytes + 0x351c84], cl          // 0x005cabe5    880d847cd100
                         {disp8} je         _jmp_addr_0x005cac3b                          // 0x005cabeb    744e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca0]        // 0x005cabed    8b0da07cd100
                         test               ecx, ecx                                      // 0x005cabf3    85c9
                         {disp8} je         _jmp_addr_0x005cac31                          // 0x005cabf5    743a
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                  // 0x005cabf7    8b41fc
                         push               ebx                                           // 0x005cabfa    53
                         {disp8} lea        ebx, dword ptr [ecx + -0x04]                  // 0x005cabfb    8d59fc
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x005cabfe    8d1440
                         dec                eax                                           // 0x005cac01    48
                         lea                ecx, dword ptr [ecx + edx * 0x4]              // 0x005cac02    8d0c91
                         {disp8} js         _jmp_addr_0x005cac27                          // 0x005cac05    7820
                         push               esi                                           // 0x005cac07    56
                         push               edi                                           // 0x005cac08    57
                         {disp8} lea        esi, dword ptr [ecx + 0x08]                   // 0x005cac09    8d7108
                         {disp8} lea        edi, dword ptr [eax + 0x01]                   // 0x005cac0c    8d7801
_jmp_addr_0x005cac0f:    {disp8} mov        eax, dword ptr [esi + -0x0c]                  // 0x005cac0f    8b46f4
                         sub                esi, 0x0c                                     // 0x005cac12    83ee0c
                         test               eax, eax                                      // 0x005cac15    85c0
                         {disp8} je         _jmp_addr_0x005cac22                          // 0x005cac17    7409
                         push               eax                                           // 0x005cac19    50
                         call               ??3@YAXPAX@Z                                  // 0x005cac1a    e879421e00
                         add                esp, 0x04                                     // 0x005cac1f    83c404
_jmp_addr_0x005cac22:    dec                edi                                           // 0x005cac22    4f
                         {disp8} jne        _jmp_addr_0x005cac0f                          // 0x005cac23    75ea
                         pop                edi                                           // 0x005cac25    5f
                         pop                esi                                           // 0x005cac26    5e
_jmp_addr_0x005cac27:    push               ebx                                           // 0x005cac27    53
                         call               ??3@YAXPAX@Z                                  // 0x005cac28    e86b421e00
                         add                esp, 0x04                                     // 0x005cac2d    83c404
                         pop                ebx                                           // 0x005cac30    5b
_jmp_addr_0x005cac31:    {disp32} mov       dword ptr [data_bytes + 0x351ca4], 0x00000000 // 0x005cac31    c705a47cd10000000000
_jmp_addr_0x005cac3b:    ret                                                              // 0x005cac3b    c3
                         nop                                                              // 0x005cac3c    90
                         nop                                                              // 0x005cac3d    90
                         nop                                                              // 0x005cac3e    90
                         nop                                                              // 0x005cac3f    90
_globl_ct_0x005cac40:    call               _jmp_addr_0x005cac50                          // 0x005cac40    e80b000000
                         {disp32} jmp       _jmp_addr_0x005cac60                          // 0x005cac45    e916000000
                         nop                                                              // 0x005cac4a    90
                         nop                                                              // 0x005cac4b    90
                         nop                                                              // 0x005cac4c    90
                         nop                                                              // 0x005cac4d    90
                         nop                                                              // 0x005cac4e    90
                         nop                                                              // 0x005cac4f    90
_jmp_addr_0x005cac50:    xor.s              eax, eax                                      // 0x005cac50    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x351c98], eax        // 0x005cac52    a3987cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351c9c], eax        // 0x005cac57    a39c7cd100
                         ret                                                              // 0x005cac5c    c3
                         nop                                                              // 0x005cac5d    90
                         nop                                                              // 0x005cac5e    90
                         nop                                                              // 0x005cac5f    90
_jmp_addr_0x005cac60:    push               0x005cac70                                    // 0x005cac60    6870ac5c00
                         call               _atexit                                       // 0x005cac65    e827ab1f00
                         pop                ecx                                           // 0x005cac6a    59
                         ret                                                              // 0x005cac6b    c3
                         nop                                                              // 0x005cac6c    90
                         nop                                                              // 0x005cac6d    90
                         nop                                                              // 0x005cac6e    90
                         nop                                                              // 0x005cac6f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x351c7c]          // 0x005cac70    8a0d7c7cd100
                         mov                al, 0x01                                      // 0x005cac76    b001
                         test               al, cl                                        // 0x005cac78    84c8
                         {disp8} jne        _jmp_addr_0x005cacdb                          // 0x005cac7a    755f
                         or.s               cl, al                                        // 0x005cac7c    0ac8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351c9c]        // 0x005cac7e    a19c7cd100
                         test               eax, eax                                      // 0x005cac83    85c0
                         {disp32} mov       byte ptr [data_bytes + 0x351c7c], cl          // 0x005cac85    880d7c7cd100
                         {disp8} je         _jmp_addr_0x005cacdb                          // 0x005cac8b    744e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351c98]        // 0x005cac8d    8b0d987cd100
                         test               ecx, ecx                                      // 0x005cac93    85c9
                         {disp8} je         _jmp_addr_0x005cacd1                          // 0x005cac95    743a
                         {disp8} mov        eax, dword ptr [ecx + -0x04]                  // 0x005cac97    8b41fc
                         push               ebx                                           // 0x005cac9a    53
                         {disp8} lea        ebx, dword ptr [ecx + -0x04]                  // 0x005cac9b    8d59fc
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x005cac9e    8d1440
                         dec                eax                                           // 0x005caca1    48
                         lea                ecx, dword ptr [ecx + edx * 0x4]              // 0x005caca2    8d0c91
                         {disp8} js         _jmp_addr_0x005cacc7                          // 0x005caca5    7820
                         push               esi                                           // 0x005caca7    56
                         push               edi                                           // 0x005caca8    57
                         {disp8} lea        esi, dword ptr [ecx + 0x08]                   // 0x005caca9    8d7108
                         {disp8} lea        edi, dword ptr [eax + 0x01]                   // 0x005cacac    8d7801
_jmp_addr_0x005cacaf:    {disp8} mov        eax, dword ptr [esi + -0x0c]                  // 0x005cacaf    8b46f4
                         sub                esi, 0x0c                                     // 0x005cacb2    83ee0c
                         test               eax, eax                                      // 0x005cacb5    85c0
                         {disp8} je         _jmp_addr_0x005cacc2                          // 0x005cacb7    7409
                         push               eax                                           // 0x005cacb9    50
                         call               ??3@YAXPAX@Z                                  // 0x005cacba    e8d9411e00
                         add                esp, 0x04                                     // 0x005cacbf    83c404
_jmp_addr_0x005cacc2:    dec                edi                                           // 0x005cacc2    4f
                         {disp8} jne        _jmp_addr_0x005cacaf                          // 0x005cacc3    75ea
                         pop                edi                                           // 0x005cacc5    5f
                         pop                esi                                           // 0x005cacc6    5e
_jmp_addr_0x005cacc7:    push               ebx                                           // 0x005cacc7    53
                         call               ??3@YAXPAX@Z                                  // 0x005cacc8    e8cb411e00
                         add                esp, 0x04                                     // 0x005caccd    83c404
                         pop                ebx                                           // 0x005cacd0    5b
_jmp_addr_0x005cacd1:    {disp32} mov       dword ptr [data_bytes + 0x351c9c], 0x00000000 // 0x005cacd1    c7059c7cd10000000000
_jmp_addr_0x005cacdb:    ret                                                              // 0x005cacdb    c3
                         nop                                                              // 0x005cacdc    90
                         nop                                                              // 0x005cacdd    90
                         nop                                                              // 0x005cacde    90
                         nop                                                              // 0x005cacdf    90
_globl_ct_0x005cace0:    {disp32} jmp       _jmp_addr_0x005cacf0                          // 0x005cace0    e90b000000
                         nop                                                              // 0x005cace5    90
                         nop                                                              // 0x005cace6    90
                         nop                                                              // 0x005cace7    90
                         nop                                                              // 0x005cace8    90
                         nop                                                              // 0x005cace9    90
                         nop                                                              // 0x005cacea    90
                         nop                                                              // 0x005caceb    90
                         nop                                                              // 0x005cacec    90
                         nop                                                              // 0x005caced    90
                         nop                                                              // 0x005cacee    90
                         nop                                                              // 0x005cacef    90
_jmp_addr_0x005cacf0:    ret                                                              // 0x005cacf0    c3
                         nop                                                              // 0x005cacf1    90
                         nop                                                              // 0x005cacf2    90
                         nop                                                              // 0x005cacf3    90
                         nop                                                              // 0x005cacf4    90
                         nop                                                              // 0x005cacf5    90
                         nop                                                              // 0x005cacf6    90
                         nop                                                              // 0x005cacf7    90
                         nop                                                              // 0x005cacf8    90
                         nop                                                              // 0x005cacf9    90
                         nop                                                              // 0x005cacfa    90
                         nop                                                              // 0x005cacfb    90
                         nop                                                              // 0x005cacfc    90
                         nop                                                              // 0x005cacfd    90
                         nop                                                              // 0x005cacfe    90
                         nop                                                              // 0x005cacff    90
_jmp_addr_0x005cad00:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005cad00    8b442408
                         push               esi                                           // 0x005cad04    56
                         mov.s              esi, ecx                                      // 0x005cad05    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005cad07    8b4c2408
                         push               edi                                           // 0x005cad0b    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x005cad0c    8b7c2418
                         push               edi                                           // 0x005cad10    57
                         mov                dword ptr [esi], eax                          // 0x005cad11    8906
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x005cad13    894e04
                         call               _wcslen                                       // 0x005cad16    e847b71f00
                         inc                eax                                           // 0x005cad1b    40
                         push               0x32                                          // 0x005cad1c    6a32
                         lea                edx, dword ptr [eax + eax * 0x1]              // 0x005cad1e    8d1400
                         push               0x00bf1a2c                                    // 0x005cad21    682c1abf00
                         push               edx                                           // 0x005cad26    52
                         call               ___nw__FUl                                    // 0x005cad27    e8640a2100
                         push               edi                                           // 0x005cad2c    57
                         push               eax                                           // 0x005cad2d    50
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x005cad2e    894608
                         call               _wcscpy                                       // 0x005cad31    e880b21f00
                         add                esp, 0x18                                     // 0x005cad36    83c418
                         pop                edi                                           // 0x005cad39    5f
                         pop                esi                                           // 0x005cad3a    5e
                         ret                0x0010                                        // 0x005cad3b    c21000
                         nop                                                              // 0x005cad3e    90
                         nop                                                              // 0x005cad3f    90
@__ct__8HelpTextFRC8LHRegion@12:    push               esi                                           // 0x005cad40    56
                         mov.s              esi, ecx                                      // 0x005cad41    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005cad43    8b4c2408
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x005cad47    c7460400000000
                         mov                dword ptr [esi], 0x0092a520                   // 0x005cad4e    c70620a59200
                         mov                edx, dword ptr [ecx]                          // 0x005cad54    8b11
                         {disp8} lea        eax, dword ptr [esi + 0x24]                   // 0x005cad56    8d4624
                         mov                dword ptr [eax], edx                          // 0x005cad59    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x005cad5b    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x005cad5e    895004
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x005cad61    8b5108
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x005cad64    895008
                         {disp8} mov        ecx, dword ptr [ecx + 0x0c]                   // 0x005cad67    8b490c
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x005cad6a    89480c
                         mov.s              ecx, esi                                      // 0x005cad6d    8bce
                         call               _jmp_addr_0x005cadc0                          // 0x005cad6f    e84c000000
                         push               esi                                           // 0x005cad74    56
                         push               0x005cd020                                    // 0x005cad75    6820d05c00
                         push               0x1                                           // 0x005cad7a    6a01
                         push               0x00004e20                                    // 0x005cad7c    68204e0000
                         call               ?RegisterFinishFrameCallback@LH3DRender@@QAEXK_NP6AXPAX@Z1@Z                          // 0x005cad81    e83a452600
                         add                esp, 0x10                                     // 0x005cad86    83c410
                         mov.s              eax, esi                                      // 0x005cad89    8bc6
                         pop                esi                                           // 0x005cad8b    5e
                         ret                0x0004                                        // 0x005cad8c    c20400
                         nop                                                              // 0x005cad8f    90
??_GHelpText@@UAEPAXI@Z:
                         push               esi                                           // 0x005cad90    56
                         mov.s              esi, ecx                                      // 0x005cad91    8bf1
                         call               _jmp_addr_0x005cb070                          // 0x005cad93    e8d8020000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x005cad98    f644240801
                         {disp8} je         _jmp_addr_0x005cadad                          // 0x005cad9d    740e
                         push               0x000000bc                                    // 0x005cad9f    68bc000000
                         push               esi                                           // 0x005cada4    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x005cada5    e8c6bbe6ff
                         add                esp, 0x08                                     // 0x005cadaa    83c408
_jmp_addr_0x005cadad:    mov.s              eax, esi                                      // 0x005cadad    8bc6
                         pop                esi                                           // 0x005cadaf    5e
                         ret                0x0004                                        // 0x005cadb0    c20400
                         nop                                                              // 0x005cadb3    90
                         nop                                                              // 0x005cadb4    90
                         nop                                                              // 0x005cadb5    90
                         nop                                                              // 0x005cadb6    90
                         nop                                                              // 0x005cadb7    90
                         nop                                                              // 0x005cadb8    90
                         nop                                                              // 0x005cadb9    90
                         nop                                                              // 0x005cadba    90
                         nop                                                              // 0x005cadbb    90
                         nop                                                              // 0x005cadbc    90
                         nop                                                              // 0x005cadbd    90
                         nop                                                              // 0x005cadbe    90
                         nop                                                              // 0x005cadbf    90
_jmp_addr_0x005cadc0:    push               ecx                                           // 0x005cadc0    51
                         push               ebx                                           // 0x005cadc1    53
                         xor.s              ebx, ebx                                      // 0x005cadc2    33db
                         push               esi                                           // 0x005cadc4    56
                         mov.s              esi, ecx                                      // 0x005cadc5    8bf1
                         {disp8} mov        byte ptr [esi + 0x1f], -0x01                  // 0x005cadc7    c6461fff
                         {disp8} mov        byte ptr [esi + 0x1e], bl                     // 0x005cadcb    885e1e
                         {disp8} mov        byte ptr [esi + 0x1d], bl                     // 0x005cadce    885e1d
                         {disp8} mov        byte ptr [esi + 0x1c], bl                     // 0x005cadd1    885e1c
                         {disp8} mov        byte ptr [esi + 0x23], -0x01                  // 0x005cadd4    c64623ff
                         {disp8} mov        byte ptr [esi + 0x22], bl                     // 0x005cadd8    885e22
                         {disp8} mov        byte ptr [esi + 0x21], bl                     // 0x005caddb    885e21
                         {disp8} mov        byte ptr [esi + 0x20], -0x01                  // 0x005cadde    c64620ff
                         call               _NeedsBiggerText__Fv                          // 0x005cade2    e8d9cbe3ff
                         test               al, al                                        // 0x005cade7    84c0
                         {disp8} je         _jmp_addr_0x005cae03                          // 0x005cade9    7418
                         xor.s              eax, eax                                      // 0x005cadeb    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x005caded    66a15a50e800
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x005cadf3    89442408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x005cadf7    db442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8153c]             // 0x005cadfb    d80d3ca59200
                         {disp8} jmp        _jmp_addr_0x005cae1a                          // 0x005cae01    eb17
_jmp_addr_0x005cae03:    xor.s              ecx, ecx                                      // 0x005cae03    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x005cae05    668b0d5a50e800
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x005cae0c    894c2408
                         {disp8} fild       dword ptr [esp + 0x08]                        // 0x005cae10    db442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x263f8]             // 0x005cae14    d80df8f38c00
_jmp_addr_0x005cae1a:    {disp32} fst       dword ptr [esi + 0x0000009c]                  // 0x005cae1a    d9969c000000
                         {disp32} mov       byte ptr [esi + 0x000000b8], bl               // 0x005cae20    889eb8000000
                         {disp32} fstp      dword ptr [esi + 0x000000a0]                  // 0x005cae26    d99ea0000000
                         {disp32} mov       dword ptr [esi + 0x000000a4], 0x000000ff      // 0x005cae2c    c786a4000000ff000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x506d08]        // 0x005cae36    8b1508cdec00
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x005cae3c    89560c
                         cmp                dword ptr [data_bytes + 0x506d14], ebx        // 0x005cae3f    391d14cdec00
                         mov                eax, 0x00000003                               // 0x005cae45    b803000000
                         {disp8} jne        _jmp_addr_0x005cae4e                          // 0x005cae4a    7502
                         xor.s              eax, eax                                      // 0x005cae4c    33c0
_jmp_addr_0x005cae4e:    {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00eccd08]       // 0x005cae4e    8b048508cdec00
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x005cae55    894610
                         cmp                dword ptr [data_bytes + 0x506d0c], ebx        // 0x005cae58    391d0ccdec00
                         mov                eax, 0x00000001                               // 0x005cae5e    b801000000
                         {disp8} jne        _jmp_addr_0x005cae67                          // 0x005cae63    7502
                         xor.s              eax, eax                                      // 0x005cae65    33c0
_jmp_addr_0x005cae67:    {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00eccd08]       // 0x005cae67    8b0c8508cdec00
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x005cae6e    894e14
                         {disp32} mov       edx, dword ptr [data_bytes + 0x506d08]        // 0x005cae71    8b1508cdec00
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x005cae77    895618
                         xor.s              eax, eax                                      // 0x005cae7a    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x005cae7c    66a15a50e800
                         push               0x1                                           // 0x005cae82    6a01
                         mov.s              ecx, esi                                      // 0x005cae84    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x351bec], 0x00000000 // 0x005cae86    c705ec7bd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351be8], 0x00000000 // 0x005cae90    c705e87bd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c04], 0x00000000 // 0x005cae9a    c705047cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c00], 0x00000000 // 0x005caea4    c705007cd10000000000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x005caeae    8944240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x005caeb2    db44240c
                         {disp32} mov       dword ptr [data_bytes + 0x351bfc], 0x00000000 // 0x005caeb6    c705fc7bd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c14], 0x00000000 // 0x005caec0    c705147cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c10], 0x00000000 // 0x005caeca    c705107cd10000000000
                         {disp32} fst       dword ptr [data_bytes + 0x351c1c]             // 0x005caed4    d9151c7cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bf8], 0x00000000 // 0x005caeda    c705f87bd10000000000
                         {disp32} fst       dword ptr [data_bytes + 0x351c18]             // 0x005caee4    d915187cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351c0c], 0x00000000 // 0x005caeea    c7050c7cd10000000000
                         {disp32} fstp      dword ptr [data_bytes + 0x351c34]             // 0x005caef4    d91d347cd100
                         {disp32} mov       dword ptr [data_bytes + 0x351bf4], 0x00000000 // 0x005caefa    c705f47bd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c08], 0x00000000 // 0x005caf04    c705087cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351bf0], 0x00000000 // 0x005caf0e    c705f07bd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c30], 0x00000000 // 0x005caf18    c705307cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c2c], 0x00000000 // 0x005caf22    c7052c7cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c44], 0x00000000 // 0x005caf2c    c705447cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c40], 0x00000000 // 0x005caf36    c705407cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c28], 0x00000000 // 0x005caf40    c705287cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c3c], 0x00000000 // 0x005caf4a    c7053c7cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c24], 0x00000000 // 0x005caf54    c705247cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c38], 0x00000000 // 0x005caf5e    c705387cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c20], 0x00000000 // 0x005caf68    c705207cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c4c], 0x00000000 // 0x005caf72    c7054c7cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c48], 0x00000000 // 0x005caf7c    c705487cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c64], 0x00000000 // 0x005caf86    c705647cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c60], 0x00000000 // 0x005caf90    c705607cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c5c], 0x00000000 // 0x005caf9a    c7055c7cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c74], 0x00000000 // 0x005cafa4    c705747cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c70], 0x00000000 // 0x005cafae    c705707cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c58], 0x00000000 // 0x005cafb8    c705587cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c6c], 0x00000000 // 0x005cafc2    c7056c7cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c54], 0x00000000 // 0x005cafcc    c705547cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c68], 0x00000000 // 0x005cafd6    c705687cd10000000000
                         {disp32} mov       dword ptr [data_bytes + 0x351c50], 0x00000000 // 0x005cafe0    c705507cd10000000000
                         call               _jmp_addr_0x005cb020                          // 0x005cafea    e831000000
                         pop                esi                                           // 0x005cafef    5e
                         pop                ebx                                           // 0x005caff0    5b
                         pop                ecx                                           // 0x005caff1    59
                         ret                                                              // 0x005caff2    c3
                         nop                                                              // 0x005caff3    90
                         nop                                                              // 0x005caff4    90
                         nop                                                              // 0x005caff5    90
                         nop                                                              // 0x005caff6    90
                         nop                                                              // 0x005caff7    90
                         nop                                                              // 0x005caff8    90
                         nop                                                              // 0x005caff9    90
                         nop                                                              // 0x005caffa    90
                         nop                                                              // 0x005caffb    90
                         nop                                                              // 0x005caffc    90
                         nop                                                              // 0x005caffd    90
                         nop                                                              // 0x005caffe    90
                         nop                                                              // 0x005cafff    90
_jmp_addr_0x005cb000:    {disp32} mov       dword ptr [ecx + 0x000000ac], 0x00000001      // 0x005cb000    c781ac00000001000000
                         ret                                                              // 0x005cb00a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x005cb00b    e8e967e3ff
_jmp_addr_0x005cb010:    {disp32} mov       dword ptr [ecx + 0x000000b4], 0x00000000      // 0x005cb010    c781b400000000000000
                         {disp32} jmp       _jmp_addr_0x005cb000                          // 0x005cb01a    e9e1ffffff
                         nop                                                              // 0x005cb01f    90
_jmp_addr_0x005cb020:    {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x005cb020    8a442404
                         push               ebx                                           // 0x005cb024    53
                         xor.s              ebx, ebx                                      // 0x005cb025    33db
                         cmp.s              al, bl                                        // 0x005cb027    3ac3
                         {disp8} je         _jmp_addr_0x005cb04a                          // 0x005cb029    741f
                         {disp8} lea        eax, dword ptr [ecx + 0x3c]                   // 0x005cb02b    8d413c
                         mov                edx, 0x00000006                               // 0x005cb02e    ba06000000
_jmp_addr_0x005cb033:    {disp8} mov        dword ptr [eax + -0x08], ebx                  // 0x005cb033    8958f8
                         mov                dword ptr [eax], ebx                          // 0x005cb036    8918
                         add                eax, 0x10                                     // 0x005cb038    83c010
                         dec                edx                                           // 0x005cb03b    4a
                         {disp8} jne        _jmp_addr_0x005cb033                          // 0x005cb03c    75f5
                         {disp32} mov       dword ptr [ecx + 0x00000094], ebx             // 0x005cb03e    899994000000
                         {disp32} mov       dword ptr [ecx + 0x00000098], ebx             // 0x005cb044    899998000000
_jmp_addr_0x005cb04a:    {disp8} mov        dword ptr [ecx + 0x08], ebx                   // 0x005cb04a    895908
                         {disp32} mov       dword ptr [ecx + 0x000000ac], ebx             // 0x005cb04d    8999ac000000
                         {disp32} mov       dword ptr [ecx + 0x000000b0], ebx             // 0x005cb053    8999b0000000
                         {disp32} mov       dword ptr [ecx + 0x000000b4], ebx             // 0x005cb059    8999b4000000
                         pop                ebx                                           // 0x005cb05f    5b
                         ret                0x0004                                        // 0x005cb060    c20400
                         nop                                                              // 0x005cb063    90
                         nop                                                              // 0x005cb064    90
                         nop                                                              // 0x005cb065    90
                         nop                                                              // 0x005cb066    90
                         nop                                                              // 0x005cb067    90
                         nop                                                              // 0x005cb068    90
                         nop                                                              // 0x005cb069    90
                         nop                                                              // 0x005cb06a    90
                         nop                                                              // 0x005cb06b    90
                         nop                                                              // 0x005cb06c    90
                         nop                                                              // 0x005cb06d    90
                         nop                                                              // 0x005cb06e    90
                         nop                                                              // 0x005cb06f    90
_jmp_addr_0x005cb070:    push               esi                                           // 0x005cb070    56
                         mov.s              esi, ecx                                      // 0x005cb071    8bf1
                         push               esi                                           // 0x005cb073    56
                         push               0x005cd020                                    // 0x005cb074    6820d05c00
                         mov                dword ptr [esi], 0x0092a520                   // 0x005cb079    c70620a59200
                         call               _jmp_addr_0x0082f3b0                          // 0x005cb07f    e82c432600
                         add                esp, 0x08                                     // 0x005cb084    83c408
                         mov.s              ecx, esi                                      // 0x005cb087    8bce
                         call               _jmp_addr_0x00436960                          // 0x005cb089    e8d2b8e6ff
                         pop                esi                                           // 0x005cb08e    5e
                         ret                                                              // 0x005cb08f    c3
_jmp_addr_0x005cb090:    push               esi                                           // 0x005cb090    56
                         push               0x00000084                                    // 0x005cb091    6884000000
                         push               0x00bf1a2c                                    // 0x005cb096    682c1abf00
                         push               0x000000bc                                    // 0x005cb09b    68bc000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x005cb0a0    e84bb6e6ff
                         add                esp, 0x0c                                     // 0x005cb0a5    83c40c
                         test               eax, eax                                      // 0x005cb0a8    85c0
                         {disp8} je         _jmp_addr_0x005cb0ce                          // 0x005cb0aa    7422
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x005cb0ac    8b4c2408
                         push               ecx                                           // 0x005cb0b0    51
                         mov.s              ecx, eax                                      // 0x005cb0b1    8bc8
                         call               @__ct__8HelpTextFRC8LHRegion@12               // 0x005cb0b3    e888fcffff
                         mov.s              esi, eax                                      // 0x005cb0b8    8bf0
                         test               esi, esi                                      // 0x005cb0ba    85f6
                         {disp8} je         _jmp_addr_0x005cb0ca                          // 0x005cb0bc    740c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005cb0be    8b54240c
                         push               edx                                           // 0x005cb0c2    52
                         mov.s              ecx, esi                                      // 0x005cb0c3    8bce
                         call               _jmp_addr_0x005cb0e0                          // 0x005cb0c5    e816000000
_jmp_addr_0x005cb0ca:    mov.s              eax, esi                                      // 0x005cb0ca    8bc6
                         pop                esi                                           // 0x005cb0cc    5e
                         ret                                                              // 0x005cb0cd    c3
_jmp_addr_0x005cb0ce:    xor.s              eax, eax                                      // 0x005cb0ce    33c0
                         pop                esi                                           // 0x005cb0d0    5e
                         ret                                                              // 0x005cb0d1    c3
                         nop                                                              // 0x005cb0d2    90
                         nop                                                              // 0x005cb0d3    90
                         nop                                                              // 0x005cb0d4    90
                         nop                                                              // 0x005cb0d5    90
                         nop                                                              // 0x005cb0d6    90
                         nop                                                              // 0x005cb0d7    90
                         nop                                                              // 0x005cb0d8    90
                         nop                                                              // 0x005cb0d9    90
                         nop                                                              // 0x005cb0da    90
                         nop                                                              // 0x005cb0db    90
                         nop                                                              // 0x005cb0dc    90
                         nop                                                              // 0x005cb0dd    90
                         nop                                                              // 0x005cb0de    90
                         nop                                                              // 0x005cb0df    90
_jmp_addr_0x005cb0e0:    ret                0x0004                                        // 0x005cb0e0    c20400
                         nop                                                              // 0x005cb0e3    90
                         nop                                                              // 0x005cb0e4    90
                         nop                                                              // 0x005cb0e5    90
                         nop                                                              // 0x005cb0e6    90
                         nop                                                              // 0x005cb0e7    90
                         nop                                                              // 0x005cb0e8    90
                         nop                                                              // 0x005cb0e9    90
                         nop                                                              // 0x005cb0ea    90
                         nop                                                              // 0x005cb0eb    90
                         nop                                                              // 0x005cb0ec    90
                         nop                                                              // 0x005cb0ed    90
                         nop                                                              // 0x005cb0ee    90
                         nop                                                              // 0x005cb0ef    90
_jmp_addr_0x005cb0f0:    {disp8} mov        ax, word ptr [esp + 0x04]                     // 0x005cb0f0    668b442404
                         cmp                ax, 0x0020                                    // 0x005cb0f5    663d2000
                         {disp8} je         _jmp_addr_0x005cb118                          // 0x005cb0f9    741d
                         cmp                ax, 0x0009                                    // 0x005cb0fb    663d0900
                         {disp8} je         _jmp_addr_0x005cb118                          // 0x005cb0ff    7417
                         cmp                ax, 0x000d                                    // 0x005cb101    663d0d00
                         {disp8} je         _jmp_addr_0x005cb118                          // 0x005cb105    7411
                         cmp                ax, 0x000a                                    // 0x005cb107    663d0a00
                         {disp8} je         _jmp_addr_0x005cb118                          // 0x005cb10b    740b
                         cmp                ax, 0xf8fe                                    // 0x005cb10d    663dfef8
                         {disp8} je         _jmp_addr_0x005cb118                          // 0x005cb111    7405
                         xor.s              eax, eax                                      // 0x005cb113    33c0
                         ret                0x0004                                        // 0x005cb115    c20400
_jmp_addr_0x005cb118:    mov                eax, 0x00000001                               // 0x005cb118    b801000000
                         ret                0x0004                                        // 0x005cb11d    c20400
_jmp_addr_0x005cb120:    push               ebx                                           // 0x005cb120    53
                         push               ebp                                           // 0x005cb121    55
                         push               esi                                           // 0x005cb122    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x005cb123    8b742410
                         xor.s              eax, eax                                      // 0x005cb127    33c0
                         mov                ax, word ptr [esi]                            // 0x005cb129    668b06
                         push               edi                                           // 0x005cb12c    57
                         mov.s              ebp, ecx                                      // 0x005cb12d    8be9
                         xor.s              ebx, ebx                                      // 0x005cb12f    33db
                         push               eax                                           // 0x005cb131    50
                         call               _jmp_addr_0x005cb0f0                          // 0x005cb132    e8b9ffffff
                         test               eax, eax                                      // 0x005cb137    85c0
                         {disp8} je         _jmp_addr_0x005cb15f                          // 0x005cb139    7424
                         mov.s              edi, esi                                      // 0x005cb13b    8bfe
_jmp_addr_0x005cb13d:    cmp                word ptr [edi], 0x0a                          // 0x005cb13d    66833f0a
                         {disp8} je         _jmp_addr_0x005cb174                          // 0x005cb141    7431
                         xor.s              ecx, ecx                                      // 0x005cb143    33c9
                         {disp8} mov        cx, word ptr [esi + 0x02]                     // 0x005cb145    668b4e02
                         add                esi, 0x02                                     // 0x005cb149    83c602
                         inc                ebx                                           // 0x005cb14c    43
                         mov.s              edi, esi                                      // 0x005cb14d    8bfe
                         push               ecx                                           // 0x005cb14f    51
                         mov.s              ecx, ebp                                      // 0x005cb150    8bcd
                         call               _jmp_addr_0x005cb0f0                          // 0x005cb152    e899ffffff
                         test               eax, eax                                      // 0x005cb157    85c0
                         {disp8} jne        _jmp_addr_0x005cb13d                          // 0x005cb159    75e2
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x005cb15b    8b742414
_jmp_addr_0x005cb15f:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x005cb15f    8b442418
                         pop                edi                                           // 0x005cb163    5f
                         lea                edx, dword ptr [esi + ebx * 0x2]              // 0x005cb164    8d145e
                         pop                esi                                           // 0x005cb167    5e
                         pop                ebp                                           // 0x005cb168    5d
                         mov                dword ptr [eax], edx                          // 0x005cb169    8910
                         mov                eax, 0x00000003                               // 0x005cb16b    b803000000
                         pop                ebx                                           // 0x005cb170    5b
                         ret                0x0008                                        // 0x005cb171    c20800
_jmp_addr_0x005cb174:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x005cb174    8b542414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005cb178    8b4c2418
                         pop                edi                                           // 0x005cb17c    5f
                         {disp8} lea        eax, dword ptr [edx + ebx * 0x2 + 0x02]       // 0x005cb17d    8d445a02
                         pop                esi                                           // 0x005cb181    5e
                         pop                ebp                                           // 0x005cb182    5d
                         mov                dword ptr [ecx], eax                          // 0x005cb183    8901
                         mov                eax, 0x00000001                               // 0x005cb185    b801000000
                         pop                ebx                                           // 0x005cb18a    5b
                         ret                0x0008                                        // 0x005cb18b    c20800
                         nop                                                              // 0x005cb18e    90
                         nop                                                              // 0x005cb18f    90
_jmp_addr_0x005cb190:    {disp8} mov        ax, word ptr [esp + 0x04]                     // 0x005cb190    668b442404
                         cmp                ax, 0x0024                                    // 0x005cb195    663d2400
                         {disp8} je         _jmp_addr_0x005cb1a6                          // 0x005cb199    740b
                         cmp                ax, 0x005c                                    // 0x005cb19b    663d5c00
                         {disp8} je         _jmp_addr_0x005cb1a6                          // 0x005cb19f    7405
                         xor.s              eax, eax                                      // 0x005cb1a1    33c0
                         ret                0x0004                                        // 0x005cb1a3    c20400
_jmp_addr_0x005cb1a6:    mov                eax, 0x00000001                               // 0x005cb1a6    b801000000
                         ret                0x0004                                        // 0x005cb1ab    c20400
                         nop                                                              // 0x005cb1ae    90
                         nop                                                              // 0x005cb1af    90
_jmp_addr_0x005cb1b0:    {disp8} mov        ax, word ptr [esp + 0x04]                     // 0x005cb1b0    668b442404
                         cmp                ax, 0x0030                                    // 0x005cb1b5    663d3000
                         .byte              0x72, 0xe// {disp8} jb _jmp_addr_0x005cb1c9   // 0x005cb1b9    720e
                         cmp                ax, 0x0039                                    // 0x005cb1bb    663d3900
                         {disp8} ja         _jmp_addr_0x005cb1c9                          // 0x005cb1bf    7708
                         mov                eax, 0x00000001                               // 0x005cb1c1    b801000000
                         ret                0x0004                                        // 0x005cb1c6    c20400
_jmp_addr_0x005cb1c9:    xor.s              eax, eax                                      // 0x005cb1c9    33c0
                         ret                0x0004                                        // 0x005cb1cb    c20400
                         nop                                                              // 0x005cb1ce    90
                         nop                                                              // 0x005cb1cf    90
_jmp_addr_0x005cb1d0:    push               esi                                           // 0x005cb1d0    56
                         push               edi                                           // 0x005cb1d1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x005cb1d2    8b7c240c
                         mov.s              esi, ecx                                      // 0x005cb1d6    8bf1
                         push               edi                                           // 0x005cb1d8    57
                         call               _jmp_addr_0x005cb1b0                          // 0x005cb1d9    e8d2ffffff
                         test               eax, eax                                      // 0x005cb1de    85c0
                         {disp8} jne        _jmp_addr_0x005cb1f3                          // 0x005cb1e0    7511
                         push               edi                                           // 0x005cb1e2    57
                         mov.s              ecx, esi                                      // 0x005cb1e3    8bce
                         call               _jmp_addr_0x005cb220                          // 0x005cb1e5    e836000000
                         test               eax, eax                                      // 0x005cb1ea    85c0
                         {disp8} jne        _jmp_addr_0x005cb1f3                          // 0x005cb1ec    7505
                         pop                edi                                           // 0x005cb1ee    5f
                         pop                esi                                           // 0x005cb1ef    5e
                         ret                0x0004                                        // 0x005cb1f0    c20400
_jmp_addr_0x005cb1f3:    pop                edi                                           // 0x005cb1f3    5f
                         mov                eax, 0x00000001                               // 0x005cb1f4    b801000000
                         pop                esi                                           // 0x005cb1f9    5e
                         ret                0x0004                                        // 0x005cb1fa    c20400
                         nop                                                              // 0x005cb1fd    90
                         nop                                                              // 0x005cb1fe    90
                         nop                                                              // 0x005cb1ff    90
_jmp_addr_0x005cb200:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005cb200    8b442404
                         and                eax, 0x0000ffff                               // 0x005cb204    25ffff0000
                         cmp                eax, 0x43                                     // 0x005cb209    83f843
                         {disp8} je         _jmp_addr_0x005cb218                          // 0x005cb20c    740a
                         cmp                eax, 0x63                                     // 0x005cb20e    83f863
                         {disp8} je         _jmp_addr_0x005cb218                          // 0x005cb211    7405
                         xor.s              eax, eax                                      // 0x005cb213    33c0
                         ret                0x0004                                        // 0x005cb215    c20400
_jmp_addr_0x005cb218:    mov                eax, 0x00000001                               // 0x005cb218    b801000000
                         ret                0x0004                                        // 0x005cb21d    c20400
_jmp_addr_0x005cb220:    push               esi                                           // 0x005cb220    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x005cb221    8b742408
                         push               esi                                           // 0x005cb225    56
                         call               _jmp_addr_0x005cb200                          // 0x005cb226    e8d5ffffff
                         test               eax, eax                                      // 0x005cb22b    85c0
                         {disp8} je         _jmp_addr_0x005cb238                          // 0x005cb22d    7409
                         mov                eax, 0x00000001                               // 0x005cb22f    b801000000
                         pop                esi                                           // 0x005cb234    5e
                         ret                0x0004                                        // 0x005cb235    c20400
_jmp_addr_0x005cb238:    and                esi, 0x0000ffff                               // 0x005cb238    81e6ffff0000
                         {disp8} lea        eax, dword ptr [esi + -0x44]                  // 0x005cb23e    8d46bc
                         cmp                eax, 0x2c                                     // 0x005cb241    83f82c
                         {disp8} ja         _jmp_addr_0x005cb25e                          // 0x005cb244    7718
                         xor.s              ecx, ecx                                      // 0x005cb246    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x005cb26c]               // 0x005cb248    8a886cb25c00
                         jmp                dword ptr [ecx*4 + 0x5cb264]                  // 0x005cb24e    ff248d64b25c00
                         mov                eax, 0x00000001                               // 0x005cb255    b801000000
                         pop                esi                                           // 0x005cb25a    5e
                         ret                0x0004                                        // 0x005cb25b    c20400
_jmp_addr_0x005cb25e:    xor.s              eax, eax                                      // 0x005cb25e    33c0
                         pop                esi                                           // 0x005cb260    5e
                         ret                0x0004                                        // 0x005cb261    c20400

// Snippet: jmptbl, [0x005cb264, 0x005cb26c)
.byte 0x55, 0xb2, 0x5c, 0x00      // 0x005cb264
.byte 0x5e, 0xb2, 0x5c, 0x00      // 0x005cb268

// Snippet: ijmptbl, [0x005cb26c, 0x005cb299)
.byte 0x00, 0x01, 0x00, 0x01      // 0x005cb26c
.byte 0x01, 0x01, 0x01, 0x01      // 0x005cb270
.byte 0x01, 0x00, 0x00, 0x01      // 0x005cb274
.byte 0x00, 0x01, 0x01, 0x01      // 0x005cb278
.byte 0x01, 0x01, 0x01, 0x01      // 0x005cb27c
.byte 0x01, 0x01, 0x01, 0x01      // 0x005cb280
.byte 0x01, 0x01, 0x01, 0x01      // 0x005cb284
.byte 0x01, 0x01, 0x01, 0x01      // 0x005cb288
.byte 0x00, 0x01, 0x00, 0x01      // 0x005cb28c
.byte 0x01, 0x01, 0x01, 0x01      // 0x005cb290
.byte 0x01, 0x00, 0x00, 0x01      // 0x005cb294
.byte 0x00                        // 0x005cb298

// Snippet: db, [0x005cb299, 0x005cb2a0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005cb299
.byte 0x90, 0x90, 0x90            // 0x005cb29d

