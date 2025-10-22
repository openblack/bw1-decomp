.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetSpeedUpFactor__7LHTimerFf@12
.extern _jmp_addr_0x00449650
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ??0_Lockit@std@@QAE@XZ
.extern ??1_Lockit@std@@QAE@XZ
.extern _atexit
.extern _sprintf
.extern ??2@YAPAXI@Z
.extern _fprintf
.extern __chkstk
.extern _rand
.extern _strncpy
.extern _strstr
.extern _tolower
.extern __controlfp
.extern ___nw__FUl
.extern _jmp_addr_0x007db8e0
.extern _jmp_addr_0x007db8f0
.extern _jmp_addr_0x007db910
.extern _jmp_addr_0x007db940
.extern _jmp_addr_0x007dbed0
.extern @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16
.extern _jmp_addr_0x007e67e0
.extern _jmp_addr_0x007e6960
.extern _jmp_addr_0x007e69b0
.extern _jmp_addr_0x007eab90
.extern _jmp_addr_0x007eac00
.extern _jmp_addr_0x007eadb0
.extern _jmp_addr_0x007eb870
.extern _jmp_addr_0x007edb90
.extern _jmp_addr_0x007ee050
.extern _jmp_addr_0x007ee540
.extern _jmp_addr_0x007efcf0
.extern _Report3D__FPCce
.extern _jmp_addr_0x0082cd80
.extern _jmp_addr_0x0082d3f0
.extern _jmp_addr_0x0085db90
.extern _jmp_addr_0x0085dd60
.extern _jmp_addr_0x0087fc50
.extern ?LH3DRenderClose@LHIlib@@SAHXZ
.extern _jmp_addr_0x0087fc70
.extern _jmp_addr_0x0087fc80
.extern _jmp_DDRAW_DLL__DirectDrawEnumerateA
.extern _jmp_DDRAW_DLL__DirectDrawCreateEx
.extern _jmp_DDRAW_DLL__DirectDrawCreate
.extern _jmp_addr_0x008a5440
.extern _jmp_addr_0x008a5480
.extern _jmp_addr_0x008a5590
.extern _jmp_addr_0x008a5b00
.extern ??_M@YGXPAXIHP6EX0@Z@Z
.extern _jmp_addr_0x00fc1285

.globl _jmp_addr_0x007dc8b0
.globl _jmp_addr_0x007dc920
.globl _jmp_addr_0x007dcad0
.globl _jmp_addr_0x007dcaf0
.globl ??0LHScreen@@QAE@XZ 
.globl _jmp_addr_0x007dd020
.globl @SetFullscreenMode__8LHScreenFi@12
.globl ??_DLHScreen@@QAEXXZ
.globl _jmp_addr_0x007dd9c0
.globl _jmp_addr_0x007dda90
.globl _jmp_addr_0x007ddc40
.globl _jmp_addr_0x007de090
.globl _jmp_addr_0x007de6f0
.globl _jmp_addr_0x007de730
.globl _jmp_addr_0x007de820
.globl _jmp_addr_0x007de8d0
.globl _jmp_addr_0x007deab0
.globl _jmp_addr_0x007deb20
.globl _jmp_addr_0x007debc0
.globl _jmp_addr_0x007dec80
.globl _jmp_addr_0x007dece0
.globl _jmp_addr_0x007ded10
.globl _jmp_addr_0x007ded40
.globl _jmp_addr_0x007ded50
.globl _jmp_addr_0x007ded80
.globl _jmp_addr_0x007dedd0
.globl _jmp_addr_0x007dee00
.globl _jmp_addr_0x007dee20
.globl _globl_ct_0x007dce00

_jmp_addr_0x007dc8b0:    sub                esp, 0x10                                     // 0x007dc8b0    83ec10
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007dc8b3    8b442418
                         mov                edx, dword ptr [eax]                          // 0x007dc8b7    8b10
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x007dc8b9    8b4004
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007dc8bc    89442404
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x007dc8c0    8b44241c
                         cmp                eax, 0x01                                     // 0x007dc8c4    83f801
                         {disp8} mov        dword ptr [esp + 0x00], edx                   // 0x007dc8c7    89542400
                         {disp8} jne        _jmp_addr_0x007dc8fd                          // 0x007dc8cb    7530
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf0a8]        // 0x007dc8cd    a1a850e800
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf0ac]        // 0x007dc8d2    8b15ac50e800
                         push               esi                                           // 0x007dc8d8    56
                         {disp8} mov        esi, dword ptr [esp + 0x04]                   // 0x007dc8d9    8b742404
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x007dc8dd    8944240c
                         add.s              esi, eax                                      // 0x007dc8e1    03f0
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007dc8e3    8b442408
                         {disp8} mov        dword ptr [esp + 0x04], esi                   // 0x007dc8e7    89742404
                         add.s              eax, edx                                      // 0x007dc8eb    03c2
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x007dc8ed    89542410
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x007dc8f1    89442408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf080]        // 0x007dc8f5    a18050e800
                         pop                esi                                           // 0x007dc8fa    5e
                         {disp8} jmp        _jmp_addr_0x007dc902                          // 0x007dc8fb    eb05
_jmp_addr_0x007dc8fd:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf084]        // 0x007dc8fd    a18450e800
_jmp_addr_0x007dc902:    push               0x0                                           // 0x007dc902    6a00
                         push               0x0                                           // 0x007dc904    6a00
                         push               eax                                           // 0x007dc906    50
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x007dc907    8b442420
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x007dc90b    8d54240c
                         push               edx                                           // 0x007dc90f    52
                         push               eax                                           // 0x007dc910    50
                         call               _jmp_addr_0x007e67e0                          // 0x007dc911    e8ca9e0000
                         add                esp, 0x10                                     // 0x007dc916    83c410
                         ret                0x000c                                        // 0x007dc919    c20c00
                         nop                                                              // 0x007dc91c    90
                         nop                                                              // 0x007dc91d    90
                         nop                                                              // 0x007dc91e    90
                         nop                                                              // 0x007dc91f    90
_jmp_addr_0x007dc920:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4c60c0]        // 0x007dc920    8b0dc0c0e800
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007dc926    8b44240c
                         test               ecx, ecx                                      // 0x007dc92a    85c9
                         {disp8} jne        _jmp_addr_0x007dc930                          // 0x007dc92c    7502
                         mov.s              ecx, eax                                      // 0x007dc92e    8bc8
_jmp_addr_0x007dc930:    push               esi                                           // 0x007dc930    56
                         push               edi                                           // 0x007dc931    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x007dc932    8b7c2410
                         mov.s              edx, eax                                      // 0x007dc936    8bd0
                         {disp32} mov       dword ptr [data_bytes + 0x4c60c0], eax        // 0x007dc938    a3c0c0e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf218]        // 0x007dc93d    a11852e800
                         mov.s              esi, edi                                      // 0x007dc942    8bf7
                         sub.s              edx, ecx                                      // 0x007dc944    2bd1
                         shr                esi, 0x10                                     // 0x007dc946    c1ee10
                         cmp                eax, 0x04                                     // 0x007dc949    83f804
                         {disp32} mov       dword ptr [data_bytes + 0x4bf368], edx        // 0x007dc94c    89156853e800
                         {disp8} jne        _jmp_addr_0x007dc95c                          // 0x007dc952    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4c60d0]        // 0x007dc954    a1d0c0e800
                         push               eax                                           // 0x007dc959    50
                         {disp8} jmp        _jmp_addr_0x007dc96c                          // 0x007dc95a    eb10
_jmp_addr_0x007dc95c:    cmp                eax, 0x02                                     // 0x007dc95c    83f802
                         {disp8} jne        _jmp_addr_0x007dc96a                          // 0x007dc95f    7509
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c60d0]        // 0x007dc961    8b0dd0c0e800
                         push               ecx                                           // 0x007dc967    51
                         {disp8} jmp        _jmp_addr_0x007dc96c                          // 0x007dc968    eb02
_jmp_addr_0x007dc96a:    push               0x0                                           // 0x007dc96a    6a00
_jmp_addr_0x007dc96c:    call               dword ptr [__imp__SetCursor@4]                // 0x007dc96c    ff156c988a00
                         movsx              ecx, si                                       // 0x007dc972    0fbfce
                         movsx              eax, di                                       // 0x007dc975    0fbfc7
                         push               ecx                                           // 0x007dc978    51
                         push               eax                                           // 0x007dc979    50
                         mov                ecx, 0x00e85204                               // 0x007dc97a    b90452e800
                         call               @UpdateCurrentPos__7LHMouseF7LHCoord@16       // 0x007dc97f    e81c800000
                         push               0x4                                           // 0x007dc984    6a04
                         push               0x1                                           // 0x007dc986    6a01
                         mov                ecx, 0x00e85204                               // 0x007dc988    b90452e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf210], 0x00000001 // 0x007dc98d    c7051052e80001000000
                         call               @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                          // 0x007dc997    e8248e0000
                         pop                edi                                           // 0x007dc99c    5f
                         pop                esi                                           // 0x007dc99d    5e
                         ret                                                              // 0x007dc99e    c3
                         nop                                                              // 0x007dc99f    90
_jmp_addr_0x007dc9a0:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf0b4]        // 0x007dc9a0    a1b450e800
                         sub                esp, 0x20                                     // 0x007dc9a5    83ec20
                         test               eax, eax                                      // 0x007dc9a8    85c0
                         {disp32} je        _jmp_addr_0x007dca9c                          // 0x007dc9aa    0f84ec000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x007dc9b0    a17850e800
                         push               0x1                                           // 0x007dc9b5    6a01
                         push               eax                                           // 0x007dc9b7    50
                         call               dword ptr [__imp__ShowWindow@4]               // 0x007dc9b8    ff15d0978a00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf078]        // 0x007dc9be    8b157850e800
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x007dc9c4    8d4c2410
                         push               ecx                                           // 0x007dc9c8    51
                         push               edx                                           // 0x007dc9c9    52
                         call               dword ptr [__imp__GetClientRect@4]            // 0x007dc9ca    ff154c988a00
                         {disp8} mov        ax, word ptr [esp + 0x28]                     // 0x007dc9d0    668b442428
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x007dc9d5    668b0d5a50e800
                         test               ax, ax                                        // 0x007dc9dc    6685c0
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000000            // 0x007dc9df    c744240000000000
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x007dc9e7    c744240400000000
                         {disp8} je         _jmp_addr_0x007dca06                          // 0x007dc9ef    7415
                         cmp.s              ax, cx                                        // 0x007dc9f1    663bc1
                         {disp8} ja         _jmp_addr_0x007dca06                          // 0x007dc9f4    7710
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x007dc9f6    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007dc9fa    8b4c2414
                         sub.s              eax, ecx                                      // 0x007dc9fe    2bc1
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x007dca00    8944240c
                         {disp8} jmp        _jmp_addr_0x007dca0f                          // 0x007dca04    eb09
_jmp_addr_0x007dca06:    xor.s              edx, edx                                      // 0x007dca06    33d2
                         mov.s              dx, cx                                        // 0x007dca08    668bd1
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x007dca0b    8954240c
_jmp_addr_0x007dca0f:    {disp8} mov        ax, word ptr [esp + 0x24]                     // 0x007dca0f    668b442424
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]        // 0x007dca14    8b0d5850e800
                         test               ax, ax                                        // 0x007dca1a    6685c0
                         {disp8} je         _jmp_addr_0x007dca34                          // 0x007dca1d    7415
                         cmp.s              ax, cx                                        // 0x007dca1f    663bc1
                         {disp8} ja         _jmp_addr_0x007dca34                          // 0x007dca22    7710
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007dca24    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007dca28    8b4c2410
                         sub.s              eax, ecx                                      // 0x007dca2c    2bc1
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x007dca2e    89442408
                         {disp8} jmp        _jmp_addr_0x007dca3e                          // 0x007dca32    eb0a
_jmp_addr_0x007dca34:    and                ecx, 0x0000ffff                               // 0x007dca34    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x007dca3a    894c2408
_jmp_addr_0x007dca3e:    push               0x1                                           // 0x007dca3e    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x007dca40    8d4c2404
                         push               0x00cf0000                                    // 0x007dca44    680000cf00
                         push               ecx                                           // 0x007dca49    51
                         call               dword ptr [__imp__AdjustWindowRect@4]         // 0x007dca4a    ff150c988a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x007dca50    a17850e800
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x007dca55    8d542410
                         push               edx                                           // 0x007dca59    52
                         push               eax                                           // 0x007dca5a    50
                         call               dword ptr [__imp__GetWindowRect@4]            // 0x007dca5b    ff15f4978a00
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x007dca61    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x007dca65    8b542404
                         sub.s              ecx, edx                                      // 0x007dca69    2bca
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x007dca6b    8b542408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x007dca6f    a17850e800
                         push               0x1                                           // 0x007dca74    6a01
                         push               ecx                                           // 0x007dca76    51
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007dca77    8b4c2408
                         sub.s              edx, ecx                                      // 0x007dca7b    2bd1
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x007dca7d    8b4c241c
                         push               edx                                           // 0x007dca81    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x007dca82    8b54241c
                         push               ecx                                           // 0x007dca86    51
                         push               edx                                           // 0x007dca87    52
                         push               eax                                           // 0x007dca88    50
                         call               dword ptr [__imp__MoveWindow@4]               // 0x007dca89    ff1550988a00
                         test               eax, eax                                      // 0x007dca8f    85c0
                         {disp8} jne        _jmp_addr_0x007dca9c                          // 0x007dca91    7509
                         mov                eax, 0x00000002                               // 0x007dca93    b802000000
                         add                esp, 0x20                                     // 0x007dca98    83c420
                         ret                                                              // 0x007dca9b    c3
_jmp_addr_0x007dca9c:    xor.s              eax, eax                                      // 0x007dca9c    33c0
                         add                esp, 0x20                                     // 0x007dca9e    83c420
                         ret                                                              // 0x007dcaa1    c3
                         nop                                                              // 0x007dcaa2    90
                         nop                                                              // 0x007dcaa3    90
                         nop                                                              // 0x007dcaa4    90
                         nop                                                              // 0x007dcaa5    90
                         nop                                                              // 0x007dcaa6    90
                         nop                                                              // 0x007dcaa7    90
                         nop                                                              // 0x007dcaa8    90
                         nop                                                              // 0x007dcaa9    90
                         nop                                                              // 0x007dcaaa    90
                         nop                                                              // 0x007dcaab    90
                         nop                                                              // 0x007dcaac    90
                         nop                                                              // 0x007dcaad    90
                         nop                                                              // 0x007dcaae    90
                         nop                                                              // 0x007dcaaf    90
                         push               edi                                           // 0x007dcab0    57
                         mov                ecx, 0x0000003f                               // 0x007dcab1    b93f000000
                         xor.s              eax, eax                                      // 0x007dcab6    33c0
                         mov                edi, 0x00e85374                               // 0x007dcab8    bf7453e800
                         rep stosd                                                        // 0x007dcabd    f3ab
                         stosw                                                            // 0x007dcabf    66ab
                         stosb                                                            // 0x007dcac1    aa
                         {disp32} mov       byte ptr [data_bytes + 0x4bf478], 0x00        // 0x007dcac2    c6057854e80000
                         pop                edi                                           // 0x007dcac9    5f
                         ret                                                              // 0x007dcaca    c3
                         nop                                                              // 0x007dcacb    90
                         nop                                                              // 0x007dcacc    90
                         nop                                                              // 0x007dcacd    90
                         nop                                                              // 0x007dcace    90
                         nop                                                              // 0x007dcacf    90
_jmp_addr_0x007dcad0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007dcad0    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x007dcad4    8b4c2404
                         neg                eax                                           // 0x007dcad8    f7d8
                         sbb.s              eax, eax                                      // 0x007dcada    1bc0
                         and                eax, 0x00000080                               // 0x007dcadc    2580000000
                         or.s               eax, ecx                                      // 0x007dcae1    0bc1
                         {disp32} mov       al, byte ptr [eax + 0x00c3122c]               // 0x007dcae3    8a802c12c300
                         ret                0x0008                                        // 0x007dcae9    c20800
                         nop                                                              // 0x007dcaec    90
                         nop                                                              // 0x007dcaed    90
                         nop                                                              // 0x007dcaee    90
                         nop                                                              // 0x007dcaef    90
_jmp_addr_0x007dcaf0:    push               ebp                                           // 0x007dcaf0    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x007dcaf1    8b6c240c
                         mov.s              eax, ebp                                      // 0x007dcaf5    8bc5
                         push               esi                                           // 0x007dcaf7    56
                         sar                eax, 0x10                                     // 0x007dcaf8    c1f810
                         test               ebp, 0x01000000                               // 0x007dcafb    f7c500000001
                         push               edi                                           // 0x007dcb01    57
                         mov.s              esi, ecx                                      // 0x007dcb02    8bf1
                         {disp8} mov        byte ptr [esp + 0x14], al                     // 0x007dcb04    88442414
                         {disp8} je         _jmp_addr_0x007dcb10                          // 0x007dcb08    7406
                         add                al, -0x80                                     // 0x007dcb0a    0480
                         {disp8} mov        byte ptr [esp + 0x14], al                     // 0x007dcb0c    88442414
_jmp_addr_0x007dcb10:    {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x007dcb10    8b7c2414
                         push               ebx                                           // 0x007dcb14    53
                         xor.s              ebx, ebx                                      // 0x007dcb15    33db
                         test               ebp, 0x80000000                               // 0x007dcb17    f7c500000080
                         {disp32} mov       byte ptr [esi + 0x0000010c], bl               // 0x007dcb1d    889e0c010000
                         {disp8} je         _jmp_addr_0x007dcb87                          // 0x007dcb23    7462
                         and                edi, 0x000000ff                               // 0x007dcb25    81e7ff000000
                         cmp                al, 0x2a                                      // 0x007dcb2b    3c2a
                         {disp8} mov        byte ptr [edi + esi * 0x1 + 0x08], bl         // 0x007dcb2d    885c3708
                         {disp8} jne        _jmp_addr_0x007dcb3a                          // 0x007dcb31    7507
                         cmp                byte ptr [esi + 0x3e], bl                     // 0x007dcb33    385e3e
                         {disp8} je         _jmp_addr_0x007dcb46                          // 0x007dcb36    740e
                         {disp8} jmp        _jmp_addr_0x007dcb43                          // 0x007dcb38    eb09
_jmp_addr_0x007dcb3a:    cmp                al, 0x36                                      // 0x007dcb3a    3c36
                         {disp8} jne        _jmp_addr_0x007dcb46                          // 0x007dcb3c    7508
                         cmp                byte ptr [esi + 0x32], bl                     // 0x007dcb3e    385e32
                         {disp8} je         _jmp_addr_0x007dcb4b                          // 0x007dcb41    7408
_jmp_addr_0x007dcb43:    {disp8} mov        byte ptr [esi + 0x3e], bl                     // 0x007dcb43    885e3e
_jmp_addr_0x007dcb46:    cmp                byte ptr [esi + 0x32], bl                     // 0x007dcb46    385e32
                         {disp8} jne        _jmp_addr_0x007dcb50                          // 0x007dcb49    7505
_jmp_addr_0x007dcb4b:    cmp                byte ptr [esi + 0x3e], bl                     // 0x007dcb4b    385e3e
                         {disp8} je         _jmp_addr_0x007dcb57                          // 0x007dcb4e    7407
_jmp_addr_0x007dcb50:    or                 byte ptr [esi + 0x10c], 0x10                  // 0x007dcb50    808e0c01000010
_jmp_addr_0x007dcb57:    cmp                byte ptr [esi + 0x25], bl                     // 0x007dcb57    385e25
                         {disp8} jne        _jmp_addr_0x007dcb64                          // 0x007dcb5a    7508
                         cmp                byte ptr [esi + 0x000000a5], bl               // 0x007dcb5c    389ea5000000
                         {disp8} je         _jmp_addr_0x007dcb6b                          // 0x007dcb62    7407
_jmp_addr_0x007dcb64:    or                 byte ptr [esi + 0x10c], 0x20                  // 0x007dcb64    808e0c01000020
_jmp_addr_0x007dcb6b:    cmp                byte ptr [esi + 0x40], bl                     // 0x007dcb6b    385e40
                         {disp8} jne        _jmp_addr_0x007dcb78                          // 0x007dcb6e    7508
                         cmp                byte ptr [esi + 0x000000c0], bl               // 0x007dcb70    389ec0000000
                         {disp8} je         _jmp_addr_0x007dcb7f                          // 0x007dcb76    7407
_jmp_addr_0x007dcb78:    or                 byte ptr [esi + 0x10c], 0x40                  // 0x007dcb78    808e0c01000040
_jmp_addr_0x007dcb7f:    {disp32} mov       dword ptr [esi + 0x00000108], ebx             // 0x007dcb7f    899e08010000
                         {disp8} jmp        _jmp_addr_0x007dcbec                          // 0x007dcb85    eb65
_jmp_addr_0x007dcb87:    and                edi, 0x000000ff                               // 0x007dcb87    81e7ff000000
                         {disp8} mov        byte ptr [edi + esi * 0x1 + 0x08], 0x01       // 0x007dcb8d    c644370801
                         {disp8} mov        al, byte ptr [esi + 0x32]                     // 0x007dcb92    8a4632
                         cmp.s              al, bl                                        // 0x007dcb95    3ac3
                         {disp8} jne        _jmp_addr_0x007dcb9e                          // 0x007dcb97    7505
                         cmp                byte ptr [esi + 0x3e], bl                     // 0x007dcb99    385e3e
                         {disp8} je         _jmp_addr_0x007dcba5                          // 0x007dcb9c    7407
_jmp_addr_0x007dcb9e:    or                 byte ptr [esi + 0x10c], 0x10                  // 0x007dcb9e    808e0c01000010
_jmp_addr_0x007dcba5:    cmp                byte ptr [esi + 0x25], bl                     // 0x007dcba5    385e25
                         {disp8} jne        _jmp_addr_0x007dcbb2                          // 0x007dcba8    7508
                         cmp                byte ptr [esi + 0x000000a5], bl               // 0x007dcbaa    389ea5000000
                         {disp8} je         _jmp_addr_0x007dcbb9                          // 0x007dcbb0    7407
_jmp_addr_0x007dcbb2:    or                 byte ptr [esi + 0x10c], 0x20                  // 0x007dcbb2    808e0c01000020
_jmp_addr_0x007dcbb9:    cmp                byte ptr [esi + 0x40], bl                     // 0x007dcbb9    385e40
                         {disp8} jne        _jmp_addr_0x007dcbc6                          // 0x007dcbbc    7508
                         cmp                byte ptr [esi + 0x000000c0], bl               // 0x007dcbbe    389ec0000000
                         {disp8} je         _jmp_addr_0x007dcbcd                          // 0x007dcbc4    7407
_jmp_addr_0x007dcbc6:    or                 byte ptr [esi + 0x10c], 0x40                  // 0x007dcbc6    808e0c01000040
_jmp_addr_0x007dcbcd:    {disp32} mov       eax, dword ptr [esi + 0x00000230]             // 0x007dcbcd    8b8630020000
                         {disp32} mov       dword ptr [esi + 0x00000108], edi             // 0x007dcbd3    89be08010000
                         cmp.s              eax, ebx                                      // 0x007dcbd9    3bc3
                         {disp8} je         _jmp_addr_0x007dcbe5                          // 0x007dcbdb    7408
                         push               edi                                           // 0x007dcbdd    57
                         mov.s              ecx, esi                                      // 0x007dcbde    8bce
                         call               _jmp_addr_0x007dcc90                          // 0x007dcbe0    e8ab000000
_jmp_addr_0x007dcbe5:    mov.s              ecx, esi                                      // 0x007dcbe5    8bce
                         call               _jmp_addr_0x007dcda0                          // 0x007dcbe7    e8b4010000
_jmp_addr_0x007dcbec:    {disp32} mov       eax, dword ptr [esi + 0x00000108]             // 0x007dcbec    8b8608010000
                         {disp32} mov       dword ptr [data_bytes + 0x4c6110], eax        // 0x007dcbf2    a310c1e800
                         mov                eax, dword ptr [esi]                          // 0x007dcbf7    8b06
                         cmp.s              eax, ebx                                      // 0x007dcbf9    3bc3
                         pop                ebx                                           // 0x007dcbfb    5b
                         {disp8} je         _jmp_addr_0x007dcc1d                          // 0x007dcbfc    741f
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x007dcbfe    8b4e04
                         movzx              dx, byte ptr [esi + 0x0000010c]               // 0x007dcc01    660fb6960c010000
                         shr                ebp, 0x1e                                     // 0x007dcc09    c1ed1e
                         and                ebp, 0x01                                     // 0x007dcc0c    83e501
                         push               ecx                                           // 0x007dcc0f    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007dcc10    8b4c2414
                         push               ebp                                           // 0x007dcc14    55
                         push               edx                                           // 0x007dcc15    52
                         push               edi                                           // 0x007dcc16    57
                         push               ecx                                           // 0x007dcc17    51
                         call               eax                                           // 0x007dcc18    ffd0
                         add                esp, 0x14                                     // 0x007dcc1a    83c414
_jmp_addr_0x007dcc1d:    pop                edi                                           // 0x007dcc1d    5f
                         pop                esi                                           // 0x007dcc1e    5e
                         pop                ebp                                           // 0x007dcc1f    5d
                         ret                0x0008                                        // 0x007dcc20    c20800
                         nop                                                              // 0x007dcc23    90
                         nop                                                              // 0x007dcc24    90
                         nop                                                              // 0x007dcc25    90
                         nop                                                              // 0x007dcc26    90
                         nop                                                              // 0x007dcc27    90
                         nop                                                              // 0x007dcc28    90
                         nop                                                              // 0x007dcc29    90
                         nop                                                              // 0x007dcc2a    90
                         nop                                                              // 0x007dcc2b    90
                         nop                                                              // 0x007dcc2c    90
                         nop                                                              // 0x007dcc2d    90
                         nop                                                              // 0x007dcc2e    90
                         nop                                                              // 0x007dcc2f    90
                         mov.s              edx, ecx                                      // 0x007dcc30    8bd1
                         push               edi                                           // 0x007dcc32    57
                         mov                ecx, 0x00000007                               // 0x007dcc33    b907000000
                         xor.s              eax, eax                                      // 0x007dcc38    33c0
                         {disp32} lea       edi, dword ptr [edx + 0x0000010d]             // 0x007dcc3a    8dba0d010000
                         rep stosd                                                        // 0x007dcc40    f3ab
                         stosw                                                            // 0x007dcc42    66ab
                         stosb                                                            // 0x007dcc44    aa
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007dcc45    8b442408
                         pop                edi                                           // 0x007dcc49    5f
                         cmp                eax, 0x1e                                     // 0x007dcc4a    83f81e
                         {disp8} jae        _jmp_addr_0x007dcc57                          // 0x007dcc4d    7308
                         {disp32} mov       dword ptr [edx + 0x00000224], eax             // 0x007dcc4f    898224020000
                         {disp8} jmp        _jmp_addr_0x007dcc61                          // 0x007dcc55    eb0a
_jmp_addr_0x007dcc57:    {disp32} mov       dword ptr [edx + 0x00000224], 0x0000001e      // 0x007dcc57    c782240200001e000000
_jmp_addr_0x007dcc61:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007dcc61    8b442408
                         {disp32} mov       dword ptr [edx + 0x00000230], 0x00000001      // 0x007dcc65    c7823002000001000000
                         {disp32} mov       dword ptr [edx + 0x0000022c], eax             // 0x007dcc6f    89822c020000
                         {disp32} mov       dword ptr [edx + 0x00000228], 0x00000000      // 0x007dcc75    c7822802000000000000
                         ret                0x0008                                        // 0x007dcc7f    c20800
                         nop                                                              // 0x007dcc82    90
                         nop                                                              // 0x007dcc83    90
                         nop                                                              // 0x007dcc84    90
                         nop                                                              // 0x007dcc85    90
                         nop                                                              // 0x007dcc86    90
                         nop                                                              // 0x007dcc87    90
                         nop                                                              // 0x007dcc88    90
                         nop                                                              // 0x007dcc89    90
                         nop                                                              // 0x007dcc8a    90
                         nop                                                              // 0x007dcc8b    90
                         nop                                                              // 0x007dcc8c    90
                         nop                                                              // 0x007dcc8d    90
                         nop                                                              // 0x007dcc8e    90
                         nop                                                              // 0x007dcc8f    90
_jmp_addr_0x007dcc90:    push               esi                                           // 0x007dcc90    56
                         mov.s              esi, ecx                                      // 0x007dcc91    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007dcc93    8b4c2408
                         cmp                ecx, dword ptr [esi + 0x0000022c]             // 0x007dcc97    3b8e2c020000
                         {disp8} jne        _jmp_addr_0x007dccad                          // 0x007dcc9d    750e
                         {disp32} mov       dword ptr [esi + 0x00000230], 0x00000000      // 0x007dcc9f    c7863002000000000000
                         pop                esi                                           // 0x007dcca9    5e
                         ret                0x0004                                        // 0x007dccaa    c20400
_jmp_addr_0x007dccad:    cmp                ecx, 0x0e                                     // 0x007dccad    83f90e
                         {disp8} jne        _jmp_addr_0x007dcccf                          // 0x007dccb0    751d
                         {disp32} mov       eax, dword ptr [esi + 0x00000228]             // 0x007dccb2    8b8628020000
                         test               eax, eax                                      // 0x007dccb8    85c0
                         {disp8} jbe        _jmp_addr_0x007dcccf                          // 0x007dccba    7613
                         dec                eax                                           // 0x007dccbc    48
                         {disp32} mov       dword ptr [esi + 0x00000228], eax             // 0x007dccbd    898628020000
                         {disp32} mov       byte ptr [eax + esi * 0x1 + 0x0000010d], 0x00 // 0x007dccc3    c684300d01000000
                         pop                esi                                           // 0x007dcccb    5e
                         ret                0x0004                                        // 0x007dcccc    c20400
_jmp_addr_0x007dcccf:    {disp32} mov       eax, dword ptr [esi + 0x00000228]             // 0x007dcccf    8b8628020000
                         {disp32} mov       edx, dword ptr [esi + 0x00000224]             // 0x007dccd5    8b9624020000
                         cmp.s              eax, edx                                      // 0x007dccdb    3bc2
                         {disp8} jae        _jmp_addr_0x007dcd03                          // 0x007dccdd    7324
                         push               0x0                                           // 0x007dccdf    6a00
                         push               ecx                                           // 0x007dcce1    51
                         mov.s              ecx, esi                                      // 0x007dcce2    8bce
                         call               _jmp_addr_0x007dcad0                          // 0x007dcce4    e8e7fdffff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000228]             // 0x007dcce9    8b8e28020000
                         {disp32} mov       byte ptr [ecx + esi * 0x1 + 0x0000010d], al   // 0x007dccef    8884310d010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000228]             // 0x007dccf6    8b8628020000
                         inc                eax                                           // 0x007dccfc    40
                         {disp32} mov       dword ptr [esi + 0x00000228], eax             // 0x007dccfd    898628020000
_jmp_addr_0x007dcd03:    pop                esi                                           // 0x007dcd03    5e
                         ret                0x0004                                        // 0x007dcd04    c20400
                         nop                                                              // 0x007dcd07    90
                         nop                                                              // 0x007dcd08    90
                         nop                                                              // 0x007dcd09    90
                         nop                                                              // 0x007dcd0a    90
                         nop                                                              // 0x007dcd0b    90
                         nop                                                              // 0x007dcd0c    90
                         nop                                                              // 0x007dcd0d    90
                         nop                                                              // 0x007dcd0e    90
                         nop                                                              // 0x007dcd0f    90
                         {disp32} mov       dword ptr [ecx + 0x00000230], 0x00000000      // 0x007dcd10    c7813002000000000000
                         ret                                                              // 0x007dcd1a    c3
                         nop                                                              // 0x007dcd1b    90
                         nop                                                              // 0x007dcd1c    90
                         nop                                                              // 0x007dcd1d    90
                         nop                                                              // 0x007dcd1e    90
                         nop                                                              // 0x007dcd1f    90
                         {disp32} mov       dword ptr [ecx + 0x00000230], 0x00000001      // 0x007dcd20    c7813002000001000000
                         ret                                                              // 0x007dcd2a    c3
                         nop                                                              // 0x007dcd2b    90
                         nop                                                              // 0x007dcd2c    90
                         nop                                                              // 0x007dcd2d    90
                         nop                                                              // 0x007dcd2e    90
                         nop                                                              // 0x007dcd2f    90
                         {disp32} mov       eax, dword ptr [ecx + 0x0000021c]             // 0x007dcd30    8b811c020000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000220]             // 0x007dcd36    8b9120020000
                         cmp.s              eax, edx                                      // 0x007dcd3c    3bc2
                         {disp8} je         _jmp_addr_0x007dcd7d                          // 0x007dcd3e    743d
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x007dcd40    8b542404
                         {disp32} mov       eax, dword ptr [ecx + eax * 0x8 + 0x0000012c] // 0x007dcd44    8b84c12c010000
                         push               esi                                           // 0x007dcd4b    56
                         mov                esi, 0x0000001d                               // 0x007dcd4c    be1d000000
                         mov                dword ptr [edx], eax                          // 0x007dcd51    8902
                         {disp32} mov       eax, dword ptr [ecx + 0x0000021c]             // 0x007dcd53    8b811c020000
                         {disp32} mov       dl, byte ptr [ecx + eax * 0x8 + 0x00000130]   // 0x007dcd59    8a94c130010000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007dcd60    8b44240c
                         mov                byte ptr [eax], dl                            // 0x007dcd64    8810
                         {disp32} mov       eax, dword ptr [ecx + 0x0000021c]             // 0x007dcd66    8b811c020000
                         inc                eax                                           // 0x007dcd6c    40
                         xor.s              edx, edx                                      // 0x007dcd6d    33d2
                         div                esi                                           // 0x007dcd6f    f7f6
                         xor.s              eax, eax                                      // 0x007dcd71    33c0
                         pop                esi                                           // 0x007dcd73    5e
                         {disp32} mov       dword ptr [ecx + 0x0000021c], edx             // 0x007dcd74    89911c020000
                         ret                0x0008                                        // 0x007dcd7a    c20800
_jmp_addr_0x007dcd7d:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x007dcd7d    8b4c2404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x007dcd81    8b542408
                         mov                eax, 0x00000002                               // 0x007dcd85    b802000000
                         mov                dword ptr [ecx], 0x00000000                   // 0x007dcd8a    c70100000000
                         mov                byte ptr [edx], 0x00                          // 0x007dcd90    c60200
                         ret                0x0008                                        // 0x007dcd93    c20800
                         nop                                                              // 0x007dcd96    90
                         nop                                                              // 0x007dcd97    90
                         nop                                                              // 0x007dcd98    90
                         nop                                                              // 0x007dcd99    90
                         nop                                                              // 0x007dcd9a    90
                         nop                                                              // 0x007dcd9b    90
                         nop                                                              // 0x007dcd9c    90
                         nop                                                              // 0x007dcd9d    90
                         nop                                                              // 0x007dcd9e    90
                         nop                                                              // 0x007dcd9f    90
_jmp_addr_0x007dcda0:    {disp32} mov       eax, dword ptr [ecx + 0x00000220]             // 0x007dcda0    8b8120020000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000108]             // 0x007dcda6    8b9108010000
                         push               esi                                           // 0x007dcdac    56
                         mov                esi, 0x0000001d                               // 0x007dcdad    be1d000000
                         {disp32} mov       dword ptr [ecx + eax * 0x8 + 0x0000012c], edx // 0x007dcdb2    8994c12c010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000220]             // 0x007dcdb9    8b8120020000
                         {disp32} mov       dl, byte ptr [ecx + 0x0000010c]               // 0x007dcdbf    8a910c010000
                         {disp32} mov       byte ptr [ecx + eax * 0x8 + 0x00000130], dl   // 0x007dcdc5    8894c130010000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000220]             // 0x007dcdcc    8b8120020000
                         inc                eax                                           // 0x007dcdd2    40
                         xor.s              edx, edx                                      // 0x007dcdd3    33d2
                         div                esi                                           // 0x007dcdd5    f7f6
                         {disp32} mov       eax, dword ptr [ecx + 0x0000021c]             // 0x007dcdd7    8b811c020000
                         pop                esi                                           // 0x007dcddd    5e
                         cmp.s              edx, eax                                      // 0x007dcdde    3bd0
                         {disp32} mov       dword ptr [ecx + 0x00000220], edx             // 0x007dcde0    899120020000
                         {disp8} jne        _jmp_addr_0x007dcdf6                          // 0x007dcde6    750e
                         xor.s              eax, eax                                      // 0x007dcde8    33c0
                         {disp32} mov       dword ptr [ecx + 0x0000021c], eax             // 0x007dcdea    89811c020000
                         {disp32} mov       dword ptr [ecx + 0x00000220], eax             // 0x007dcdf0    898120020000
_jmp_addr_0x007dcdf6:    ret                                                              // 0x007dcdf6    c3
                         nop                                                              // 0x007dcdf7    90
                         nop                                                              // 0x007dcdf8    90
                         nop                                                              // 0x007dcdf9    90
                         nop                                                              // 0x007dcdfa    90
                         nop                                                              // 0x007dcdfb    90
                         nop                                                              // 0x007dcdfc    90
                         nop                                                              // 0x007dcdfd    90
                         nop                                                              // 0x007dcdfe    90
                         nop                                                              // 0x007dcdff    90
_globl_ct_0x007dce00:    {disp32} jmp       _jmp_addr_0x007dce10                          // 0x007dce00    e90b000000
                         nop                                                              // 0x007dce05    90
                         nop                                                              // 0x007dce06    90
                         nop                                                              // 0x007dce07    90
                         nop                                                              // 0x007dce08    90
                         nop                                                              // 0x007dce09    90
                         nop                                                              // 0x007dce0a    90
                         nop                                                              // 0x007dce0b    90
                         nop                                                              // 0x007dce0c    90
                         nop                                                              // 0x007dce0d    90
                         nop                                                              // 0x007dce0e    90
                         nop                                                              // 0x007dce0f    90
_jmp_addr_0x007dce10:    ret                                                              // 0x007dce10    c3
                         nop                                                              // 0x007dce11    90
                         nop                                                              // 0x007dce12    90
                         nop                                                              // 0x007dce13    90
                         nop                                                              // 0x007dce14    90
                         nop                                                              // 0x007dce15    90
                         nop                                                              // 0x007dce16    90
                         nop                                                              // 0x007dce17    90
                         nop                                                              // 0x007dce18    90
                         nop                                                              // 0x007dce19    90
                         nop                                                              // 0x007dce1a    90
                         nop                                                              // 0x007dce1b    90
                         nop                                                              // 0x007dce1c    90
                         nop                                                              // 0x007dce1d    90
                         nop                                                              // 0x007dce1e    90
                         nop                                                              // 0x007dce1f    90
??0LHScreen@@QAE@XZ:
                         sub                esp, 0x0c                                     // 0x007dce20    83ec0c
                         push               ebx                                           // 0x007dce23    53
                         {disp32} mov       ebx, dword ptr [__imp__GetTickCount@4]        // 0x007dce24    8b1dc4918a00
                         push               esi                                           // 0x007dce2a    56
                         push               edi                                           // 0x007dce2b    57
                         mov.s              esi, ecx                                      // 0x007dce2c    8bf1
                         xor.s              edi, edi                                      // 0x007dce2e    33ff
                         {disp32} mov       dword ptr [esi + 0x000001a0], 0x3f800000      // 0x007dce30    c786a00100000000803f
                         {disp32} mov       dword ptr [esi + 0x000001a4], edi             // 0x007dce3a    89bea4010000
                         call               ebx                                           // 0x007dce40    ffd3
                         {disp32} fld       dword ptr [esi + 0x000001a0]                  // 0x007dce42    d986a0010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007dce48    d81d98a38a00
                         {disp32} mov       dword ptr [esi + 0x00000198], eax             // 0x007dce4e    898698010000
                         {disp32} mov       dword ptr [esi + 0x0000019c], edi             // 0x007dce54    89be9c010000
                         fnstsw             ax                                            // 0x007dce5a    dfe0
                         test               ah, 0x40                                      // 0x007dce5c    f6c440
                         {disp8} jne        _jmp_addr_0x007dceb4                          // 0x007dce5f    7553
                         {disp32} mov       eax, dword ptr [esi + 0x000001a0]             // 0x007dce61    8b86a0010000
                         {disp32} mov       dword ptr [esi + 0x000001a4], eax             // 0x007dce67    8986a4010000
                         call               ebx                                           // 0x007dce6d    ffd3
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]             // 0x007dce6f    8b8e98010000
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x007dce75    897c2414
                         sub.s              eax, ecx                                      // 0x007dce79    2bc1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000019c]             // 0x007dce7b    8b8e9c010000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007dce81    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x007dce85    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x007dce89    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x007dce8d    897c2414
                         {disp32} fmul      dword ptr [esi + 0x000001a0]                  // 0x007dce91    d88ea0010000
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x007dce97    da442410
                         call               _jmp_addr_0x007a1400                          // 0x007dce9b    e86045fcff
                         {disp32} mov       dword ptr [esi + 0x0000019c], eax             // 0x007dcea0    89869c010000
                         call               ebx                                           // 0x007dcea6    ffd3
                         {disp32} mov       dword ptr [esi + 0x00000198], eax             // 0x007dcea8    898698010000
                         {disp32} mov       dword ptr [esi + 0x000001a0], edi             // 0x007dceae    89bea0010000
_jmp_addr_0x007dceb4:    {disp32} fld       dword ptr [esi + 0x000001a0]                  // 0x007dceb4    d986a0010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007dceba    d81d98a38a00
                         fnstsw             ax                                            // 0x007dcec0    dfe0
                         test               ah, 0x40                                      // 0x007dcec2    f6c440
                         {disp8} jne        _jmp_addr_0x007dcf1a                          // 0x007dcec5    7553
                         {disp32} mov       edx, dword ptr [esi + 0x000001a0]             // 0x007dcec7    8b96a0010000
                         {disp32} mov       dword ptr [esi + 0x000001a4], edx             // 0x007dcecd    8996a4010000
                         call               ebx                                           // 0x007dced3    ffd3
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]             // 0x007dced5    8b8e98010000
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x007dcedb    897c2414
                         sub.s              eax, ecx                                      // 0x007dcedf    2bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007dcee1    89442410
                         {disp32} mov       eax, dword ptr [esi + 0x0000019c]             // 0x007dcee5    8b869c010000
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x007dceeb    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007dceef    89442410
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x007dcef3    897c2414
                         {disp32} fmul      dword ptr [esi + 0x000001a0]                  // 0x007dcef7    d88ea0010000
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x007dcefd    da442410
                         call               _jmp_addr_0x007a1400                          // 0x007dcf01    e8fa44fcff
                         {disp32} mov       dword ptr [esi + 0x0000019c], eax             // 0x007dcf06    89869c010000
                         call               ebx                                           // 0x007dcf0c    ffd3
                         {disp32} mov       dword ptr [esi + 0x00000198], eax             // 0x007dcf0e    898698010000
                         {disp32} mov       dword ptr [esi + 0x000001a0], edi             // 0x007dcf14    89bea0010000
_jmp_addr_0x007dcf1a:    push               0x2b                                          // 0x007dcf1a    6a2b
                         push               0x00c31338                                    // 0x007dcf1c    683813c300
                         push               0x000004dc                                    // 0x007dcf21    68dc040000
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x007dcf26    897e04
                         {disp8} mov        dword ptr [esi + 0x34], edi                   // 0x007dcf29    897e34
                         {disp8} mov        dword ptr [esi + 0x30], edi                   // 0x007dcf2c    897e30
                         call               ___nw__FUl                                    // 0x007dcf2f    e85ce8ffff
                         add                esp, 0x0c                                     // 0x007dcf34    83c40c
                         cmp.s              eax, edi                                      // 0x007dcf37    3bc7
                         {disp8} je         _jmp_addr_0x007dcf46                          // 0x007dcf39    740b
                         mov                dword ptr [eax], 0x00000005                   // 0x007dcf3b    c70005000000
                         add                eax, 0x04                                     // 0x007dcf41    83c004
                         {disp8} jmp        _jmp_addr_0x007dcf48                          // 0x007dcf44    eb02
_jmp_addr_0x007dcf46:    xor.s              eax, eax                                      // 0x007dcf46    33c0
_jmp_addr_0x007dcf48:    push               edi                                           // 0x007dcf48    57
                         mov.s              ecx, esi                                      // 0x007dcf49    8bce
                         mov                dword ptr [esi], eax                          // 0x007dcf4b    8906
                         call               @SetFullscreenMode__8LHScreenFi@12            // 0x007dcf4d    e87e010000
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x007dcf52    8d4c240c
                         {disp32} mov       dword ptr [esi + 0x000001ac], edi             // 0x007dcf56    89beac010000
                         push               ecx                                           // 0x007dcf5c    51
                         push               0x00c31330                                    // 0x007dcf5d    683013c300
                         push               0x009caff8                                    // 0x007dcf62    68f8af9c00
                         {disp32} mov       dword ptr [esi + 0x000001b0], edi             // 0x007dcf67    89beb0010000
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x007dcf6d    897e18
                         call               dword ptr [__imp__RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z]               // 0x007dcf70    ff1544938a00
                         add                esp, 0x0c                                     // 0x007dcf76    83c40c
                         test               eax, eax                                      // 0x007dcf79    85c0
                         {disp8} jne        _jmp_addr_0x007dcf93                          // 0x007dcf7b    7516
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x007dcf7d    8b54240c
                         neg                edx                                           // 0x007dcf81    f7da
                         sbb.s              edx, edx                                      // 0x007dcf83    1bd2
                         and                edx, 0xfffffff9                               // 0x007dcf85    83e2f9
                         add                edx, 0x08                                     // 0x007dcf88    83c208
                         {disp32} mov       dword ptr [esi + 0x00000084], edx             // 0x007dcf8b    899684000000
                         {disp8} jmp        _jmp_addr_0x007dcf9d                          // 0x007dcf91    eb0a
_jmp_addr_0x007dcf93:    {disp32} mov       dword ptr [esi + 0x00000084], 0x00000001      // 0x007dcf93    c7868400000001000000
_jmp_addr_0x007dcf9d:    push               edi                                           // 0x007dcf9d    57
                         {disp8} lea        eax, dword ptr [esi + 0x2c]                   // 0x007dcf9e    8d462c
                         push               0x009a5940                                    // 0x007dcfa1    6840599a00
                         push               eax                                           // 0x007dcfa6    50
                         push               edi                                           // 0x007dcfa7    57
                         call               _jmp_DDRAW_DLL__DirectDrawCreateEx                          // 0x007dcfa8    e8e9b30b00
                         mov.s              eax, esi                                      // 0x007dcfad    8bc6
                         pop                edi                                           // 0x007dcfaf    5f
                         pop                esi                                           // 0x007dcfb0    5e
                         pop                ebx                                           // 0x007dcfb1    5b
                         add                esp, 0x0c                                     // 0x007dcfb2    83c40c
                         ret                                                              // 0x007dcfb5    c3
                         nop                                                              // 0x007dcfb6    90
                         nop                                                              // 0x007dcfb7    90
                         nop                                                              // 0x007dcfb8    90
                         nop                                                              // 0x007dcfb9    90
                         nop                                                              // 0x007dcfba    90
                         nop                                                              // 0x007dcfbb    90
                         nop                                                              // 0x007dcfbc    90
                         nop                                                              // 0x007dcfbd    90
                         nop                                                              // 0x007dcfbe    90
                         nop                                                              // 0x007dcfbf    90
                         push               ebx                                           // 0x007dcfc0    53
                         {disp8} mov        bl, byte ptr [esp + 0x08]                     // 0x007dcfc1    8a5c2408
                         push               esi                                           // 0x007dcfc5    56
                         mov.s              esi, ecx                                      // 0x007dcfc6    8bf1
                         test               bl, 0x02                                      // 0x007dcfc8    f6c302
                         {disp8} je         _jmp_addr_0x007dcffb                          // 0x007dcfcb    742e
                         {disp8} mov        eax, dword ptr [esi + -0x04]                  // 0x007dcfcd    8b46fc
                         push               edi                                           // 0x007dcfd0    57
                         {disp8} lea        edi, dword ptr [esi + -0x04]                  // 0x007dcfd1    8d7efc
                         push               0x007dd010                                    // 0x007dcfd4    6810d07d00
                         push               eax                                           // 0x007dcfd9    50
                         push               0x000000f8                                    // 0x007dcfda    68f8000000
                         push               esi                                           // 0x007dcfdf    56
                         call               ??_M@YGXPAXIHP6EX0@Z@Z                        // 0x007dcfe0    e87e8f0c00
                         test               bl, 0x01                                      // 0x007dcfe5    f6c301
                         {disp8} je         _jmp_addr_0x007dcff3                          // 0x007dcfe8    7409
                         push               edi                                           // 0x007dcfea    57
                         call               ??3@YAXPAX@Z                                  // 0x007dcfeb    e8a81efdff
                         add                esp, 0x04                                     // 0x007dcff0    83c404
_jmp_addr_0x007dcff3:    mov.s              eax, edi                                      // 0x007dcff3    8bc7
                         pop                edi                                           // 0x007dcff5    5f
                         pop                esi                                           // 0x007dcff6    5e
                         pop                ebx                                           // 0x007dcff7    5b
                         ret                0x0004                                        // 0x007dcff8    c20400
_jmp_addr_0x007dcffb:    test               bl, 0x01                                      // 0x007dcffb    f6c301
                         {disp8} je         _jmp_addr_0x007dd009                          // 0x007dcffe    7409
                         push               esi                                           // 0x007dd000    56
                         call               ??3@YAXPAX@Z                                  // 0x007dd001    e8921efdff
                         add                esp, 0x04                                     // 0x007dd006    83c404
_jmp_addr_0x007dd009:    mov.s              eax, esi                                      // 0x007dd009    8bc6
                         pop                esi                                           // 0x007dd00b    5e
                         pop                ebx                                           // 0x007dd00c    5b
                         ret                0x0004                                        // 0x007dd00d    c20400
                         ret                                                              // 0x007dd010    c3
                         nop                                                              // 0x007dd011    90
                         nop                                                              // 0x007dd012    90
                         nop                                                              // 0x007dd013    90
                         nop                                                              // 0x007dd014    90
                         nop                                                              // 0x007dd015    90
                         nop                                                              // 0x007dd016    90
                         nop                                                              // 0x007dd017    90
                         nop                                                              // 0x007dd018    90
                         nop                                                              // 0x007dd019    90
                         nop                                                              // 0x007dd01a    90
                         nop                                                              // 0x007dd01b    90
                         nop                                                              // 0x007dd01c    90
                         nop                                                              // 0x007dd01d    90
                         nop                                                              // 0x007dd01e    90
                         nop                                                              // 0x007dd01f    90
_jmp_addr_0x007dd020:    sub                esp, 0x00000094                               // 0x007dd020    81ec94000000
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x007dd026    8d442400
                         push               ebx                                           // 0x007dd02a    53
                         push               eax                                           // 0x007dd02b    50
                         mov                ebx, 0x00000094                               // 0x007dd02c    bb94000000
                         push               -0x1                                          // 0x007dd031    6aff
                         push               0x0                                           // 0x007dd033    6a00
                         {disp8} mov        word ptr [esp + 0x34], bx                     // 0x007dd035    66895c2434
                         {disp8} mov        word ptr [esp + 0x36], 0x0000                 // 0x007dd03a    66c74424360000
                         call               dword ptr [__imp__EnumDisplaySettingsA@4]     // 0x007dd041    ff1544988a00
                         test               eax, eax                                      // 0x007dd047    85c0
                         {disp8} je         _jmp_addr_0x007dd0c3                          // 0x007dd049    7478
                         push               esi                                           // 0x007dd04b    56
                         {disp8} mov        esi, dword ptr [esp + 0x74]                   // 0x007dd04c    8b742474
                         push               edi                                           // 0x007dd050    57
                         {disp8} mov        edi, dword ptr [esp + 0x7c]                   // 0x007dd051    8b7c247c
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x007dd055    8d4c240c
                         {disp8} mov        word ptr [esp + 0x30], bx                     // 0x007dd059    66895c2430
                         {disp32} mov       ebx, dword ptr [rdata_bytes + 0x848]          // 0x007dd05e    8b1d48988a00
                         push               0x40000000                                    // 0x007dd064    6800000040
                         push               ecx                                           // 0x007dd069    51
                         {disp8} mov        word ptr [esp + 0x3a], 0x0000                 // 0x007dd06a    66c744243a0000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00580000            // 0x007dd071    c744243c00005800
                         {disp32} mov       dword ptr [esp + 0x00000080], 0x00000320      // 0x007dd079    c784248000000020030000
                         {disp32} mov       dword ptr [esp + 0x00000084], 0x00000258      // 0x007dd084    c784248400000058020000
                         call               ebx                                           // 0x007dd08f    ffd3
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x007dd091    8d54240c
                         push               0x40000000                                    // 0x007dd095    6800000040
                         push               edx                                           // 0x007dd09a    52
                         {disp8} mov        word ptr [esp + 0x38], 0x0094                 // 0x007dd09b    66c74424389400
                         {disp8} mov        word ptr [esp + 0x3a], 0x0000                 // 0x007dd0a2    66c744243a0000
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00580000            // 0x007dd0a9    c744243c00005800
                         {disp32} mov       dword ptr [esp + 0x00000080], esi             // 0x007dd0b1    89b42480000000
                         {disp32} mov       dword ptr [esp + 0x00000084], edi             // 0x007dd0b8    89bc2484000000
                         call               ebx                                           // 0x007dd0bf    ffd3
                         pop                edi                                           // 0x007dd0c1    5f
                         pop                esi                                           // 0x007dd0c2    5e
_jmp_addr_0x007dd0c3:    pop                ebx                                           // 0x007dd0c3    5b
                         add                esp, 0x00000094                               // 0x007dd0c4    81c494000000
                         ret                                                              // 0x007dd0ca    c3
                         nop                                                              // 0x007dd0cb    90
                         nop                                                              // 0x007dd0cc    90
                         nop                                                              // 0x007dd0cd    90
                         nop                                                              // 0x007dd0ce    90
                         nop                                                              // 0x007dd0cf    90
@SetFullscreenMode__8LHScreenFi@12:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007dd0d0    8b442404
                         test               eax, eax                                      // 0x007dd0d4    85c0
                         {disp8} je         _jmp_addr_0x007dd117                          // 0x007dd0d6    743f
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x388]          // 0x007dd0d8    a188938a00
                         push               esi                                           // 0x007dd0dd    56
                         {disp32} mov       esi, dword ptr [__imp__SetWindowLongA@4]      // 0x007dd0de    8b3540988a00
                         push               0x80000000                                    // 0x007dd0e4    6800000080
                         mov                dword ptr [eax], 0x00000001                   // 0x007dd0e9    c70001000000
                         {disp8} mov        dword ptr [ecx + 0x64], 0x00000000            // 0x007dd0ef    c7416400000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf078]        // 0x007dd0f6    8b0d7850e800
                         push               -0x10                                         // 0x007dd0fc    6af0
                         push               ecx                                           // 0x007dd0fe    51
                         call               esi                                           // 0x007dd0ff    ffd6
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf078]        // 0x007dd101    8b157850e800
                         push               0x8                                           // 0x007dd107    6a08
                         push               -0x14                                         // 0x007dd109    6aec
                         push               edx                                           // 0x007dd10b    52
                         call               esi                                           // 0x007dd10c    ffd6
                         call               _jmp_addr_0x007db8e0                          // 0x007dd10e    e8cde7ffff
                         pop                esi                                           // 0x007dd113    5e
                         ret                0x0004                                        // 0x007dd114    c20400
_jmp_addr_0x007dd117:    {disp8} mov        dword ptr [ecx + 0x64], 0x00000001            // 0x007dd117    c7416401000000
                         ret                0x0004                                        // 0x007dd11e    c20400
                         nop                                                              // 0x007dd121    90
                         nop                                                              // 0x007dd122    90
                         nop                                                              // 0x007dd123    90
                         nop                                                              // 0x007dd124    90
                         nop                                                              // 0x007dd125    90
                         nop                                                              // 0x007dd126    90
                         nop                                                              // 0x007dd127    90
                         nop                                                              // 0x007dd128    90
                         nop                                                              // 0x007dd129    90
                         nop                                                              // 0x007dd12a    90
                         nop                                                              // 0x007dd12b    90
                         nop                                                              // 0x007dd12c    90
                         nop                                                              // 0x007dd12d    90
                         nop                                                              // 0x007dd12e    90
                         nop                                                              // 0x007dd12f    90
_jmp_addr_0x007dd130:    push               esi                                           // 0x007dd130    56
                         push               edi                                           // 0x007dd131    57
                         mov.s              esi, ecx                                      // 0x007dd132    8bf1
                         call               _jmp_addr_0x007dd360                          // 0x007dd134    e827020000
                         mov.s              edi, eax                                      // 0x007dd139    8bf8
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007dd13b    8b462c
                         add                esi, 0x60                                     // 0x007dd13e    83c660
                         push               0x0                                           // 0x007dd141    6a00
                         mov                ecx, dword ptr [eax]                          // 0x007dd143    8b08
                         push               esi                                           // 0x007dd145    56
                         push               0x0                                           // 0x007dd146    6a00
                         push               eax                                           // 0x007dd148    50
                         call               dword ptr [ecx + 0x10]                        // 0x007dd149    ff5110
                         mov.s              eax, edi                                      // 0x007dd14c    8bc7
                         pop                edi                                           // 0x007dd14e    5f
                         pop                esi                                           // 0x007dd14f    5e
                         ret                                                              // 0x007dd150    c3
                         nop                                                              // 0x007dd151    90
                         nop                                                              // 0x007dd152    90
                         nop                                                              // 0x007dd153    90
                         nop                                                              // 0x007dd154    90
                         nop                                                              // 0x007dd155    90
                         nop                                                              // 0x007dd156    90
                         nop                                                              // 0x007dd157    90
                         nop                                                              // 0x007dd158    90
                         nop                                                              // 0x007dd159    90
                         nop                                                              // 0x007dd15a    90
                         nop                                                              // 0x007dd15b    90
                         nop                                                              // 0x007dd15c    90
                         nop                                                              // 0x007dd15d    90
                         nop                                                              // 0x007dd15e    90
                         nop                                                              // 0x007dd15f    90
_jmp_addr_0x007dd160:    sub                esp, 0x00000400                               // 0x007dd160    81ec00040000
                         or                 ecx, 0xffffffff                               // 0x007dd166    83c9ff
                         xor.s              eax, eax                                      // 0x007dd169    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x007dd16b    8d542400
                         push               esi                                           // 0x007dd16f    56
                         push               edi                                           // 0x007dd170    57
                         {disp32} mov       edi, dword ptr [esp + 0x0000040c]             // 0x007dd171    8bbc240c040000
                         repne scasb                                                      // 0x007dd178    f2ae
                         not                ecx                                           // 0x007dd17a    f7d1
                         sub.s              edi, ecx                                      // 0x007dd17c    2bf9
                         mov.s              eax, ecx                                      // 0x007dd17e    8bc1
                         mov.s              esi, edi                                      // 0x007dd180    8bf7
                         mov.s              edi, edx                                      // 0x007dd182    8bfa
                         shr                ecx, 2                                        // 0x007dd184    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007dd187    f3a5
                         mov.s              ecx, eax                                      // 0x007dd189    8bc8
                         xor.s              eax, eax                                      // 0x007dd18b    33c0
                         and                ecx, 0x03                                     // 0x007dd18d    83e103
                         rep movsb                                                        // 0x007dd190    f3a4
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x007dd192    8d7c2408
                         or                 ecx, 0xffffffff                               // 0x007dd196    83c9ff
                         xor.s              esi, esi                                      // 0x007dd199    33f6
                         repne scasb                                                      // 0x007dd19b    f2ae
                         not                ecx                                           // 0x007dd19d    f7d1
                         dec                ecx                                           // 0x007dd19f    49
                         {disp8} je         _jmp_addr_0x007dd1c7                          // 0x007dd1a0    7425
_jmp_addr_0x007dd1a2:    movsx              ecx, byte ptr [esp + esi * 0x1 + 0x08]        // 0x007dd1a2    0fbe4c3408
                         push               ecx                                           // 0x007dd1a7    51
                         call               _tolower                                      // 0x007dd1a8    e83bc4feff
                         {disp8} mov        byte ptr [esp + esi * 0x1 + 0x0c], al         // 0x007dd1ad    8844340c
                         add                esp, 0x04                                     // 0x007dd1b1    83c404
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x007dd1b4    8d7c2408
                         or                 ecx, 0xffffffff                               // 0x007dd1b8    83c9ff
                         xor.s              eax, eax                                      // 0x007dd1bb    33c0
                         inc                esi                                           // 0x007dd1bd    46
                         repne scasb                                                      // 0x007dd1be    f2ae
                         not                ecx                                           // 0x007dd1c0    f7d1
                         dec                ecx                                           // 0x007dd1c2    49
                         cmp.s              esi, ecx                                      // 0x007dd1c3    3bf1
                         .byte              0x72, 0xdb// {disp8} jb _jmp_addr_0x007dd1a2  // 0x007dd1c5    72db
_jmp_addr_0x007dd1c7:    {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007dd1c7    8d542408
                         push               0x00c31370                                    // 0x007dd1cb    687013c300
                         push               edx                                           // 0x007dd1d0    52
                         call               _strstr                                       // 0x007dd1d1    e88ac3feff
                         add                esp, 0x08                                     // 0x007dd1d6    83c408
                         test               eax, eax                                      // 0x007dd1d9    85c0
                         pop                edi                                           // 0x007dd1db    5f
                         pop                esi                                           // 0x007dd1dc    5e
                         {disp8} jne        _jmp_addr_0x007dd1fc                          // 0x007dd1dd    751d
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x007dd1df    8d442400
                         push               0x00c31368                                    // 0x007dd1e3    686813c300
                         push               eax                                           // 0x007dd1e8    50
                         call               _strstr                                       // 0x007dd1e9    e872c3feff
                         add                esp, 0x08                                     // 0x007dd1ee    83c408
                         test               eax, eax                                      // 0x007dd1f1    85c0
                         {disp8} jne        _jmp_addr_0x007dd1fc                          // 0x007dd1f3    7507
                         add                esp, 0x00000400                               // 0x007dd1f5    81c400040000
                         ret                                                              // 0x007dd1fb    c3
_jmp_addr_0x007dd1fc:    mov                eax, 0x00000001                               // 0x007dd1fc    b801000000
                         add                esp, 0x00000400                               // 0x007dd201    81c400040000
                         ret                                                              // 0x007dd207    c3
                         nop                                                              // 0x007dd208    90
                         nop                                                              // 0x007dd209    90
                         nop                                                              // 0x007dd20a    90
                         nop                                                              // 0x007dd20b    90
                         nop                                                              // 0x007dd20c    90
                         nop                                                              // 0x007dd20d    90
                         nop                                                              // 0x007dd20e    90
                         nop                                                              // 0x007dd20f    90
_jmp_addr_0x007dd210:    sub                esp, 0x00000400                               // 0x007dd210    81ec00040000
                         or                 ecx, 0xffffffff                               // 0x007dd216    83c9ff
                         xor.s              eax, eax                                      // 0x007dd219    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x007dd21b    8d542400
                         push               esi                                           // 0x007dd21f    56
                         push               edi                                           // 0x007dd220    57
                         {disp32} mov       edi, dword ptr [esp + 0x0000040c]             // 0x007dd221    8bbc240c040000
                         repne scasb                                                      // 0x007dd228    f2ae
                         not                ecx                                           // 0x007dd22a    f7d1
                         sub.s              edi, ecx                                      // 0x007dd22c    2bf9
                         mov.s              eax, ecx                                      // 0x007dd22e    8bc1
                         mov.s              esi, edi                                      // 0x007dd230    8bf7
                         mov.s              edi, edx                                      // 0x007dd232    8bfa
                         shr                ecx, 2                                        // 0x007dd234    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007dd237    f3a5
                         mov.s              ecx, eax                                      // 0x007dd239    8bc8
                         xor.s              eax, eax                                      // 0x007dd23b    33c0
                         and                ecx, 0x03                                     // 0x007dd23d    83e103
                         rep movsb                                                        // 0x007dd240    f3a4
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x007dd242    8d7c2408
                         or                 ecx, 0xffffffff                               // 0x007dd246    83c9ff
                         xor.s              esi, esi                                      // 0x007dd249    33f6
                         repne scasb                                                      // 0x007dd24b    f2ae
                         not                ecx                                           // 0x007dd24d    f7d1
                         dec                ecx                                           // 0x007dd24f    49
                         {disp8} je         _jmp_addr_0x007dd277                          // 0x007dd250    7425
_jmp_addr_0x007dd252:    movsx              ecx, byte ptr [esp + esi * 0x1 + 0x08]        // 0x007dd252    0fbe4c3408
                         push               ecx                                           // 0x007dd257    51
                         call               _tolower                                      // 0x007dd258    e88bc3feff
                         {disp8} mov        byte ptr [esp + esi * 0x1 + 0x0c], al         // 0x007dd25d    8844340c
                         add                esp, 0x04                                     // 0x007dd261    83c404
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x007dd264    8d7c2408
                         or                 ecx, 0xffffffff                               // 0x007dd268    83c9ff
                         xor.s              eax, eax                                      // 0x007dd26b    33c0
                         inc                esi                                           // 0x007dd26d    46
                         repne scasb                                                      // 0x007dd26e    f2ae
                         not                ecx                                           // 0x007dd270    f7d1
                         dec                ecx                                           // 0x007dd272    49
                         cmp.s              esi, ecx                                      // 0x007dd273    3bf1
                         .byte              0x72, 0xdb// {disp8} jb _jmp_addr_0x007dd252  // 0x007dd275    72db
_jmp_addr_0x007dd277:    {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007dd277    8d542408
                         push               0x00c31378                                    // 0x007dd27b    687813c300
                         push               edx                                           // 0x007dd280    52
                         call               _strstr                                       // 0x007dd281    e8dac2feff
                         add                esp, 0x08                                     // 0x007dd286    83c408
                         neg                eax                                           // 0x007dd289    f7d8
                         sbb.s              eax, eax                                      // 0x007dd28b    1bc0
                         pop                edi                                           // 0x007dd28d    5f
                         neg                eax                                           // 0x007dd28e    f7d8
                         pop                esi                                           // 0x007dd290    5e
                         add                esp, 0x00000400                               // 0x007dd291    81c400040000
                         ret                                                              // 0x007dd297    c3
                         nop                                                              // 0x007dd298    90
                         nop                                                              // 0x007dd299    90
                         nop                                                              // 0x007dd29a    90
                         nop                                                              // 0x007dd29b    90
                         nop                                                              // 0x007dd29c    90
                         nop                                                              // 0x007dd29d    90
                         nop                                                              // 0x007dd29e    90
                         nop                                                              // 0x007dd29f    90
_jmp_addr_0x007dd2a0:    sub                esp, 0x00000400                               // 0x007dd2a0    81ec00040000
                         or                 ecx, 0xffffffff                               // 0x007dd2a6    83c9ff
                         xor.s              eax, eax                                      // 0x007dd2a9    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x007dd2ab    8d542400
                         push               esi                                           // 0x007dd2af    56
                         push               edi                                           // 0x007dd2b0    57
                         {disp32} mov       edi, dword ptr [esp + 0x0000040c]             // 0x007dd2b1    8bbc240c040000
                         repne scasb                                                      // 0x007dd2b8    f2ae
                         not                ecx                                           // 0x007dd2ba    f7d1
                         sub.s              edi, ecx                                      // 0x007dd2bc    2bf9
                         mov.s              eax, ecx                                      // 0x007dd2be    8bc1
                         mov.s              esi, edi                                      // 0x007dd2c0    8bf7
                         mov.s              edi, edx                                      // 0x007dd2c2    8bfa
                         shr                ecx, 2                                        // 0x007dd2c4    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x007dd2c7    f3a5
                         mov.s              ecx, eax                                      // 0x007dd2c9    8bc8
                         xor.s              eax, eax                                      // 0x007dd2cb    33c0
                         and                ecx, 0x03                                     // 0x007dd2cd    83e103
                         rep movsb                                                        // 0x007dd2d0    f3a4
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x007dd2d2    8d7c2408
                         or                 ecx, 0xffffffff                               // 0x007dd2d6    83c9ff
                         xor.s              esi, esi                                      // 0x007dd2d9    33f6
                         repne scasb                                                      // 0x007dd2db    f2ae
                         not                ecx                                           // 0x007dd2dd    f7d1
                         dec                ecx                                           // 0x007dd2df    49
                         {disp8} je         _jmp_addr_0x007dd307                          // 0x007dd2e0    7425
_jmp_addr_0x007dd2e2:    movsx              ecx, byte ptr [esp + esi * 0x1 + 0x08]        // 0x007dd2e2    0fbe4c3408
                         push               ecx                                           // 0x007dd2e7    51
                         call               _tolower                                      // 0x007dd2e8    e8fbc2feff
                         {disp8} mov        byte ptr [esp + esi * 0x1 + 0x0c], al         // 0x007dd2ed    8844340c
                         add                esp, 0x04                                     // 0x007dd2f1    83c404
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x007dd2f4    8d7c2408
                         or                 ecx, 0xffffffff                               // 0x007dd2f8    83c9ff
                         xor.s              eax, eax                                      // 0x007dd2fb    33c0
                         inc                esi                                           // 0x007dd2fd    46
                         repne scasb                                                      // 0x007dd2fe    f2ae
                         not                ecx                                           // 0x007dd300    f7d1
                         dec                ecx                                           // 0x007dd302    49
                         cmp.s              esi, ecx                                      // 0x007dd303    3bf1
                         .byte              0x72, 0xdb// {disp8} jb _jmp_addr_0x007dd2e2  // 0x007dd305    72db
_jmp_addr_0x007dd307:    {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007dd307    8d542408
                         push               0x00c31394                                    // 0x007dd30b    689413c300
                         push               edx                                           // 0x007dd310    52
                         call               _strstr                                       // 0x007dd311    e84ac2feff
                         add                esp, 0x08                                     // 0x007dd316    83c408
                         test               eax, eax                                      // 0x007dd319    85c0
                         pop                edi                                           // 0x007dd31b    5f
                         pop                esi                                           // 0x007dd31c    5e
                         {disp8} jne        _jmp_addr_0x007dd34b                          // 0x007dd31d    752c
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x007dd31f    8d442400
                         push               0x00c3138c                                    // 0x007dd323    688c13c300
                         push               eax                                           // 0x007dd328    50
                         call               _strstr                                       // 0x007dd329    e832c2feff
                         add                esp, 0x08                                     // 0x007dd32e    83c408
                         test               eax, eax                                      // 0x007dd331    85c0
                         {disp8} jne        _jmp_addr_0x007dd34b                          // 0x007dd333    7516
                         push               0x00c31380                                    // 0x007dd335    688013c300
                         call               _Report3D__FPCce                              // 0x007dd33a    e891e80300
                         add                esp, 0x04                                     // 0x007dd33f    83c404
                         xor.s              eax, eax                                      // 0x007dd342    33c0
                         add                esp, 0x00000400                               // 0x007dd344    81c400040000
                         ret                                                              // 0x007dd34a    c3
_jmp_addr_0x007dd34b:    mov                eax, 0x00000001                               // 0x007dd34b    b801000000
                         add                esp, 0x00000400                               // 0x007dd350    81c400040000
                         ret                                                              // 0x007dd356    c3
                         nop                                                              // 0x007dd357    90
                         nop                                                              // 0x007dd358    90
                         nop                                                              // 0x007dd359    90
                         nop                                                              // 0x007dd35a    90
                         nop                                                              // 0x007dd35b    90
                         nop                                                              // 0x007dd35c    90
                         nop                                                              // 0x007dd35d    90
                         nop                                                              // 0x007dd35e    90
                         nop                                                              // 0x007dd35f    90
_jmp_addr_0x007dd360:    sub                esp, 0x0000043c                               // 0x007dd360    81ec3c040000
                         push               ebx                                           // 0x007dd366    53
                         push               esi                                           // 0x007dd367    56
                         mov.s              esi, ecx                                      // 0x007dd368    8bf1
                         xor.s              ebx, ebx                                      // 0x007dd36a    33db
                         {disp32} mov       dword ptr [data_bytes + 0x4c65c8], ebx        // 0x007dd36c    891dc8c5e800
                         {disp8} mov        dword ptr [esp + 0x08], esi                   // 0x007dd372    89742408
                         mov                eax, dword ptr [esi]                          // 0x007dd376    8b06
                         push               eax                                           // 0x007dd378    50
                         push               0x007dd5c0                                    // 0x007dd379    68c0d57d00
                         call               _jmp_DDRAW_DLL__DirectDrawEnumerateA                          // 0x007dd37e    e80db00b00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4c65c8]        // 0x007dd383    a1c8c5e800
                         {disp8} mov        dword ptr [esp + 0x0c], ebx                   // 0x007dd388    895c240c
                         cmp.s              eax, ebx                                      // 0x007dd38c    3bc3
                         {disp32} je        _jmp_addr_0x007dd5aa                          // 0x007dd38e    0f8416020000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007dd394    8b462c
                         push               ebp                                           // 0x007dd397    55
                         {disp8} lea        ebp, dword ptr [esi + 0x2c]                   // 0x007dd398    8d6e2c
                         cmp.s              eax, ebx                                      // 0x007dd39b    3bc3
                         push               edi                                           // 0x007dd39d    57
                         {disp8} je         _jmp_addr_0x007dd3a9                          // 0x007dd39e    7409
                         mov                ecx, dword ptr [eax]                          // 0x007dd3a0    8b08
                         push               eax                                           // 0x007dd3a2    50
                         call               dword ptr [ecx + 8]                           // 0x007dd3a3    ff5108
                         {disp8} mov        dword ptr [ebp + 0x00], ebx                   // 0x007dd3a6    895d00
_jmp_addr_0x007dd3a9:    cmp                dword ptr [data_bytes + 0x4c65d4], ebx        // 0x007dd3a9    391dd4c5e800
                         {disp8} je         _jmp_addr_0x007dd3ef                          // 0x007dd3af    743e
                         cmp                dword ptr [data_bytes + 0x4c65c8], ebx        // 0x007dd3b1    391dc8c5e800
                         {disp8} jbe        _jmp_addr_0x007dd3ef                          // 0x007dd3b7    7636
                         mov                eax, dword ptr [esi]                          // 0x007dd3b9    8b06
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x007dd3bb    89442418
                         add                eax, 0x000000dc                               // 0x007dd3bf    05dc000000
_jmp_addr_0x007dd3c4:    {disp32} mov       edi, dword ptr [data_bytes + 0x4c65d4]        // 0x007dd3c4    8b3dd4c5e800
                         mov                ecx, 0x00000004                               // 0x007dd3ca    b904000000
                         mov.s              esi, eax                                      // 0x007dd3cf    8bf0
                         xor.s              edx, edx                                      // 0x007dd3d1    33d2
                         repe cmpsd                                                       // 0x007dd3d3    f3a7
                         {disp32} je        _jmp_addr_0x007dd4ea                          // 0x007dd3d5    0f840f010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c65c8]        // 0x007dd3db    8b0dc8c5e800
                         inc                ebx                                           // 0x007dd3e1    43
                         add                eax, 0x000000f8                               // 0x007dd3e2    05f8000000
                         cmp.s              ebx, ecx                                      // 0x007dd3e7    3bd9
                         .byte              0x72, 0xd9// {disp8} jb _jmp_addr_0x007dd3c4  // 0x007dd3e9    72d9
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x007dd3eb    8b742410
_jmp_addr_0x007dd3ef:    push               0x0                                           // 0x007dd3ef    6a00
                         push               0x009a5940                                    // 0x007dd3f1    6840599a00
                         push               ebp                                           // 0x007dd3f6    55
                         push               0x0                                           // 0x007dd3f7    6a00
                         call               _jmp_DDRAW_DLL__DirectDrawCreateEx                          // 0x007dd3f9    e898af0b00
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x007dd3fe    8b4500
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x007dd401    8d54241c
                         push               0x0                                           // 0x007dd405    6a00
                         push               edx                                           // 0x007dd407    52
                         mov                ecx, dword ptr [eax]                          // 0x007dd408    8b08
                         push               eax                                           // 0x007dd40a    50
                         call               dword ptr [ecx + 0x6c]                        // 0x007dd40b    ff516c
                         {disp32} lea       eax, dword ptr [esp + 0x0000021c]             // 0x007dd40e    8d84241c020000
                         push               eax                                           // 0x007dd415    50
                         call               _jmp_addr_0x007dd160                          // 0x007dd416    e845fdffff
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3e9c]        // 0x007dd41b    8b1d9c9eea00
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x007dd421    8d4c2420
                         or.s               ebx, eax                                      // 0x007dd425    0bd8
                         push               ecx                                           // 0x007dd427    51
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e9c], ebx        // 0x007dd428    891d9c9eea00
                         call               _jmp_addr_0x007dd160                          // 0x007dd42e    e82dfdffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3e9c]        // 0x007dd433    8b0d9c9eea00
                         {disp32} lea       edx, dword ptr [esp + 0x00000224]             // 0x007dd439    8d942424020000
                         or.s               ecx, eax                                      // 0x007dd440    0bc8
                         push               edx                                           // 0x007dd442    52
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e9c], ecx        // 0x007dd443    890d9c9eea00
                         call               _jmp_addr_0x007dd210                          // 0x007dd449    e8c2fdffff
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x51744c]        // 0x007dd44e    8b1d4cd4ed00
                         or.s               ebx, eax                                      // 0x007dd454    0bd8
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x007dd456    8d442428
                         push               eax                                           // 0x007dd45a    50
                         {disp32} mov       dword ptr [data_bytes + 0x51744c], ebx        // 0x007dd45b    891d4cd4ed00
                         call               _jmp_addr_0x007dd210                          // 0x007dd461    e8aafdffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x51744c]        // 0x007dd466    8b0d4cd4ed00
                         or.s               ecx, eax                                      // 0x007dd46c    0bc8
                         {disp32} mov       dword ptr [data_bytes + 0x51744c], ecx        // 0x007dd46e    890d4cd4ed00
                         {disp32} lea       ecx, dword ptr [esp + 0x0000022c]             // 0x007dd474    8d8c242c020000
                         push               ecx                                           // 0x007dd47b    51
                         call               _jmp_addr_0x007dd2a0                          // 0x007dd47c    e81ffeffff
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x5045f0]        // 0x007dd481    8b1df0a5ec00
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x007dd487    8d542430
                         or.s               ebx, eax                                      // 0x007dd48b    0bd8
                         push               edx                                           // 0x007dd48d    52
                         {disp32} mov       dword ptr [data_bytes + 0x5045f0], ebx        // 0x007dd48e    891df0a5ec00
                         call               _jmp_addr_0x007dd2a0                          // 0x007dd494    e807feffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5045f0]        // 0x007dd499    8b0df0a5ec00
                         add                esp, 0x18                                     // 0x007dd49f    83c418
                         or.s               ecx, eax                                      // 0x007dd4a2    0bc8
                         {disp32} mov       dword ptr [data_bytes + 0x5045f0], ecx        // 0x007dd4a4    890df0a5ec00
_jmp_addr_0x007dd4aa:    {disp32} mov       eax, dword ptr [data_bytes + 0x517450]        // 0x007dd4aa    a150d4ed00
                         pop                edi                                           // 0x007dd4af    5f
                         test               eax, eax                                      // 0x007dd4b0    85c0
                         pop                ebp                                           // 0x007dd4b2    5d
                         {disp8} je         _jmp_addr_0x007dd4c1                          // 0x007dd4b3    740c
                         push               0x1                                           // 0x007dd4b5    6a01
                         mov                ecx, 0x00e85050                               // 0x007dd4b7    b95050e800
                         call               @SetFullscreenMode__8LHScreenFi@12            // 0x007dd4bc    e80ffcffff
_jmp_addr_0x007dd4c1:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007dd4c1    8b44240c
                         mov                edx, dword ptr [esi]                          // 0x007dd4c5    8b16
                         mov.s              ecx, eax                                      // 0x007dd4c7    8bc8
                         shl                ecx, 5                                        // 0x007dd4c9    c1e105
                         sub.s              ecx, eax                                      // 0x007dd4cc    2bc8
                         lea                eax, dword ptr [edx + ecx * 0x8]              // 0x007dd4ce    8d04ca
                         push               eax                                           // 0x007dd4d1    50
                         push               0x00c3139c                                    // 0x007dd4d2    689c13c300
                         call               _Report3D__FPCce                              // 0x007dd4d7    e8f4e60300
                         add                esp, 0x08                                     // 0x007dd4dc    83c408
                         xor.s              eax, eax                                      // 0x007dd4df    33c0
                         pop                esi                                           // 0x007dd4e1    5e
                         pop                ebx                                           // 0x007dd4e2    5b
                         add                esp, 0x0000043c                               // 0x007dd4e3    81c43c040000
                         ret                                                              // 0x007dd4e9    c3
_jmp_addr_0x007dd4ea:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007dd4ea    8b442418
                         mov.s              esi, ebx                                      // 0x007dd4ee    8bf3
                         shl                esi, 5                                        // 0x007dd4f0    c1e605
                         sub.s              esi, ebx                                      // 0x007dd4f3    2bf3
                         push               0x0                                           // 0x007dd4f5    6a00
                         shl                esi, 3                                        // 0x007dd4f7    c1e603
                         push               0x009a5940                                    // 0x007dd4fa    6840599a00
                         push               ebp                                           // 0x007dd4ff    55
                         {disp32} lea       ecx, dword ptr [esi + eax * 0x1 + 0x000000cc] // 0x007dd500    8d8c06cc000000
                         push               ecx                                           // 0x007dd507    51
                         call               _jmp_DDRAW_DLL__DirectDrawCreateEx                          // 0x007dd508    e889ae0b00
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007dd50d    8b442410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x007dd511    895c2414
                         mov                edx, dword ptr [eax]                          // 0x007dd515    8b10
                         {disp32} mov       ecx, dword ptr [esi + edx * 0x1 + 0x000000ec] // 0x007dd517    8b8c16ec000000
                         test               ecx, ecx                                      // 0x007dd51e    85c9
                         {disp8} je         _jmp_addr_0x007dd52c                          // 0x007dd520    740a
                         {disp32} mov       dword ptr [data_bytes + 0x517450], 0x00000001 // 0x007dd522    c70550d4ed0001000000
_jmp_addr_0x007dd52c:    mov                ecx, dword ptr [eax]                          // 0x007dd52c    8b08
                         {disp32} mov       edx, dword ptr [esi + ecx * 0x1 + 0x000000f4] // 0x007dd52e    8b940ef4000000
                         test               edx, edx                                      // 0x007dd535    85d2
                         {disp8} je         _jmp_addr_0x007dd543                          // 0x007dd537    740a
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e9c], 0x00000001 // 0x007dd539    c7059c9eea0001000000
_jmp_addr_0x007dd543:    mov                edx, dword ptr [eax]                          // 0x007dd543    8b10
                         {disp32} mov       eax, dword ptr [esi + edx * 0x1 + 0x000000f0] // 0x007dd545    8b8416f0000000
                         test               eax, eax                                      // 0x007dd54c    85c0
                         {disp8} je         _jmp_addr_0x007dd55a                          // 0x007dd54e    740a
                         {disp32} mov       dword ptr [data_bytes + 0x51744c], 0x00000001 // 0x007dd550    c7054cd4ed0001000000
_jmp_addr_0x007dd55a:    {disp8} mov        ebp, dword ptr [ebp + 0x00]                   // 0x007dd55a    8b6d00
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x007dd55d    8d4c241c
                         push               0x0                                           // 0x007dd561    6a00
                         push               ecx                                           // 0x007dd563    51
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x007dd564    8b4500
                         push               ebp                                           // 0x007dd567    55
                         call               dword ptr [eax + 0x6c]                        // 0x007dd568    ff506c
                         {disp32} lea       edx, dword ptr [esp + 0x0000021c]             // 0x007dd56b    8d94241c020000
                         push               edx                                           // 0x007dd572    52
                         call               _jmp_addr_0x007dd2a0                          // 0x007dd573    e828fdffff
                         {disp32} mov       edi, dword ptr [data_bytes + 0x5045f0]        // 0x007dd578    8b3df0a5ec00
                         or.s               edi, eax                                      // 0x007dd57e    0bf8
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x007dd580    8d442420
                         push               eax                                           // 0x007dd584    50
                         {disp32} mov       dword ptr [data_bytes + 0x5045f0], edi        // 0x007dd585    893df0a5ec00
                         call               _jmp_addr_0x007dd2a0                          // 0x007dd58b    e810fdffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5045f0]        // 0x007dd590    8b0df0a5ec00
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x007dd596    8b742418
                         add                esp, 0x08                                     // 0x007dd59a    83c408
                         or.s               ecx, eax                                      // 0x007dd59d    0bc8
                         {disp32} mov       dword ptr [data_bytes + 0x5045f0], ecx        // 0x007dd59f    890df0a5ec00
                         {disp32} jmp       _jmp_addr_0x007dd4aa                          // 0x007dd5a5    e900ffffff
_jmp_addr_0x007dd5aa:    pop                esi                                           // 0x007dd5aa    5e
                         mov                eax, 0x00000002                               // 0x007dd5ab    b802000000
                         pop                ebx                                           // 0x007dd5b0    5b
                         add                esp, 0x0000043c                               // 0x007dd5b1    81c43c040000
                         ret                                                              // 0x007dd5b7    c3
                         nop                                                              // 0x007dd5b8    90
                         nop                                                              // 0x007dd5b9    90
                         nop                                                              // 0x007dd5ba    90
                         nop                                                              // 0x007dd5bb    90
                         nop                                                              // 0x007dd5bc    90
                         nop                                                              // 0x007dd5bd    90
                         nop                                                              // 0x007dd5be    90
                         nop                                                              // 0x007dd5bf    90
                         sub                esp, 0x00000730                               // 0x007dd5c0    81ec30070000
                         push               ebx                                           // 0x007dd5c6    53
                         push               ebp                                           // 0x007dd5c7    55
                         push               esi                                           // 0x007dd5c8    56
                         push               edi                                           // 0x007dd5c9    57
                         push               0x00c314c8                                    // 0x007dd5ca    68c814c300
                         call               _Report3D__FPCce                              // 0x007dd5cf    e8fce50300
                         {disp32} mov       ebx, dword ptr [esp + 0x0000074c]             // 0x007dd5d4    8b9c244c070000
                         add                esp, 0x04                                     // 0x007dd5db    83c404
                         push               ebx                                           // 0x007dd5de    53
                         push               0x00c314b0                                    // 0x007dd5df    68b014c300
                         call               _Report3D__FPCce                              // 0x007dd5e4    e8e7e50300
                         {disp32} mov       eax, dword ptr [esp + 0x00000754]             // 0x007dd5e9    8b842454070000
                         add                esp, 0x08                                     // 0x007dd5f0    83c408
                         push               eax                                           // 0x007dd5f3    50
                         push               0x00c31498                                    // 0x007dd5f4    689814c300
                         call               _Report3D__FPCce                              // 0x007dd5f9    e8d2e50300
                         {disp32} mov       ebp, dword ptr [esp + 0x0000074c]             // 0x007dd5fe    8bac244c070000
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4c65c8]        // 0x007dd605    8b35c8c5e800
                         xor.s              edi, edi                                      // 0x007dd60b    33ff
                         add                esp, 0x08                                     // 0x007dd60d    83c408
                         cmp.s              ebp, edi                                      // 0x007dd610    3bef
                         {disp8} je         _jmp_addr_0x007dd666                          // 0x007dd612    7452
                         {disp32} mov       edx, dword ptr [esp + 0x00000750]             // 0x007dd614    8b942450070000
                         mov.s              ecx, esi                                      // 0x007dd61b    8bce
                         shl                ecx, 5                                        // 0x007dd61d    c1e105
                         sub.s              ecx, esi                                      // 0x007dd620    2bce
                         push               0x00c31478                                    // 0x007dd622    687814c300
                         lea                esi, dword ptr [edx + ecx * 0x8]              // 0x007dd627    8d34ca
                         mov.s              ecx, ebp                                      // 0x007dd62a    8bcd
                         mov                edi, dword ptr [ecx]                          // 0x007dd62c    8b39
                         {disp32} lea       eax, dword ptr [esi + 0x000000cc]             // 0x007dd62e    8d86cc000000
                         mov.s              edx, eax                                      // 0x007dd634    8bd0
                         mov                dword ptr [edx], edi                          // 0x007dd636    893a
                         {disp8} mov        edi, dword ptr [ecx + 0x04]                   // 0x007dd638    8b7904
                         {disp8} mov        dword ptr [edx + 0x04], edi                   // 0x007dd63b    897a04
                         {disp8} mov        edi, dword ptr [ecx + 0x08]                   // 0x007dd63e    8b7908
                         {disp8} mov        dword ptr [edx + 0x08], edi                   // 0x007dd641    897a08
                         {disp8} mov        ecx, dword ptr [ecx + 0x0c]                   // 0x007dd644    8b490c
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x007dd647    894a0c
                         {disp32} mov       dword ptr [esi + 0x000000c8], eax             // 0x007dd64a    8986c8000000
                         call               _Report3D__FPCce                              // 0x007dd650    e87be50300
                         add                esp, 0x04                                     // 0x007dd655    83c404
                         {disp32} mov       dword ptr [esi + 0x000000ec], 0x00000001      // 0x007dd658    c786ec00000001000000
                         xor.s              edi, edi                                      // 0x007dd662    33ff
                         {disp8} jmp        _jmp_addr_0x007dd6a3                          // 0x007dd664    eb3d
_jmp_addr_0x007dd666:    push               0x00c31454                                    // 0x007dd666    685414c300
                         call               _Report3D__FPCce                              // 0x007dd66b    e860e50300
                         {disp32} mov       eax, dword ptr [esp + 0x00000754]             // 0x007dd670    8b842454070000
                         mov.s              edx, esi                                      // 0x007dd677    8bd6
                         shl                edx, 5                                        // 0x007dd679    c1e205
                         sub.s              edx, esi                                      // 0x007dd67c    2bd6
                         add                esp, 0x04                                     // 0x007dd67e    83c404
                         xor.s              ecx, ecx                                      // 0x007dd681    33c9
                         lea                esi, dword ptr [eax + edx * 0x8]              // 0x007dd683    8d34d0
                         {disp32} lea       edx, dword ptr [esi + 0x000000cc]             // 0x007dd686    8d96cc000000
                         {disp32} mov       dword ptr [esi + 0x000000c8], edi             // 0x007dd68c    89bec8000000
                         mov                dword ptr [edx], ecx                          // 0x007dd692    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x007dd694    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x007dd697    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x007dd69a    894a0c
                         {disp32} mov       dword ptr [esi + 0x000000ec], edi             // 0x007dd69d    89beec000000
_jmp_addr_0x007dd6a3:    {disp32} mov       eax, dword ptr [esi + 0x000000ec]             // 0x007dd6a3    8b86ec000000
                         xor.s              ecx, ecx                                      // 0x007dd6a9    33c9
                         {disp32} mov       dword ptr [esi + 0x000000f4], eax             // 0x007dd6ab    8986f4000000
                         {disp32} mov       dword ptr [esi + 0x000000f0], edi             // 0x007dd6b1    89bef0000000
                         {disp32} lea       edi, dword ptr [esi + 0x000000dc]             // 0x007dd6b7    8dbedc000000
                         push               0x000000c7                                    // 0x007dd6bd    68c7000000
                         mov.s              edx, edi                                      // 0x007dd6c2    8bd7
                         push               ebx                                           // 0x007dd6c4    53
                         push               esi                                           // 0x007dd6c5    56
                         mov                dword ptr [edx], ecx                          // 0x007dd6c6    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x007dd6c8    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x007dd6cb    894a08
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x007dd6ce    894a0c
                         call               _strncpy                                      // 0x007dd6d1    e8cab9feff
                         add                esp, 0x0c                                     // 0x007dd6d6    83c40c
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x007dd6d9    8d442414
                         push               0x0                                           // 0x007dd6dd    6a00
                         push               eax                                           // 0x007dd6df    50
                         push               ebp                                           // 0x007dd6e0    55
                         call               _jmp_DDRAW_DLL__DirectDrawCreate                          // 0x007dd6e1    e8b6ac0b00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x007dd6e6    8d542410
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x007dd6ea    c744241000000000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007dd6f2    8b442414
                         push               edx                                           // 0x007dd6f6    52
                         push               0x009a5940                                    // 0x007dd6f7    6840599a00
                         push               eax                                           // 0x007dd6fc    50
                         mov                ecx, dword ptr [eax]                          // 0x007dd6fd    8b08
                         call               dword ptr [ecx]                               // 0x007dd6ff    ff11
                         test               eax, eax                                      // 0x007dd701    85c0
                         {disp8} jne        _jmp_addr_0x007dd781                          // 0x007dd703    757c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007dd705    8b442410
                         test               eax, eax                                      // 0x007dd709    85c0
                         {disp8} je         _jmp_addr_0x007dd781                          // 0x007dd70b    7474
                         mov                ecx, dword ptr [eax]                          // 0x007dd70d    8b08
                         {disp32} lea       edx, dword ptr [esp + 0x00000310]             // 0x007dd70f    8d942410030000
                         push               0x0                                           // 0x007dd716    6a00
                         push               edx                                           // 0x007dd718    52
                         push               eax                                           // 0x007dd719    50
                         call               dword ptr [ecx + 0x6c]                        // 0x007dd71a    ff516c
                         test               eax, eax                                      // 0x007dd71d    85c0
                         {disp8} jne        _jmp_addr_0x007dd773                          // 0x007dd71f    7552
                         {disp32} mov       eax, dword ptr [esp + 0x00000728]             // 0x007dd721    8b842428070000
                         push               0x000000c7                                    // 0x007dd728    68c7000000
                         mov                dword ptr [edi], eax                          // 0x007dd72d    8907
                         {disp32} mov       ecx, dword ptr [esp + 0x00000730]             // 0x007dd72f    8b8c2430070000
                         {disp8} mov        dword ptr [edi + 0x04], ecx                   // 0x007dd736    894f04
                         {disp32} mov       edx, dword ptr [esp + 0x00000734]             // 0x007dd739    8b942434070000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000514]             // 0x007dd740    8d8c2414050000
                         {disp8} mov        dword ptr [edi + 0x08], edx                   // 0x007dd747    895708
                         {disp32} mov       eax, dword ptr [esp + 0x00000738]             // 0x007dd74a    8b842438070000
                         push               ecx                                           // 0x007dd751    51
                         push               esi                                           // 0x007dd752    56
                         {disp8} mov        dword ptr [edi + 0x0c], eax                   // 0x007dd753    89470c
                         call               _strncpy                                      // 0x007dd756    e845b9feff
                         add                esp, 0x0c                                     // 0x007dd75b    83c40c
                         {disp32} lea       edx, dword ptr [esp + 0x00000310]             // 0x007dd75e    8d942410030000
                         push               edx                                           // 0x007dd765    52
                         push               0x00c3143c                                    // 0x007dd766    683c14c300
                         call               _Report3D__FPCce                              // 0x007dd76b    e860e40300
                         add                esp, 0x08                                     // 0x007dd770    83c408
_jmp_addr_0x007dd773:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007dd773    8b442410
                         test               eax, eax                                      // 0x007dd777    85c0
                         {disp8} je         _jmp_addr_0x007dd781                          // 0x007dd779    7406
                         mov                ecx, dword ptr [eax]                          // 0x007dd77b    8b08
                         push               eax                                           // 0x007dd77d    50
                         call               dword ptr [ecx + 8]                           // 0x007dd77e    ff5108
_jmp_addr_0x007dd781:    push               esi                                           // 0x007dd781    56
                         call               _jmp_addr_0x007dd160                          // 0x007dd782    e8d9f9ffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000f4]             // 0x007dd787    8b8ef4000000
                         push               esi                                           // 0x007dd78d    56
                         or.s               ecx, eax                                      // 0x007dd78e    0bc8
                         {disp32} mov       dword ptr [esi + 0x000000f4], ecx             // 0x007dd790    898ef4000000
                         call               _jmp_addr_0x007dd210                          // 0x007dd796    e875faffff
                         {disp32} mov       ebx, dword ptr [esi + 0x000000f0]             // 0x007dd79b    8b9ef0000000
                         mov                ecx, 0x0000005f                               // 0x007dd7a1    b95f000000
                         or.s               ebx, eax                                      // 0x007dd7a6    0bd8
                         xor.s              eax, eax                                      // 0x007dd7a8    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x20]                   // 0x007dd7aa    8d7c2420
                         {disp32} mov       dword ptr [esi + 0x000000f0], ebx             // 0x007dd7ae    899ef0000000
                         rep stosd                                                        // 0x007dd7b4    f3ab
                         mov                ecx, 0x0000005f                               // 0x007dd7b6    b95f000000
                         {disp32} lea       edi, dword ptr [esp + 0x0000019c]             // 0x007dd7bb    8dbc249c010000
                         rep stosd                                                        // 0x007dd7c2    f3ab
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x007dd7c4    8b44241c
                         add                esp, 0x08                                     // 0x007dd7c8    83c408
                         {disp32} lea       ecx, dword ptr [esp + 0x00000194]             // 0x007dd7cb    8d8c2494010000
                         mov                edx, 0x0000017c                               // 0x007dd7d2    ba7c010000
                         push               ecx                                           // 0x007dd7d7    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x007dd7d8    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x007dd7dc    8954241c
                         {disp32} mov       dword ptr [esp + 0x00000198], edx             // 0x007dd7e0    89942498010000
                         mov                edx, dword ptr [eax]                          // 0x007dd7e7    8b10
                         push               ecx                                           // 0x007dd7e9    51
                         push               eax                                           // 0x007dd7ea    50
                         call               dword ptr [edx + 0x2c]                        // 0x007dd7eb    ff522c
                         pop                edi                                           // 0x007dd7ee    5f
                         pop                esi                                           // 0x007dd7ef    5e
                         {disp8} mov        al, byte ptr [esp + 0x14]                     // 0x007dd7f0    8a442414
                         pop                ebp                                           // 0x007dd7f4    5d
                         test               al, 0x01                                      // 0x007dd7f5    a801
                         pop                ebx                                           // 0x007dd7f7    5b
                         {disp8} je         _jmp_addr_0x007dd814                          // 0x007dd7f8    741a
                         push               0x00c3141c                                    // 0x007dd7fa    681c14c300
                         call               _Report3D__FPCce                              // 0x007dd7ff    e8cce30300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4c65c8]        // 0x007dd804    a1c8c5e800
                         add                esp, 0x04                                     // 0x007dd809    83c404
                         inc                eax                                           // 0x007dd80c    40
                         {disp32} mov       dword ptr [data_bytes + 0x4c65c8], eax        // 0x007dd80d    a3c8c5e800
                         {disp8} jmp        _jmp_addr_0x007dd821                          // 0x007dd812    eb0d
_jmp_addr_0x007dd814:    push               0x00c313f8                                    // 0x007dd814    68f813c300
                         call               _Report3D__FPCce                              // 0x007dd819    e8b2e30300
                         add                esp, 0x04                                     // 0x007dd81e    83c404
_jmp_addr_0x007dd821:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007dd821    8b442404
                         push               eax                                           // 0x007dd825    50
                         mov                edx, dword ptr [eax]                          // 0x007dd826    8b10
                         call               dword ptr [edx + 8]                           // 0x007dd828    ff5208
                         push               0x00c313b4                                    // 0x007dd82b    68b413c300
                         call               _Report3D__FPCce                              // 0x007dd830    e89be30300
                         mov                eax, 0x00000001                               // 0x007dd835    b801000000
                         add                esp, 0x00000734                               // 0x007dd83a    81c434070000
                         ret                0x0010                                        // 0x007dd840    c21000
                         nop                                                              // 0x007dd843    90
                         nop                                                              // 0x007dd844    90
                         nop                                                              // 0x007dd845    90
                         nop                                                              // 0x007dd846    90
                         nop                                                              // 0x007dd847    90
                         nop                                                              // 0x007dd848    90
                         nop                                                              // 0x007dd849    90
                         nop                                                              // 0x007dd84a    90
                         nop                                                              // 0x007dd84b    90
                         nop                                                              // 0x007dd84c    90
                         nop                                                              // 0x007dd84d    90
                         nop                                                              // 0x007dd84e    90
                         nop                                                              // 0x007dd84f    90
_jmp_addr_0x007dd850:    {disp32} mov       eax, dword ptr [data_bytes + 0x530550]        // 0x007dd850    a15065ef00
                         push               esi                                           // 0x007dd855    56
                         test               eax, eax                                      // 0x007dd856    85c0
                         mov.s              esi, ecx                                      // 0x007dd858    8bf1
                         {disp8} jne        _jmp_addr_0x007dd86b                          // 0x007dd85a    750f
                         push               0x00c3153c                                    // 0x007dd85c    683c15c300
                         call               _Report3D__FPCce                              // 0x007dd861    e86ae30300
                         add                esp, 0x04                                     // 0x007dd866    83c404
                         {disp8} jmp        _jmp_addr_0x007dd88d                          // 0x007dd869    eb22
_jmp_addr_0x007dd86b:    {disp32} mov       eax, dword ptr [data_bytes + 0x530548]        // 0x007dd86b    a14865ef00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x53054c]        // 0x007dd870    8b0d4c65ef00
                         test               eax, eax                                      // 0x007dd876    85c0
                         {disp8} jne        _jmp_addr_0x007dd87e                          // 0x007dd878    7504
                         test               ecx, ecx                                      // 0x007dd87a    85c9
                         {disp8} je         _jmp_addr_0x007dd88d                          // 0x007dd87c    740f
_jmp_addr_0x007dd87e:    push               ecx                                           // 0x007dd87e    51
                         push               eax                                           // 0x007dd87f    50
                         push               0x00c3150c                                    // 0x007dd880    680c15c300
                         call               _Report3D__FPCce                              // 0x007dd885    e846e30300
                         add                esp, 0x0c                                     // 0x007dd88a    83c40c
_jmp_addr_0x007dd88d:    call               ?LH3DRenderClose@LHIlib@@SAHXZ                // 0x007dd88d    e8ce230a00
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x007dd892    8b4660
                         test               eax, eax                                      // 0x007dd895    85c0
                         {disp8} je         _jmp_addr_0x007dd8a6                          // 0x007dd897    740d
                         mov                ecx, dword ptr [eax]                          // 0x007dd899    8b08
                         push               eax                                           // 0x007dd89b    50
                         call               dword ptr [ecx + 8]                           // 0x007dd89c    ff5108
                         {disp8} mov        dword ptr [esi + 0x60], 0x00000000            // 0x007dd89f    c7466000000000
_jmp_addr_0x007dd8a6:    {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007dd8a6    8b462c
                         test               eax, eax                                      // 0x007dd8a9    85c0
                         {disp8} je         _jmp_addr_0x007dd8c6                          // 0x007dd8ab    7419
                         mov                edx, dword ptr [eax]                          // 0x007dd8ad    8b10
                         push               eax                                           // 0x007dd8af    50
                         call               dword ptr [edx + 0x4c]                        // 0x007dd8b0    ff524c
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x007dd8b3    8b4628
                         push               eax                                           // 0x007dd8b6    50
                         call               dword ptr [__imp__IsWindow@4]                 // 0x007dd8b7    ff1574988a00
                         test               eax, eax                                      // 0x007dd8bd    85c0
                         {disp8} je         _jmp_addr_0x007dd8c6                          // 0x007dd8bf    7405
                         call               _jmp_addr_0x007dece0                          // 0x007dd8c1    e81a140000
_jmp_addr_0x007dd8c6:    mov.s              ecx, esi                                      // 0x007dd8c6    8bce
                         call               _jmp_addr_0x007dd960                          // 0x007dd8c8    e893000000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007dd8cd    8b462c
                         test               eax, eax                                      // 0x007dd8d0    85c0
                         {disp8} je         _jmp_addr_0x007dd8e1                          // 0x007dd8d2    740d
                         mov                ecx, dword ptr [eax]                          // 0x007dd8d4    8b08
                         push               eax                                           // 0x007dd8d6    50
                         call               dword ptr [ecx + 8]                           // 0x007dd8d7    ff5108
                         {disp8} mov        dword ptr [esi + 0x2c], 0x00000000            // 0x007dd8da    c7462c00000000
_jmp_addr_0x007dd8e1:    pop                esi                                           // 0x007dd8e1    5e
                         ret                                                              // 0x007dd8e2    c3
                         nop                                                              // 0x007dd8e3    90
                         nop                                                              // 0x007dd8e4    90
                         nop                                                              // 0x007dd8e5    90
                         nop                                                              // 0x007dd8e6    90
                         nop                                                              // 0x007dd8e7    90
                         nop                                                              // 0x007dd8e8    90
                         nop                                                              // 0x007dd8e9    90
                         nop                                                              // 0x007dd8ea    90
                         nop                                                              // 0x007dd8eb    90
                         nop                                                              // 0x007dd8ec    90
                         nop                                                              // 0x007dd8ed    90
                         nop                                                              // 0x007dd8ee    90
                         nop                                                              // 0x007dd8ef    90
??_DLHScreen@@QAEXXZ:    push               esi                                           // 0x007dd8f0    56
                         mov.s              esi, ecx                                      // 0x007dd8f1    8bf1
                         call               _jmp_addr_0x007dd850                          // 0x007dd8f3    e858ffffff
                         mov                eax, dword ptr [esi]                          // 0x007dd8f8    8b06
                         test               eax, eax                                      // 0x007dd8fa    85c0
                         {disp8} je         _jmp_addr_0x007dd928                          // 0x007dd8fc    742a
                         {disp8} mov        ecx, dword ptr [eax + -0x04]                  // 0x007dd8fe    8b48fc
                         push               edi                                           // 0x007dd901    57
                         {disp8} lea        edi, dword ptr [eax + -0x04]                  // 0x007dd902    8d78fc
                         push               0x007dd010                                    // 0x007dd905    6810d07d00
                         push               ecx                                           // 0x007dd90a    51
                         push               0x000000f8                                    // 0x007dd90b    68f8000000
                         push               eax                                           // 0x007dd910    50
                         call               ??_M@YGXPAXIHP6EX0@Z@Z                        // 0x007dd911    e84d860c00
                         push               edi                                           // 0x007dd916    57
                         call               ??3@YAXPAX@Z                                  // 0x007dd917    e87c15fdff
                         add                esp, 0x04                                     // 0x007dd91c    83c404
                         mov                dword ptr [esi], 0x00000000                   // 0x007dd91f    c70600000000
                         pop                edi                                           // 0x007dd925    5f
                         pop                esi                                           // 0x007dd926    5e
                         ret                                                              // 0x007dd927    c3
_jmp_addr_0x007dd928:    mov                dword ptr [esi], 0x00000000                   // 0x007dd928    c70600000000
                         pop                esi                                           // 0x007dd92e    5e
                         ret                                                              // 0x007dd92f    c3
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007dd930    8b442404
                         {disp8} mov        ecx, dword ptr [ecx + 0x28]                   // 0x007dd934    8b4928
                         push               esi                                           // 0x007dd937    56
                         push               eax                                           // 0x007dd938    50
                         push               ecx                                           // 0x007dd939    51
                         xor.s              esi, esi                                      // 0x007dd93a    33f6
                         call               dword ptr [__imp__SetWindowTextA@4]           // 0x007dd93c    ff15c0978a00
                         test               eax, eax                                      // 0x007dd942    85c0
                         mov                eax, 0x00000002                               // 0x007dd944    b802000000
                         {disp8} je         _jmp_addr_0x007dd94d                          // 0x007dd949    7402
                         mov.s              eax, esi                                      // 0x007dd94b    8bc6
_jmp_addr_0x007dd94d:    pop                esi                                           // 0x007dd94d    5e
                         ret                0x0004                                        // 0x007dd94e    c20400
                         nop                                                              // 0x007dd951    90
                         nop                                                              // 0x007dd952    90
                         nop                                                              // 0x007dd953    90
                         nop                                                              // 0x007dd954    90
                         nop                                                              // 0x007dd955    90
                         nop                                                              // 0x007dd956    90
                         nop                                                              // 0x007dd957    90
                         nop                                                              // 0x007dd958    90
                         nop                                                              // 0x007dd959    90
                         nop                                                              // 0x007dd95a    90
                         nop                                                              // 0x007dd95b    90
                         nop                                                              // 0x007dd95c    90
                         nop                                                              // 0x007dd95d    90
                         nop                                                              // 0x007dd95e    90
                         nop                                                              // 0x007dd95f    90
_jmp_addr_0x007dd960:    push               esi                                           // 0x007dd960    56
                         mov.s              esi, ecx                                      // 0x007dd961    8bf1
                         push               edi                                           // 0x007dd963    57
                         {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x007dd964    8b4634
                         test               eax, eax                                      // 0x007dd967    85c0
                         {disp8} je         _jmp_addr_0x007dd98a                          // 0x007dd969    741f
                         mov                ecx, dword ptr [eax]                          // 0x007dd96b    8b08
                         push               eax                                           // 0x007dd96d    50
                         call               dword ptr [ecx + 4]                           // 0x007dd96e    ff5104
                         test               eax, eax                                      // 0x007dd971    85c0
                         {disp8} jle        _jmp_addr_0x007dd983                          // 0x007dd973    7e0e
                         mov.s              edi, eax                                      // 0x007dd975    8bf8
_jmp_addr_0x007dd977:    {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x007dd977    8b4634
                         push               eax                                           // 0x007dd97a    50
                         mov                edx, dword ptr [eax]                          // 0x007dd97b    8b10
                         call               dword ptr [edx + 8]                           // 0x007dd97d    ff5208
                         dec                edi                                           // 0x007dd980    4f
                         {disp8} jne        _jmp_addr_0x007dd977                          // 0x007dd981    75f4
_jmp_addr_0x007dd983:    {disp8} mov        dword ptr [esi + 0x34], 0x00000000            // 0x007dd983    c7463400000000
_jmp_addr_0x007dd98a:    {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x007dd98a    8b4630
                         test               eax, eax                                      // 0x007dd98d    85c0
                         {disp8} je         _jmp_addr_0x007dd9b0                          // 0x007dd98f    741f
                         mov                ecx, dword ptr [eax]                          // 0x007dd991    8b08
                         push               eax                                           // 0x007dd993    50
                         call               dword ptr [ecx + 4]                           // 0x007dd994    ff5104
                         test               eax, eax                                      // 0x007dd997    85c0
                         {disp8} jle        _jmp_addr_0x007dd9a9                          // 0x007dd999    7e0e
                         mov.s              edi, eax                                      // 0x007dd99b    8bf8
_jmp_addr_0x007dd99d:    {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x007dd99d    8b4630
                         push               eax                                           // 0x007dd9a0    50
                         mov                edx, dword ptr [eax]                          // 0x007dd9a1    8b10
                         call               dword ptr [edx + 8]                           // 0x007dd9a3    ff5208
                         dec                edi                                           // 0x007dd9a6    4f
                         {disp8} jne        _jmp_addr_0x007dd99d                          // 0x007dd9a7    75f4
_jmp_addr_0x007dd9a9:    {disp8} mov        dword ptr [esi + 0x30], 0x00000000            // 0x007dd9a9    c7463000000000
_jmp_addr_0x007dd9b0:    pop                edi                                           // 0x007dd9b0    5f
                         xor.s              eax, eax                                      // 0x007dd9b1    33c0
                         pop                esi                                           // 0x007dd9b3    5e
                         ret                                                              // 0x007dd9b4    c3
                         nop                                                              // 0x007dd9b5    90
                         nop                                                              // 0x007dd9b6    90
                         nop                                                              // 0x007dd9b7    90
                         nop                                                              // 0x007dd9b8    90
                         nop                                                              // 0x007dd9b9    90
                         nop                                                              // 0x007dd9ba    90
                         nop                                                              // 0x007dd9bb    90
                         nop                                                              // 0x007dd9bc    90
                         nop                                                              // 0x007dd9bd    90
                         nop                                                              // 0x007dd9be    90
                         nop                                                              // 0x007dd9bf    90
_jmp_addr_0x007dd9c0:    sub                esp, 0x7c                                     // 0x007dd9c0    83ec7c
                         push               esi                                           // 0x007dd9c3    56
                         mov.s              esi, ecx                                      // 0x007dd9c4    8bf1
                         push               edi                                           // 0x007dd9c6    57
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x007dd9c7    8b4618
                         test               eax, eax                                      // 0x007dd9ca    85c0
                         {disp8} je         _jmp_addr_0x007dd9e5                          // 0x007dd9cc    7417
                         pop                edi                                           // 0x007dd9ce    5f
                         {disp32} mov       dword ptr [data_bytes + 0x4c65d8], 0x00000000 // 0x007dd9cf    c705d8c5e80000000000
                         mov                eax, 0x00000002                               // 0x007dd9d9    b802000000
                         pop                esi                                           // 0x007dd9de    5e
                         add                esp, 0x7c                                     // 0x007dd9df    83c47c
                         ret                0x0004                                        // 0x007dd9e2    c20400
_jmp_addr_0x007dd9e5:    mov                ecx, 0x0000001f                               // 0x007dd9e5    b91f000000
                         xor.s              eax, eax                                      // 0x007dd9ea    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x007dd9ec    8d7c2408
                         push               0x0                                           // 0x007dd9f0    6a00
                         rep stosd                                                        // 0x007dd9f2    f3ab
                         {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x007dd9f4    8b4634
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x007dd9f7    8d54240c
                         push               0x00000820                                    // 0x007dd9fb    6820080000
                         {disp8} mov        dword ptr [esp + 0x10], 0x0000007c            // 0x007dda00    c74424107c000000
                         mov                ecx, dword ptr [eax]                          // 0x007dda08    8b08
                         push               edx                                           // 0x007dda0a    52
                         push               0x0                                           // 0x007dda0b    6a00
                         push               eax                                           // 0x007dda0d    50
                         call               dword ptr [ecx + 0x64]                        // 0x007dda0e    ff5164
                         test               eax, eax                                      // 0x007dda11    85c0
                         {disp8} je         _jmp_addr_0x007dda2c                          // 0x007dda13    7417
                         xor.s              ecx, ecx                                      // 0x007dda15    33c9
                         cmp                eax, 0x8876021c                               // 0x007dda17    3d1c027688
                         setne              cl                                            // 0x007dda1c    0f95c1
                         add                ecx, 0x2                                      // 0x007dda1f    83c102
                         pop                edi                                           // 0x007dda22    5f
                         mov.s              eax, ecx                                      // 0x007dda23    8bc1
                         pop                esi                                           // 0x007dda25    5e
                         add                esp, 0x7c                                     // 0x007dda26    83c47c
                         ret                0x0004                                        // 0x007dda29    c20400
_jmp_addr_0x007dda2c:    {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x007dda2c    8b7c242c
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x007dda30    8b4624
                         cmp.s              eax, edi                                      // 0x007dda33    3bc7
                         {disp8} mov        dword ptr [esi + 0x18], 0x00000001            // 0x007dda35    c7461801000000
                         {disp8} je         _jmp_addr_0x007dda63                          // 0x007dda3c    7425
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x007dda3e    8b542418
                         xor.s              ecx, ecx                                      // 0x007dda42    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x14]                     // 0x007dda44    8a4e14
                         push               edi                                           // 0x007dda47    57
                         {disp32} lea       eax, dword ptr [edx * 0x8 + 0x00000000]       // 0x007dda48    8d04d500000000
                         {disp8} mov        dword ptr [esi + 0x24], edi                   // 0x007dda4f    897e24
                         cdq                                                              // 0x007dda52    99
                         idiv               ecx                                           // 0x007dda53    f7f9
                         {disp32} mov       dword ptr [esi + 0x0000008c], eax             // 0x007dda55    89868c000000
                         call               _jmp_addr_0x00fc1285                          // 0x007dda5b    e825387e00
                         add                esp, 0x04                                     // 0x007dda60    83c404
_jmp_addr_0x007dda63:    {disp32} mov       eax, dword ptr [esi + 0x0000008c]             // 0x007dda63    8b868c000000
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                   // 0x007dda69    8b4e24
                         {disp32} mov       dword ptr [data_bytes + 0x4bf870], eax        // 0x007dda6c    a37058e800
                         pop                edi                                           // 0x007dda71    5f
                         {disp32} mov       dword ptr [data_bytes + 0x4bf86c], ecx        // 0x007dda72    890d6c58e800
                         xor.s              eax, eax                                      // 0x007dda78    33c0
                         pop                esi                                           // 0x007dda7a    5e
                         add                esp, 0x7c                                     // 0x007dda7b    83c47c
                         ret                0x0004                                        // 0x007dda7e    c20400
                         nop                                                              // 0x007dda81    90
                         nop                                                              // 0x007dda82    90
                         nop                                                              // 0x007dda83    90
                         nop                                                              // 0x007dda84    90
                         nop                                                              // 0x007dda85    90
                         nop                                                              // 0x007dda86    90
                         nop                                                              // 0x007dda87    90
                         nop                                                              // 0x007dda88    90
                         nop                                                              // 0x007dda89    90
                         nop                                                              // 0x007dda8a    90
                         nop                                                              // 0x007dda8b    90
                         nop                                                              // 0x007dda8c    90
                         nop                                                              // 0x007dda8d    90
                         nop                                                              // 0x007dda8e    90
                         nop                                                              // 0x007dda8f    90
_jmp_addr_0x007dda90:    push               esi                                           // 0x007dda90    56
                         mov.s              esi, ecx                                      // 0x007dda91    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x007dda93    8b4618
                         test               eax, eax                                      // 0x007dda96    85c0
                         {disp8} jne        _jmp_addr_0x007ddaab                          // 0x007dda98    7511
                         {disp32} mov       dword ptr [data_bytes + 0x4c65dc], 0x00000000 // 0x007dda9a    c705dcc5e80000000000
                         mov                eax, 0x00000002                               // 0x007ddaa4    b802000000
                         pop                esi                                           // 0x007ddaa9    5e
                         ret                                                              // 0x007ddaaa    c3
_jmp_addr_0x007ddaab:    {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x007ddaab    8b4634
                         push               0x0                                           // 0x007ddaae    6a00
                         push               eax                                           // 0x007ddab0    50
                         mov                ecx, dword ptr [eax]                          // 0x007ddab1    8b08
                         call               dword ptr [ecx + 0x80]                        // 0x007ddab3    ff9180000000
                         test               eax, eax                                      // 0x007ddab9    85c0
                         {disp8} je         _jmp_addr_0x007ddac4                          // 0x007ddabb    7407
                         mov                eax, 0x00000002                               // 0x007ddabd    b802000000
                         pop                esi                                           // 0x007ddac2    5e
                         ret                                                              // 0x007ddac3    c3
_jmp_addr_0x007ddac4:    {disp8} mov        dword ptr [esi + 0x18], 0x00000000            // 0x007ddac4    c7461800000000
                         xor.s              eax, eax                                      // 0x007ddacb    33c0
                         pop                esi                                           // 0x007ddacd    5e
                         ret                                                              // 0x007ddace    c3
                         nop                                                              // 0x007ddacf    90
                         push               esi                                           // 0x007ddad0    56
                         mov.s              esi, ecx                                      // 0x007ddad1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x007ddad3    8b4604
                         test               eax, eax                                      // 0x007ddad6    85c0
                         {disp8} je         _jmp_addr_0x007ddafa                          // 0x007ddad8    7420
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007ddada    8b462c
                         test               eax, eax                                      // 0x007ddadd    85c0
                         {disp8} je         _jmp_addr_0x007ddaec                          // 0x007ddadf    740b
                         mov                ecx, dword ptr [eax]                          // 0x007ddae1    8b08
                         push               eax                                           // 0x007ddae3    50
                         call               dword ptr [ecx + 0x4c]                        // 0x007ddae4    ff514c
                         call               _jmp_addr_0x007dece0                          // 0x007ddae7    e8f4110000
_jmp_addr_0x007ddaec:    mov.s              ecx, esi                                      // 0x007ddaec    8bce
                         call               _jmp_addr_0x007dd960                          // 0x007ddaee    e86dfeffff
                         {disp8} mov        dword ptr [esi + 0x04], 0x00000000            // 0x007ddaf3    c7460400000000
_jmp_addr_0x007ddafa:    xor.s              eax, eax                                      // 0x007ddafa    33c0
                         pop                esi                                           // 0x007ddafc    5e
                         ret                                                              // 0x007ddafd    c3
                         nop                                                              // 0x007ddafe    90
                         nop                                                              // 0x007ddaff    90
                         mov                eax, 0x00000001                               // 0x007ddb00    b801000000
                         ret                0x0008                                        // 0x007ddb05    c20800
                         nop                                                              // 0x007ddb08    90
                         nop                                                              // 0x007ddb09    90
                         nop                                                              // 0x007ddb0a    90
                         nop                                                              // 0x007ddb0b    90
                         nop                                                              // 0x007ddb0c    90
                         nop                                                              // 0x007ddb0d    90
                         nop                                                              // 0x007ddb0e    90
                         nop                                                              // 0x007ddb0f    90
_jmp_addr_0x007ddb10:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007ddb10    8b442404
                         push               ebx                                           // 0x007ddb14    53
                         push               ebp                                           // 0x007ddb15    55
                         push               esi                                           // 0x007ddb16    56
                         mov.s              esi, ecx                                      // 0x007ddb17    8bf1
                         push               edi                                           // 0x007ddb19    57
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x007ddb1a    8b4810
                         {disp8} mov        dword ptr [esi + 0x68], ecx                   // 0x007ddb1d    894e68
                         {disp8} mov        edx, dword ptr [eax + 0x14]                   // 0x007ddb20    8b5014
                         {disp8} lea        edi, dword ptr [esi + 0x7e]                   // 0x007ddb23    8d7e7e
                         {disp8} mov        dword ptr [esi + 0x6c], edx                   // 0x007ddb26    89566c
                         {disp8} mov        edx, dword ptr [esi + 0x68]                   // 0x007ddb29    8b5668
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x007ddb2c    8b4018
                         {disp8} lea        ecx, dword ptr [esi + 0x7b]                   // 0x007ddb2f    8d4e7b
                         push               edi                                           // 0x007ddb32    57
                         push               ecx                                           // 0x007ddb33    51
                         push               edx                                           // 0x007ddb34    52
                         {disp8} mov        dword ptr [esi + 0x70], eax                   // 0x007ddb35    894670
                         call               _jmp_addr_0x007ddba0                          // 0x007ddb38    e863000000
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x007ddb3d    8b4e6c
                         {disp8} mov        byte ptr [esi + 0x78], al                     // 0x007ddb40    884678
                         {disp8} lea        ebx, dword ptr [esi + 0x7f]                   // 0x007ddb43    8d5e7f
                         {disp8} lea        eax, dword ptr [esi + 0x7c]                   // 0x007ddb46    8d467c
                         push               ebx                                           // 0x007ddb49    53
                         push               eax                                           // 0x007ddb4a    50
                         push               ecx                                           // 0x007ddb4b    51
                         call               _jmp_addr_0x007ddba0                          // 0x007ddb4c    e84f000000
                         {disp32} lea       ebp, dword ptr [esi + 0x00000080]             // 0x007ddb51    8dae80000000
                         {disp8} mov        byte ptr [esi + 0x79], al                     // 0x007ddb57    884679
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x007ddb5a    8b4670
                         {disp8} lea        edx, dword ptr [esi + 0x7d]                   // 0x007ddb5d    8d567d
                         push               ebp                                           // 0x007ddb60    55
                         push               edx                                           // 0x007ddb61    52
                         push               eax                                           // 0x007ddb62    50
                         call               _jmp_addr_0x007ddba0                          // 0x007ddb63    e838000000
                         {disp8} mov        cl, byte ptr [ebp + 0x00]                     // 0x007ddb68    8a4d00
                         mov                edx, 0x00000001                               // 0x007ddb6b    ba01000000
                         {disp8} mov        byte ptr [esi + 0x7a], al                     // 0x007ddb70    88467a
                         mov                eax, 0x00000001                               // 0x007ddb73    b801000000
                         shl                edx, cl                                       // 0x007ddb78    d3e2
                         mov                cl, byte ptr [edi]                            // 0x007ddb7a    8a0f
                         add                esp, 0x24                                     // 0x007ddb7c    83c424
                         shl                eax, cl                                       // 0x007ddb7f    d3e0
                         mov                cl, byte ptr [ebx]                            // 0x007ddb81    8a0b
                         pop                edi                                           // 0x007ddb83    5f
                         add.s              edx, eax                                      // 0x007ddb84    03d0
                         mov                eax, 0x00000001                               // 0x007ddb86    b801000000
                         shl                eax, cl                                       // 0x007ddb8b    d3e0
                         add.s              edx, eax                                      // 0x007ddb8d    03d0
                         not                edx                                           // 0x007ddb8f    f7d2
                         {disp8} mov        dword ptr [esi + 0x74], edx                   // 0x007ddb91    895674
                         pop                esi                                           // 0x007ddb94    5e
                         pop                ebp                                           // 0x007ddb95    5d
                         pop                ebx                                           // 0x007ddb96    5b
                         ret                0x0004                                        // 0x007ddb97    c20400
                         nop                                                              // 0x007ddb9a    90
                         nop                                                              // 0x007ddb9b    90
                         nop                                                              // 0x007ddb9c    90
                         nop                                                              // 0x007ddb9d    90
                         nop                                                              // 0x007ddb9e    90
                         nop                                                              // 0x007ddb9f    90
_jmp_addr_0x007ddba0:    sub                esp, 0x18                                     // 0x007ddba0    83ec18
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x007ddba3    8b54241c
                         push               ebx                                           // 0x007ddba7    53
                         push               ebp                                           // 0x007ddba8    55
                         push               esi                                           // 0x007ddba9    56
                         push               edi                                           // 0x007ddbaa    57
                         xor.s              ebp, ebp                                      // 0x007ddbab    33ed
                         xor.s              esi, esi                                      // 0x007ddbad    33f6
                         xor.s              edi, edi                                      // 0x007ddbaf    33ff
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x007ddbb1    896c2410
                         xor.s              ecx, ecx                                      // 0x007ddbb5    33c9
_jmp_addr_0x007ddbb7:    mov.s              eax, edx                                      // 0x007ddbb7    8bc2
                         and                eax, 0x01                                     // 0x007ddbb9    83e001
                         {disp8} je         _jmp_addr_0x007ddbc2                          // 0x007ddbbc    7404
                         {disp8} inc        dword ptr [esp + 0x10]                        // 0x007ddbbe    ff442410
_jmp_addr_0x007ddbc2:    mov.s              ebx, edi                                      // 0x007ddbc2    8bdf
                         and                ebx, 0x0000ffff                               // 0x007ddbc4    81e3ffff0000
                         cmp.s              ebx, eax                                      // 0x007ddbca    3bd8
                         {disp8} je         _jmp_addr_0x007ddbf4                          // 0x007ddbcc    7426
                         test               eax, eax                                      // 0x007ddbce    85c0
                         mov.s              eax, ebp                                      // 0x007ddbd0    8bc5
                         {disp8} jne        _jmp_addr_0x007ddbd7                          // 0x007ddbd2    7503
                         {disp8} lea        eax, dword ptr [ebp + -0x01]                  // 0x007ddbd4    8d45ff
_jmp_addr_0x007ddbd7:    mov.s              edi, esi                                      // 0x007ddbd7    8bfe
                         mov.s              ebx, ecx                                      // 0x007ddbd9    8bd9
                         and                edi, 0x0000ffff                               // 0x007ddbdb    81e7ffff0000
                         inc                esi                                           // 0x007ddbe1    46
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x007ddbe2    895c242c
                         {disp8} mov        word ptr [esp + edi * 0x2 + 0x14], ax         // 0x007ddbe6    6689447c14
                         mov.s              al, dl                                        // 0x007ddbeb    8ac2
                         and                eax, 0x01                                     // 0x007ddbed    83e001
                         mov.s              edi, eax                                      // 0x007ddbf0    8bf8
                         {disp8} jmp        _jmp_addr_0x007ddbf8                          // 0x007ddbf2    eb04
_jmp_addr_0x007ddbf4:    {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x007ddbf4    8b5c242c
_jmp_addr_0x007ddbf8:    inc                ecx                                           // 0x007ddbf8    41
                         inc                ebp                                           // 0x007ddbf9    45
                         shr                edx, 1                                        // 0x007ddbfa    d1ea
                         cmp                cx, 0x20                                      // 0x007ddbfc    6683f920
                         .byte              0x72, 0xb5// {disp8} jb _jmp_addr_0x007ddbb7  // 0x007ddc00    72b5
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x007ddc02    8b442430
                         test               eax, eax                                      // 0x007ddc06    85c0
                         {disp8} je         _jmp_addr_0x007ddc16                          // 0x007ddc08    740c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007ddc0a    8b4c2410
                         mov                dl, 0x08                                      // 0x007ddc0e    b208
                         sub.s              dl, cl                                        // 0x007ddc10    2ad1
                         mov                byte ptr [eax], dl                            // 0x007ddc12    8810
                         {disp8} jmp        _jmp_addr_0x007ddc1a                          // 0x007ddc14    eb04
_jmp_addr_0x007ddc16:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007ddc16    8b4c2410
_jmp_addr_0x007ddc1a:    {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x007ddc1a    8b442434
                         test               eax, eax                                      // 0x007ddc1e    85c0
                         {disp8} je         _jmp_addr_0x007ddc26                          // 0x007ddc20    7404
                         sub.s              bl, cl                                        // 0x007ddc22    2ad9
                         mov                byte ptr [eax], bl                            // 0x007ddc24    8818
_jmp_addr_0x007ddc26:    dec                ecx                                           // 0x007ddc26    49
                         mov                eax, 0x00000002                               // 0x007ddc27    b802000000
                         shl                eax, cl                                       // 0x007ddc2c    d3e0
                         pop                edi                                           // 0x007ddc2e    5f
                         pop                esi                                           // 0x007ddc2f    5e
                         pop                ebp                                           // 0x007ddc30    5d
                         pop                ebx                                           // 0x007ddc31    5b
                         dec                eax                                           // 0x007ddc32    48
                         add                esp, 0x18                                     // 0x007ddc33    83c418
                         ret                                                              // 0x007ddc36    c3
                         nop                                                              // 0x007ddc37    90
                         nop                                                              // 0x007ddc38    90
                         nop                                                              // 0x007ddc39    90
                         nop                                                              // 0x007ddc3a    90
                         nop                                                              // 0x007ddc3b    90
                         nop                                                              // 0x007ddc3c    90
                         nop                                                              // 0x007ddc3d    90
                         nop                                                              // 0x007ddc3e    90
                         nop                                                              // 0x007ddc3f    90
_jmp_addr_0x007ddc40:    {disp32} mov       eax, dword ptr [data_bytes + 0x26b32c]        // 0x007ddc40    a12c13c300
                         push               esi                                           // 0x007ddc45    56
                         test               eax, eax                                      // 0x007ddc46    85c0
                         push               edi                                           // 0x007ddc48    57
                         mov.s              esi, ecx                                      // 0x007ddc49    8bf1
                         {disp8} je         _jmp_addr_0x007ddc72                          // 0x007ddc4b    7425
                         {disp32} mov       dword ptr [data_bytes + 0x26b32c], 0x00000000 // 0x007ddc4d    c7052c13c30000000000
                         call               _jmp_addr_0x007dd130                          // 0x007ddc57    e8d4f4ffff
                         test               eax, eax                                      // 0x007ddc5c    85c0
                         {disp8} jne        _jmp_addr_0x007ddca7                          // 0x007ddc5e    7547
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4c60f4]        // 0x007ddc60    a1f4c0e800
                         mov.s              ecx, esi                                      // 0x007ddc65    8bce
                         push               eax                                           // 0x007ddc67    50
                         call               _jmp_addr_0x007de2f0                          // 0x007ddc68    e883060000
                         call               _jmp_addr_0x007e48c0                          // 0x007ddc6d    e84e6c0000
_jmp_addr_0x007ddc72:    call               ?LH3DRenderClose@LHIlib@@SAHXZ                // 0x007ddc72    e8e91f0a00
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007ddc77    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007ddc7b    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x007ddc7f    8b44240c
                         push               ecx                                           // 0x007ddc83    51
                         push               edx                                           // 0x007ddc84    52
                         push               eax                                           // 0x007ddc85    50
                         mov.s              ecx, esi                                      // 0x007ddc86    8bce
                         call               _jmp_addr_0x007ddcb0                          // 0x007ddc88    e823000000
                         mov.s              edi, eax                                      // 0x007ddc8d    8bf8
                         cmp                edi, 0x03                                     // 0x007ddc8f    83ff03
                         {disp8} jne        _jmp_addr_0x007ddc99                          // 0x007ddc92    7505
                         pop                edi                                           // 0x007ddc94    5f
                         pop                esi                                           // 0x007ddc95    5e
                         ret                0x000c                                        // 0x007ddc96    c20c00
_jmp_addr_0x007ddc99:    {disp8} mov        dword ptr [esi + 0x04], 0x00000001            // 0x007ddc99    c7460401000000
                         call               _jmp_addr_0x0087fc50                          // 0x007ddca0    e8ab1f0a00
                         mov.s              eax, edi                                      // 0x007ddca5    8bc7
_jmp_addr_0x007ddca7:    pop                edi                                           // 0x007ddca7    5f
                         pop                esi                                           // 0x007ddca8    5e
                         ret                0x000c                                        // 0x007ddca9    c20c00
                         nop                                                              // 0x007ddcac    90
                         nop                                                              // 0x007ddcad    90
                         nop                                                              // 0x007ddcae    90
                         nop                                                              // 0x007ddcaf    90
_jmp_addr_0x007ddcb0:    {disp32} mov       eax, dword ptr [data_bytes + 0x504620]        // 0x007ddcb0    a120a6ec00
                         sub                esp, 0x0000008c                               // 0x007ddcb5    81ec8c000000
                         test               eax, eax                                      // 0x007ddcbb    85c0
                         push               ebx                                           // 0x007ddcbd    53
                         push               ebp                                           // 0x007ddcbe    55
                         push               esi                                           // 0x007ddcbf    56
                         push               edi                                           // 0x007ddcc0    57
                         mov.s              esi, ecx                                      // 0x007ddcc1    8bf1
                         {disp8} je         _jmp_addr_0x007ddccf                          // 0x007ddcc3    740a
                         call               _jmp_addr_0x0085db90                          // 0x007ddcc5    e8c6fe0700
                         call               _jmp_addr_0x0082d3f0                          // 0x007ddcca    e821f70400
_jmp_addr_0x007ddccf:    {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007ddccf    8b462c
                         test               eax, eax                                      // 0x007ddcd2    85c0
                         {disp8} je         _jmp_addr_0x007ddce1                          // 0x007ddcd4    740b
                         mov                ecx, dword ptr [eax]                          // 0x007ddcd6    8b08
                         push               eax                                           // 0x007ddcd8    50
                         call               dword ptr [ecx + 0x4c]                        // 0x007ddcd9    ff514c
                         call               _jmp_addr_0x007dece0                          // 0x007ddcdc    e8ff0f0000
_jmp_addr_0x007ddce1:    mov.s              ecx, esi                                      // 0x007ddce1    8bce
                         call               _jmp_addr_0x007dd960                          // 0x007ddce3    e878fcffff
                         {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x007ddce8    8b4664
                         {disp32} mov       ebp, dword ptr [esp + 0x000000a0]             // 0x007ddceb    8bac24a0000000
                         {disp32} mov       ebx, dword ptr [esp + 0x000000a4]             // 0x007ddcf2    8b9c24a4000000
                         {disp32} mov       dl, byte ptr [esp + 0x000000a8]               // 0x007ddcf9    8a9424a8000000
                         test               eax, eax                                      // 0x007ddd00    85c0
                         {disp8} mov        word ptr [esi + 0x08], bp                     // 0x007ddd02    66896e08
                         {disp8} mov        word ptr [esi + 0x0a], bx                     // 0x007ddd06    66895e0a
                         {disp8} mov        byte ptr [esi + 0x14], dl                     // 0x007ddd0a    885614
                         {disp8} je         _jmp_addr_0x007ddd1d                          // 0x007ddd0d    740e
                         push               0x0                                           // 0x007ddd0f    6a00
                         push               0x0                                           // 0x007ddd11    6a00
                         call               _jmp_addr_0x007dc9a0                          // 0x007ddd13    e888ecffff
                         add                esp, 0x08                                     // 0x007ddd18    83c408
                         {disp8} jmp        _jmp_addr_0x007ddd4f                          // 0x007ddd1b    eb32
_jmp_addr_0x007ddd1d:    call               _jmp_addr_0x007ded10                          // 0x007ddd1d    e8ee0f0000
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a8]             // 0x007ddd22    8b8c24a8000000
                         push               0x0                                           // 0x007ddd29    6a00
                         and                ecx, 0x000000ff                               // 0x007ddd2b    81e1ff000000
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007ddd31    8b462c
                         push               0x0                                           // 0x007ddd34    6a00
                         push               ecx                                           // 0x007ddd36    51
                         mov.s              ecx, ebx                                      // 0x007ddd37    8bcb
                         mov                edx, dword ptr [eax]                          // 0x007ddd39    8b10
                         and                ecx, 0x0000ffff                               // 0x007ddd3b    81e1ffff0000
                         push               ecx                                           // 0x007ddd41    51
                         mov.s              ecx, ebp                                      // 0x007ddd42    8bcd
                         and                ecx, 0x0000ffff                               // 0x007ddd44    81e1ffff0000
                         push               ecx                                           // 0x007ddd4a    51
                         push               eax                                           // 0x007ddd4b    50
                         call               dword ptr [edx + 0x54]                        // 0x007ddd4c    ff5254
_jmp_addr_0x007ddd4f:    {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x007ddd4f    8b4664
                         test               eax, eax                                      // 0x007ddd52    85c0
                         {disp8} jne        _jmp_addr_0x007ddd9d                          // 0x007ddd54    7547
                         call               _jmp_addr_0x007ded10                          // 0x007ddd56    e8b50f0000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf078]        // 0x007ddd5b    8b157850e800
                         push               0x80000000                                    // 0x007ddd61    6800000080
                         push               -0x10                                         // 0x007ddd66    6af0
                         push               edx                                           // 0x007ddd68    52
                         call               dword ptr [__imp__SetWindowLongA@4]           // 0x007ddd69    ff1540988a00
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4bf078]        // 0x007ddd6f    8b3d7850e800
                         push               0x10                                          // 0x007ddd75    6a10
                         push               0x1                                           // 0x007ddd77    6a01
                         call               dword ptr [__imp__GetSystemMetrics@4]         // 0x007ddd79    ff1504988a00
                         push               eax                                           // 0x007ddd7f    50
                         push               0x0                                           // 0x007ddd80    6a00
                         call               dword ptr [__imp__GetSystemMetrics@4]         // 0x007ddd82    ff1504988a00
                         push               eax                                           // 0x007ddd88    50
                         push               0x0                                           // 0x007ddd89    6a00
                         push               0x0                                           // 0x007ddd8b    6a00
                         push               -0x1                                          // 0x007ddd8d    6aff
                         push               edi                                           // 0x007ddd8f    57
                         call               dword ptr [__imp__SetWindowPos@4]             // 0x007ddd90    ff153c988a00
                         call               _jmp_addr_0x007db8e0                          // 0x007ddd96    e845dbffff
                         {disp8} jmp        _jmp_addr_0x007dddc9                          // 0x007ddd9b    eb2c
_jmp_addr_0x007ddd9d:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x007ddd9d    a17850e800
                         {disp32} mov       edi, dword ptr [__imp__SetWindowLongA@4]      // 0x007ddda2    8b3d40988a00
                         push               0x00cf0000                                    // 0x007ddda8    680000cf00
                         push               -0x10                                         // 0x007dddad    6af0
                         push               eax                                           // 0x007dddaf    50
                         call               edi                                           // 0x007dddb0    ffd7
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf078]        // 0x007dddb2    8b0d7850e800
                         push               0x0                                           // 0x007dddb8    6a00
                         push               -0x14                                         // 0x007dddba    6aec
                         push               ecx                                           // 0x007dddbc    51
                         call               edi                                           // 0x007dddbd    ffd7
                         call               _jmp_addr_0x007dece0                          // 0x007dddbf    e81c0f0000
                         call               _jmp_addr_0x007db8f0                          // 0x007dddc4    e827dbffff
_jmp_addr_0x007dddc9:    {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x007dddc9    8b4664
                         test               eax, eax                                      // 0x007dddcc    85c0
                         {disp32} je        _jmp_addr_0x007dde95                          // 0x007dddce    0f84c1000000
                         mov                ecx, 0x0000001f                               // 0x007dddd4    b91f000000
                         xor.s              eax, eax                                      // 0x007dddd9    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x20]                   // 0x007ddddb    8d7c2420
                         push               0x0                                           // 0x007ddddf    6a00
                         rep stosd                                                        // 0x007ddde1    f3ab
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007ddde3    8b462c
                         {disp8} lea        edi, dword ptr [esi + 0x30]                   // 0x007ddde6    8d7e30
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x007ddde9    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x24], 0x0000007c            // 0x007ddded    c74424247c000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000001            // 0x007dddf5    c744242801000000
                         {disp32} mov       dword ptr [esp + 0x0000008c], 0x00000200      // 0x007dddfd    c784248c00000000020000
                         mov                edx, dword ptr [eax]                          // 0x007dde08    8b10
                         push               edi                                           // 0x007dde0a    57
                         push               ecx                                           // 0x007dde0b    51
                         push               eax                                           // 0x007dde0c    50
                         call               dword ptr [edx + 0x18]                        // 0x007dde0d    ff5218
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007dde10    8b462c
                         and                ebx, 0x0000ffff                               // 0x007dde13    81e3ffff0000
                         and                ebp, 0x0000ffff                               // 0x007dde19    81e5ffff0000
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x007dde1f    895c2428
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x007dde23    896c242c
                         xor.s              ebx, ebx                                      // 0x007dde27    33db
                         {disp8} lea        ebp, dword ptr [esi + 0x34]                   // 0x007dde29    8d6e34
                         push               ebx                                           // 0x007dde2c    53
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x007dde2d    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x24], 0x0000007c            // 0x007dde31    c74424247c000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000007            // 0x007dde39    c744242807000000
                         {disp32} mov       dword ptr [esp + 0x0000008c], 0x00006040      // 0x007dde41    c784248c00000040600000
                         mov                edx, dword ptr [eax]                          // 0x007dde4c    8b10
                         push               ebp                                           // 0x007dde4e    55
                         push               ecx                                           // 0x007dde4f    51
                         push               eax                                           // 0x007dde50    50
                         call               dword ptr [edx + 0x18]                        // 0x007dde51    ff5218
                         test               eax, eax                                      // 0x007dde54    85c0
                         {disp8} je         _jmp_addr_0x007dde87                          // 0x007dde56    742f
                         push               0x00001000                                    // 0x007dde58    6800100000
                         push               0x00c31594                                    // 0x007dde5d    689415c300
                         push               0x00c31548                                    // 0x007dde62    684815c300
                         push               ebx                                           // 0x007dde67    53
                         {disp32} mov       byte ptr [data_bytes + 0x4c60f8], 0x01        // 0x007dde68    c605f8c0e80001
                         call               dword ptr [__imp__MessageBoxA@16]              // 0x007dde6f    ff15b8978a00
                         pop                edi                                           // 0x007dde75    5f
                         pop                esi                                           // 0x007dde76    5e
                         pop                ebp                                           // 0x007dde77    5d
                         mov                eax, 0x00000003                               // 0x007dde78    b803000000
                         pop                ebx                                           // 0x007dde7d    5b
                         add                esp, 0x0000008c                               // 0x007dde7e    81c48c000000
                         ret                0x000c                                        // 0x007dde84    c20c00
_jmp_addr_0x007dde87:    mov                eax, dword ptr [edi]                          // 0x007dde87    8b07
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x007dde89    8b4e60
                         push               ecx                                           // 0x007dde8c    51
                         push               eax                                           // 0x007dde8d    50
                         mov                edx, dword ptr [eax]                          // 0x007dde8e    8b10
                         call               dword ptr [edx + 0x70]                        // 0x007dde90    ff5270
                         {disp8} jmp        _jmp_addr_0x007ddf0a                          // 0x007dde93    eb75
_jmp_addr_0x007dde95:    call               _jmp_addr_0x007ded10                          // 0x007dde95    e8760e0000
                         xor.s              edx, edx                                      // 0x007dde9a    33d2
                         mov                ecx, 0x0000001f                               // 0x007dde9c    b91f000000
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x007ddea1    89542410
                         xor.s              eax, eax                                      // 0x007ddea5    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x20]                   // 0x007ddea7    8d7c2420
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x007ddeab    89542414
                         rep stosd                                                        // 0x007ddeaf    f3ab
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                   // 0x007ddeb1    8b462c
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x007ddeb4    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x007ddeb8    8954241c
                         {disp8} lea        edi, dword ptr [esi + 0x30]                   // 0x007ddebc    8d7e30
                         push               edx                                           // 0x007ddebf    52
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x007ddec0    8d542424
                         {disp8} mov        dword ptr [esp + 0x24], 0x0000007c            // 0x007ddec4    c74424247c000000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000021            // 0x007ddecc    c744242821000000
                         {disp32} mov       dword ptr [esp + 0x0000008c], 0x00002218      // 0x007dded4    c784248c00000018220000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000001            // 0x007ddedf    c744243801000000
                         mov                ecx, dword ptr [eax]                          // 0x007ddee7    8b08
                         push               edi                                           // 0x007ddee9    57
                         push               edx                                           // 0x007ddeea    52
                         push               eax                                           // 0x007ddeeb    50
                         call               dword ptr [ecx + 0x18]                        // 0x007ddeec    ff5118
                         mov                eax, dword ptr [edi]                          // 0x007ddeef    8b07
                         {disp8} lea        ebp, dword ptr [esi + 0x34]                   // 0x007ddef1    8d6e34
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x007ddef4    8d542410
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000004            // 0x007ddef8    c744241004000000
                         mov                ecx, dword ptr [eax]                          // 0x007ddf00    8b08
                         push               ebp                                           // 0x007ddf02    55
                         push               edx                                           // 0x007ddf03    52
                         push               eax                                           // 0x007ddf04    50
                         call               dword ptr [ecx + 0x30]                        // 0x007ddf05    ff5130
                         xor.s              ebx, ebx                                      // 0x007ddf08    33db
_jmp_addr_0x007ddf0a:    mov                eax, dword ptr [edi]                          // 0x007ddf0a    8b07
                         push               ebx                                           // 0x007ddf0c    53
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x007ddf0d    8d542424
                         push               0x1                                           // 0x007ddf11    6a01
                         mov                ecx, dword ptr [eax]                          // 0x007ddf13    8b08
                         push               edx                                           // 0x007ddf15    52
                         push               ebx                                           // 0x007ddf16    53
                         push               eax                                           // 0x007ddf17    50
                         call               dword ptr [ecx + 0x64]                        // 0x007ddf18    ff5164
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x007ddf1b    8b442430
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                   // 0x007ddf1f    8b4c2474
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x007ddf23    89460c
                         {disp8} mov        byte ptr [esi + 0x14], cl                     // 0x007ddf26    884e14
                         shl                eax, 3                                        // 0x007ddf29    c1e003
                         and                ecx, 0x000000ff                               // 0x007ddf2c    81e1ff000000
                         xor.s              edx, edx                                      // 0x007ddf32    33d2
                         div                ecx                                           // 0x007ddf34    f7f1
                         push               ebx                                           // 0x007ddf36    53
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x007ddf37    894610
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x007ddf3a    8b442448
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x007ddf3e    89461c
                         mov                eax, dword ptr [edi]                          // 0x007ddf41    8b07
                         push               eax                                           // 0x007ddf43    50
                         mov                ecx, dword ptr [eax]                          // 0x007ddf44    8b08
                         call               dword ptr [ecx + 0x80]                        // 0x007ddf46    ff9180000000
                         cmp                dword ptr [esi + 0x64], ebx                   // 0x007ddf4c    395e64
                         {disp8} je         _jmp_addr_0x007ddfa0                          // 0x007ddf4f    744f
                         push               ebx                                           // 0x007ddf51    53
                         push               ebx                                           // 0x007ddf52    53
                         call               _jmp_addr_0x007dc9a0                          // 0x007ddf53    e848eaffff
                         {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x007ddf58    8b4664
                         add                esp, 0x08                                     // 0x007ddf5b    83c408
                         cmp.s              eax, ebx                                      // 0x007ddf5e    3bc3
                         {disp8} je         _jmp_addr_0x007ddfa0                          // 0x007ddf60    743e
                         {disp8} mov        eax, dword ptr [esi + 0x58]                   // 0x007ddf62    8b4658
                         xor.s              edx, edx                                      // 0x007ddf65    33d2
                         {disp8} mov        dx, word ptr [esi + 0x08]                     // 0x007ddf67    668b5608
                         mov                edi, dword ptr [edi]                          // 0x007ddf6b    8b3f
                         xor.s              ecx, ecx                                      // 0x007ddf6d    33c9
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007ddf6f    89442410
                         {disp8} mov        cx, word ptr [esi + 0x0a]                     // 0x007ddf73    668b4e0a
                         add.s              edx, eax                                      // 0x007ddf77    03d0
                         {disp8} mov        eax, dword ptr [esi + 0x5c]                   // 0x007ddf79    8b465c
                         push               ebx                                           // 0x007ddf7c    53
                         add.s              ecx, eax                                      // 0x007ddf7d    03c8
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x007ddf7f    89442418
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x007ddf83    8b4500
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x007ddf86    894c2420
                         push               0x01000000                                    // 0x007ddf8a    6800000001
                         push               ebx                                           // 0x007ddf8f    53
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x007ddf90    8d4c241c
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x007ddf94    89542424
                         mov                edx, dword ptr [edi]                          // 0x007ddf98    8b17
                         push               eax                                           // 0x007ddf9a    50
                         push               ecx                                           // 0x007ddf9b    51
                         push               edi                                           // 0x007ddf9c    57
                         call               dword ptr [edx + 0x14]                        // 0x007ddf9d    ff5214
_jmp_addr_0x007ddfa0:    cmp                dword ptr [data_bytes + 0x504620], ebx        // 0x007ddfa0    391d20a6ec00
                         {disp8} je         _jmp_addr_0x007ddfb2                          // 0x007ddfa6    740a
                         call               _jmp_addr_0x0082cd80                          // 0x007ddfa8    e8d3ed0400
                         call               _jmp_addr_0x0085dd60                          // 0x007ddfad    e8aefd0700
_jmp_addr_0x007ddfb2:    push               0x1                                           // 0x007ddfb2    6a01
                         mov.s              ecx, esi                                      // 0x007ddfb4    8bce
                         call               _jmp_addr_0x007de580                          // 0x007ddfb6    e8c5050000
                         push               0x1                                           // 0x007ddfbb    6a01
                         mov.s              ecx, esi                                      // 0x007ddfbd    8bce
                         call               _jmp_addr_0x007de580                          // 0x007ddfbf    e8bc050000
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x007ddfc4    8b4500
                         push               ebx                                           // 0x007ddfc7    53
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x007ddfc8    8d4c2424
                         push               0x1                                           // 0x007ddfcc    6a01
                         mov                edx, dword ptr [eax]                          // 0x007ddfce    8b10
                         push               ecx                                           // 0x007ddfd0    51
                         push               ebx                                           // 0x007ddfd1    53
                         push               eax                                           // 0x007ddfd2    50
                         call               dword ptr [edx + 0x64]                        // 0x007ddfd3    ff5264
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x007ddfd6    8b442430
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x007ddfda    8b542444
                         {disp32} mov       dword ptr [esi + 0x00000088], eax             // 0x007ddfde    898688000000
                         {disp8} mov        dword ptr [esi + 0x24], edx                   // 0x007ddfe4    895624
                         shl                eax, 3                                        // 0x007ddfe7    c1e003
                         xor.s              ecx, ecx                                      // 0x007ddfea    33c9
                         {disp8} mov        ebp, dword ptr [ebp + 0x00]                   // 0x007ddfec    8b6d00
                         {disp8} mov        cl, byte ptr [esi + 0x14]                     // 0x007ddfef    8a4e14
                         push               ebx                                           // 0x007ddff2    53
                         cdq                                                              // 0x007ddff3    99
                         idiv               ecx                                           // 0x007ddff4    f7f9
                         push               ebp                                           // 0x007ddff6    55
                         {disp32} mov       dword ptr [esi + 0x0000008c], eax             // 0x007ddff7    89868c000000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x007ddffd    8b5500
                         call               dword ptr [edx + 0x80]                        // 0x007de000    ff9280000000
                         {disp8} lea        eax, dword ptr [esp + 0x68]                   // 0x007de006    8d442468
                         mov.s              ecx, esi                                      // 0x007de00a    8bce
                         push               eax                                           // 0x007de00c    50
                         call               _jmp_addr_0x007ddb10                          // 0x007de00d    e8fefaffff
                         {disp8} mov        cx, word ptr [esi + 0x08]                     // 0x007de012    668b4e08
                         {disp8} mov        ax, word ptr [esi + 0x0a]                     // 0x007de016    668b460a
                         and                ecx, 0x0000ffff                               // 0x007de01a    81e1ffff0000
                         and                eax, 0x0000ffff                               // 0x007de020    25ffff0000
                         dec                ecx                                           // 0x007de025    49
                         dec                eax                                           // 0x007de026    48
                         {disp32} mov       dword ptr [data_bytes + 0x4c65c4], eax        // 0x007de027    a3c4c5e800
                         {disp32} mov       dword ptr [data_bytes + 0x4c65c0], ecx        // 0x007de02c    890dc0c5e800
                         xor.s              eax, eax                                      // 0x007de032    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x4c65b8], ebx        // 0x007de034    891db8c5e800
                         {disp32} mov       dword ptr [data_bytes + 0x4c65bc], ebx        // 0x007de03a    891dbcc5e800
                         {disp8} mov        ax, word ptr [esi + 0x0a]                     // 0x007de040    668b460a
                         xor.s              ecx, ecx                                      // 0x007de044    33c9
                         dec                eax                                           // 0x007de046    48
                         {disp8} mov        cx, word ptr [esi + 0x08]                     // 0x007de047    668b4e08
                         {disp8} mov        dword ptr [esi + 0x48], ebx                   // 0x007de04b    895e48
                         dec                ecx                                           // 0x007de04e    49
                         {disp8} mov        dword ptr [esi + 0x4c], ebx                   // 0x007de04f    895e4c
                         dec                ecx                                           // 0x007de052    49
                         dec                eax                                           // 0x007de053    48
                         {disp8} mov        dword ptr [esi + 0x54], eax                   // 0x007de054    894654
                         {disp8} mov        dword ptr [esi + 0x50], ecx                   // 0x007de057    894e50
                         xor.s              eax, eax                                      // 0x007de05a    33c0
                         xor.s              ecx, ecx                                      // 0x007de05c    33c9
                         {disp8} mov        ax, word ptr [esi + 0x0a]                     // 0x007de05e    668b460a
                         {disp8} mov        cx, word ptr [esi + 0x08]                     // 0x007de062    668b4e08
                         dec                eax                                           // 0x007de066    48
                         dec                ecx                                           // 0x007de067    49
                         dec                ecx                                           // 0x007de068    49
                         dec                eax                                           // 0x007de069    48
                         {disp8} mov        dword ptr [esi + 0x38], ebx                   // 0x007de06a    895e38
                         {disp8} mov        dword ptr [esi + 0x3c], ebx                   // 0x007de06d    895e3c
                         {disp8} mov        dword ptr [esi + 0x40], ecx                   // 0x007de070    894e40
                         {disp8} mov        dword ptr [esi + 0x44], eax                   // 0x007de073    894644
                         pop                edi                                           // 0x007de076    5f
                         pop                esi                                           // 0x007de077    5e
                         pop                ebp                                           // 0x007de078    5d
                         xor.s              eax, eax                                      // 0x007de079    33c0
                         pop                ebx                                           // 0x007de07b    5b
                         add                esp, 0x0000008c                               // 0x007de07c    81c48c000000
                         ret                0x000c                                        // 0x007de082    c20c00
                         nop                                                              // 0x007de085    90
                         nop                                                              // 0x007de086    90
                         nop                                                              // 0x007de087    90
                         nop                                                              // 0x007de088    90
                         nop                                                              // 0x007de089    90
                         nop                                                              // 0x007de08a    90
                         nop                                                              // 0x007de08b    90
                         nop                                                              // 0x007de08c    90
                         nop                                                              // 0x007de08d    90
                         nop                                                              // 0x007de08e    90
                         nop                                                              // 0x007de08f    90
_jmp_addr_0x007de090:    push               ecx                                           // 0x007de090    51
                         push               esi                                           // 0x007de091    56
                         mov.s              esi, ecx                                      // 0x007de092    8bf1
                         push               edi                                           // 0x007de094    57
                         {disp32} mov       ecx, dword ptr [esi + 0x00000090]             // 0x007de095    8b8e90000000
                         {disp32} mov       eax, dword ptr [esi + 0x000001ac]             // 0x007de09b    8b86ac010000
                         inc                ecx                                           // 0x007de0a1    41
                         test               eax, eax                                      // 0x007de0a2    85c0
                         {disp32} mov       dword ptr [esi + 0x00000090], ecx             // 0x007de0a4    898e90000000
                         {disp32} je        _jmp_addr_0x007de188                          // 0x007de0aa    0f84d8000000
                         {disp32} mov       al, byte ptr [data_bytes + 0x4c65b1]          // 0x007de0b0    a0b1c5e800
                         test               al, 0x01                                      // 0x007de0b5    a801
                         {disp8} jne        _jmp_addr_0x007de0d8                          // 0x007de0b7    751f
                         mov.s              dl, al                                        // 0x007de0b9    8ad0
                         push               0x007de1f0                                    // 0x007de0bb    68f0e17d00
                         or                 dl, 1                                         // 0x007de0c0    80ca01
                         {disp32} mov       byte ptr [data_bytes + 0x4c61b0], 0x00        // 0x007de0c3    c605b0c1e80000
                         {disp32} mov       byte ptr [data_bytes + 0x4c65b1], dl          // 0x007de0ca    8815b1c5e800
                         call               _atexit                                       // 0x007de0d0    e8bc76feff
                         add                esp, 0x04                                     // 0x007de0d5    83c404
_jmp_addr_0x007de0d8:    mov.s              ecx, esi                                      // 0x007de0d8    8bce
                         call               _jmp_addr_0x007de320                          // 0x007de0da    e841020000
                         test               ax, ax                                        // 0x007de0df    6685c0
                         {disp8} je         _jmp_addr_0x007de143                          // 0x007de0e2    745f
                         {disp32} fld       dword ptr [esi + 0x000001b0]                  // 0x007de0e4    d986b0010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007de0ea    d81d98a38a00
                         fnstsw             ax                                            // 0x007de0f0    dfe0
                         test               ah, 0x40                                      // 0x007de0f2    f6c440
                         {disp8} jne        _jmp_addr_0x007de124                          // 0x007de0f5    752d
                         {disp32} fld       dword ptr [esi + 0x000001b0]                  // 0x007de0f7    d986b0010000
                         call               _jmp_addr_0x007a1400                          // 0x007de0fd    e8fe32fcff
                         {disp32} fld       dword ptr [esi + 0x000001a8]                  // 0x007de102    d986a8010000
                         push               eax                                           // 0x007de108    50
                         sub                esp, 0x08                                     // 0x007de109    83ec08
                         fstp               qword ptr [esp]                               // 0x007de10c    dd1c24
                         push               0x00c315b8                                    // 0x007de10f    68b815c300
                         push               0x00e8c1b0                                    // 0x007de114    68b0c1e800
                         call               dword ptr [rdata_bytes + 0x390]               // 0x007de119    ff1590938a00
                         add                esp, 0x14                                     // 0x007de11f    83c414
                         {disp8} jmp        _jmp_addr_0x007de143                          // 0x007de122    eb1f
_jmp_addr_0x007de124:    {disp32} fld       dword ptr [esi + 0x000001a8]                  // 0x007de124    d986a8010000
                         sub                esp, 0x08                                     // 0x007de12a    83ec08
                         fstp               qword ptr [esp]                               // 0x007de12d    dd1c24
                         push               0x00c315ac                                    // 0x007de130    68ac15c300
                         push               0x00e8c1b0                                    // 0x007de135    68b0c1e800
                         call               dword ptr [rdata_bytes + 0x390]               // 0x007de13a    ff1590938a00
                         add                esp, 0x10                                     // 0x007de140    83c410
_jmp_addr_0x007de143:    mov                al, -0x01                                     // 0x007de143    b0ff
                         push               0x0                                           // 0x007de145    6a00
                         {disp8} mov        byte ptr [esp + 0x0c], al                     // 0x007de147    8844240c
                         {disp8} mov        byte ptr [esp + 0x0d], al                     // 0x007de14b    8844240d
                         {disp8} mov        byte ptr [esp + 0x0e], al                     // 0x007de14f    8844240e
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x007de153    8d44240c
                         push               eax                                           // 0x007de157    50
                         mov                edi, 0x00e8c1b0                               // 0x007de158    bfb0c1e800
                         or                 ecx, 0xffffffff                               // 0x007de15d    83c9ff
                         xor.s              eax, eax                                      // 0x007de160    33c0
                         repne scasb                                                      // 0x007de162    f2ae
                         {disp8} mov        ax, word ptr [esi + 0x08]                     // 0x007de164    668b4608
                         push               0x00e8c1b0                                    // 0x007de168    68b0c1e800
                         not                ecx                                           // 0x007de16d    f7d1
                         dec                ecx                                           // 0x007de16f    49
                         push               0x0                                           // 0x007de170    6a00
                         {disp32} lea       edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x007de172    8d14cd00000000
                         sub.s              edx, ecx                                      // 0x007de179    2bd1
                         mov                ecx, 0x00e8c084                               // 0x007de17b    b984c0e800
                         sub.s              eax, edx                                      // 0x007de180    2bc2
                         push               eax                                           // 0x007de182    50
                         call               _jmp_addr_0x007e45f0                          // 0x007de183    e868640000
_jmp_addr_0x007de188:    {disp32} mov       edi, dword ptr [__imp__EnterCriticalSection@4]// 0x007de188    8b3d80918a00
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de18e    685006e900
                         call               edi                                           // 0x007de193    ffd7
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de195    685006e900
                         call               edi                                           // 0x007de19a    ffd7
                         {disp32} mov       edi, dword ptr [__imp__LeaveCriticalSection@4]// 0x007de19c    8b3d84918a00
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de1a2    685006e900
                         {disp32} mov       dword ptr [data_bytes + 0x4bf20c], 0x00000001 // 0x007de1a7    c7050c52e80001000000
                         call               edi                                           // 0x007de1b1    ffd7
                         push               0x1                                           // 0x007de1b3    6a01
                         push               0x0                                           // 0x007de1b5    6a00
                         mov                ecx, 0x00e85204                               // 0x007de1b7    b90452e800
                         call               @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                          // 0x007de1bc    e8ff750000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007de1c1    8b4c2410
                         push               ecx                                           // 0x007de1c5    51
                         mov.s              ecx, esi                                      // 0x007de1c6    8bce
                         call               _jmp_addr_0x007de580                          // 0x007de1c8    e8b3030000
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de1cd    685006e900
                         mov.s              esi, eax                                      // 0x007de1d2    8bf0
                         call               edi                                           // 0x007de1d4    ffd7
                         call               _jmp_addr_0x007db910                          // 0x007de1d6    e835d7ffff
                         test               al, al                                        // 0x007de1db    84c0
                         {disp8} je         _jmp_addr_0x007de1e4                          // 0x007de1dd    7405
                         call               _jmp_addr_0x007db940                          // 0x007de1df    e85cd7ffff
_jmp_addr_0x007de1e4:    mov.s              eax, esi                                      // 0x007de1e4    8bc6
                         pop                edi                                           // 0x007de1e6    5f
                         pop                esi                                           // 0x007de1e7    5e
                         pop                ecx                                           // 0x007de1e8    59
                         ret                0x0004                                        // 0x007de1e9    c20400
                         nop                                                              // 0x007de1ec    90
                         nop                                                              // 0x007de1ed    90
                         nop                                                              // 0x007de1ee    90
                         nop                                                              // 0x007de1ef    90
                         ret                                                              // 0x007de1f0    c3
                         nop                                                              // 0x007de1f1    90
                         nop                                                              // 0x007de1f2    90
                         nop                                                              // 0x007de1f3    90
                         nop                                                              // 0x007de1f4    90
                         nop                                                              // 0x007de1f5    90
                         nop                                                              // 0x007de1f6    90
                         nop                                                              // 0x007de1f7    90
                         nop                                                              // 0x007de1f8    90
                         nop                                                              // 0x007de1f9    90
                         nop                                                              // 0x007de1fa    90
                         nop                                                              // 0x007de1fb    90
                         nop                                                              // 0x007de1fc    90
                         nop                                                              // 0x007de1fd    90
                         nop                                                              // 0x007de1fe    90
                         nop                                                              // 0x007de1ff    90
_jmp_addr_0x007de200:    push               ebx                                           // 0x007de200    53
                         push               esi                                           // 0x007de201    56
                         push               edi                                           // 0x007de202    57
                         mov.s              ebx, ecx                                      // 0x007de203    8bd9
                         call               _jmp_addr_0x0087fc70                          // 0x007de205    e8661a0a00
                         test               eax, eax                                      // 0x007de20a    85c0
                         {disp8} je         _jmp_addr_0x007de21b                          // 0x007de20c    740d
                         call               _jmp_addr_0x0087fc80                          // 0x007de20e    e86d1a0a00
                         xor.s              eax, eax                                      // 0x007de213    33c0
                         pop                edi                                           // 0x007de215    5f
                         pop                esi                                           // 0x007de216    5e
                         pop                ebx                                           // 0x007de217    5b
                         ret                0x0008                                        // 0x007de218    c20800
_jmp_addr_0x007de21b:    {disp32} mov       cl, byte ptr [data_bytes + 0x4c61ab]          // 0x007de21b    8a0dabc1e800
                         mov                al, 0x01                                      // 0x007de221    b001
                         test               al, cl                                        // 0x007de223    84c8
                         {disp8} jne        _jmp_addr_0x007de23e                          // 0x007de225    7517
                         mov.s              dl, cl                                        // 0x007de227    8ad1
                         push               0x007de2e0                                    // 0x007de229    68e0e27d00
                         or.s               dl, al                                        // 0x007de22e    0ad0
                         {disp32} mov       byte ptr [data_bytes + 0x4c61ab], dl          // 0x007de230    8815abc1e800
                         call               _atexit                                       // 0x007de236    e85675feff
                         add                esp, 0x04                                     // 0x007de23b    83c404
_jmp_addr_0x007de23e:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007de23e    8b4c2414
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007de242    8b442410
                         mov.s              esi, ecx                                      // 0x007de246    8bf1
                         mov.s              edi, eax                                      // 0x007de248    8bf8
                         neg                esi                                           // 0x007de24a    f7de
                         sbb.s              esi, esi                                      // 0x007de24c    1bf6
                         and                esi, 0x00e8c198                               // 0x007de24e    81e698c1e800
                         test               eax, eax                                      // 0x007de254    85c0
                         {disp8} jne        _jmp_addr_0x007de25d                          // 0x007de256    7505
                         mov                edi, 0x00e8c1a8                               // 0x007de258    bfa8c1e800
_jmp_addr_0x007de25d:    test               ecx, ecx                                      // 0x007de25d    85c9
                         {disp32} mov       dword ptr [data_bytes + 0x4c6130], 0x00000064 // 0x007de25f    c70530c1e80064000000
                         {disp8} je         _jmp_addr_0x007de275                          // 0x007de269    740a
                         push               0x00e8c198                                    // 0x007de26b    6898c1e800
                         call               _jmp_addr_0x007ded80                          // 0x007de270    e80b0b0000
_jmp_addr_0x007de275:    cmp                byte ptr [ebx + 0x14], 0x10                   // 0x007de275    807b1410
                         {disp8} jne        _jmp_addr_0x007de2a3                          // 0x007de279    7528
                         {disp8} mov        dl, byte ptr [edi + 0x02]                     // 0x007de27b    8a5702
                         push               ecx                                           // 0x007de27e    51
                         mov                cx, word ptr [edi]                            // 0x007de27f    668b0f
                         mov.s              eax, esp                                      // 0x007de282    8bc4
                         mov                word ptr [eax], cx                            // 0x007de284    668908
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x007de287    8d4c2418
                         {disp8} mov        byte ptr [eax + 0x02], dl                     // 0x007de28b    885002
                         call               _jmp_addr_0x00449650                          // 0x007de28e    e8bdb3c6ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007de293    8b442414
                         and                eax, 0x0000ffff                               // 0x007de297    25ffff0000
                         {disp32} mov       dword ptr [data_bytes + 0x4c6180], eax        // 0x007de29c    a380c1e800
                         {disp8} jmp        _jmp_addr_0x007de2ba                          // 0x007de2a1    eb17
_jmp_addr_0x007de2a3:    xor.s              ecx, ecx                                      // 0x007de2a3    33c9
                         xor.s              edx, edx                                      // 0x007de2a5    33d2
                         {disp8} mov        ch, byte ptr [edi + 0x02]                     // 0x007de2a7    8a6f02
                         mov                dl, byte ptr [edi]                            // 0x007de2aa    8a17
                         {disp8} mov        cl, byte ptr [edi + 0x01]                     // 0x007de2ac    8a4f01
                         shl                ecx, 8                                        // 0x007de2af    c1e108
                         or.s               ecx, edx                                      // 0x007de2b2    0bca
                         {disp32} mov       dword ptr [data_bytes + 0x4c6180], ecx        // 0x007de2b4    890d80c1e800
_jmp_addr_0x007de2ba:    {disp8} mov        eax, dword ptr [ebx + 0x34]                   // 0x007de2ba    8b4334
                         push               0x00e8c130                                    // 0x007de2bd    6830c1e800
                         push               0x01000400                                    // 0x007de2c2    6800040001
                         push               0x0                                           // 0x007de2c7    6a00
                         mov                ecx, dword ptr [eax]                          // 0x007de2c9    8b08
                         push               0x0                                           // 0x007de2cb    6a00
                         push               esi                                           // 0x007de2cd    56
                         push               eax                                           // 0x007de2ce    50
                         call               dword ptr [ecx + 0x14]                        // 0x007de2cf    ff5114
                         pop                edi                                           // 0x007de2d2    5f
                         pop                esi                                           // 0x007de2d3    5e
                         xor.s              eax, eax                                      // 0x007de2d4    33c0
                         pop                ebx                                           // 0x007de2d6    5b
                         ret                0x0008                                        // 0x007de2d7    c20800
                         nop                                                              // 0x007de2da    90
                         nop                                                              // 0x007de2db    90
                         nop                                                              // 0x007de2dc    90
                         nop                                                              // 0x007de2dd    90
                         nop                                                              // 0x007de2de    90
                         nop                                                              // 0x007de2df    90
                         ret                                                              // 0x007de2e0    c3
                         nop                                                              // 0x007de2e1    90
                         nop                                                              // 0x007de2e2    90
                         nop                                                              // 0x007de2e3    90
                         nop                                                              // 0x007de2e4    90
                         nop                                                              // 0x007de2e5    90
                         nop                                                              // 0x007de2e6    90
                         nop                                                              // 0x007de2e7    90
                         nop                                                              // 0x007de2e8    90
                         nop                                                              // 0x007de2e9    90
                         nop                                                              // 0x007de2ea    90
                         nop                                                              // 0x007de2eb    90
                         nop                                                              // 0x007de2ec    90
                         nop                                                              // 0x007de2ed    90
                         nop                                                              // 0x007de2ee    90
                         nop                                                              // 0x007de2ef    90
_jmp_addr_0x007de2f0:    push               esi                                           // 0x007de2f0    56
                         mov.s              esi, ecx                                      // 0x007de2f1    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007de2f3    8b4c2408
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x007de2f7    8b4660
                         {disp8} mov        dword ptr [esi + 0x28], ecx                   // 0x007de2fa    894e28
                         push               ecx                                           // 0x007de2fd    51
                         push               0x0                                           // 0x007de2fe    6a00
                         mov                edx, dword ptr [eax]                          // 0x007de300    8b10
                         push               eax                                           // 0x007de302    50
                         call               dword ptr [edx + 0x20]                        // 0x007de303    ff5220
                         mov.s              ecx, esi                                      // 0x007de306    8bce
                         call               _jmp_addr_0x007de820                          // 0x007de308    e813050000
                         pop                esi                                           // 0x007de30d    5e
                         ret                0x0004                                        // 0x007de30e    c20400
                         nop                                                              // 0x007de311    90
                         nop                                                              // 0x007de312    90
                         nop                                                              // 0x007de313    90
                         nop                                                              // 0x007de314    90
                         nop                                                              // 0x007de315    90
                         nop                                                              // 0x007de316    90
                         nop                                                              // 0x007de317    90
                         nop                                                              // 0x007de318    90
                         nop                                                              // 0x007de319    90
                         nop                                                              // 0x007de31a    90
                         nop                                                              // 0x007de31b    90
                         nop                                                              // 0x007de31c    90
                         nop                                                              // 0x007de31d    90
                         nop                                                              // 0x007de31e    90
                         nop                                                              // 0x007de31f    90
_jmp_addr_0x007de320:    sub                esp, 0x0c                                     // 0x007de320    83ec0c
                         push               ebx                                           // 0x007de323    53
                         push               ebp                                           // 0x007de324    55
                         push               esi                                           // 0x007de325    56
                         mov.s              esi, ecx                                      // 0x007de326    8bf1
                         {disp32} mov       ebx, dword ptr [__imp__GetTickCount@4]        // 0x007de328    8b1dc4918a00
                         xor.s              ebp, ebp                                      // 0x007de32e    33ed
                         {disp32} fld       dword ptr [esi + 0x000001a0]                  // 0x007de330    d986a0010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007de336    d81d98a38a00
                         fnstsw             ax                                            // 0x007de33c    dfe0
                         test               ah, 0x40                                      // 0x007de33e    f6c440
                         {disp32} je        _jmp_addr_0x007de3e3                          // 0x007de341    0f849c000000
                         push               edi                                           // 0x007de347    57
                         {disp32} lea       edi, dword ptr [esi + 0x00000098]             // 0x007de348    8dbe98000000
                         call               ebx                                           // 0x007de34e    ffd3
                         {disp32} fld       dword ptr [edi + 0x00000108]                  // 0x007de350    d98708010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007de356    d81d98a38a00
                         {disp32} mov       dword ptr [edi + 0x00000100], eax             // 0x007de35c    898700010000
                         {disp32} mov       dword ptr [edi + 0x00000104], ebp             // 0x007de362    89af04010000
                         fnstsw             ax                                            // 0x007de368    dfe0
                         test               ah, 0x40                                      // 0x007de36a    f6c440
                         {disp8} jne        _jmp_addr_0x007de383                          // 0x007de36d    7514
                         {disp32} mov       eax, dword ptr [edi + 0x00000108]             // 0x007de36f    8b8708010000
                         push               ebp                                           // 0x007de375    55
                         mov.s              ecx, edi                                      // 0x007de376    8bcf
                         {disp32} mov       dword ptr [edi + 0x0000010c], eax             // 0x007de378    89870c010000
                         call               @SetSpeedUpFactor__7LHTimerFf@12              // 0x007de37e    e83d08c6ff
_jmp_addr_0x007de383:    {disp32} mov       ecx, dword ptr [edi + 0x0000010c]             // 0x007de383    8b8f0c010000
                         {disp32} mov       dword ptr [edi + 0x00000108], 0x3727c5ac      // 0x007de389    c78708010000acc52737
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x007de393    894c2410
                         call               ebx                                           // 0x007de397    ffd3
                         {disp32} mov       ecx, dword ptr [edi + 0x00000100]             // 0x007de399    8b8f00010000
                         {disp32} mov       edx, dword ptr [edi + 0x00000104]             // 0x007de39f    8b9704010000
                         sub.s              eax, ecx                                      // 0x007de3a5    2bc1
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x007de3a7    896c2418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x007de3ab    89442414
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x007de3af    df6c2414
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x007de3b3    89542414
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x007de3b7    896c2418
                         {disp32} fmul      dword ptr [edi + 0x00000108]                  // 0x007de3bb    d88f08010000
                         {disp8} fiadd      dword ptr [esp + 0x14]                        // 0x007de3c1    da442414
                         call               _jmp_addr_0x007a1400                          // 0x007de3c5    e83630fcff
                         {disp32} mov       dword ptr [edi + 0x00000104], eax             // 0x007de3ca    898704010000
                         call               ebx                                           // 0x007de3d0    ffd3
                         {disp32} mov       dword ptr [edi + 0x00000100], eax             // 0x007de3d2    898700010000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007de3d8    8b442410
                         {disp32} mov       dword ptr [edi + 0x00000108], eax             // 0x007de3dc    898708010000
                         pop                edi                                           // 0x007de3e2    5f
_jmp_addr_0x007de3e3:    {disp32} inc       word ptr [esi + 0x00000094]                   // 0x007de3e3    66ff8694000000
                         call               ebx                                           // 0x007de3ea    ffd3
                         {disp32} mov       edx, dword ptr [esi + 0x00000198]             // 0x007de3ec    8b9698010000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000019c]             // 0x007de3f2    8b8e9c010000
                         sub.s              eax, edx                                      // 0x007de3f8    2bc2
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de3fa    896c2414
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de3fe    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x007de402    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x007de406    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de40a    896c2414
                         {disp32} fmul      dword ptr [esi + 0x000001a0]                  // 0x007de40e    d88ea0010000
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x007de414    da442410
                         call               _jmp_addr_0x007a1400                          // 0x007de418    e8e32ffcff
                         cmp                eax, 0x000007d0                               // 0x007de41d    3dd0070000
                         {disp32} jbe       _jmp_addr_0x007de56b                          // 0x007de422    0f8643010000
                         call               ebx                                           // 0x007de428    ffd3
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]             // 0x007de42a    8b8e98010000
                         xor.s              edx, edx                                      // 0x007de430    33d2
                         {disp32} mov       dx, word ptr [esi + 0x00000094]               // 0x007de432    668b9694000000
                         sub.s              eax, ecx                                      // 0x007de439    2bc1
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x007de43b    8954240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de43f    89442410
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x007de443    db44240c
                         {disp32} mov       eax, dword ptr [esi + 0x0000019c]             // 0x007de447    8b869c010000
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de44d    896c2414
                         {disp32} fmul      qword ptr [rdata_bytes + 0xf8628]             // 0x007de451    dc0d28169a00
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x007de457    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de45b    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de45f    896c2414
                         {disp32} fmul      dword ptr [esi + 0x000001a0]                  // 0x007de463    d88ea0010000
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x007de469    da442410
                         call               _jmp_addr_0x007a1400                          // 0x007de46d    e88e2ffcff
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de472    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de476    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x007de47a    df6c2410
                         {disp32} mov       word ptr [esi + 0x00000094], bp               // 0x007de47e    6689ae94000000
                         fdivp              st(1), st                                     // 0x007de485    def9
                         {disp32} fstp      dword ptr [esi + 0x000001a8]                  // 0x007de487    d99ea8010000
                         call               ebx                                           // 0x007de48d    ffd3
                         {disp32} fld       dword ptr [esi + 0x000001a0]                  // 0x007de48f    d986a0010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007de495    d81d98a38a00
                         {disp32} mov       dword ptr [esi + 0x00000198], eax             // 0x007de49b    898698010000
                         {disp32} mov       dword ptr [esi + 0x0000019c], ebp             // 0x007de4a1    89ae9c010000
                         fnstsw             ax                                            // 0x007de4a7    dfe0
                         test               ah, 0x40                                      // 0x007de4a9    f6c440
                         {disp8} jne        _jmp_addr_0x007de501                          // 0x007de4ac    7553
                         {disp32} mov       ecx, dword ptr [esi + 0x000001a0]             // 0x007de4ae    8b8ea0010000
                         {disp32} mov       dword ptr [esi + 0x000001a4], ecx             // 0x007de4b4    898ea4010000
                         call               ebx                                           // 0x007de4ba    ffd3
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]             // 0x007de4bc    8b8e98010000
                         {disp32} mov       edx, dword ptr [esi + 0x0000019c]             // 0x007de4c2    8b969c010000
                         sub.s              eax, ecx                                      // 0x007de4c8    2bc1
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de4ca    896c2414
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de4ce    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x007de4d2    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x007de4d6    89542410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de4da    896c2414
                         {disp32} fmul      dword ptr [esi + 0x000001a0]                  // 0x007de4de    d88ea0010000
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x007de4e4    da442410
                         call               _jmp_addr_0x007a1400                          // 0x007de4e8    e8132ffcff
                         {disp32} mov       dword ptr [esi + 0x0000019c], eax             // 0x007de4ed    89869c010000
                         call               ebx                                           // 0x007de4f3    ffd3
                         {disp32} mov       dword ptr [esi + 0x00000198], eax             // 0x007de4f5    898698010000
                         {disp32} mov       dword ptr [esi + 0x000001a0], ebp             // 0x007de4fb    89aea0010000
_jmp_addr_0x007de501:    {disp32} mov       eax, dword ptr [esi + 0x000001a4]             // 0x007de501    8b86a4010000
                         {disp32} mov       dword ptr [esi + 0x000001a0], 0x3727c5ac      // 0x007de507    c786a0010000acc52737
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x007de511    8944240c
                         call               ebx                                           // 0x007de515    ffd3
                         {disp32} mov       ecx, dword ptr [esi + 0x00000198]             // 0x007de517    8b8e98010000
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de51d    896c2414
                         sub.s              eax, ecx                                      // 0x007de521    2bc1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000019c]             // 0x007de523    8b8e9c010000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de529    89442410
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x007de52d    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x007de531    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x007de535    896c2414
                         {disp32} fmul      dword ptr [esi + 0x000001a0]                  // 0x007de539    d88ea0010000
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x007de53f    da442410
                         call               _jmp_addr_0x007a1400                          // 0x007de543    e8b82efcff
                         {disp32} mov       dword ptr [esi + 0x0000019c], eax             // 0x007de548    89869c010000
                         call               ebx                                           // 0x007de54e    ffd3
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x007de550    8b54240c
                         {disp32} mov       dword ptr [esi + 0x00000198], eax             // 0x007de554    898698010000
                         {disp32} mov       dword ptr [esi + 0x000001a0], edx             // 0x007de55a    8996a0010000
                         pop                esi                                           // 0x007de560    5e
                         pop                ebp                                           // 0x007de561    5d
                         mov                ax, 0x0001                                    // 0x007de562    66b80100
                         pop                ebx                                           // 0x007de566    5b
                         add                esp, 0x0c                                     // 0x007de567    83c40c
                         ret                                                              // 0x007de56a    c3
_jmp_addr_0x007de56b:    pop                esi                                           // 0x007de56b    5e
                         pop                ebp                                           // 0x007de56c    5d
                         xor.s              ax, ax                                        // 0x007de56d    6633c0
                         pop                ebx                                           // 0x007de570    5b
                         add                esp, 0x0c                                     // 0x007de571    83c40c
                         ret                                                              // 0x007de574    c3
                         nop                                                              // 0x007de575    90
                         nop                                                              // 0x007de576    90
                         nop                                                              // 0x007de577    90
                         nop                                                              // 0x007de578    90
                         nop                                                              // 0x007de579    90
                         nop                                                              // 0x007de57a    90
                         nop                                                              // 0x007de57b    90
                         nop                                                              // 0x007de57c    90
                         nop                                                              // 0x007de57d    90
                         nop                                                              // 0x007de57e    90
                         nop                                                              // 0x007de57f    90
_jmp_addr_0x007de580:    sub                esp, 0x10                                     // 0x007de580    83ec10
                         push               esi                                           // 0x007de583    56
                         mov.s              esi, ecx                                      // 0x007de584    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x007de586    8b4664
                         test               eax, eax                                      // 0x007de589    85c0
                         {disp8} je         _jmp_addr_0x007de5d0                          // 0x007de58b    7443
                         {disp8} mov        eax, dword ptr [esi + 0x58]                   // 0x007de58d    8b4658
                         xor.s              ecx, ecx                                      // 0x007de590    33c9
                         {disp8} mov        cx, word ptr [esi + 0x08]                     // 0x007de592    668b4e08
                         xor.s              edx, edx                                      // 0x007de596    33d2
                         {disp8} mov        dx, word ptr [esi + 0x0a]                     // 0x007de598    668b560a
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007de59c    89442404
                         add.s              ecx, eax                                      // 0x007de5a0    03c8
                         {disp8} mov        eax, dword ptr [esi + 0x5c]                   // 0x007de5a2    8b465c
                         add.s              edx, eax                                      // 0x007de5a5    03d0
                         push               0x0                                           // 0x007de5a7    6a00
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x007de5a9    89542414
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x007de5ad    8b5634
                         push               0x01000000                                    // 0x007de5b0    6800000001
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de5b5    89442410
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x007de5b9    8b4630
                         push               0x0                                           // 0x007de5bc    6a00
                         push               edx                                           // 0x007de5be    52
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x007de5bf    8d542414
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x007de5c3    894c241c
                         mov                ecx, dword ptr [eax]                          // 0x007de5c7    8b08
                         push               edx                                           // 0x007de5c9    52
                         push               eax                                           // 0x007de5ca    50
                         call               dword ptr [ecx + 0x14]                        // 0x007de5cb    ff5114
                         {disp8} jmp        _jmp_addr_0x007de5e2                          // 0x007de5ce    eb12
_jmp_addr_0x007de5d0:    {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x007de5d0    8b4630
                         {disp32} mov       edx, dword ptr [esi + 0x00000084]             // 0x007de5d3    8b9684000000
                         push               edx                                           // 0x007de5d9    52
                         push               0x0                                           // 0x007de5da    6a00
                         mov                ecx, dword ptr [eax]                          // 0x007de5dc    8b08
                         push               eax                                           // 0x007de5de    50
                         call               dword ptr [ecx + 0x2c]                        // 0x007de5df    ff512c
_jmp_addr_0x007de5e2:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007de5e2    8b442418
                         test               eax, eax                                      // 0x007de5e6    85c0
                         {disp8} je         _jmp_addr_0x007de623                          // 0x007de5e8    7439
                         {disp8} mov        eax, dword ptr [esi + 0x64]                   // 0x007de5ea    8b4664
                         test               eax, eax                                      // 0x007de5ed    85c0
                         {disp8} jne        _jmp_addr_0x007de618                          // 0x007de5ef    7527
                         {disp8} mov        ecx, dword ptr [esi + 0x24]                   // 0x007de5f1    8b4e24
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x007de5f4    8b461c
                         {disp32} mov       edx, dword ptr [esi + 0x0000008c]             // 0x007de5f7    8b968c000000
                         {disp8} mov        dword ptr [esi + 0x1c], ecx                   // 0x007de5fd    894e1c
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x007de600    8b4e10
                         push               eax                                           // 0x007de603    50
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x007de604    894624
                         {disp8} mov        dword ptr [esi + 0x10], edx                   // 0x007de607    895610
                         {disp32} mov       dword ptr [esi + 0x0000008c], ecx             // 0x007de60a    898e8c000000
                         call               _jmp_addr_0x00fc1285                          // 0x007de610    e8702c7e00
                         add                esp, 0x04                                     // 0x007de615    83c404
_jmp_addr_0x007de618:    push               0x0                                           // 0x007de618    6a00
                         push               0x0                                           // 0x007de61a    6a00
                         mov.s              ecx, esi                                      // 0x007de61c    8bce
                         call               _jmp_addr_0x007de200                          // 0x007de61e    e8ddfbffff
_jmp_addr_0x007de623:    xor.s              eax, eax                                      // 0x007de623    33c0
                         pop                esi                                           // 0x007de625    5e
                         add                esp, 0x10                                     // 0x007de626    83c410
                         ret                0x0004                                        // 0x007de629    c20400
                         nop                                                              // 0x007de62c    90
                         nop                                                              // 0x007de62d    90
                         nop                                                              // 0x007de62e    90
                         nop                                                              // 0x007de62f    90
                         sub                esp, 0x20                                     // 0x007de630    83ec20
                         push               esi                                           // 0x007de633    56
                         push               edi                                           // 0x007de634    57
                         {disp8} mov        edi, dword ptr [esp + 0x2c]                   // 0x007de635    8b7c242c
                         mov.s              esi, ecx                                      // 0x007de639    8bf1
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x007de63b    8d442408
                         mov.s              ecx, edi                                      // 0x007de63f    8bcf
                         push               eax                                           // 0x007de641    50
                         call               _jmp_addr_0x007ded80                          // 0x007de642    e839070000
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x007de647    8b4c2430
                         {disp8} mov        edx, dword ptr [esi + 0x58]                   // 0x007de64b    8b5658
                         push               0x0                                           // 0x007de64e    6a00
                         push               0x01000000                                    // 0x007de650    6800000001
                         mov                eax, dword ptr [ecx]                          // 0x007de655    8b01
                         add.s              eax, edx                                      // 0x007de657    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007de659    8b542410
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x007de65d    89442420
                         sub.s              eax, edx                                      // 0x007de661    2bc2
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x007de663    8b542418
                         add.s              eax, edx                                      // 0x007de667    03c2
                         {disp8} mov        edx, dword ptr [esi + 0x5c]                   // 0x007de669    8b565c
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x007de66c    89442428
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x007de670    8b4104
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x007de673    8b4c241c
                         add.s              eax, edx                                      // 0x007de677    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x007de679    8b542414
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x007de67d    89442424
                         sub.s              eax, edx                                      // 0x007de681    2bc2
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x007de683    8d542410
                         add.s              eax, ecx                                      // 0x007de687    03c1
                         push               edx                                           // 0x007de689    52
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x007de68a    8b5634
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x007de68d    89442430
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x007de691    8b4630
                         push               edx                                           // 0x007de694    52
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x007de695    8d542428
                         mov                ecx, dword ptr [eax]                          // 0x007de699    8b08
                         push               edx                                           // 0x007de69b    52
                         push               eax                                           // 0x007de69c    50
                         call               dword ptr [ecx + 0x14]                        // 0x007de69d    ff5114
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x007de6a0    8b442434
                         test               eax, eax                                      // 0x007de6a4    85c0
                         {disp8} je         _jmp_addr_0x007de6b2                          // 0x007de6a6    740a
                         push               edi                                           // 0x007de6a8    57
                         push               0x0                                           // 0x007de6a9    6a00
                         mov.s              ecx, esi                                      // 0x007de6ab    8bce
                         call               _jmp_addr_0x007de200                          // 0x007de6ad    e84efbffff
_jmp_addr_0x007de6b2:    pop                edi                                           // 0x007de6b2    5f
                         xor.s              eax, eax                                      // 0x007de6b3    33c0
                         pop                esi                                           // 0x007de6b5    5e
                         add                esp, 0x20                                     // 0x007de6b6    83c420
                         ret                0x000c                                        // 0x007de6b9    c20c00
                         nop                                                              // 0x007de6bc    90
                         nop                                                              // 0x007de6bd    90
                         nop                                                              // 0x007de6be    90
                         nop                                                              // 0x007de6bf    90
                         xor.s              eax, eax                                      // 0x007de6c0    33c0
                         ret                0x000c                                        // 0x007de6c2    c20c00
                         nop                                                              // 0x007de6c5    90
                         nop                                                              // 0x007de6c6    90
                         nop                                                              // 0x007de6c7    90
                         nop                                                              // 0x007de6c8    90
                         nop                                                              // 0x007de6c9    90
                         nop                                                              // 0x007de6ca    90
                         nop                                                              // 0x007de6cb    90
                         nop                                                              // 0x007de6cc    90
                         nop                                                              // 0x007de6cd    90
                         nop                                                              // 0x007de6ce    90
                         nop                                                              // 0x007de6cf    90
_jmp_addr_0x007de6d0:    {disp32} mov       eax, dword ptr [data_bytes + 0x4c65d0]        // 0x007de6d0    a1d0c5e800
                         test               eax, eax                                      // 0x007de6d5    85c0
                         {disp8} je         _jmp_addr_0x007de6e0                          // 0x007de6d7    7407
                         push               0x0                                           // 0x007de6d9    6a00
                         call               eax                                           // 0x007de6db    ffd0
                         add                esp, 0x04                                     // 0x007de6dd    83c404
_jmp_addr_0x007de6e0:    call               _jmp_addr_0x0085db90                          // 0x007de6e0    e8abf40700
                         {disp32} mov       dword ptr [data_bytes + 0x4c65e0], 0x00000001 // 0x007de6e5    c705e0c5e80001000000
                         ret                                                              // 0x007de6ef    c3
_jmp_addr_0x007de6f0:    push               esi                                           // 0x007de6f0    56
                         mov.s              esi, ecx                                      // 0x007de6f1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x007de6f3    8b4630
                         push               eax                                           // 0x007de6f6    50
                         mov                ecx, dword ptr [eax]                          // 0x007de6f7    8b08
                         call               dword ptr [ecx + 0x6c]                        // 0x007de6f9    ff516c
                         {disp8} mov        esi, dword ptr [esi + 0x34]                   // 0x007de6fc    8b7634
                         push               esi                                           // 0x007de6ff    56
                         mov                edx, dword ptr [esi]                          // 0x007de700    8b16
                         call               dword ptr [edx + 0x6c]                        // 0x007de702    ff526c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50463c]        // 0x007de705    a13ca6ec00
                         push               eax                                           // 0x007de70a    50
                         mov                ecx, dword ptr [eax]                          // 0x007de70b    8b08
                         call               dword ptr [ecx + 0x6c]                        // 0x007de70d    ff516c
                         call               _jmp_addr_0x0085dd60                          // 0x007de710    e84bf60700
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4c65d0]        // 0x007de715    a1d0c5e800
                         xor.s              esi, esi                                      // 0x007de71a    33f6
                         cmp.s              eax, esi                                      // 0x007de71c    3bc6
                         {disp8} je         _jmp_addr_0x007de727                          // 0x007de71e    7407
                         push               0x1                                           // 0x007de720    6a01
                         call               eax                                           // 0x007de722    ffd0
                         add                esp, 0x04                                     // 0x007de724    83c404
_jmp_addr_0x007de727:    {disp32} mov       dword ptr [data_bytes + 0x4c65e0], esi        // 0x007de727    8935e0c5e800
                         pop                esi                                           // 0x007de72d    5e
                         ret                                                              // 0x007de72e    c3
                         nop                                                              // 0x007de72f    90
_jmp_addr_0x007de730:    push               ecx                                           // 0x007de730    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517450]        // 0x007de731    a150d4ed00
                         push               ebx                                           // 0x007de736    53
                         push               ebp                                           // 0x007de737    55
                         push               esi                                           // 0x007de738    56
                         test               eax, eax                                      // 0x007de739    85c0
                         push               edi                                           // 0x007de73b    57
                         mov.s              esi, ecx                                      // 0x007de73c    8bf1
                         {disp8} je         _jmp_addr_0x007de74a                          // 0x007de73e    740a
                         pop                edi                                           // 0x007de740    5f
                         pop                esi                                           // 0x007de741    5e
                         pop                ebp                                           // 0x007de742    5d
                         xor.s              eax, eax                                      // 0x007de743    33c0
                         pop                ebx                                           // 0x007de745    5b
                         pop                ecx                                           // 0x007de746    59
                         ret                0x0004                                        // 0x007de747    c20400
_jmp_addr_0x007de74a:    {disp32} mov       al, byte ptr [data_bytes + 0x4c65e4]          // 0x007de74a    a0e4c5e800
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x007de74f    c744241000000000
                         test               al, al                                        // 0x007de757    84c0
                         {disp32} jne       _jmp_addr_0x007de809                          // 0x007de759    0f85aa000000
                         {disp32} mov       ebx, dword ptr [__imp__EnterCriticalSection@4]// 0x007de75f    8b1d80918a00
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de765    685006e900
                         {disp32} mov       byte ptr [data_bytes + 0x4c65e4], 0x01        // 0x007de76a    c605e4c5e80001
                         call               ebx                                           // 0x007de771    ffd3
                         {disp32} mov       ebp, dword ptr [__imp__LeaveCriticalSection@4]// 0x007de773    8b2d84918a00
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de779    685006e900
                         call               ebp                                           // 0x007de77e    ffd5
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007de780    8b442418
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x007de784    8b4e64
                         {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x007de787    8b7e04
                         cmp.s              eax, ecx                                      // 0x007de78a    3bc1
                         {disp8} jne        _jmp_addr_0x007de798                          // 0x007de78c    750a
                         pop                edi                                           // 0x007de78e    5f
                         pop                esi                                           // 0x007de78f    5e
                         pop                ebp                                           // 0x007de790    5d
                         xor.s              eax, eax                                      // 0x007de791    33c0
                         pop                ebx                                           // 0x007de793    5b
                         pop                ecx                                           // 0x007de794    59
                         ret                0x0004                                        // 0x007de795    c20400
_jmp_addr_0x007de798:    call               _jmp_addr_0x007e69b0                          // 0x007de798    e813820000
                         {disp8} mov        edx, dword ptr [esi + 0x64]                   // 0x007de79d    8b5664
                         xor.s              ecx, ecx                                      // 0x007de7a0    33c9
                         test               edx, edx                                      // 0x007de7a2    85d2
                         sete               cl                                            // 0x007de7a4    0f94c1
                         cmp                edi, 0x01                                     // 0x007de7a7    83ff01
                         {disp8} mov        dword ptr [esi + 0x64], ecx                   // 0x007de7aa    894e64
                         {disp8} jne        _jmp_addr_0x007de7d0                          // 0x007de7ad    7521
                         {disp8} mov        dl, byte ptr [esi + 0x14]                     // 0x007de7af    8a5614
                         {disp8} mov        ax, word ptr [esi + 0x0a]                     // 0x007de7b2    668b460a
                         {disp8} mov        cx, word ptr [esi + 0x08]                     // 0x007de7b6    668b4e08
                         {disp8} mov        byte ptr [esp + 0x10], dl                     // 0x007de7ba    88542410
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007de7be    8b542410
                         push               edx                                           // 0x007de7c2    52
                         push               eax                                           // 0x007de7c3    50
                         push               ecx                                           // 0x007de7c4    51
                         mov.s              ecx, esi                                      // 0x007de7c5    8bce
                         call               _jmp_addr_0x007ddcb0                          // 0x007de7c7    e8e4f4ffff
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x007de7cc    89442410
_jmp_addr_0x007de7d0:    push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de7d0    685006e900
                         call               ebx                                           // 0x007de7d5    ffd3
                         push               0x1                                           // 0x007de7d7    6a01
                         call               _jmp_addr_0x007e6960                          // 0x007de7d9    e882810000
                         add                esp, 0x04                                     // 0x007de7de    83c404
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de7e1    685006e900
                         call               ebp                                           // 0x007de7e6    ffd5
                         mov.s              ecx, esi                                      // 0x007de7e8    8bce
                         call               _jmp_addr_0x007de820                          // 0x007de7ea    e831000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4c65cc]        // 0x007de7ef    a1ccc5e800
                         test               eax, eax                                      // 0x007de7f4    85c0
                         {disp8} je         _jmp_addr_0x007de802                          // 0x007de7f6    740a
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x007de7f8    8b4c2418
                         push               ecx                                           // 0x007de7fc    51
                         call               eax                                           // 0x007de7fd    ffd0
                         add                esp, 0x04                                     // 0x007de7ff    83c404
_jmp_addr_0x007de802:    {disp32} mov       byte ptr [data_bytes + 0x4c65e4], 0x00        // 0x007de802    c605e4c5e80000
_jmp_addr_0x007de809:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007de809    8b442410
                         pop                edi                                           // 0x007de80d    5f
                         pop                esi                                           // 0x007de80e    5e
                         pop                ebp                                           // 0x007de80f    5d
                         pop                ebx                                           // 0x007de810    5b
                         pop                ecx                                           // 0x007de811    59
                         ret                0x0004                                        // 0x007de812    c20400
                         nop                                                              // 0x007de815    90
                         nop                                                              // 0x007de816    90
                         nop                                                              // 0x007de817    90
                         nop                                                              // 0x007de818    90
                         nop                                                              // 0x007de819    90
                         nop                                                              // 0x007de81a    90
                         nop                                                              // 0x007de81b    90
                         nop                                                              // 0x007de81c    90
                         nop                                                              // 0x007de81d    90
                         nop                                                              // 0x007de81e    90
                         nop                                                              // 0x007de81f    90
_jmp_addr_0x007de820:    sub                esp, 0x08                                     // 0x007de820    83ec08
                         push               esi                                           // 0x007de823    56
                         mov.s              esi, ecx                                      // 0x007de824    8bf1
                         xor.s              eax, eax                                      // 0x007de826    33c0
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                   // 0x007de828    8b4e64
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x007de82b    89442408
                         cmp.s              ecx, eax                                      // 0x007de82f    3bc8
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x007de831    89442404
                         {disp8} je         _jmp_addr_0x007de88a                          // 0x007de835    7453
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x007de837    8b4e28
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x007de83a    8d442404
                         push               eax                                           // 0x007de83e    50
                         push               ecx                                           // 0x007de83f    51
                         call               dword ptr [__imp__ClientToScreen@4]           // 0x007de840    ff1538988a00
                         test               eax, eax                                      // 0x007de846    85c0
                         {disp8} je         _jmp_addr_0x007de880                          // 0x007de848    7436
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007de84a    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x007de84e    8b4c2408
                         movsx              edx, ax                                       // 0x007de852    0fbfd0
                         {disp8} mov        dword ptr [esi + 0x58], edx                   // 0x007de855    895658
                         movsx              edx, cx                                       // 0x007de858    0fbfd1
                         {disp8} mov        dword ptr [esi + 0x5c], edx                   // 0x007de85b    89565c
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x007de85e    8b5610
                         imul               edx, ecx                                      // 0x007de861    0fafd1
                         add.s              edx, eax                                      // 0x007de864    03d0
                         xor.s              eax, eax                                      // 0x007de866    33c0
                         {disp8} mov        al, byte ptr [esi + 0x14]                     // 0x007de868    8a4614
                         imul               edx, eax                                      // 0x007de86b    0fafd0
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x007de86e    8b461c
                         shr                edx, 3                                        // 0x007de871    c1ea03
                         add.s              edx, eax                                      // 0x007de874    03d0
                         xor.s              eax, eax                                      // 0x007de876    33c0
                         {disp8} mov        dword ptr [esi + 0x20], edx                   // 0x007de878    895620
                         pop                esi                                           // 0x007de87b    5e
                         add                esp, 0x08                                     // 0x007de87c    83c408
                         ret                                                              // 0x007de87f    c3
_jmp_addr_0x007de880:    mov                eax, 0x00000002                               // 0x007de880    b802000000
                         pop                esi                                           // 0x007de885    5e
                         add                esp, 0x08                                     // 0x007de886    83c408
                         ret                                                              // 0x007de889    c3
_jmp_addr_0x007de88a:    {disp8} mov        dword ptr [esi + 0x58], eax                   // 0x007de88a    894658
                         {disp8} mov        dword ptr [esi + 0x5c], eax                   // 0x007de88d    89465c
                         xor.s              eax, eax                                      // 0x007de890    33c0
                         pop                esi                                           // 0x007de892    5e
                         add                esp, 0x08                                     // 0x007de893    83c408
                         ret                                                              // 0x007de896    c3
                         nop                                                              // 0x007de897    90
                         nop                                                              // 0x007de898    90
                         nop                                                              // 0x007de899    90
                         nop                                                              // 0x007de89a    90
                         nop                                                              // 0x007de89b    90
                         nop                                                              // 0x007de89c    90
                         nop                                                              // 0x007de89d    90
                         nop                                                              // 0x007de89e    90
                         nop                                                              // 0x007de89f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007de8a0    8b442408
                         sub                eax, 0x00000110                               // 0x007de8a4    2d10010000
                         {disp8} je         _jmp_addr_0x007de8c8                          // 0x007de8a9    741d
                         dec                eax                                           // 0x007de8ab    48
                         {disp8} jne        _jmp_addr_0x007de8c3                          // 0x007de8ac    7515
                         cmp                word ptr [esp + 0x0c], 0x01                   // 0x007de8ae    66837c240c01
                         {disp8} jne        _jmp_addr_0x007de8c3                          // 0x007de8b4    750d
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007de8b6    8b442404
                         push               0x1                                           // 0x007de8ba    6a01
                         push               eax                                           // 0x007de8bc    50
                         call               dword ptr [__imp__EndDialog@4]                // 0x007de8bd    ff1528988a00
_jmp_addr_0x007de8c3:    xor.s              eax, eax                                      // 0x007de8c3    33c0
                         ret                0x0010                                        // 0x007de8c5    c21000
_jmp_addr_0x007de8c8:    mov                eax, 0x00000001                               // 0x007de8c8    b801000000
                         ret                0x0010                                        // 0x007de8cd    c21000
_jmp_addr_0x007de8d0:    push               ecx                                           // 0x007de8d0    51
                         push               esi                                           // 0x007de8d1    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4c60ac]        // 0x007de8d2    8b35acc0e800
                         test               esi, esi                                      // 0x007de8d8    85f6
                         {disp8} je         _jmp_addr_0x007de8f0                          // 0x007de8da    7414
                         cmp                esi, 0x00008002                               // 0x007de8dc    81fe02800000
                         {disp8} jne        _jmp_addr_0x007de8f4                          // 0x007de8e2    7510
                         mov                ecx, 0x00e85050                               // 0x007de8e4    b95050e800
                         call               _jmp_addr_0x007de6d0                          // 0x007de8e9    e8e2fdffff
                         {disp8} jmp        _jmp_addr_0x007de8f4                          // 0x007de8ee    eb04
_jmp_addr_0x007de8f0:    {disp8} mov        esi, dword ptr [esp + 0x04]                   // 0x007de8f0    8b742404
_jmp_addr_0x007de8f4:    {disp32} mov       eax, dword ptr [data_bytes + 0x4c60b4]        // 0x007de8f4    a1b4c0e800
                         {disp32} mov       dword ptr [data_bytes + 0x4c60ac], esi        // 0x007de8f9    8935acc0e800
                         test               eax, eax                                      // 0x007de8ff    85c0
                         {disp8} je         _jmp_addr_0x007de914                          // 0x007de901    7411
                         test               esi, esi                                      // 0x007de903    85f6
                         {disp8} je         _jmp_addr_0x007de914                          // 0x007de905    740d
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c60b8]        // 0x007de907    8b0db8c0e800
                         push               esi                                           // 0x007de90d    56
                         push               ecx                                           // 0x007de90e    51
                         call               eax                                           // 0x007de90f    ffd0
                         add                esp, 0x08                                     // 0x007de911    83c408
_jmp_addr_0x007de914:    {disp32} mov       dword ptr [data_bytes + 0x4c60ac], 0x00000000 // 0x007de914    c705acc0e80000000000
                         pop                esi                                           // 0x007de91e    5e
                         pop                ecx                                           // 0x007de91f    59
                         ret                                                              // 0x007de920    c3
                         nop                                                              // 0x007de921    90
                         nop                                                              // 0x007de922    90
                         nop                                                              // 0x007de923    90
                         nop                                                              // 0x007de924    90
                         nop                                                              // 0x007de925    90
                         nop                                                              // 0x007de926    90
                         nop                                                              // 0x007de927    90
                         nop                                                              // 0x007de928    90
                         nop                                                              // 0x007de929    90
                         nop                                                              // 0x007de92a    90
                         nop                                                              // 0x007de92b    90
                         nop                                                              // 0x007de92c    90
                         nop                                                              // 0x007de92d    90
                         nop                                                              // 0x007de92e    90
                         nop                                                              // 0x007de92f    90
                         push               -0x1                                          // 0x007de930    6aff
                         push               0x008a79cb                                    // 0x007de932    68cb798a00
                         {disp32} mov       eax, fs:[0x0]                                 // 0x007de937    64a100000000
                         push               eax                                           // 0x007de93d    50
                         {disp32} mov       fs:[0x0], esp                                 // 0x007de93e    64892500000000
                         sub                esp, 0x0000025c                               // 0x007de945    81ec5c020000
                         push               ebx                                           // 0x007de94b    53
                         push               esi                                           // 0x007de94c    56
                         mov.s              esi, ecx                                      // 0x007de94d    8bf1
                         push               edi                                           // 0x007de94f    57
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x007de950    8d4c240c
                         call               _jmp_addr_0x008a5440                          // 0x007de954    e8e76a0c00
                         push               0x0                                           // 0x007de959    6a00
                         push               0x00c31604                                    // 0x007de95b    680416c300
                         {disp32} mov       dword ptr [esp + 0x00000278], 0x00000000      // 0x007de960    c784247802000000000000
                         mov                edi, 0x00000001                               // 0x007de96b    bf01000000
                         call               dword ptr [__imp__CreateDirectoryA@8]         // 0x007de970    ff1568918a00
                         {disp32} lea       eax, dword ptr [esp + 0x00000128]             // 0x007de976    8d842428010000
                         push               eax                                           // 0x007de97d    50
                         push               0x00c315ec                                    // 0x007de97e    68ec15c300
                         call               dword ptr [__imp__FindFirstFileA@4]           // 0x007de983    ff1594918a00
                         mov.s              ebx, eax                                      // 0x007de989    8bd8
                         cmp                ebx, -0x01                                    // 0x007de98b    83fbff
                         {disp8} je         _jmp_addr_0x007de9bc                          // 0x007de98e    742c
                         {disp32} lea       ecx, dword ptr [esp + 0x00000128]             // 0x007de990    8d8c2428010000
                         push               ebp                                           // 0x007de997    55
                         {disp32} mov       ebp, dword ptr [__imp__FindNextFileA@4]       // 0x007de998    8b2d98918a00
                         push               ecx                                           // 0x007de99e    51
                         push               ebx                                           // 0x007de99f    53
                         mov                edi, 0x00000002                               // 0x007de9a0    bf02000000
                         call               ebp                                           // 0x007de9a5    ffd5
                         test               eax, eax                                      // 0x007de9a7    85c0
                         {disp8} je         _jmp_addr_0x007de9bb                          // 0x007de9a9    7410
_jmp_addr_0x007de9ab:    {disp32} lea       edx, dword ptr [esp + 0x0000012c]             // 0x007de9ab    8d94242c010000
                         inc                edi                                           // 0x007de9b2    47
                         push               edx                                           // 0x007de9b3    52
                         push               ebx                                           // 0x007de9b4    53
                         call               ebp                                           // 0x007de9b5    ffd5
                         test               eax, eax                                      // 0x007de9b7    85c0
                         {disp8} jne        _jmp_addr_0x007de9ab                          // 0x007de9b9    75f0
_jmp_addr_0x007de9bb:    pop                ebp                                           // 0x007de9bb    5d
_jmp_addr_0x007de9bc:    push               edi                                           // 0x007de9bc    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x007de9bd    8d442410
                         push               0x00c315c8                                    // 0x007de9c1    68c815c300
                         push               eax                                           // 0x007de9c6    50
                         call               _sprintf                                      // 0x007de9c7    e8066efeff
                         {disp8} mov        ax, word ptr [esi + 0x08]                     // 0x007de9cc    668b4608
                         {disp32} mov       edi, dword ptr [__imp__EnterCriticalSection@4]// 0x007de9d0    8b3d80918a00
                         and                eax, 0x0000ffff                               // 0x007de9d6    25ffff0000
                         add                esp, 0x0c                                     // 0x007de9db    83c40c
                         {disp32} mov       dword ptr [esp + 0x00000110], eax             // 0x007de9de    89842410010000
                         {disp8} mov        ax, word ptr [esi + 0x0a]                     // 0x007de9e5    668b460a
                         and                eax, 0x0000ffff                               // 0x007de9e9    25ffff0000
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007de9ee    685006e900
                         {disp32} mov       dword ptr [esp + 0x00000118], eax             // 0x007de9f3    89842418010000
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x007de9fa    8b4668
                         {disp32} mov       word ptr [esp + 0x00000124], ax               // 0x007de9fd    6689842424010000
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x007dea05    8b466c
                         {disp32} mov       word ptr [esp + 0x00000126], ax               // 0x007dea08    6689842426010000
                         {disp8} mov        eax, dword ptr [esi + 0x70]                   // 0x007dea10    8b4670
                         {disp32} mov       word ptr [esp + 0x00000128], ax               // 0x007dea13    6689842428010000
                         {disp32} mov       eax, dword ptr [esi + 0x0000008c]             // 0x007dea1b    8b868c000000
                         {disp32} mov       word ptr [esp + 0x0000011c], 0x0018           // 0x007dea21    66c784241c0100001800
                         {disp32} mov       word ptr [esp + 0x0000012a], 0x0000           // 0x007dea2b    66c784242a0100000000
                         {disp32} mov       dword ptr [esp + 0x00000120], eax             // 0x007dea35    89842420010000
                         call               edi                                           // 0x007dea3c    ffd7
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007dea3e    685006e900
                         call               edi                                           // 0x007dea43    ffd7
                         {disp32} mov       edi, dword ptr [__imp__LeaveCriticalSection@4]// 0x007dea45    8b3d84918a00
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007dea4b    685006e900
                         {disp32} mov       dword ptr [data_bytes + 0x4bf20c], 0x00000001 // 0x007dea50    c7050c52e80001000000
                         call               edi                                           // 0x007dea5a    ffd7
                         push               0x1                                           // 0x007dea5c    6a01
                         push               0x0                                           // 0x007dea5e    6a00
                         mov                ecx, 0x00e85204                               // 0x007dea60    b90452e800
                         call               @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16                          // 0x007dea65    e8566d0000
                         push               0x00e90650 /* _lpCriticalSection_00e90650 */  // 0x007dea6a    685006e900
                         call               edi                                           // 0x007dea6f    ffd7
                         {disp8} mov        esi, dword ptr [esi + 0x24]                   // 0x007dea71    8b7624
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x007dea74    8d4c240c
                         push               esi                                           // 0x007dea78    56
                         call               _jmp_addr_0x008a5590                          // 0x007dea79    e8126b0c00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x007dea7e    8d4c240c
                         mov.s              esi, eax                                      // 0x007dea82    8bf0
                         {disp32} mov       dword ptr [esp + 0x00000270], 0xffffffff      // 0x007dea84    c7842470020000ffffffff
                         call               _jmp_addr_0x008a5480                          // 0x007dea8f    e8ec690c00
                         {disp32} mov       ecx, dword ptr [esp + 0x00000268]             // 0x007dea94    8b8c2468020000
                         mov.s              eax, esi                                      // 0x007dea9b    8bc6
                         pop                edi                                           // 0x007dea9d    5f
                         pop                esi                                           // 0x007dea9e    5e
                         pop                ebx                                           // 0x007dea9f    5b
                         {disp32} mov       fs:[0x0], ecx                                 // 0x007deaa0    64890d00000000
                         add                esp, 0x00000268                               // 0x007deaa7    81c468020000
                         ret                                                              // 0x007deaad    c3
                         nop                                                              // 0x007deaae    90
                         nop                                                              // 0x007deaaf    90
_jmp_addr_0x007deab0:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x007deab0    8b542404
                         push               esi                                           // 0x007deab4    56
                         mov                esi, dword ptr [ecx]                          // 0x007deab5    8b31
                         mov                eax, dword ptr [edx]                          // 0x007deab7    8b02
                         cmp.s              eax, esi                                      // 0x007deab9    3bc6
                         {disp8} jl         _jmp_addr_0x007deada                          // 0x007deabb    7c1d
                         cmp                eax, dword ptr [ecx + 0x08]                   // 0x007deabd    3b4108
                         {disp8} jg         _jmp_addr_0x007deada                          // 0x007deac0    7f18
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x007deac2    8b4204
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x007deac5    8b5104
                         cmp.s              eax, edx                                      // 0x007deac8    3bc2
                         {disp8} jl         _jmp_addr_0x007deada                          // 0x007deaca    7c0e
                         cmp                eax, dword ptr [ecx + 0x0c]                   // 0x007deacc    3b410c
                         {disp8} jg         _jmp_addr_0x007deada                          // 0x007deacf    7f09
                         mov                eax, 0x00000001                               // 0x007dead1    b801000000
                         pop                esi                                           // 0x007dead6    5e
                         ret                0x0004                                        // 0x007dead7    c20400
_jmp_addr_0x007deada:    xor.s              eax, eax                                      // 0x007deada    33c0
                         pop                esi                                           // 0x007deadc    5e
                         ret                0x0004                                        // 0x007deadd    c20400
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x007deae0    8b4108
                         push               ebx                                           // 0x007deae3    53
                         push               esi                                           // 0x007deae4    56
                         push               edi                                           // 0x007deae5    57
                         mov                edi, dword ptr [ecx]                          // 0x007deae6    8b39
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x007deae8    8b7104
                         sub.s              eax, edi                                      // 0x007deaeb    2bc7
                         {disp8} mov        ebx, dword ptr [ecx + 0x0c]                   // 0x007deaed    8b590c
                         inc                eax                                           // 0x007deaf0    40
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007deaf1    8b4c2410
                         cdq                                                              // 0x007deaf5    99
                         sub.s              eax, edx                                      // 0x007deaf6    2bc2
                         sar                eax, 1                                        // 0x007deaf8    d1f8
                         add.s              eax, edi                                      // 0x007deafa    03c7
                         pop                edi                                           // 0x007deafc    5f
                         mov                dword ptr [ecx], eax                          // 0x007deafd    8901
                         mov.s              eax, ebx                                      // 0x007deaff    8bc3
                         sub.s              eax, esi                                      // 0x007deb01    2bc6
                         inc                eax                                           // 0x007deb03    40
                         cdq                                                              // 0x007deb04    99
                         sub.s              eax, edx                                      // 0x007deb05    2bc2
                         sar                eax, 1                                        // 0x007deb07    d1f8
                         add.s              eax, esi                                      // 0x007deb09    03c6
                         pop                esi                                           // 0x007deb0b    5e
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x007deb0c    894104
                         pop                ebx                                           // 0x007deb0f    5b
                         ret                0x0004                                        // 0x007deb10    c20400
                         nop                                                              // 0x007deb13    90
                         nop                                                              // 0x007deb14    90
                         nop                                                              // 0x007deb15    90
                         nop                                                              // 0x007deb16    90
                         nop                                                              // 0x007deb17    90
                         nop                                                              // 0x007deb18    90
                         nop                                                              // 0x007deb19    90
                         nop                                                              // 0x007deb1a    90
                         nop                                                              // 0x007deb1b    90
                         nop                                                              // 0x007deb1c    90
                         nop                                                              // 0x007deb1d    90
                         nop                                                              // 0x007deb1e    90
                         nop                                                              // 0x007deb1f    90
_jmp_addr_0x007deb20:    mov                edx, dword ptr [ecx]                          // 0x007deb20    8b11
                         push               ebx                                           // 0x007deb22    53
                         push               ebp                                           // 0x007deb23    55
                         push               esi                                           // 0x007deb24    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x007deb25    8b742410
                         push               edi                                           // 0x007deb29    57
                         mov.s              ebp, edx                                      // 0x007deb2a    8bea
                         mov                eax, dword ptr [esi]                          // 0x007deb2c    8b06
                         cmp.s              edx, eax                                      // 0x007deb2e    3bd0
                         {disp8} jl         _jmp_addr_0x007deb34                          // 0x007deb30    7c02
                         mov.s              ebp, eax                                      // 0x007deb32    8be8
_jmp_addr_0x007deb34:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x007deb34    8b4608
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x007deb37    8b5108
                         cmp.s              edx, eax                                      // 0x007deb3a    3bd0
                         mov.s              ebx, edx                                      // 0x007deb3c    8bda
                         {disp8} jg         _jmp_addr_0x007deb42                          // 0x007deb3e    7f02
                         mov.s              ebx, eax                                      // 0x007deb40    8bd8
_jmp_addr_0x007deb42:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x007deb42    8b4604
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x007deb45    8b5104
                         cmp.s              edx, eax                                      // 0x007deb48    3bd0
                         mov.s              edi, edx                                      // 0x007deb4a    8bfa
                         {disp8} jl         _jmp_addr_0x007deb50                          // 0x007deb4c    7c02
                         mov.s              edi, eax                                      // 0x007deb4e    8bf8
_jmp_addr_0x007deb50:    {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x007deb50    8b460c
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x007deb53    8b510c
                         cmp.s              edx, eax                                      // 0x007deb56    3bd0
                         {disp8} jle        _jmp_addr_0x007deb5c                          // 0x007deb58    7e02
                         mov.s              eax, edx                                      // 0x007deb5a    8bc2
_jmp_addr_0x007deb5c:    {disp8} mov        dword ptr [ecx + 0x04], edi                   // 0x007deb5c    897904
                         pop                edi                                           // 0x007deb5f    5f
                         mov                dword ptr [ecx], ebp                          // 0x007deb60    8929
                         pop                esi                                           // 0x007deb62    5e
                         {disp8} mov        dword ptr [ecx + 0x08], ebx                   // 0x007deb63    895908
                         pop                ebp                                           // 0x007deb66    5d
                         {disp8} mov        dword ptr [ecx + 0x0c], eax                   // 0x007deb67    89410c
                         pop                ebx                                           // 0x007deb6a    5b
                         ret                0x0004                                        // 0x007deb6b    c20400
                         nop                                                              // 0x007deb6e    90
                         nop                                                              // 0x007deb6f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x007deb70    8b542404
                         fld                dword ptr [edx]                               // 0x007deb74    d902
                         fld                dword ptr [ecx]                               // 0x007deb76    d901
                         fcompp                                                           // 0x007deb78    ded9
                         fnstsw             ax                                            // 0x007deb7a    dfe0
                         test               ah, 0x41                                      // 0x007deb7c    f6c441
                         {disp8} je         _jmp_addr_0x007debb5                          // 0x007deb7f    7434
                         fld                dword ptr [edx]                               // 0x007deb81    d902
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x007deb83    d94108
                         fcompp                                                           // 0x007deb86    ded9
                         fnstsw             ax                                            // 0x007deb88    dfe0
                         test               ah, 0x01                                      // 0x007deb8a    f6c401
                         {disp8} jne        _jmp_addr_0x007debb5                          // 0x007deb8d    7526
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x007deb8f    d94204
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x007deb92    d94104
                         fcompp                                                           // 0x007deb95    ded9
                         fnstsw             ax                                            // 0x007deb97    dfe0
                         test               ah, 0x41                                      // 0x007deb99    f6c441
                         {disp8} je         _jmp_addr_0x007debb5                          // 0x007deb9c    7417
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x007deb9e    d94204
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x007deba1    d9410c
                         fcompp                                                           // 0x007deba4    ded9
                         fnstsw             ax                                            // 0x007deba6    dfe0
                         test               ah, 0x01                                      // 0x007deba8    f6c401
                         {disp8} jne        _jmp_addr_0x007debb5                          // 0x007debab    7508
                         mov                eax, 0x00000001                               // 0x007debad    b801000000
                         ret                0x0004                                        // 0x007debb2    c20400
_jmp_addr_0x007debb5:    xor.s              eax, eax                                      // 0x007debb5    33c0
                         ret                0x0004                                        // 0x007debb7    c20400
                         nop                                                              // 0x007debba    90
                         nop                                                              // 0x007debbb    90
                         nop                                                              // 0x007debbc    90
                         nop                                                              // 0x007debbd    90
                         nop                                                              // 0x007debbe    90
                         nop                                                              // 0x007debbf    90
_jmp_addr_0x007debc0:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x007debc0    d94104
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x007debc3    d9410c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x007debc6    d94104
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x007debc9    d94108
                         fsub               dword ptr [ecx]                               // 0x007debcc    d821
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007debce    8b442404
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x007debd2    d80590a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x007debd8    d80db4a38a00
                         fadd               dword ptr [ecx]                               // 0x007debde    d801
                         fstp               dword ptr [eax]                               // 0x007debe0    d918
                         fxch               st(1)                                         // 0x007debe2    d9c9
                         fsub               st, st(1)                                     // 0x007debe4    d8e1
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x007debe6    d80590a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x007debec    d80db4a38a00
                         fadd               st, st(2)                                     // 0x007debf2    d8c2
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x007debf4    d95804
                         fstp               st(0)                                         // 0x007debf7    ddd8
                         fstp               st(0)                                         // 0x007debf9    ddd8
                         ret                0x0004                                        // 0x007debfb    c20400
                         nop                                                              // 0x007debfe    90
                         nop                                                              // 0x007debff    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x007dec00    8b542404
                         fld                dword ptr [ecx]                               // 0x007dec04    d901
                         fld                dword ptr [edx]                               // 0x007dec06    d902
                         fcompp                                                           // 0x007dec08    ded9
                         fnstsw             ax                                            // 0x007dec0a    dfe0
                         test               ah, 0x41                                      // 0x007dec0c    f6c441
                         {disp8} jne        _jmp_addr_0x007dec15                          // 0x007dec0f    7504
                         fld                dword ptr [ecx]                               // 0x007dec11    d901
                         {disp8} jmp        _jmp_addr_0x007dec17                          // 0x007dec13    eb02
_jmp_addr_0x007dec15:    fld                dword ptr [edx]                               // 0x007dec15    d902
_jmp_addr_0x007dec17:    {disp8} fld        dword ptr [ecx + 0x08]                        // 0x007dec17    d94108
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x007dec1a    d94208
                         fcompp                                                           // 0x007dec1d    ded9
                         fnstsw             ax                                            // 0x007dec1f    dfe0
                         test               ah, 0x01                                      // 0x007dec21    f6c401
                         {disp8} je         _jmp_addr_0x007dec2b                          // 0x007dec24    7405
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x007dec26    d94108
                         {disp8} jmp        _jmp_addr_0x007dec2e                          // 0x007dec29    eb03
_jmp_addr_0x007dec2b:    {disp8} fld        dword ptr [edx + 0x08]                        // 0x007dec2b    d94208
_jmp_addr_0x007dec2e:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x007dec2e    d94104
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x007dec31    d94204
                         fcompp                                                           // 0x007dec34    ded9
                         fnstsw             ax                                            // 0x007dec36    dfe0
                         test               ah, 0x41                                      // 0x007dec38    f6c441
                         {disp8} jne        _jmp_addr_0x007dec42                          // 0x007dec3b    7505
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x007dec3d    d94104
                         {disp8} jmp        _jmp_addr_0x007dec45                          // 0x007dec40    eb03
_jmp_addr_0x007dec42:    {disp8} fld        dword ptr [edx + 0x04]                        // 0x007dec42    d94204
_jmp_addr_0x007dec45:    {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x007dec45    d9410c
                         {disp8} fld        dword ptr [edx + 0x0c]                        // 0x007dec48    d9420c
                         fcompp                                                           // 0x007dec4b    ded9
                         fnstsw             ax                                            // 0x007dec4d    dfe0
                         test               ah, 0x01                                      // 0x007dec4f    f6c401
                         {disp8} je         _jmp_addr_0x007dec67                          // 0x007dec52    7413
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x007dec54    d9410c
                         fxch               st(3)                                         // 0x007dec57    d9cb
                         fstp               dword ptr [ecx]                               // 0x007dec59    d919
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x007dec5b    d95904
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x007dec5e    d95908
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x007dec61    d9590c
                         ret                0x0004                                        // 0x007dec64    c20400
_jmp_addr_0x007dec67:    {disp8} fld        dword ptr [edx + 0x0c]                        // 0x007dec67    d9420c
                         fxch               st(3)                                         // 0x007dec6a    d9cb
                         fstp               dword ptr [ecx]                               // 0x007dec6c    d919
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x007dec6e    d95904
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x007dec71    d95908
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x007dec74    d9590c
                         ret                0x0004                                        // 0x007dec77    c20400
                         nop                                                              // 0x007dec7a    90
                         nop                                                              // 0x007dec7b    90
                         nop                                                              // 0x007dec7c    90
                         nop                                                              // 0x007dec7d    90
                         nop                                                              // 0x007dec7e    90
                         nop                                                              // 0x007dec7f    90
_jmp_addr_0x007dec80:    sub                esp, 0x10                                     // 0x007dec80    83ec10
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]        // 0x007dec83    a17c50e800
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x007dec88    8d542400
                         push               edx                                           // 0x007dec8c    52
                         push               0x009a5960                                    // 0x007dec8d    6860599a00
                         mov                ecx, dword ptr [eax]                          // 0x007dec92    8b08
                         push               eax                                           // 0x007dec94    50
                         call               dword ptr [ecx]                               // 0x007dec95    ff11
                         {disp8} mov        eax, dword ptr [esp + 0x00]                   // 0x007dec97    8b442400
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x007dec9b    8d542408
                         push               edx                                           // 0x007dec9f    52
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x007deca0    8d542410
                         push               edx                                           // 0x007deca4    52
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x007deca5    8d54240c
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00004000            // 0x007deca9    c744240c00400000
                         mov                ecx, dword ptr [eax]                          // 0x007decb1    8b08
                         push               edx                                           // 0x007decb3    52
                         push               eax                                           // 0x007decb4    50
                         call               dword ptr [ecx + 0x5c]                        // 0x007decb5    ff515c
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007decb8    8b442408
                         add                esp, 0x10                                     // 0x007decbc    83c410
                         ret                                                              // 0x007decbf    c3
                         {disp8} mov        eax, dword ptr [ecx + 0x2c]                   // 0x007decc0    8b412c
                         push               0x0                                           // 0x007decc3    6a00
                         push               0x1                                           // 0x007decc5    6a01
                         push               eax                                           // 0x007decc7    50
                         mov                ecx, dword ptr [eax]                          // 0x007decc8    8b08
                         call               dword ptr [ecx + 0x58]                        // 0x007decca    ff5158
                         neg                eax                                           // 0x007deccd    f7d8
                         sbb.s              eax, eax                                      // 0x007deccf    1bc0
                         and                eax, 0x02                                     // 0x007decd1    83e002
                         ret                                                              // 0x007decd4    c3
                         nop                                                              // 0x007decd5    90
                         nop                                                              // 0x007decd6    90
                         nop                                                              // 0x007decd7    90
                         nop                                                              // 0x007decd8    90
                         nop                                                              // 0x007decd9    90
                         nop                                                              // 0x007decda    90
                         nop                                                              // 0x007decdb    90
                         nop                                                              // 0x007decdc    90
                         nop                                                              // 0x007decdd    90
                         nop                                                              // 0x007decde    90
                         nop                                                              // 0x007decdf    90
_jmp_addr_0x007dece0:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x007dece0    a17850e800
                         push               eax                                           // 0x007dece5    50
                         call               dword ptr [__imp__IsWindow@4]                 // 0x007dece6    ff1574988a00
                         test               eax, eax                                      // 0x007decec    85c0
                         {disp8} je         _jmp_addr_0x007ded0a                          // 0x007decee    741a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]        // 0x007decf0    a17c50e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf078]        // 0x007decf5    8b0d7850e800
                         push               0x8                                           // 0x007decfb    6a08
                         push               eax                                           // 0x007decfd    50
                         push               0x00000401                                    // 0x007decfe    6801040000
                         push               ecx                                           // 0x007ded03    51
                         call               dword ptr [__imp__SendMessageA@4]             // 0x007ded04    ff15dc978a00
_jmp_addr_0x007ded0a:    ret                                                              // 0x007ded0a    c3
                         nop                                                              // 0x007ded0b    90
                         nop                                                              // 0x007ded0c    90
                         nop                                                              // 0x007ded0d    90
                         nop                                                              // 0x007ded0e    90
                         nop                                                              // 0x007ded0f    90
_jmp_addr_0x007ded10:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf078]        // 0x007ded10    a17850e800
                         push               eax                                           // 0x007ded15    50
                         call               dword ptr [__imp__IsWindow@4]                 // 0x007ded16    ff1574988a00
                         test               eax, eax                                      // 0x007ded1c    85c0
                         {disp8} je         _jmp_addr_0x007ded3a                          // 0x007ded1e    741a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]        // 0x007ded20    a17c50e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf078]        // 0x007ded25    8b0d7850e800
                         push               0x13                                          // 0x007ded2b    6a13
                         push               eax                                           // 0x007ded2d    50
                         push               0x00000401                                    // 0x007ded2e    6801040000
                         push               ecx                                           // 0x007ded33    51
                         call               dword ptr [__imp__SendMessageA@4]             // 0x007ded34    ff15dc978a00
_jmp_addr_0x007ded3a:    ret                                                              // 0x007ded3a    c3
                         nop                                                              // 0x007ded3b    90
                         nop                                                              // 0x007ded3c    90
                         nop                                                              // 0x007ded3d    90
                         nop                                                              // 0x007ded3e    90
                         nop                                                              // 0x007ded3f    90
_jmp_addr_0x007ded40:    ret                0x0004                                        // 0x007ded40    c20400
                         nop                                                              // 0x007ded43    90
                         nop                                                              // 0x007ded44    90
                         nop                                                              // 0x007ded45    90
                         nop                                                              // 0x007ded46    90
                         nop                                                              // 0x007ded47    90
                         nop                                                              // 0x007ded48    90
                         nop                                                              // 0x007ded49    90
                         nop                                                              // 0x007ded4a    90
                         nop                                                              // 0x007ded4b    90
                         nop                                                              // 0x007ded4c    90
                         nop                                                              // 0x007ded4d    90
                         nop                                                              // 0x007ded4e    90
                         nop                                                              // 0x007ded4f    90
_jmp_addr_0x007ded50:    {disp32} mov       eax, dword ptr [data_bytes + 0x4c60fc]        // 0x007ded50    a1fcc0e800
                         ret                                                              // 0x007ded55    c3
                         nop                                                              // 0x007ded56    90
                         nop                                                              // 0x007ded57    90
                         nop                                                              // 0x007ded58    90
                         nop                                                              // 0x007ded59    90
                         nop                                                              // 0x007ded5a    90
                         nop                                                              // 0x007ded5b    90
                         nop                                                              // 0x007ded5c    90
                         nop                                                              // 0x007ded5d    90
                         nop                                                              // 0x007ded5e    90
                         nop                                                              // 0x007ded5f    90
                         mov.s              eax, ecx                                      // 0x007ded60    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x007ded62    8b4c2404
                         mov                edx, dword ptr [ecx]                          // 0x007ded66    8b11
                         mov                dword ptr [eax], edx                          // 0x007ded68    8910
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x007ded6a    8b4904
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x007ded6d    894804
                         ret                0x0004                                        // 0x007ded70    c20400
                         nop                                                              // 0x007ded73    90
                         nop                                                              // 0x007ded74    90
                         nop                                                              // 0x007ded75    90
                         nop                                                              // 0x007ded76    90
                         nop                                                              // 0x007ded77    90
                         nop                                                              // 0x007ded78    90
                         nop                                                              // 0x007ded79    90
                         nop                                                              // 0x007ded7a    90
                         nop                                                              // 0x007ded7b    90
                         nop                                                              // 0x007ded7c    90
                         nop                                                              // 0x007ded7d    90
                         nop                                                              // 0x007ded7e    90
                         nop                                                              // 0x007ded7f    90
_jmp_addr_0x007ded80:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007ded80    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x007ded84    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x007ded87    895004
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x007ded8a    8b510c
                         inc                edx                                           // 0x007ded8d    42
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x007ded8e    89500c
                         mov                edx, dword ptr [ecx]                          // 0x007ded91    8b11
                         mov                dword ptr [eax], edx                          // 0x007ded93    8910
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x007ded95    8b4908
                         inc                ecx                                           // 0x007ded98    41
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x007ded99    894808
                         ret                0x0004                                        // 0x007ded9c    c20400
                         nop                                                              // 0x007ded9f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007deda0    8b442404
                         push               esi                                           // 0x007deda4    56
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x007deda5    8b5004
                         mov                esi, dword ptr [eax]                          // 0x007deda8    8b30
                         mov                dword ptr [ecx], esi                          // 0x007dedaa    8931
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x007dedac    895104
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x007dedaf    8b500c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x007dedb2    8b4008
                         dec                edx                                           // 0x007dedb5    4a
                         dec                eax                                           // 0x007dedb6    48
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x007dedb7    894108
                         {disp8} mov        dword ptr [ecx + 0x0c], edx                   // 0x007dedba    89510c
                         pop                esi                                           // 0x007dedbd    5e
                         ret                0x0004                                        // 0x007dedbe    c20400
                         nop                                                              // 0x007dedc1    90
                         nop                                                              // 0x007dedc2    90
                         nop                                                              // 0x007dedc3    90
                         nop                                                              // 0x007dedc4    90
                         nop                                                              // 0x007dedc5    90
                         nop                                                              // 0x007dedc6    90
                         nop                                                              // 0x007dedc7    90
                         nop                                                              // 0x007dedc8    90
                         nop                                                              // 0x007dedc9    90
                         nop                                                              // 0x007dedca    90
                         nop                                                              // 0x007dedcb    90
                         nop                                                              // 0x007dedcc    90
                         nop                                                              // 0x007dedcd    90
                         nop                                                              // 0x007dedce    90
                         nop                                                              // 0x007dedcf    90
_jmp_addr_0x007dedd0:    push               esi                                           // 0x007dedd0    56
                         call               _jmp_addr_0x007dee00                          // 0x007dedd1    e82a000000
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x007dedd6    8b742408
                         test               esi, esi                                      // 0x007dedda    85f6
                         {disp8} jne        _jmp_addr_0x007dede3                          // 0x007deddc    7505
                         mov                esi, 0x0008001e                               // 0x007dedde    be1e000800
_jmp_addr_0x007dede3:    push               0x0                                           // 0x007dede3    6a00
                         push               0x0                                           // 0x007dede5    6a00
                         call               __controlfp                                   // 0x007dede7    e887aefeff
                         not                esi                                           // 0x007dedec    f7d6
                         and.s              eax, esi                                      // 0x007dedee    23c6
                         push               0x0008001f                                    // 0x007dedf0    681f000800
                         push               eax                                           // 0x007dedf5    50
                         call               __controlfp                                   // 0x007dedf6    e878aefeff
                         add                esp, 0x10                                     // 0x007dedfb    83c410
                         pop                esi                                           // 0x007dedfe    5e
                         ret                                                              // 0x007dedff    c3
_jmp_addr_0x007dee00:    push               ebp                                           // 0x007dee00    55
                         mov.s              ebp, esp                                      // 0x007dee01    8bec
                         push               ecx                                           // 0x007dee03    51
                         wait                                                             // 0x007dee04    9b
                         fninit                                                           // 0x007dee05    dbe3
                         wait                                                             // 0x007dee07    9b
                         wait                                                             // 0x007dee08    9b
                         fnstcw             word ptr [ebp + -0x02]                        // 0x007dee09    d97dfe
                         wait                                                             // 0x007dee0c    9b
                         and                word ptr [ebp + -0x02], 0xfcff                // 0x007dee0d    668165fefffc
                         fldcw              word ptr [ebp + -0x02]                        // 0x007dee13    d96dfe
                         wait                                                             // 0x007dee16    9b
                         mov.s              esp, ebp                                      // 0x007dee17    8be5
                         pop                ebp                                           // 0x007dee19    5d
                         ret                                                              // 0x007dee1a    c3
                         nop                                                              // 0x007dee1b    90
                         nop                                                              // 0x007dee1c    90
                         nop                                                              // 0x007dee1d    90
                         nop                                                              // 0x007dee1e    90
                         nop                                                              // 0x007dee1f    90
_jmp_addr_0x007dee20:    push               esi                                           // 0x007dee20    56
                         call               _jmp_addr_0x007dee00                          // 0x007dee21    e8daffffff
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x007dee26    8b742408
                         test               esi, esi                                      // 0x007dee2a    85f6
                         {disp8} jne        _jmp_addr_0x007dee33                          // 0x007dee2c    7505
                         mov                esi, 0x0008001e                               // 0x007dee2e    be1e000800
_jmp_addr_0x007dee33:    push               0x0                                           // 0x007dee33    6a00
                         push               0x0                                           // 0x007dee35    6a00
                         call               __controlfp                                   // 0x007dee37    e837aefeff
                         or.s               eax, esi                                      // 0x007dee3c    0bc6
                         push               0x0008001f                                    // 0x007dee3e    681f000800
                         push               eax                                           // 0x007dee43    50
                         call               __controlfp                                   // 0x007dee44    e82aaefeff
                         add                esp, 0x10                                     // 0x007dee49    83c410
                         pop                esi                                           // 0x007dee4c    5e
                         ret                                                              // 0x007dee4d    c3
                         nop                                                              // 0x007dee4e    90
                         nop                                                              // 0x007dee4f    90
