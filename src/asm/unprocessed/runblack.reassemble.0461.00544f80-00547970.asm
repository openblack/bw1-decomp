.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00401140
.extern _GetMidTextSize__Fv
.extern _GetSmallTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern _jmp_addr_0x00408100
.extern _jmp_addr_0x00408f80
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__11SetupSliderFiiiiifPw@36
.extern @AutoScroll__9SetupListFb@9
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern ?unadjust@SetupThing@@SAMAAH0@Z
.extern _jmp_addr_0x00447850
.extern _jmp_addr_0x004707f0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x00513770
.extern _jmp_addr_0x0053b4a0
.extern ?SetCursorOn@FrontEnd@@SAXXZ
.extern ?Init@Plasma@@QAEXXZ
.extern @Render__6PlasmaFi@12
.extern _jmp_addr_0x0053ce60
.extern _jmp_addr_0x00544b60
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ?_Xlen@std@@YAXXZ
.extern _jmp_addr_0x007af180
.extern _atexit
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern ??2@YAPAXI@Z
.extern ___nw__FUl
.extern _jmp_addr_0x007de090
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern ?StartFrame@LH3DRender@@SAXXZ
.extern ?FinishFrame@LH3DRender@@QAEXXZ

.globl ?JustDoSkirmishGameBox@FrontEnd@@QAEXXZ
.globl ?JustDoABox@FrontEnd@@SAXPAVDialogBoxBase@@@Z
.globl _jmp_addr_0x005453d0
.globl _jmp_addr_0x00545630
.globl _jmp_addr_0x00545680
.globl _jmp_addr_0x00545920
.globl _jmp_addr_0x00545970
.globl _jmp_addr_0x00545980
.globl _jmp_addr_0x00545990
.globl _jmp_addr_0x00545be0
.globl _jmp_addr_0x00545d10
.globl _jmp_addr_0x00545d60
.globl _jmp_addr_0x00545d80
.globl _jmp_addr_0x00545f00
.globl _jmp_addr_0x00546120
.globl _jmp_addr_0x005471c0

.globl _globl_ct_0x00546200
.globl _globl_ct_0x00546230
.globl _globl_ct_0x00546250
.globl ?Init@HistoryBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@HistoryBox@@UAEXXZ
.globl ?InitControls@HistoryBox@@UAEXXZ
.globl ?WantsKeyControl@HistoryBox@@UAE_NXZ
.globl ?WantsMouseControl@HistoryBox@@UAE_NXZ
.globl ?CanESCOut@HistoryBox@@UAE_NXZ
.globl ?Init@SetupLandscapeBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@SetupLandscapeBox@@UAEXXZ
.globl ?InitControls@SetupLandscapeBox@@UAEXXZ

start_0x00544f80_0x00547970:
// Snippet: asm, [0x00544f80, 0x0054791d)
?JustDoSkirmishGameBox@FrontEnd@@QAEXXZ:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab1c]        // 0x00544f80    a11c0bcd00
                         push               eax                                           // 0x00544f85    50
                         call               ?JustDoABox@FrontEnd@@SAXPAVDialogBoxBase@@@Z // 0x00544f86    e805000000
                         pop                ecx                                           // 0x00544f8b    59
                         ret                                                              // 0x00544f8c    c3
                         nop                                                              // 0x00544f8d    90
                         nop                                                              // 0x00544f8e    90
                         nop                                                              // 0x00544f8f    90
?JustDoABox@FrontEnd@@SAXPAVDialogBoxBase@@@Z:
                                            sub                esp, 0x18                                     // 0x00544f90    83ec18
                         push               ebx                                           // 0x00544f93    53
                         push               ebp                                           // 0x00544f94    55
                         push               esi                                           // 0x00544f95    56
                         push               edi                                           // 0x00544f96    57
                         {disp32} mov       dword ptr [data_bytes + 0x4f3950], 0x00000000 // 0x00544f97    c7055099eb0000000000
                         {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x00        // 0x00544fa1    c605d086c30000
                         call               ?StartFrame@LH3DRender@@SAXXZ                 // 0x00544fa8    e833a12e00
                         call               ?FinishFrame@LH3DRender@@QAEXXZ               // 0x00544fad    e8aea42e00
                         {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x01        // 0x00544fb2    c605d086c30001
                         xor.s              bl, bl                                        // 0x00544fb9    32db
                         call               _HideAll__13DialogBoxBaseFv@0                 // 0x00544fbb    e820e7fcff
                         call               ?SetCursorOn@FrontEnd@@SAXXZ                  // 0x00544fc0    e88b74ffff
                         call               _HideAll__13DialogBoxBaseFv@0                 // 0x00544fc5    e816e7fcff
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00544fca    8d542410
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00544fce    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00544fd2    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x40e00000            // 0x00544fda    c74424140000e040
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00544fe2    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x00544fea    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x41a00000            // 0x00544ff2    c74424200000a041
                         {disp8} mov        dword ptr [esp + 0x24], 0xc1f00000            // 0x00544ffa    c74424240000f0c1
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x00545002    e819492d00
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00545007    8b4c242c
                         mov                eax, dword ptr [ecx]                          // 0x0054500b    8b01
                         mov                ebp, 0x000003e7                               // 0x0054500d    bde7030000
                         call               dword ptr [eax + 0xc]                         // 0x00545012    ff500c
_jmp_addr_0x00545015:    test               bl, bl                                        // 0x00545015    84db
                         {disp8} je         _jmp_addr_0x00545025                          // 0x00545017    740c
                         cmp                ebp, 0x000003e8                               // 0x00545019    81fde8030000
                         {disp32} jge       _jmp_addr_0x00545219                          // 0x0054501f    0f8df4010000
_jmp_addr_0x00545025:    mov                edi, 0x00000001                               // 0x00545025    bf01000000
                         {disp32} mov       dword ptr [data_bytes + 0x27271c], edi        // 0x0054502a    893d1c87c300
                         call               ?StartFrame@LH3DRender@@SAXXZ                 // 0x00545030    e8aba02e00
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00545035    e8962eecff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0054503a    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x00545040    8b153481c300
                         mov.s              ebx, eax                                      // 0x00545046    8bd8
                         neg                ebx                                           // 0x00545048    f7db
                         sbb.s              bl, bl                                        // 0x0054504a    1adb
                         {disp32} mov       dword ptr [ecx + 0x00205d48], edx             // 0x0054504c    8991485d2000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30a6e8]        // 0x00545052    8b0de806cd00
                         inc                bl                                            // 0x00545058    fec3
                         test               ecx, ecx                                      // 0x0054505a    85c9
                         {disp32} jne       _jmp_addr_0x005450e6                          // 0x0054505c    0f8584000000
                         push               0x00000eb2                                    // 0x00545062    68b20e0000
                         push               0x00bea568                                    // 0x00545067    6868a5be00
                         push               0x0000e930                                    // 0x0054506c    6830e90000
                         call               ___nw__FUl                                    // 0x00545071    e81a672900
                         mov.s              esi, eax                                      // 0x00545076    8bf0
                         add                esp, 0x0c                                     // 0x00545078    83c40c
                         test               esi, esi                                      // 0x0054507b    85f6
                         {disp8} je         _jmp_addr_0x005450de                          // 0x0054507d    745f
                         push               0x00460680                                    // 0x0054507f    6880064600
                         push               0x000004f7                                    // 0x00545084    68f7040000
                         push               0xc                                           // 0x00545089    6a0c
                         push               esi                                           // 0x0054508b    56
                         call               _jmp_addr_0x00401140                          // 0x0054508c    e8afc0ebff
                         push               0x0053ce50                                    // 0x00545091    6850ce5300
                         push               0x000004f7                                    // 0x00545096    68f7040000
                         push               0x4                                           // 0x0054509b    6a04
                         {disp32} lea       eax, dword ptr [esi + 0x0000d3cc]             // 0x0054509d    8d86ccd30000
                         push               eax                                           // 0x005450a3    50
                         call               _jmp_addr_0x00401140                          // 0x005450a4    e897c0ebff
                         push               0x00460680                                    // 0x005450a9    6880064600
                         push               0x10                                          // 0x005450ae    6a10
                         push               0xc                                           // 0x005450b0    6a0c
                         {disp32} lea       ecx, dword ptr [esi + 0x0000e7a8]             // 0x005450b2    8d8ea8e70000
                         push               ecx                                           // 0x005450b8    51
                         call               _jmp_addr_0x00401140                          // 0x005450b9    e882c0ebff
                         push               0x00460680                                    // 0x005450be    6880064600
                         push               0x10                                          // 0x005450c3    6a10
                         push               0xc                                           // 0x005450c5    6a0c
                         {disp32} lea       edx, dword ptr [esi + 0x0000e868]             // 0x005450c7    8d9668e80000
                         push               edx                                           // 0x005450cd    52
                         call               _jmp_addr_0x00401140                          // 0x005450ce    e86dc0ebff
                         mov.s              ecx, esi                                      // 0x005450d3    8bce
                         call               ?Init@Plasma@@QAEXXZ                          // 0x005450d5    e86675ffff
                         mov.s              ecx, esi                                      // 0x005450da    8bce
                         {disp8} jmp        _jmp_addr_0x005450e0                          // 0x005450dc    eb02
_jmp_addr_0x005450de:    xor.s              ecx, ecx                                      // 0x005450de    33c9
_jmp_addr_0x005450e0:    {disp32} mov       dword ptr [data_bytes + 0x30a6e8], ecx        // 0x005450e0    890de806cd00
_jmp_addr_0x005450e6:    push               edi                                           // 0x005450e6    57
                         {disp32} mov       dword ptr [data_bytes + 0x27271c], edi        // 0x005450e7    893d1c87c300
                         call               @Render__6PlasmaFi@12                         // 0x005450ed    e84e77ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf474]        // 0x005450f2    a17454e800
                         test               eax, eax                                      // 0x005450f7    85c0
                         {disp8} je         _jmp_addr_0x0054512a                          // 0x005450f9    742f
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4bf478]        // 0x005450fb    8b357854e800
                         mov.s              edi, eax                                      // 0x00545101    8bf8
                         and                esi, 0x000000ff                               // 0x00545103    81e6ff000000
                         {disp32} mov       dword ptr [data_bytes + 0x4bf474], 0x00000000 // 0x00545109    c7057454e80000000000
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00545113    e8b82decff
                         test               eax, eax                                      // 0x00545118    85c0
                         {disp8} je         _jmp_addr_0x0054512a                          // 0x0054511a    740e
                         push               esi                                           // 0x0054511c    56
                         push               edi                                           // 0x0054511d    57
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0054511e    e8ad2decff
                         mov.s              ecx, eax                                      // 0x00545123    8bc8
                         call               _jmp_addr_0x00408f80                          // 0x00545125    e8563eecff
_jmp_addr_0x0054512a:    test               bl, bl                                        // 0x0054512a    84db
                         {disp32} mov       eax, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x0054512c    a13481c300
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ec0], eax        // 0x00545131    a3c09eea00
                         {disp8} je         _jmp_addr_0x00545172                          // 0x00545136    743a
                         call               _HideAll__13DialogBoxBaseFv@0                 // 0x00545138    e8a3e5fcff
                         add                ebp, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x0054513d    032d3481c300
_jmp_addr_0x00545143:    test               ebp, ebp                                      // 0x00545143    85ed
                         {disp8} je         _jmp_addr_0x0054518c                          // 0x00545145    7445
                         mov.s              ecx, ebp                                      // 0x00545147    8bcd
                         shl                ecx, 8                                        // 0x00545149    c1e108
                         sub.s              ecx, ebp                                      // 0x0054514c    2bcd
                         mov                eax, 0x10624dd3                               // 0x0054514e    b8d34d6210
                         imul               ecx                                           // 0x00545153    f7e9
                         sar                edx, 6                                        // 0x00545155    c1fa06
                         mov.s              eax, edx                                      // 0x00545158    8bc2
                         shr                eax, 0x1f                                     // 0x0054515a    c1e81f
                         add.s              edx, eax                                      // 0x0054515d    03d0
                         test               edx, edx                                      // 0x0054515f    85d2
                         {disp8} jle        _jmp_addr_0x0054517a                          // 0x00545161    7e17
                         cmp                edx, 0x000000ff                               // 0x00545163    81faff000000
                         {disp8} jl         _jmp_addr_0x0054517c                          // 0x00545169    7c11
                         mov                edx, 0x000000ff                               // 0x0054516b    baff000000
                         {disp8} jmp        _jmp_addr_0x0054517c                          // 0x00545170    eb0a
_jmp_addr_0x00545172:    sub.s              ebp, eax                                      // 0x00545172    2be8
                         {disp8} jns        _jmp_addr_0x00545143                          // 0x00545174    79cd
                         xor.s              ebp, ebp                                      // 0x00545176    33ed
                         {disp8} jmp        _jmp_addr_0x0054518c                          // 0x00545178    eb12
_jmp_addr_0x0054517a:    xor.s              edx, edx                                      // 0x0054517a    33d2
_jmp_addr_0x0054517c:    push               ecx                                           // 0x0054517c    51
                         mov.s              eax, esp                                      // 0x0054517d    8bc4
                         shl                edx, 0x18                                     // 0x0054517f    c1e218
                         mov                dword ptr [eax], edx                          // 0x00545182    8910
                         call               _jmp_addr_0x0053ce60                          // 0x00545184    e8d77cffff
                         add                esp, 0x04                                     // 0x00545189    83c404
_jmp_addr_0x0054518c:    {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0054518c    db053481c300
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x00545192    d80db0a38a00
                         {disp32} fadd      dword ptr [data_bytes + 0x30ab8c]             // 0x00545198    d8058c0bcd00
                         {disp32} fstp      dword ptr [data_bytes + 0x30ab8c]             // 0x0054519e    d91d8c0bcd00
                         call               _jmp_addr_0x00447850                          // 0x005451a4    e8a726f0ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf304]        // 0x005451a9    a10453e800
                         {disp32} mov       edi, dword ptr [data_bytes + 0x286d14]        // 0x005451ae    8b3d14cdc400
                         and                eax, 0x000000ff                               // 0x005451b4    25ff000000
                         mov.s              ecx, eax                                      // 0x005451b9    8bc8
                         and                eax, 0x02                                     // 0x005451bb    83e002
                         or.s               edi, eax                                      // 0x005451be    0bf8
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf350]          // 0x005451c0    a05053e800
                         xor.s              edx, edx                                      // 0x005451c5    33d2
                         mov.s              dl, al                                        // 0x005451c7    8ad0
                         and                ecx, 0x43                                     // 0x005451c9    83e143
                         {disp32} mov       dword ptr [data_bytes + 0x286d0c], ecx        // 0x005451cc    890d0ccdc400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d10]        // 0x005451d2    8b0d10cdc400
                         and                al, -0x11                                     // 0x005451d8    24ef
                         and                al, -0x21                                     // 0x005451da    24df
                         {disp32} mov       dword ptr [data_bytes + 0x286d14], edi        // 0x005451dc    893d14cdc400
                         and                edx, 0x30                                     // 0x005451e2    83e230
                         or.s               ecx, edx                                      // 0x005451e5    0bca
                         {disp32} mov       dword ptr [data_bytes + 0x286d10], ecx        // 0x005451e7    890d10cdc400
                         {disp32} mov       byte ptr [data_bytes + 0x4bf350], al          // 0x005451ed    a25053e800
                         {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x01        // 0x005451f2    c605d086c30001
                         call               ?FinishFrame@LH3DRender@@QAEXXZ               // 0x005451f9    e862a22e00
                         push               0x1                                           // 0x005451fe    6a01
                         mov                ecx, 0x00e85050                               // 0x00545200    b95050e800
                         {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x01        // 0x00545205    c605d086c30001
                         call               _jmp_addr_0x007de090                          // 0x0054520c    e87f8e2900
                         test               eax, eax                                      // 0x00545211    85c0
                         {disp32} je        _jmp_addr_0x00545015                          // 0x00545213    0f84fcfdffff
_jmp_addr_0x00545219:    {disp32} mov       al, byte ptr [data_bytes + 0x4bf350]          // 0x00545219    a05053e800
                         pop                edi                                           // 0x0054521e    5f
                         pop                esi                                           // 0x0054521f    5e
                         and                al, -0x44                                     // 0x00545220    24bc
                         pop                ebp                                           // 0x00545222    5d
                         {disp32} mov       byte ptr [data_bytes + 0x4bf350], al          // 0x00545223    a25053e800
                         pop                ebx                                           // 0x00545228    5b
                         add                esp, 0x18                                     // 0x00545229    83c418
                         ret                                                              // 0x0054522c    c3
                         nop                                                              // 0x0054522d    90
                         nop                                                              // 0x0054522e    90
                         nop                                                              // 0x0054522f    90
?Init@HistoryBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00545230    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00545234    8b542404
                         push               esi                                           // 0x00545238    56
                         mov.s              esi, ecx                                      // 0x00545239    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0054523b    8b4c240c
                         push               eax                                           // 0x0054523f    50
                         push               ecx                                           // 0x00545240    51
                         push               edx                                           // 0x00545241    52
                         mov.s              ecx, esi                                      // 0x00545242    8bce
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00545244    e8b7e1fcff
                         {disp32} mov       dword ptr [data_bytes + 0x30ab90], esi        // 0x00545249    8935900bcd00
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0054524f    8b4604
                         {disp32} mov       dword ptr [eax + 0x00000094], 0x00000000      // 0x00545252    c7809400000000000000
                         call               _jmp_addr_0x00407a20                          // 0x0054525c    e8bf27ecff
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545261    8b4e04
                         push               0x00000ef7                                    // 0x00545264    68f70e0000
                         push               0x00bea568                                    // 0x00545269    6868a5be00
                         push               0x0000025c                                    // 0x0054526e    685c020000
                         {disp32} mov       dword ptr [ecx + 0x000000ac], eax             // 0x00545273    8981ac000000
                         call               ___nw__FUl                                    // 0x00545279    e812652900
                         add                esp, 0x0c                                     // 0x0054527e    83c40c
                         test               eax, eax                                      // 0x00545281    85c0
                         {disp8} je         _jmp_addr_0x005452c1                          // 0x00545283    743c
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a10 // 0x00545285    813dac7cd100101a0000
                         {disp8} ja         _jmp_addr_0x00545299                          // 0x0054528f    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00545291    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005452a5                          // 0x00545297    eb0c
_jmp_addr_0x00545299:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00545299    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x000138c0]             // 0x0054529f    8d8ac0380100
_jmp_addr_0x005452a5:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005452a5    8b4908
                         push               0x2                                           // 0x005452a8    6a02
                         push               0x0                                           // 0x005452aa    6a00
                         push               0x28                                          // 0x005452ac    6a28
                         push               ecx                                           // 0x005452ae    51
                         push               0x000001f4                                    // 0x005452af    68f4010000
                         push               0x3c                                          // 0x005452b4    6a3c
                         push               0x1                                           // 0x005452b6    6a01
                         mov.s              ecx, eax                                      // 0x005452b8    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005452ba    e8a17fecff
                         {disp8} jmp        _jmp_addr_0x005452c3                          // 0x005452bf    eb02
_jmp_addr_0x005452c1:    xor.s              eax, eax                                      // 0x005452c1    33c0
_jmp_addr_0x005452c3:    push               0x00000ef8                                    // 0x005452c3    68f80e0000
                         push               0x00bea568                                    // 0x005452c8    6868a5be00
                         push               0x0000025c                                    // 0x005452cd    685c020000
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x005452d2    894610
                         call               ___nw__FUl                                    // 0x005452d5    e8b6642900
                         add                esp, 0x0c                                     // 0x005452da    83c40c
                         test               eax, eax                                      // 0x005452dd    85c0
                         {disp8} je         _jmp_addr_0x00545318                          // 0x005452df    7437
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a0f // 0x005452e1    813dac7cd1000f1a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005452eb    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005452f9                          // 0x005452f1    7606
                         add                ecx, 0x000138b4                               // 0x005452f3    81c1b4380100
_jmp_addr_0x005452f9:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005452f9    8b4908
                         push               0x3                                           // 0x005452fc    6a03
                         push               0x1                                           // 0x005452fe    6a01
                         push               0x28                                          // 0x00545300    6a28
                         push               ecx                                           // 0x00545302    51
                         push               0x000001f4                                    // 0x00545303    68f4010000
                         push               0x000002bc                                    // 0x00545308    68bc020000
                         push               0x2                                           // 0x0054530d    6a02
                         mov.s              ecx, eax                                      // 0x0054530f    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00545311    e84a7fecff
                         {disp8} jmp        _jmp_addr_0x0054531a                          // 0x00545316    eb02
_jmp_addr_0x00545318:    xor.s              eax, eax                                      // 0x00545318    33c0
_jmp_addr_0x0054531a:    push               0x00000ef9                                    // 0x0054531a    68f90e0000
                         push               0x00bea568                                    // 0x0054531f    6868a5be00
                         push               0x00000244                                    // 0x00545324    6844020000
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x00545329    894618
                         call               ___nw__FUl                                    // 0x0054532c    e85f642900
                         add                esp, 0x0c                                     // 0x00545331    83c40c
                         test               eax, eax                                      // 0x00545334    85c0
                         {disp8} je         _jmp_addr_0x0054538d                          // 0x00545336    7455
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a73 // 0x00545338    813dac7cd100731a0000
                         {disp8} ja         _jmp_addr_0x0054534c                          // 0x00545342    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00545344    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x00545358                          // 0x0054534a    eb0c
_jmp_addr_0x0054534c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0054534c    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x00013d64]             // 0x00545352    8d8a643d0100
_jmp_addr_0x00545358:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00545358    8b4908
                         push               0x1                                           // 0x0054535b    6a01
                         push               ecx                                           // 0x0054535d    51
                         push               0x28                                          // 0x0054535e    6a28
                         push               0x000000a0                                    // 0x00545360    68a0000000
                         push               0x000001f4                                    // 0x00545365    68f4010000
                         push               0x00000140                                    // 0x0054536a    6840010000
                         push               0x000003e7                                    // 0x0054536f    68e7030000
                         mov.s              ecx, eax                                      // 0x00545374    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00545376    e83545ecff
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0054537b    894614
                         call               _GetMidTextSize__Fv                           // 0x0054537e    e87d26ecff
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00545383    8b4e14
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x00545386    894120
                         pop                esi                                           // 0x00545389    5e
                         ret                0x000c                                        // 0x0054538a    c20c00
_jmp_addr_0x0054538d:    xor.s              eax, eax                                      // 0x0054538d    33c0
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0054538f    894614
                         call               _GetMidTextSize__Fv                           // 0x00545392    e86926ecff
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00545397    8b4e14
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x0054539a    894120
                         pop                esi                                           // 0x0054539d    5e
                         ret                0x000c                                        // 0x0054539e    c20c00
                         nop                                                              // 0x005453a1    90
                         nop                                                              // 0x005453a2    90
                         nop                                                              // 0x005453a3    90
                         nop                                                              // 0x005453a4    90
                         nop                                                              // 0x005453a5    90
                         nop                                                              // 0x005453a6    90
                         nop                                                              // 0x005453a7    90
                         nop                                                              // 0x005453a8    90
                         nop                                                              // 0x005453a9    90
                         nop                                                              // 0x005453aa    90
                         nop                                                              // 0x005453ab    90
                         nop                                                              // 0x005453ac    90
                         nop                                                              // 0x005453ad    90
                         nop                                                              // 0x005453ae    90
                         nop                                                              // 0x005453af    90
?Destroy@HistoryBox@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x005453b0    e8dbe1fcff
                         {disp32} mov       dword ptr [data_bytes + 0x30ab90], 0x00000000 // 0x005453b5    c705900bcd0000000000
                         ret                                                              // 0x005453bf    c3
?InitControls@HistoryBox@@UAEXXZ:
                         ret                                                              // 0x005453c0    c3
                         nop                                                              // 0x005453c1    90
                         nop                                                              // 0x005453c2    90
                         nop                                                              // 0x005453c3    90
                         nop                                                              // 0x005453c4    90
                         nop                                                              // 0x005453c5    90
                         nop                                                              // 0x005453c6    90
                         nop                                                              // 0x005453c7    90
                         nop                                                              // 0x005453c8    90
                         nop                                                              // 0x005453c9    90
                         nop                                                              // 0x005453ca    90
                         nop                                                              // 0x005453cb    90
                         nop                                                              // 0x005453cc    90
                         nop                                                              // 0x005453cd    90
                         nop                                                              // 0x005453ce    90
                         nop                                                              // 0x005453cf    90
_jmp_addr_0x005453d0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x005453d0    8b442408
                         dec                eax                                           // 0x005453d4    48
                         {disp8} je         _jmp_addr_0x005453e8                          // 0x005453d5    7411
                         sub                eax, 0x05                                     // 0x005453d7    83e805
                         {disp8} jne        _jmp_addr_0x00545452                          // 0x005453da    7576
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005453dc    8b4c2404
                         mov                eax, dword ptr [ecx]                          // 0x005453e0    8b01
                         call               dword ptr [eax + 0x20]                        // 0x005453e2    ff5020
                         ret                0x0018                                        // 0x005453e5    c21800
_jmp_addr_0x005453e8:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x005453e8    8b542404
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005453ec    8b442410
                         cmp                eax, dword ptr [edx + 0x14]                   // 0x005453f0    3b4214
                         {disp8} jne        _jmp_addr_0x005453ff                          // 0x005453f3    750a
                         xor.s              ecx, ecx                                      // 0x005453f5    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], ecx        // 0x005453f7    890d441ee000
                         {disp8} jmp        _jmp_addr_0x00545405                          // 0x005453fd    eb06
_jmp_addr_0x005453ff:    {disp32} mov       ecx, dword ptr [data_bytes + 0x43be44]        // 0x005453ff    8b0d441ee000
_jmp_addr_0x00545405:    cmp                eax, dword ptr [edx + 0x10]                   // 0x00545405    3b4210
                         {disp8} jne        _jmp_addr_0x00545411                          // 0x00545408    7507
                         inc                ecx                                           // 0x0054540a    41
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], ecx        // 0x0054540b    890d441ee000
_jmp_addr_0x00545411:    cmp                eax, dword ptr [edx + 0x18]                   // 0x00545411    3b4218
                         {disp8} jne        _jmp_addr_0x0054541d                          // 0x00545414    7507
                         dec                ecx                                           // 0x00545416    49
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], ecx        // 0x00545417    890d441ee000
_jmp_addr_0x0054541d:    {disp32} mov       edx, dword ptr [_game]                        // 0x0054541d    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x0025005c]             // 0x00545423    8b825c002500
                         test               eax, eax                                      // 0x00545429    85c0
                         {disp8} je         _jmp_addr_0x00545435                          // 0x0054542b    7408
                         {disp32} mov       eax, dword ptr [eax + 0x000045c8]             // 0x0054542d    8b80c8450000
                         {disp8} jmp        _jmp_addr_0x00545437                          // 0x00545433    eb02
_jmp_addr_0x00545435:    xor.s              eax, eax                                      // 0x00545435    33c0
_jmp_addr_0x00545437:    cmp.s              ecx, eax                                      // 0x00545437    3bc8
                         {disp8} jl         _jmp_addr_0x00545444                          // 0x00545439    7c09
                         {disp8} lea        ecx, dword ptr [eax + -0x01]                  // 0x0054543b    8d48ff
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], ecx        // 0x0054543e    890d441ee000
_jmp_addr_0x00545444:    test               ecx, ecx                                      // 0x00545444    85c9
                         {disp8} jge        _jmp_addr_0x00545452                          // 0x00545446    7d0a
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], 0x00000000 // 0x00545448    c705441ee00000000000
_jmp_addr_0x00545452:    ret                0x0018                                        // 0x00545452    c21800
                         nop                                                              // 0x00545455    90
                         nop                                                              // 0x00545456    90
                         nop                                                              // 0x00545457    90
                         nop                                                              // 0x00545458    90
                         nop                                                              // 0x00545459    90
                         nop                                                              // 0x0054545a    90
                         nop                                                              // 0x0054545b    90
                         nop                                                              // 0x0054545c    90
                         nop                                                              // 0x0054545d    90
                         nop                                                              // 0x0054545e    90
                         nop                                                              // 0x0054545f    90
?WantsKeyControl@HistoryBox@@UAE_NXZ:
                         xor.s              al, al                                        // 0x00545460    32c0
                         ret                                                              // 0x00545462    c3
                         nop                                                              // 0x00545463    90
                         nop                                                              // 0x00545464    90
                         nop                                                              // 0x00545465    90
                         nop                                                              // 0x00545466    90
                         nop                                                              // 0x00545467    90
                         nop                                                              // 0x00545468    90
                         nop                                                              // 0x00545469    90
                         nop                                                              // 0x0054546a    90
                         nop                                                              // 0x0054546b    90
                         nop                                                              // 0x0054546c    90
                         nop                                                              // 0x0054546d    90
                         nop                                                              // 0x0054546e    90
                         nop                                                              // 0x0054546f    90
?WantsMouseControl@HistoryBox@@UAE_NXZ:
                         sub                esp, 0x10                                     // 0x00545470    83ec10
                         push               esi                                           // 0x00545473    56
                         mov.s              esi, ecx                                      // 0x00545474    8bf1
                         call               _jmp_addr_0x00513770                          // 0x00545476    e8f5e2fcff
                         test               eax, eax                                      // 0x0054547b    85c0
                         {disp8} jne        _jmp_addr_0x00545486                          // 0x0054547d    7507
                         xor.s              al, al                                        // 0x0054547f    32c0
                         pop                esi                                           // 0x00545481    5e
                         add                esp, 0x10                                     // 0x00545482    83c410
                         ret                                                              // 0x00545485    c3
_jmp_addr_0x00545486:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x00545486    a1c052e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0054548b    8b0dc452e800
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00545491    89442404
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00545495    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00545499    8d442404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0054549d    894c2410
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x005454a1    894c2404
                         push               eax                                           // 0x005454a5    50
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x005454a6    8d4c2410
                         push               ecx                                           // 0x005454aa    51
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x005454ab    e880c7ecff
                         fstp               st(0)                                         // 0x005454b0    ddd8
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x005454b2    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005454b6    8b442414
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005454ba    8b4e04
                         add                esp, 0x08                                     // 0x005454bd    83c408
                         push               edx                                           // 0x005454c0    52
                         push               eax                                           // 0x005454c1    50
                         call               _jmp_addr_0x00408100                          // 0x005454c2    e8392cecff
                         test               eax, eax                                      // 0x005454c7    85c0
                         {disp8} je         _jmp_addr_0x005454d2                          // 0x005454c9    7407
                         mov                al, 0x01                                      // 0x005454cb    b001
                         pop                esi                                           // 0x005454cd    5e
                         add                esp, 0x10                                     // 0x005454ce    83c410
                         ret                                                              // 0x005454d1    c3
_jmp_addr_0x005454d2:    {disp32} mov       eax, dword ptr [data_bytes + 0x286d0c]        // 0x005454d2    a10ccdc400
                         test               eax, eax                                      // 0x005454d7    85c0
                         setne              al                                            // 0x005454d9    0f95c0
                         pop                esi                                           // 0x005454dc    5e
                         add                esp, 0x10                                     // 0x005454dd    83c410
                         ret                                                              // 0x005454e0    c3
                         nop                                                              // 0x005454e1    90
                         nop                                                              // 0x005454e2    90
                         nop                                                              // 0x005454e3    90
                         nop                                                              // 0x005454e4    90
                         nop                                                              // 0x005454e5    90
                         nop                                                              // 0x005454e6    90
                         nop                                                              // 0x005454e7    90
                         nop                                                              // 0x005454e8    90
                         nop                                                              // 0x005454e9    90
                         nop                                                              // 0x005454ea    90
                         nop                                                              // 0x005454eb    90
                         nop                                                              // 0x005454ec    90
                         nop                                                              // 0x005454ed    90
                         nop                                                              // 0x005454ee    90
                         nop                                                              // 0x005454ef    90
?CanESCOut@HistoryBox@@UAE_NXZ:
                         xor.s              al, al                                        // 0x005454f0    32c0
                         ret                                                              // 0x005454f2    c3
                         nop                                                              // 0x005454f3    90
                         nop                                                              // 0x005454f4    90
                         nop                                                              // 0x005454f5    90
                         nop                                                              // 0x005454f6    90
                         nop                                                              // 0x005454f7    90
                         nop                                                              // 0x005454f8    90
                         nop                                                              // 0x005454f9    90
                         nop                                                              // 0x005454fa    90
                         nop                                                              // 0x005454fb    90
                         nop                                                              // 0x005454fc    90
                         nop                                                              // 0x005454fd    90
                         nop                                                              // 0x005454fe    90
                         nop                                                              // 0x005454ff    90
_jmp_addr_0x00545500:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00545500    8b442404
                         sub                esp, 0x00000940                               // 0x00545504    81ec40090000
                         push               ebx                                           // 0x0054550a    53
                         push               ebp                                           // 0x0054550b    55
                         push               edi                                           // 0x0054550c    57
                         {disp32} mov       edi, dword ptr [__imp__SetCurrentDirectoryA@4]// 0x0054550d    8b3d88918a00
                         push               eax                                           // 0x00545513    50
                         call               edi                                           // 0x00545514    ffd7
                         {disp32} mov       ebp, dword ptr [__imp__GetCurrentDirectoryA@8]// 0x00545516    8b2d8c918a00
                         {disp32} lea       ecx, dword ptr [esp + 0x0000014c]             // 0x0054551c    8d8c244c010000
                         push               ecx                                           // 0x00545523    51
                         push               0x00000400                                    // 0x00545524    6800040000
                         call               ebp                                           // 0x00545529    ffd5
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x0054552b    8d54240c
                         push               edx                                           // 0x0054552f    52
                         push               0x00bea7c0                                    // 0x00545530    68c0a7be00
                         call               dword ptr [__imp__FindFirstFileA@4]           // 0x00545535    ff1594918a00
                         mov.s              ebx, eax                                      // 0x0054553b    8bd8
                         cmp                ebx, -0x01                                    // 0x0054553d    83fbff
                         {disp32} je        _jmp_addr_0x00545613                          // 0x00545540    0f84cd000000
                         push               esi                                           // 0x00545546    56
_jmp_addr_0x00545547:    test               byte ptr [esp + 0x10], 0x10                   // 0x00545547    f644241010
                         {disp8} jne        _jmp_addr_0x0054555e                          // 0x0054554c    7510
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x0054554e    8d44243c
                         push               eax                                           // 0x00545552    50
                         call               dword ptr [__imp__DeleteFileA@4]              // 0x00545553    ff1528928a00
                         {disp32} jmp       _jmp_addr_0x005455fe                          // 0x00545559    e9a0000000
_jmp_addr_0x0054555e:    {disp8} lea        esi, dword ptr [esp + 0x3c]                   // 0x0054555e    8d74243c
                         mov                eax, OFFSET ??_C@_01PJCK@?4?$AA@              // 0x00545562    b8bca7be00
_jmp_addr_0x00545567:    mov                dl, byte ptr [eax]                            // 0x00545567    8a10
                         mov.s              cl, dl                                        // 0x00545569    8aca
                         cmp                dl, byte ptr [esi]                            // 0x0054556b    3a16
                         {disp8} jne        _jmp_addr_0x0054558b                          // 0x0054556d    751c
                         test               cl, cl                                        // 0x0054556f    84c9
                         {disp8} je         _jmp_addr_0x00545587                          // 0x00545571    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00545573    8a5001
                         mov.s              cl, dl                                        // 0x00545576    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x00545578    3a5601
                         {disp8} jne        _jmp_addr_0x0054558b                          // 0x0054557b    750e
                         add                eax, 0x02                                     // 0x0054557d    83c002
                         add                esi, 0x02                                     // 0x00545580    83c602
                         test               cl, cl                                        // 0x00545583    84c9
                         {disp8} jne        _jmp_addr_0x00545567                          // 0x00545585    75e0
_jmp_addr_0x00545587:    xor.s              eax, eax                                      // 0x00545587    33c0
                         {disp8} jmp        _jmp_addr_0x00545590                          // 0x00545589    eb05
_jmp_addr_0x0054558b:    sbb.s              eax, eax                                      // 0x0054558b    1bc0
                         sbb                eax, -0x01                                    // 0x0054558d    83d8ff
_jmp_addr_0x00545590:    test               eax, eax                                      // 0x00545590    85c0
                         {disp8} je         _jmp_addr_0x005455fe                          // 0x00545592    746a
                         {disp8} lea        esi, dword ptr [esp + 0x3c]                   // 0x00545594    8d74243c
                         mov                eax, 0x00bea7b8                               // 0x00545598    b8b8a7be00
_jmp_addr_0x0054559d:    mov                dl, byte ptr [eax]                            // 0x0054559d    8a10
                         mov.s              cl, dl                                        // 0x0054559f    8aca
                         cmp                dl, byte ptr [esi]                            // 0x005455a1    3a16
                         {disp8} jne        _jmp_addr_0x005455c1                          // 0x005455a3    751c
                         test               cl, cl                                        // 0x005455a5    84c9
                         {disp8} je         _jmp_addr_0x005455bd                          // 0x005455a7    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x005455a9    8a5001
                         mov.s              cl, dl                                        // 0x005455ac    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x005455ae    3a5601
                         {disp8} jne        _jmp_addr_0x005455c1                          // 0x005455b1    750e
                         add                eax, 0x02                                     // 0x005455b3    83c002
                         add                esi, 0x02                                     // 0x005455b6    83c602
                         test               cl, cl                                        // 0x005455b9    84c9
                         {disp8} jne        _jmp_addr_0x0054559d                          // 0x005455bb    75e0
_jmp_addr_0x005455bd:    xor.s              eax, eax                                      // 0x005455bd    33c0
                         {disp8} jmp        _jmp_addr_0x005455c6                          // 0x005455bf    eb05
_jmp_addr_0x005455c1:    sbb.s              eax, eax                                      // 0x005455c1    1bc0
                         sbb                eax, -0x01                                    // 0x005455c3    83d8ff
_jmp_addr_0x005455c6:    test               eax, eax                                      // 0x005455c6    85c0
                         {disp8} je         _jmp_addr_0x005455fe                          // 0x005455c8    7434
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x005455ca    8d44243c
                         push               eax                                           // 0x005455ce    50
                         call               _jmp_addr_0x00545500                          // 0x005455cf    e82cffffff
                         add                esp, 0x04                                     // 0x005455d4    83c404
                         {disp32} lea       ecx, dword ptr [esp + 0x00000550]             // 0x005455d7    8d8c2450050000
                         push               ecx                                           // 0x005455de    51
                         push               0x00000400                                    // 0x005455df    6800040000
                         call               ebp                                           // 0x005455e4    ffd5
                         {disp32} lea       edx, dword ptr [esp + 0x00000150]             // 0x005455e6    8d942450010000
                         push               edx                                           // 0x005455ed    52
                         call               edi                                           // 0x005455ee    ffd7
                         {disp32} lea       eax, dword ptr [esp + 0x00000550]             // 0x005455f0    8d842450050000
                         push               eax                                           // 0x005455f7    50
                         call               dword ptr [__imp__RemoveDirectoryA@4]         // 0x005455f8    ff1590918a00
_jmp_addr_0x005455fe:    {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x005455fe    8d4c2410
                         push               ecx                                           // 0x00545602    51
                         push               ebx                                           // 0x00545603    53
                         call               dword ptr [__imp__FindNextFileA@4]            // 0x00545604    ff1598918a00
                         test               eax, eax                                      // 0x0054560a    85c0
                         {disp32} jne       _jmp_addr_0x00545547                          // 0x0054560c    0f8535ffffff
                         pop                esi                                           // 0x00545612    5e
_jmp_addr_0x00545613:    push               ebx                                           // 0x00545613    53
                         call               dword ptr [__imp__FindClose@4]                // 0x00545614    ff1524928a00
                         pop                edi                                           // 0x0054561a    5f
                         pop                ebp                                           // 0x0054561b    5d
                         pop                ebx                                           // 0x0054561c    5b
                         add                esp, 0x00000940                               // 0x0054561d    81c440090000
                         ret                                                              // 0x00545623    c3
                         nop                                                              // 0x00545624    90
                         nop                                                              // 0x00545625    90
                         nop                                                              // 0x00545626    90
                         nop                                                              // 0x00545627    90
                         nop                                                              // 0x00545628    90
                         nop                                                              // 0x00545629    90
                         nop                                                              // 0x0054562a    90
                         nop                                                              // 0x0054562b    90
                         nop                                                              // 0x0054562c    90
                         nop                                                              // 0x0054562d    90
                         nop                                                              // 0x0054562e    90
                         nop                                                              // 0x0054562f    90
_jmp_addr_0x00545630:    sub                esp, 0x00000400                               // 0x00545630    81ec00040000
                         push               esi                                           // 0x00545636    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00545637    8d442404
                         push               eax                                           // 0x0054563b    50
                         push               0x00000400                                    // 0x0054563c    6800040000
                         call               dword ptr [__imp__GetCurrentDirectoryA@8]     // 0x00545641    ff158c918a00
                         {disp32} mov       esi, dword ptr [esp + 0x00000408]             // 0x00545647    8bb42408040000
                         push               esi                                           // 0x0054564e    56
                         call               _jmp_addr_0x00545500                          // 0x0054564f    e8acfeffff
                         add                esp, 0x04                                     // 0x00545654    83c404
                         push               esi                                           // 0x00545657    56
                         call               dword ptr [__imp__RemoveDirectoryA@4]         // 0x00545658    ff1590918a00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0054565e    8d4c2404
                         push               ecx                                           // 0x00545662    51
                         call               dword ptr [__imp__SetCurrentDirectoryA@4]     // 0x00545663    ff1588918a00
                         pop                esi                                           // 0x00545669    5e
                         add                esp, 0x00000400                               // 0x0054566a    81c400040000
                         ret                                                              // 0x00545670    c3
                         nop                                                              // 0x00545671    90
                         nop                                                              // 0x00545672    90
                         nop                                                              // 0x00545673    90
                         nop                                                              // 0x00545674    90
                         nop                                                              // 0x00545675    90
                         nop                                                              // 0x00545676    90
                         nop                                                              // 0x00545677    90
                         nop                                                              // 0x00545678    90
                         nop                                                              // 0x00545679    90
                         nop                                                              // 0x0054567a    90
                         nop                                                              // 0x0054567b    90
                         nop                                                              // 0x0054567c    90
                         nop                                                              // 0x0054567d    90
                         nop                                                              // 0x0054567e    90
                         nop                                                              // 0x0054567f    90
_jmp_addr_0x00545680:    sub                esp, 0x0c                                     // 0x00545680    83ec0c
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x00545683    8b510c
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00545686    8b442414
                         push               ebx                                           // 0x0054568a    53
                         push               ebp                                           // 0x0054568b    55
                         push               esi                                           // 0x0054568c    56
                         {disp8} mov        esi, dword ptr [ecx + 0x08]                   // 0x0054568d    8b7108
                         sub.s              edx, esi                                      // 0x00545690    2bd6
                         sar                edx, 4                                        // 0x00545692    c1fa04
                         cmp.s              edx, eax                                      // 0x00545695    3bd0
                         push               edi                                           // 0x00545697    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00545698    894c2410
                         {disp32} jae       _jmp_addr_0x005457d3                          // 0x0054569c    0f8331010000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x005456a2    8b5104
                         test               edx, edx                                      // 0x005456a5    85d2
                         {disp8} je         _jmp_addr_0x005456ba                          // 0x005456a7    7411
                         mov.s              ecx, esi                                      // 0x005456a9    8bce
                         sub.s              ecx, edx                                      // 0x005456ab    2bca
                         sar                ecx, 4                                        // 0x005456ad    c1f904
                         cmp.s              eax, ecx                                      // 0x005456b0    3bc1
                         {disp8} jae        _jmp_addr_0x005456b6                          // 0x005456b2    7302
                         mov.s              eax, ecx                                      // 0x005456b4    8bc1
_jmp_addr_0x005456b6:    test               edx, edx                                      // 0x005456b6    85d2
                         {disp8} jne        _jmp_addr_0x005456be                          // 0x005456b8    7504
_jmp_addr_0x005456ba:    xor.s              esi, esi                                      // 0x005456ba    33f6
                         {disp8} jmp        _jmp_addr_0x005456c3                          // 0x005456bc    eb05
_jmp_addr_0x005456be:    sub.s              esi, edx                                      // 0x005456be    2bf2
                         sar                esi, 4                                        // 0x005456c0    c1fe04
_jmp_addr_0x005456c3:    add.s              eax, esi                                      // 0x005456c3    03c6
                         test               eax, eax                                      // 0x005456c5    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005456c7    89442414
                         {disp8} jge        _jmp_addr_0x005456cf                          // 0x005456cb    7d02
                         xor.s              eax, eax                                      // 0x005456cd    33c0
_jmp_addr_0x005456cf:    shl                eax, 4                                        // 0x005456cf    c1e004
                         push               eax                                           // 0x005456d2    50
                         call               ??2@YAPAXI@Z                                  // 0x005456d3    e8160e2800
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005456d8    8b4c2424
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005456dc    8944241c
                         mov.s              edi, eax                                      // 0x005456e0    8bf8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005456e2    8b442414
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x005456e6    8b7004
                         add                esp, 0x04                                     // 0x005456e9    83c404
                         cmp.s              esi, ecx                                      // 0x005456ec    3bf1
                         {disp8} je         _jmp_addr_0x0054570a                          // 0x005456ee    741a
_jmp_addr_0x005456f0:    test               edi, edi                                      // 0x005456f0    85ff
                         {disp8} je         _jmp_addr_0x005456fc                          // 0x005456f2    7408
                         push               esi                                           // 0x005456f4    56
                         mov.s              ecx, edi                                      // 0x005456f5    8bcf
                         call               _jmp_addr_0x00545de0                          // 0x005456f7    e8e4060000
_jmp_addr_0x005456fc:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005456fc    8b4c2420
                         add                esi, 0x10                                     // 0x00545700    83c610
                         add                edi, 0x10                                     // 0x00545703    83c710
                         cmp.s              esi, ecx                                      // 0x00545706    3bf1
                         {disp8} jne        _jmp_addr_0x005456f0                          // 0x00545708    75e6
_jmp_addr_0x0054570a:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0054570a    8b442424
                         test               eax, eax                                      // 0x0054570e    85c0
                         mov.s              esi, edi                                      // 0x00545710    8bf7
                         {disp8} jbe        _jmp_addr_0x00545734                          // 0x00545712    7620
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00545714    8b6c2428
                         mov.s              ebx, eax                                      // 0x00545718    8bd8
_jmp_addr_0x0054571a:    test               esi, esi                                      // 0x0054571a    85f6
                         {disp8} je         _jmp_addr_0x00545726                          // 0x0054571c    7408
                         push               ebp                                           // 0x0054571e    55
                         mov.s              ecx, esi                                      // 0x0054571f    8bce
                         call               _jmp_addr_0x00545de0                          // 0x00545721    e8ba060000
_jmp_addr_0x00545726:    add                esi, 0x10                                     // 0x00545726    83c610
                         dec                ebx                                           // 0x00545729    4b
                         {disp8} jne        _jmp_addr_0x0054571a                          // 0x0054572a    75ee
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0054572c    8b4c2420
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00545730    8b442424
_jmp_addr_0x00545734:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00545734    8b542410
                         {disp8} mov        ebp, dword ptr [edx + 0x08]                   // 0x00545738    8b6a08
                         shl                eax, 4                                        // 0x0054573b    c1e004
                         cmp.s              ecx, ebp                                      // 0x0054573e    3bcd
                         lea                ebx, dword ptr [eax + edi * 0x1]              // 0x00545740    8d1c38
                         {disp8} je         _jmp_addr_0x00545763                          // 0x00545743    741e
                         mov.s              esi, ebx                                      // 0x00545745    8bf3
                         sub.s              esi, eax                                      // 0x00545747    2bf0
                         sub.s              esi, edi                                      // 0x00545749    2bf7
                         add.s              esi, ecx                                      // 0x0054574b    03f1
_jmp_addr_0x0054574d:    test               ebx, ebx                                      // 0x0054574d    85db
                         {disp8} je         _jmp_addr_0x00545759                          // 0x0054574f    7408
                         push               esi                                           // 0x00545751    56
                         mov.s              ecx, ebx                                      // 0x00545752    8bcb
                         call               _jmp_addr_0x00545de0                          // 0x00545754    e887060000
_jmp_addr_0x00545759:    add                esi, 0x10                                     // 0x00545759    83c610
                         add                ebx, 0x10                                     // 0x0054575c    83c310
                         cmp.s              esi, ebp                                      // 0x0054575f    3bf5
                         {disp8} jne        _jmp_addr_0x0054574d                          // 0x00545761    75ea
_jmp_addr_0x00545763:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00545763    8b442410
                         {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x00545767    8b7808
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x0054576a    8b7004
                         cmp.s              esi, edi                                      // 0x0054576d    3bf7
                         {disp8} je         _jmp_addr_0x00545781                          // 0x0054576f    7410
_jmp_addr_0x00545771:    push               0x1                                           // 0x00545771    6a01
                         mov.s              ecx, esi                                      // 0x00545773    8bce
                         call               _jmp_addr_0x00545920                          // 0x00545775    e8a6010000
                         add                esi, 0x10                                     // 0x0054577a    83c610
                         cmp.s              esi, edi                                      // 0x0054577d    3bf7
                         {disp8} jne        _jmp_addr_0x00545771                          // 0x0054577f    75f0
_jmp_addr_0x00545781:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00545781    8b442410
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00545785    8b4804
                         push               ecx                                           // 0x00545788    51
                         call               ??3@YAXPAX@Z                                  // 0x00545789    e80a972600
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0054578e    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00545792    8b4c2414
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00545796    8b74241c
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0054579a    8b5104
                         shl                eax, 4                                        // 0x0054579d    c1e004
                         add.s              eax, esi                                      // 0x005457a0    03c6
                         add                esp, 0x04                                     // 0x005457a2    83c404
                         test               edx, edx                                      // 0x005457a5    85d2
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x005457a7    89410c
                         {disp8} jne        _jmp_addr_0x005457b0                          // 0x005457aa    7504
                         xor.s              eax, eax                                      // 0x005457ac    33c0
                         {disp8} jmp        _jmp_addr_0x005457b8                          // 0x005457ae    eb08
_jmp_addr_0x005457b0:    {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x005457b0    8b4108
                         sub.s              eax, edx                                      // 0x005457b3    2bc2
                         sar                eax, 4                                        // 0x005457b5    c1f804
_jmp_addr_0x005457b8:    {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005457b8    8b542424
                         add.s              eax, edx                                      // 0x005457bc    03c2
                         pop                edi                                           // 0x005457be    5f
                         shl                eax, 4                                        // 0x005457bf    c1e004
                         add.s              eax, esi                                      // 0x005457c2    03c6
                         {disp8} mov        dword ptr [ecx + 0x04], esi                   // 0x005457c4    897104
                         pop                esi                                           // 0x005457c7    5e
                         pop                ebp                                           // 0x005457c8    5d
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x005457c9    894108
                         pop                ebx                                           // 0x005457cc    5b
                         add                esp, 0x0c                                     // 0x005457cd    83c40c
                         ret                0x000c                                        // 0x005457d0    c20c00
_jmp_addr_0x005457d3:    {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x005457d3    8b5c2420
                         mov.s              edx, esi                                      // 0x005457d7    8bd6
                         sub.s              edx, ebx                                      // 0x005457d9    2bd3
                         sar                edx, 4                                        // 0x005457db    c1fa04
                         cmp.s              edx, eax                                      // 0x005457de    3bd0
                         {disp32} jae       _jmp_addr_0x0054587e                          // 0x005457e0    0f8398000000
                         mov.s              edx, eax                                      // 0x005457e6    8bd0
                         shl                edx, 4                                        // 0x005457e8    c1e204
                         cmp.s              ebx, esi                                      // 0x005457eb    3bde
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x005457ed    89542420
                         lea                ebp, dword ptr [edx + ebx * 0x1]              // 0x005457f1    8d2c1a
                         {disp8} je         _jmp_addr_0x00545818                          // 0x005457f4    7422
                         mov.s              edi, ebp                                      // 0x005457f6    8bfd
                         sub.s              edi, edx                                      // 0x005457f8    2bfa
_jmp_addr_0x005457fa:    test               ebp, ebp                                      // 0x005457fa    85ed
                         {disp8} je         _jmp_addr_0x0054580e                          // 0x005457fc    7410
                         push               edi                                           // 0x005457fe    57
                         mov.s              ecx, ebp                                      // 0x005457ff    8bcd
                         call               _jmp_addr_0x00545de0                          // 0x00545801    e8da050000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00545806    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0054580a    8b442424
_jmp_addr_0x0054580e:    add                edi, 0x10                                     // 0x0054580e    83c710
                         add                ebp, 0x10                                     // 0x00545811    83c510
                         cmp.s              edi, esi                                      // 0x00545814    3bfe
                         {disp8} jne        _jmp_addr_0x005457fa                          // 0x00545816    75e2
_jmp_addr_0x00545818:    {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x00545818    8b5108
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x0054581b    8b6c2428
                         mov.s              esi, edx                                      // 0x0054581f    8bf2
                         sub.s              esi, ebx                                      // 0x00545821    2bf3
                         sar                esi, 4                                        // 0x00545823    c1fe04
                         sub.s              eax, esi                                      // 0x00545826    2bc6
                         mov.s              esi, edx                                      // 0x00545828    8bf2
                         {disp8} je         _jmp_addr_0x00545844                          // 0x0054582a    7418
                         mov.s              edi, eax                                      // 0x0054582c    8bf8
_jmp_addr_0x0054582e:    test               esi, esi                                      // 0x0054582e    85f6
                         {disp8} je         _jmp_addr_0x0054583e                          // 0x00545830    740c
                         push               ebp                                           // 0x00545832    55
                         mov.s              ecx, esi                                      // 0x00545833    8bce
                         call               _jmp_addr_0x00545de0                          // 0x00545835    e8a6050000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0054583a    8b4c2410
_jmp_addr_0x0054583e:    add                esi, 0x10                                     // 0x0054583e    83c610
                         dec                edi                                           // 0x00545841    4f
                         {disp8} jne        _jmp_addr_0x0054582e                          // 0x00545842    75ea
_jmp_addr_0x00545844:    {disp8} mov        edi, dword ptr [ecx + 0x08]                   // 0x00545844    8b7908
                         cmp.s              ebx, edi                                      // 0x00545847    3bdf
                         mov.s              esi, ebx                                      // 0x00545849    8bf3
                         {disp8} je         _jmp_addr_0x00545868                          // 0x0054584b    741b
_jmp_addr_0x0054584d:    {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]        // 0x0054584d    a1d4ec8d00
                         push               eax                                           // 0x00545852    50
                         push               0x0                                           // 0x00545853    6a00
                         push               ebp                                           // 0x00545855    55
                         mov.s              ecx, esi                                      // 0x00545856    8bce
                         call               _jmp_addr_0x00545f00                          // 0x00545858    e8a3060000
                         add                esi, 0x10                                     // 0x0054585d    83c610
                         cmp.s              esi, edi                                      // 0x00545860    3bf7
                         {disp8} jne        _jmp_addr_0x0054584d                          // 0x00545862    75e9
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00545864    8b4c2410
_jmp_addr_0x00545868:    {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x00545868    8b4108
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0054586b    8b542420
                         pop                edi                                           // 0x0054586f    5f
                         pop                esi                                           // 0x00545870    5e
                         add.s              eax, edx                                      // 0x00545871    03c2
                         pop                ebp                                           // 0x00545873    5d
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00545874    894108
                         pop                ebx                                           // 0x00545877    5b
                         add                esp, 0x0c                                     // 0x00545878    83c40c
                         ret                0x000c                                        // 0x0054587b    c20c00
_jmp_addr_0x0054587e:    test               eax, eax                                      // 0x0054587e    85c0
                         {disp32} jbe       _jmp_addr_0x00545910                          // 0x00545880    0f868a000000
                         shl                eax, 4                                        // 0x00545886    c1e004
                         mov.s              edi, esi                                      // 0x00545889    8bfe
                         sub.s              edi, eax                                      // 0x0054588b    2bf8
                         cmp.s              edi, esi                                      // 0x0054588d    3bfe
                         mov.s              ebp, esi                                      // 0x0054588f    8bee
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00545891    89442420
                         {disp8} je         _jmp_addr_0x005458b3                          // 0x00545895    741c
_jmp_addr_0x00545897:    push               edi                                           // 0x00545897    57
                         push               ebp                                           // 0x00545898    55
                         call               _jmp_addr_0x00545be0                          // 0x00545899    e842030000
                         add                edi, 0x10                                     // 0x0054589e    83c710
                         add                esp, 0x08                                     // 0x005458a1    83c408
                         add                ebp, 0x10                                     // 0x005458a4    83c510
                         cmp.s              edi, esi                                      // 0x005458a7    3bfe
                         {disp8} jne        _jmp_addr_0x00545897                          // 0x005458a9    75ec
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005458ab    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005458af    8b442420
_jmp_addr_0x005458b3:    {disp8} mov        edi, dword ptr [ecx + 0x08]                   // 0x005458b3    8b7908
                         mov.s              esi, edi                                      // 0x005458b6    8bf7
                         sub.s              esi, eax                                      // 0x005458b8    2bf0
                         cmp.s              ebx, esi                                      // 0x005458ba    3bde
                         {disp8} je         _jmp_addr_0x005458e0                          // 0x005458bc    7422
_jmp_addr_0x005458be:    {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]        // 0x005458be    a1d4ec8d00
                         push               eax                                           // 0x005458c3    50
                         push               0x0                                           // 0x005458c4    6a00
                         sub                esi, 0x10                                     // 0x005458c6    83ee10
                         sub                edi, 0x10                                     // 0x005458c9    83ef10
                         push               esi                                           // 0x005458cc    56
                         mov.s              ecx, edi                                      // 0x005458cd    8bcf
                         call               _jmp_addr_0x00545f00                          // 0x005458cf    e82c060000
                         cmp.s              esi, ebx                                      // 0x005458d4    3bf3
                         {disp8} jne        _jmp_addr_0x005458be                          // 0x005458d6    75e6
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005458d8    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005458dc    8b442420
_jmp_addr_0x005458e0:    lea                edi, dword ptr [eax + ebx * 0x1]              // 0x005458e0    8d3c18
                         cmp.s              ebx, edi                                      // 0x005458e3    3bdf
                         mov.s              esi, ebx                                      // 0x005458e5    8bf3
                         {disp8} je         _jmp_addr_0x0054590d                          // 0x005458e7    7424
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x005458e9    8b5c2428
_jmp_addr_0x005458ed:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0x35cd4]        // 0x005458ed    8b0dd4ec8d00
                         push               ecx                                           // 0x005458f3    51
                         push               0x0                                           // 0x005458f4    6a00
                         push               ebx                                           // 0x005458f6    53
                         mov.s              ecx, esi                                      // 0x005458f7    8bce
                         call               _jmp_addr_0x00545f00                          // 0x005458f9    e802060000
                         add                esi, 0x10                                     // 0x005458fe    83c610
                         cmp.s              esi, edi                                      // 0x00545901    3bf7
                         {disp8} jne        _jmp_addr_0x005458ed                          // 0x00545903    75e8
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00545905    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00545909    8b442420
_jmp_addr_0x0054590d:    add                dword ptr [ecx + 0x08], eax                   // 0x0054590d    014108
_jmp_addr_0x00545910:    pop                edi                                           // 0x00545910    5f
                         pop                esi                                           // 0x00545911    5e
                         pop                ebp                                           // 0x00545912    5d
                         pop                ebx                                           // 0x00545913    5b
                         add                esp, 0x0c                                     // 0x00545914    83c40c
                         ret                0x000c                                        // 0x00545917    c20c00
                         call               dword ptr [__imp__timeSetEvent@4]             // 0x0054591a    ff1598988a00
_jmp_addr_0x00545920:    {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00545920    8a442404
                         test               al, al                                        // 0x00545924    84c0
                         push               esi                                           // 0x00545926    56
                         mov.s              esi, ecx                                      // 0x00545927    8bf1
                         {disp8} je         _jmp_addr_0x00545950                          // 0x00545929    7425
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0054592b    8b4e04
                         test               ecx, ecx                                      // 0x0054592e    85c9
                         {disp8} je         _jmp_addr_0x00545950                          // 0x00545930    741e
                         {disp8} mov        al, byte ptr [ecx + -0x01]                    // 0x00545932    8a41ff
                         test               al, al                                        // 0x00545935    84c0
                         {disp8} je         _jmp_addr_0x00545944                          // 0x00545937    740b
                         cmp                al, -0x01                                     // 0x00545939    3cff
                         {disp8} je         _jmp_addr_0x00545944                          // 0x0054593b    7407
                         dec                al                                            // 0x0054593d    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                    // 0x0054593f    8841ff
                         {disp8} jmp        _jmp_addr_0x00545950                          // 0x00545942    eb0c
_jmp_addr_0x00545944:    add                ecx, -0x2                                     // 0x00545944    83c1fe
                         push               ecx                                           // 0x00545947    51
                         call               ??3@YAXPAX@Z                                  // 0x00545948    e84b952600
                         add                esp, 0x04                                     // 0x0054594d    83c404
_jmp_addr_0x00545950:    {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x00545950    c7460400000000
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00545957    c7460800000000
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000            // 0x0054595e    c7460c00000000
                         pop                esi                                           // 0x00545965    5e
                         ret                0x0004                                        // 0x00545966    c20400
                         nop                                                              // 0x00545969    90
                         nop                                                              // 0x0054596a    90
                         nop                                                              // 0x0054596b    90
                         nop                                                              // 0x0054596c    90
                         nop                                                              // 0x0054596d    90
                         nop                                                              // 0x0054596e    90
                         nop                                                              // 0x0054596f    90
_jmp_addr_0x00545970:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00545970    8b442404
                         dec                eax                                           // 0x00545974    48
                         ret                0x0004                                        // 0x00545975    c20400
                         nop                                                              // 0x00545978    90
                         nop                                                              // 0x00545979    90
                         nop                                                              // 0x0054597a    90
                         nop                                                              // 0x0054597b    90
                         nop                                                              // 0x0054597c    90
                         nop                                                              // 0x0054597d    90
                         nop                                                              // 0x0054597e    90
                         nop                                                              // 0x0054597f    90
_jmp_addr_0x00545980:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00545980    8b442404
                         push               eax                                           // 0x00545984    50
                         call               ??3@YAXPAX@Z                                  // 0x00545985    e80e952600
                         pop                ecx                                           // 0x0054598a    59
                         ret                0x0008                                        // 0x0054598b    c20800
                         nop                                                              // 0x0054598e    90
                         nop                                                              // 0x0054598f    90
_jmp_addr_0x00545990:    push               ebx                                           // 0x00545990    53
                         push               esi                                           // 0x00545991    56
                         push               edi                                           // 0x00545992    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00545993    8b7c2410
                         cmp                edi, 0x7ffffffd                               // 0x00545997    81fffdffff7f
                         mov.s              esi, ecx                                      // 0x0054599d    8bf1
                         {disp8} jbe        _jmp_addr_0x005459a6                          // 0x0054599f    7605
                         call               ?_Xlen@std@@YAXXZ                             // 0x005459a1    e8ae952600
_jmp_addr_0x005459a6:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005459a6    8b4604
                         xor.s              ebx, ebx                                      // 0x005459a9    33db
                         cmp.s              eax, ebx                                      // 0x005459ab    3bc3
                         {disp8} je         _jmp_addr_0x005459d9                          // 0x005459ad    742a
                         {disp8} mov        cl, byte ptr [eax + -0x01]                    // 0x005459af    8a48ff
                         cmp.s              cl, bl                                        // 0x005459b2    3acb
                         {disp8} je         _jmp_addr_0x005459d9                          // 0x005459b4    7423
                         cmp                cl, -0x01                                     // 0x005459b6    80f9ff
                         {disp8} je         _jmp_addr_0x005459d9                          // 0x005459b9    741e
                         cmp.s              edi, ebx                                      // 0x005459bb    3bfb
                         {disp32} jne       _jmp_addr_0x00545aa2                          // 0x005459bd    0f85df000000
                         dec                cl                                            // 0x005459c3    fec9
                         {disp8} mov        byte ptr [eax + -0x01], cl                    // 0x005459c5    8848ff
                         pop                edi                                           // 0x005459c8    5f
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x005459c9    895e04
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x005459cc    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x005459cf    895e0c
                         pop                esi                                           // 0x005459d2    5e
                         xor.s              al, al                                        // 0x005459d3    32c0
                         pop                ebx                                           // 0x005459d5    5b
                         ret                0x0008                                        // 0x005459d6    c20800
_jmp_addr_0x005459d9:    cmp.s              edi, ebx                                      // 0x005459d9    3bfb
                         {disp8} mov        cl, byte ptr [esp + 0x14]                     // 0x005459db    8a4c2414
                         {disp8} jne        _jmp_addr_0x00545a3a                          // 0x005459df    7559
                         cmp.s              cl, bl                                        // 0x005459e1    3acb
                         {disp8} je         _jmp_addr_0x00545a28                          // 0x005459e3    7443
                         cmp.s              eax, ebx                                      // 0x005459e5    3bc3
                         {disp8} je         _jmp_addr_0x00545a17                          // 0x005459e7    742e
                         {disp8} mov        cl, byte ptr [eax + -0x01]                    // 0x005459e9    8a48ff
                         cmp.s              cl, bl                                        // 0x005459ec    3acb
                         {disp8} je         _jmp_addr_0x00545a0b                          // 0x005459ee    741b
                         cmp                cl, -0x01                                     // 0x005459f0    80f9ff
                         {disp8} je         _jmp_addr_0x00545a0b                          // 0x005459f3    7416
                         dec                cl                                            // 0x005459f5    fec9
                         {disp8} mov        byte ptr [eax + -0x01], cl                    // 0x005459f7    8848ff
                         pop                edi                                           // 0x005459fa    5f
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x005459fb    895e04
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x005459fe    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00545a01    895e0c
                         pop                esi                                           // 0x00545a04    5e
                         xor.s              al, al                                        // 0x00545a05    32c0
                         pop                ebx                                           // 0x00545a07    5b
                         ret                0x0008                                        // 0x00545a08    c20800
_jmp_addr_0x00545a0b:    add                eax, -0x02                                    // 0x00545a0b    83c0fe
                         push               eax                                           // 0x00545a0e    50
                         call               ??3@YAXPAX@Z                                  // 0x00545a0f    e884942600
                         add                esp, 0x04                                     // 0x00545a14    83c404
_jmp_addr_0x00545a17:    pop                edi                                           // 0x00545a17    5f
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x00545a18    895e04
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00545a1b    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00545a1e    895e0c
                         pop                esi                                           // 0x00545a21    5e
                         xor.s              al, al                                        // 0x00545a22    32c0
                         pop                ebx                                           // 0x00545a24    5b
                         ret                0x0008                                        // 0x00545a25    c20800
_jmp_addr_0x00545a28:    cmp.s              eax, ebx                                      // 0x00545a28    3bc3
                         {disp8} je         _jmp_addr_0x00545a32                          // 0x00545a2a    7406
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00545a2c    895e08
                         mov                word ptr [eax], bx                            // 0x00545a2f    668918
_jmp_addr_0x00545a32:    pop                edi                                           // 0x00545a32    5f
                         pop                esi                                           // 0x00545a33    5e
                         xor.s              al, al                                        // 0x00545a34    32c0
                         pop                ebx                                           // 0x00545a36    5b
                         ret                0x0008                                        // 0x00545a37    c20800
_jmp_addr_0x00545a3a:    cmp.s              cl, bl                                        // 0x00545a3a    3acb
                         {disp8} je         _jmp_addr_0x00545a9d                          // 0x00545a3c    745f
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x00545a3e    8b4e0c
                         cmp                ecx, 0x1f                                     // 0x00545a41    83f91f
                         {disp8} ja         _jmp_addr_0x00545a4a                          // 0x00545a44    7704
                         cmp.s              ecx, edi                                      // 0x00545a46    3bcf
                         {disp8} jae        _jmp_addr_0x00545aaa                          // 0x00545a48    7360
_jmp_addr_0x00545a4a:    cmp.s              eax, ebx                                      // 0x00545a4a    3bc3
                         {disp8} je         _jmp_addr_0x00545a84                          // 0x00545a4c    7436
                         {disp8} mov        cl, byte ptr [eax + -0x01]                    // 0x00545a4e    8a48ff
                         cmp.s              cl, bl                                        // 0x00545a51    3acb
                         {disp8} je         _jmp_addr_0x00545a78                          // 0x00545a53    7423
                         cmp                cl, -0x01                                     // 0x00545a55    80f9ff
                         {disp8} je         _jmp_addr_0x00545a78                          // 0x00545a58    741e
                         dec                cl                                            // 0x00545a5a    fec9
                         {disp8} mov        byte ptr [eax + -0x01], cl                    // 0x00545a5c    8848ff
                         push               edi                                           // 0x00545a5f    57
                         mov.s              ecx, esi                                      // 0x00545a60    8bce
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x00545a62    895e04
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00545a65    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00545a68    895e0c
                         call               _jmp_addr_0x00545ac0                          // 0x00545a6b    e850000000
                         pop                edi                                           // 0x00545a70    5f
                         pop                esi                                           // 0x00545a71    5e
                         mov                al, 0x01                                      // 0x00545a72    b001
                         pop                ebx                                           // 0x00545a74    5b
                         ret                0x0008                                        // 0x00545a75    c20800
_jmp_addr_0x00545a78:    add                eax, -0x02                                    // 0x00545a78    83c0fe
                         push               eax                                           // 0x00545a7b    50
                         call               ??3@YAXPAX@Z                                  // 0x00545a7c    e817942600
                         add                esp, 0x04                                     // 0x00545a81    83c404
_jmp_addr_0x00545a84:    push               edi                                           // 0x00545a84    57
                         mov.s              ecx, esi                                      // 0x00545a85    8bce
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x00545a87    895e04
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00545a8a    895e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00545a8d    895e0c
                         call               _jmp_addr_0x00545ac0                          // 0x00545a90    e82b000000
                         pop                edi                                           // 0x00545a95    5f
                         pop                esi                                           // 0x00545a96    5e
                         mov                al, 0x01                                      // 0x00545a97    b001
                         pop                ebx                                           // 0x00545a99    5b
                         ret                0x0008                                        // 0x00545a9a    c20800
_jmp_addr_0x00545a9d:    cmp                dword ptr [esi + 0x0c], edi                   // 0x00545a9d    397e0c
                         {disp8} jae        _jmp_addr_0x00545aaa                          // 0x00545aa0    7308
_jmp_addr_0x00545aa2:    push               edi                                           // 0x00545aa2    57
                         mov.s              ecx, esi                                      // 0x00545aa3    8bce
                         call               _jmp_addr_0x00545ac0                          // 0x00545aa5    e816000000
_jmp_addr_0x00545aaa:    pop                edi                                           // 0x00545aaa    5f
                         pop                esi                                           // 0x00545aab    5e
                         mov                al, 0x01                                      // 0x00545aac    b001
                         pop                ebx                                           // 0x00545aae    5b
                         ret                0x0008                                        // 0x00545aaf    c20800
                         nop                                                              // 0x00545ab2    90
                         nop                                                              // 0x00545ab3    90
                         nop                                                              // 0x00545ab4    90
                         nop                                                              // 0x00545ab5    90
                         nop                                                              // 0x00545ab6    90
                         nop                                                              // 0x00545ab7    90
                         nop                                                              // 0x00545ab8    90
                         nop                                                              // 0x00545ab9    90
                         nop                                                              // 0x00545aba    90
                         nop                                                              // 0x00545abb    90
                         nop                                                              // 0x00545abc    90
                         nop                                                              // 0x00545abd    90
                         nop                                                              // 0x00545abe    90
                         nop                                                              // 0x00545abf    90
_jmp_addr_0x00545ac0:    push               ebp                                           // 0x00545ac0    55
                         mov.s              ebp, esp                                      // 0x00545ac1    8bec
                         push               -0x1                                          // 0x00545ac3    6aff
                         push               0x008a6470                                    // 0x00545ac5    6870648a00
                         {disp32} mov       eax, fs:[0x0]                                 // 0x00545aca    64a100000000
                         push               eax                                           // 0x00545ad0    50
                         {disp32} mov       fs:[0x0], esp                                 // 0x00545ad1    64892500000000
                         sub                esp, 0x50                                     // 0x00545ad8    83ec50
                         push               ebx                                           // 0x00545adb    53
                         push               esi                                           // 0x00545adc    56
                         push               edi                                           // 0x00545add    57
                         {disp8} mov        dword ptr [ebp + -0x10], esp                  // 0x00545ade    8965f0
                         mov.s              esi, ecx                                      // 0x00545ae1    8bf1
                         {disp8} mov        dword ptr [ebp + -0x5c], esi                  // 0x00545ae3    8975a4
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x00545ae6    8b4508
                         mov.s              edi, eax                                      // 0x00545ae9    8bf8
                         or                 edi, 0x1f                                     // 0x00545aeb    83cf1f
                         cmp                edi, 0x7ffffffd                               // 0x00545aee    81fffdffff7f
                         {disp8} jbe        _jmp_addr_0x00545af8                          // 0x00545af4    7602
                         mov.s              edi, eax                                      // 0x00545af6    8bf8
_jmp_addr_0x00545af8:    {disp8} mov        dword ptr [ebp + -0x04], 0x00000000           // 0x00545af8    c745fc00000000
                         {disp8} lea        eax, dword ptr [edi + 0x02]                   // 0x00545aff    8d4702
                         {disp8} mov        dword ptr [ebp + -0x28], eax                  // 0x00545b02    8945d8
                         test               eax, eax                                      // 0x00545b05    85c0
                         {disp8} jge        _jmp_addr_0x00545b0e                          // 0x00545b07    7d05
                         xor.s              eax, eax                                      // 0x00545b09    33c0
                         {disp8} mov        dword ptr [ebp + -0x28], eax                  // 0x00545b0b    8945d8
_jmp_addr_0x00545b0e:    add.s              eax, eax                                      // 0x00545b0e    03c0
                         push               eax                                           // 0x00545b10    50
                         call               ??2@YAPAXI@Z                                  // 0x00545b11    e8d8092800
                         add                esp, 0x04                                     // 0x00545b16    83c404
                         {disp8} mov        dword ptr [ebp + -0x18], eax                  // 0x00545b19    8945e8
                         {disp8} jmp        _jmp_addr_0x00545b48                          // 0x00545b1c    eb2a
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x00545b1e    8b4508
                         {disp8} mov        dword ptr [ebp + -0x1c], eax                  // 0x00545b21    8945e4
                         add                eax, 0x02                                     // 0x00545b24    83c002
                         test               eax, eax                                      // 0x00545b27    85c0
                         {disp8} jge        _jmp_addr_0x00545b2d                          // 0x00545b29    7d02
                         xor.s              eax, eax                                      // 0x00545b2b    33c0
_jmp_addr_0x00545b2d:    lea                ecx, dword ptr [eax + eax * 0x1]              // 0x00545b2d    8d0c00
                         push               ecx                                           // 0x00545b30    51
                         call               ??2@YAPAXI@Z                                  // 0x00545b31    e8b8092800
                         add                esp, 0x04                                     // 0x00545b36    83c404
                         {disp8} mov        dword ptr [ebp + -0x18], eax                  // 0x00545b39    8945e8
                         mov                eax, 0x00545b42                               // 0x00545b3c    b8425b5400
                         ret                                                              // 0x00545b41    c3
                         {disp8} mov        esi, dword ptr [ebp + -0x5c]                  // 0x00545b42    8b75a4
                         {disp8} mov        edi, dword ptr [ebp + -0x1c]                  // 0x00545b45    8b7de4
_jmp_addr_0x00545b48:    {disp8} mov        dword ptr [ebp + -0x04], 0xffffffff           // 0x00545b48    c745fcffffffff
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00545b4f    8b5608
                         test               edx, edx                                      // 0x00545b52    85d2
                         {disp8} jbe        _jmp_addr_0x00545b78                          // 0x00545b54    7622
                         cmp.s              edx, edi                                      // 0x00545b56    3bd7
                         {disp8} jbe        _jmp_addr_0x00545b5c                          // 0x00545b58    7602
                         mov.s              edx, edi                                      // 0x00545b5a    8bd7
_jmp_addr_0x00545b5c:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545b5c    8b4e04
                         {disp8} mov        eax, dword ptr [ebp + -0x18]                  // 0x00545b5f    8b45e8
                         add                eax, 0x02                                     // 0x00545b62    83c002
                         test               edx, edx                                      // 0x00545b65    85d2
                         {disp8} jbe        _jmp_addr_0x00545b78                          // 0x00545b67    760f
_jmp_addr_0x00545b69:    mov                bx, word ptr [ecx]                            // 0x00545b69    668b19
                         mov                word ptr [eax], bx                            // 0x00545b6c    668918
                         add                eax, 0x02                                     // 0x00545b6f    83c002
                         add                ecx, 0x2                                      // 0x00545b72    83c102
                         dec                edx                                           // 0x00545b75    4a
                         {disp8} jne        _jmp_addr_0x00545b69                          // 0x00545b76    75f1
_jmp_addr_0x00545b78:    {disp8} mov        ebx, dword ptr [esi + 0x08]                   // 0x00545b78    8b5e08
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00545b7b    8b4604
                         test               eax, eax                                      // 0x00545b7e    85c0
                         {disp8} je         _jmp_addr_0x00545ba1                          // 0x00545b80    741f
                         {disp8} mov        cl, byte ptr [eax + -0x01]                    // 0x00545b82    8a48ff
                         test               cl, cl                                        // 0x00545b85    84c9
                         {disp8} je         _jmp_addr_0x00545b95                          // 0x00545b87    740c
                         cmp                cl, -0x01                                     // 0x00545b89    80f9ff
                         {disp8} je         _jmp_addr_0x00545b95                          // 0x00545b8c    7407
                         dec                cl                                            // 0x00545b8e    fec9
                         {disp8} mov        byte ptr [eax + -0x01], cl                    // 0x00545b90    8848ff
                         {disp8} jmp        _jmp_addr_0x00545ba1                          // 0x00545b93    eb0c
_jmp_addr_0x00545b95:    add                eax, -0x02                                    // 0x00545b95    83c0fe
                         push               eax                                           // 0x00545b98    50
                         call               ??3@YAXPAX@Z                                  // 0x00545b99    e8fa922600
                         add                esp, 0x04                                     // 0x00545b9e    83c404
_jmp_addr_0x00545ba1:    {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00545ba1    c7460800000000
                         {disp8} mov        ecx, dword ptr [ebp + -0x18]                  // 0x00545ba8    8b4de8
                         {disp8} lea        eax, dword ptr [ecx + 0x02]                   // 0x00545bab    8d4102
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00545bae    894604
                         {disp8} mov        byte ptr [eax + -0x01], 0x00                  // 0x00545bb1    c640ff00
                         {disp8} mov        dword ptr [esi + 0x0c], edi                   // 0x00545bb5    897e0c
                         cmp.s              ebx, edi                                      // 0x00545bb8    3bdf
                         {disp8} ja         _jmp_addr_0x00545bbe                          // 0x00545bba    7702
                         mov.s              edi, ebx                                      // 0x00545bbc    8bfb
_jmp_addr_0x00545bbe:    {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x00545bbe    897e08
                         {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x00545bc1    8b5604
                         mov                word ptr [edx + edi * 0x2], 0x0000            // 0x00545bc4    66c7047a0000
                         {disp8} mov        ecx, dword ptr [ebp + -0x0c]                  // 0x00545bca    8b4df4
                         {disp32} mov       fs:[0x0], ecx                                 // 0x00545bcd    64890d00000000
                         pop                edi                                           // 0x00545bd4    5f
                         pop                esi                                           // 0x00545bd5    5e
                         pop                ebx                                           // 0x00545bd6    5b
                         mov.s              esp, ebp                                      // 0x00545bd7    8be5
                         pop                ebp                                           // 0x00545bd9    5d
                         ret                0x0004                                        // 0x00545bda    c20400
                         nop                                                              // 0x00545bdd    90
                         nop                                                              // 0x00545bde    90
                         nop                                                              // 0x00545bdf    90
_jmp_addr_0x00545be0:    push               ebx                                           // 0x00545be0    53
                         push               esi                                           // 0x00545be1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00545be2    8b74240c
                         test               esi, esi                                      // 0x00545be6    85f6
                         push               edi                                           // 0x00545be8    57
                         {disp32} je        _jmp_addr_0x00545d08                          // 0x00545be9    0f8419010000
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x00545bef    8b5c2414
                         mov                al, byte ptr [ebx]                            // 0x00545bf3    8a03
                         mov                byte ptr [esi], al                            // 0x00545bf5    8806
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x00545bf7    c7460400000000
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00545bfe    c7460800000000
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000            // 0x00545c05    c7460c00000000
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x00545c0c    8b4b08
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]        // 0x00545c0f    a1d4ec8d00
                         mov.s              edi, ecx                                      // 0x00545c14    8bf9
                         cmp.s              eax, edi                                      // 0x00545c16    3bc7
                         {disp8} jae        _jmp_addr_0x00545c1c                          // 0x00545c18    7302
                         mov.s              edi, eax                                      // 0x00545c1a    8bf8
_jmp_addr_0x00545c1c:    cmp.s              esi, ebx                                      // 0x00545c1c    3bf3
                         {disp8} jne        _jmp_addr_0x00545c80                          // 0x00545c1e    7560
                         test               edi, edi                                      // 0x00545c20    85ff
                         mov.s              ebx, eax                                      // 0x00545c22    8bd8
                         {disp8} jbe        _jmp_addr_0x00545c2b                          // 0x00545c24    7605
                         call               _jmp_addr_0x007af180                          // 0x00545c26    e855952600
_jmp_addr_0x00545c2b:    mov.s              ecx, esi                                      // 0x00545c2b    8bce
                         call               _jmp_addr_0x00546120                          // 0x00545c2d    e8ee040000
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00545c32    8b4608
                         sub.s              eax, edi                                      // 0x00545c35    2bc7
                         cmp.s              eax, ebx                                      // 0x00545c37    3bc3
                         {disp8} jae        _jmp_addr_0x00545c3d                          // 0x00545c39    7302
                         mov.s              ebx, eax                                      // 0x00545c3b    8bd8
_jmp_addr_0x00545c3d:    test               ebx, ebx                                      // 0x00545c3d    85db
                         {disp8} jbe        _jmp_addr_0x00545c75                          // 0x00545c3f    7634
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545c41    8b4e04
                         sub.s              eax, ebx                                      // 0x00545c44    2bc3
                         push               eax                                           // 0x00545c46    50
                         lea                edx, dword ptr [ebx + edi * 0x1]              // 0x00545c47    8d143b
                         lea                eax, dword ptr [ecx + edx * 0x2]              // 0x00545c4a    8d0451
                         push               eax                                           // 0x00545c4d    50
                         lea                ecx, dword ptr [ecx + edi * 0x2]              // 0x00545c4e    8d0c79
                         push               ecx                                           // 0x00545c51    51
                         call               _jmp_addr_0x00545d10                          // 0x00545c52    e8b9000000
                         {disp8} mov        edi, dword ptr [esi + 0x08]                   // 0x00545c57    8b7e08
                         add                esp, 0x0c                                     // 0x00545c5a    83c40c
                         push               0x0                                           // 0x00545c5d    6a00
                         sub.s              edi, ebx                                      // 0x00545c5f    2bfb
                         push               edi                                           // 0x00545c61    57
                         mov.s              ecx, esi                                      // 0x00545c62    8bce
                         call               _jmp_addr_0x00545990                          // 0x00545c64    e827fdffff
                         test               al, al                                        // 0x00545c69    84c0
                         {disp8} je         _jmp_addr_0x00545c75                          // 0x00545c6b    7408
                         push               edi                                           // 0x00545c6d    57
                         mov.s              ecx, esi                                      // 0x00545c6e    8bce
                         call               _jmp_addr_0x00545d60                          // 0x00545c70    e8eb000000
_jmp_addr_0x00545c75:    mov.s              ecx, esi                                      // 0x00545c75    8bce
                         call               _jmp_addr_0x00546120                          // 0x00545c77    e8a4040000
                         pop                edi                                           // 0x00545c7c    5f
                         pop                esi                                           // 0x00545c7d    5e
                         pop                ebx                                           // 0x00545c7e    5b
                         ret                                                              // 0x00545c7f    c3
_jmp_addr_0x00545c80:    test               edi, edi                                      // 0x00545c80    85ff
                         {disp8} jbe        _jmp_addr_0x00545cca                          // 0x00545c82    7646
                         cmp.s              edi, ecx                                      // 0x00545c84    3bf9
                         {disp8} jne        _jmp_addr_0x00545cca                          // 0x00545c86    7542
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00545c88    8b4304
                         test               eax, eax                                      // 0x00545c8b    85c0
                         {disp8} jne        _jmp_addr_0x00545c94                          // 0x00545c8d    7505
                         mov                eax, 0x008decd8                               // 0x00545c8f    b8d8ec8d00
_jmp_addr_0x00545c94:    cmp                byte ptr [eax + -0x01], -0x02                 // 0x00545c94    8078fffe
                         {disp8} jae        _jmp_addr_0x00545cca                          // 0x00545c98    7330
                         push               0x1                                           // 0x00545c9a    6a01
                         mov.s              ecx, esi                                      // 0x00545c9c    8bce
                         call               _jmp_addr_0x00545920                          // 0x00545c9e    e87dfcffff
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00545ca3    8b4304
                         test               eax, eax                                      // 0x00545ca6    85c0
                         {disp8} jne        _jmp_addr_0x00545caf                          // 0x00545ca8    7505
                         mov                eax, 0x008decd8                               // 0x00545caa    b8d8ec8d00
_jmp_addr_0x00545caf:    {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00545caf    894604
                         {disp8} mov        edx, dword ptr [ebx + 0x08]                   // 0x00545cb2    8b5308
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00545cb5    895608
                         {disp8} mov        ecx, dword ptr [ebx + 0x0c]                   // 0x00545cb8    8b4b0c
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x00545cbb    894e0c
                         {disp8} mov        cl, byte ptr [eax + -0x01]                    // 0x00545cbe    8a48ff
                         pop                edi                                           // 0x00545cc1    5f
                         inc                cl                                            // 0x00545cc2    fec1
                         pop                esi                                           // 0x00545cc4    5e
                         {disp8} mov        byte ptr [eax + -0x01], cl                    // 0x00545cc5    8848ff
                         pop                ebx                                           // 0x00545cc8    5b
                         ret                                                              // 0x00545cc9    c3
_jmp_addr_0x00545cca:    push               0x1                                           // 0x00545cca    6a01
                         push               edi                                           // 0x00545ccc    57
                         mov.s              ecx, esi                                      // 0x00545ccd    8bce
                         call               _jmp_addr_0x00545990                          // 0x00545ccf    e8bcfcffff
                         test               al, al                                        // 0x00545cd4    84c0
                         {disp8} je         _jmp_addr_0x00545d08                          // 0x00545cd6    7430
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                   // 0x00545cd8    8b4b04
                         test               ecx, ecx                                      // 0x00545cdb    85c9
                         {disp8} jne        _jmp_addr_0x00545ce4                          // 0x00545cdd    7505
                         mov                ecx, 0x008decd8                               // 0x00545cdf    b9d8ec8d00
_jmp_addr_0x00545ce4:    test               edi, edi                                      // 0x00545ce4    85ff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00545ce6    8b4604
                         {disp8} jbe        _jmp_addr_0x00545cfc                          // 0x00545ce9    7611
                         mov.s              edx, edi                                      // 0x00545ceb    8bd7
_jmp_addr_0x00545ced:    mov                bx, word ptr [ecx]                            // 0x00545ced    668b19
                         mov                word ptr [eax], bx                            // 0x00545cf0    668918
                         add                eax, 0x02                                     // 0x00545cf3    83c002
                         add                ecx, 0x2                                      // 0x00545cf6    83c102
                         dec                edx                                           // 0x00545cf9    4a
                         {disp8} jne        _jmp_addr_0x00545ced                          // 0x00545cfa    75f1
_jmp_addr_0x00545cfc:    {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x00545cfc    8b5604
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x00545cff    897e08
                         mov                word ptr [edx + edi * 0x2], 0x0000            // 0x00545d02    66c7047a0000
_jmp_addr_0x00545d08:    pop                edi                                           // 0x00545d08    5f
                         pop                esi                                           // 0x00545d09    5e
                         pop                ebx                                           // 0x00545d0a    5b
                         ret                                                              // 0x00545d0b    c3
                         nop                                                              // 0x00545d0c    90
                         nop                                                              // 0x00545d0d    90
                         nop                                                              // 0x00545d0e    90
                         nop                                                              // 0x00545d0f    90
_jmp_addr_0x00545d10:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00545d10    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00545d14    8b4c2408
                         cmp.s              ecx, eax                                      // 0x00545d18    3bc8
                         push               esi                                           // 0x00545d1a    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00545d1b    8b742410
                         push               edi                                           // 0x00545d1f    57
                         mov.s              edx, eax                                      // 0x00545d20    8bd0
                         {disp8} jae        _jmp_addr_0x00545d47                          // 0x00545d22    7323
                         lea                edi, dword ptr [ecx + esi * 0x2]              // 0x00545d24    8d3c71
                         cmp.s              eax, edi                                      // 0x00545d27    3bc7
                         {disp8} jae        _jmp_addr_0x00545d47                          // 0x00545d29    731c
                         test               esi, esi                                      // 0x00545d2b    85f6
                         lea                edx, dword ptr [eax + esi * 0x2]              // 0x00545d2d    8d1470
                         mov.s              ecx, edi                                      // 0x00545d30    8bcf
                         {disp8} jbe        _jmp_addr_0x00545d5a                          // 0x00545d32    7626
_jmp_addr_0x00545d34:    {disp8} mov        di, word ptr [ecx + -0x02]                    // 0x00545d34    668b79fe
                         sub                ecx, 0x02                                     // 0x00545d38    83e902
                         sub                edx, 0x02                                     // 0x00545d3b    83ea02
                         dec                esi                                           // 0x00545d3e    4e
                         mov                word ptr [edx], di                            // 0x00545d3f    66893a
                         {disp8} jne        _jmp_addr_0x00545d34                          // 0x00545d42    75f0
                         pop                edi                                           // 0x00545d44    5f
                         pop                esi                                           // 0x00545d45    5e
                         ret                                                              // 0x00545d46    c3
_jmp_addr_0x00545d47:    test               esi, esi                                      // 0x00545d47    85f6
                         {disp8} jbe        _jmp_addr_0x00545d5a                          // 0x00545d49    760f
_jmp_addr_0x00545d4b:    mov                di, word ptr [ecx]                            // 0x00545d4b    668b39
                         mov                word ptr [edx], di                            // 0x00545d4e    66893a
                         add                edx, 0x02                                     // 0x00545d51    83c202
                         add                ecx, 0x2                                      // 0x00545d54    83c102
                         dec                esi                                           // 0x00545d57    4e
                         {disp8} jne        _jmp_addr_0x00545d4b                          // 0x00545d58    75f1
_jmp_addr_0x00545d5a:    pop                edi                                           // 0x00545d5a    5f
                         pop                esi                                           // 0x00545d5b    5e
                         ret                                                              // 0x00545d5c    c3
                         nop                                                              // 0x00545d5d    90
                         nop                                                              // 0x00545d5e    90
                         nop                                                              // 0x00545d5f    90
_jmp_addr_0x00545d60:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00545d60    8b442404
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00545d64    894108
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x00545d67    8b4904
                         mov                word ptr [ecx + eax * 0x2], 0x0000            // 0x00545d6a    66c704410000
                         ret                0x0004                                        // 0x00545d70    c20400
                         nop                                                              // 0x00545d73    90
                         nop                                                              // 0x00545d74    90
                         nop                                                              // 0x00545d75    90
                         nop                                                              // 0x00545d76    90
                         nop                                                              // 0x00545d77    90
                         nop                                                              // 0x00545d78    90
                         nop                                                              // 0x00545d79    90
                         nop                                                              // 0x00545d7a    90
                         nop                                                              // 0x00545d7b    90
                         nop                                                              // 0x00545d7c    90
                         nop                                                              // 0x00545d7d    90
                         nop                                                              // 0x00545d7e    90
                         nop                                                              // 0x00545d7f    90
_jmp_addr_0x00545d80:    push               esi                                           // 0x00545d80    56
                         mov.s              esi, ecx                                      // 0x00545d81    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545d83    8b4e04
                         test               ecx, ecx                                      // 0x00545d86    85c9
                         {disp8} je         _jmp_addr_0x00545da8                          // 0x00545d88    741e
                         {disp8} mov        al, byte ptr [ecx + -0x01]                    // 0x00545d8a    8a41ff
                         test               al, al                                        // 0x00545d8d    84c0
                         {disp8} je         _jmp_addr_0x00545d9c                          // 0x00545d8f    740b
                         cmp                al, -0x01                                     // 0x00545d91    3cff
                         {disp8} je         _jmp_addr_0x00545d9c                          // 0x00545d93    7407
                         dec                al                                            // 0x00545d95    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                    // 0x00545d97    8841ff
                         {disp8} jmp        _jmp_addr_0x00545da8                          // 0x00545d9a    eb0c
_jmp_addr_0x00545d9c:    add                ecx, -0x2                                     // 0x00545d9c    83c1fe
                         push               ecx                                           // 0x00545d9f    51
                         call               ??3@YAXPAX@Z                                  // 0x00545da0    e8f3902600
                         add                esp, 0x04                                     // 0x00545da5    83c404
_jmp_addr_0x00545da8:    test               byte ptr [esp + 0x08], 0x01                   // 0x00545da8    f644240801
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x00545dad    c7460400000000
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00545db4    c7460800000000
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000            // 0x00545dbb    c7460c00000000
                         {disp8} je         _jmp_addr_0x00545dcd                          // 0x00545dc2    7409
                         push               esi                                           // 0x00545dc4    56
                         call               ??3@YAXPAX@Z                                  // 0x00545dc5    e8ce902600
                         add                esp, 0x04                                     // 0x00545dca    83c404
_jmp_addr_0x00545dcd:    mov.s              eax, esi                                      // 0x00545dcd    8bc6
                         pop                esi                                           // 0x00545dcf    5e
                         ret                0x0004                                        // 0x00545dd0    c20400
                         nop                                                              // 0x00545dd3    90
                         nop                                                              // 0x00545dd4    90
                         nop                                                              // 0x00545dd5    90
                         nop                                                              // 0x00545dd6    90
                         nop                                                              // 0x00545dd7    90
                         nop                                                              // 0x00545dd8    90
                         nop                                                              // 0x00545dd9    90
                         nop                                                              // 0x00545dda    90
                         nop                                                              // 0x00545ddb    90
                         nop                                                              // 0x00545ddc    90
                         nop                                                              // 0x00545ddd    90
                         nop                                                              // 0x00545dde    90
                         nop                                                              // 0x00545ddf    90
_jmp_addr_0x00545de0:    push               ebx                                           // 0x00545de0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x00545de1    8b5c2408
                         mov                al, byte ptr [ebx]                            // 0x00545de5    8a03
                         push               ebp                                           // 0x00545de7    55
                         xor.s              ebp, ebp                                      // 0x00545de8    33ed
                         push               esi                                           // 0x00545dea    56
                         mov.s              esi, ecx                                      // 0x00545deb    8bf1
                         mov                byte ptr [esi], al                            // 0x00545ded    8806
                         {disp8} mov        dword ptr [esi + 0x04], ebp                   // 0x00545def    896e04
                         {disp8} mov        dword ptr [esi + 0x08], ebp                   // 0x00545df2    896e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebp                   // 0x00545df5    896e0c
                         {disp8} mov        ecx, dword ptr [ebx + 0x08]                   // 0x00545df8    8b4b08
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x35cd4]        // 0x00545dfb    a1d4ec8d00
                         push               edi                                           // 0x00545e00    57
                         mov.s              edi, ecx                                      // 0x00545e01    8bf9
                         cmp.s              eax, edi                                      // 0x00545e03    3bc7
                         {disp8} jae        _jmp_addr_0x00545e09                          // 0x00545e05    7302
                         mov.s              edi, eax                                      // 0x00545e07    8bf8
_jmp_addr_0x00545e09:    cmp.s              esi, ebx                                      // 0x00545e09    3bf3
                         {disp8} jne        _jmp_addr_0x00545e71                          // 0x00545e0b    7564
                         cmp.s              edi, ebp                                      // 0x00545e0d    3bfd
                         mov.s              ebx, eax                                      // 0x00545e0f    8bd8
                         {disp8} jbe        _jmp_addr_0x00545e18                          // 0x00545e11    7605
                         call               _jmp_addr_0x007af180                          // 0x00545e13    e868932600
_jmp_addr_0x00545e18:    mov.s              ecx, esi                                      // 0x00545e18    8bce
                         call               _jmp_addr_0x00546120                          // 0x00545e1a    e801030000
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00545e1f    8b4608
                         sub.s              eax, edi                                      // 0x00545e22    2bc7
                         cmp.s              eax, ebx                                      // 0x00545e24    3bc3
                         {disp8} jae        _jmp_addr_0x00545e2a                          // 0x00545e26    7302
                         mov.s              ebx, eax                                      // 0x00545e28    8bd8
_jmp_addr_0x00545e2a:    cmp.s              ebx, ebp                                      // 0x00545e2a    3bdd
                         {disp8} jbe        _jmp_addr_0x00545e61                          // 0x00545e2c    7633
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545e2e    8b4e04
                         sub.s              eax, ebx                                      // 0x00545e31    2bc3
                         push               eax                                           // 0x00545e33    50
                         lea                edx, dword ptr [ebx + edi * 0x1]              // 0x00545e34    8d143b
                         lea                eax, dword ptr [ecx + edx * 0x2]              // 0x00545e37    8d0451
                         push               eax                                           // 0x00545e3a    50
                         lea                ecx, dword ptr [ecx + edi * 0x2]              // 0x00545e3b    8d0c79
                         push               ecx                                           // 0x00545e3e    51
                         call               _jmp_addr_0x00545d10                          // 0x00545e3f    e8ccfeffff
                         {disp8} mov        edi, dword ptr [esi + 0x08]                   // 0x00545e44    8b7e08
                         add                esp, 0x0c                                     // 0x00545e47    83c40c
                         push               ebp                                           // 0x00545e4a    55
                         sub.s              edi, ebx                                      // 0x00545e4b    2bfb
                         push               edi                                           // 0x00545e4d    57
                         mov.s              ecx, esi                                      // 0x00545e4e    8bce
                         call               _jmp_addr_0x00545990                          // 0x00545e50    e83bfbffff
                         test               al, al                                        // 0x00545e55    84c0
                         {disp8} je         _jmp_addr_0x00545e61                          // 0x00545e57    7408
                         push               edi                                           // 0x00545e59    57
                         mov.s              ecx, esi                                      // 0x00545e5a    8bce
                         call               _jmp_addr_0x00545d60                          // 0x00545e5c    e8fffeffff
_jmp_addr_0x00545e61:    mov.s              ecx, esi                                      // 0x00545e61    8bce
                         call               _jmp_addr_0x00546120                          // 0x00545e63    e8b8020000
                         pop                edi                                           // 0x00545e68    5f
                         mov.s              eax, esi                                      // 0x00545e69    8bc6
                         pop                esi                                           // 0x00545e6b    5e
                         pop                ebp                                           // 0x00545e6c    5d
                         pop                ebx                                           // 0x00545e6d    5b
                         ret                0x0004                                        // 0x00545e6e    c20400
_jmp_addr_0x00545e71:    cmp.s              edi, ebp                                      // 0x00545e71    3bfd
                         {disp8} jbe        _jmp_addr_0x00545ec0                          // 0x00545e73    764b
                         cmp.s              edi, ecx                                      // 0x00545e75    3bf9
                         {disp8} jne        _jmp_addr_0x00545ec0                          // 0x00545e77    7547
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00545e79    8b4304
                         cmp.s              eax, ebp                                      // 0x00545e7c    3bc5
                         {disp8} jne        _jmp_addr_0x00545e85                          // 0x00545e7e    7505
                         mov                eax, 0x008decd8                               // 0x00545e80    b8d8ec8d00
_jmp_addr_0x00545e85:    cmp                byte ptr [eax + -0x01], -0x02                 // 0x00545e85    8078fffe
                         {disp8} jae        _jmp_addr_0x00545ec0                          // 0x00545e89    7335
                         {disp8} mov        dword ptr [esi + 0x04], ebp                   // 0x00545e8b    896e04
                         {disp8} mov        dword ptr [esi + 0x08], ebp                   // 0x00545e8e    896e08
                         {disp8} mov        dword ptr [esi + 0x0c], ebp                   // 0x00545e91    896e0c
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00545e94    8b4304
                         cmp.s              eax, ebp                                      // 0x00545e97    3bc5
                         {disp8} jne        _jmp_addr_0x00545ea0                          // 0x00545e99    7505
                         mov                eax, 0x008decd8                               // 0x00545e9b    b8d8ec8d00
_jmp_addr_0x00545ea0:    {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00545ea0    894604
                         {disp8} mov        edx, dword ptr [ebx + 0x08]                   // 0x00545ea3    8b5308
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00545ea6    895608
                         {disp8} mov        ecx, dword ptr [ebx + 0x0c]                   // 0x00545ea9    8b4b0c
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x00545eac    894e0c
                         {disp8} mov        cl, byte ptr [eax + -0x01]                    // 0x00545eaf    8a48ff
                         inc                cl                                            // 0x00545eb2    fec1
                         pop                edi                                           // 0x00545eb4    5f
                         {disp8} mov        byte ptr [eax + -0x01], cl                    // 0x00545eb5    8848ff
                         mov.s              eax, esi                                      // 0x00545eb8    8bc6
                         pop                esi                                           // 0x00545eba    5e
                         pop                ebp                                           // 0x00545ebb    5d
                         pop                ebx                                           // 0x00545ebc    5b
                         ret                0x0004                                        // 0x00545ebd    c20400
_jmp_addr_0x00545ec0:    push               0x1                                           // 0x00545ec0    6a01
                         push               edi                                           // 0x00545ec2    57
                         mov.s              ecx, esi                                      // 0x00545ec3    8bce
                         call               _jmp_addr_0x00545990                          // 0x00545ec5    e8c6faffff
                         test               al, al                                        // 0x00545eca    84c0
                         {disp8} je         _jmp_addr_0x00545ef0                          // 0x00545ecc    7422
                         {disp8} mov        ebx, dword ptr [ebx + 0x04]                   // 0x00545ece    8b5b04
                         cmp.s              ebx, ebp                                      // 0x00545ed1    3bdd
                         {disp8} jne        _jmp_addr_0x00545eda                          // 0x00545ed3    7505
                         mov                ebx, 0x008decd8                               // 0x00545ed5    bbd8ec8d00
_jmp_addr_0x00545eda:    {disp8} mov        edx, dword ptr [esi + 0x04]                   // 0x00545eda    8b5604
                         push               edi                                           // 0x00545edd    57
                         push               ebx                                           // 0x00545ede    53
                         push               edx                                           // 0x00545edf    52
                         call               _jmp_addr_0x00544b60                          // 0x00545ee0    e87becffff
                         add                esp, 0x0c                                     // 0x00545ee5    83c40c
                         push               edi                                           // 0x00545ee8    57
                         mov.s              ecx, esi                                      // 0x00545ee9    8bce
                         call               _jmp_addr_0x00545d60                          // 0x00545eeb    e870feffff
_jmp_addr_0x00545ef0:    pop                edi                                           // 0x00545ef0    5f
                         mov.s              eax, esi                                      // 0x00545ef1    8bc6
                         pop                esi                                           // 0x00545ef3    5e
                         pop                ebp                                           // 0x00545ef4    5d
                         pop                ebx                                           // 0x00545ef5    5b
                         ret                0x0004                                        // 0x00545ef6    c20400
                         nop                                                              // 0x00545ef9    90
                         nop                                                              // 0x00545efa    90
                         nop                                                              // 0x00545efb    90
                         nop                                                              // 0x00545efc    90
                         nop                                                              // 0x00545efd    90
                         nop                                                              // 0x00545efe    90
                         nop                                                              // 0x00545eff    90
_jmp_addr_0x00545f00:    push               ebx                                           // 0x00545f00    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x00545f01    8b5c240c
                         push               ebp                                           // 0x00545f05    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x00545f06    8b6c240c
                         cmp                dword ptr [ebp + 0x08], ebx                   // 0x00545f0a    395d08
                         push               esi                                           // 0x00545f0d    56
                         push               edi                                           // 0x00545f0e    57
                         mov.s              esi, ecx                                      // 0x00545f0f    8bf1
                         {disp8} jae        _jmp_addr_0x00545f18                          // 0x00545f11    7305
                         call               _jmp_addr_0x007af180                          // 0x00545f13    e868922600
_jmp_addr_0x00545f18:    {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x00545f18    8b4508
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00545f1b    8b4c241c
                         mov.s              edi, eax                                      // 0x00545f1f    8bf8
                         sub.s              edi, ebx                                      // 0x00545f21    2bfb
                         cmp.s              ecx, edi                                      // 0x00545f23    3bcf
                         {disp8} jae        _jmp_addr_0x00545f29                          // 0x00545f25    7302
                         mov.s              edi, ecx                                      // 0x00545f27    8bf9
_jmp_addr_0x00545f29:    cmp.s              esi, ebp                                      // 0x00545f29    3bf5
                         {disp32} jne       _jmp_addr_0x00545fe8                          // 0x00545f2b    0f85b7000000
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00545f31    8b4608
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x35cd4]        // 0x00545f34    8b2dd4ec8d00
                         add.s              edi, ebx                                      // 0x00545f3a    03fb
                         cmp.s              eax, edi                                      // 0x00545f3c    3bc7
                         {disp8} jae        _jmp_addr_0x00545f45                          // 0x00545f3e    7305
                         call               _jmp_addr_0x007af180                          // 0x00545f40    e83b922600
_jmp_addr_0x00545f45:    mov.s              ecx, esi                                      // 0x00545f45    8bce
                         call               _jmp_addr_0x00546120                          // 0x00545f47    e8d4010000
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00545f4c    8b4608
                         sub.s              eax, edi                                      // 0x00545f4f    2bc7
                         cmp.s              eax, ebp                                      // 0x00545f51    3bc5
                         {disp8} jae        _jmp_addr_0x00545f57                          // 0x00545f53    7302
                         mov.s              ebp, eax                                      // 0x00545f55    8be8
_jmp_addr_0x00545f57:    test               ebp, ebp                                      // 0x00545f57    85ed
                         {disp8} jbe        _jmp_addr_0x00545f93                          // 0x00545f59    7638
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545f5b    8b4e04
                         sub.s              eax, ebp                                      // 0x00545f5e    2bc5
                         push               eax                                           // 0x00545f60    50
                         lea                eax, dword ptr [edi + ebp * 0x1]              // 0x00545f61    8d042f
                         lea                edx, dword ptr [ecx + eax * 0x2]              // 0x00545f64    8d1441
                         push               edx                                           // 0x00545f67    52
                         lea                eax, dword ptr [ecx + edi * 0x2]              // 0x00545f68    8d0479
                         push               eax                                           // 0x00545f6b    50
                         call               _jmp_addr_0x00545d10                          // 0x00545f6c    e89ffdffff
                         {disp8} mov        edi, dword ptr [esi + 0x08]                   // 0x00545f71    8b7e08
                         add                esp, 0x0c                                     // 0x00545f74    83c40c
                         push               0x0                                           // 0x00545f77    6a00
                         sub.s              edi, ebp                                      // 0x00545f79    2bfd
                         push               edi                                           // 0x00545f7b    57
                         mov.s              ecx, esi                                      // 0x00545f7c    8bce
                         call               _jmp_addr_0x00545990                          // 0x00545f7e    e80dfaffff
                         test               al, al                                        // 0x00545f83    84c0
                         {disp8} je         _jmp_addr_0x00545f93                          // 0x00545f85    740c
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545f87    8b4e04
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x00545f8a    897e08
                         mov                word ptr [ecx + edi * 0x2], 0x0000            // 0x00545f8d    66c704790000
_jmp_addr_0x00545f93:    mov.s              ecx, esi                                      // 0x00545f93    8bce
                         mov.s              ebp, ebx                                      // 0x00545f95    8beb
                         call               _jmp_addr_0x00546120                          // 0x00545f97    e884010000
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00545f9c    8b4608
                         cmp.s              eax, ebx                                      // 0x00545f9f    3bc3
                         {disp8} jae        _jmp_addr_0x00545fa5                          // 0x00545fa1    7302
                         mov.s              ebp, eax                                      // 0x00545fa3    8be8
_jmp_addr_0x00545fa5:    test               ebp, ebp                                      // 0x00545fa5    85ed
                         {disp32} jbe       _jmp_addr_0x00546102                          // 0x00545fa7    0f8655010000
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00545fad    8b4e04
                         sub.s              eax, ebp                                      // 0x00545fb0    2bc5
                         push               eax                                           // 0x00545fb2    50
                         lea                edx, dword ptr [ecx + ebp * 0x2]              // 0x00545fb3    8d1469
                         push               edx                                           // 0x00545fb6    52
                         push               ecx                                           // 0x00545fb7    51
                         call               _jmp_addr_0x00545d10                          // 0x00545fb8    e853fdffff
                         {disp8} mov        edi, dword ptr [esi + 0x08]                   // 0x00545fbd    8b7e08
                         add                esp, 0x0c                                     // 0x00545fc0    83c40c
                         push               0x0                                           // 0x00545fc3    6a00
                         sub.s              edi, ebp                                      // 0x00545fc5    2bfd
                         push               edi                                           // 0x00545fc7    57
                         mov.s              ecx, esi                                      // 0x00545fc8    8bce
                         call               _jmp_addr_0x00545990                          // 0x00545fca    e8c1f9ffff
                         test               al, al                                        // 0x00545fcf    84c0
                         {disp32} je        _jmp_addr_0x00546102                          // 0x00545fd1    0f842b010000
                         push               edi                                           // 0x00545fd7    57
                         mov.s              ecx, esi                                      // 0x00545fd8    8bce
                         call               _jmp_addr_0x00545d60                          // 0x00545fda    e881fdffff
                         pop                edi                                           // 0x00545fdf    5f
                         mov.s              eax, esi                                      // 0x00545fe0    8bc6
                         pop                esi                                           // 0x00545fe2    5e
                         pop                ebp                                           // 0x00545fe3    5d
                         pop                ebx                                           // 0x00545fe4    5b
                         ret                0x000c                                        // 0x00545fe5    c20c00
_jmp_addr_0x00545fe8:    xor.s              edx, edx                                      // 0x00545fe8    33d2
                         cmp.s              edi, edx                                      // 0x00545fea    3bfa
                         {disp8} jbe        _jmp_addr_0x00546060                          // 0x00545fec    7672
                         cmp.s              edi, eax                                      // 0x00545fee    3bf8
                         {disp8} jne        _jmp_addr_0x00546060                          // 0x00545ff0    756e
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x00545ff2    8b4504
                         cmp.s              eax, edx                                      // 0x00545ff5    3bc2
                         {disp8} jne        _jmp_addr_0x00545ffe                          // 0x00545ff7    7505
                         mov                eax, 0x008decd8                               // 0x00545ff9    b8d8ec8d00
_jmp_addr_0x00545ffe:    cmp                byte ptr [eax + -0x01], -0x02                 // 0x00545ffe    8078fffe
                         {disp8} jae        _jmp_addr_0x00546060                          // 0x00546002    735c
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00546004    8b4e04
                         cmp.s              ecx, edx                                      // 0x00546007    3bca
                         {disp8} je         _jmp_addr_0x0054602b                          // 0x00546009    7420
                         {disp8} mov        al, byte ptr [ecx + -0x01]                    // 0x0054600b    8a41ff
                         test               al, al                                        // 0x0054600e    84c0
                         {disp8} je         _jmp_addr_0x0054601d                          // 0x00546010    740b
                         cmp                al, -0x01                                     // 0x00546012    3cff
                         {disp8} je         _jmp_addr_0x0054601d                          // 0x00546014    7407
                         dec                al                                            // 0x00546016    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                    // 0x00546018    8841ff
                         {disp8} jmp        _jmp_addr_0x0054602b                          // 0x0054601b    eb0e
_jmp_addr_0x0054601d:    add                ecx, -0x2                                     // 0x0054601d    83c1fe
                         push               ecx                                           // 0x00546020    51
                         call               ??3@YAXPAX@Z                                  // 0x00546021    e8728e2600
                         add                esp, 0x04                                     // 0x00546026    83c404
                         xor.s              edx, edx                                      // 0x00546029    33d2
_jmp_addr_0x0054602b:    {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x0054602b    895604
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0054602e    895608
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x00546031    89560c
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x00546034    8b4504
                         cmp.s              eax, edx                                      // 0x00546037    3bc2
                         {disp8} jne        _jmp_addr_0x00546040                          // 0x00546039    7505
                         mov                eax, 0x008decd8                               // 0x0054603b    b8d8ec8d00
_jmp_addr_0x00546040:    {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x00546040    894604
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x00546043    8b4d08
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x00546046    894e08
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                   // 0x00546049    8b550c
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x0054604c    89560c
                         {disp8} mov        cl, byte ptr [eax + -0x01]                    // 0x0054604f    8a48ff
                         inc                cl                                            // 0x00546052    fec1
                         pop                edi                                           // 0x00546054    5f
                         {disp8} mov        byte ptr [eax + -0x01], cl                    // 0x00546055    8848ff
                         mov.s              eax, esi                                      // 0x00546058    8bc6
                         pop                esi                                           // 0x0054605a    5e
                         pop                ebp                                           // 0x0054605b    5d
                         pop                ebx                                           // 0x0054605c    5b
                         ret                0x000c                                        // 0x0054605d    c20c00
_jmp_addr_0x00546060:    mov.s              ecx, esi                                      // 0x00546060    8bce
                         call               _jmp_addr_0x00546110                          // 0x00546062    e8a9000000
                         cmp.s              eax, edi                                      // 0x00546067    3bc7
                         {disp8} jae        _jmp_addr_0x00546070                          // 0x00546069    7305
                         call               ?_Xlen@std@@YAXXZ                             // 0x0054606b    e8e48e2600
_jmp_addr_0x00546070:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00546070    8b4e04
                         test               ecx, ecx                                      // 0x00546073    85c9
                         {disp8} je         _jmp_addr_0x0054609c                          // 0x00546075    7425
                         {disp8} mov        al, byte ptr [ecx + -0x01]                    // 0x00546077    8a41ff
                         test               al, al                                        // 0x0054607a    84c0
                         {disp8} je         _jmp_addr_0x0054609c                          // 0x0054607c    741e
                         cmp                al, -0x01                                     // 0x0054607e    3cff
                         {disp8} je         _jmp_addr_0x0054609c                          // 0x00546080    741a
                         test               edi, edi                                      // 0x00546082    85ff
                         {disp8} jne        _jmp_addr_0x005460c7                          // 0x00546084    7541
                         dec                al                                            // 0x00546086    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                    // 0x00546088    8841ff
                         push               edi                                           // 0x0054608b    57
                         mov.s              ecx, esi                                      // 0x0054608c    8bce
                         call               _jmp_addr_0x00545920                          // 0x0054608e    e88df8ffff
                         pop                edi                                           // 0x00546093    5f
                         mov.s              eax, esi                                      // 0x00546094    8bc6
                         pop                esi                                           // 0x00546096    5e
                         pop                ebp                                           // 0x00546097    5d
                         pop                ebx                                           // 0x00546098    5b
                         ret                0x000c                                        // 0x00546099    c20c00
_jmp_addr_0x0054609c:    test               edi, edi                                      // 0x0054609c    85ff
                         {disp8} jne        _jmp_addr_0x005460b2                          // 0x0054609e    7512
                         push               0x1                                           // 0x005460a0    6a01
                         mov.s              ecx, esi                                      // 0x005460a2    8bce
                         call               _jmp_addr_0x00545920                          // 0x005460a4    e877f8ffff
                         pop                edi                                           // 0x005460a9    5f
                         mov.s              eax, esi                                      // 0x005460aa    8bc6
                         pop                esi                                           // 0x005460ac    5e
                         pop                ebp                                           // 0x005460ad    5d
                         pop                ebx                                           // 0x005460ae    5b
                         ret                0x000c                                        // 0x005460af    c20c00
_jmp_addr_0x005460b2:    {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x005460b2    8b460c
                         cmp                eax, 0x1f                                     // 0x005460b5    83f81f
                         {disp8} ja         _jmp_addr_0x005460be                          // 0x005460b8    7704
                         cmp.s              eax, edi                                      // 0x005460ba    3bc7
                         {disp8} jae        _jmp_addr_0x005460cf                          // 0x005460bc    7311
_jmp_addr_0x005460be:    push               0x1                                           // 0x005460be    6a01
                         mov.s              ecx, esi                                      // 0x005460c0    8bce
                         call               _jmp_addr_0x00545920                          // 0x005460c2    e859f8ffff
_jmp_addr_0x005460c7:    push               edi                                           // 0x005460c7    57
                         mov.s              ecx, esi                                      // 0x005460c8    8bce
                         call               _jmp_addr_0x00545ac0                          // 0x005460ca    e8f1f9ffff
_jmp_addr_0x005460cf:    {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x005460cf    8b4504
                         test               eax, eax                                      // 0x005460d2    85c0
                         {disp8} jne        _jmp_addr_0x005460db                          // 0x005460d4    7505
                         mov                eax, 0x008decd8                               // 0x005460d6    b8d8ec8d00
_jmp_addr_0x005460db:    test               edi, edi                                      // 0x005460db    85ff
                         lea                ecx, dword ptr [eax + ebx * 0x2]              // 0x005460dd    8d0c58
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005460e0    8b4604
                         {disp8} jbe        _jmp_addr_0x005460f6                          // 0x005460e3    7611
                         mov.s              edx, edi                                      // 0x005460e5    8bd7
_jmp_addr_0x005460e7:    mov                bx, word ptr [ecx]                            // 0x005460e7    668b19
                         mov                word ptr [eax], bx                            // 0x005460ea    668918
                         add                eax, 0x02                                     // 0x005460ed    83c002
                         add                ecx, 0x2                                      // 0x005460f0    83c102
                         dec                edx                                           // 0x005460f3    4a
                         {disp8} jne        _jmp_addr_0x005460e7                          // 0x005460f4    75f1
_jmp_addr_0x005460f6:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005460f6    8b4604
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x005460f9    897e08
                         mov                word ptr [eax + edi * 0x2], 0x0000            // 0x005460fc    66c704780000
_jmp_addr_0x00546102:    pop                edi                                           // 0x00546102    5f
                         mov.s              eax, esi                                      // 0x00546103    8bc6
                         pop                esi                                           // 0x00546105    5e
                         pop                ebp                                           // 0x00546106    5d
                         pop                ebx                                           // 0x00546107    5b
                         ret                0x000c                                        // 0x00546108    c20c00
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0054610b    e869b7ebff
_jmp_addr_0x00546110:    mov                eax, 0x7ffffffd                               // 0x00546110    b8fdffff7f
                         ret                                                              // 0x00546115    c3
                         nop                                                              // 0x00546116    90
                         nop                                                              // 0x00546117    90
                         nop                                                              // 0x00546118    90
                         nop                                                              // 0x00546119    90
                         nop                                                              // 0x0054611a    90
                         nop                                                              // 0x0054611b    90
                         nop                                                              // 0x0054611c    90
                         nop                                                              // 0x0054611d    90
                         nop                                                              // 0x0054611e    90
                         nop                                                              // 0x0054611f    90
_jmp_addr_0x00546120:    push               ebp                                           // 0x00546120    55
                         push               esi                                           // 0x00546121    56
                         mov.s              esi, ecx                                      // 0x00546122    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00546124    8b4e04
                         test               ecx, ecx                                      // 0x00546127    85c9
                         push               edi                                           // 0x00546129    57
                         {disp32} je        _jmp_addr_0x005461f2                          // 0x0054612a    0f84c2000000
                         {disp8} mov        al, byte ptr [ecx + -0x01]                    // 0x00546130    8a41ff
                         test               al, al                                        // 0x00546133    84c0
                         {disp32} je        _jmp_addr_0x005461f2                          // 0x00546135    0f84b7000000
                         cmp                al, -0x01                                     // 0x0054613b    3cff
                         {disp32} je        _jmp_addr_0x005461f2                          // 0x0054613d    0f84af000000
                         mov.s              ebp, ecx                                      // 0x00546143    8be9
                         dec                al                                            // 0x00546145    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                    // 0x00546147    8841ff
                         push               ebp                                           // 0x0054614a    55
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x0054614b    c7460400000000
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x00546152    c7460800000000
                         {disp8} mov        dword ptr [esi + 0x0c], 0x00000000            // 0x00546159    c7460c00000000
                         call               _wcslen                                       // 0x00546160    e8fd022800
                         mov.s              edi, eax                                      // 0x00546165    8bf8
                         add                esp, 0x04                                     // 0x00546167    83c404
                         cmp                edi, 0x7ffffffd                               // 0x0054616a    81fffdffff7f
                         {disp8} jbe        _jmp_addr_0x00546177                          // 0x00546170    7605
                         call               ?_Xlen@std@@YAXXZ                             // 0x00546172    e8dd8d2600
_jmp_addr_0x00546177:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00546177    8b4e04
                         test               ecx, ecx                                      // 0x0054617a    85c9
                         {disp8} je         _jmp_addr_0x0054619e                          // 0x0054617c    7420
                         {disp8} mov        al, byte ptr [ecx + -0x01]                    // 0x0054617e    8a41ff
                         test               al, al                                        // 0x00546181    84c0
                         {disp8} je         _jmp_addr_0x0054619e                          // 0x00546183    7419
                         cmp                al, -0x01                                     // 0x00546185    3cff
                         {disp8} je         _jmp_addr_0x0054619e                          // 0x00546187    7415
                         test               edi, edi                                      // 0x00546189    85ff
                         {disp8} jne        _jmp_addr_0x005461c4                          // 0x0054618b    7537
                         dec                al                                            // 0x0054618d    fec8
                         {disp8} mov        byte ptr [ecx + -0x01], al                    // 0x0054618f    8841ff
                         push               edi                                           // 0x00546192    57
                         mov.s              ecx, esi                                      // 0x00546193    8bce
                         call               _jmp_addr_0x00545920                          // 0x00546195    e886f7ffff
                         pop                edi                                           // 0x0054619a    5f
                         pop                esi                                           // 0x0054619b    5e
                         pop                ebp                                           // 0x0054619c    5d
                         ret                                                              // 0x0054619d    c3
_jmp_addr_0x0054619e:    test               edi, edi                                      // 0x0054619e    85ff
                         {disp8} jne        _jmp_addr_0x005461af                          // 0x005461a0    750d
                         push               0x1                                           // 0x005461a2    6a01
                         mov.s              ecx, esi                                      // 0x005461a4    8bce
                         call               _jmp_addr_0x00545920                          // 0x005461a6    e875f7ffff
                         pop                edi                                           // 0x005461ab    5f
                         pop                esi                                           // 0x005461ac    5e
                         pop                ebp                                           // 0x005461ad    5d
                         ret                                                              // 0x005461ae    c3
_jmp_addr_0x005461af:    {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x005461af    8b460c
                         cmp                eax, 0x1f                                     // 0x005461b2    83f81f
                         {disp8} ja         _jmp_addr_0x005461bb                          // 0x005461b5    7704
                         cmp.s              eax, edi                                      // 0x005461b7    3bc7
                         {disp8} jae        _jmp_addr_0x005461cc                          // 0x005461b9    7311
_jmp_addr_0x005461bb:    push               0x1                                           // 0x005461bb    6a01
                         mov.s              ecx, esi                                      // 0x005461bd    8bce
                         call               _jmp_addr_0x00545920                          // 0x005461bf    e85cf7ffff
_jmp_addr_0x005461c4:    push               edi                                           // 0x005461c4    57
                         mov.s              ecx, esi                                      // 0x005461c5    8bce
                         call               _jmp_addr_0x00545ac0                          // 0x005461c7    e8f4f8ffff
_jmp_addr_0x005461cc:    test               edi, edi                                      // 0x005461cc    85ff
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005461ce    8b4604
                         mov.s              ecx, ebp                                      // 0x005461d1    8bcd
                         {disp8} jbe        _jmp_addr_0x005461e6                          // 0x005461d3    7611
                         mov.s              edx, edi                                      // 0x005461d5    8bd7
_jmp_addr_0x005461d7:    mov                bp, word ptr [ecx]                            // 0x005461d7    668b29
                         mov                word ptr [eax], bp                            // 0x005461da    668928
                         add                eax, 0x02                                     // 0x005461dd    83c002
                         add                ecx, 0x2                                      // 0x005461e0    83c102
                         dec                edx                                           // 0x005461e3    4a
                         {disp8} jne        _jmp_addr_0x005461d7                          // 0x005461e4    75f1
_jmp_addr_0x005461e6:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005461e6    8b4604
                         {disp8} mov        dword ptr [esi + 0x08], edi                   // 0x005461e9    897e08
                         mov                word ptr [eax + edi * 0x2], 0x0000            // 0x005461ec    66c704780000
_jmp_addr_0x005461f2:    pop                edi                                           // 0x005461f2    5f
                         pop                esi                                           // 0x005461f3    5e
                         pop                ebp                                           // 0x005461f4    5d
                         ret                                                              // 0x005461f5    c3
                         nop                                                              // 0x005461f6    90
                         nop                                                              // 0x005461f7    90
                         nop                                                              // 0x005461f8    90
                         nop                                                              // 0x005461f9    90
                         nop                                                              // 0x005461fa    90
                         nop                                                              // 0x005461fb    90
                         nop                                                              // 0x005461fc    90
                         nop                                                              // 0x005461fd    90
                         nop                                                              // 0x005461fe    90
                         nop                                                              // 0x005461ff    90
_globl_ct_0x00546200:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00546200    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00546206    b001
                         test               al, cl                                        // 0x00546208    84c8
                         {disp8} jne        _jmp_addr_0x00546214                          // 0x0054620a    7508
                         or.s               cl, al                                        // 0x0054620c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0054620e    880d34c9fa00
_jmp_addr_0x00546214:    {disp32} jmp       _jmp_addr_0x00546220                          // 0x00546214    e907000000
                         nop                                                              // 0x00546219    90
                         nop                                                              // 0x0054621a    90
                         nop                                                              // 0x0054621b    90
                         nop                                                              // 0x0054621c    90
                         nop                                                              // 0x0054621d    90
                         nop                                                              // 0x0054621e    90
                         nop                                                              // 0x0054621f    90
_jmp_addr_0x00546220:    push               0x00407870                                    // 0x00546220    6870784000
                         call               _atexit                                       // 0x00546225    e867f52700
                         pop                ecx                                           // 0x0054622a    59
                         ret                                                              // 0x0054622b    c3
                         nop                                                              // 0x0054622c    90
                         nop                                                              // 0x0054622d    90
                         nop                                                              // 0x0054622e    90
                         nop                                                              // 0x0054622f    90
_globl_ct_0x00546230:    {disp32} jmp       _jmp_addr_0x00546240                          // 0x00546230    e90b000000
                         nop                                                              // 0x00546235    90
                         nop                                                              // 0x00546236    90
                         nop                                                              // 0x00546237    90
                         nop                                                              // 0x00546238    90
                         nop                                                              // 0x00546239    90
                         nop                                                              // 0x0054623a    90
                         nop                                                              // 0x0054623b    90
                         nop                                                              // 0x0054623c    90
                         nop                                                              // 0x0054623d    90
                         nop                                                              // 0x0054623e    90
                         nop                                                              // 0x0054623f    90
_jmp_addr_0x00546240:    {disp32} mov       dword ptr [data_bytes + 0x30b660], 0xffffffff // 0x00546240    c7056016cd00ffffffff
                         ret                                                              // 0x0054624a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0054624b    e829b6ebff
_globl_ct_0x00546250:    {disp32} jmp       _jmp_addr_0x00546260                          // 0x00546250    e90b000000
                         nop                                                              // 0x00546255    90
                         nop                                                              // 0x00546256    90
                         nop                                                              // 0x00546257    90
                         nop                                                              // 0x00546258    90
                         nop                                                              // 0x00546259    90
                         nop                                                              // 0x0054625a    90
                         nop                                                              // 0x0054625b    90
                         nop                                                              // 0x0054625c    90
                         nop                                                              // 0x0054625d    90
                         nop                                                              // 0x0054625e    90
                         nop                                                              // 0x0054625f    90
_jmp_addr_0x00546260:    {disp32} fld       dword ptr [rdata_bytes + 0x35ce0]             // 0x00546260    d905e0ec8d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x35cdc]             // 0x00546266    d80ddcec8d00
                         {disp32} fstp      dword ptr [data_bytes + 0x30b65c]             // 0x0054626c    d91d5c16cd00
                         ret                                                              // 0x00546272    c3
                         nop                                                              // 0x00546273    90
                         nop                                                              // 0x00546274    90
                         nop                                                              // 0x00546275    90
                         nop                                                              // 0x00546276    90
                         nop                                                              // 0x00546277    90
                         nop                                                              // 0x00546278    90
                         nop                                                              // 0x00546279    90
                         nop                                                              // 0x0054627a    90
                         nop                                                              // 0x0054627b    90
                         nop                                                              // 0x0054627c    90
                         nop                                                              // 0x0054627d    90
                         nop                                                              // 0x0054627e    90
                         nop                                                              // 0x0054627f    90
?Init@SetupLandscapeBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00546280    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00546284    8b542404
                         push               ebx                                           // 0x00546288    53
                         push               esi                                           // 0x00546289    56
                         mov.s              esi, ecx                                      // 0x0054628a    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0054628c    8b4c2410
                         push               eax                                           // 0x00546290    50
                         push               ecx                                           // 0x00546291    51
                         push               edx                                           // 0x00546292    52
                         mov.s              ecx, esi                                      // 0x00546293    8bce
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00546295    e866d1fcff
                         push               0x42                                          // 0x0054629a    6a42
                         push               0x00bea7c8                                    // 0x0054629c    68c8a7be00
                         push               0x00000468                                    // 0x005462a1    6868040000
                         {disp32} mov       dword ptr [data_bytes + 0x30b664], esi        // 0x005462a6    89356416cd00
                         call               ___nw__FUl                                    // 0x005462ac    e8df542900
                         xor.s              ebx, ebx                                      // 0x005462b1    33db
                         add                esp, 0x0c                                     // 0x005462b3    83c40c
                         cmp.s              eax, ebx                                      // 0x005462b6    3bc3
                         {disp8} je         _jmp_addr_0x005462df                          // 0x005462b8    7425
                         push               ebx                                           // 0x005462ba    53
                         push               0x009cee0c                                    // 0x005462bb    680cee9c00
                         push               0x1e                                          // 0x005462c0    6a1e
                         push               0x000001f4                                    // 0x005462c2    68f4010000
                         push               0x0000020d                                    // 0x005462c7    680d020000
                         push               0x00000096                                    // 0x005462cc    6896000000
                         push               0x000003e6                                    // 0x005462d1    68e6030000
                         mov.s              ecx, eax                                      // 0x005462d6    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x005462d8    e8435fecff
                         {disp8} jmp        _jmp_addr_0x005462e1                          // 0x005462dd    eb02
_jmp_addr_0x005462df:    xor.s              eax, eax                                      // 0x005462df    33c0
_jmp_addr_0x005462e1:    {disp32} mov       dword ptr [esi + 0x0000044c], eax             // 0x005462e1    89864c040000
                         call               _GetSmallTextSize__Fv                         // 0x005462e7    e82417ecff
                         {disp32} mov       ecx, dword ptr [esi + 0x0000044c]             // 0x005462ec    8b8e4c040000
                         push               0x47                                          // 0x005462f2    6a47
                         push               0x00bea7c8                                    // 0x005462f4    68c8a7be00
                         push               0x0000025c                                    // 0x005462f9    685c020000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x005462fe    894120
                         call               ___nw__FUl                                    // 0x00546301    e88a542900
                         add                esp, 0x0c                                     // 0x00546306    83c40c
                         cmp.s              eax, ebx                                      // 0x00546309    3bc3
                         {disp8} je         _jmp_addr_0x00546347                          // 0x0054630b    743a
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x0054630d    813dac7cd100240a0000
                         {disp8} ja         _jmp_addr_0x00546321                          // 0x00546317    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546319    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0054632d                          // 0x0054631f    eb0c
_jmp_addr_0x00546321:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546321    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x000079b0]             // 0x00546327    8d8ab0790000
_jmp_addr_0x0054632d:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054632d    8b4908
                         push               0x2                                           // 0x00546330    6a02
                         push               ebx                                           // 0x00546332    53
                         push               0x28                                          // 0x00546333    6a28
                         push               ecx                                           // 0x00546335    51
                         push               0x00000208                                    // 0x00546336    6808020000
                         push               0x28                                          // 0x0054633b    6a28
                         push               ebx                                           // 0x0054633d    53
                         mov.s              ecx, eax                                      // 0x0054633e    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00546340    e81b6fecff
                         {disp8} jmp        _jmp_addr_0x00546349                          // 0x00546345    eb02
_jmp_addr_0x00546347:    xor.s              eax, eax                                      // 0x00546347    33c0
_jmp_addr_0x00546349:    push               0x48                                          // 0x00546349    6a48
                         push               0x00bea7c8                                    // 0x0054634b    68c8a7be00
                         push               0x0000025c                                    // 0x00546350    685c020000
                         {disp32} mov       dword ptr [esi + 0x00000450], eax             // 0x00546355    898650040000
                         call               ___nw__FUl                                    // 0x0054635b    e830542900
                         add                esp, 0x0c                                     // 0x00546360    83c40c
                         cmp.s              eax, ebx                                      // 0x00546363    3bc3
                         {disp8} je         _jmp_addr_0x0054639e                          // 0x00546365    7437
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a23 // 0x00546367    813dac7cd100230a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546371    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0054637f                          // 0x00546377    7606
                         add                ecx, 0x000079a4                               // 0x00546379    81c1a4790000
_jmp_addr_0x0054637f:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054637f    8b4908
                         push               0x3                                           // 0x00546382    6a03
                         push               0x1                                           // 0x00546384    6a01
                         push               0x28                                          // 0x00546386    6a28
                         push               ecx                                           // 0x00546388    51
                         push               0x00000208                                    // 0x00546389    6808020000
                         push               0x000002d0                                    // 0x0054638e    68d0020000
                         push               0x1                                           // 0x00546393    6a01
                         mov.s              ecx, eax                                      // 0x00546395    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00546397    e8c46eecff
                         {disp8} jmp        _jmp_addr_0x005463a0                          // 0x0054639c    eb02
_jmp_addr_0x0054639e:    xor.s              eax, eax                                      // 0x0054639e    33c0
_jmp_addr_0x005463a0:    push               0x4f                                          // 0x005463a0    6a4f
                         push               0x00bea7c8                                    // 0x005463a2    68c8a7be00
                         push               0x00000468                                    // 0x005463a7    6868040000
                         {disp32} mov       dword ptr [esi + 0x00000454], eax             // 0x005463ac    898654040000
                         call               ___nw__FUl                                    // 0x005463b2    e8d9532900
                         add                esp, 0x0c                                     // 0x005463b7    83c40c
                         cmp.s              eax, ebx                                      // 0x005463ba    3bc3
                         {disp8} je         _jmp_addr_0x005463db                          // 0x005463bc    741d
                         push               0x1                                           // 0x005463be    6a01
                         push               0x00c4cd30                                    // 0x005463c0    6830cdc400
                         push               0x1e                                          // 0x005463c5    6a1e
                         push               0x64                                          // 0x005463c7    6a64
                         push               0x000001b8                                    // 0x005463c9    68b8010000
                         push               0x64                                          // 0x005463ce    6a64
                         push               0x2                                           // 0x005463d0    6a02
                         mov.s              ecx, eax                                      // 0x005463d2    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x005463d4    e8475eecff
                         {disp8} jmp        _jmp_addr_0x005463dd                          // 0x005463d9    eb02
_jmp_addr_0x005463db:    xor.s              eax, eax                                      // 0x005463db    33c0
_jmp_addr_0x005463dd:    push               edi                                           // 0x005463dd    57
                         push               0x50                                          // 0x005463de    6a50
                         push               0x00bea7c8                                    // 0x005463e0    68c8a7be00
                         push               0x00000244                                    // 0x005463e5    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000448], eax             // 0x005463ea    898648040000
                         call               ___nw__FUl                                    // 0x005463f0    e89b532900
                         mov.s              edi, eax                                      // 0x005463f5    8bf8
                         add                esp, 0x0c                                     // 0x005463f7    83c40c
                         cmp.s              edi, ebx                                      // 0x005463fa    3bfb
                         {disp8} je         _jmp_addr_0x00546452                          // 0x005463fc    7454
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115e // 0x005463fe    813dac7cd1005e110000
                         {disp8} ja         _jmp_addr_0x00546411                          // 0x00546408    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054640a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0054641d                          // 0x0054640f    eb0c
_jmp_addr_0x00546411:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546411    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d068]             // 0x00546417    8d8268d00000
_jmp_addr_0x0054641d:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0054641d    8b4008
                         push               eax                                           // 0x00546420    50
                         push               0x28                                          // 0x00546421    6a28
                         push               0x6e                                          // 0x00546423    6a6e
                         push               0x0000019a                                    // 0x00546425    689a010000
                         push               0x64                                          // 0x0054642a    6a64
                         push               0x000003e7                                    // 0x0054642c    68e7030000
                         mov.s              ecx, edi                                      // 0x00546431    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00546433    e8182eecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x00546438    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x0054643e    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x00546444    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x0054644a    899f40020000
                         {disp8} jmp        _jmp_addr_0x00546454                          // 0x00546450    eb02
_jmp_addr_0x00546452:    xor.s              edi, edi                                      // 0x00546452    33ff
_jmp_addr_0x00546454:    push               0x51                                          // 0x00546454    6a51
                         push               0x00bea7c8                                    // 0x00546456    68c8a7be00
                         push               0x00000244                                    // 0x0054645b    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000458], edi             // 0x00546460    89be58040000
                         call               ___nw__FUl                                    // 0x00546466    e825532900
                         mov.s              edi, eax                                      // 0x0054646b    8bf8
                         add                esp, 0x0c                                     // 0x0054646d    83c40c
                         cmp.s              edi, ebx                                      // 0x00546470    3bfb
                         {disp8} je         _jmp_addr_0x005464aa                          // 0x00546472    7436
                         push               0x00c4cd30                                    // 0x00546474    6830cdc400
                         push               0x28                                          // 0x00546479    6a28
                         push               0x000000d2                                    // 0x0054647b    68d2000000
                         push               0x50                                          // 0x00546480    6a50
                         push               0x64                                          // 0x00546482    6a64
                         push               0x000003e7                                    // 0x00546484    68e7030000
                         mov.s              ecx, edi                                      // 0x00546489    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0054648b    e8c02decff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x00546490    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x00546496    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x0054649c    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x005464a2    899f40020000
                         {disp8} jmp        _jmp_addr_0x005464ac                          // 0x005464a8    eb02
_jmp_addr_0x005464aa:    xor.s              edi, edi                                      // 0x005464aa    33ff
_jmp_addr_0x005464ac:    {disp32} mov       dword ptr [esi + 0x0000045c], edi             // 0x005464ac    89be5c040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010e7 // 0x005464b2    813dac7cd100e7100000
                         {disp8} ja         _jmp_addr_0x005464c5                          // 0x005464bc    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005464be    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005464d1                          // 0x005464c3    eb0c
_jmp_addr_0x005464c5:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005464c5    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000cad4]             // 0x005464cb    8d81d4ca0000
_jmp_addr_0x005464d1:    {disp32} mov       edx, dword ptr [esi + 0x0000042c]             // 0x005464d1    8b962c040000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005464d7    8b4008
                         push               edx                                           // 0x005464da    52
                         push               eax                                           // 0x005464db    50
                         add                edi, 0x24                                     // 0x005464dc    83c724
                         push               edi                                           // 0x005464df    57
                         call               _swprintf                                     // 0x005464e0    e89aff2700
                         push               0x55                                          // 0x005464e5    6a55
                         push               0x00bea7c8                                    // 0x005464e7    68c8a7be00
                         push               0x00000250                                    // 0x005464ec    6850020000
                         call               ___nw__FUl                                    // 0x005464f1    e89a522900
                         add                esp, 0x18                                     // 0x005464f6    83c418
                         cmp.s              eax, ebx                                      // 0x005464f9    3bc3
                         {disp8} je         _jmp_addr_0x00546516                          // 0x005464fb    7419
                         push               0x00c4cd30                                    // 0x005464fd    6830cdc400
                         push               ebx                                           // 0x00546502    53
                         push               0x14                                          // 0x00546503    6a14
                         push               0x64                                          // 0x00546505    6a64
                         push               0x64                                          // 0x00546507    6a64
                         push               0x64                                          // 0x00546509    6a64
                         push               0x3                                           // 0x0054650b    6a03
                         mov.s              ecx, eax                                      // 0x0054650d    8bc8
                         call               @__ct__11SetupSliderFiiiiifPw@36              // 0x0054650f    e8dc36ecff
                         {disp8} jmp        _jmp_addr_0x00546518                          // 0x00546514    eb02
_jmp_addr_0x00546516:    xor.s              eax, eax                                      // 0x00546516    33c0
_jmp_addr_0x00546518:    push               0x57                                          // 0x00546518    6a57
                         push               0x00bea7c8                                    // 0x0054651a    68c8a7be00
                         push               0x00000260                                    // 0x0054651f    6860020000
                         {disp32} mov       dword ptr [esi + 0x00000474], eax             // 0x00546524    898674040000
                         call               ___nw__FUl                                    // 0x0054652a    e861522900
                         add                esp, 0x0c                                     // 0x0054652f    83c40c
                         cmp.s              eax, ebx                                      // 0x00546532    3bc3
                         {disp8} je         _jmp_addr_0x00546568                          // 0x00546534    7432
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010e5 // 0x00546536    813dac7cd100e5100000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546540    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0054654e                          // 0x00546546    7606
                         add                ecx, 0x0000cabc                               // 0x00546548    81c1bcca0000
_jmp_addr_0x0054654e:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054654e    8b4908
                         push               0x14                                          // 0x00546551    6a14
                         push               ecx                                           // 0x00546553    51
                         push               ebx                                           // 0x00546554    53
                         push               ebx                                           // 0x00546555    53
                         push               0x00000082                                    // 0x00546556    6882000000
                         push               0x64                                          // 0x0054655b    6a64
                         push               0x4                                           // 0x0054655d    6a04
                         mov.s              ecx, eax                                      // 0x0054655f    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00546561    e8aaa9ecff
                         {disp8} jmp        _jmp_addr_0x0054656a                          // 0x00546566    eb02
_jmp_addr_0x00546568:    xor.s              eax, eax                                      // 0x00546568    33c0
_jmp_addr_0x0054656a:    push               0x59                                          // 0x0054656a    6a59
                         push               0x00bea7c8                                    // 0x0054656c    68c8a7be00
                         {disp32} mov       dword ptr [esi + 0x00000484], eax             // 0x00546571    898684040000
                         push               0x00000260                                    // 0x00546577    6860020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x0054657c    899844020000
                         call               ___nw__FUl                                    // 0x00546582    e809522900
                         add                esp, 0x0c                                     // 0x00546587    83c40c
                         cmp.s              eax, ebx                                      // 0x0054658a    3bc3
                         {disp8} je         _jmp_addr_0x005465cb                          // 0x0054658c    743d
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010e6 // 0x0054658e    813dac7cd100e6100000
                         {disp8} ja         _jmp_addr_0x005465a2                          // 0x00546598    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054659a    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005465ae                          // 0x005465a0    eb0c
_jmp_addr_0x005465a2:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005465a2    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000cac8]             // 0x005465a8    8d8ac8ca0000
_jmp_addr_0x005465ae:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005465ae    8b4908
                         push               0x14                                          // 0x005465b1    6a14
                         push               ecx                                           // 0x005465b3    51
                         push               ebx                                           // 0x005465b4    53
                         push               ebx                                           // 0x005465b5    53
                         push               0x00000082                                    // 0x005465b6    6882000000
                         push               0x00000190                                    // 0x005465bb    6890010000
                         push               0x5                                           // 0x005465c0    6a05
                         mov.s              ecx, eax                                      // 0x005465c2    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x005465c4    e847a9ecff
                         {disp8} jmp        _jmp_addr_0x005465cd                          // 0x005465c9    eb02
_jmp_addr_0x005465cb:    xor.s              eax, eax                                      // 0x005465cb    33c0
_jmp_addr_0x005465cd:    push               0x5b                                          // 0x005465cd    6a5b
                         push               0x00bea7c8                                    // 0x005465cf    68c8a7be00
                         {disp32} mov       dword ptr [esi + 0x00000488], eax             // 0x005465d4    898688040000
                         push               0x00000260                                    // 0x005465da    6860020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x005465df    899844020000
                         call               ___nw__FUl                                    // 0x005465e5    e8a6512900
                         add                esp, 0x0c                                     // 0x005465ea    83c40c
                         cmp.s              eax, ebx                                      // 0x005465ed    3bc3
                         {disp8} je         _jmp_addr_0x00546623                          // 0x005465ef    7432
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010e8 // 0x005465f1    813dac7cd100e8100000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005465fb    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x00546609                          // 0x00546601    7606
                         add                ecx, 0x0000cae0                               // 0x00546603    81c1e0ca0000
_jmp_addr_0x00546609:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00546609    8b4908
                         push               0x14                                          // 0x0054660c    6a14
                         push               ecx                                           // 0x0054660e    51
                         push               ebx                                           // 0x0054660f    53
                         push               ebx                                           // 0x00546610    53
                         push               0x000000a0                                    // 0x00546611    68a0000000
                         push               0x64                                          // 0x00546616    6a64
                         push               0x6                                           // 0x00546618    6a06
                         mov.s              ecx, eax                                      // 0x0054661a    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0054661c    e8efa8ecff
                         {disp8} jmp        _jmp_addr_0x00546625                          // 0x00546621    eb02
_jmp_addr_0x00546623:    xor.s              eax, eax                                      // 0x00546623    33c0
_jmp_addr_0x00546625:    push               0x5d                                          // 0x00546625    6a5d
                         push               0x00bea7c8                                    // 0x00546627    68c8a7be00
                         {disp32} mov       dword ptr [esi + 0x0000048c], eax             // 0x0054662c    89868c040000
                         push               0x00000260                                    // 0x00546632    6860020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x00546637    899844020000
                         call               ___nw__FUl                                    // 0x0054663d    e84e512900
                         add                esp, 0x0c                                     // 0x00546642    83c40c
                         cmp.s              eax, ebx                                      // 0x00546645    3bc3
                         {disp8} je         _jmp_addr_0x00546686                          // 0x00546647    743d
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010e9 // 0x00546649    813dac7cd100e9100000
                         {disp8} ja         _jmp_addr_0x0054665d                          // 0x00546653    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546655    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x00546669                          // 0x0054665b    eb0c
_jmp_addr_0x0054665d:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0054665d    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000caec]             // 0x00546663    8d8aecca0000
_jmp_addr_0x00546669:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00546669    8b4908
                         push               0x14                                          // 0x0054666c    6a14
                         push               ecx                                           // 0x0054666e    51
                         push               ebx                                           // 0x0054666f    53
                         push               ebx                                           // 0x00546670    53
                         push               0x000000a0                                    // 0x00546671    68a0000000
                         push               0x00000190                                    // 0x00546676    6890010000
                         push               0x7                                           // 0x0054667b    6a07
                         mov.s              ecx, eax                                      // 0x0054667d    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0054667f    e88ca8ecff
                         {disp8} jmp        _jmp_addr_0x00546688                          // 0x00546684    eb02
_jmp_addr_0x00546686:    xor.s              eax, eax                                      // 0x00546686    33c0
_jmp_addr_0x00546688:    push               0x5f                                          // 0x00546688    6a5f
                         push               0x00bea7c8                                    // 0x0054668a    68c8a7be00
                         {disp32} mov       dword ptr [esi + 0x00000490], eax             // 0x0054668f    898690040000
                         push               0x00000260                                    // 0x00546695    6860020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x0054669a    899844020000
                         call               ___nw__FUl                                    // 0x005466a0    e8eb502900
                         add                esp, 0x0c                                     // 0x005466a5    83c40c
                         cmp.s              eax, ebx                                      // 0x005466a8    3bc3
                         {disp8} je         _jmp_addr_0x005466de                          // 0x005466aa    7432
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010ea // 0x005466ac    813dac7cd100ea100000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005466b6    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005466c4                          // 0x005466bc    7606
                         add                ecx, 0x0000caf8                               // 0x005466be    81c1f8ca0000
_jmp_addr_0x005466c4:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005466c4    8b4908
                         push               0x14                                          // 0x005466c7    6a14
                         push               ecx                                           // 0x005466c9    51
                         push               ebx                                           // 0x005466ca    53
                         push               ebx                                           // 0x005466cb    53
                         push               0x000000be                                    // 0x005466cc    68be000000
                         push               0x64                                          // 0x005466d1    6a64
                         push               0x8                                           // 0x005466d3    6a08
                         mov.s              ecx, eax                                      // 0x005466d5    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x005466d7    e834a8ecff
                         {disp8} jmp        _jmp_addr_0x005466e0                          // 0x005466dc    eb02
_jmp_addr_0x005466de:    xor.s              eax, eax                                      // 0x005466de    33c0
_jmp_addr_0x005466e0:    push               0x61                                          // 0x005466e0    6a61
                         push               0x00bea7c8                                    // 0x005466e2    68c8a7be00
                         {disp32} mov       dword ptr [esi + 0x00000494], eax             // 0x005466e7    898694040000
                         push               0x00000260                                    // 0x005466ed    6860020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x005466f2    899844020000
                         call               ___nw__FUl                                    // 0x005466f8    e893502900
                         add                esp, 0x0c                                     // 0x005466fd    83c40c
                         cmp.s              eax, ebx                                      // 0x00546700    3bc3
                         {disp8} je         _jmp_addr_0x00546741                          // 0x00546702    743d
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010eb // 0x00546704    813dac7cd100eb100000
                         {disp8} ja         _jmp_addr_0x00546718                          // 0x0054670e    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546710    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x00546724                          // 0x00546716    eb0c
_jmp_addr_0x00546718:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546718    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000cb04]             // 0x0054671e    8d8a04cb0000
_jmp_addr_0x00546724:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00546724    8b4908
                         push               0x14                                          // 0x00546727    6a14
                         push               ecx                                           // 0x00546729    51
                         push               ebx                                           // 0x0054672a    53
                         push               ebx                                           // 0x0054672b    53
                         push               0x000000be                                    // 0x0054672c    68be000000
                         push               0x00000190                                    // 0x00546731    6890010000
                         push               0x9                                           // 0x00546736    6a09
                         mov.s              ecx, eax                                      // 0x00546738    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0054673a    e8d1a7ecff
                         {disp8} jmp        _jmp_addr_0x00546743                          // 0x0054673f    eb02
_jmp_addr_0x00546741:    xor.s              eax, eax                                      // 0x00546741    33c0
_jmp_addr_0x00546743:    push               0x63                                          // 0x00546743    6a63
                         push               0x00bea7c8                                    // 0x00546745    68c8a7be00
                         {disp32} mov       dword ptr [esi + 0x00000498], eax             // 0x0054674a    898698040000
                         push               0x00000260                                    // 0x00546750    6860020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x00546755    899844020000
                         call               ___nw__FUl                                    // 0x0054675b    e830502900
                         add                esp, 0x0c                                     // 0x00546760    83c40c
                         cmp.s              eax, ebx                                      // 0x00546763    3bc3
                         {disp8} je         _jmp_addr_0x00546799                          // 0x00546765    7432
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010ec // 0x00546767    813dac7cd100ec100000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546771    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0054677f                          // 0x00546777    7606
                         add                ecx, 0x0000cb10                               // 0x00546779    81c110cb0000
_jmp_addr_0x0054677f:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054677f    8b4908
                         push               0x14                                          // 0x00546782    6a14
                         push               ecx                                           // 0x00546784    51
                         push               ebx                                           // 0x00546785    53
                         push               ebx                                           // 0x00546786    53
                         push               0x000000dc                                    // 0x00546787    68dc000000
                         push               0x64                                          // 0x0054678c    6a64
                         push               0xa                                           // 0x0054678e    6a0a
                         mov.s              ecx, eax                                      // 0x00546790    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00546792    e879a7ecff
                         {disp8} jmp        _jmp_addr_0x0054679b                          // 0x00546797    eb02
_jmp_addr_0x00546799:    xor.s              eax, eax                                      // 0x00546799    33c0
_jmp_addr_0x0054679b:    push               0x69                                          // 0x0054679b    6a69
                         push               0x00bea7c8                                    // 0x0054679d    68c8a7be00
                         {disp32} mov       dword ptr [esi + 0x0000049c], eax             // 0x005467a2    89869c040000
                         push               0x00000250                                    // 0x005467a8    6850020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x005467ad    899844020000
                         call               ___nw__FUl                                    // 0x005467b3    e8d84f2900
                         add                esp, 0x0c                                     // 0x005467b8    83c40c
                         cmp.s              eax, ebx                                      // 0x005467bb    3bc3
                         {disp8} je         _jmp_addr_0x005467db                          // 0x005467bd    741c
                         push               0x00c4cd30                                    // 0x005467bf    6830cdc400
                         push               ebx                                           // 0x005467c4    53
                         push               0x14                                          // 0x005467c5    6a14
                         push               0x64                                          // 0x005467c7    6a64
                         push               0x00000122                                    // 0x005467c9    6822010000
                         push               0x64                                          // 0x005467ce    6a64
                         push               0xc                                           // 0x005467d0    6a0c
                         mov.s              ecx, eax                                      // 0x005467d2    8bc8
                         call               @__ct__11SetupSliderFiiiiifPw@36              // 0x005467d4    e81734ecff
                         {disp8} jmp        _jmp_addr_0x005467dd                          // 0x005467d9    eb02
_jmp_addr_0x005467db:    xor.s              eax, eax                                      // 0x005467db    33c0
_jmp_addr_0x005467dd:    push               0x6a                                          // 0x005467dd    6a6a
                         push               0x00bea7c8                                    // 0x005467df    68c8a7be00
                         push               0x00000244                                    // 0x005467e4    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000478], eax             // 0x005467e9    898678040000
                         call               ___nw__FUl                                    // 0x005467ef    e89c4f2900
                         mov.s              edi, eax                                      // 0x005467f4    8bf8
                         add                esp, 0x0c                                     // 0x005467f6    83c40c
                         cmp.s              edi, ebx                                      // 0x005467f9    3bfb
                         {disp8} je         _jmp_addr_0x00546836                          // 0x005467fb    7439
                         push               0x00c4cd30                                    // 0x005467fd    6830cdc400
                         push               0x1e                                          // 0x00546802    6a1e
                         push               0x000000fa                                    // 0x00546804    68fa000000
                         push               0x00000104                                    // 0x00546809    6804010000
                         push               0x64                                          // 0x0054680e    6a64
                         push               0x000003e7                                    // 0x00546810    68e7030000
                         mov.s              ecx, edi                                      // 0x00546815    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00546817    e8342aecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x0054681c    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x00546822    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x00546828    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x0054682e    899f40020000
                         {disp8} jmp        _jmp_addr_0x00546838                          // 0x00546834    eb02
_jmp_addr_0x00546836:    xor.s              edi, edi                                      // 0x00546836    33ff
_jmp_addr_0x00546838:    {disp32} mov       dword ptr [esi + 0x00000460], edi             // 0x00546838    89be60040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115b // 0x0054683e    813dac7cd1005b110000
                         {disp8} ja         _jmp_addr_0x00546851                          // 0x00546848    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054684a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0054685d                          // 0x0054684f    eb0c
_jmp_addr_0x00546851:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546851    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d044]             // 0x00546857    8d8244d00000
_jmp_addr_0x0054685d:    {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x0054685d    8b7808
                         {disp32} mov       eax, dword ptr [esi + 0x00000434]             // 0x00546860    8b8634040000
                         push               eax                                           // 0x00546866    50
                         call               _jmp_addr_0x00546c30                          // 0x00546867    e8c4030000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000460]             // 0x0054686c    8b8e60040000
                         add                esp, 0x04                                     // 0x00546872    83c404
                         push               eax                                           // 0x00546875    50
                         add                ecx, 0x24                                     // 0x00546876    83c124
                         push               edi                                           // 0x00546879    57
                         push               ecx                                           // 0x0054687a    51
                         call               _swprintf                                     // 0x0054687b    e8fffb2700
                         push               0x6d                                          // 0x00546880    6a6d
                         push               0x00bea7c8                                    // 0x00546882    68c8a7be00
                         push               0x00000250                                    // 0x00546887    6850020000
                         call               ___nw__FUl                                    // 0x0054688c    e8ff4e2900
                         add                esp, 0x18                                     // 0x00546891    83c418
                         cmp.s              eax, ebx                                      // 0x00546894    3bc3
                         {disp8} je         _jmp_addr_0x005468b7                          // 0x00546896    741f
                         push               0x00c4cd30                                    // 0x00546898    6830cdc400
                         push               ebx                                           // 0x0054689d    53
                         push               0x14                                          // 0x0054689e    6a14
                         push               0x64                                          // 0x005468a0    6a64
                         push               0x00000122                                    // 0x005468a2    6822010000
                         push               0x00000140                                    // 0x005468a7    6840010000
                         push               0xb                                           // 0x005468ac    6a0b
                         mov.s              ecx, eax                                      // 0x005468ae    8bc8
                         call               @__ct__11SetupSliderFiiiiifPw@36              // 0x005468b0    e83b33ecff
                         {disp8} jmp        _jmp_addr_0x005468b9                          // 0x005468b5    eb02
_jmp_addr_0x005468b7:    xor.s              eax, eax                                      // 0x005468b7    33c0
_jmp_addr_0x005468b9:    push               0x6e                                          // 0x005468b9    6a6e
                         push               0x00bea7c8                                    // 0x005468bb    68c8a7be00
                         push               0x00000244                                    // 0x005468c0    6844020000
                         {disp32} mov       dword ptr [esi + 0x0000047c], eax             // 0x005468c5    89867c040000
                         call               ___nw__FUl                                    // 0x005468cb    e8c04e2900
                         mov.s              edi, eax                                      // 0x005468d0    8bf8
                         add                esp, 0x0c                                     // 0x005468d2    83c40c
                         cmp.s              edi, ebx                                      // 0x005468d5    3bfb
                         {disp8} je         _jmp_addr_0x00546915                          // 0x005468d7    743c
                         push               0x00c4cd30                                    // 0x005468d9    6830cdc400
                         push               0x1e                                          // 0x005468de    6a1e
                         push               0x000000fa                                    // 0x005468e0    68fa000000
                         push               0x00000104                                    // 0x005468e5    6804010000
                         push               0x00000140                                    // 0x005468ea    6840010000
                         push               0x000003e7                                    // 0x005468ef    68e7030000
                         mov.s              ecx, edi                                      // 0x005468f4    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005468f6    e85529ecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x005468fb    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x00546901    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x00546907    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x0054690d    899f40020000
                         {disp8} jmp        _jmp_addr_0x00546917                          // 0x00546913    eb02
_jmp_addr_0x00546915:    xor.s              edi, edi                                      // 0x00546915    33ff
_jmp_addr_0x00546917:    {disp32} mov       dword ptr [esi + 0x00000464], edi             // 0x00546917    89be64040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115c // 0x0054691d    813dac7cd1005c110000
                         {disp8} ja         _jmp_addr_0x00546930                          // 0x00546927    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00546929    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0054693c                          // 0x0054692e    eb0c
_jmp_addr_0x00546930:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546930    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d050]             // 0x00546936    8d8250d00000
_jmp_addr_0x0054693c:    {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x0054693c    8b7808
                         {disp32} mov       eax, dword ptr [esi + 0x00000430]             // 0x0054693f    8b8630040000
                         push               eax                                           // 0x00546945    50
                         call               _jmp_addr_0x00546c30                          // 0x00546946    e8e5020000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000464]             // 0x0054694b    8b8e64040000
                         add                esp, 0x04                                     // 0x00546951    83c404
                         push               eax                                           // 0x00546954    50
                         add                ecx, 0x24                                     // 0x00546955    83c124
                         push               edi                                           // 0x00546958    57
                         push               ecx                                           // 0x00546959    51
                         call               _swprintf                                     // 0x0054695a    e820fb2700
                         push               0x70                                          // 0x0054695f    6a70
                         push               0x00bea7c8                                    // 0x00546961    68c8a7be00
                         push               0x00000250                                    // 0x00546966    6850020000
                         call               ___nw__FUl                                    // 0x0054696b    e8204e2900
                         add                esp, 0x18                                     // 0x00546970    83c418
                         cmp.s              eax, ebx                                      // 0x00546973    3bc3
                         {disp8} je         _jmp_addr_0x00546996                          // 0x00546975    741f
                         push               0x00c4cd30                                    // 0x00546977    6830cdc400
                         push               ebx                                           // 0x0054697c    53
                         push               0x14                                          // 0x0054697d    6a14
                         push               0x64                                          // 0x0054697f    6a64
                         push               0x00000122                                    // 0x00546981    6822010000
                         push               0x0000021c                                    // 0x00546986    681c020000
                         push               0xd                                           // 0x0054698b    6a0d
                         mov.s              ecx, eax                                      // 0x0054698d    8bc8
                         call               @__ct__11SetupSliderFiiiiifPw@36              // 0x0054698f    e85c32ecff
                         {disp8} jmp        _jmp_addr_0x00546998                          // 0x00546994    eb02
_jmp_addr_0x00546996:    xor.s              eax, eax                                      // 0x00546996    33c0
_jmp_addr_0x00546998:    push               0x71                                          // 0x00546998    6a71
                         push               0x00bea7c8                                    // 0x0054699a    68c8a7be00
                         push               0x00000244                                    // 0x0054699f    6844020000
                         {disp32} mov       dword ptr [esi + 0x00000480], eax             // 0x005469a4    898680040000
                         call               ___nw__FUl                                    // 0x005469aa    e8e14d2900
                         mov.s              edi, eax                                      // 0x005469af    8bf8
                         add                esp, 0x0c                                     // 0x005469b1    83c40c
                         cmp.s              edi, ebx                                      // 0x005469b4    3bfb
                         {disp8} je         _jmp_addr_0x005469f4                          // 0x005469b6    743c
                         push               0x00c4cd30                                    // 0x005469b8    6830cdc400
                         push               0x1e                                          // 0x005469bd    6a1e
                         push               0x000000fa                                    // 0x005469bf    68fa000000
                         push               0x00000104                                    // 0x005469c4    6804010000
                         push               0x0000021c                                    // 0x005469c9    681c020000
                         push               0x000003e7                                    // 0x005469ce    68e7030000
                         mov.s              ecx, edi                                      // 0x005469d3    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005469d5    e87628ecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x005469da    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x005469e0    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x005469e6    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x005469ec    899f40020000
                         {disp8} jmp        _jmp_addr_0x005469f6                          // 0x005469f2    eb02
_jmp_addr_0x005469f4:    xor.s              edi, edi                                      // 0x005469f4    33ff
_jmp_addr_0x005469f6:    {disp32} mov       dword ptr [esi + 0x00000468], edi             // 0x005469f6    89be68040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115d // 0x005469fc    813dac7cd1005d110000
                         {disp8} ja         _jmp_addr_0x00546a0f                          // 0x00546a06    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00546a08    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00546a1b                          // 0x00546a0d    eb0c
_jmp_addr_0x00546a0f:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546a0f    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d05c]             // 0x00546a15    8d825cd00000
_jmp_addr_0x00546a1b:    {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x00546a1b    8b7808
                         {disp32} mov       eax, dword ptr [esi + 0x00000430]             // 0x00546a1e    8b8630040000
                         push               eax                                           // 0x00546a24    50
                         call               _jmp_addr_0x00546c30                          // 0x00546a25    e806020000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000468]             // 0x00546a2a    8b8e68040000
                         add                esp, 0x04                                     // 0x00546a30    83c404
                         push               eax                                           // 0x00546a33    50
                         add                ecx, 0x24                                     // 0x00546a34    83c124
                         push               edi                                           // 0x00546a37    57
                         push               ecx                                           // 0x00546a38    51
                         call               _swprintf                                     // 0x00546a39    e841fa2700
                         push               0x75                                          // 0x00546a3e    6a75
                         push               0x00bea7c8                                    // 0x00546a40    68c8a7be00
                         push               0x00000244                                    // 0x00546a45    6844020000
                         call               ___nw__FUl                                    // 0x00546a4a    e8414d2900
                         mov.s              edi, eax                                      // 0x00546a4f    8bf8
                         add                esp, 0x18                                     // 0x00546a51    83c418
                         cmp.s              edi, ebx                                      // 0x00546a54    3bfb
                         {disp8} je         _jmp_addr_0x00546aaf                          // 0x00546a56    7457
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012be // 0x00546a58    813dac7cd100be120000
                         {disp8} ja         _jmp_addr_0x00546a6b                          // 0x00546a62    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00546a64    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00546a77                          // 0x00546a69    eb0c
_jmp_addr_0x00546a6b:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546a6b    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e0e8]             // 0x00546a71    8d82e8e00000
_jmp_addr_0x00546a77:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546a77    8b4008
                         push               eax                                           // 0x00546a7a    50
                         push               0x1e                                          // 0x00546a7b    6a1e
                         push               0x000000fa                                    // 0x00546a7d    68fa000000
                         push               0x00000136                                    // 0x00546a82    6836010000
                         push               0x64                                          // 0x00546a87    6a64
                         push               0x000003e7                                    // 0x00546a89    68e7030000
                         mov.s              ecx, edi                                      // 0x00546a8e    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00546a90    e8bb27ecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x00546a95    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x00546a9b    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x00546aa1    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x00546aa7    899f40020000
                         {disp8} jmp        _jmp_addr_0x00546ab1                          // 0x00546aad    eb02
_jmp_addr_0x00546aaf:    xor.s              edi, edi                                      // 0x00546aaf    33ff
_jmp_addr_0x00546ab1:    push               0x76                                          // 0x00546ab1    6a76
                         push               0x00bea7c8                                    // 0x00546ab3    68c8a7be00
                         push               0x000002b0                                    // 0x00546ab8    68b0020000
                         {disp32} mov       dword ptr [esi + 0x0000046c], edi             // 0x00546abd    89be6c040000
                         call               ___nw__FUl                                    // 0x00546ac3    e8c84c2900
                         add                esp, 0x0c                                     // 0x00546ac8    83c40c
                         cmp.s              eax, ebx                                      // 0x00546acb    3bc3
                         {disp8} je         _jmp_addr_0x00546ae8                          // 0x00546acd    7419
                         push               0x3c                                          // 0x00546acf    6a3c
                         push               0x000000c8                                    // 0x00546ad1    68c8000000
                         push               0x0000015e                                    // 0x00546ad6    685e010000
                         push               0x64                                          // 0x00546adb    6a64
                         push               0xe                                           // 0x00546add    6a0e
                         mov.s              ecx, eax                                      // 0x00546adf    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x00546ae1    e86a39ecff
                         {disp8} jmp        _jmp_addr_0x00546aea                          // 0x00546ae6    eb02
_jmp_addr_0x00546ae8:    xor.s              eax, eax                                      // 0x00546ae8    33c0
_jmp_addr_0x00546aea:    push               0x79                                          // 0x00546aea    6a79
                         push               0x00bea7c8                                    // 0x00546aec    68c8a7be00
                         push               0x00000244                                    // 0x00546af1    6844020000
                         {disp32} mov       dword ptr [esi + 0x000004a8], eax             // 0x00546af6    8986a8040000
                         call               ___nw__FUl                                    // 0x00546afc    e88f4c2900
                         mov.s              edi, eax                                      // 0x00546b01    8bf8
                         add                esp, 0x0c                                     // 0x00546b03    83c40c
                         cmp.s              edi, ebx                                      // 0x00546b06    3bfb
                         {disp8} je         _jmp_addr_0x00546b64                          // 0x00546b08    745a
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012bf // 0x00546b0a    813dac7cd100bf120000
                         {disp8} ja         _jmp_addr_0x00546b1d                          // 0x00546b14    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00546b16    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00546b29                          // 0x00546b1b    eb0c
_jmp_addr_0x00546b1d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546b1d    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000e0f4]             // 0x00546b23    8d81f4e00000
_jmp_addr_0x00546b29:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00546b29    8b5008
                         push               edx                                           // 0x00546b2c    52
                         push               0x1e                                          // 0x00546b2d    6a1e
                         push               0x000000fa                                    // 0x00546b2f    68fa000000
                         push               0x00000136                                    // 0x00546b34    6836010000
                         push               0x00000140                                    // 0x00546b39    6840010000
                         push               0x000003e7                                    // 0x00546b3e    68e7030000
                         mov.s              ecx, edi                                      // 0x00546b43    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00546b45    e80627ecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x00546b4a    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], ebx             // 0x00546b50    899f3c020000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x00546b56    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x00546b5c    899f40020000
                         {disp8} jmp        _jmp_addr_0x00546b66                          // 0x00546b62    eb02
_jmp_addr_0x00546b64:    xor.s              edi, edi                                      // 0x00546b64    33ff
_jmp_addr_0x00546b66:    push               0x7a                                          // 0x00546b66    6a7a
                         push               0x00bea7c8                                    // 0x00546b68    68c8a7be00
                         push               0x000002b0                                    // 0x00546b6d    68b0020000
                         {disp32} mov       dword ptr [esi + 0x00000470], edi             // 0x00546b72    89be70040000
                         call               ___nw__FUl                                    // 0x00546b78    e8134c2900
                         add                esp, 0x0c                                     // 0x00546b7d    83c40c
                         cmp.s              eax, ebx                                      // 0x00546b80    3bc3
                         pop                edi                                           // 0x00546b82    5f
                         {disp8} je         _jmp_addr_0x00546ba1                          // 0x00546b83    741c
                         push               0x3c                                          // 0x00546b85    6a3c
                         push               0x000000c8                                    // 0x00546b87    68c8000000
                         push               0x0000015e                                    // 0x00546b8c    685e010000
                         push               0x00000140                                    // 0x00546b91    6840010000
                         push               0xf                                           // 0x00546b96    6a0f
                         mov.s              ecx, eax                                      // 0x00546b98    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x00546b9a    e8b138ecff
                         {disp8} jmp        _jmp_addr_0x00546ba3                          // 0x00546b9f    eb02
_jmp_addr_0x00546ba1:    xor.s              eax, eax                                      // 0x00546ba1    33c0
_jmp_addr_0x00546ba3:    push               0x7c                                          // 0x00546ba3    6a7c
                         push               0x00bea7c8                                    // 0x00546ba5    68c8a7be00
                         push               0x00000244                                    // 0x00546baa    6844020000
                         {disp32} mov       dword ptr [esi + 0x000004ac], eax             // 0x00546baf    8986ac040000
                         call               ___nw__FUl                                    // 0x00546bb5    e8d64b2900
                         add                esp, 0x0c                                     // 0x00546bba    83c40c
                         cmp.s              eax, ebx                                      // 0x00546bbd    3bc3
                         {disp8} je         _jmp_addr_0x00546c0d                          // 0x00546bbf    744c
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012c0 // 0x00546bc1    813dac7cd100c0120000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546bcb    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x00546bd9                          // 0x00546bd1    7606
                         add                ecx, 0x0000e100                               // 0x00546bd3    81c100e10000
_jmp_addr_0x00546bd9:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00546bd9    8b4908
                         push               ebx                                           // 0x00546bdc    53
                         push               ecx                                           // 0x00546bdd    51
                         push               0x1e                                          // 0x00546bde    6a1e
                         push               0x000000c8                                    // 0x00546be0    68c8000000
                         push               0x000001b8                                    // 0x00546be5    68b8010000
                         push               0x00000140                                    // 0x00546bea    6840010000
                         push               0x11                                          // 0x00546bef    6a11
                         mov.s              ecx, eax                                      // 0x00546bf1    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00546bf3    e8b82cecff
                         {disp32} mov       dword ptr [esi + 0x000004a4], eax             // 0x00546bf8    8986a4040000
                         pop                esi                                           // 0x00546bfe    5e
                         {disp32} mov       dword ptr [eax + 0x00000238], 0x00546d00      // 0x00546bff    c78038020000006d5400
                         pop                ebx                                           // 0x00546c09    5b
                         ret                0x000c                                        // 0x00546c0a    c20c00
_jmp_addr_0x00546c0d:    {disp32} mov       dword ptr [esi + 0x000004a4], ebx             // 0x00546c0d    899ea4040000
                         pop                esi                                           // 0x00546c13    5e
                         {disp32} mov       dword ptr [ebx + 0x00000238], 0x00546d00      // 0x00546c14    c78338020000006d5400
                         pop                ebx                                           // 0x00546c1e    5b
                         ret                0x000c                                        // 0x00546c1f    c20c00
                         nop                                                              // 0x00546c22    90
                         nop                                                              // 0x00546c23    90
                         nop                                                              // 0x00546c24    90
                         nop                                                              // 0x00546c25    90
                         nop                                                              // 0x00546c26    90
                         nop                                                              // 0x00546c27    90
                         nop                                                              // 0x00546c28    90
                         nop                                                              // 0x00546c29    90
                         nop                                                              // 0x00546c2a    90
                         nop                                                              // 0x00546c2b    90
                         nop                                                              // 0x00546c2c    90
                         nop                                                              // 0x00546c2d    90
                         nop                                                              // 0x00546c2e    90
                         nop                                                              // 0x00546c2f    90
_jmp_addr_0x00546c30:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00546c30    d9442404
                         {disp32} fcomp     dword ptr [__real@3e999999]                   // 0x00546c34    d81d3cb28a00
                         fnstsw             ax                                            // 0x00546c3a    dfe0
                         test               ah, 0x01                                      // 0x00546c3c    f6c401
                         {disp8} je         _jmp_addr_0x00546c6e                          // 0x00546c3f    742d
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001156 // 0x00546c41    813dac7cd10056110000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00546c4b    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00546c57                          // 0x00546c50    7605
                         add                eax, 0x0000d008                               // 0x00546c52    0508d00000
_jmp_addr_0x00546c57:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00546c57    8b4808
                         push               ecx                                           // 0x00546c5a    51
                         push               0x00cd125c                                    // 0x00546c5b    685c12cd00
                         call               _wcscpy                                       // 0x00546c60    e851f32700
                         add                esp, 0x08                                     // 0x00546c65    83c408
                         mov                eax, 0x00cd125c                               // 0x00546c68    b85c12cd00
                         ret                                                              // 0x00546c6d    c3
_jmp_addr_0x00546c6e:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00546c6e    d9442404
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ebdc]             // 0x00546c72    d81ddc7b8c00
                         fnstsw             ax                                            // 0x00546c78    dfe0
                         test               ah, 0x41                                      // 0x00546c7a    f6c441
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]        // 0x00546c7d    a1ac7cd100
                         {disp8} jne        _jmp_addr_0x00546cca                          // 0x00546c82    7546
                         cmp                eax, 0x00001158                               // 0x00546c84    3d58110000
                         {disp8} ja         _jmp_addr_0x00546ca7                          // 0x00546c89    771c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00546c8b    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546c90    8b4008
                         push               eax                                           // 0x00546c93    50
                         push               0x00cd125c                                    // 0x00546c94    685c12cd00
                         call               _wcscpy                                       // 0x00546c99    e818f32700
                         add                esp, 0x08                                     // 0x00546c9e    83c408
                         mov                eax, 0x00cd125c                               // 0x00546ca1    b85c12cd00
                         ret                                                              // 0x00546ca6    c3
_jmp_addr_0x00546ca7:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00546ca7    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d020]             // 0x00546cad    8d8220d00000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546cb3    8b4008
                         push               eax                                           // 0x00546cb6    50
                         push               0x00cd125c                                    // 0x00546cb7    685c12cd00
                         call               _wcscpy                                       // 0x00546cbc    e8f5f22700
                         add                esp, 0x08                                     // 0x00546cc1    83c408
                         mov                eax, 0x00cd125c                               // 0x00546cc4    b85c12cd00
                         ret                                                              // 0x00546cc9    c3
_jmp_addr_0x00546cca:    cmp                eax, 0x00001157                               // 0x00546cca    3d57110000
                         {disp8} ja         _jmp_addr_0x00546cd8                          // 0x00546ccf    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00546cd1    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00546ce4                          // 0x00546cd6    eb0c
_jmp_addr_0x00546cd8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00546cd8    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000d014]             // 0x00546cde    8d8114d00000
_jmp_addr_0x00546ce4:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00546ce4    8b5008
                         push               edx                                           // 0x00546ce7    52
                         push               0x00cd125c                                    // 0x00546ce8    685c12cd00
                         call               _wcscpy                                       // 0x00546ced    e8c4f22700
                         add                esp, 0x08                                     // 0x00546cf2    83c408
                         mov                eax, 0x00cd125c                               // 0x00546cf5    b85c12cd00
                         ret                                                              // 0x00546cfa    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00546cfb    e879abebff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00546d00    a16416cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x00000444]             // 0x00546d05    8b8844040000
                         mov                edx, dword ptr [ecx]                          // 0x00546d0b    8b11
                         {disp8} jmp        dword ptr [edx + 0xc]                         // 0x00546d0d    ff620c
?Destroy@SetupLandscapeBox@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00546d10    e87bc8fcff
                         {disp32} mov       dword ptr [data_bytes + 0x30b664], 0x00000000 // 0x00546d15    c7056416cd0000000000
                         ret                                                              // 0x00546d1f    c3
?InitControls@SetupLandscapeBox@@UAEXXZ:
                         push               ebx                                           // 0x00546d20    53
                         push               esi                                           // 0x00546d21    56
                         mov.s              ebx, ecx                                      // 0x00546d22    8bd9
                         call               _GetSmallTextSize__Fv                         // 0x00546d24    e8e70cecff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b664]        // 0x00546d29    8b0d6416cd00
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00546d2f    8b5104
                         {disp32} mov       dword ptr [edx + 0x000000ac], eax             // 0x00546d32    8982ac000000
                         {disp8} mov        al, byte ptr [ebx + 0x10]                     // 0x00546d38    8a4310
                         test               al, al                                        // 0x00546d3b    84c0
                         {disp8} je         _jmp_addr_0x00546d4e                          // 0x00546d3d    740f
                         {disp8} mov        esi, dword ptr [ebx + 0x14]                   // 0x00546d3f    8b7314
                         push               edi                                           // 0x00546d42    57
                         {disp8} lea        edi, dword ptr [ebx + 0x18]                   // 0x00546d43    8d7b18
                         mov                ecx, 0x0000010b                               // 0x00546d46    b90b010000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00546d4b    f3a5
                         pop                edi                                           // 0x00546d4d    5f
_jmp_addr_0x00546d4e:    {disp32} mov       ecx, dword ptr [ebx + 0x00000484]             // 0x00546d4e    8b8b84040000
                         xor.s              eax, eax                                      // 0x00546d54    33c0
                         {disp32} mov       al, byte ptr [ebx + 0x0000040d]               // 0x00546d56    8a830d040000
                         xor.s              edx, edx                                      // 0x00546d5c    33d2
                         {disp8} mov        byte ptr [ebx + 0x10], 0x00                   // 0x00546d5e    c6431000
                         {disp32} mov       dword ptr [ecx + 0x00000248], eax             // 0x00546d62    898148020000
                         {disp32} mov       dl, byte ptr [ebx + 0x0000040e]               // 0x00546d68    8a930e040000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000488]             // 0x00546d6e    8b8388040000
                         xor.s              ecx, ecx                                      // 0x00546d74    33c9
                         {disp32} mov       dword ptr [eax + 0x00000248], edx             // 0x00546d76    899048020000
                         {disp32} mov       cl, byte ptr [ebx + 0x00000429]               // 0x00546d7c    8a8b29040000
                         {disp32} mov       edx, dword ptr [ebx + 0x0000049c]             // 0x00546d82    8b939c040000
                         xor.s              eax, eax                                      // 0x00546d88    33c0
                         {disp32} mov       dword ptr [edx + 0x00000248], ecx             // 0x00546d8a    898a48020000
                         {disp32} mov       al, byte ptr [ebx + 0x00000425]               // 0x00546d90    8a8325040000
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000048c]             // 0x00546d96    8b8b8c040000
                         xor.s              edx, edx                                      // 0x00546d9c    33d2
                         {disp32} mov       dword ptr [ecx + 0x00000248], eax             // 0x00546d9e    898148020000
                         {disp32} mov       dl, byte ptr [ebx + 0x00000428]               // 0x00546da4    8a9328040000
                         {disp32} mov       eax, dword ptr [ebx + 0x00000498]             // 0x00546daa    8b8398040000
                         {disp32} mov       dword ptr [eax + 0x00000248], edx             // 0x00546db0    899048020000
                         {disp32} fild      dword ptr [ebx + 0x0000042c]                  // 0x00546db6    db832c040000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000474]             // 0x00546dbc    8b8b74040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x35d00]             // 0x00546dc2    d80d00ed8d00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00546dc8    d81598a38a00
                         fnstsw             ax                                            // 0x00546dce    dfe0
                         test               ah, 0x41                                      // 0x00546dd0    f6c441
                         {disp8} jne        _jmp_addr_0x00546dec                          // 0x00546dd3    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00546dd5    d81590a38a00
                         fnstsw             ax                                            // 0x00546ddb    dfe0
                         test               ah, 0x01                                      // 0x00546ddd    f6c401
                         {disp8} jne        _jmp_addr_0x00546df4                          // 0x00546de0    7512
                         fstp               st(0)                                         // 0x00546de2    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00546de4    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00546df4                          // 0x00546dea    eb08
_jmp_addr_0x00546dec:    fstp               st(0)                                         // 0x00546dec    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00546dee    d90598a38a00
_jmp_addr_0x00546df4:    {disp32} fstp      dword ptr [ecx + 0x0000023c]                  // 0x00546df4    d9993c020000
                         {disp32} mov       edx, dword ptr [ebx + 0x00000490]             // 0x00546dfa    8b9390040000
                         xor.s              ecx, ecx                                      // 0x00546e00    33c9
                         {disp32} mov       cl, byte ptr [ebx + 0x00000426]               // 0x00546e02    8a8b26040000
                         xor.s              eax, eax                                      // 0x00546e08    33c0
                         {disp32} mov       dword ptr [edx + 0x00000248], ecx             // 0x00546e0a    898a48020000
                         {disp32} mov       al, byte ptr [ebx + 0x00000427]               // 0x00546e10    8a8327040000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000494]             // 0x00546e16    8b8b94040000
                         {disp32} mov       dword ptr [ecx + 0x00000248], eax             // 0x00546e1c    898148020000
                         {disp32} fld       dword ptr [ebx + 0x00000430]                  // 0x00546e22    d98330040000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00546e28    d81598a38a00
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000047c]             // 0x00546e2e    8b8b7c040000
                         fnstsw             ax                                            // 0x00546e34    dfe0
                         test               ah, 0x41                                      // 0x00546e36    f6c441
                         {disp8} jne        _jmp_addr_0x00546e52                          // 0x00546e39    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00546e3b    d81590a38a00
                         fnstsw             ax                                            // 0x00546e41    dfe0
                         test               ah, 0x01                                      // 0x00546e43    f6c401
                         {disp8} jne        _jmp_addr_0x00546e5a                          // 0x00546e46    7512
                         fstp               st(0)                                         // 0x00546e48    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00546e4a    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00546e5a                          // 0x00546e50    eb08
_jmp_addr_0x00546e52:    fstp               st(0)                                         // 0x00546e52    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00546e54    d90598a38a00
_jmp_addr_0x00546e5a:    {disp32} fstp      dword ptr [ecx + 0x0000023c]                  // 0x00546e5a    d9993c020000
                         {disp32} fld       dword ptr [ebx + 0x00000434]                  // 0x00546e60    d98334040000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000478]             // 0x00546e66    8b8b78040000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00546e6c    d81598a38a00
                         fnstsw             ax                                            // 0x00546e72    dfe0
                         test               ah, 0x41                                      // 0x00546e74    f6c441
                         {disp8} jne        _jmp_addr_0x00546e90                          // 0x00546e77    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00546e79    d81590a38a00
                         fnstsw             ax                                            // 0x00546e7f    dfe0
                         test               ah, 0x01                                      // 0x00546e81    f6c401
                         {disp8} jne        _jmp_addr_0x00546e98                          // 0x00546e84    7512
                         fstp               st(0)                                         // 0x00546e86    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00546e88    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00546e98                          // 0x00546e8e    eb08
_jmp_addr_0x00546e90:    fstp               st(0)                                         // 0x00546e90    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00546e92    d90598a38a00
_jmp_addr_0x00546e98:    {disp32} fstp      dword ptr [ecx + 0x0000023c]                  // 0x00546e98    d9993c020000
                         {disp32} fld       dword ptr [ebx + 0x00000438]                  // 0x00546e9e    d98338040000
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000480]             // 0x00546ea4    8b8b80040000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00546eaa    d81598a38a00
                         fnstsw             ax                                            // 0x00546eb0    dfe0
                         test               ah, 0x41                                      // 0x00546eb2    f6c441
                         {disp8} jne        _jmp_addr_0x00546ece                          // 0x00546eb5    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00546eb7    d81590a38a00
                         fnstsw             ax                                            // 0x00546ebd    dfe0
                         test               ah, 0x01                                      // 0x00546ebf    f6c401
                         {disp8} jne        _jmp_addr_0x00546ed6                          // 0x00546ec2    7512
                         fstp               st(0)                                         // 0x00546ec4    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00546ec6    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00546ed6                          // 0x00546ecc    eb08
_jmp_addr_0x00546ece:    fstp               st(0)                                         // 0x00546ece    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00546ed0    d90598a38a00
_jmp_addr_0x00546ed6:    {disp32} fstp      dword ptr [ecx + 0x0000023c]                  // 0x00546ed6    d9993c020000
                         {disp32} mov       esi, dword ptr [ebx + 0x000004a8]             // 0x00546edc    8bb3a8040000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00546ee2    8b8650020000
                         test               eax, eax                                      // 0x00546ee8    85c0
                         {disp8} jle        _jmp_addr_0x00546eff                          // 0x00546eea    7e13
_jmp_addr_0x00546eec:    dec                eax                                           // 0x00546eec    48
                         push               eax                                           // 0x00546eed    50
                         mov.s              ecx, esi                                      // 0x00546eee    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x00546ef0    e86b3eecff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00546ef5    8b8650020000
                         test               eax, eax                                      // 0x00546efb    85c0
                         {disp8} jg         _jmp_addr_0x00546eec                          // 0x00546efd    7fed
_jmp_addr_0x00546eff:    push               0x000012c1                                    // 0x00546eff    68c1120000
                         mov                ecx, 0x00d17ca8                               // 0x00546f04    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x00546f09    e8e298f2ff
                         {disp32} mov       esi, dword ptr [ebx + 0x000004a8]             // 0x00546f0e    8bb3a8040000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546f14    8b4008
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x00546f17    8b9650020000
                         push               eax                                           // 0x00546f1d    50
                         push               edx                                           // 0x00546f1e    52
                         mov.s              ecx, esi                                      // 0x00546f1f    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00546f21    e84a3fecff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00546f26    8b8650020000
                         push               0x0                                           // 0x00546f2c    6a00
                         dec                eax                                           // 0x00546f2e    48
                         push               eax                                           // 0x00546f2f    50
                         mov.s              ecx, esi                                      // 0x00546f30    8bce
                         call               _jmp_addr_0x005471c0                          // 0x00546f32    e889020000
                         push               0x000012c2                                    // 0x00546f37    68c2120000
                         mov                ecx, 0x00d17ca8                               // 0x00546f3c    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x00546f41    e8aa98f2ff
                         {disp32} mov       esi, dword ptr [ebx + 0x000004a8]             // 0x00546f46    8bb3a8040000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546f4c    8b4008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00546f4f    8b8e50020000
                         push               eax                                           // 0x00546f55    50
                         push               ecx                                           // 0x00546f56    51
                         mov.s              ecx, esi                                      // 0x00546f57    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00546f59    e8123fecff
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x00546f5e    8b9650020000
                         push               0x0                                           // 0x00546f64    6a00
                         dec                edx                                           // 0x00546f66    4a
                         push               edx                                           // 0x00546f67    52
                         mov.s              ecx, esi                                      // 0x00546f68    8bce
                         call               _jmp_addr_0x005471c0                          // 0x00546f6a    e851020000
                         push               0x000012c3                                    // 0x00546f6f    68c3120000
                         mov                ecx, 0x00d17ca8                               // 0x00546f74    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x00546f79    e87298f2ff
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546f7e    8b4008
                         {disp32} mov       esi, dword ptr [ebx + 0x000004a8]             // 0x00546f81    8bb3a8040000
                         push               eax                                           // 0x00546f87    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00546f88    8b8650020000
                         push               eax                                           // 0x00546f8e    50
                         mov.s              ecx, esi                                      // 0x00546f8f    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00546f91    e8da3eecff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00546f96    8b8e50020000
                         dec                ecx                                           // 0x00546f9c    49
                         push               0x0                                           // 0x00546f9d    6a00
                         push               ecx                                           // 0x00546f9f    51
                         mov.s              ecx, esi                                      // 0x00546fa0    8bce
                         call               _jmp_addr_0x005471c0                          // 0x00546fa2    e819020000
                         push               0x000012c4                                    // 0x00546fa7    68c4120000
                         mov                ecx, 0x00d17ca8                               // 0x00546fac    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x00546fb1    e83a98f2ff
                         {disp32} mov       esi, dword ptr [ebx + 0x000004a8]             // 0x00546fb6    8bb3a8040000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546fbc    8b4008
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x00546fbf    8b9650020000
                         push               eax                                           // 0x00546fc5    50
                         push               edx                                           // 0x00546fc6    52
                         mov.s              ecx, esi                                      // 0x00546fc7    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00546fc9    e8a23eecff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00546fce    8b8650020000
                         push               0x0                                           // 0x00546fd4    6a00
                         dec                eax                                           // 0x00546fd6    48
                         push               eax                                           // 0x00546fd7    50
                         mov.s              ecx, esi                                      // 0x00546fd8    8bce
                         call               _jmp_addr_0x005471c0                          // 0x00546fda    e8e1010000
                         push               0x000012c5                                    // 0x00546fdf    68c5120000
                         mov                ecx, 0x00d17ca8                               // 0x00546fe4    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x00546fe9    e80298f2ff
                         {disp32} mov       esi, dword ptr [ebx + 0x000004a8]             // 0x00546fee    8bb3a8040000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00546ff4    8b4008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00546ff7    8b8e50020000
                         push               eax                                           // 0x00546ffd    50
                         push               ecx                                           // 0x00546ffe    51
                         mov.s              ecx, esi                                      // 0x00546fff    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00547001    e86a3eecff
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x00547006    8b9650020000
                         push               0x0                                           // 0x0054700c    6a00
                         dec                edx                                           // 0x0054700e    4a
                         push               edx                                           // 0x0054700f    52
                         mov.s              ecx, esi                                      // 0x00547010    8bce
                         call               _jmp_addr_0x005471c0                          // 0x00547012    e8a9010000
                         {disp32} mov       esi, dword ptr [ebx + 0x000004ac]             // 0x00547017    8bb3ac040000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x0054701d    8b8650020000
                         test               eax, eax                                      // 0x00547023    85c0
                         {disp8} jle        _jmp_addr_0x0054703a                          // 0x00547025    7e13
_jmp_addr_0x00547027:    dec                eax                                           // 0x00547027    48
                         push               eax                                           // 0x00547028    50
                         mov.s              ecx, esi                                      // 0x00547029    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x0054702b    e8303decff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00547030    8b8650020000
                         test               eax, eax                                      // 0x00547036    85c0
                         {disp8} jg         _jmp_addr_0x00547027                          // 0x00547038    7fed
_jmp_addr_0x0054703a:    push               0x000012c6                                    // 0x0054703a    68c6120000
                         mov                ecx, 0x00d17ca8                               // 0x0054703f    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x00547044    e8a797f2ff
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00547049    8b4008
                         {disp32} mov       esi, dword ptr [ebx + 0x000004ac]             // 0x0054704c    8bb3ac040000
                         push               eax                                           // 0x00547052    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00547053    8b8650020000
                         push               eax                                           // 0x00547059    50
                         mov.s              ecx, esi                                      // 0x0054705a    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x0054705c    e80f3eecff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00547061    8b8e50020000
                         dec                ecx                                           // 0x00547067    49
                         push               0x0                                           // 0x00547068    6a00
                         push               ecx                                           // 0x0054706a    51
                         mov.s              ecx, esi                                      // 0x0054706b    8bce
                         call               _jmp_addr_0x005471c0                          // 0x0054706d    e84e010000
                         push               0x000012c7                                    // 0x00547072    68c7120000
                         mov                ecx, 0x00d17ca8                               // 0x00547077    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0054707c    e86f97f2ff
                         {disp32} mov       esi, dword ptr [ebx + 0x000004ac]             // 0x00547081    8bb3ac040000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00547087    8b4008
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x0054708a    8b9650020000
                         push               eax                                           // 0x00547090    50
                         push               edx                                           // 0x00547091    52
                         mov.s              ecx, esi                                      // 0x00547092    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00547094    e8d73decff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00547099    8b8650020000
                         push               0x0                                           // 0x0054709f    6a00
                         dec                eax                                           // 0x005470a1    48
                         push               eax                                           // 0x005470a2    50
                         mov.s              ecx, esi                                      // 0x005470a3    8bce
                         call               _jmp_addr_0x005471c0                          // 0x005470a5    e816010000
                         push               0x000012c8                                    // 0x005470aa    68c8120000
                         mov                ecx, 0x00d17ca8                               // 0x005470af    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x005470b4    e83797f2ff
                         {disp32} mov       esi, dword ptr [ebx + 0x000004ac]             // 0x005470b9    8bb3ac040000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005470bf    8b4008
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x005470c2    8b8e50020000
                         push               eax                                           // 0x005470c8    50
                         push               ecx                                           // 0x005470c9    51
                         mov.s              ecx, esi                                      // 0x005470ca    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x005470cc    e89f3decff
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]             // 0x005470d1    8b9650020000
                         push               0x0                                           // 0x005470d7    6a00
                         dec                edx                                           // 0x005470d9    4a
                         push               edx                                           // 0x005470da    52
                         mov.s              ecx, esi                                      // 0x005470db    8bce
                         call               _jmp_addr_0x005471c0                          // 0x005470dd    e8de000000
                         push               0x000012c9                                    // 0x005470e2    68c9120000
                         mov                ecx, 0x00d17ca8                               // 0x005470e7    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x005470ec    e8ff96f2ff
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005470f1    8b4008
                         {disp32} mov       esi, dword ptr [ebx + 0x000004ac]             // 0x005470f4    8bb3ac040000
                         push               eax                                           // 0x005470fa    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005470fb    8b8650020000
                         push               eax                                           // 0x00547101    50
                         mov.s              ecx, esi                                      // 0x00547102    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x00547104    e8673decff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00547109    8b8e50020000
                         dec                ecx                                           // 0x0054710f    49
                         push               0x0                                           // 0x00547110    6a00
                         push               ecx                                           // 0x00547112    51
                         mov.s              ecx, esi                                      // 0x00547113    8bce
                         call               _jmp_addr_0x005471c0                          // 0x00547115    e8a6000000
                         {disp32} mov       edx, dword ptr [ebx + 0x00000440]             // 0x0054711a    8b9340040000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000004ac]             // 0x00547120    8b8bac040000
                         push               edx                                           // 0x00547126    52
                         call               _jmp_addr_0x00547150                          // 0x00547127    e824000000
                         {disp32} mov       eax, dword ptr [ebx + 0x0000043c]             // 0x0054712c    8b833c040000
                         {disp32} mov       ecx, dword ptr [ebx + 0x000004a8]             // 0x00547132    8b8ba8040000
                         push               eax                                           // 0x00547138    50
                         call               _jmp_addr_0x00547150                          // 0x00547139    e812000000
                         pop                esi                                           // 0x0054713e    5e
                         pop                ebx                                           // 0x0054713f    5b
                         ret                                                              // 0x00547140    c3
                         nop                                                              // 0x00547141    90
                         nop                                                              // 0x00547142    90
                         nop                                                              // 0x00547143    90
                         nop                                                              // 0x00547144    90
                         nop                                                              // 0x00547145    90
                         nop                                                              // 0x00547146    90
                         nop                                                              // 0x00547147    90
                         nop                                                              // 0x00547148    90
                         nop                                                              // 0x00547149    90
                         nop                                                              // 0x0054714a    90
                         nop                                                              // 0x0054714b    90
                         nop                                                              // 0x0054714c    90
                         nop                                                              // 0x0054714d    90
                         nop                                                              // 0x0054714e    90
                         nop                                                              // 0x0054714f    90
_jmp_addr_0x00547150:    push               esi                                           // 0x00547150    56
                         push               edi                                           // 0x00547151    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00547152    8b7c240c
                         test               edi, edi                                      // 0x00547156    85ff
                         mov.s              esi, ecx                                      // 0x00547158    8bf1
                         {disp8} jl         _jmp_addr_0x0054716c                          // 0x0054715a    7c10
                         cmp                edi, dword ptr [esi + 0x00000250]             // 0x0054715c    3bbe50020000
                         {disp8} jge        _jmp_addr_0x0054716c                          // 0x00547162    7d08
                         {disp32} mov       dword ptr [esi + 0x00000248], edi             // 0x00547164    89be48020000
                         {disp8} jmp        _jmp_addr_0x00547176                          // 0x0054716a    eb0a
_jmp_addr_0x0054716c:    {disp32} mov       dword ptr [esi + 0x00000248], 0xffffffff      // 0x0054716c    c78648020000ffffffff
_jmp_addr_0x00547176:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00547176    8b4604
                         test               eax, eax                                      // 0x00547179    85c0
                         {disp8} je         _jmp_addr_0x005471b8                          // 0x0054717b    743b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]        // 0x0054717d    a100cdc400
                         test               eax, eax                                      // 0x00547182    85c0
                         {disp8} je         _jmp_addr_0x005471b8                          // 0x00547184    7432
                         test               edi, edi                                      // 0x00547186    85ff
                         {disp8} jl         _jmp_addr_0x005471b8                          // 0x00547188    7c2e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x0054718a    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4// 0x00547190    e82bcc2a00
                         cmp.s              eax, edi                                      // 0x00547195    3bc7
                         {disp8} je         _jmp_addr_0x005471b8                          // 0x00547197    741f
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00547199    8b8650020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x0054719f    8b0d04c1e800
                         push               edi                                           // 0x005471a5    57
                         dec                eax                                           // 0x005471a6    48
                         push               eax                                           // 0x005471a7    50
                         push               0x0                                           // 0x005471a8    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                          // 0x005471aa    e831cc2a00
                         push               0x0                                           // 0x005471af    6a00
                         mov.s              ecx, esi                                      // 0x005471b1    8bce
                         call               @AutoScroll__9SetupListFb@9                   // 0x005471b3    e8182cecff
_jmp_addr_0x005471b8:    pop                edi                                           // 0x005471b8    5f
                         pop                esi                                           // 0x005471b9    5e
                         ret                0x0004                                        // 0x005471ba    c20400
                         nop                                                              // 0x005471bd    90
                         nop                                                              // 0x005471be    90
                         nop                                                              // 0x005471bf    90
_jmp_addr_0x005471c0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x005471c0    8b442404
                         test               eax, eax                                      // 0x005471c4    85c0
                         {disp8} jl         _jmp_addr_0x005471dd                          // 0x005471c6    7c15
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005471c8    3b8150020000
                         {disp8} jge        _jmp_addr_0x005471dd                          // 0x005471ce    7d0d
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000268]             // 0x005471d0    8b8968020000
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x005471d6    8b542408
                         mov                dword ptr [ecx + eax * 0x4], edx              // 0x005471da    891481
_jmp_addr_0x005471dd:    ret                0x0008                                        // 0x005471dd    c20800
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x005471e0    8b4c2404
                         cmp                ecx, 0x07                                     // 0x005471e4    83f907
                         push               ebx                                           // 0x005471e7    53
                         push               ebp                                           // 0x005471e8    55
                         push               esi                                           // 0x005471e9    56
                         push               edi                                           // 0x005471ea    57
                         {disp32} ja        _jmp_addr_0x00547916                          // 0x005471eb    0f8725070000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005471f1    a16416cd00
                         xor.s              ebx, ebx                                      // 0x005471f6    33db
                         jmp                dword ptr [ecx*4 + 0x547920]                  // 0x005471f8    ff248d20795400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b664]        // 0x005471ff    8b0d6416cd00
                         mov                eax, dword ptr [ecx]                          // 0x00547205    8b01
                         call               dword ptr [eax + 0x20]                        // 0x00547207    ff5020
                         pop                edi                                           // 0x0054720a    5f
                         pop                esi                                           // 0x0054720b    5e
                         pop                ebp                                           // 0x0054720c    5d
                         pop                ebx                                           // 0x0054720d    5b
                         ret                0x0014                                        // 0x0054720e    c21400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b680]        // 0x00547211    8b0d8016cd00
                         pop                edi                                           // 0x00547217    5f
                         pop                esi                                           // 0x00547218    5e
                         pop                ebp                                           // 0x00547219    5d
                         {disp8} mov        byte ptr [ecx + 0x10], 0x01                   // 0x0054721a    c6411001
                         pop                ebx                                           // 0x0054721e    5b
                         ret                0x0014                                        // 0x0054721f    c21400
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00547222    8b7c241c
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x00547226    8b4718
                         xor.s              ebx, ebx                                      // 0x00547229    33db
                         cmp                eax, 0x03                                     // 0x0054722b    83f803
                         {disp8} jne        _jmp_addr_0x005472a2                          // 0x0054722e    7572
                         cmp                byte ptr [edi + 0x00000229], bl               // 0x00547230    389f29020000
                         {disp8} jne        _jmp_addr_0x005472a2                          // 0x00547236    756a
                         {disp32} mov       esi, dword ptr [data_bytes + 0x30b664]        // 0x00547238    8b356416cd00
                         {disp32} mov       edx, dword ptr [esi + 0x00000474]             // 0x0054723e    8b9674040000
                         {disp32} fld       dword ptr [edx + 0x0000023c]                  // 0x00547244    d9823c020000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26e4]              // 0x0054724a    d80de4b68a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x00547250    d80578b48a00
                         call               _jmp_addr_0x007a1400                          // 0x00547256    e8a5a12500
                         {disp32} mov       dword ptr [esi + 0x0000042c], eax             // 0x0054725b    89862c040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000010e7 // 0x00547261    813dac7cd100e7100000
                         {disp8} ja         _jmp_addr_0x00547275                          // 0x0054726b    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054726d    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x00547280                          // 0x00547273    eb0b
_jmp_addr_0x00547275:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547275    a1a87cd100
                         {disp32} lea       ecx, dword ptr [eax + 0x0000cad4]             // 0x0054727a    8d88d4ca0000
_jmp_addr_0x00547280:    {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00547280    a16416cd00
                         {disp32} mov       edx, dword ptr [eax + 0x0000042c]             // 0x00547285    8b902c040000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054728b    8b4908
                         push               edx                                           // 0x0054728e    52
                         {disp32} mov       edx, dword ptr [eax + 0x0000045c]             // 0x0054728f    8b905c040000
                         push               ecx                                           // 0x00547295    51
                         add                edx, 0x24                                     // 0x00547296    83c224
                         push               edx                                           // 0x00547299    52
                         call               _swprintf                                     // 0x0054729a    e8e0f12700
                         add                esp, 0x0c                                     // 0x0054729f    83c40c
_jmp_addr_0x005472a2:    cmp                dword ptr [edi + 0x18], 0x0c                  // 0x005472a2    837f180c
                         {disp8} jne        _jmp_addr_0x0054730e                          // 0x005472a6    7566
                         cmp                byte ptr [edi + 0x00000229], bl               // 0x005472a8    389f29020000
                         {disp8} jne        _jmp_addr_0x0054730e                          // 0x005472ae    755e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005472b0    a16416cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x00000478]             // 0x005472b5    8b8878040000
                         {disp32} mov       edx, dword ptr [ecx + 0x0000023c]             // 0x005472bb    8b913c020000
                         {disp32} mov       dword ptr [eax + 0x00000434], edx             // 0x005472c1    899034040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115b // 0x005472c7    813dac7cd1005b110000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005472d1    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005472dd                          // 0x005472d6    7605
                         add                eax, 0x0000d044                               // 0x005472d8    0544d00000
_jmp_addr_0x005472dd:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b664]        // 0x005472dd    8b0d6416cd00
                         {disp32} mov       edx, dword ptr [ecx + 0x00000434]             // 0x005472e3    8b9134040000
                         {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x005472e9    8b7008
                         push               edx                                           // 0x005472ec    52
                         call               _jmp_addr_0x00546c30                          // 0x005472ed    e83ef9ffff
                         add                esp, 0x04                                     // 0x005472f2    83c404
                         push               eax                                           // 0x005472f5    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005472f6    a16416cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x00000460]             // 0x005472fb    8b8860040000
                         add                ecx, 0x24                                     // 0x00547301    83c124
                         push               esi                                           // 0x00547304    56
                         push               ecx                                           // 0x00547305    51
                         call               _swprintf                                     // 0x00547306    e874f12700
                         add                esp, 0x0c                                     // 0x0054730b    83c40c
_jmp_addr_0x0054730e:    cmp                dword ptr [edi + 0x18], 0x0b                  // 0x0054730e    837f180b
                         {disp8} jne        _jmp_addr_0x00547383                          // 0x00547312    756f
                         cmp                byte ptr [edi + 0x00000229], bl               // 0x00547314    389f29020000
                         {disp8} jne        _jmp_addr_0x00547383                          // 0x0054731a    7567
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x0054731c    a16416cd00
                         {disp32} mov       edx, dword ptr [eax + 0x0000047c]             // 0x00547321    8b907c040000
                         {disp32} mov       ecx, dword ptr [edx + 0x0000023c]             // 0x00547327    8b8a3c020000
                         {disp32} mov       dword ptr [eax + 0x00000430], ecx             // 0x0054732d    898830040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115c // 0x00547333    813dac7cd1005c110000
                         {disp8} ja         _jmp_addr_0x00547346                          // 0x0054733d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054733f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00547352                          // 0x00547344    eb0c
_jmp_addr_0x00547346:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00547346    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d050]             // 0x0054734c    8d8250d00000
_jmp_addr_0x00547352:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x00547352    8b7008
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00547355    a16416cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x00000430]             // 0x0054735a    8b8830040000
                         push               ecx                                           // 0x00547360    51
                         call               _jmp_addr_0x00546c30                          // 0x00547361    e8caf8ffff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b664]        // 0x00547366    8b156416cd00
                         add                esp, 0x04                                     // 0x0054736c    83c404
                         push               eax                                           // 0x0054736f    50
                         {disp32} mov       eax, dword ptr [edx + 0x00000464]             // 0x00547370    8b8264040000
                         add                eax, 0x24                                     // 0x00547376    83c024
                         push               esi                                           // 0x00547379    56
                         push               eax                                           // 0x0054737a    50
                         call               _swprintf                                     // 0x0054737b    e8fff02700
                         add                esp, 0x0c                                     // 0x00547380    83c40c
_jmp_addr_0x00547383:    cmp                dword ptr [edi + 0x18], 0x0d                  // 0x00547383    837f180d
                         {disp32} jne       _jmp_addr_0x00547916                          // 0x00547387    0f8589050000
                         cmp                byte ptr [edi + 0x00000229], bl               // 0x0054738d    389f29020000
                         {disp32} jne       _jmp_addr_0x00547916                          // 0x00547393    0f857d050000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00547399    a16416cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x00000480]             // 0x0054739e    8b8880040000
                         {disp32} mov       edx, dword ptr [ecx + 0x0000023c]             // 0x005473a4    8b913c020000
                         {disp32} mov       dword ptr [eax + 0x00000438], edx             // 0x005473aa    899038040000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115d // 0x005473b0    813dac7cd1005d110000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005473ba    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005473c6                          // 0x005473bf    7605
                         add                eax, 0x0000d05c                               // 0x005473c1    055cd00000
_jmp_addr_0x005473c6:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b664]        // 0x005473c6    8b0d6416cd00
                         {disp32} mov       edx, dword ptr [ecx + 0x00000438]             // 0x005473cc    8b9138040000
                         {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x005473d2    8b7008
                         push               edx                                           // 0x005473d5    52
                         call               _jmp_addr_0x00546c30                          // 0x005473d6    e855f8ffff
                         add                esp, 0x04                                     // 0x005473db    83c404
                         push               eax                                           // 0x005473de    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005473df    a16416cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x00000468]             // 0x005473e4    8b8868040000
                         add                ecx, 0x24                                     // 0x005473ea    83c124
                         push               esi                                           // 0x005473ed    56
                         push               ecx                                           // 0x005473ee    51
                         call               _swprintf                                     // 0x005473ef    e88bf02700
                         add                esp, 0x0c                                     // 0x005473f4    83c40c
                         pop                edi                                           // 0x005473f7    5f
                         pop                esi                                           // 0x005473f8    5e
                         pop                ebp                                           // 0x005473f9    5d
                         pop                ebx                                           // 0x005473fa    5b
                         ret                0x0014                                        // 0x005473fb    c21400
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x005473fe    8b4c2420
                         cmp                ecx, 0x0000009c                               // 0x00547402    81f99c000000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00547408    8b542424
                         {disp8} je         _jmp_addr_0x00547413                          // 0x0054740c    7405
                         cmp                ecx, 0x1c                                     // 0x0054740e    83f91c
                         {disp8} jne        _jmp_addr_0x00547417                          // 0x00547411    7504
_jmp_addr_0x00547413:    cmp.s              edx, ebx                                      // 0x00547413    3bd3
                         {disp8} je         _jmp_addr_0x00547430                          // 0x00547415    7419
_jmp_addr_0x00547417:    cmp                ecx, 0x01                                     // 0x00547417    83f901
                         {disp32} jne       _jmp_addr_0x00547916                          // 0x0054741a    0f85f6040000
                         cmp.s              edx, ebx                                      // 0x00547420    3bd3
                         {disp32} jne       _jmp_addr_0x00547916                          // 0x00547422    0f85ee040000
                         {disp32} mov       ebp, dword ptr [eax + 0x00000454]             // 0x00547428    8ba854040000
                         {disp8} jmp        _jmp_addr_0x00547434                          // 0x0054742e    eb04
_jmp_addr_0x00547430:    {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x00547430    8b6c241c
_jmp_addr_0x00547434:    cmp.s              ebp, ebx                                      // 0x00547434    3beb
                         {disp32} je        _jmp_addr_0x00547916                          // 0x00547436    0f84da040000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000238]             // 0x0054743c    8b8d38020000
                         cmp.s              ecx, ebx                                      // 0x00547442    3bcb
                         {disp8} je         _jmp_addr_0x00547458                          // 0x00547444    7412
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00547446    8b542418
                         push               ebp                                           // 0x0054744a    55
                         push               edx                                           // 0x0054744b    52
                         call               ecx                                           // 0x0054744c    ffd1
                         add                esp, 0x08                                     // 0x0054744e    83c408
                         pop                edi                                           // 0x00547451    5f
                         pop                esi                                           // 0x00547452    5e
                         pop                ebp                                           // 0x00547453    5d
                         pop                ebx                                           // 0x00547454    5b
                         ret                0x0014                                        // 0x00547455    c21400
_jmp_addr_0x00547458:    cmp                dword ptr [ebp + 0x18], ebx                   // 0x00547458    395d18
                         {disp8} jne        _jmp_addr_0x005474cc                          // 0x0054745b    756f
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x0054745d    389d29020000
                         {disp8} jne        _jmp_addr_0x005474cc                          // 0x00547463    7567
                         {disp8} mov        edi, dword ptr [eax + 0x14]                   // 0x00547465    8b7814
                         {disp8} lea        esi, dword ptr [eax + 0x18]                   // 0x00547468    8d7018
                         mov                ecx, 0x0000010b                               // 0x0054746b    b90b010000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00547470    f3a5
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00547472    a16416cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x00000448]             // 0x00547477    8b8848040000
                         add                ecx, 0x24                                     // 0x0054747d    83c124
                         push               ecx                                           // 0x00547480    51
                         call               _jmp_addr_0x0053b4a0                          // 0x00547481    e81a40ffff
                         or                 ecx, 0xffffffff                               // 0x00547486    83c9ff
                         mov.s              edi, eax                                      // 0x00547489    8bf8
                         xor.s              eax, eax                                      // 0x0054748b    33c0
                         add                esp, 0x04                                     // 0x0054748d    83c404
                         repne scasb                                                      // 0x00547490    f2ae
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00547492    a16416cd00
                         not                ecx                                           // 0x00547497    f7d1
                         sub.s              edi, ecx                                      // 0x00547499    2bf9
                         mov.s              edx, ecx                                      // 0x0054749b    8bd1
                         shr                ecx, 2                                        // 0x0054749d    c1e902
                         mov.s              esi, edi                                      // 0x005474a0    8bf7
                         {disp8} mov        edi, dword ptr [eax + 0x14]                   // 0x005474a2    8b7814
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005474a5    f3a5
                         mov.s              ecx, edx                                      // 0x005474a7    8bca
                         and                ecx, 0x03                                     // 0x005474a9    83e103
                         rep movsb                                                        // 0x005474ac    f3a4
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x343190]        // 0x005474ae    8b0d9091d000
                         {disp8} mov        byte ptr [ecx + 0x20], 0x01                   // 0x005474b4    c6412001
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30a648]        // 0x005474b8    8b154806cd00
                         {disp8} mov        byte ptr [edx + 0x20], 0x01                   // 0x005474be    c6422001
                         call               _jmp_addr_0x00513640                          // 0x005474c2    e879c1fcff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005474c7    a16416cd00
_jmp_addr_0x005474cc:    cmp                dword ptr [ebp + 0x18], 0x01                  // 0x005474cc    837d1801
                         {disp8} jne        _jmp_addr_0x005474ed                          // 0x005474d0    751b
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x005474d2    389d29020000
                         {disp8} jne        _jmp_addr_0x005474ed                          // 0x005474d8    7513
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30a648]        // 0x005474da    a14806cd00
                         {disp8} mov        byte ptr [eax + 0x20], 0x01                   // 0x005474df    c6402001
                         call               _jmp_addr_0x00513640                          // 0x005474e3    e858c1fcff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005474e8    a16416cd00
_jmp_addr_0x005474ed:    cmp                dword ptr [ebp + 0x18], 0x04                  // 0x005474ed    837d1804
                         {disp8} jne        _jmp_addr_0x0054750f                          // 0x005474f1    751c
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x005474f3    389d29020000
                         {disp8} jne        _jmp_addr_0x0054750f                          // 0x005474f9    7514
                         cmp                byte ptr [eax + 0x0000040d], bl               // 0x005474fb    38980d040000
                         sete               cl                                            // 0x00547501    0f94c1
                         {disp32} mov       byte ptr [eax + 0x0000040d], cl               // 0x00547504    88880d040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x0054750a    a16416cd00
_jmp_addr_0x0054750f:    cmp                dword ptr [ebp + 0x18], 0x05                  // 0x0054750f    837d1805
                         {disp8} jne        _jmp_addr_0x00547531                          // 0x00547513    751c
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x00547515    389d29020000
                         {disp8} jne        _jmp_addr_0x00547531                          // 0x0054751b    7514
                         cmp                byte ptr [eax + 0x0000040e], bl               // 0x0054751d    38980e040000
                         sete               dl                                            // 0x00547523    0f94c2
                         {disp32} mov       byte ptr [eax + 0x0000040e], dl               // 0x00547526    88900e040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x0054752c    a16416cd00
_jmp_addr_0x00547531:    cmp                dword ptr [ebp + 0x18], 0x06                  // 0x00547531    837d1806
                         {disp8} jne        _jmp_addr_0x00547553                          // 0x00547535    751c
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x00547537    389d29020000
                         {disp8} jne        _jmp_addr_0x00547553                          // 0x0054753d    7514
                         cmp                byte ptr [eax + 0x00000425], bl               // 0x0054753f    389825040000
                         sete               cl                                            // 0x00547545    0f94c1
                         {disp32} mov       byte ptr [eax + 0x00000425], cl               // 0x00547548    888825040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x0054754e    a16416cd00
_jmp_addr_0x00547553:    cmp                dword ptr [ebp + 0x18], 0x07                  // 0x00547553    837d1807
                         {disp8} jne        _jmp_addr_0x00547575                          // 0x00547557    751c
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x00547559    389d29020000
                         {disp8} jne        _jmp_addr_0x00547575                          // 0x0054755f    7514
                         cmp                byte ptr [eax + 0x00000426], bl               // 0x00547561    389826040000
                         sete               dl                                            // 0x00547567    0f94c2
                         {disp32} mov       byte ptr [eax + 0x00000426], dl               // 0x0054756a    889026040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00547570    a16416cd00
_jmp_addr_0x00547575:    cmp                dword ptr [ebp + 0x18], 0x08                  // 0x00547575    837d1808
                         {disp8} jne        _jmp_addr_0x00547597                          // 0x00547579    751c
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x0054757b    389d29020000
                         {disp8} jne        _jmp_addr_0x00547597                          // 0x00547581    7514
                         cmp                byte ptr [eax + 0x00000427], bl               // 0x00547583    389827040000
                         sete               cl                                            // 0x00547589    0f94c1
                         {disp32} mov       byte ptr [eax + 0x00000427], cl               // 0x0054758c    888827040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x00547592    a16416cd00
_jmp_addr_0x00547597:    cmp                dword ptr [ebp + 0x18], 0x09                  // 0x00547597    837d1809
                         {disp8} jne        _jmp_addr_0x005475b9                          // 0x0054759b    751c
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x0054759d    389d29020000
                         {disp8} jne        _jmp_addr_0x005475b9                          // 0x005475a3    7514
                         cmp                byte ptr [eax + 0x00000428], bl               // 0x005475a5    389828040000
                         sete               dl                                            // 0x005475ab    0f94c2
                         {disp32} mov       byte ptr [eax + 0x00000428], dl               // 0x005475ae    889028040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005475b4    a16416cd00
_jmp_addr_0x005475b9:    cmp                dword ptr [ebp + 0x18], 0x0a                  // 0x005475b9    837d180a
                         {disp8} jne        _jmp_addr_0x005475db                          // 0x005475bd    751c
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x005475bf    389d29020000
                         {disp8} jne        _jmp_addr_0x005475db                          // 0x005475c5    7514
                         cmp                byte ptr [eax + 0x00000429], bl               // 0x005475c7    389829040000
                         sete               cl                                            // 0x005475cd    0f94c1
                         {disp32} mov       byte ptr [eax + 0x00000429], cl               // 0x005475d0    888829040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005475d6    a16416cd00
_jmp_addr_0x005475db:    cmp                dword ptr [ebp + 0x18], 0x0f                  // 0x005475db    837d180f
                         {disp8} jne        _jmp_addr_0x00547600                          // 0x005475df    751f
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x005475e1    389d29020000
                         {disp8} jne        _jmp_addr_0x00547600                          // 0x005475e7    7517
                         {disp32} mov       edx, dword ptr [eax + 0x000004ac]             // 0x005475e9    8b90ac040000
                         {disp32} mov       ecx, dword ptr [edx + 0x00000248]             // 0x005475ef    8b8a48020000
                         {disp32} mov       dword ptr [eax + 0x00000440], ecx             // 0x005475f5    898840040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b664]        // 0x005475fb    a16416cd00
_jmp_addr_0x00547600:    cmp                dword ptr [ebp + 0x18], 0x0e                  // 0x00547600    837d180e
                         {disp32} jne       _jmp_addr_0x00547916                          // 0x00547604    0f850c030000
                         cmp                byte ptr [ebp + 0x00000229], bl               // 0x0054760a    389d29020000
                         {disp32} jne       _jmp_addr_0x00547916                          // 0x00547610    0f8500030000
                         {disp32} mov       edx, dword ptr [eax + 0x000004a8]             // 0x00547616    8b90a8040000
                         {disp32} mov       ecx, dword ptr [edx + 0x00000248]             // 0x0054761c    8b8a48020000
                         pop                edi                                           // 0x00547622    5f
                         pop                esi                                           // 0x00547623    5e
                         pop                ebp                                           // 0x00547624    5d
                         {disp32} mov       dword ptr [eax + 0x0000043c], ecx             // 0x00547625    89883c040000
                         pop                ebx                                           // 0x0054762b    5b
                         ret                0x0014                                        // 0x0054762c    c21400
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0054762f    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00547633    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00547637    8b4c2418
                         push               edx                                           // 0x0054763b    52
                         push               eax                                           // 0x0054763c    50
                         call               _jmp_addr_0x00408100                          // 0x0054763d    e8be0aecff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b664]        // 0x00547642    8b0d6416cd00
                         {disp32} mov       esi, dword ptr [ecx + 0x0000044c]             // 0x00547648    8bb14c040000
                         xor.s              ebx, ebx                                      // 0x0054764e    33db
                         cmp.s              eax, ebx                                      // 0x00547650    3bc3
                         {disp32} je        _jmp_addr_0x00547916                          // 0x00547652    0f84be020000
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x00547658    8b4018
                         add                eax, -0x02                                    // 0x0054765b    83c0fe
                         cmp                eax, 0x0b                                     // 0x0054765e    83f80b
                         {disp32} ja        _jmp_addr_0x005478db                          // 0x00547661    0f8774020000
                         jmp                dword ptr [eax*4 + 0x547940]                  // 0x00547667    ff248540795400
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115e // 0x0054766e    813dac7cd1005e110000
                         {disp8} ja         _jmp_addr_0x00547690                          // 0x00547678    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054767a    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0054767f    8b4008
                         push               0x000000ff                                    // 0x00547682    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x00547687    8d7e24
                         push               eax                                           // 0x0054768a    50
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x0054768b    e958020000
_jmp_addr_0x00547690:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00547690    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d068]             // 0x00547696    8d8268d00000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0054769c    8b4008
                         push               0x000000ff                                    // 0x0054769f    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005476a4    8d7e24
                         push               eax                                           // 0x005476a7    50
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x005476a8    e93b020000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000115f // 0x005476ad    813dac7cd1005f110000
                         {disp8} ja         _jmp_addr_0x005476cf                          // 0x005476b7    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005476b9    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005476be    8b5008
                         push               0x000000ff                                    // 0x005476c1    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005476c6    8d7e24
                         push               edx                                           // 0x005476c9    52
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x005476ca    e919020000
_jmp_addr_0x005476cf:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005476cf    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000d07c]             // 0x005476d5    8b917cd00000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000d074]             // 0x005476db    8d8174d00000
                         push               0x000000ff                                    // 0x005476e1    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005476e6    8d7e24
                         push               edx                                           // 0x005476e9    52
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x005476ea    e9f9010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001161 // 0x005476ef    813dac7cd10061110000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005476f9    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00547705                          // 0x005476fe    7605
                         add                eax, 0x0000d08c                               // 0x00547700    058cd00000
_jmp_addr_0x00547705:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00547705    8b4808
                         push               0x000000ff                                    // 0x00547708    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054770d    8d7e24
                         push               ecx                                           // 0x00547710    51
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x00547711    e9d2010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001162 // 0x00547716    813dac7cd10062110000
                         {disp8} ja         _jmp_addr_0x00547738                          // 0x00547720    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547722    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00547727    8b4008
                         push               0x000000ff                                    // 0x0054772a    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054772f    8d7e24
                         push               eax                                           // 0x00547732    50
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x00547733    e9b0010000
_jmp_addr_0x00547738:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00547738    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d098]             // 0x0054773e    8d8298d00000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00547744    8b4008
                         push               0x000000ff                                    // 0x00547747    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054774c    8d7e24
                         push               eax                                           // 0x0054774f    50
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x00547750    e993010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001163 // 0x00547755    813dac7cd10063110000
                         {disp8} ja         _jmp_addr_0x00547777                          // 0x0054775f    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547761    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00547766    8b5008
                         push               0x000000ff                                    // 0x00547769    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054776e    8d7e24
                         push               edx                                           // 0x00547771    52
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x00547772    e971010000
_jmp_addr_0x00547777:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00547777    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000d0ac]             // 0x0054777d    8b91acd00000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000d0a4]             // 0x00547783    8d81a4d00000
                         push               0x000000ff                                    // 0x00547789    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054778e    8d7e24
                         push               edx                                           // 0x00547791    52
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x00547792    e951010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001164 // 0x00547797    813dac7cd10064110000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005477a1    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005477ad                          // 0x005477a6    7605
                         add                eax, 0x0000d0b0                               // 0x005477a8    05b0d00000
_jmp_addr_0x005477ad:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005477ad    8b4808
                         push               0x000000ff                                    // 0x005477b0    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005477b5    8d7e24
                         push               ecx                                           // 0x005477b8    51
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x005477b9    e92a010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001165 // 0x005477be    813dac7cd10065110000
                         {disp8} ja         _jmp_addr_0x005477e0                          // 0x005477c8    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005477ca    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005477cf    8b4008
                         push               0x000000ff                                    // 0x005477d2    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005477d7    8d7e24
                         push               eax                                           // 0x005477da    50
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x005477db    e908010000
_jmp_addr_0x005477e0:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005477e0    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d0bc]             // 0x005477e6    8d82bcd00000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005477ec    8b4008
                         push               0x000000ff                                    // 0x005477ef    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005477f4    8d7e24
                         push               eax                                           // 0x005477f7    50
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x005477f8    e9eb000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001166 // 0x005477fd    813dac7cd10066110000
                         {disp8} ja         _jmp_addr_0x0054781f                          // 0x00547807    7716
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547809    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0054780e    8b5008
                         push               0x000000ff                                    // 0x00547811    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x00547816    8d7e24
                         push               edx                                           // 0x00547819    52
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x0054781a    e9c9000000
_jmp_addr_0x0054781f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054781f    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000d0d0]             // 0x00547825    8b91d0d00000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000d0c8]             // 0x0054782b    8d81c8d00000
                         push               0x000000ff                                    // 0x00547831    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x00547836    8d7e24
                         push               edx                                           // 0x00547839    52
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x0054783a    e9a9000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001167 // 0x0054783f    813dac7cd10067110000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547849    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00547855                          // 0x0054784e    7605
                         add                eax, 0x0000d0d4                               // 0x00547850    05d4d00000
_jmp_addr_0x00547855:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00547855    8b4808
                         push               0x000000ff                                    // 0x00547858    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054785d    8d7e24
                         push               ecx                                           // 0x00547860    51
                         {disp32} jmp       _jmp_addr_0x005478e8                          // 0x00547861    e982000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001168 // 0x00547866    813dac7cd10068110000
                         {disp8} ja         _jmp_addr_0x00547885                          // 0x00547870    7713
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00547872    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00547877    8b4008
                         push               0x000000ff                                    // 0x0054787a    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054787f    8d7e24
                         push               eax                                           // 0x00547882    50
                         {disp8} jmp        _jmp_addr_0x005478e8                          // 0x00547883    eb63
_jmp_addr_0x00547885:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00547885    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000d0e0]             // 0x0054788b    8d82e0d00000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00547891    8b4008
                         push               0x000000ff                                    // 0x00547894    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x00547899    8d7e24
                         push               eax                                           // 0x0054789c    50
                         {disp8} jmp        _jmp_addr_0x005478e8                          // 0x0054789d    eb49
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001169 // 0x0054789f    813dac7cd10069110000
                         {disp8} ja         _jmp_addr_0x005478be                          // 0x005478a9    7713
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005478ab    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005478b0    8b5008
                         push               0x000000ff                                    // 0x005478b3    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005478b8    8d7e24
                         push               edx                                           // 0x005478bb    52
                         {disp8} jmp        _jmp_addr_0x005478e8                          // 0x005478bc    eb2a
_jmp_addr_0x005478be:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005478be    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000d0f4]             // 0x005478c4    8b91f4d00000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000d0ec]             // 0x005478ca    8d81ecd00000
                         push               0x000000ff                                    // 0x005478d0    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005478d5    8d7e24
                         push               edx                                           // 0x005478d8    52
                         {disp8} jmp        _jmp_addr_0x005478e8                          // 0x005478d9    eb0d
_jmp_addr_0x005478db:    push               0x000000ff                                    // 0x005478db    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005478e0    8d7e24
                         push               0x00c4cd30                                    // 0x005478e3    6830cdc400
_jmp_addr_0x005478e8:    push               edi                                           // 0x005478e8    57
                         call               _wcsncpy                                      // 0x005478e9    e837eb2700
                         push               edi                                           // 0x005478ee    57
                         {disp32} mov       word ptr [esi + 0x00000222], bx               // 0x005478ef    66899e22020000
                         call               _wcslen                                       // 0x005478f6    e867eb2700
                         add                esp, 0x10                                     // 0x005478fb    83c410
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax             // 0x005478fe    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax             // 0x00547904    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax             // 0x0054790a    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], ebx             // 0x00547910    899e58020000
_jmp_addr_0x00547916:    pop                edi                                           // 0x00547916    5f
                         pop                esi                                           // 0x00547917    5e
                         pop                ebp                                           // 0x00547918    5d
                         pop                ebx                                           // 0x00547919    5b
                         ret                0x0014                                        // 0x0054791a    c21400

// Snippet: db, [0x0054791d, 0x00547920)
.byte 0x8d, 0x49, 0x00            // 0x0054791d

// Snippet: jmptbl, [0x00547920, 0x00547970)
.byte 0x2f, 0x76, 0x54, 0x00      // 0x00547920
.byte 0x30, 0x74, 0x54, 0x00      // 0x00547924
.byte 0xfe, 0x73, 0x54, 0x00      // 0x00547928
.byte 0x16, 0x79, 0x54, 0x00      // 0x0054792c
.byte 0x22, 0x72, 0x54, 0x00      // 0x00547930
.byte 0x16, 0x79, 0x54, 0x00      // 0x00547934
.byte 0xff, 0x71, 0x54, 0x00      // 0x00547938
.byte 0x11, 0x72, 0x54, 0x00      // 0x0054793c
.byte 0x6e, 0x76, 0x54, 0x00      // 0x00547940
.byte 0x16, 0x79, 0x54, 0x00      // 0x00547944
.byte 0xad, 0x76, 0x54, 0x00      // 0x00547948
.byte 0xef, 0x76, 0x54, 0x00      // 0x0054794c
.byte 0x16, 0x77, 0x54, 0x00      // 0x00547950
.byte 0x55, 0x77, 0x54, 0x00      // 0x00547954
.byte 0x97, 0x77, 0x54, 0x00      // 0x00547958
.byte 0xbe, 0x77, 0x54, 0x00      // 0x0054795c
.byte 0xfd, 0x77, 0x54, 0x00      // 0x00547960
.byte 0x3f, 0x78, 0x54, 0x00      // 0x00547964
.byte 0x66, 0x78, 0x54, 0x00      // 0x00547968
.byte 0x9f, 0x78, 0x54, 0x00      // 0x0054796c

