.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern @FindControl__8SetupBoxFi@12
.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ?adjust@SetupThing@@SAMAAH0@Z
.extern ?adjusty@SetupThing@@SAHH@Z
.extern _jmp_addr_0x00447450
.extern _jmp_addr_0x0046eed0
.extern @GetDisplayText__10ControlKeyFPw@12
.extern _jmp_addr_0x0046f050
.extern @GetDisplayText__12ControlMouseFPw@12
.extern _jmp_addr_0x0046f7c0
.extern _jmp_addr_0x0046f890
.extern _jmp_addr_0x00470810
.extern _jmp_addr_0x004708a0
.extern @GetText__10ControlMapFUlPw@16
.extern _jmp_addr_0x004711d0
.extern _jmp_addr_0x004714f0
.extern _jmp_addr_0x00471620
.extern _jmp_addr_0x00471940
.extern _jmp_addr_0x00511d80
.extern ??0DialogBoxBase@@QAE@XZ
.extern _jmp_addr_0x005133c0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00513770
.extern _jmp_addr_0x0053f3e0
.extern _jmp_addr_0x0053f540
.extern ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern _jmp_addr_0x00550a80
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005c4800
.extern _jmp_addr_0x00602a80
.extern @__eq__9MapCoordsCFRC9MapCoords@12
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _wcslen
.extern _swprintf
.extern ??2@YAPAXI@Z
.extern _qsort
.extern ___nw__FUl
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern @GetStringWidth__13GatheringTextFPwif@20

.globl ??0DialogBoxKeyBinding@@QAE@XZ  
.globl _jmp_addr_0x00512820

.globl _globl_ct_0x005122b0
.globl _globl_ct_0x00512780
.globl _InitSubDialogs__13DialogBoxBaseFv
.globl _WantsKeyControl__13DialogBoxBaseFv
.globl _InitControls__19DialogBoxKeyBindingFv
.globl _WantsMouseControl__13DialogBoxBaseFv
.globl _CloseNotification__13DialogBoxBaseFv
.globl _CanESCOut__13DialogBoxBaseFv
.globl ?Init@DialogBoxKeyBinding@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@DialogBoxKeyBinding@@UAEXXZ

start_0x00512130_0x005132d0:
// Snippet: asm, [0x00512130, 0x00513290)
                         push              ebx                                                  // 0x00512130    53
                         push              ebp                                                  // 0x00512131    55
                         push              esi                                                  // 0x00512132    56
                         push              edi                                                  // 0x00512133    57
                         {disp8} mov       edi, dword ptr [esp + 0x14]                          // 0x00512134    8b7c2414
                         mov.s             esi, ecx                                             // 0x00512138    8bf1
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0051213a    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00205a40]                    // 0x00512140    8b81405a2000
                         and               edi, 0x0000ffff                                      // 0x00512146    81e7ffff0000
                         xor.s             edx, edx                                             // 0x0051214c    33d2
                         div               edi                                                  // 0x0051214e    f7f7
                         test              edx, edx                                             // 0x00512150    85d2
                         {disp32} je       _jmp_addr_0x00512211                                 // 0x00512152    0f84b9000000
                         push              0x0                                                  // 0x00512158    6a00
                         call              ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z         // 0x0051215a    e841e70300
                         mov.s             ebp, eax                                             // 0x0051215f    8be8
                         test              ebp, ebp                                             // 0x00512161    85ed
                         {disp8} je        _jmp_addr_0x005121e4                                 // 0x00512163    747f
_jmp_addr_0x00512165:    mov.s             ecx, ebp                                             // 0x00512165    8bcd
                         call              ?GetPlayerNumber@GPlayer@@QBEEXZ                     // 0x00512167    e824861300
                         and               dword ptr [esi + eax * 0x8 + 0x00000160], 0xf8000000 // 0x0051216c    81a4c660010000000000f8
                         {disp32} mov      cl, byte ptr [esi + eax * 0x8 + 0x00000164]          // 0x00512177    8a8cc664010000
                         mov.s             dl, cl                                               // 0x0051217e    8ad1
                         xor.s             dl, al                                               // 0x00512180    32d0
                         and               dl, 0x1f                                             // 0x00512182    80e21f
                         xor.s             dl, cl                                               // 0x00512185    32d1
                         {disp32} mov      byte ptr [esi + eax * 0x8 + 0x00000164], dl          // 0x00512187    8894c664010000
                         {disp32} mov      ecx, dword ptr [ebp + 0x00000a50]                    // 0x0051218e    8b8d500a0000
                         test              ecx, ecx                                             // 0x00512194    85c9
                         {disp8} je        _jmp_addr_0x005121d2                                 // 0x00512196    743a
_jmp_addr_0x00512198:    {disp32} mov      edi, dword ptr [ecx + 0x00000618]                    // 0x00512198    8bb918060000
                         {disp32} mov      edx, dword ptr [ecx + 0x0000061c]                    // 0x0051219e    8b911c060000
                         add.s             edx, edi                                             // 0x005121a4    03d7
                         {disp32} mov      edi, dword ptr [esi + eax * 0x8 + 0x00000160]        // 0x005121a6    8bbcc660010000
                         mov.s             ebx, edi                                             // 0x005121ad    8bdf
                         shl               ebx, 5                                               // 0x005121af    c1e305
                         sar               ebx, 5                                               // 0x005121b2    c1fb05
                         add.s             ebx, edx                                             // 0x005121b5    03da
                         xor.s             ebx, edi                                             // 0x005121b7    33df
                         and               ebx, 0x07ffffff                                      // 0x005121b9    81e3ffffff07
                         xor.s             ebx, edi                                             // 0x005121bf    33df
                         {disp32} mov      dword ptr [esi + eax * 0x8 + 0x00000160], ebx        // 0x005121c1    899cc660010000
                         {disp32} mov      ecx, dword ptr [ecx + 0x0000075c]                    // 0x005121c8    8b895c070000
                         test              ecx, ecx                                             // 0x005121ce    85c9
                         {disp8} jne       _jmp_addr_0x00512198                                 // 0x005121d0    75c6
_jmp_addr_0x005121d2:    {disp32} mov      ecx, dword ptr [_game]                               // 0x005121d2    8b0d5c19d000
                         push              ebp                                                  // 0x005121d8    55
                         call              ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z         // 0x005121d9    e8c2e60300
                         mov.s             ebp, eax                                             // 0x005121de    8be8
                         test              ebp, ebp                                             // 0x005121e0    85ed
                         {disp8} jne       _jmp_addr_0x00512165                                 // 0x005121e2    7581
_jmp_addr_0x005121e4:    {disp32} mov      ecx, dword ptr [_game]                               // 0x005121e4    8b0d5c19d000
                         push              0x0074d950                                           // 0x005121ea    6850d97400
                         push              0x8                                                  // 0x005121ef    6a08
                         call              _jmp_addr_0x00550a80                                 // 0x005121f1    e88ae80300
                         and               eax, 0x0000ffff                                      // 0x005121f6    25ffff0000
                         push              eax                                                  // 0x005121fb    50
                         {disp32} lea      eax, dword ptr [esi + 0x00000160]                    // 0x005121fc    8d8660010000
                         push              eax                                                  // 0x00512202    50
                         call              _qsort                                               // 0x00512203    e85c5c2b00
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x00512208    8b0d5c19d000
                         add               esp, 0x10                                            // 0x0051220e    83c410
_jmp_addr_0x00512211:    xor.s             ebx, ebx                                             // 0x00512211    33db
                         call              _jmp_addr_0x00550a80                                 // 0x00512213    e868e80300
                         test              eax, eax                                             // 0x00512218    85c0
                         {disp8} jbe       _jmp_addr_0x00512299                                 // 0x0051221a    767d
                         {disp32} lea      edi, dword ptr [esi + 0x00000164]                    // 0x0051221c    8dbe64010000
_jmp_addr_0x00512222:    mov               al, byte ptr [edi]                                   // 0x00512222    8a07
                         {disp32} mov      ebp, dword ptr [_game]                               // 0x00512224    8b2d5c19d000
                         {disp32} mov      dl, byte ptr [ebp + 0x00205a59]                      // 0x0051222a    8a95595a2000
                         mov.s             cl, al                                               // 0x00512230    8ac8
                         and               cl, 0x1f                                             // 0x00512232    80e11f
                         cmp.s             cl, dl                                               // 0x00512235    3aca
                         {disp8} jne       _jmp_addr_0x0051225c                                 // 0x00512237    7523
                         {disp8} mov       edx, dword ptr [edi + -0x04]                         // 0x00512239    8b57fc
                         shl               edx, 5                                               // 0x0051223c    c1e205
                         sar               edx, 5                                               // 0x0051223f    c1fa05
                         push              edx                                                  // 0x00512242    52
                         and               eax, 0x1f                                            // 0x00512243    83e01f
                         push              eax                                                  // 0x00512246    50
                         mov.s             ecx, ebp                                             // 0x00512247    8bcd
                         call              ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z                 // 0x00512249    e862e70300
                         add               eax, 0x000008e4                                      // 0x0051224e    05e4080000
                         push              eax                                                  // 0x00512253    50
                         push              ebx                                                  // 0x00512254    53
                         push              0x00be8bc4                                           // 0x00512255    68c48bbe00
                         {disp8} jmp       _jmp_addr_0x0051227d                                 // 0x0051225a    eb21
_jmp_addr_0x0051225c:    {disp8} mov       ecx, dword ptr [edi + -0x04]                         // 0x0051225c    8b4ffc
                         shl               ecx, 5                                               // 0x0051225f    c1e105
                         sar               ecx, 5                                               // 0x00512262    c1f905
                         push              ecx                                                  // 0x00512265    51
                         and               eax, 0x1f                                            // 0x00512266    83e01f
                         push              eax                                                  // 0x00512269    50
                         mov.s             ecx, ebp                                             // 0x0051226a    8bcd
                         call              ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z                 // 0x0051226c    e83fe70300
                         add               eax, 0x000008e4                                      // 0x00512271    05e4080000
                         push              eax                                                  // 0x00512276    50
                         push              ebx                                                  // 0x00512277    53
                         push              0x00be8bb8                                           // 0x00512278    68b88bbe00
_jmp_addr_0x0051227d:    push              esi                                                  // 0x0051227d    56
                         call              _jmp_addr_0x00511d80                                 // 0x0051227e    e8fdfaffff
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x00512283    8b0d5c19d000
                         add               esp, 0x14                                            // 0x00512289    83c414
                         inc               ebx                                                  // 0x0051228c    43
                         add               edi, 0x08                                            // 0x0051228d    83c708
                         call              _jmp_addr_0x00550a80                                 // 0x00512290    e8ebe70300
                         cmp.s             ebx, eax                                             // 0x00512295    3bd8
                         .byte             0x72, 0x89// {disp8} jb _jmp_addr_0x00512222         // 0x00512297    7289
_jmp_addr_0x00512299:    pop               edi                                                  // 0x00512299    5f
                         pop               esi                                                  // 0x0051229a    5e
                         pop               ebp                                                  // 0x0051229b    5d
                         pop               ebx                                                  // 0x0051229c    5b
                         ret               0x0004                                               // 0x0051229d    c20400
                         ret                                                                    // 0x005122a0    c3
                         nop                                                                    // 0x005122a1    90
                         nop                                                                    // 0x005122a2    90
                         nop                                                                    // 0x005122a3    90
                         nop                                                                    // 0x005122a4    90
                         nop                                                                    // 0x005122a5    90
                         nop                                                                    // 0x005122a6    90
                         nop                                                                    // 0x005122a7    90
                         nop                                                                    // 0x005122a8    90
                         nop                                                                    // 0x005122a9    90
                         nop                                                                    // 0x005122aa    90
                         nop                                                                    // 0x005122ab    90
                         nop                                                                    // 0x005122ac    90
                         nop                                                                    // 0x005122ad    90
                         nop                                                                    // 0x005122ae    90
                         nop                                                                    // 0x005122af    90
_globl_ct_0x005122b0:    call              _jmp_addr_0x005122c0                                 // 0x005122b0    e80b000000
                         {disp32} jmp      _jmp_addr_0x005122d0                                 // 0x005122b5    e916000000
                         nop                                                                    // 0x005122ba    90
                         nop                                                                    // 0x005122bb    90
                         nop                                                                    // 0x005122bc    90
                         nop                                                                    // 0x005122bd    90
                         nop                                                                    // 0x005122be    90
                         nop                                                                    // 0x005122bf    90
_jmp_addr_0x005122c0:    xor.s             eax, eax                                             // 0x005122c0    33c0
                         {disp32} mov      dword ptr [data_bytes + 0x2fff24], eax               // 0x005122c2    a3245fcc00
                         {disp32} mov      dword ptr [data_bytes + 0x2fff20], eax               // 0x005122c7    a3205fcc00
                         ret                                                                    // 0x005122cc    c3
                         nop                                                                    // 0x005122cd    90
                         nop                                                                    // 0x005122ce    90
                         nop                                                                    // 0x005122cf    90
_jmp_addr_0x005122d0:    push              0x005122e0                                           // 0x005122d0    68e0225100
                         call              _atexit                                              // 0x005122d5    e8b7342b00
                         pop               ecx                                                  // 0x005122da    59
                         ret                                                                    // 0x005122db    c3
                         nop                                                                    // 0x005122dc    90
                         nop                                                                    // 0x005122dd    90
                         nop                                                                    // 0x005122de    90
                         nop                                                                    // 0x005122df    90
                         {disp32} mov      cl, byte ptr [data_bytes + 0x2fff18]                 // 0x005122e0    8a0d185fcc00
                         mov               al, 0x01                                             // 0x005122e6    b001
                         test              al, cl                                               // 0x005122e8    84c8
                         {disp8} jne       _jmp_addr_0x005122f4                                 // 0x005122ea    7508
                         or.s              cl, al                                               // 0x005122ec    0ac8
                         {disp32} mov      byte ptr [data_bytes + 0x2fff18], cl                 // 0x005122ee    880d185fcc00
_jmp_addr_0x005122f4:    ret                                                                    // 0x005122f4    c3
                         nop                                                                    // 0x005122f5    90
                         nop                                                                    // 0x005122f6    90
                         nop                                                                    // 0x005122f7    90
                         nop                                                                    // 0x005122f8    90
                         nop                                                                    // 0x005122f9    90
                         nop                                                                    // 0x005122fa    90
                         nop                                                                    // 0x005122fb    90
                         nop                                                                    // 0x005122fc    90
                         nop                                                                    // 0x005122fd    90
                         nop                                                                    // 0x005122fe    90
                         nop                                                                    // 0x005122ff    90
                         push              esi                                                  // 0x00512300    56
                         xor.s             esi, esi                                             // 0x00512301    33f6
_jmp_addr_0x00512303:    {disp32} mov      ecx, dword ptr [data_bytes + 0x2fff20]               // 0x00512303    8b0d205fcc00
_jmp_addr_0x00512309:    test              esi, esi                                             // 0x00512309    85f6
                         {disp8} jne       _jmp_addr_0x00512316                                 // 0x0051230b    7509
                         test              ecx, ecx                                             // 0x0051230d    85c9
                         {disp8} je        _jmp_addr_0x00512353                                 // 0x0051230f    7442
                         {disp8} mov       esi, dword ptr [ecx + 0x04]                          // 0x00512311    8b7104
                         {disp8} jmp       _jmp_addr_0x00512330                                 // 0x00512314    eb1a
_jmp_addr_0x00512316:    mov.s             eax, ecx                                             // 0x00512316    8bc1
                         test              eax, eax                                             // 0x00512318    85c0
                         {disp8} je        _jmp_addr_0x00512353                                 // 0x0051231a    7437
_jmp_addr_0x0051231c:    cmp               dword ptr [eax + 0x04], esi                          // 0x0051231c    397004
                         mov               eax, dword ptr [eax]                                 // 0x0051231f    8b00
                         {disp8} je        _jmp_addr_0x00512329                                 // 0x00512321    7406
                         test              eax, eax                                             // 0x00512323    85c0
                         {disp8} je        _jmp_addr_0x00512353                                 // 0x00512325    742c
                         {disp8} jmp       _jmp_addr_0x0051231c                                 // 0x00512327    ebf3
_jmp_addr_0x00512329:    test              eax, eax                                             // 0x00512329    85c0
                         {disp8} je        _jmp_addr_0x00512353                                 // 0x0051232b    7426
                         {disp8} mov       esi, dword ptr [eax + 0x04]                          // 0x0051232d    8b7004
_jmp_addr_0x00512330:    test              esi, esi                                             // 0x00512330    85f6
                         {disp8} je        _jmp_addr_0x00512353                                 // 0x00512332    741f
                         xor.s             eax, eax                                             // 0x00512334    33c0
                         {disp8} mov       al, byte ptr [esi + 0x2c]                            // 0x00512336    8a462c
                         sub               eax, 0x00                                            // 0x00512339    83e800
                         {disp8} je        _jmp_addr_0x0051234a                                 // 0x0051233c    740c
                         dec               eax                                                  // 0x0051233e    48
                         {disp8} jne       _jmp_addr_0x00512309                                 // 0x0051233f    75c8
                         mov.s             ecx, esi                                             // 0x00512341    8bce
                         call              _jmp_addr_0x00512700                                 // 0x00512343    e8b8030000
                         {disp8} jmp       _jmp_addr_0x00512303                                 // 0x00512348    ebb9
_jmp_addr_0x0051234a:    mov.s             ecx, esi                                             // 0x0051234a    8bce
                         call              _jmp_addr_0x005126f0                                 // 0x0051234c    e89f030000
                         {disp8} jmp       _jmp_addr_0x00512303                                 // 0x00512351    ebb0
_jmp_addr_0x00512353:    pop               esi                                                  // 0x00512353    5e
                         ret                                                                    // 0x00512354    c3
                         nop                                                                    // 0x00512355    90
                         nop                                                                    // 0x00512356    90
                         nop                                                                    // 0x00512357    90
                         nop                                                                    // 0x00512358    90
                         nop                                                                    // 0x00512359    90
                         nop                                                                    // 0x0051235a    90
                         nop                                                                    // 0x0051235b    90
                         nop                                                                    // 0x0051235c    90
                         nop                                                                    // 0x0051235d    90
                         nop                                                                    // 0x0051235e    90
                         nop                                                                    // 0x0051235f    90
                         push              ebx                                                  // 0x00512360    53
                         push              ebp                                                  // 0x00512361    55
                         push              esi                                                  // 0x00512362    56
                         mov.s             esi, ecx                                             // 0x00512363    8bf1
                         xor.s             ebx, ebx                                             // 0x00512365    33db
                         push              edi                                                  // 0x00512367    57
                         {disp8} mov       edi, dword ptr [esp + 0x14]                          // 0x00512368    8b7c2414
                         mov               dword ptr [esi], ebx                                 // 0x0051236c    891e
                         {disp8} mov       dword ptr [esi + 0x04], ebx                          // 0x0051236e    895e04
                         {disp8} mov       dword ptr [esi + 0x08], ebx                          // 0x00512371    895e08
                         {disp8} mov       eax, dword ptr [edi + 0x08]                          // 0x00512374    8b4708
                         mov.s             ecx, edi                                             // 0x00512377    8bcf
                         {disp8} lea       ebp, dword ptr [esi + 0x10]                          // 0x00512379    8d6e10
                         {disp8} mov       dword ptr [esp + 0x14], eax                          // 0x0051237c    89442414
                         call              ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x00512380    e80b0d2f00
                         {disp8} fadd      dword ptr [esp + 0x14]                               // 0x00512385    d8442414
                         {disp8} lea       edx, dword ptr [esi + 0x1c]                          // 0x00512389    8d561c
                         mov.s             ecx, ebp                                             // 0x0051238c    8bcd
                         {disp8} fstp      dword ptr [ebp + 0x04]                               // 0x0051238e    d95d04
                         mov.s             eax, edx                                             // 0x00512391    8bc2
                         fild              dword ptr [edi]                                      // 0x00512393    db07
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]              // 0x00512395    d80da4a38a00
                         {disp8} fstp      dword ptr [ebp + 0x00]                               // 0x0051239b    d95d00
                         {disp8} fild      dword ptr [edi + 0x04]                               // 0x0051239e    db4704
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]              // 0x005123a1    d80da4a38a00
                         {disp8} fstp      dword ptr [ebp + 0x08]                               // 0x005123a7    d95d08
                         mov               edi, dword ptr [ecx]                                 // 0x005123aa    8b39
                         mov               dword ptr [eax], edi                                 // 0x005123ac    8938
                         {disp8} mov       edi, dword ptr [ecx + 0x04]                          // 0x005123ae    8b7904
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]                          // 0x005123b1    8b4908
                         {disp8} mov       dword ptr [eax + 0x04], edi                          // 0x005123b4    897804
                         {disp8} mov       dword ptr [eax + 0x08], ecx                          // 0x005123b7    894808
                         {disp8} fld       dword ptr [esi + 0x20]                               // 0x005123ba    d94620
                         {disp32} fadd     dword ptr [rdata_bytes + 0x1e658]                    // 0x005123bd    d80558768c00
                         {disp8} mov       byte ptr [esi + 0x2c], bl                            // 0x005123c3    885e2c
                         {disp8} fstp      dword ptr [esi + 0x20]                               // 0x005123c6    d95e20
                         {disp32} mov      al, byte ptr [data_bytes + 0x2fff28]                 // 0x005123c9    a0285fcc00
                         mov.s             cl, al                                               // 0x005123ce    8ac8
                         {disp8} mov       byte ptr [esi + 0x29], al                            // 0x005123d0    884629
                         {disp8} mov       byte ptr [esi + 0x28], cl                            // 0x005123d3    884e28
                         {disp8} mov       byte ptr [esi + 0x2b], -0x01                         // 0x005123d6    c6462bff
                         {disp8} mov       byte ptr [esi + 0x2a], bl                            // 0x005123da    885e2a
                         {disp32} mov      al, byte ptr [data_bytes + 0x2fff28]                 // 0x005123dd    a0285fcc00
                         {disp32} mov      edi, dword ptr [data_bytes + 0x2fff20]               // 0x005123e2    8b3d205fcc00
                         add               al, 0x10                                             // 0x005123e8    0410
                         {disp32} mov      byte ptr [data_bytes + 0x2fff28], al                 // 0x005123ea    a2285fcc00
                         xor.s             ecx, ecx                                             // 0x005123ef    33c9
_jmp_addr_0x005123f1:    cmp.s             ecx, ebx                                             // 0x005123f1    3bcb
                         {disp8} jne       _jmp_addr_0x00512402                                 // 0x005123f3    750d
                         cmp.s             edi, ebx                                             // 0x005123f5    3bfb
                         {disp32} je       _jmp_addr_0x0051247f                                 // 0x005123f7    0f8482000000
                         {disp8} mov       ecx, dword ptr [edi + 0x04]                          // 0x005123fd    8b4f04
                         {disp8} jmp       _jmp_addr_0x0051241c                                 // 0x00512400    eb1a
_jmp_addr_0x00512402:    mov.s             eax, edi                                             // 0x00512402    8bc7
                         cmp.s             eax, ebx                                             // 0x00512404    3bc3
                         {disp8} je        _jmp_addr_0x0051247f                                 // 0x00512406    7477
_jmp_addr_0x00512408:    cmp               dword ptr [eax + 0x04], ecx                          // 0x00512408    394804
                         mov               eax, dword ptr [eax]                                 // 0x0051240b    8b00
                         {disp8} je        _jmp_addr_0x00512415                                 // 0x0051240d    7406
                         cmp.s             eax, ebx                                             // 0x0051240f    3bc3
                         {disp8} je        _jmp_addr_0x0051247f                                 // 0x00512411    746c
                         {disp8} jmp       _jmp_addr_0x00512408                                 // 0x00512413    ebf3
_jmp_addr_0x00512415:    cmp.s             eax, ebx                                             // 0x00512415    3bc3
                         {disp8} je        _jmp_addr_0x0051247f                                 // 0x00512417    7466
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                          // 0x00512419    8b4804
_jmp_addr_0x0051241c:    cmp.s             ecx, ebx                                             // 0x0051241c    3bcb
                         {disp8} je        _jmp_addr_0x0051247f                                 // 0x0051241e    745f
                         {disp8} fld       dword ptr [ebp + 0x00]                               // 0x00512420    d94500
                         {disp8} fcomp     dword ptr [ecx + 0x10]                               // 0x00512423    d85910
                         fnstsw            ax                                                   // 0x00512426    dfe0
                         test              ah, 0x40                                             // 0x00512428    f6c440
                         {disp8} je        _jmp_addr_0x005123f1                                 // 0x0051242b    74c4
                         {disp8} fld       dword ptr [ebp + 0x04]                               // 0x0051242d    d94504
                         {disp8} fcomp     dword ptr [ecx + 0x14]                               // 0x00512430    d85914
                         fnstsw            ax                                                   // 0x00512433    dfe0
                         test              ah, 0x40                                             // 0x00512435    f6c440
                         {disp8} je        _jmp_addr_0x005123f1                                 // 0x00512438    74b7
                         {disp8} fld       dword ptr [ebp + 0x08]                               // 0x0051243a    d94508
                         {disp8} fcomp     dword ptr [ecx + 0x18]                               // 0x0051243d    d85918
                         fnstsw            ax                                                   // 0x00512440    dfe0
                         test              ah, 0x40                                             // 0x00512442    f6c440
                         {disp8} je        _jmp_addr_0x005123f1                                 // 0x00512445    74aa
                         fld               dword ptr [edx]                                      // 0x00512447    d902
                         {disp8} fcomp     dword ptr [ecx + 0x1c]                               // 0x00512449    d8591c
                         fnstsw            ax                                                   // 0x0051244c    dfe0
                         test              ah, 0x40                                             // 0x0051244e    f6c440
                         {disp8} je        _jmp_addr_0x005123f1                                 // 0x00512451    749e
                         {disp8} fld       dword ptr [edx + 0x04]                               // 0x00512453    d94204
                         {disp8} fcomp     dword ptr [ecx + 0x20]                               // 0x00512456    d85920
                         fnstsw            ax                                                   // 0x00512459    dfe0
                         test              ah, 0x40                                             // 0x0051245b    f6c440
                         {disp8} je        _jmp_addr_0x005123f1                                 // 0x0051245e    7491
                         {disp8} fld       dword ptr [edx + 0x08]                               // 0x00512460    d94208
                         {disp8} fcomp     dword ptr [ecx + 0x24]                               // 0x00512463    d85924
                         fnstsw            ax                                                   // 0x00512466    dfe0
                         test              ah, 0x40                                             // 0x00512468    f6c440
                         {disp8} je        _jmp_addr_0x005123f1                                 // 0x0051246b    7484
                         push              esi                                                  // 0x0051246d    56
                         call              ??3@YAXPAX@Z                                         // 0x0051246e    e825ca2900
                         add               esp, 0x04                                            // 0x00512473    83c404
                         pop               edi                                                  // 0x00512476    5f
                         mov.s             eax, esi                                             // 0x00512477    8bc6
                         pop               esi                                                  // 0x00512479    5e
                         pop               ebp                                                  // 0x0051247a    5d
                         pop               ebx                                                  // 0x0051247b    5b
                         ret               0x0004                                               // 0x0051247c    c20400
_jmp_addr_0x0051247f:    cmp.s             esi, ebx                                             // 0x0051247f    3bf3
                         {disp8} je        _jmp_addr_0x005124a7                                 // 0x00512481    7424
                         push              0x8                                                  // 0x00512483    6a08
                         call              ??2@YAPAXI@Z                                         // 0x00512485    e864402b00
                         add               esp, 0x04                                            // 0x0051248a    83c404
                         cmp.s             eax, ebx                                             // 0x0051248d    3bc3
                         {disp8} je        _jmp_addr_0x005124a7                                 // 0x0051248f    7416
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x2fff20]               // 0x00512491    8b0d205fcc00
                         {disp8} mov       dword ptr [eax + 0x04], esi                          // 0x00512497    897004
                         mov               dword ptr [eax], ecx                                 // 0x0051249a    8908
                         {disp32} mov      dword ptr [data_bytes + 0x2fff20], eax               // 0x0051249c    a3205fcc00
                         {disp32} inc      dword ptr [data_bytes + 0x2fff24]                    // 0x005124a1    ff05245fcc00
_jmp_addr_0x005124a7:    pop               edi                                                  // 0x005124a7    5f
                         mov.s             eax, esi                                             // 0x005124a8    8bc6
                         pop               esi                                                  // 0x005124aa    5e
                         pop               ebp                                                  // 0x005124ab    5d
                         pop               ebx                                                  // 0x005124ac    5b
                         ret               0x0004                                               // 0x005124ad    c20400
                         push              ebp                                                  // 0x005124b0    55
                         push              esi                                                  // 0x005124b1    56
                         mov.s             esi, ecx                                             // 0x005124b2    8bf1
                         push              edi                                                  // 0x005124b4    57
                         {disp8} mov       edi, dword ptr [esp + 0x10]                          // 0x005124b5    8b7c2410
                         mov               dword ptr [esi], 0x00000000                          // 0x005124b9    c70600000000
                         {disp8} mov       dword ptr [esi + 0x04], 0x00000000                   // 0x005124bf    c7460400000000
                         {disp8} mov       dword ptr [esi + 0x08], 0x00000000                   // 0x005124c6    c7460800000000
                         {disp8} mov       eax, dword ptr [edi + 0x08]                          // 0x005124cd    8b4708
                         mov.s             ecx, edi                                             // 0x005124d0    8bcf
                         {disp8} lea       ebp, dword ptr [esi + 0x10]                          // 0x005124d2    8d6e10
                         {disp8} mov       dword ptr [esp + 0x10], eax                          // 0x005124d5    89442410
                         call              ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x005124d9    e8b20b2f00
                         {disp8} fadd      dword ptr [esp + 0x10]                               // 0x005124de    d8442410
                         {disp8} lea       edx, dword ptr [esi + 0x1c]                          // 0x005124e2    8d561c
                         mov.s             ecx, ebp                                             // 0x005124e5    8bcd
                         {disp8} fstp      dword ptr [ebp + 0x04]                               // 0x005124e7    d95d04
                         mov.s             eax, edx                                             // 0x005124ea    8bc2
                         fild              dword ptr [edi]                                      // 0x005124ec    db07
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]              // 0x005124ee    d80da4a38a00
                         {disp8} fstp      dword ptr [ebp + 0x00]                               // 0x005124f4    d95d00
                         {disp8} fild      dword ptr [edi + 0x04]                               // 0x005124f7    db4704
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]              // 0x005124fa    d80da4a38a00
                         {disp8} fstp      dword ptr [ebp + 0x08]                               // 0x00512500    d95d08
                         mov               edi, dword ptr [ecx]                                 // 0x00512503    8b39
                         mov               dword ptr [eax], edi                                 // 0x00512505    8938
                         {disp8} mov       edi, dword ptr [ecx + 0x04]                          // 0x00512507    8b7904
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]                          // 0x0051250a    8b4908
                         {disp8} mov       dword ptr [eax + 0x04], edi                          // 0x0051250d    897804
                         {disp8} mov       dword ptr [eax + 0x08], ecx                          // 0x00512510    894808
                         {disp8} fld       dword ptr [esi + 0x20]                               // 0x00512513    d94620
                         {disp32} fadd     dword ptr [rdata_bytes + 0x1e658]                    // 0x00512516    d80558768c00
                         {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x0051251c    8b442414
                         {disp8} mov       byte ptr [esi + 0x2c], 0x00                          // 0x00512520    c6462c00
                         {disp8} fstp      dword ptr [esi + 0x20]                               // 0x00512524    d95e20
                         mov               ecx, dword ptr [eax]                                 // 0x00512527    8b08
                         {disp8} mov       dword ptr [esi + 0x28], ecx                          // 0x00512529    894e28
                         {disp32} mov      edi, dword ptr [data_bytes + 0x2fff20]               // 0x0051252c    8b3d205fcc00
                         xor.s             ecx, ecx                                             // 0x00512532    33c9
_jmp_addr_0x00512534:    test              ecx, ecx                                             // 0x00512534    85c9
                         {disp8} jne       _jmp_addr_0x00512545                                 // 0x00512536    750d
                         test              edi, edi                                             // 0x00512538    85ff
                         {disp32} je       _jmp_addr_0x005125c1                                 // 0x0051253a    0f8481000000
                         {disp8} mov       ecx, dword ptr [edi + 0x04]                          // 0x00512540    8b4f04
                         {disp8} jmp       _jmp_addr_0x0051255f                                 // 0x00512543    eb1a
_jmp_addr_0x00512545:    mov.s             eax, edi                                             // 0x00512545    8bc7
                         test              eax, eax                                             // 0x00512547    85c0
                         {disp8} je        _jmp_addr_0x005125c1                                 // 0x00512549    7476
_jmp_addr_0x0051254b:    cmp               dword ptr [eax + 0x04], ecx                          // 0x0051254b    394804
                         mov               eax, dword ptr [eax]                                 // 0x0051254e    8b00
                         {disp8} je        _jmp_addr_0x00512558                                 // 0x00512550    7406
                         test              eax, eax                                             // 0x00512552    85c0
                         {disp8} je        _jmp_addr_0x005125c1                                 // 0x00512554    746b
                         {disp8} jmp       _jmp_addr_0x0051254b                                 // 0x00512556    ebf3
_jmp_addr_0x00512558:    test              eax, eax                                             // 0x00512558    85c0
                         {disp8} je        _jmp_addr_0x005125c1                                 // 0x0051255a    7465
                         {disp8} mov       ecx, dword ptr [eax + 0x04]                          // 0x0051255c    8b4804
_jmp_addr_0x0051255f:    test              ecx, ecx                                             // 0x0051255f    85c9
                         {disp8} je        _jmp_addr_0x005125c1                                 // 0x00512561    745e
                         {disp8} fld       dword ptr [ebp + 0x00]                               // 0x00512563    d94500
                         {disp8} fcomp     dword ptr [ecx + 0x10]                               // 0x00512566    d85910
                         fnstsw            ax                                                   // 0x00512569    dfe0
                         test              ah, 0x40                                             // 0x0051256b    f6c440
                         {disp8} je        _jmp_addr_0x00512534                                 // 0x0051256e    74c4
                         {disp8} fld       dword ptr [ebp + 0x04]                               // 0x00512570    d94504
                         {disp8} fcomp     dword ptr [ecx + 0x14]                               // 0x00512573    d85914
                         fnstsw            ax                                                   // 0x00512576    dfe0
                         test              ah, 0x40                                             // 0x00512578    f6c440
                         {disp8} je        _jmp_addr_0x00512534                                 // 0x0051257b    74b7
                         {disp8} fld       dword ptr [ebp + 0x08]                               // 0x0051257d    d94508
                         {disp8} fcomp     dword ptr [ecx + 0x18]                               // 0x00512580    d85918
                         fnstsw            ax                                                   // 0x00512583    dfe0
                         test              ah, 0x40                                             // 0x00512585    f6c440
                         {disp8} je        _jmp_addr_0x00512534                                 // 0x00512588    74aa
                         fld               dword ptr [edx]                                      // 0x0051258a    d902
                         {disp8} fcomp     dword ptr [ecx + 0x1c]                               // 0x0051258c    d8591c
                         fnstsw            ax                                                   // 0x0051258f    dfe0
                         test              ah, 0x40                                             // 0x00512591    f6c440
                         {disp8} je        _jmp_addr_0x00512534                                 // 0x00512594    749e
                         {disp8} fld       dword ptr [edx + 0x04]                               // 0x00512596    d94204
                         {disp8} fcomp     dword ptr [ecx + 0x20]                               // 0x00512599    d85920
                         fnstsw            ax                                                   // 0x0051259c    dfe0
                         test              ah, 0x40                                             // 0x0051259e    f6c440
                         {disp8} je        _jmp_addr_0x00512534                                 // 0x005125a1    7491
                         {disp8} fld       dword ptr [edx + 0x08]                               // 0x005125a3    d94208
                         {disp8} fcomp     dword ptr [ecx + 0x24]                               // 0x005125a6    d85924
                         fnstsw            ax                                                   // 0x005125a9    dfe0
                         test              ah, 0x40                                             // 0x005125ab    f6c440
                         {disp8} je        _jmp_addr_0x00512534                                 // 0x005125ae    7484
                         push              esi                                                  // 0x005125b0    56
                         call              ??3@YAXPAX@Z                                         // 0x005125b1    e8e2c82900
                         add               esp, 0x04                                            // 0x005125b6    83c404
                         pop               edi                                                  // 0x005125b9    5f
                         mov.s             eax, esi                                             // 0x005125ba    8bc6
                         pop               esi                                                  // 0x005125bc    5e
                         pop               ebp                                                  // 0x005125bd    5d
                         ret               0x0008                                               // 0x005125be    c20800
_jmp_addr_0x005125c1:    test              esi, esi                                             // 0x005125c1    85f6
                         {disp8} je        _jmp_addr_0x005125e9                                 // 0x005125c3    7424
                         push              0x8                                                  // 0x005125c5    6a08
                         call              ??2@YAPAXI@Z                                         // 0x005125c7    e8223f2b00
                         add               esp, 0x04                                            // 0x005125cc    83c404
                         test              eax, eax                                             // 0x005125cf    85c0
                         {disp8} je        _jmp_addr_0x005125e9                                 // 0x005125d1    7416
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x2fff20]               // 0x005125d3    8b0d205fcc00
                         {disp8} mov       dword ptr [eax + 0x04], esi                          // 0x005125d9    897004
                         mov               dword ptr [eax], ecx                                 // 0x005125dc    8908
                         {disp32} mov      dword ptr [data_bytes + 0x2fff20], eax               // 0x005125de    a3205fcc00
                         {disp32} inc      dword ptr [data_bytes + 0x2fff24]                    // 0x005125e3    ff05245fcc00
_jmp_addr_0x005125e9:    pop               edi                                                  // 0x005125e9    5f
                         mov.s             eax, esi                                             // 0x005125ea    8bc6
                         pop               esi                                                  // 0x005125ec    5e
                         pop               ebp                                                  // 0x005125ed    5d
                         ret               0x0008                                               // 0x005125ee    c20800
                         nop                                                                    // 0x005125f1    90
                         nop                                                                    // 0x005125f2    90
                         nop                                                                    // 0x005125f3    90
                         nop                                                                    // 0x005125f4    90
                         nop                                                                    // 0x005125f5    90
                         nop                                                                    // 0x005125f6    90
                         nop                                                                    // 0x005125f7    90
                         nop                                                                    // 0x005125f8    90
                         nop                                                                    // 0x005125f9    90
                         nop                                                                    // 0x005125fa    90
                         nop                                                                    // 0x005125fb    90
                         nop                                                                    // 0x005125fc    90
                         nop                                                                    // 0x005125fd    90
                         nop                                                                    // 0x005125fe    90
                         nop                                                                    // 0x005125ff    90
                         push              ebp                                                  // 0x00512600    55
                         {disp8} mov       ebp, dword ptr [esp + 0x08]                          // 0x00512601    8b6c2408
                         push              esi                                                  // 0x00512605    56
                         mov.s             esi, ecx                                             // 0x00512606    8bf1
                         mov               dword ptr [esi], 0x00000000                          // 0x00512608    c70600000000
                         {disp8} mov       dword ptr [esi + 0x04], 0x00000000                   // 0x0051260e    c7460400000000
                         {disp8} mov       dword ptr [esi + 0x08], 0x00000000                   // 0x00512615    c7460800000000
                         mov.s             eax, ebp                                             // 0x0051261c    8bc5
                         mov               edx, dword ptr [eax]                                 // 0x0051261e    8b10
                         mov               dword ptr [ecx], edx                                 // 0x00512620    8911
                         {disp8} mov       edx, dword ptr [eax + 0x04]                          // 0x00512622    8b5004
                         {disp8} mov       dword ptr [ecx + 0x04], edx                          // 0x00512625    895104
                         {disp8} mov       eax, dword ptr [eax + 0x08]                          // 0x00512628    8b4008
                         {disp8} mov       dword ptr [ecx + 0x08], eax                          // 0x0051262b    894108
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                          // 0x0051262e    8b4c2410
                         {disp8} mov       dword ptr [esi + 0x0c], ecx                          // 0x00512632    894e0c
                         {disp8} mov       byte ptr [esi + 0x2c], 0x01                          // 0x00512635    c6462c01
                         {disp32} mov      al, byte ptr [data_bytes + 0x2fff28]                 // 0x00512639    a0285fcc00
                         mov.s             cl, al                                               // 0x0051263e    8ac8
                         {disp8} mov       byte ptr [esi + 0x29], al                            // 0x00512640    884629
                         {disp8} mov       byte ptr [esi + 0x2b], -0x01                         // 0x00512643    c6462bff
                         {disp8} mov       byte ptr [esi + 0x2a], 0x00                          // 0x00512647    c6462a00
                         {disp8} mov       byte ptr [esi + 0x28], cl                            // 0x0051264b    884e28
                         {disp32} mov      al, byte ptr [data_bytes + 0x2fff28]                 // 0x0051264e    a0285fcc00
                         push              edi                                                  // 0x00512653    57
                         xor.s             edi, edi                                             // 0x00512654    33ff
                         add               al, 0x10                                             // 0x00512656    0410
                         {disp32} mov      byte ptr [data_bytes + 0x2fff28], al                 // 0x00512658    a2285fcc00
_jmp_addr_0x0051265d:    test              edi, edi                                             // 0x0051265d    85ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x2fff20]               // 0x0051265f    a1205fcc00
                         {disp8} jne       _jmp_addr_0x0051266c                                 // 0x00512664    7506
                         test              eax, eax                                             // 0x00512666    85c0
                         {disp8} je        _jmp_addr_0x005126b3                                 // 0x00512668    7449
                         {disp8} jmp       _jmp_addr_0x00512681                                 // 0x0051266a    eb15
_jmp_addr_0x0051266c:    test              eax, eax                                             // 0x0051266c    85c0
                         {disp8} je        _jmp_addr_0x005126b3                                 // 0x0051266e    7443
_jmp_addr_0x00512670:    cmp               dword ptr [eax + 0x04], edi                          // 0x00512670    397804
                         mov               eax, dword ptr [eax]                                 // 0x00512673    8b00
                         {disp8} je        _jmp_addr_0x0051267d                                 // 0x00512675    7406
                         test              eax, eax                                             // 0x00512677    85c0
                         {disp8} je        _jmp_addr_0x005126b3                                 // 0x00512679    7438
                         {disp8} jmp       _jmp_addr_0x00512670                                 // 0x0051267b    ebf3
_jmp_addr_0x0051267d:    test              eax, eax                                             // 0x0051267d    85c0
                         {disp8} je        _jmp_addr_0x005126b3                                 // 0x0051267f    7432
_jmp_addr_0x00512681:    {disp8} mov       edi, dword ptr [eax + 0x04]                          // 0x00512681    8b7804
                         test              edi, edi                                             // 0x00512684    85ff
                         {disp8} je        _jmp_addr_0x005126b3                                 // 0x00512686    742b
                         push              edi                                                  // 0x00512688    57
                         mov.s             ecx, ebp                                             // 0x00512689    8bcd
                         call              @__eq__9MapCoordsCFRC9MapCoords@12                   // 0x0051268b    e8d02f0f00
                         test              eax, eax                                             // 0x00512690    85c0
                         {disp8} je        _jmp_addr_0x0051265d                                 // 0x00512692    74c9
                         {disp8} fld       dword ptr [esi + 0x0c]                               // 0x00512694    d9460c
                         {disp8} fcomp     dword ptr [esp + 0x14]                               // 0x00512697    d85c2414
                         fnstsw            ax                                                   // 0x0051269b    dfe0
                         test              ah, 0x40                                             // 0x0051269d    f6c440
                         {disp8} je        _jmp_addr_0x0051265d                                 // 0x005126a0    74bb
                         push              esi                                                  // 0x005126a2    56
                         call              ??3@YAXPAX@Z                                         // 0x005126a3    e8f0c72900
                         add               esp, 0x04                                            // 0x005126a8    83c404
                         pop               edi                                                  // 0x005126ab    5f
                         mov.s             eax, esi                                             // 0x005126ac    8bc6
                         pop               esi                                                  // 0x005126ae    5e
                         pop               ebp                                                  // 0x005126af    5d
                         ret               0x0008                                               // 0x005126b0    c20800
_jmp_addr_0x005126b3:    test              esi, esi                                             // 0x005126b3    85f6
                         {disp8} je        _jmp_addr_0x005126db                                 // 0x005126b5    7424
                         push              0x8                                                  // 0x005126b7    6a08
                         call              ??2@YAPAXI@Z                                         // 0x005126b9    e8303e2b00
                         add               esp, 0x04                                            // 0x005126be    83c404
                         test              eax, eax                                             // 0x005126c1    85c0
                         {disp8} je        _jmp_addr_0x005126db                                 // 0x005126c3    7416
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x2fff20]               // 0x005126c5    8b0d205fcc00
                         {disp8} mov       dword ptr [eax + 0x04], esi                          // 0x005126cb    897004
                         mov               dword ptr [eax], ecx                                 // 0x005126ce    8908
                         {disp32} mov      dword ptr [data_bytes + 0x2fff20], eax               // 0x005126d0    a3205fcc00
                         {disp32} inc      dword ptr [data_bytes + 0x2fff24]                    // 0x005126d5    ff05245fcc00
_jmp_addr_0x005126db:    pop               edi                                                  // 0x005126db    5f
                         mov.s             eax, esi                                             // 0x005126dc    8bc6
                         pop               esi                                                  // 0x005126de    5e
                         pop               ebp                                                  // 0x005126df    5d
                         ret               0x0008                                               // 0x005126e0    c20800
                         nop                                                                    // 0x005126e3    90
                         nop                                                                    // 0x005126e4    90
                         nop                                                                    // 0x005126e5    90
                         nop                                                                    // 0x005126e6    90
                         nop                                                                    // 0x005126e7    90
                         nop                                                                    // 0x005126e8    90
                         nop                                                                    // 0x005126e9    90
                         nop                                                                    // 0x005126ea    90
                         nop                                                                    // 0x005126eb    90
                         nop                                                                    // 0x005126ec    90
                         nop                                                                    // 0x005126ed    90
                         nop                                                                    // 0x005126ee    90
                         nop                                                                    // 0x005126ef    90
_jmp_addr_0x005126f0:    ret                                                                    // 0x005126f0    c3
                         nop                                                                    // 0x005126f1    90
                         nop                                                                    // 0x005126f2    90
                         nop                                                                    // 0x005126f3    90
                         nop                                                                    // 0x005126f4    90
                         nop                                                                    // 0x005126f5    90
                         nop                                                                    // 0x005126f6    90
                         nop                                                                    // 0x005126f7    90
                         nop                                                                    // 0x005126f8    90
                         nop                                                                    // 0x005126f9    90
                         nop                                                                    // 0x005126fa    90
                         nop                                                                    // 0x005126fb    90
                         nop                                                                    // 0x005126fc    90
                         nop                                                                    // 0x005126fd    90
                         nop                                                                    // 0x005126fe    90
                         nop                                                                    // 0x005126ff    90
_jmp_addr_0x00512700:    push              ecx                                                  // 0x00512700    51
                         push              esi                                                  // 0x00512701    56
                         mov.s             esi, ecx                                             // 0x00512702    8bf1
                         {disp8} mov       eax, dword ptr [esi + 0x0c]                          // 0x00512704    8b460c
                         {disp8} mov       dword ptr [esp + 0x04], eax                          // 0x00512707    89442404
                         {disp8} fld       dword ptr [esp + 0x04]                               // 0x0051270b    d9442404
                         {disp8} fmul      dword ptr [esp + 0x04]                               // 0x0051270f    d84c2404
                         {disp32} fcom     dword ptr [rdata_bytes + 0x1a6a8]                    // 0x00512713    d815a8368c00
                         fnstsw            ax                                                   // 0x00512719    dfe0
                         test              ah, 0x41                                             // 0x0051271b    f6c441
                         {disp8} jne       _jmp_addr_0x00512729                                 // 0x0051271e    7509
                         {disp8} mov       ecx, dword ptr [esi + 0x0c]                          // 0x00512720    8b4e0c
                         {disp8} mov       dword ptr [esp + 0x04], ecx                          // 0x00512723    894c2404
                         {disp8} jmp       _jmp_addr_0x00512731                                 // 0x00512727    eb08
_jmp_addr_0x00512729:    fstp              st(0)                                                // 0x00512729    ddd8
                         {disp32} fld      dword ptr [rdata_bytes + 0x1a6a8]                    // 0x0051272b    d905a8368c00
_jmp_addr_0x00512731:    {disp8} lea       edx, dword ptr [esi + 0x28]                          // 0x00512731    8d5628
                         push              0x40000000                                           // 0x00512734    6800000040
                         push              edx                                                  // 0x00512739    52
                         call              _jmp_addr_0x007a1400                                 // 0x0051273a    e8c1ec2800
                         push              eax                                                  // 0x0051273f    50
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00512740    8b442410
                         push              eax                                                  // 0x00512744    50
                         mov.s             ecx, esi                                             // 0x00512745    8bce
                         call              _jmp_addr_0x00602a80                                 // 0x00512747    e834030f00
                         pop               esi                                                  // 0x0051274c    5e
                         pop               ecx                                                  // 0x0051274d    59
                         ret                                                                    // 0x0051274e    c3
                         nop                                                                    // 0x0051274f    90
                         xor.s             eax, eax                                             // 0x00512750    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x0002d290]                      // 0x00512752    8a8190d20200
                         inc               al                                                   // 0x00512758    fec0
                         and               eax, 0x000000ff                                      // 0x0051275a    25ff000000
                         and               eax, 0x80000003                                      // 0x0051275f    2503000080
                         {disp8} jns       _jmp_addr_0x0051276b                                 // 0x00512764    7905
                         dec               eax                                                  // 0x00512766    48
                         or                eax, -0x4                                            // 0x00512767    83c8fc
                         inc               eax                                                  // 0x0051276a    40
_jmp_addr_0x0051276b:    xor.s             edx, edx                                             // 0x0051276b    33d2
                         test              al, al                                               // 0x0051276d    84c0
                         setne             dl                                                   // 0x0051276f    0f95c2
                         {disp32} mov      byte ptr [ecx + 0x0002d290], al                      // 0x00512772    888190d20200
                         {disp32} mov      dword ptr [ecx + 0x0002d1c8], edx                    // 0x00512778    8991c8d10200
                         ret                                                                    // 0x0051277e    c3
                         nop                                                                    // 0x0051277f    90
_globl_ct_0x00512780:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                         // 0x00512780    8a0d34c9fa00
                         mov               al, 0x01                                             // 0x00512786    b001
                         test              al, cl                                               // 0x00512788    84c8
                         {disp8} jne       _jmp_addr_0x00512794                                 // 0x0051278a    7508
                         or.s              cl, al                                               // 0x0051278c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                         // 0x0051278e    880d34c9fa00
_jmp_addr_0x00512794:    {disp32} jmp      _jmp_addr_0x005127a0                                 // 0x00512794    e907000000
                         nop                                                                    // 0x00512799    90
                         nop                                                                    // 0x0051279a    90
                         nop                                                                    // 0x0051279b    90
                         nop                                                                    // 0x0051279c    90
                         nop                                                                    // 0x0051279d    90
                         nop                                                                    // 0x0051279e    90
                         nop                                                                    // 0x0051279f    90
_jmp_addr_0x005127a0:    push              0x00407870                                           // 0x005127a0    6870784000
                         call              _atexit                                              // 0x005127a5    e8e72f2b00
                         pop               ecx                                                  // 0x005127aa    59
                         ret                                                                    // 0x005127ab    c3
                         nop                                                                    // 0x005127ac    90
                         nop                                                                    // 0x005127ad    90
                         nop                                                                    // 0x005127ae    90
                         nop                                                                    // 0x005127af    90
??0DialogBoxKeyBinding@@QAE@XZ:
                                     push              esi                                                  // 0x005127b0    56
                         mov.s             esi, ecx                                             // 0x005127b1    8bf1
                         call              ??0DialogBoxBase@@QAE@XZ                             // 0x005127b3    e8e80b0000
                         mov               dword ptr [esi], 0x008d85a0                          // 0x005127b8    c706a0858d00
                         mov.s             eax, esi                                             // 0x005127be    8bc6
                         pop               esi                                                  // 0x005127c0    5e
                         ret                                                                    // 0x005127c1    c3
                         nop                                                                    // 0x005127c2    90
                         nop                                                                    // 0x005127c3    90
                         nop                                                                    // 0x005127c4    90
                         nop                                                                    // 0x005127c5    90
                         nop                                                                    // 0x005127c6    90
                         nop                                                                    // 0x005127c7    90
                         nop                                                                    // 0x005127c8    90
                         nop                                                                    // 0x005127c9    90
                         nop                                                                    // 0x005127ca    90
                         nop                                                                    // 0x005127cb    90
                         nop                                                                    // 0x005127cc    90
                         nop                                                                    // 0x005127cd    90
                         nop                                                                    // 0x005127ce    90
                         nop                                                                    // 0x005127cf    90
_InitSubDialogs__13DialogBoxBaseFv:
                         ret                                                                    // 0x005127d0    c3
                         nop                                                                    // 0x005127d1    90
                         nop                                                                    // 0x005127d2    90
                         nop                                                                    // 0x005127d3    90
                         nop                                                                    // 0x005127d4    90
                         nop                                                                    // 0x005127d5    90
                         nop                                                                    // 0x005127d6    90
                         nop                                                                    // 0x005127d7    90
                         nop                                                                    // 0x005127d8    90
                         nop                                                                    // 0x005127d9    90
                         nop                                                                    // 0x005127da    90
                         nop                                                                    // 0x005127db    90
                         nop                                                                    // 0x005127dc    90
                         nop                                                                    // 0x005127dd    90
                         nop                                                                    // 0x005127de    90
                         nop                                                                    // 0x005127df    90
_CloseNotification__13DialogBoxBaseFv:
                         ret                                                                    // 0x005127e0    c3
                         nop                                                                    // 0x005127e1    90
                         nop                                                                    // 0x005127e2    90
                         nop                                                                    // 0x005127e3    90
                         nop                                                                    // 0x005127e4    90
                         nop                                                                    // 0x005127e5    90
                         nop                                                                    // 0x005127e6    90
                         nop                                                                    // 0x005127e7    90
                         nop                                                                    // 0x005127e8    90
                         nop                                                                    // 0x005127e9    90
                         nop                                                                    // 0x005127ea    90
                         nop                                                                    // 0x005127eb    90
                         nop                                                                    // 0x005127ec    90
                         nop                                                                    // 0x005127ed    90
                         nop                                                                    // 0x005127ee    90
                         nop                                                                    // 0x005127ef    90
_WantsKeyControl__13DialogBoxBaseFv:
                         call              _jmp_addr_0x00513770                                 // 0x005127f0    e87b0f0000
                         neg               eax                                                  // 0x005127f5    f7d8
                         sbb.s             eax, eax                                             // 0x005127f7    1bc0
                         neg               eax                                                  // 0x005127f9    f7d8
                         ret                                                                    // 0x005127fb    c3
                         nop                                                                    // 0x005127fc    90
                         nop                                                                    // 0x005127fd    90
                         nop                                                                    // 0x005127fe    90
                         nop                                                                    // 0x005127ff    90
_WantsMouseControl__13DialogBoxBaseFv:
                         call              _jmp_addr_0x00513770                                 // 0x00512800    e86b0f0000
                         neg               eax                                                  // 0x00512805    f7d8
                         sbb.s             eax, eax                                             // 0x00512807    1bc0
                         neg               eax                                                  // 0x00512809    f7d8
                         ret                                                                    // 0x0051280b    c3
                         nop                                                                    // 0x0051280c    90
                         nop                                                                    // 0x0051280d    90
                         nop                                                                    // 0x0051280e    90
                         nop                                                                    // 0x0051280f    90
_CanESCOut__13DialogBoxBaseFv:
                         {disp8} mov       eax, dword ptr [ecx + 0x04]                          // 0x00512810    8b4104
                         {disp8} mov       dl, byte ptr [eax + 0x64]                            // 0x00512813    8a5064
                         xor.s             ecx, ecx                                             // 0x00512816    33c9
                         test              dl, dl                                               // 0x00512818    84d2
                         sete              cl                                                   // 0x0051281a    0f94c1
                         mov.s             al, cl                                               // 0x0051281d    8ac1
                         ret                                                                    // 0x0051281f    c3
_jmp_addr_0x00512820:    mov               dword ptr [ecx], 0x008d85a0                          // 0x00512820    c701a0858d00
                         {disp32} jmp      _jmp_addr_0x005133c0                                 // 0x00512826    e9950b0000
                         nop                                                                    // 0x0051282b    90
                         nop                                                                    // 0x0051282c    90
                         nop                                                                    // 0x0051282d    90
                         nop                                                                    // 0x0051282e    90
                         nop                                                                    // 0x0051282f    90
                         push              ecx                                                  // 0x00512830    51
                         {disp32} mov      eax, dword ptr [_game]                               // 0x00512831    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x00512836    8b8800032500
                         push              ebx                                                  // 0x0051283c    53
                         push              ebp                                                  // 0x0051283d    55
                         {disp8} mov       ebp, dword ptr [esp + 0x14]                          // 0x0051283e    8b6c2414
                         push              esi                                                  // 0x00512842    56
                         push              ebp                                                  // 0x00512843    55
                         call              _jmp_addr_0x00471940                                 // 0x00512844    e8f7f0f5ff
                         test              eax, eax                                             // 0x00512849    85c0
                         {disp32} je       _jmp_addr_0x005129c4                                 // 0x0051284b    0f8473010000
                         {disp8} mov       ebx, dword ptr [esp + 0x2c]                          // 0x00512851    8b5c242c
                         cmp               ebx, dword ptr [esp + 0x20]                          // 0x00512855    3b5c2420
                         {disp32} jl       _jmp_addr_0x005129c4                                 // 0x00512859    0f8c65010000
                         {disp8} mov       esi, dword ptr [esp + 0x30]                          // 0x0051285f    8b742430
                         cmp               esi, dword ptr [esp + 0x28]                          // 0x00512863    3b742428
                         {disp32} jg       _jmp_addr_0x005129c4                                 // 0x00512867    0f8f57010000
                         push              edi                                                  // 0x0051286d    57
                         {disp8} lea       ecx, dword ptr [esp + 0x24]                          // 0x0051286e    8d4c2424
                         push              ecx                                                  // 0x00512872    51
                         {disp8} lea       edx, dword ptr [esp + 0x24]                          // 0x00512873    8d542424
                         push              edx                                                  // 0x00512877    52
                         call              ?adjust@SetupThing@@SAMAAH0@Z                        // 0x00512878    e8c3f2efff
                         fstp              st(0)                                                // 0x0051287d    ddd8
                         {disp8} lea       eax, dword ptr [esp + 0x34]                          // 0x0051287f    8d442434
                         push              eax                                                  // 0x00512883    50
                         {disp8} lea       ecx, dword ptr [esp + 0x34]                          // 0x00512884    8d4c2434
                         push              ecx                                                  // 0x00512888    51
                         call              ?adjust@SetupThing@@SAMAAH0@Z                        // 0x00512889    e8b2f2efff
                         fstp              st(0)                                                // 0x0051288e    ddd8
                         {disp8} mov       edi, dword ptr [esp + 0x28]                          // 0x00512890    8b7c2428
                         {disp8} mov       eax, dword ptr [edi + 0x20]                          // 0x00512894    8b4720
                         add               esp, 0x10                                            // 0x00512897    83c410
                         test              eax, eax                                             // 0x0051289a    85c0
                         {disp8} je        _jmp_addr_0x005128a9                                 // 0x0051289c    740b
                         mov.s             edx, esi                                             // 0x0051289e    8bd6
                         sub.s             edx, ebx                                             // 0x005128a0    2bd3
                         cmp.s             edx, eax                                             // 0x005128a2    3bd0
                         {disp8} jle       _jmp_addr_0x005128a9                                 // 0x005128a4    7e03
                         lea               esi, dword ptr [eax + ebx * 0x1]                     // 0x005128a6    8d3418
_jmp_addr_0x005128a9:    push              ebx                                                  // 0x005128a9    53
                         call              ?adjusty@SetupThing@@SAHH@Z                          // 0x005128aa    e8c1f5efff
                         push              esi                                                  // 0x005128af    56
                         {disp8} mov       dword ptr [esp + 0x38], eax                          // 0x005128b0    89442438
                         call              ?adjusty@SetupThing@@SAHH@Z                          // 0x005128b4    e8b7f5efff
                         {disp32} mov      esi, dword ptr [edi + 0x00000258]                    // 0x005128b9    8bb758020000
                         shl               ebp, 9                                               // 0x005128bf    c1e509
                         add.s             esi, ebp                                             // 0x005128c2    03f5
                         {disp8} mov       dword ptr [esp + 0x3c], eax                          // 0x005128c4    8944243c
                         xor.s             eax, eax                                             // 0x005128c8    33c0
                         mov               ax, word ptr [esi]                                   // 0x005128ca    668b06
                         add               esp, 0x08                                            // 0x005128cd    83c408
                         xor.s             ebp, ebp                                             // 0x005128d0    33ed
                         test              ax, ax                                               // 0x005128d2    6685c0
                         mov.s             ebx, esi                                             // 0x005128d5    8bde
                         {disp8} je        _jmp_addr_0x005128f1                                 // 0x005128d7    7418
_jmp_addr_0x005128d9:    cmp               ax, 0x0028                                           // 0x005128d9    663d2800
                         {disp8} je        _jmp_addr_0x005128ee                                 // 0x005128dd    740f
                         {disp8} mov       ax, word ptr [ebx + 0x02]                            // 0x005128df    668b4302
                         add               ebx, 0x02                                            // 0x005128e3    83c302
                         inc               ebp                                                  // 0x005128e6    45
                         test              ax, ax                                               // 0x005128e7    6685c0
                         {disp8} jne       _jmp_addr_0x005128d9                                 // 0x005128ea    75ed
                         {disp8} jmp       _jmp_addr_0x005128f1                                 // 0x005128ec    eb03
_jmp_addr_0x005128ee:    sub               ebp, 0x06                                            // 0x005128ee    83ed06
_jmp_addr_0x005128f1:    {disp8} fild      dword ptr [edi + 0x20]                               // 0x005128f1    db4720
                         push              esi                                                  // 0x005128f4    56
                         {disp8} fstp      dword ptr [esp + 0x14]                               // 0x005128f5    d95c2414
                         call              _wcslen                                              // 0x005128f9    e8643b2b00
                         {disp8} mov       edx, dword ptr [esp + 0x14]                          // 0x005128fe    8b542414
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d2c]               // 0x00512902    8b0d2ccdc400
                         add               esp, 0x04                                            // 0x00512908    83c404
                         push              edx                                                  // 0x0051290b    52
                         push              eax                                                  // 0x0051290c    50
                         push              esi                                                  // 0x0051290d    56
                         call              @GetStringWidth__13GatheringTextFPwif@20             // 0x0051290e    e81de83100
                         call              _jmp_addr_0x007a1400                                 // 0x00512913    e8e8ea2800
                         {disp8} mov       edx, dword ptr [esp + 0x28]                          // 0x00512918    8b542428
                         mov.s             edi, eax                                             // 0x0051291c    8bf8
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x0051291e    8b442420
                         mov.s             ecx, edx                                             // 0x00512922    8bca
                         sub.s             ecx, eax                                             // 0x00512924    2bc8
                         cmp.s             edi, ecx                                             // 0x00512926    3bf9
                         {disp8} jle       _jmp_addr_0x0051292c                                 // 0x00512928    7e02
                         mov.s             edi, ecx                                             // 0x0051292a    8bf9
_jmp_addr_0x0051292c:    cmp               word ptr [ebx], 0x00                                 // 0x0051292c    66833b00
                         {disp8} je        _jmp_addr_0x00512975                                 // 0x00512930    7443
                         {disp8} mov       eax, dword ptr [esp + 0x18]                          // 0x00512932    8b442418
                         {disp8} fild      dword ptr [eax + 0x20]                               // 0x00512936    db4020
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d2c]               // 0x00512939    8b0d2ccdc400
                         {disp8} fstp      dword ptr [esp + 0x18]                               // 0x0051293f    d95c2418
                         {disp8} mov       edx, dword ptr [esp + 0x18]                          // 0x00512943    8b542418
                         push              edx                                                  // 0x00512947    52
                         push              ebp                                                  // 0x00512948    55
                         push              esi                                                  // 0x00512949    56
                         call              @GetStringWidth__13GatheringTextFPwif@20             // 0x0051294a    e8e1e73100
                         call              _jmp_addr_0x007a1400                                 // 0x0051294f    e8acea2800
                         {disp8} mov       edx, dword ptr [esp + 0x28]                          // 0x00512954    8b542428
                         mov.s             esi, eax                                             // 0x00512958    8bf0
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x0051295a    8b442420
                         mov.s             ecx, edx                                             // 0x0051295e    8bca
                         sub.s             ecx, eax                                             // 0x00512960    2bc8
                         cmp.s             esi, ecx                                             // 0x00512962    3bf1
                         {disp8} jle       _jmp_addr_0x00512968                                 // 0x00512964    7e02
                         mov.s             esi, ecx                                             // 0x00512966    8bf1
_jmp_addr_0x00512968:    sub.s             eax, edi                                             // 0x00512968    2bc7
                         add.s             eax, edx                                             // 0x0051296a    03c2
                         cdq                                                                    // 0x0051296c    99
                         sub.s             eax, edx                                             // 0x0051296d    2bc2
                         sar               eax, 1                                               // 0x0051296f    d1f8
                         add.s             eax, esi                                             // 0x00512971    03c6
                         {disp8} jmp       _jmp_addr_0x00512980                                 // 0x00512973    eb0b
_jmp_addr_0x00512975:    sub.s             eax, edi                                             // 0x00512975    2bc7
                         add.s             eax, edx                                             // 0x00512977    03c2
                         cdq                                                                    // 0x00512979    99
                         sub.s             eax, edx                                             // 0x0051297a    2bc2
                         sar               eax, 1                                               // 0x0051297c    d1f8
                         add.s             eax, edi                                             // 0x0051297e    03c7
_jmp_addr_0x00512980:    {disp32} mov      ecx, dword ptr [data_bytes + 0x2078]                 // 0x00512980    8b0d78809c00
                         {disp8} mov       edx, dword ptr [esp + 0x30]                          // 0x00512986    8b542430
                         shl               ecx, 0x18                                            // 0x0051298a    c1e118
                         add               ecx, 0x00ffffff                                      // 0x0051298d    81c1ffffff00
                         push              ecx                                                  // 0x00512993    51
                         {disp8} mov       ecx, dword ptr [esp + 0x38]                          // 0x00512994    8b4c2438
                         sub.s             ecx, edx                                             // 0x00512998    2bca
                         push              ecx                                                  // 0x0051299a    51
                         push              edx                                                  // 0x0051299b    52
                         push              eax                                                  // 0x0051299c    50
                         push              0x0                                                  // 0x0051299d    6a00
                         call              _jmp_addr_0x005c4800                                 // 0x0051299f    e85c1e0b00
                         {disp8} mov       edx, dword ptr [esp + 0x30]                          // 0x005129a4    8b542430
                         push              eax                                                  // 0x005129a8    50
                         {disp32} mov      eax, dword ptr [_game]                               // 0x005129a9    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x005129ae    8b8800032500
                         push              edx                                                  // 0x005129b4    52
                         call              _jmp_addr_0x00471620                                 // 0x005129b5    e866ecf5ff
                         push              eax                                                  // 0x005129ba    50
                         call              _jmp_addr_0x00447450                                 // 0x005129bb    e8904af3ff
                         add               esp, 0x1c                                            // 0x005129c0    83c41c
                         pop               edi                                                  // 0x005129c3    5f
_jmp_addr_0x005129c4:    pop               esi                                                  // 0x005129c4    5e
                         pop               ebp                                                  // 0x005129c5    5d
                         mov               eax, 0x00000001                                      // 0x005129c6    b801000000
                         pop               ebx                                                  // 0x005129cb    5b
                         pop               ecx                                                  // 0x005129cc    59
                         ret               0x0020                                               // 0x005129cd    c22000
?Init@DialogBoxKeyBinding@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                          // 0x005129d0    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                          // 0x005129d4    8b542404
                         push              esi                                                  // 0x005129d8    56
                         push              edi                                                  // 0x005129d9    57
                         mov.s             edi, ecx                                             // 0x005129da    8bf9
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                          // 0x005129dc    8b4c2410
                         push              eax                                                  // 0x005129e0    50
                         push              ecx                                                  // 0x005129e1    51
                         push              edx                                                  // 0x005129e2    52
                         mov.s             ecx, edi                                             // 0x005129e3    8bcf
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                                 // 0x005129e5    e8160a0000
                         push              0x40                                                 // 0x005129ea    6a40
                         push              0x00be8c24                                           // 0x005129ec    68248cbe00
                         push              0x00000244                                           // 0x005129f1    6844020000
                         call              ___nw__FUl                                           // 0x005129f6    e8958d2c00
                         mov.s             esi, eax                                             // 0x005129fb    8bf0
                         add               esp, 0x0c                                            // 0x005129fd    83c40c
                         test              esi, esi                                             // 0x00512a00    85f6
                         {disp8} je        _jmp_addr_0x00512a58                                 // 0x00512a02    7454
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7b        // 0x00512a04    813dac7cd1007b0d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x00512a0e    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x00512a1a                                 // 0x00512a13    7605
                         add               eax, 0x0000a1c4                                      // 0x00512a15    05c4a10000
_jmp_addr_0x00512a1a:    {disp8} mov       ecx, dword ptr [eax + 0x08]                          // 0x00512a1a    8b4808
                         push              ecx                                                  // 0x00512a1d    51
                         push              0x64                                                 // 0x00512a1e    6a64
                         push              0x00000258                                           // 0x00512a20    6858020000
                         push              0x3c                                                 // 0x00512a25    6a3c
                         push              0x64                                                 // 0x00512a27    6a64
                         push              0x000003e7                                           // 0x00512a29    68e7030000
                         mov.s             ecx, esi                                             // 0x00512a2e    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x00512a30    e81b68efff
                         mov               dword ptr [esi], 0x008ab5c0                          // 0x00512a35    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], 0x00000004             // 0x00512a3b    c7863c02000004000000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00                    // 0x00512a45    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], 0x00000000             // 0x00512a4c    c7864002000000000000
                         {disp8} jmp       _jmp_addr_0x00512a5a                                 // 0x00512a56    eb02
_jmp_addr_0x00512a58:    xor.s             esi, esi                                             // 0x00512a58    33f6
_jmp_addr_0x00512a5a:    call              _jmp_addr_0x00407a20                                 // 0x00512a5a    e8c14fefff
                         push              0x41                                                 // 0x00512a5f    6a41
                         push              0x00be8c24                                           // 0x00512a61    68248cbe00
                         push              0x000002b0                                           // 0x00512a66    68b0020000
                         {disp8} mov       dword ptr [esi + 0x20], eax                          // 0x00512a6b    894620
                         call              ___nw__FUl                                           // 0x00512a6e    e81d8d2c00
                         add               esp, 0x0c                                            // 0x00512a73    83c40c
                         test              eax, eax                                             // 0x00512a76    85c0
                         {disp8} je        _jmp_addr_0x00512a96                                 // 0x00512a78    741c
                         push              0x00000140                                           // 0x00512a7a    6840010000
                         push              0x00000258                                           // 0x00512a7f    6858020000
                         push              0x78                                                 // 0x00512a84    6a78
                         push              0x64                                                 // 0x00512a86    6a64
                         push              0x0000012c                                           // 0x00512a88    682c010000
                         mov.s             ecx, eax                                             // 0x00512a8d    8bc8
                         call              @__ct__9SetupListFiiiii@28                           // 0x00512a8f    e8bc79efff
                         {disp8} jmp       _jmp_addr_0x00512a98                                 // 0x00512a94    eb02
_jmp_addr_0x00512a96:    xor.s             eax, eax                                             // 0x00512a96    33c0
_jmp_addr_0x00512a98:    {disp8} mov       dword ptr [edi + 0x18], eax                          // 0x00512a98    894718
                         call              _jmp_addr_0x00407a20                                 // 0x00512a9b    e8804fefff
                         mov.s             esi, eax                                             // 0x00512aa0    8bf0
                         call              _GetMidTextSize__Fv                                  // 0x00512aa2    e8594fefff
                         add.s             eax, esi                                             // 0x00512aa7    03c6
                         cdq                                                                    // 0x00512aa9    99
                         sub.s             eax, edx                                             // 0x00512aaa    2bc2
                         {disp8} mov       edx, dword ptr [edi + 0x18]                          // 0x00512aac    8b5718
                         push              0x43                                                 // 0x00512aaf    6a43
                         sar               eax, 1                                               // 0x00512ab1    d1f8
                         push              0x00be8c24                                           // 0x00512ab3    68248cbe00
                         push              0x00000244                                           // 0x00512ab8    6844020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                          // 0x00512abd    894220
                         call              ___nw__FUl                                           // 0x00512ac0    e8cb8c2c00
                         add               esp, 0x0c                                            // 0x00512ac5    83c40c
                         test              eax, eax                                             // 0x00512ac8    85c0
                         {disp8} je        _jmp_addr_0x00512b09                                 // 0x00512aca    743d
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7c        // 0x00512acc    813dac7cd1007c0d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]               // 0x00512ad6    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00512ae4                                 // 0x00512adc    7606
                         add               ecx, 0x0000a1d0                                      // 0x00512ade    81c1d0a10000
_jmp_addr_0x00512ae4:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                          // 0x00512ae4    8b4908
                         push              0x0                                                  // 0x00512ae7    6a00
                         push              ecx                                                  // 0x00512ae9    51
                         push              0x28                                                 // 0x00512aea    6a28
                         push              0x00000118                                           // 0x00512aec    6818010000
                         push              0x00000212                                           // 0x00512af1    6812020000
                         push              0x00000104                                           // 0x00512af6    6804010000
                         push              0x0000012d                                           // 0x00512afb    682d010000
                         mov.s             ecx, eax                                             // 0x00512b00    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36                     // 0x00512b02    e8a96defff
                         {disp8} jmp       _jmp_addr_0x00512b0b                                 // 0x00512b07    eb02
_jmp_addr_0x00512b09:    xor.s             eax, eax                                             // 0x00512b09    33c0
_jmp_addr_0x00512b0b:    push              0x44                                                 // 0x00512b0b    6a44
                         push              0x00be8c24                                           // 0x00512b0d    68248cbe00
                         push              0x0000025c                                           // 0x00512b12    685c020000
                         {disp8} mov       dword ptr [edi + 0x10], eax                          // 0x00512b17    894710
                         call              ___nw__FUl                                           // 0x00512b1a    e8718c2c00
                         add               esp, 0x0c                                            // 0x00512b1f    83c40c
                         test              eax, eax                                             // 0x00512b22    85c0
                         {disp8} je        _jmp_addr_0x00512b65                                 // 0x00512b24    743f
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7a        // 0x00512b26    813dac7cd1007a0d0000
                         {disp8} ja        _jmp_addr_0x00512b3a                                 // 0x00512b30    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]               // 0x00512b32    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x00512b46                                 // 0x00512b38    eb0c
_jmp_addr_0x00512b3a:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]               // 0x00512b3a    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0000a1b8]                    // 0x00512b40    8d8ab8a10000
_jmp_addr_0x00512b46:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                          // 0x00512b46    8b4908
                         push              0x2                                                  // 0x00512b49    6a02
                         push              0x0                                                  // 0x00512b4b    6a00
                         push              0x28                                                 // 0x00512b4d    6a28
                         push              ecx                                                  // 0x00512b4f    51
                         push              0x00000212                                           // 0x00512b50    6812020000
                         push              0x1e                                                 // 0x00512b55    6a1e
                         push              0x0000012e                                           // 0x00512b57    682e010000
                         mov.s             ecx, eax                                             // 0x00512b5c    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36                  // 0x00512b5e    e8fda6efff
                         {disp8} jmp       _jmp_addr_0x00512b67                                 // 0x00512b63    eb02
_jmp_addr_0x00512b65:    xor.s             eax, eax                                             // 0x00512b65    33c0
_jmp_addr_0x00512b67:    {disp8} mov       dword ptr [edi + 0x14], eax                          // 0x00512b67    894714
                         call              _GetMidTextSize__Fv                                  // 0x00512b6a    e8914eefff
                         {disp8} mov       ecx, dword ptr [edi + 0x14]                          // 0x00512b6f    8b4f14
                         {disp8} mov       dword ptr [ecx + 0x20], eax                          // 0x00512b72    894120
                         {disp8} mov       edx, dword ptr [edi + 0x18]                          // 0x00512b75    8b5718
                         {disp32} mov      byte ptr [edx + 0x00000244], 0x01                    // 0x00512b78    c6824402000001
                         {disp8} mov       eax, dword ptr [edi + 0x18]                          // 0x00512b7f    8b4718
                         {disp32} mov      byte ptr [eax + 0x00000284], 0x01                    // 0x00512b82    c6808402000001
                         {disp32} mov      dword ptr [data_bytes + 0x300250], 0x00000000        // 0x00512b89    c7055062cc0000000000
                         call              _GetMidTextSize__Fv                                  // 0x00512b93    e8684eefff
                         {disp8} mov       ecx, dword ptr [edi + 0x10]                          // 0x00512b98    8b4f10
                         {disp8} mov       dword ptr [ecx + 0x20], eax                          // 0x00512b9b    894120
                         {disp8} mov       edx, dword ptr [edi + 0x18]                          // 0x00512b9e    8b5718
                         push              0x4                                                  // 0x00512ba1    6a04
                         {disp32} mov      byte ptr [edx + 0x0000023c], 0x01                    // 0x00512ba3    c6823c02000001
                         call              _jmp_addr_0x0053f540                                 // 0x00512baa    e891c90200
                         add               esp, 0x04                                            // 0x00512baf    83c404
                         pop               edi                                                  // 0x00512bb2    5f
                         pop               esi                                                  // 0x00512bb3    5e
                         ret               0x000c                                               // 0x00512bb4    c20c00
                         nop                                                                    // 0x00512bb7    90
                         nop                                                                    // 0x00512bb8    90
                         nop                                                                    // 0x00512bb9    90
                         nop                                                                    // 0x00512bba    90
                         nop                                                                    // 0x00512bbb    90
                         nop                                                                    // 0x00512bbc    90
                         nop                                                                    // 0x00512bbd    90
                         nop                                                                    // 0x00512bbe    90
                         nop                                                                    // 0x00512bbf    90
?Destroy@DialogBoxKeyBinding@@UAEXXZ:
                         {disp32} jmp      ?Destroy@DialogBoxBase@@UAEXXZ                       // 0x00512bc0    e9cb090000
                         nop                                                                    // 0x00512bc5    90
                         nop                                                                    // 0x00512bc6    90
                         nop                                                                    // 0x00512bc7    90
                         nop                                                                    // 0x00512bc8    90
                         nop                                                                    // 0x00512bc9    90
                         nop                                                                    // 0x00512bca    90
                         nop                                                                    // 0x00512bcb    90
                         nop                                                                    // 0x00512bcc    90
                         nop                                                                    // 0x00512bcd    90
                         nop                                                                    // 0x00512bce    90
                         nop                                                                    // 0x00512bcf    90
_InitControls__19DialogBoxKeyBindingFv:
                         sub               esp, 0x00000200                                      // 0x00512bd0    81ec00020000
                         push              ebx                                                  // 0x00512bd6    53
                         push              ebp                                                  // 0x00512bd7    55
                         push              esi                                                  // 0x00512bd8    56
                         push              edi                                                  // 0x00512bd9    57
                         mov.s             edi, ecx                                             // 0x00512bda    8bf9
                         {disp8} mov       esi, dword ptr [edi + 0x18]                          // 0x00512bdc    8b7718
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]                    // 0x00512bdf    8b8650020000
                         test              eax, eax                                             // 0x00512be5    85c0
                         {disp32} mov      ebx, dword ptr [esi + 0x0000027c]                    // 0x00512be7    8b9e7c020000
                         {disp32} mov      ebp, dword ptr [esi + 0x00000248]                    // 0x00512bed    8bae48020000
                         {disp8} jle       _jmp_addr_0x00512c08                                 // 0x00512bf3    7e13
_jmp_addr_0x00512bf5:    dec               eax                                                  // 0x00512bf5    48
                         push              eax                                                  // 0x00512bf6    50
                         mov.s             ecx, esi                                             // 0x00512bf7    8bce
                         call              @DeleteString__9SetupListFi@12                       // 0x00512bf9    e86281efff
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]                    // 0x00512bfe    8b8650020000
                         test              eax, eax                                             // 0x00512c04    85c0
                         {disp8} jg        _jmp_addr_0x00512bf5                                 // 0x00512c06    7fed
_jmp_addr_0x00512c08:    xor.s             esi, esi                                             // 0x00512c08    33f6
_jmp_addr_0x00512c0a:    {disp32} mov      ecx, dword ptr [_game]                               // 0x00512c0a    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250300]                    // 0x00512c10    8b8900032500
                         {disp8} lea       eax, dword ptr [esp + 0x10]                          // 0x00512c16    8d442410
                         push              eax                                                  // 0x00512c1a    50
                         push              esi                                                  // 0x00512c1b    56
                         call              @GetText__10ControlMapFUlPw@16                       // 0x00512c1c    e8efdcf5ff
                         {disp8} mov       ecx, dword ptr [edi + 0x18]                          // 0x00512c21    8b4f18
                         {disp8} lea       edx, dword ptr [esp + 0x10]                          // 0x00512c24    8d542410
                         push              edx                                                  // 0x00512c28    52
                         push              esi                                                  // 0x00512c29    56
                         call              @InsertString__9SetupListFiPw@16                     // 0x00512c2a    e84182efff
                         test              esi, esi                                             // 0x00512c2f    85f6
                         {disp8} mov       eax, dword ptr [edi + 0x18]                          // 0x00512c31    8b4718
                         {disp8} jl        _jmp_addr_0x00512c4b                                 // 0x00512c34    7c15
                         cmp               esi, dword ptr [eax + 0x00000250]                    // 0x00512c36    3bb050020000
                         {disp8} jge       _jmp_addr_0x00512c4b                                 // 0x00512c3c    7d0d
                         {disp32} mov      eax, dword ptr [eax + 0x0000026c]                    // 0x00512c3e    8b806c020000
                         mov               dword ptr [eax + esi * 0x4], 0x00512830              // 0x00512c44    c704b030285100
_jmp_addr_0x00512c4b:    {disp32} mov      ecx, dword ptr [_game]                               // 0x00512c4b    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250300]                    // 0x00512c51    8b8900032500
                         push              esi                                                  // 0x00512c57    56
                         call              _jmp_addr_0x00471620                                 // 0x00512c58    e8c3e9f5ff
                         inc               esi                                                  // 0x00512c5d    46
                         cmp               esi, 0x21                                            // 0x00512c5e    83fe21
                         .byte             0x72, 0xa7// {disp8} jb _jmp_addr_0x00512c0a         // 0x00512c61    72a7
                         {disp8} mov       edx, dword ptr [edi + 0x18]                          // 0x00512c63    8b5718
                         {disp32} mov      dword ptr [edx + 0x0000027c], ebx                    // 0x00512c66    899a7c020000
                         {disp8} mov       eax, dword ptr [edi + 0x18]                          // 0x00512c6c    8b4718
                         pop               edi                                                  // 0x00512c6f    5f
                         pop               esi                                                  // 0x00512c70    5e
                         {disp32} mov      dword ptr [eax + 0x00000248], ebp                    // 0x00512c71    89a848020000
                         pop               ebp                                                  // 0x00512c77    5d
                         {disp32} mov      dword ptr [data_bytes + 0x300250], 0x00000000        // 0x00512c78    c7055062cc0000000000
                         pop               ebx                                                  // 0x00512c82    5b
                         add               esp, 0x00000200                                      // 0x00512c83    81c400020000
                         ret                                                                    // 0x00512c89    c3
                         call              dword ptr [rdata_bytes + 0xa8]                       // 0x00512c8a    ff15a8908a00
                         {disp32} mov      al, byte ptr [data_bytes + 0x300254]                 // 0x00512c90    a05462cc00
                         test              al, al                                               // 0x00512c95    84c0
                         {disp8} je        _jmp_addr_0x00512cbb                                 // 0x00512c97    7422
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                          // 0x00512c99    8b4c2404
                         push              0x0000012c                                           // 0x00512c9d    682c010000
                         call              @FindControl__8SetupBoxFi@12                         // 0x00512ca2    e8b954efff
                         test              eax, eax                                             // 0x00512ca7    85c0
                         {disp8} je        _jmp_addr_0x00512cbb                                 // 0x00512ca9    7410
                         {disp32} mov      eax, dword ptr [_game]                               // 0x00512cab    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250308]                    // 0x00512cb0    8b8808032500
                         mov               edx, dword ptr [ecx]                                 // 0x00512cb6    8b11
                         {disp8} jmp       dword ptr [edx + 0x20]                               // 0x00512cb8    ff6220
_jmp_addr_0x00512cbb:    ret                                                                    // 0x00512cbb    c3
                         nop                                                                    // 0x00512cbc    90
                         nop                                                                    // 0x00512cbd    90
                         nop                                                                    // 0x00512cbe    90
                         nop                                                                    // 0x00512cbf    90
                         {disp8} mov       eax, dword ptr [esp + 0x08]                          // 0x00512cc0    8b442408
                         sub               esp, 0x00000480                                      // 0x00512cc4    81ec80040000
                         push              ebx                                                  // 0x00512cca    53
                         {disp32} mov      ebx, dword ptr [esp + 0x00000488]                    // 0x00512ccb    8b9c2488040000
                         push              ebp                                                  // 0x00512cd2    55
                         {disp32} mov      ebp, dword ptr [esp + 0x0000049c]                    // 0x00512cd3    8bac249c040000
                         push              esi                                                  // 0x00512cda    56
                         {disp32} mov      esi, dword ptr [esp + 0x0000049c]                    // 0x00512cdb    8bb4249c040000
                         push              edi                                                  // 0x00512ce2    57
                         {disp32} mov      edi, dword ptr [esp + 0x0000049c]                    // 0x00512ce3    8bbc249c040000
                         push              ebp                                                  // 0x00512cea    55
                         push              esi                                                  // 0x00512ceb    56
                         push              edi                                                  // 0x00512cec    57
                         push              eax                                                  // 0x00512ced    50
                         push              ebx                                                  // 0x00512cee    53
                         call              _jmp_addr_0x0053f3e0                                 // 0x00512cef    e8ecc60200
                         add               esp, 0x14                                            // 0x00512cf4    83c414
                         cmp               ebx, 0x0c                                            // 0x00512cf7    83fb0c
                         {disp32} ja       _jmp_addr_0x00513283                                 // 0x00512cfa    0f8783050000
                         jmp               dword ptr [ebx*4 + 0x513290]                         // 0x00512d00    ff249d90325100
                         cmp               dword ptr [edi + 0x18], 0x0000012c                   // 0x00512d07    817f182c010000
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x00512d0e    0f856f050000
                         {disp32} mov      ecx, dword ptr [edi + 0x00000248]                    // 0x00512d14    8b8f48020000
                         cmp               ecx, dword ptr [data_bytes + 0x222bdc]               // 0x00512d1a    3b0ddc8bbe00
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x00512d20    0f855d050000
                         push              0x0                                                  // 0x00512d26    6a00
                         mov               ebx, 0x00000001                                      // 0x00512d28    bb01000000
                         push              0x0                                                  // 0x00512d2d    6a00
                         mov               ecx, 0x00cc6148                                      // 0x00512d2f    b94861cc00
                         {disp32} mov      byte ptr [data_bytes + 0x300254], bl                 // 0x00512d34    881d5462cc00
                         call              _jmp_addr_0x0046eed0                                 // 0x00512d3a    e891c1f5ff
                         push              0x0                                                  // 0x00512d3f    6a00
                         mov               ecx, 0x00cc6040                                      // 0x00512d41    b94060cc00
                         call              _jmp_addr_0x0046f050                                 // 0x00512d46    e805c3f5ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x222bdc]               // 0x00512d4b    a1dc8bbe00
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x00512d50    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250300]                    // 0x00512d56    8b8900032500
                         {disp32} lea      edx, dword ptr [esp + 0x00000290]                    // 0x00512d5c    8d942490020000
                         push              edx                                                  // 0x00512d63    52
                         push              eax                                                  // 0x00512d64    50
                         call              _jmp_addr_0x004711d0                                 // 0x00512d65    e866e4f5ff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7d        // 0x00512d6a    813dac7cd1007d0d0000
                         {disp8} ja        _jmp_addr_0x00512d7d                                 // 0x00512d74    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x00512d76    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00512d89                                 // 0x00512d7b    eb0c
_jmp_addr_0x00512d7d:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]               // 0x00512d7d    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a1dc]                    // 0x00512d83    8d82dca10000
_jmp_addr_0x00512d89:    {disp8} mov       edx, dword ptr [eax + 0x08]                          // 0x00512d89    8b5008
                         {disp32} lea      ecx, dword ptr [esp + 0x00000290]                    // 0x00512d8c    8d8c2490020000
                         push              ecx                                                  // 0x00512d93    51
                         push              edx                                                  // 0x00512d94    52
                         {disp32} lea      eax, dword ptr [esp + 0x00000098]                    // 0x00512d95    8d842498000000
                         push              0x00be8c60                                           // 0x00512d9c    68608cbe00
                         push              eax                                                  // 0x00512da1    50
                         call              _swprintf                                            // 0x00512da2    e8d8362b00
                         {disp32} mov      esi, dword ptr [esp + 0x000004a8]                    // 0x00512da7    8bb424a8040000
                         add               esp, 0x10                                            // 0x00512dae    83c410
                         push              0x0000012f                                           // 0x00512db1    682f010000
                         push              0x2                                                  // 0x00512db6    6a02
                         {disp32} lea      ecx, dword ptr [esp + 0x00000098]                    // 0x00512db8    8d8c2498000000
                         push              ecx                                                  // 0x00512dbf    51
                         mov.s             ecx, esi                                             // 0x00512dc0    8bce
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20         // 0x00512dc2    e8c9e3efff
                         push              edi                                                  // 0x00512dc7    57
                         mov.s             ecx, esi                                             // 0x00512dc8    8bce
                         {disp8} mov       byte ptr [esi + 0x65], bl                            // 0x00512dca    885e65
                         call              @SetFocusControl__8SetupBoxFP12SetupControl@12       // 0x00512dcd    e86e63efff
                         pop               edi                                                  // 0x00512dd2    5f
                         pop               esi                                                  // 0x00512dd3    5e
                         pop               ebp                                                  // 0x00512dd4    5d
                         pop               ebx                                                  // 0x00512dd5    5b
                         add               esp, 0x00000480                                      // 0x00512dd6    81c480040000
                         ret               0x0014                                               // 0x00512ddc    c21400
                         cmp               ebp, 0x0000012f                                      // 0x00512ddf    81fd2f010000
                         {disp32} jne      _jmp_addr_0x00512e79                                 // 0x00512de5    0f858e000000
                         cmp               esi, 0x00002710                                      // 0x00512deb    81fe10270000
                         {disp8} jne       _jmp_addr_0x00512e65                                 // 0x00512df1    7572
                         {disp32} mov      ecx, dword ptr [esp + 0x00000498]                    // 0x00512df3    8b8c2498040000
                         push              0x0000012c                                           // 0x00512dfa    682c010000
                         call              @FindControl__8SetupBoxFi@12                         // 0x00512dff    e85c53efff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x300250]               // 0x00512e04    8b0d5062cc00
                         test              ecx, ecx                                             // 0x00512e0a    85c9
                         {disp8} je        _jmp_addr_0x00512e2f                                 // 0x00512e0c    7421
                         {disp32} mov      edx, dword ptr [data_bytes + 0x300040]               // 0x00512e0e    8b154060cc00
                         {disp32} mov      eax, dword ptr [eax + 0x00000248]                    // 0x00512e14    8b8048020000
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x00512e1a    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250300]                    // 0x00512e20    8b8900032500
                         push              edx                                                  // 0x00512e26    52
                         push              eax                                                  // 0x00512e27    50
                         call              _jmp_addr_0x004708a0                                 // 0x00512e28    e873daf5ff
                         {disp8} jmp       _jmp_addr_0x00512e54                                 // 0x00512e2d    eb25
_jmp_addr_0x00512e2f:    {disp32} mov      edx, dword ptr [data_bytes + 0x3001cc]               // 0x00512e2f    8b15cc61cc00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x300148]               // 0x00512e35    8b0d4861cc00
                         push              edx                                                  // 0x00512e3b    52
                         {disp32} mov      edx, dword ptr [eax + 0x00000248]                    // 0x00512e3c    8b9048020000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x00512e42    a15c19d000
                         push              ecx                                                  // 0x00512e47    51
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x00512e48    8b8800032500
                         push              edx                                                  // 0x00512e4e    52
                         call              _jmp_addr_0x00470810                                 // 0x00512e4f    e8bcd9f5ff
_jmp_addr_0x00512e54:    {disp32} mov      ecx, dword ptr [_game]                               // 0x00512e54    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250308]                    // 0x00512e5a    8b8908032500
                         mov               edx, dword ptr [ecx]                                 // 0x00512e60    8b11
                         call              dword ptr [edx + 0x20]                               // 0x00512e62    ff5220
_jmp_addr_0x00512e65:    pop               edi                                                  // 0x00512e65    5f
                         pop               esi                                                  // 0x00512e66    5e
                         pop               ebp                                                  // 0x00512e67    5d
                         {disp32} mov      byte ptr [data_bytes + 0x300254], 0x00               // 0x00512e68    c6055462cc0000
                         pop               ebx                                                  // 0x00512e6f    5b
                         add               esp, 0x00000480                                      // 0x00512e70    81c480040000
                         ret               0x0014                                               // 0x00512e76    c21400
_jmp_addr_0x00512e79:    cmp               ebp, 0x00000130                                      // 0x00512e79    81fd30010000
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x00512e7f    0f85fe030000
                         cmp               esi, 0x00002710                                      // 0x00512e85    81fe10270000
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x00512e8b    0f85f2030000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x00512e91    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x00512e96    8b8800032500
                         call              _jmp_addr_0x0046f890                                 // 0x00512e9c    e8efc9f5ff
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x00512ea1    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250308]                    // 0x00512ea7    8b8908032500
                         mov               edx, dword ptr [ecx]                                 // 0x00512ead    8b11
                         call              dword ptr [edx + 0x20]                               // 0x00512eaf    ff5220
                         pop               edi                                                  // 0x00512eb2    5f
                         pop               esi                                                  // 0x00512eb3    5e
                         pop               ebp                                                  // 0x00512eb4    5d
                         pop               ebx                                                  // 0x00512eb5    5b
                         add               esp, 0x00000480                                      // 0x00512eb6    81c480040000
                         ret               0x0014                                               // 0x00512ebc    c21400
                         {disp32} mov      al, byte ptr [data_bytes + 0x300254]                 // 0x00512ebf    a05462cc00
                         test              al, al                                               // 0x00512ec4    84c0
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x00512ec6    0f84b7030000
                         {disp32} mov      ebx, dword ptr [esp + 0x00000498]                    // 0x00512ecc    8b9c2498040000
                         push              0x00002710                                           // 0x00512ed3    6810270000
                         mov.s             ecx, ebx                                             // 0x00512ed8    8bcb
                         call              @FindControl__8SetupBoxFi@12                         // 0x00512eda    e88152efff
                         push              0x00002711                                           // 0x00512edf    6811270000
                         mov.s             ecx, ebx                                             // 0x00512ee4    8bcb
                         mov.s             edi, eax                                             // 0x00512ee6    8bf8
                         call              @FindControl__8SetupBoxFi@12                         // 0x00512ee8    e87352efff
                         test              edi, edi                                             // 0x00512eed    85ff
                         mov.s             ebx, eax                                             // 0x00512eef    8bd8
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x00512ef1    0f848c030000
                         test              ebx, ebx                                             // 0x00512ef7    85db
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x00512ef9    0f8484030000
                         mov               eax, dword ptr [edi]                                 // 0x00512eff    8b07
                         push              ebp                                                  // 0x00512f01    55
                         push              esi                                                  // 0x00512f02    56
                         mov.s             ecx, edi                                             // 0x00512f03    8bcf
                         call              dword ptr [eax + 0x10]                               // 0x00512f05    ff5010
                         test              al, al                                               // 0x00512f08    84c0
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x00512f0a    0f8573030000
                         mov               edx, dword ptr [ebx]                                 // 0x00512f10    8b13
                         push              ebp                                                  // 0x00512f12    55
                         push              esi                                                  // 0x00512f13    56
                         mov.s             ecx, ebx                                             // 0x00512f14    8bcb
                         call              dword ptr [edx + 0x10]                               // 0x00512f16    ff5210
                         test              al, al                                               // 0x00512f19    84c0
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x00512f1b    0f8562030000
                         {disp32} mov      al, byte ptr [data_bytes + 0x4bf304]                 // 0x00512f21    a00453e800
                         mov               ebx, 0x00000001                                      // 0x00512f26    bb01000000
                         test              bl, al                                               // 0x00512f2b    84c3
                         {disp8} je        _jmp_addr_0x00512f3d                                 // 0x00512f2d    740e
                         {disp32} mov      dword ptr [data_bytes + 0x30003c], ebx               // 0x00512f2f    891d3c60cc00
                         {disp32} mov      dword ptr [data_bytes + 0x300250], ebx               // 0x00512f35    891d5062cc00
                         {disp8} jmp       _jmp_addr_0x00512fa1                                 // 0x00512f3b    eb64
_jmp_addr_0x00512f3d:    test              al, 0x02                                             // 0x00512f3d    a802
                         {disp8} je        _jmp_addr_0x00512f53                                 // 0x00512f3f    7412
                         {disp32} mov      dword ptr [data_bytes + 0x30003c], 0x00000005        // 0x00512f41    c7053c60cc0005000000
                         {disp32} mov      dword ptr [data_bytes + 0x300250], ebx               // 0x00512f4b    891d5062cc00
                         {disp8} jmp       _jmp_addr_0x00512fa1                                 // 0x00512f51    eb4e
_jmp_addr_0x00512f53:    test              al, 0x40                                             // 0x00512f53    a840
                         {disp8} je        _jmp_addr_0x00512f69                                 // 0x00512f55    7412
                         {disp32} mov      dword ptr [data_bytes + 0x30003c], 0x00000002        // 0x00512f57    c7053c60cc0002000000
                         {disp32} mov      dword ptr [data_bytes + 0x300250], ebx               // 0x00512f61    891d5062cc00
                         {disp8} jmp       _jmp_addr_0x00512fa1                                 // 0x00512f67    eb38
_jmp_addr_0x00512f69:    {disp32} mov      eax, dword ptr [data_bytes + 0x4bf300]               // 0x00512f69    a10053e800
                         test              eax, eax                                             // 0x00512f6e    85c0
                         {disp8} je        _jmp_addr_0x00512f94                                 // 0x00512f70    7422
                         xor.s             ecx, ecx                                             // 0x00512f72    33c9
                         test              eax, eax                                             // 0x00512f74    85c0
                         setl              cl                                                   // 0x00512f76    0f9cc1
                         {disp32} mov      dword ptr [data_bytes + 0x4bf300], 0x00000000        // 0x00512f79    c7050053e80000000000
                         {disp32} mov      dword ptr [data_bytes + 0x300250], ebx               // 0x00512f83    891d5062cc00
                         add               ecx, 0x3                                             // 0x00512f89    83c103
                         {disp32} mov      dword ptr [data_bytes + 0x30003c], ecx               // 0x00512f8c    890d3c60cc00
                         {disp8} jmp       _jmp_addr_0x00512fa1                                 // 0x00512f92    eb0d
_jmp_addr_0x00512f94:    {disp32} mov      eax, dword ptr [data_bytes + 0x300250]               // 0x00512f94    a15062cc00
                         test              eax, eax                                             // 0x00512f99    85c0
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x00512f9b    0f84e2020000
_jmp_addr_0x00512fa1:    {disp32} mov      edx, dword ptr [data_bytes + 0x30003c]               // 0x00512fa1    8b153c60cc00
                         push              edx                                                  // 0x00512fa7    52
                         mov               ecx, 0x00cc6040                                      // 0x00512fa8    b94060cc00
                         call              _jmp_addr_0x0046f050                                 // 0x00512fad    e89ec0f5ff
                         {disp8} lea       eax, dword ptr [esp + 0x10]                          // 0x00512fb2    8d442410
                         push              eax                                                  // 0x00512fb6    50
                         mov               ecx, 0x00cc6040                                      // 0x00512fb7    b94060cc00
                         call              @GetDisplayText__12ControlMouseFPw@12                // 0x00512fbc    e8bfc1f5ff
                         {disp32} mov      edx, dword ptr [data_bytes + 0x222bdc]               // 0x00512fc1    8b15dc8bbe00
                         {disp32} mov      eax, dword ptr [_game]                               // 0x00512fc7    a15c19d000
                         {disp32} lea      ecx, dword ptr [esp + 0x00000090]                    // 0x00512fcc    8d8c2490000000
                         push              ecx                                                  // 0x00512fd3    51
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x00512fd4    8b8800032500
                         push              edx                                                  // 0x00512fda    52
                         call              _jmp_addr_0x004711d0                                 // 0x00512fdb    e8f0e1f5ff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7d        // 0x00512fe0    813dac7cd1007d0d0000
                         {disp8} ja        _jmp_addr_0x00512ff3                                 // 0x00512fea    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x00512fec    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00512fff                                 // 0x00512ff1    eb0c
_jmp_addr_0x00512ff3:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]               // 0x00512ff3    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a1dc]                    // 0x00512ff9    8d81dca10000
_jmp_addr_0x00512fff:    {disp8} mov       eax, dword ptr [eax + 0x08]                          // 0x00512fff    8b4008
                         {disp8} lea       edx, dword ptr [esp + 0x10]                          // 0x00513002    8d542410
                         push              edx                                                  // 0x00513006    52
                         {disp32} lea      ecx, dword ptr [esp + 0x00000094]                    // 0x00513007    8d8c2494000000
                         push              ecx                                                  // 0x0051300e    51
                         {disp32} mov      ecx, dword ptr [esp + 0x000004a0]                    // 0x0051300f    8b8c24a0040000
                         push              eax                                                  // 0x00513016    50
                         push              0x00be8c4c                                           // 0x00513017    684c8cbe00
                         push              0x0000270f                                           // 0x0051301c    680f270000
                         call              @FindControl__8SetupBoxFi@12                         // 0x00513021    e83a51efff
                         add               eax, 0x24                                            // 0x00513026    83c024
                         push              eax                                                  // 0x00513029    50
                         call              dword ptr [__imp__UNICODE_sprintf__YAHPAG0ZZ@4]      // 0x0051302a    ff1560938a00
                         add               esp, 0x14                                            // 0x00513030    83c414
                         pop               edi                                                  // 0x00513033    5f
                         pop               esi                                                  // 0x00513034    5e
                         pop               ebp                                                  // 0x00513035    5d
                         pop               ebx                                                  // 0x00513036    5b
                         add               esp, 0x00000480                                      // 0x00513037    81c480040000
                         ret               0x0014                                               // 0x0051303d    c21400
                         {disp32} mov      edx, dword ptr [_game]                               // 0x00513040    8b155c19d000
                         {disp32} mov      byte ptr [data_bytes + 0x300254], 0x00               // 0x00513046    c6055462cc0000
                         {disp32} mov      ecx, dword ptr [edx + 0x00250308]                    // 0x0051304d    8b8a08032500
                         mov               eax, dword ptr [ecx]                                 // 0x00513053    8b01
                         call              dword ptr [eax + 0x20]                               // 0x00513055    ff5020
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x00513058    8b0d5c19d000
                         {disp32} mov      dword ptr [data_bytes + 0x222bdc], 0x00000000        // 0x0051305e    c705dc8bbe0000000000
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x00513068    e8e3270400
                         mov               edx, dword ptr [eax]                                 // 0x0051306d    8b10
                         mov.s             ecx, eax                                             // 0x0051306f    8bc8
                         call              dword ptr [edx + 0x40c]                              // 0x00513071    ff920c040000
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x00513077    8b0d5c19d000
                         {disp32} mov      edx, dword ptr [ecx + 0x00250308]                    // 0x0051307d    8b9108032500
                         pop               edi                                                  // 0x00513083    5f
                         pop               esi                                                  // 0x00513084    5e
                         {disp8} mov       dword ptr [edx + 0x08], eax                          // 0x00513085    894208
                         {disp32} mov      eax, dword ptr [esp + 0x00000490]                    // 0x00513088    8b842490040000
                         pop               ebp                                                  // 0x0051308f    5d
                         {disp8} mov       byte ptr [eax + 0x65], 0x01                          // 0x00513090    c6406501
                         pop               ebx                                                  // 0x00513094    5b
                         add               esp, 0x00000480                                      // 0x00513095    81c480040000
                         ret               0x0014                                               // 0x0051309b    c21400
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0051309e    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250300]                    // 0x005130a4    8b8900032500
                         call              _jmp_addr_0x004714f0                                 // 0x005130aa    e841e4f5ff
                         pop               edi                                                  // 0x005130af    5f
                         pop               esi                                                  // 0x005130b0    5e
                         pop               ebp                                                  // 0x005130b1    5d
                         pop               ebx                                                  // 0x005130b2    5b
                         add               esp, 0x00000480                                      // 0x005130b3    81c480040000
                         ret               0x0014                                               // 0x005130b9    c21400
                         test              edi, edi                                             // 0x005130bc    85ff
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x005130be    0f84bf010000
                         {disp8} mov       eax, dword ptr [edi + 0x18]                          // 0x005130c4    8b4718
                         sub               eax, 0x0000012c                                      // 0x005130c7    2d2c010000
                         {disp8} je        _jmp_addr_0x00513147                                 // 0x005130cc    7479
                         dec               eax                                                  // 0x005130ce    48
                         {disp8} je        _jmp_addr_0x005130fb                                 // 0x005130cf    742a
                         dec               eax                                                  // 0x005130d1    48
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x005130d2    0f85ab010000
                         {disp32} mov      edx, dword ptr [_game]                               // 0x005130d8    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x00250300]                    // 0x005130de    8b8a00032500
                         call              _jmp_addr_0x004714f0                                 // 0x005130e4    e807e4f5ff
                         call              _jmp_addr_0x00513640                                 // 0x005130e9    e852050000
                         pop               edi                                                  // 0x005130ee    5f
                         pop               esi                                                  // 0x005130ef    5e
                         pop               ebp                                                  // 0x005130f0    5d
                         pop               ebx                                                  // 0x005130f1    5b
                         add               esp, 0x00000480                                      // 0x005130f2    81c480040000
                         ret               0x0014                                               // 0x005130f8    c21400
_jmp_addr_0x005130fb:    {disp32} mov      esi, dword ptr [esp + 0x00000498]                    // 0x005130fb    8bb42498040000
                         test              esi, esi                                             // 0x00513102    85f6
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x00513104    0f8479010000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7c        // 0x0051310a    813dac7cd1007c0d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x00513114    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x00513120                                 // 0x00513119    7605
                         add               eax, 0x0000a1d0                                      // 0x0051311b    05d0a10000
_jmp_addr_0x00513120:    {disp8} mov       ecx, dword ptr [eax + 0x08]                          // 0x00513120    8b4808
                         push              0x00000130                                           // 0x00513123    6830010000
                         push              0x2                                                  // 0x00513128    6a02
                         push              ecx                                                  // 0x0051312a    51
                         mov.s             ecx, esi                                             // 0x0051312b    8bce
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20         // 0x0051312d    e85ee0efff
                         push              edi                                                  // 0x00513132    57
                         mov.s             ecx, esi                                             // 0x00513133    8bce
                         call              @SetFocusControl__8SetupBoxFP12SetupControl@12       // 0x00513135    e80660efff
                         pop               edi                                                  // 0x0051313a    5f
                         pop               esi                                                  // 0x0051313b    5e
                         pop               ebp                                                  // 0x0051313c    5d
                         pop               ebx                                                  // 0x0051313d    5b
                         add               esp, 0x00000480                                      // 0x0051313e    81c480040000
                         ret               0x0014                                               // 0x00513144    c21400
_jmp_addr_0x00513147:    {disp32} mov      edx, dword ptr [edi + 0x00000248]                    // 0x00513147    8b9748020000
                         pop               edi                                                  // 0x0051314d    5f
                         pop               esi                                                  // 0x0051314e    5e
                         pop               ebp                                                  // 0x0051314f    5d
                         {disp32} mov      dword ptr [data_bytes + 0x222bdc], edx               // 0x00513150    8915dc8bbe00
                         pop               ebx                                                  // 0x00513156    5b
                         add               esp, 0x00000480                                      // 0x00513157    81c480040000
                         ret               0x0014                                               // 0x0051315d    c21400
                         test              edi, edi                                             // 0x00513160    85ff
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x00513162    0f841b010000
                         {disp32} mov      edi, dword ptr [esp + 0x00000498]                    // 0x00513168    8bbc2498040000
                         push              0x0000012c                                           // 0x0051316f    682c010000
                         mov.s             ecx, edi                                             // 0x00513174    8bcf
                         call              @FindControl__8SetupBoxFi@12                         // 0x00513176    e8e54fefff
                         {disp32} mov      al, byte ptr [data_bytes + 0x300254]                 // 0x0051317b    a05462cc00
                         test              al, al                                               // 0x00513180    84c0
                         {disp32} je       _jmp_addr_0x00513283                                 // 0x00513182    0f84fb000000
                         push              esi                                                  // 0x00513188    56
                         call              _jmp_addr_0x0046f7c0                                 // 0x00513189    e832c6f5ff
                         add               esp, 0x04                                            // 0x0051318e    83c404
                         cmp               eax, 0x01                                            // 0x00513191    83f801
                         {disp32} jne      _jmp_addr_0x00513283                                 // 0x00513194    0f85e9000000
                         xor.s             eax, eax                                             // 0x0051319a    33c0
                         {disp32} mov      ax, word ptr [rdata_bytes + 0xf861c]                 // 0x0051319c    66a11c169a00
                         test              ebp, eax                                             // 0x005131a2    85c5
                         {disp8} je        _jmp_addr_0x005131b4                                 // 0x005131a4    740e
                         cmp               esi, 0x2a                                            // 0x005131a6    83fe2a
                         {disp8} je        _jmp_addr_0x005131f0                                 // 0x005131a9    7445
                         cmp               esi, 0x36                                            // 0x005131ab    83fe36
                         {disp8} je        _jmp_addr_0x005131f0                                 // 0x005131ae    7440
                         push              0x2a                                                 // 0x005131b0    6a2a
                         {disp8} jmp       _jmp_addr_0x005131f2                                 // 0x005131b2    eb3e
_jmp_addr_0x005131b4:    xor.s             ecx, ecx                                             // 0x005131b4    33c9
                         {disp32} mov      cx, word ptr [rdata_bytes + 0xf861e]                 // 0x005131b6    668b0d1e169a00
                         test              ebp, ecx                                             // 0x005131bd    85cd
                         {disp8} je        _jmp_addr_0x005131d2                                 // 0x005131bf    7411
                         cmp               esi, 0x1d                                            // 0x005131c1    83fe1d
                         {disp8} je        _jmp_addr_0x005131f0                                 // 0x005131c4    742a
                         cmp               esi, 0x0000009d                                      // 0x005131c6    81fe9d000000
                         {disp8} je        _jmp_addr_0x005131f0                                 // 0x005131cc    7422
                         push              0x1d                                                 // 0x005131ce    6a1d
                         {disp8} jmp       _jmp_addr_0x005131f2                                 // 0x005131d0    eb20
_jmp_addr_0x005131d2:    xor.s             edx, edx                                             // 0x005131d2    33d2
                         {disp32} mov      dx, word ptr [rdata_bytes + 0xf8620]                 // 0x005131d4    668b1520169a00
                         test              ebp, edx                                             // 0x005131db    85d5
                         {disp8} je        _jmp_addr_0x005131f0                                 // 0x005131dd    7411
                         cmp               esi, 0x38                                            // 0x005131df    83fe38
                         {disp8} je        _jmp_addr_0x005131f0                                 // 0x005131e2    740c
                         cmp               esi, 0x000000b8                                      // 0x005131e4    81feb8000000
                         {disp8} je        _jmp_addr_0x005131f0                                 // 0x005131ea    7404
                         push              0x38                                                 // 0x005131ec    6a38
                         {disp8} jmp       _jmp_addr_0x005131f2                                 // 0x005131ee    eb02
_jmp_addr_0x005131f0:    push              0x0                                                  // 0x005131f0    6a00
_jmp_addr_0x005131f2:    push              esi                                                  // 0x005131f2    56
                         mov               ecx, 0x00cc6148                                      // 0x005131f3    b94861cc00
                         call              _jmp_addr_0x0046eed0                                 // 0x005131f8    e8d3bcf5ff
                         {disp8} lea       eax, dword ptr [esp + 0x10]                          // 0x005131fd    8d442410
                         push              eax                                                  // 0x00513201    50
                         mov               ecx, 0x00cc6148                                      // 0x00513202    b94861cc00
                         call              @GetDisplayText__10ControlKeyFPw@12                  // 0x00513207    e8d4bdf5ff
                         {disp32} mov      edx, dword ptr [data_bytes + 0x222bdc]               // 0x0051320c    8b15dc8bbe00
                         {disp32} mov      eax, dword ptr [_game]                               // 0x00513212    a15c19d000
                         {disp32} lea      ecx, dword ptr [esp + 0x00000090]                    // 0x00513217    8d8c2490000000
                         push              ecx                                                  // 0x0051321e    51
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x0051321f    8b8800032500
                         push              edx                                                  // 0x00513225    52
                         call              _jmp_addr_0x004711d0                                 // 0x00513226    e8a5dff5ff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7d        // 0x0051322b    813dac7cd1007d0d0000
                         {disp8} ja        _jmp_addr_0x0051323e                                 // 0x00513235    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x00513237    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0051324a                                 // 0x0051323c    eb0c
_jmp_addr_0x0051323e:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0051323e    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a1dc]                    // 0x00513244    8d81dca10000
_jmp_addr_0x0051324a:    {disp8} mov       eax, dword ptr [eax + 0x08]                          // 0x0051324a    8b4008
                         {disp8} lea       edx, dword ptr [esp + 0x10]                          // 0x0051324d    8d542410
                         push              edx                                                  // 0x00513251    52
                         {disp32} lea      ecx, dword ptr [esp + 0x00000094]                    // 0x00513252    8d8c2494000000
                         push              ecx                                                  // 0x00513259    51
                         push              eax                                                  // 0x0051325a    50
                         push              0x00be8c4c                                           // 0x0051325b    684c8cbe00
                         push              0x0000270f                                           // 0x00513260    680f270000
                         mov.s             ecx, edi                                             // 0x00513265    8bcf
                         call              @FindControl__8SetupBoxFi@12                         // 0x00513267    e8f44eefff
                         add               eax, 0x24                                            // 0x0051326c    83c024
                         push              eax                                                  // 0x0051326f    50
                         call              dword ptr [__imp__UNICODE_sprintf__YAHPAG0ZZ@4]      // 0x00513270    ff1560938a00
                         add               esp, 0x14                                            // 0x00513276    83c414
                         {disp32} mov      dword ptr [data_bytes + 0x300250], 0x00000000        // 0x00513279    c7055062cc0000000000
_jmp_addr_0x00513283:    pop               edi                                                  // 0x00513283    5f
                         pop               esi                                                  // 0x00513284    5e
                         pop               ebp                                                  // 0x00513285    5d
                         pop               ebx                                                  // 0x00513286    5b
                         add               esp, 0x00000480                                      // 0x00513287    81c480040000
                         ret               0x0014                                               // 0x0051328d    c21400

// Snippet: jmptbl, [0x00513290, 0x005132c4)
.byte 0xbf, 0x2e, 0x51, 0x00      // 0x00513290
.byte 0xbc, 0x30, 0x51, 0x00      // 0x00513294
.byte 0x60, 0x31, 0x51, 0x00      // 0x00513298
.byte 0xdf, 0x2d, 0x51, 0x00      // 0x0051329c
.byte 0x83, 0x32, 0x51, 0x00      // 0x005132a0
.byte 0x83, 0x32, 0x51, 0x00      // 0x005132a4
.byte 0x40, 0x30, 0x51, 0x00      // 0x005132a8
.byte 0x9e, 0x30, 0x51, 0x00      // 0x005132ac
.byte 0x83, 0x32, 0x51, 0x00      // 0x005132b0
.byte 0x83, 0x32, 0x51, 0x00      // 0x005132b4
.byte 0x83, 0x32, 0x51, 0x00      // 0x005132b8
.byte 0x83, 0x32, 0x51, 0x00      // 0x005132bc
.byte 0x07, 0x2d, 0x51, 0x00      // 0x005132c0

// Snippet: db, [0x005132c4, 0x005132d0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005132c4
.byte 0x90, 0x90, 0x90, 0x90      // 0x005132c8
.byte 0x90, 0x90, 0x90, 0x90      // 0x005132cc

