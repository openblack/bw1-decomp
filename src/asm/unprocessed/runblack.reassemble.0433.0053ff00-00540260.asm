.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern _jmp_addr_0x004713d0
.extern _jmp_addr_0x004714f0
.extern _jmp_addr_0x00513640
.extern _HideAll__13DialogBoxBaseFv@0
.extern ?SetCursorOn@FrontEnd@@SAXXZ
.extern _jmp_addr_0x0053c470
.extern _jmp_addr_0x0053f740
.extern _jmp_addr_0x0054ae20
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x005553f0
.extern _jmp_addr_0x00555400
.extern _jmp_addr_0x005558d0

.globl _jmp_addr_0x00540020

start_0x0053ff00_0x00540260:
// Snippet: asm, [0x0053ff00, 0x0054022d)
                         call             _jmp_addr_0x00513640                          // 0x0053ff00    e83b37fdff
                         push             0x0                                           // 0x0053ff05    6a00
                         call             _jmp_addr_0x0054ae20                          // 0x0053ff07    e814af0000
                         pop              ecx                                           // 0x0053ff0c    59
                         ret                                                            // 0x0053ff0d    c3
                         nop                                                            // 0x0053ff0e    90
                         nop                                                            // 0x0053ff0f    90
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0053ff10    8b0d5c19d000
                         call             ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0053ff16    e865300100
                         test             eax, eax                                      // 0x0053ff1b    85c0
                         {disp8} je       _jmp_addr_0x0053ff49                          // 0x0053ff1d    742a
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0053ff1f    8b0d5c19d000
                         xor.s            eax, eax                                      // 0x0053ff25    33c0
                         {disp32} mov     al, byte ptr [ecx + 0x00205a59]               // 0x0053ff27    8a81595a2000
                         lea              edx, dword ptr [eax + eax * 0x4]              // 0x0053ff2d    8d1480
                         lea              edx, dword ptr [eax + edx * 0x8]              // 0x0053ff30    8d14d0
                         lea              eax, dword ptr [eax + edx * 0x2]              // 0x0053ff33    8d0450
                         shl              eax, 5                                        // 0x0053ff36    c1e005
                         {disp32} mov     edx, dword ptr [eax + ecx * 0x1 + 0x00000950] // 0x0053ff39    8b940850090000
                         test             edx, edx                                      // 0x0053ff40    85d2
                         {disp8} jne      _jmp_addr_0x0053ff49                          // 0x0053ff42    7505
                         {disp32} jmp     _jmp_addr_0x005558d0                          // 0x0053ff44    e987590100
_jmp_addr_0x0053ff49:    call             dword ptr [rdata_bytes + 0x3ec]               // 0x0053ff49    ff15ec938a00
                         {disp32} mov     ecx, dword ptr [rdata_bytes + 0x3e8]          // 0x0053ff4f    8b0de8938a00
                         cmp              dword ptr [ecx], 0x00                         // 0x0053ff55    833900
                         {disp8} je       _jmp_addr_0x0053ff65                          // 0x0053ff58    740b
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0053ff5a    8b0d5c19d000
                         {disp32} jmp     _jmp_addr_0x00555400                          // 0x0053ff60    e99b540100
_jmp_addr_0x0053ff65:    cmp              dword ptr [data_bytes + 0x351cac], 0x00000d9c // 0x0053ff65    813dac7cd1009c0d0000
                         {disp8} ja       _jmp_addr_0x0053ff88                          // 0x0053ff6f    7717
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053ff71    a1a87cd100
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0053ff76    8b4008
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x0053ff79    8b4c2404
                         push             0x0                                           // 0x0053ff7d    6a00
                         push             0x0                                           // 0x0053ff7f    6a00
                         push             eax                                           // 0x0053ff81    50
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0053ff82    e80912edff
                         ret                                                            // 0x0053ff87    c3
_jmp_addr_0x0053ff88:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053ff88    8b15a87cd100
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x0053ff8e    8b4c2404
                         {disp32} lea     eax, dword ptr [edx + 0x0000a350]             // 0x0053ff92    8d8250a30000
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0053ff98    8b4008
                         push             0x0                                           // 0x0053ff9b    6a00
                         push             0x0                                           // 0x0053ff9d    6a00
                         push             eax                                           // 0x0053ff9f    50
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0053ffa0    e8eb11edff
                         ret                                                            // 0x0053ffa5    c3
                         nop                                                            // 0x0053ffa6    90
                         nop                                                            // 0x0053ffa7    90
                         nop                                                            // 0x0053ffa8    90
                         nop                                                            // 0x0053ffa9    90
                         nop                                                            // 0x0053ffaa    90
                         nop                                                            // 0x0053ffab    90
                         nop                                                            // 0x0053ffac    90
                         nop                                                            // 0x0053ffad    90
                         nop                                                            // 0x0053ffae    90
                         nop                                                            // 0x0053ffaf    90
                         {disp32} mov     eax, dword ptr [_game]                        // 0x0053ffb0    a15c19d000
                         mov              cl, 0x01                                      // 0x0053ffb5    b101
                         {disp32} mov     byte ptr [data_bytes + 0x30ab02], cl          // 0x0053ffb7    880d020bcd00
                         {disp32} mov     edx, dword ptr [eax + 0x00205a0c]             // 0x0053ffbd    8b900c5a2000
                         test             edx, edx                                      // 0x0053ffc3    85d2
                         {disp8} je       _jmp_addr_0x0053fff5                          // 0x0053ffc5    742e
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001ac8 // 0x0053ffc7    813dac7cd100c81a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053ffd1    a1a87cd100
                         {disp32} mov     byte ptr [data_bytes + 0x30ab02], cl          // 0x0053ffd6    880d020bcd00
                         {disp8} jbe      _jmp_addr_0x0053ffe3                          // 0x0053ffdc    7605
                         add              eax, 0x00014160                               // 0x0053ffde    0560410100
_jmp_addr_0x0053ffe3:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x0053ffe3    8b4808
                         push             0x0                                           // 0x0053ffe6    6a00
                         push             0x3                                           // 0x0053ffe8    6a03
                         push             ecx                                           // 0x0053ffea    51
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0053ffeb    8b4c2410
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0053ffef    e89c11edff
                         ret                                                            // 0x0053fff4    c3
_jmp_addr_0x0053fff5:    {disp32} mov     dword ptr [eax + 0x00250180], 0x00000005      // 0x0053fff5    c7808001250005000000
                         ret                                                            // 0x0053ffff    c3
                         {disp32} mov     eax, dword ptr [_game]                        // 0x00540000    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x00250304]             // 0x00540005    8b8804032500
                         {disp8} mov      ecx, dword ptr [ecx + 0x60]                   // 0x0054000b    8b4960
                         mov              edx, dword ptr [ecx]                          // 0x0054000e    8b11
                         {disp8} jmp      dword ptr [edx + 0xc]                         // 0x00540010    ff620c
                         nop                                                            // 0x00540013    90
                         nop                                                            // 0x00540014    90
                         nop                                                            // 0x00540015    90
                         nop                                                            // 0x00540016    90
                         nop                                                            // 0x00540017    90
                         nop                                                            // 0x00540018    90
                         nop                                                            // 0x00540019    90
                         nop                                                            // 0x0054001a    90
                         nop                                                            // 0x0054001b    90
                         nop                                                            // 0x0054001c    90
                         nop                                                            // 0x0054001d    90
                         nop                                                            // 0x0054001e    90
                         nop                                                            // 0x0054001f    90
_jmp_addr_0x00540020:    call             dword ptr [__imp__timeGetTime@4]              // 0x00540020    ff158c988a00
                         sub              eax, dword ptr [data_bytes + 0x224294]        // 0x00540026    2b0594a2be00
                         cmp              eax, 0x0000012c                               // 0x0054002c    3d2c010000
                         {disp8} jg       _jmp_addr_0x0054003a                          // 0x00540031    7f07
                         test             eax, eax                                      // 0x00540033    85c0
                         {disp8} jl       _jmp_addr_0x0054003a                          // 0x00540035    7c03
                         xor.s            al, al                                        // 0x00540037    32c0
                         ret                                                            // 0x00540039    c3
_jmp_addr_0x0054003a:    mov              al, 0x01                                      // 0x0054003a    b001
                         ret                                                            // 0x0054003c    c3
                         nop                                                            // 0x0054003d    90
                         nop                                                            // 0x0054003e    90
                         nop                                                            // 0x0054003f    90
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x00540040    8b442414
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x00540044    8b4c2408
                         push             ebp                                           // 0x00540048    55
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                   // 0x00540049    8b6c2414
                         push             esi                                           // 0x0054004d    56
                         {disp8} mov      esi, dword ptr [esp + 0x14]                   // 0x0054004e    8b742414
                         push             edi                                           // 0x00540052    57
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x00540053    8b7c2410
                         push             eax                                           // 0x00540057    50
                         push             ebp                                           // 0x00540058    55
                         push             esi                                           // 0x00540059    56
                         push             ecx                                           // 0x0054005a    51
                         push             edi                                           // 0x0054005b    57
                         call             _jmp_addr_0x0053f740                          // 0x0054005c    e8dff6ffff
                         {disp8} lea      eax, dword ptr [edi + -0x01]                  // 0x00540061    8d47ff
                         add              esp, 0x14                                     // 0x00540064    83c414
                         cmp              eax, 0x0e                                     // 0x00540067    83f80e
                         {disp32} ja      _jmp_addr_0x00540227                          // 0x0054006a    0f87b7010000
                         xor.s            edx, edx                                      // 0x00540070    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x00540248]               // 0x00540072    8a9048025400
                         jmp              dword ptr [edx*4 + 0x540230]                  // 0x00540078    ff249530025400
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab60]        // 0x0054007f    8b0d600bcd00
                         mov              eax, dword ptr [ecx]                          // 0x00540085    8b01
                         call             dword ptr [eax + 0x20]                        // 0x00540087    ff5020
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0054008a    8b0d5c19d000
                         {disp32} mov     ecx, dword ptr [ecx + 0x00250300]             // 0x00540090    8b8900032500
                         call             _jmp_addr_0x004713d0                          // 0x00540096    e83513f3ff
                         call             ?SetCursorOn@FrontEnd@@SAXXZ                  // 0x0054009b    e8b0c3ffff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x005400a0    8b0d5c19d000
                         {disp32} mov     byte ptr [data_bytes + 0x30ab00], 0x00        // 0x005400a6    c605000bcd0000
                         {disp32} mov     byte ptr [data_bytes + 0x30ab02], 0x00        // 0x005400ad    c605020bcd0000
                         call             ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x005400b4    e8c72e0100
                         test             eax, eax                                      // 0x005400b9    85c0
                         {disp32} jne     _jmp_addr_0x00540227                          // 0x005400bb    0f8566010000
                         push             0x1                                           // 0x005400c1    6a01
                         call             _jmp_addr_0x0054ae20                          // 0x005400c3    e858ad0000
                         add              esp, 0x04                                     // 0x005400c8    83c404
                         pop              edi                                           // 0x005400cb    5f
                         pop              esi                                           // 0x005400cc    5e
                         pop              ebp                                           // 0x005400cd    5d
                         ret              0x0014                                        // 0x005400ce    c21400
                         push             0x0                                           // 0x005400d1    6a00
                         call             _jmp_addr_0x0054ae20                          // 0x005400d3    e848ad0000
                         add              esp, 0x04                                     // 0x005400d8    83c404
                         call             _jmp_addr_0x00513640                          // 0x005400db    e86035fdff
                         {disp32} mov     byte ptr [data_bytes + 0x30ab03], 0x00        // 0x005400e0    c605030bcd0000
                         call             _jmp_addr_0x0053c470                          // 0x005400e7    e884c3ffff
                         pop              edi                                           // 0x005400ec    5f
                         pop              esi                                           // 0x005400ed    5e
                         pop              ebp                                           // 0x005400ee    5d
                         ret              0x0014                                        // 0x005400ef    c21400
                         {disp32} mov     edx, dword ptr [_game]                        // 0x005400f2    8b155c19d000
                         {disp32} mov     ecx, dword ptr [edx + 0x00250300]             // 0x005400f8    8b8a00032500
                         call             _jmp_addr_0x004714f0                          // 0x005400fe    e8ed13f3ff
                         call             dword ptr [__imp__timeGetTime@4]              // 0x00540103    ff158c988a00
                         pop              edi                                           // 0x00540109    5f
                         pop              esi                                           // 0x0054010a    5e
                         {disp32} mov     dword ptr [data_bytes + 0x224294], eax        // 0x0054010b    a394a2be00
                         pop              ebp                                           // 0x00540110    5d
                         ret              0x0014                                        // 0x00540111    c21400
                         test             esi, esi                                      // 0x00540114    85f6
                         {disp32} je      _jmp_addr_0x00540227                          // 0x00540116    0f840b010000
                         {disp32} mov     eax, dword ptr [esi + 0x00000238]             // 0x0054011c    8b8638020000
                         test             eax, eax                                      // 0x00540122    85c0
                         {disp32} je      _jmp_addr_0x00540227                          // 0x00540124    0f84fd000000
                         {disp32} mov     cl, byte ptr [esi + 0x00000229]               // 0x0054012a    8a8e29020000
                         test             cl, cl                                        // 0x00540130    84c9
                         {disp32} jne     _jmp_addr_0x00540227                          // 0x00540132    0f85ef000000
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x00540138    8b4c2414
                         push             esi                                           // 0x0054013c    56
                         push             ecx                                           // 0x0054013d    51
                         call             eax                                           // 0x0054013e    ffd0
                         add              esp, 0x08                                     // 0x00540140    83c408
                         pop              edi                                           // 0x00540143    5f
                         pop              esi                                           // 0x00540144    5e
                         pop              ebp                                           // 0x00540145    5d
                         ret              0x0014                                        // 0x00540146    c21400
                         {disp32} mov     al, byte ptr [data_bytes + 0x30ab00]          // 0x00540149    a0000bcd00
                         test             al, al                                        // 0x0054014e    84c0
                         {disp8} je       _jmp_addr_0x0054019b                          // 0x00540150    7449
                         cmp              ebp, 0x00002712                               // 0x00540152    81fd12270000
                         {disp32} mov     byte ptr [data_bytes + 0x30ab00], 0x00        // 0x00540158    c605000bcd0000
                         {disp32} jne     _jmp_addr_0x00540227                          // 0x0054015f    0f85c2000000
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00540165    8b0d5c19d000
                         call             ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0054016b    e8102e0100
                         test             eax, eax                                      // 0x00540170    85c0
                         {disp8} je       _jmp_addr_0x00540180                          // 0x00540172    740c
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x35a4cc]        // 0x00540174    8b0dcc04d200
                         call             dword ptr [rdata_bytes + 0x3f0]               // 0x0054017a    ff15f0938a00
_jmp_addr_0x00540180:    call             _HideAll__13DialogBoxBaseFv@0                 // 0x00540180    e85b35fdff
                         call             _jmp_addr_0x00513640                          // 0x00540185    e8b634fdff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0054018a    8b0d5c19d000
                         call             _jmp_addr_0x00555400                          // 0x00540190    e86b520100
                         pop              edi                                           // 0x00540195    5f
                         pop              esi                                           // 0x00540196    5e
                         pop              ebp                                           // 0x00540197    5d
                         ret              0x0014                                        // 0x00540198    c21400
_jmp_addr_0x0054019b:    {disp32} mov     al, byte ptr [data_bytes + 0x30ab02]          // 0x0054019b    a0020bcd00
                         test             al, al                                        // 0x005401a0    84c0
                         {disp8} je       _jmp_addr_0x005401fa                          // 0x005401a2    7456
                         cmp              ebp, 0x00002712                               // 0x005401a4    81fd12270000
                         {disp32} mov     byte ptr [data_bytes + 0x30ab02], 0x00        // 0x005401aa    c605020bcd0000
                         {disp8} jne      _jmp_addr_0x00540227                          // 0x005401b1    7574
                         call             _jmp_addr_0x00513640                          // 0x005401b3    e88834fdff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x005401b8    8b0d5c19d000
                         call             ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x005401be    e8bd2d0100
                         test             eax, eax                                      // 0x005401c3    85c0
                         {disp8} je       _jmp_addr_0x005401dd                          // 0x005401c5    7416
                         {disp32} mov     edx, dword ptr [_game]                        // 0x005401c7    8b155c19d000
                         pop              edi                                           // 0x005401cd    5f
                         pop              esi                                           // 0x005401ce    5e
                         {disp32} mov     dword ptr [edx + 0x00250180], 0x00000005      // 0x005401cf    c7828001250005000000
                         pop              ebp                                           // 0x005401d9    5d
                         ret              0x0014                                        // 0x005401da    c21400
_jmp_addr_0x005401dd:    {disp32} mov     eax, dword ptr [_game]                        // 0x005401dd    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x00205a0c]             // 0x005401e2    8b880c5a2000
                         pop              edi                                           // 0x005401e8    5f
                         pop              esi                                           // 0x005401e9    5e
                         test             ecx, ecx                                      // 0x005401ea    85c9
                         {disp32} mov     dword ptr [eax + 0x00250180], 0x00000005      // 0x005401ec    c7808001250005000000
                         pop              ebp                                           // 0x005401f6    5d
                         ret              0x0014                                        // 0x005401f7    c21400
_jmp_addr_0x005401fa:    {disp32} mov     al, byte ptr [data_bytes + 0x30ab01]          // 0x005401fa    a0010bcd00
                         test             al, al                                        // 0x005401ff    84c0
                         {disp8} je       _jmp_addr_0x00540227                          // 0x00540201    7424
                         cmp              ebp, 0x00002712                               // 0x00540203    81fd12270000
                         {disp32} mov     byte ptr [data_bytes + 0x30ab01], 0x00        // 0x00540209    c605010bcd0000
                         {disp8} jne      _jmp_addr_0x00540227                          // 0x00540210    7515
                         call             _jmp_addr_0x00513640                          // 0x00540212    e82934fdff
                         call             _HideAll__13DialogBoxBaseFv@0                 // 0x00540217    e8c434fdff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0054021c    8b0d5c19d000
                         call             _jmp_addr_0x005553f0                          // 0x00540222    e8c9510100
_jmp_addr_0x00540227:    pop              edi                                           // 0x00540227    5f
                         pop              esi                                           // 0x00540228    5e
                         pop              ebp                                           // 0x00540229    5d
                         ret              0x0014                                        // 0x0054022a    c21400

// Snippet: db, [0x0054022d, 0x00540230)
.byte 0x8d, 0x49, 0x00            // 0x0054022d

// Snippet: jmptbl, [0x00540230, 0x00540248)
.byte 0x14, 0x01, 0x54, 0x00      // 0x00540230
.byte 0x49, 0x01, 0x54, 0x00      // 0x00540234
.byte 0x7f, 0x00, 0x54, 0x00      // 0x00540238
.byte 0xf2, 0x00, 0x54, 0x00      // 0x0054023c
.byte 0xd1, 0x00, 0x54, 0x00      // 0x00540240
.byte 0x27, 0x02, 0x54, 0x00      // 0x00540244

// Snippet: ijmptbl, [0x00540248, 0x00540257)
.byte 0x00, 0x05, 0x01, 0x05      // 0x00540248
.byte 0x05, 0x02, 0x03, 0x05      // 0x0054024c
.byte 0x05, 0x05, 0x05, 0x05      // 0x00540250
.byte 0x05, 0x05, 0x04            // 0x00540254

// Snippet: db, [0x00540257, 0x00540260)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00540257
.byte 0x90, 0x90, 0x90, 0x90      // 0x0054025b
.byte 0x90                        // 0x0054025f

