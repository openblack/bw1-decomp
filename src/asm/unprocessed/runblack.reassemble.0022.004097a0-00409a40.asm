.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern ??1SetupControl@@UAE@XZ
.extern ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z
.extern ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern  ??3@YAXPAX@Z

.globl @Draw__11SetupButtonFbb@10
.globl @__ct__10SetupButtonFiiiiiPwi@36
.globl _MouseUp__10SetupButtonFiib
.globl _Draw__11SetupButtonFbb
.globl _KeyDown__11SetupSliderFii
.globl _MouseDown__10SetupButtonFiib
.globl _KeyDown__11SetupButtonFii
.globl ??_GSetupButton@@UAEPAXI@Z

_Draw__11SetupButtonFbb:
@Draw__11SetupButtonFbb@10:    push               ebx                                      // 0x004097a0    53
                         {disp8} mov        bl, byte ptr [esp + 0x08]                // 0x004097a1    8a5c2408
                         push               ebp                                      // 0x004097a5    55
                         push               esi                                      // 0x004097a6    56
                         xor.s              eax, eax                                 // 0x004097a7    33c0
                         push               edi                                      // 0x004097a9    57
                         test               bl, bl                                   // 0x004097aa    84db
                         push               -0x1                                     // 0x004097ac    6aff
                         setne              al                                       // 0x004097ae    0f95c0
                         push               -0x1                                     // 0x004097b1    6aff
                         mov.s              esi, ecx                                 // 0x004097b3    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x14]              // 0x004097b5    8b4e14
                         {disp8} mov        edx, dword ptr [esi + 0x10]              // 0x004097b8    8b5610
                         push               0x10                                     // 0x004097bb    6a10
                         inc                eax                                      // 0x004097bd    40
                         push               eax                                      // 0x004097be    50
                         {disp8} mov        eax, dword ptr [esi + 0x0c]              // 0x004097bf    8b460c
                         push               ecx                                      // 0x004097c2    51
                         {disp8} mov        ecx, dword ptr [esi + 0x08]              // 0x004097c3    8b4e08
                         push               edx                                      // 0x004097c6    52
                         push               eax                                      // 0x004097c7    50
                         push               ecx                                      // 0x004097c8    51
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z    // 0x004097c9    e852a40000
                         {disp8} mov        ebp, dword ptr [esi + 0x20]              // 0x004097ce    8b6e20
                         add                esp, 0x20                                // 0x004097d1    83c420
                         test               ebp, ebp                                 // 0x004097d4    85ed
                         {disp8} jne        _jmp_addr_0x004097e8                     // 0x004097d6    7510
                         {disp32} mov       eax, dword ptr [esi + 0x00000234]        // 0x004097d8    8b8634020000
                         test               eax, eax                                 // 0x004097de    85c0
                         {disp8} je         _jmp_addr_0x0040983c                     // 0x004097e0    745a
                         {disp32} mov       ebp, dword ptr [eax + 0x000000ac]        // 0x004097e2    8ba8ac000000
_jmp_addr_0x004097e8:    cmp                ebp, 0x0a                                // 0x004097e8    83fd0a
                         {disp8} mov        dword ptr [esp + 0x14], ebp              // 0x004097eb    896c2414
                         {disp8} jle        _jmp_addr_0x00409831                     // 0x004097ef    7e40
                         {disp8} lea        edi, dword ptr [esi + 0x24]              // 0x004097f1    8d7e24
_jmp_addr_0x004097f4:    {disp8} fild       dword ptr [esp + 0x14]                   // 0x004097f4    db442414
                         push               0x3f800000                               // 0x004097f8    680000803f
                         push               0x0                                      // 0x004097fd    6a00
                         push               ecx                                      // 0x004097ff    51
                         fstp               dword ptr [esp]                          // 0x00409800    d91c24
                         push               edi                                      // 0x00409803    57
                         call               ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z   // 0x00409804    e8177f0000
                         {disp8} mov        eax, dword ptr [esi + 0x08]              // 0x00409809    8b4608
                         {disp8} mov        edx, dword ptr [esi + 0x10]              // 0x0040980c    8b5610
                         sub.s              edx, eax                                 // 0x0040980f    2bd0
                         {disp8} mov        dword ptr [esp + 0x24], edx              // 0x00409811    89542424
                         {disp8} fild       dword ptr [esp + 0x24]                   // 0x00409815    db442424
                         add                esp, 0x10                                // 0x00409819    83c410
                         fxch               st(1)                                    // 0x0040981c    d9c9
                         fcompp                                                      // 0x0040981e    ded9
                         fnstsw             ax                                       // 0x00409820    dfe0
                         test               ah, 0x41                                 // 0x00409822    f6c441
                         {disp8} jne        _jmp_addr_0x00409831                     // 0x00409825    750a
                         dec                ebp                                      // 0x00409827    4d
                         cmp                ebp, 0x0a                                // 0x00409828    83fd0a
                         {disp8} mov        dword ptr [esp + 0x14], ebp              // 0x0040982b    896c2414
                         {disp8} jg         _jmp_addr_0x004097f4                     // 0x0040982f    7fc3
_jmp_addr_0x00409831:    test               bl, bl                                   // 0x00409831    84db
                         {disp8} je         _jmp_addr_0x00409843                     // 0x00409833    740e
                         mov                eax, 0x00c4cce4                          // 0x00409835    b8e4ccc400
                         {disp8} jmp        _jmp_addr_0x00409855                     // 0x0040983a    eb19
_jmp_addr_0x0040983c:    mov                ebp, 0x0000000a                          // 0x0040983c    bd0a000000
                         {disp8} jmp        _jmp_addr_0x00409831                     // 0x00409841    ebee
_jmp_addr_0x00409843:    {disp8} mov        al, byte ptr [esp + 0x18]                // 0x00409843    8a442418
                         test               al, al                                   // 0x00409847    84c0
                         mov                eax, 0x00c4ccf8                          // 0x00409849    b8f8ccc400
                         {disp8} jne        _jmp_addr_0x00409855                     // 0x0040984e    7505
                         mov                eax, 0x00c4ccd8                          // 0x00409850    b8d8ccc400
_jmp_addr_0x00409855:    {disp8} mov        edi, dword ptr [esi + 0x10]              // 0x00409855    8b7e10
                         {disp8} mov        ebx, dword ptr [esi + 0x08]              // 0x00409858    8b5e08
                         {disp32} mov       ecx, dword ptr [esi + 0x0000023c]        // 0x0040985b    8b8e3c020000
                         push               0x0                                      // 0x00409861    6a00
                         push               eax                                      // 0x00409863    50
                         {disp8} lea        eax, dword ptr [esi + 0x24]              // 0x00409864    8d4624
                         push               ebp                                      // 0x00409867    55
                         push               eax                                      // 0x00409868    50
                         {disp8} mov        eax, dword ptr [esi + 0x0c]              // 0x00409869    8b460c
                         push               0x1                                      // 0x0040986c    6a01
                         mov.s              edx, edi                                 // 0x0040986e    8bd7
                         sub.s              edx, ebx                                 // 0x00409870    2bd3
                         push               edx                                      // 0x00409872    52
                         add                eax, dword ptr [esi + 0x14]              // 0x00409873    034614
                         cdq                                                         // 0x00409876    99
                         sub.s              eax, edx                                 // 0x00409877    2bc2
                         mov.s              esi, eax                                 // 0x00409879    8bf0
                         mov.s              eax, ebp                                 // 0x0040987b    8bc5
                         cdq                                                         // 0x0040987d    99
                         sub.s              eax, edx                                 // 0x0040987e    2bc2
                         sar                eax, 1                                   // 0x00409880    d1f8
                         sar                esi, 1                                   // 0x00409882    d1fe
                         sub.s              esi, eax                                 // 0x00409884    2bf0
                         lea                eax, dword ptr [ebx + edi * 0x1]         // 0x00409886    8d043b
                         cdq                                                         // 0x00409889    99
                         shl                ecx, 1                                   // 0x0040988a    d1e1
                         sub.s              eax, edx                                 // 0x0040988c    2bc2
                         add.s              esi, ecx                                 // 0x0040988e    03f1
                         sar                eax, 1                                   // 0x00409890    d1f8
                         add.s              eax, ecx                                 // 0x00409892    03c1
                         push               esi                                      // 0x00409894    56
                         push               eax                                      // 0x00409895    50
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z           // 0x00409896    e815810000
                         add                esp, 0x20                                // 0x0040989b    83c420
                         pop                edi                                      // 0x0040989e    5f
                         fstp               st(0)                                    // 0x0040989f    ddd8
                         pop                esi                                      // 0x004098a1    5e
                         pop                ebp                                      // 0x004098a2    5d
                         pop                ebx                                      // 0x004098a3    5b
                         ret                0x0008                                   // 0x004098a4    c20800
                         nop                                                         // 0x004098a7    90
                         nop                                                         // 0x004098a8    90
                         nop                                                         // 0x004098a9    90
                         nop                                                         // 0x004098aa    90
                         nop                                                         // 0x004098ab    90
                         nop                                                         // 0x004098ac    90
                         nop                                                         // 0x004098ad    90
                         nop                                                         // 0x004098ae    90
                         nop                                                         // 0x004098af    90
@__ct__10SetupButtonFiiiiiPwi@36:    {disp8} mov        eax, dword ptr [esp + 0x18]              // 0x004098b0    8b442418
                         {disp8} mov        edx, dword ptr [esp + 0x10]              // 0x004098b4    8b542410
                         push               esi                                      // 0x004098b8    56
                         push               eax                                      // 0x004098b9    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]              // 0x004098ba    8b442414
                         mov.s              esi, ecx                                 // 0x004098be    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]              // 0x004098c0    8b4c241c
                         push               ecx                                      // 0x004098c4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]              // 0x004098c5    8b4c2414
                         push               edx                                      // 0x004098c9    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]              // 0x004098ca    8b542414
                         push               eax                                      // 0x004098ce    50
                         push               ecx                                      // 0x004098cf    51
                         push               edx                                      // 0x004098d0    52
                         mov.s              ecx, esi                                 // 0x004098d1    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z         // 0x004098d3    e878f9ffff
                         {disp8} mov        eax, dword ptr [esp + 0x20]              // 0x004098d8    8b442420
                         {disp32} mov       dword ptr [esi + 0x00000240], eax        // 0x004098dc    898640020000
                         mov                dword ptr [esi], 0x008ab2b4              // 0x004098e2    c706b4b28a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], 0x00000000 // 0x004098e8    c7863c02000000000000
                         mov.s              eax, esi                                 // 0x004098f2    8bc6
                         pop                esi                                      // 0x004098f4    5e
                         ret                0x001c                                   // 0x004098f5    c21c00
                         nop                                                         // 0x004098f8    90
                         nop                                                         // 0x004098f9    90
                         nop                                                         // 0x004098fa    90
                         nop                                                         // 0x004098fb    90
                         nop                                                         // 0x004098fc    90
                         nop                                                         // 0x004098fd    90
                         nop                                                         // 0x004098fe    90
                         nop                                                         // 0x004098ff    90
_MouseDown__10SetupButtonFiib:
                         {disp32} mov       dword ptr [ecx + 0x0000023c], 0x00000001 // 0x00409900    c7813c02000001000000
                         ret                0x000c                                   // 0x0040990a    c20c00
                         nop                                                         // 0x0040990d    90
                         nop                                                         // 0x0040990e    90
                         nop                                                         // 0x0040990f    90
_MouseUp__10SetupButtonFiib:
                         {disp32} mov       dword ptr [ecx + 0x0000023c], 0x00000000 // 0x00409910    c7813c02000000000000
                         ret                0x000c                                   // 0x0040991a    c20c00
                         nop                                                         // 0x0040991d    90
                         nop                                                         // 0x0040991e    90
                         nop                                                         // 0x0040991f    90
_KeyDown__11SetupButtonFii:
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000234]        // 0x00409920    8b8934020000
                         test               ecx, ecx                                 // 0x00409926    85c9
                         {disp8} je         _jmp_addr_0x00409938                     // 0x00409928    740e
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x0040992a    8b542408
                         mov                eax, dword ptr [ecx]                     // 0x0040992e    8b01
                         push               edx                                      // 0x00409930    52
                         {disp8} mov        edx, dword ptr [esp + 0x08]              // 0x00409931    8b542408
                         push               edx                                      // 0x00409935    52
                         call               dword ptr [eax]                          // 0x00409936    ff10
_jmp_addr_0x00409938:    ret                0x0008                                   // 0x00409938    c20800
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                     // 0x0040993b    e8397fffff
??_GSetupButton@@UAEPAXI@Z:
                         push               esi                                      // 0x00409940    56
                         mov.s              esi, ecx                                 // 0x00409941    8bf1
                         call               ??1SetupControl@@UAE@XZ                  // 0x00409943    e878faffff
                         test               byte ptr [esp + 0x08], 0x01              // 0x00409948    f644240801
                         {disp8} je         _jmp_addr_0x00409958                     // 0x0040994d    7409
                         push               esi                                      // 0x0040994f    56
                         call               ??3@YAXPAX@Z                             // 0x00409950    e843553a00
                         add                esp, 0x04                                // 0x00409955    83c404
_jmp_addr_0x00409958:    mov.s              eax, esi                                 // 0x00409958    8bc6
                         pop                esi                                      // 0x0040995a    5e
                         ret                0x0004                                   // 0x0040995b    c20400
                         nop                                                         // 0x0040995e    90
                         nop                                                         // 0x0040995f    90
_KeyDown__11SetupSliderFii:
                         {disp8} mov        eax, dword ptr [esp + 0x04]              // 0x00409960    8b442404
                         add                eax, 0xffffff39                          // 0x00409964    0539ffffff
                         xor.s              dl, dl                                   // 0x00409969    32d2
                         cmp                eax, 0x08                                // 0x0040996b    83f808
                         {disp8} ja         _jmp_addr_0x004099b1                     // 0x0040996e    7741
                         jmp                dword ptr [eax*4 + 0x409a1c]             // 0x00409970    ff24851c9a4000
                         {disp32} mov       dword ptr [ecx + 0x0000023c], 0x00000000 // 0x00409977    c7813c02000000000000
                         {disp8} jmp        _jmp_addr_0x004099af                     // 0x00409981    eb2c
                         {disp32} mov       dword ptr [ecx + 0x0000023c], 0x3f800000 // 0x00409983    c7813c0200000000803f
                         {disp8} jmp        _jmp_addr_0x004099af                     // 0x0040998d    eb20
                         {disp32} fld       dword ptr [ecx + 0x0000023c]             // 0x0040998f    d9813c020000
                         {disp32} fsub      dword ptr [__real@3dcccccd]              // 0x00409995    d8252cb28a00
                         {disp8} jmp        _jmp_addr_0x004099a9                     // 0x0040999b    eb0c
                         {disp32} fld       dword ptr [ecx + 0x0000023c]             // 0x0040999d    d9813c020000
                         {disp32} fadd      dword ptr [__real@3dcccccd]              // 0x004099a3    d8052cb28a00
_jmp_addr_0x004099a9:    {disp32} fstp      dword ptr [ecx + 0x0000023c]             // 0x004099a9    d9993c020000
_jmp_addr_0x004099af:    mov                dl, 0x01                                 // 0x004099af    b201
_jmp_addr_0x004099b1:    {disp32} fld       dword ptr [ecx + 0x0000023c]             // 0x004099b1    d9813c020000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]              // 0x004099b7    d81d98a38a00
                         fnstsw             ax                                       // 0x004099bd    dfe0
                         test               ah, 0x41                                 // 0x004099bf    f6c441
                         {disp8} jne        _jmp_addr_0x004099e7                     // 0x004099c2    7523
                         {disp32} fld       dword ptr [ecx + 0x0000023c]             // 0x004099c4    d9813c020000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1390]         // 0x004099ca    d81d90a38a00
                         fnstsw             ax                                       // 0x004099d0    dfe0
                         test               ah, 0x01                                 // 0x004099d2    f6c401
                         {disp8} je         _jmp_addr_0x004099df                     // 0x004099d5    7408
                         {disp32} fld       dword ptr [ecx + 0x0000023c]             // 0x004099d7    d9813c020000
                         {disp8} jmp        _jmp_addr_0x004099ed                     // 0x004099dd    eb0e
_jmp_addr_0x004099df:    {disp32} fld       dword ptr [rdata_bytes + 0x1390]         // 0x004099df    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x004099ed                     // 0x004099e5    eb06
_jmp_addr_0x004099e7:    {disp32} fld       dword ptr [_rdata_float0p0]              // 0x004099e7    d90598a38a00
_jmp_addr_0x004099ed:    test               dl, dl                                   // 0x004099ed    84d2
                         {disp32} fst       dword ptr [ecx + 0x0000023c]             // 0x004099ef    d9913c020000
                         {disp32} fstp      dword ptr [ecx + 0x00000240]             // 0x004099f5    d99940020000
                         {disp8} je         _jmp_addr_0x00409a17                     // 0x004099fb    741a
                         {disp32} mov       eax, dword ptr [ecx + 0x00000234]        // 0x004099fd    8b8134020000
                         {disp32} mov       edx, dword ptr [eax + 0x000000b0]        // 0x00409a03    8b90b0000000
                         test               edx, edx                                 // 0x00409a09    85d2
                         {disp8} je         _jmp_addr_0x00409a17                     // 0x00409a0b    740a
                         push               0x0                                      // 0x00409a0d    6a00
                         push               0x0                                      // 0x00409a0f    6a00
                         push               ecx                                      // 0x00409a11    51
                         push               eax                                      // 0x00409a12    50
                         push               0x4                                      // 0x00409a13    6a04
                         call               edx                                      // 0x00409a15    ffd2
_jmp_addr_0x00409a17:    ret                0x0008                                   // 0x00409a17    c20800

// Snippet: db, [0x00409a1a, 0x00409a1c)
.byte 0x8b, 0xff                  // 0x00409a1a

// Snippet: jmptbl, [0x00409a1c, 0x00409a40)
.byte 0x77, 0x99, 0x40, 0x00      // 0x00409a1c
.byte 0xb1, 0x99, 0x40, 0x00      // 0x00409a20
.byte 0xb1, 0x99, 0x40, 0x00      // 0x00409a24
.byte 0xb1, 0x99, 0x40, 0x00      // 0x00409a28
.byte 0x8f, 0x99, 0x40, 0x00      // 0x00409a2c
.byte 0xb1, 0x99, 0x40, 0x00      // 0x00409a30
.byte 0x9d, 0x99, 0x40, 0x00      // 0x00409a34
.byte 0xb1, 0x99, 0x40, 0x00      // 0x00409a38
.byte 0x83, 0x99, 0x40, 0x00      // 0x00409a3c

