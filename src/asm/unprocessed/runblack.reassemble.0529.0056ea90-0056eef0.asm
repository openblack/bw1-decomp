.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x00550ba0
.extern _jmp_addr_0x005525e0
.extern _jmp_addr_0x005559b0
.extern _jmp_addr_0x00555a10
.extern _jmp_addr_0x0056e130
.extern _jmp_addr_0x00633620
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ

.globl _jmp_addr_0x0056ea90
.globl _jmp_addr_0x0056eaf0
.globl _jmp_addr_0x0056ec00

start_0x0056ea90_0x0056eef0:
// Snippet: asm, [0x0056ea90, 0x0056eec5)
_jmp_addr_0x0056ea90:    push             esi                                           // 0x0056ea90    56
                         mov.s            esi, ecx                                      // 0x0056ea91    8bf1
                         {disp8} mov      ecx, dword ptr [esi + 0x50]                   // 0x0056ea93    8b4e50
                         mov              eax, dword ptr [ecx]                          // 0x0056ea96    8b01
                         push             0x0                                           // 0x0056ea98    6a00
                         call             dword ptr [eax + 8]                           // 0x0056ea9a    ff5008
                         {disp8} mov      eax, dword ptr [esi + 0x64]                   // 0x0056ea9d    8b4664
                         {disp8} mov      ecx, dword ptr [esi + 0x54]                   // 0x0056eaa0    8b4e54
                         mov              edx, dword ptr [ecx]                          // 0x0056eaa3    8b11
                         cmp              eax, 0x01                                     // 0x0056eaa5    83f801
                         setne            al                                            // 0x0056eaa8    0f95c0
                         push             eax                                           // 0x0056eaab    50
                         call             dword ptr [edx + 8]                           // 0x0056eaac    ff5208
                         {disp8} mov      eax, dword ptr [esi + 0x64]                   // 0x0056eaaf    8b4664
                         {disp8} mov      ecx, dword ptr [esi + 0x4c]                   // 0x0056eab2    8b4e4c
                         mov              edx, dword ptr [ecx]                          // 0x0056eab5    8b11
                         test             eax, eax                                      // 0x0056eab7    85c0
                         setne            al                                            // 0x0056eab9    0f95c0
                         push             eax                                           // 0x0056eabc    50
                         call             dword ptr [edx + 8]                           // 0x0056eabd    ff5208
                         {disp8} mov      al, byte ptr [esi + 0x5e]                     // 0x0056eac0    8a465e
                         test             al, al                                        // 0x0056eac3    84c0
                         {disp8} jne      _jmp_addr_0x0056ead1                          // 0x0056eac5    750a
                         {disp8} mov      ecx, dword ptr [esi + 0x54]                   // 0x0056eac7    8b4e54
                         mov              edx, dword ptr [ecx]                          // 0x0056eaca    8b11
                         push             0x1                                           // 0x0056eacc    6a01
                         call             dword ptr [edx + 8]                           // 0x0056eace    ff5208
_jmp_addr_0x0056ead1:    {disp8} mov      ecx, dword ptr [esi + 0x40]                   // 0x0056ead1    8b4e40
                         mov              eax, dword ptr [ecx]                          // 0x0056ead4    8b01
                         push             0x1                                           // 0x0056ead6    6a01
                         call             dword ptr [eax + 8]                           // 0x0056ead8    ff5008
                         mov.s            ecx, esi                                      // 0x0056eadb    8bce
                         call             _jmp_addr_0x0056eaf0                          // 0x0056eadd    e80e000000
                         pop              esi                                           // 0x0056eae2    5e
                         ret                                                            // 0x0056eae3    c3
                         nop                                                            // 0x0056eae4    90
                         nop                                                            // 0x0056eae5    90
                         nop                                                            // 0x0056eae6    90
                         nop                                                            // 0x0056eae7    90
                         nop                                                            // 0x0056eae8    90
                         nop                                                            // 0x0056eae9    90
                         nop                                                            // 0x0056eaea    90
                         nop                                                            // 0x0056eaeb    90
                         nop                                                            // 0x0056eaec    90
                         nop                                                            // 0x0056eaed    90
                         nop                                                            // 0x0056eaee    90
                         nop                                                            // 0x0056eaef    90
_jmp_addr_0x0056eaf0:    push             ecx                                           // 0x0056eaf0    51
                         push             ebx                                           // 0x0056eaf1    53
                         push             esi                                           // 0x0056eaf2    56
                         mov.s            esi, ecx                                      // 0x0056eaf3    8bf1
                         {disp8} mov      eax, dword ptr [esi + 0x64]                   // 0x0056eaf5    8b4664
                         cmp              eax, 0x02                                     // 0x0056eaf8    83f802
                         push             edi                                           // 0x0056eafb    57
                         {disp8} je       _jmp_addr_0x0056eb03                          // 0x0056eafc    7405
                         cmp              eax, 0x03                                     // 0x0056eafe    83f803
                         {disp8} jne      _jmp_addr_0x0056eb0e                          // 0x0056eb01    750b
_jmp_addr_0x0056eb03:    {disp8} mov      al, byte ptr [esi + 0x5d]                     // 0x0056eb03    8a465d
                         test             al, al                                        // 0x0056eb06    84c0
                         {disp8} je       _jmp_addr_0x0056eb0e                          // 0x0056eb08    7404
                         xor.s            bl, bl                                        // 0x0056eb0a    32db
                         {disp8} jmp      _jmp_addr_0x0056eb10                          // 0x0056eb0c    eb02
_jmp_addr_0x0056eb0e:    mov              bl, 0x01                                      // 0x0056eb0e    b301
_jmp_addr_0x0056eb10:    {disp8} mov      ecx, dword ptr [esi + 0x44]                   // 0x0056eb10    8b4e44
                         mov              eax, dword ptr [ecx]                          // 0x0056eb13    8b01
                         {disp8} mov      byte ptr [esp + 0x0c], bl                     // 0x0056eb15    885c240c
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x0056eb19    8b7c240c
                         push             edi                                           // 0x0056eb1d    57
                         call             dword ptr [eax + 8]                           // 0x0056eb1e    ff5008
                         {disp8} mov      ecx, dword ptr [esi + 0x48]                   // 0x0056eb21    8b4e48
                         mov              edx, dword ptr [ecx]                          // 0x0056eb24    8b11
                         push             edi                                           // 0x0056eb26    57
                         call             dword ptr [edx + 8]                           // 0x0056eb27    ff5208
                         {disp8} mov      ecx, dword ptr [esi + 0x34]                   // 0x0056eb2a    8b4e34
                         mov              eax, dword ptr [ecx]                          // 0x0056eb2d    8b01
                         push             edi                                           // 0x0056eb2f    57
                         call             dword ptr [eax + 8]                           // 0x0056eb30    ff5008
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]                   // 0x0056eb33    8b4e3c
                         mov              edx, dword ptr [ecx]                          // 0x0056eb36    8b11
                         push             edi                                           // 0x0056eb38    57
                         call             dword ptr [edx + 8]                           // 0x0056eb39    ff5208
                         test             bl, bl                                        // 0x0056eb3c    84db
                         {disp8} je       _jmp_addr_0x0056eb56                          // 0x0056eb3e    7416
                         {disp8} mov      eax, dword ptr [esi + 0x38]                   // 0x0056eb40    8b4638
                         {disp8} mov      dword ptr [eax + 0x0c], 0x000000fa            // 0x0056eb43    c7400cfa000000
                         {disp8} mov      ecx, dword ptr [esi + 0x38]                   // 0x0056eb4a    8b4e38
                         {disp8} mov      dword ptr [ecx + 0x14], 0x00000064            // 0x0056eb4d    c7411464000000
                         {disp8} jmp      _jmp_addr_0x0056eb67                          // 0x0056eb54    eb11
_jmp_addr_0x0056eb56:    {disp8} mov      edx, dword ptr [esi + 0x38]                   // 0x0056eb56    8b5638
                         mov              eax, 0x00000050                               // 0x0056eb59    b850000000
                         {disp8} mov      dword ptr [edx + 0x0c], eax                   // 0x0056eb5e    89420c
                         {disp8} mov      ecx, dword ptr [esi + 0x38]                   // 0x0056eb61    8b4e38
                         {disp8} mov      dword ptr [ecx + 0x14], eax                   // 0x0056eb64    894114
_jmp_addr_0x0056eb67:    {disp8} mov      eax, dword ptr [esi + 0x38]                   // 0x0056eb67    8b4638
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                   // 0x0056eb6a    8b500c
                         add              dword ptr [eax + 0x14], edx                   // 0x0056eb6d    015014
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0056eb70    8b0d5c19d000
                         xor.s            eax, eax                                      // 0x0056eb76    33c0
                         {disp32} mov     al, byte ptr [ecx + 0x00205a59]               // 0x0056eb78    8a81595a2000
                         lea              edx, dword ptr [eax + eax * 0x4]              // 0x0056eb7e    8d1480
                         lea              edx, dword ptr [eax + edx * 0x8]              // 0x0056eb81    8d14d0
                         lea              eax, dword ptr [eax + edx * 0x2]              // 0x0056eb84    8d0450
                         shl              eax, 5                                        // 0x0056eb87    c1e005
                         {disp8} lea      ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0056eb8a    8d4c0818
                         call             ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056eb8e    e8fdbb0d00
                         cmp              eax, 0x04                                     // 0x0056eb93    83f804
                         .byte            0x72, 0x14// {disp8} jb _jmp_addr_0x0056ebac  // 0x0056eb96    7214
                         {disp8} mov      ecx, dword ptr [esi + 0x34]                   // 0x0056eb98    8b4e34
                         mov              edx, dword ptr [ecx]                          // 0x0056eb9b    8b11
                         push             0x1                                           // 0x0056eb9d    6a01
                         call             dword ptr [edx + 8]                           // 0x0056eb9f    ff5208
                         {disp8} mov      ecx, dword ptr [esi + 0x3c]                   // 0x0056eba2    8b4e3c
                         mov              eax, dword ptr [ecx]                          // 0x0056eba5    8b01
                         push             0x1                                           // 0x0056eba7    6a01
                         call             dword ptr [eax + 8]                           // 0x0056eba9    ff5008
_jmp_addr_0x0056ebac:    pop              edi                                           // 0x0056ebac    5f
                         pop              esi                                           // 0x0056ebad    5e
                         pop              ebx                                           // 0x0056ebae    5b
                         pop              ecx                                           // 0x0056ebaf    59
                         ret                                                            // 0x0056ebb0    c3
                         nop                                                            // 0x0056ebb1    90
                         nop                                                            // 0x0056ebb2    90
                         nop                                                            // 0x0056ebb3    90
                         nop                                                            // 0x0056ebb4    90
                         nop                                                            // 0x0056ebb5    90
                         nop                                                            // 0x0056ebb6    90
                         nop                                                            // 0x0056ebb7    90
                         nop                                                            // 0x0056ebb8    90
                         nop                                                            // 0x0056ebb9    90
                         nop                                                            // 0x0056ebba    90
                         nop                                                            // 0x0056ebbb    90
                         nop                                                            // 0x0056ebbc    90
                         nop                                                            // 0x0056ebbd    90
                         nop                                                            // 0x0056ebbe    90
                         nop                                                            // 0x0056ebbf    90
_jmp_addr_0x0056ebc0:    {disp8} mov      al, byte ptr [ecx + 0x61]                     // 0x0056ebc0    8a4161
                         test             al, al                                        // 0x0056ebc3    84c0
                         {disp8} jne      _jmp_addr_0x0056ebf2                          // 0x0056ebc5    752b
                         {disp8} mov      byte ptr [ecx + 0x61], 0x01                   // 0x0056ebc7    c6416101
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001ad4 // 0x0056ebcb    813dac7cd100d41a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ebd5    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0056ebe1                          // 0x0056ebda    7605
                         add              eax, 0x000141f0                               // 0x0056ebdc    05f0410100
_jmp_addr_0x0056ebe1:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x0056ebe1    8b4808
                         push             0x0                                           // 0x0056ebe4    6a00
                         push             0x0                                           // 0x0056ebe6    6a00
                         push             ecx                                           // 0x0056ebe8    51
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0056ebe9    8b4c2410
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0056ebed    e89e25eaff
_jmp_addr_0x0056ebf2:    ret              0x0004                                        // 0x0056ebf2    c20400
                         nop                                                            // 0x0056ebf5    90
                         nop                                                            // 0x0056ebf6    90
                         nop                                                            // 0x0056ebf7    90
                         nop                                                            // 0x0056ebf8    90
                         nop                                                            // 0x0056ebf9    90
                         nop                                                            // 0x0056ebfa    90
                         nop                                                            // 0x0056ebfb    90
                         nop                                                            // 0x0056ebfc    90
                         nop                                                            // 0x0056ebfd    90
                         nop                                                            // 0x0056ebfe    90
                         nop                                                            // 0x0056ebff    90
_jmp_addr_0x0056ec00:    {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x0056ec00    8b442408
                         cmp              eax, 0x0d                                     // 0x0056ec04    83f80d
                         push             ebx                                           // 0x0056ec07    53
                         push             esi                                           // 0x0056ec08    56
                         push             edi                                           // 0x0056ec09    57
                         {disp32} ja      _jmp_addr_0x0056eebf                          // 0x0056ec0a    0f87af020000
                         xor.s            ecx, ecx                                      // 0x0056ec10    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x0056eee0]               // 0x0056ec12    8a88e0ee5600
                         jmp              dword ptr [ecx*4 + 0x56eec8]                  // 0x0056ec18    ff248dc8ee5600
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0056ec1f    8b0d5c19d000
                         {disp32} mov     eax, dword ptr [ecx + 0x000059a8]             // 0x0056ec25    8b81a8590000
                         mov              ebx, 0x00000001                               // 0x0056ec2b    bb01000000
                         cmp.s            eax, ebx                                      // 0x0056ec30    3bc3
                         {disp32} jne     _jmp_addr_0x0056eebf                          // 0x0056ec32    0f8587020000
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x0056ec38    8b742410
                         {disp8} mov      eax, dword ptr [esi + 0x64]                   // 0x0056ec3c    8b4664
                         test             eax, eax                                      // 0x0056ec3f    85c0
                         {disp32} je      _jmp_addr_0x0056eebf                          // 0x0056ec41    0f8478020000
                         {disp8} mov      al, byte ptr [esi + 0x5f]                     // 0x0056ec47    8a465f
                         test             al, al                                        // 0x0056ec4a    84c0
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x0056ec4c    8b7c2418
                         {disp32} jne     _jmp_addr_0x0056ece8                          // 0x0056ec50    0f8592000000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x381a28]        // 0x0056ec56    a1287ad400
                         test             eax, eax                                      // 0x0056ec5b    85c0
                         {disp32} je      _jmp_addr_0x0056ece8                          // 0x0056ec5d    0f8485000000
                         {disp8} mov      byte ptr [esi + 0x5f], bl                     // 0x0056ec63    885e5f
                         {disp32} mov     edx, dword ptr [_game]                        // 0x0056ec66    8b155c19d000
                         {disp32} mov     eax, dword ptr [edx + 0x0000598c]             // 0x0056ec6c    8b828c590000
                         {disp32} lea     ecx, dword ptr [edx + 0x0000598c]             // 0x0056ec72    8d8a8c590000
                         call             dword ptr [eax]                               // 0x0056ec78    ff10
                         cmp              eax, 0x03                                     // 0x0056ec7a    83f803
                         {disp8} jne      _jmp_addr_0x0056ec8b                          // 0x0056ec7d    750c
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab0c]        // 0x0056ec7f    8b0d0c0bcd00
                         push             edi                                           // 0x0056ec85    57
                         call             _jmp_addr_0x0056ebc0                          // 0x0056ec86    e835ffffff
_jmp_addr_0x0056ec8b:    {disp32} mov     ecx, dword ptr [_game]                        // 0x0056ec8b    8b0d5c19d000
                         push             ebp                                           // 0x0056ec91    55
                         call             _jmp_addr_0x005559b0                          // 0x0056ec92    e8196dfeff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0056ec97    8b0d5c19d000
                         mov.s            ebp, eax                                      // 0x0056ec9d    8be8
                         call             _jmp_addr_0x00555a10                          // 0x0056ec9f    e86c6dfeff
                         cmp.s            eax, ebp                                      // 0x0056eca4    3bc5
                         pop              ebp                                           // 0x0056eca6    5d
                         {disp8} jne      _jmp_addr_0x0056ed0c                          // 0x0056eca7    7563
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0056eca9    8b0d5c19d000
                         xor.s            eax, eax                                      // 0x0056ecaf    33c0
                         {disp32} mov     al, byte ptr [ecx + 0x00205a59]               // 0x0056ecb1    8a81595a2000
                         lea              edx, dword ptr [eax + eax * 0x4]              // 0x0056ecb7    8d1480
                         lea              edx, dword ptr [eax + edx * 0x8]              // 0x0056ecba    8d14d0
                         lea              eax, dword ptr [eax + edx * 0x2]              // 0x0056ecbd    8d0450
                         shl              eax, 5                                        // 0x0056ecc0    c1e005
                         {disp32} mov     edx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0056ecc3    8b9408640a0000
                         test             edx, edx                                      // 0x0056ecca    85d2
                         {disp8} je       _jmp_addr_0x0056ed12                          // 0x0056eccc    7444
                         push             -0x1                                          // 0x0056ecce    6aff
                         push             0x0                                           // 0x0056ecd0    6a00
                         push             0x0                                           // 0x0056ecd2    6a00
                         push             0x7                                           // 0x0056ecd4    6a07
                         call             _jmp_addr_0x00550ba0                          // 0x0056ecd6    e8c51efeff
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0056ecdb    8b0d5c19d000
                         call             _jmp_addr_0x005525e0                          // 0x0056ece1    e8fa38feff
                         {disp8} jmp      _jmp_addr_0x0056ed0c                          // 0x0056ece6    eb24
_jmp_addr_0x0056ece8:    cmp              dword ptr [ecx + 0x00005990], ebx             // 0x0056ece8    399990590000
                         {disp8} jne      _jmp_addr_0x0056ed12                          // 0x0056ecee    7522
                         add              ecx, 0x0000598c                               // 0x0056ecf0    81c18c590000
                         call             _jmp_addr_0x00633620                          // 0x0056ecf6    e825490c00
                         cmp              eax, 0x03                                     // 0x0056ecfb    83f803
                         {disp8} jne      _jmp_addr_0x0056ed0c                          // 0x0056ecfe    750c
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab0c]        // 0x0056ed00    8b0d0c0bcd00
                         push             edi                                           // 0x0056ed06    57
                         call             _jmp_addr_0x0056ebc0                          // 0x0056ed07    e8b4feffff
_jmp_addr_0x0056ed0c:    {disp32} mov     ecx, dword ptr [_game]                        // 0x0056ed0c    8b0d5c19d000
_jmp_addr_0x0056ed12:    {disp8} mov      al, byte ptr [esi + 0x60]                     // 0x0056ed12    8a4660
                         test             al, al                                        // 0x0056ed15    84c0
                         {disp8} jne      _jmp_addr_0x0056ed37                          // 0x0056ed17    751e
                         {disp8} mov      byte ptr [esi + 0x60], bl                     // 0x0056ed19    885e60
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x0056ed1c    8b0d5c19d000
                         {disp32} mov     edx, dword ptr [ecx + 0x0000597c]             // 0x0056ed22    8b917c590000
                         add              ecx, 0x0000597c                               // 0x0056ed28    81c17c590000
                         call             dword ptr [edx]                               // 0x0056ed2e    ff12
                         cmp              eax, 0x03                                     // 0x0056ed30    83f803
                         {disp8} jne      _jmp_addr_0x0056ed5b                          // 0x0056ed33    7526
                         {disp8} jmp      _jmp_addr_0x0056ed4f                          // 0x0056ed35    eb18
_jmp_addr_0x0056ed37:    cmp              dword ptr [ecx + 0x00005980], ebx             // 0x0056ed37    399980590000
                         {disp8} jne      _jmp_addr_0x0056ed61                          // 0x0056ed3d    7522
                         add              ecx, 0x0000597c                               // 0x0056ed3f    81c17c590000
                         call             _jmp_addr_0x00633620                          // 0x0056ed45    e8d6480c00
                         cmp              eax, 0x03                                     // 0x0056ed4a    83f803
                         {disp8} jne      _jmp_addr_0x0056ed5b                          // 0x0056ed4d    750c
_jmp_addr_0x0056ed4f:    {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab0c]        // 0x0056ed4f    8b0d0c0bcd00
                         push             edi                                           // 0x0056ed55    57
                         call             _jmp_addr_0x0056ebc0                          // 0x0056ed56    e865feffff
_jmp_addr_0x0056ed5b:    {disp32} mov     ecx, dword ptr [_game]                        // 0x0056ed5b    8b0d5c19d000
_jmp_addr_0x0056ed61:    cmp              dword ptr [ecx + 0x00005990], ebx             // 0x0056ed61    399990590000
                         {disp32} je      _jmp_addr_0x0056eebf                          // 0x0056ed67    0f8452010000
                         cmp              dword ptr [ecx + 0x00005980], ebx             // 0x0056ed6d    399980590000
                         {disp32} je      _jmp_addr_0x0056eebf                          // 0x0056ed73    0f8446010000
                         mov.s            ecx, esi                                      // 0x0056ed79    8bce
                         call             _jmp_addr_0x0056ea90                          // 0x0056ed7b    e810fdffff
                         pop              edi                                           // 0x0056ed80    5f
                         pop              esi                                           // 0x0056ed81    5e
                         pop              ebx                                           // 0x0056ed82    5b
                         ret              0x0018                                        // 0x0056ed83    c21800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30ab0c]        // 0x0056ed86    a10c0bcd00
                         pop              edi                                           // 0x0056ed8b    5f
                         pop              esi                                           // 0x0056ed8c    5e
                         {disp8} mov      byte ptr [eax + 0x14], 0x00                   // 0x0056ed8d    c6401400
                         pop              ebx                                           // 0x0056ed91    5b
                         ret              0x0018                                        // 0x0056ed92    c21800
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0056ed95    8b4c2410
                         mov              edx, dword ptr [ecx]                          // 0x0056ed99    8b11
                         call             dword ptr [edx + 0x20]                        // 0x0056ed9b    ff5220
                         pop              edi                                           // 0x0056ed9e    5f
                         pop              esi                                           // 0x0056ed9f    5e
                         pop              ebx                                           // 0x0056eda0    5b
                         ret              0x0018                                        // 0x0056eda1    c21800
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x0056eda4    8b44241c
                         test             eax, eax                                      // 0x0056eda8    85c0
                         {disp32} je      _jmp_addr_0x0056eebf                          // 0x0056edaa    0f840f010000
                         {disp32} mov     ecx, dword ptr [eax + 0x00000238]             // 0x0056edb0    8b8838020000
                         test             ecx, ecx                                      // 0x0056edb6    85c9
                         {disp8} je       _jmp_addr_0x0056edcb                          // 0x0056edb8    7411
                         push             eax                                           // 0x0056edba    50
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x0056edbb    8b44241c
                         push             eax                                           // 0x0056edbf    50
                         call             ecx                                           // 0x0056edc0    ffd1
                         add              esp, 0x08                                     // 0x0056edc2    83c408
                         pop              edi                                           // 0x0056edc5    5f
                         pop              esi                                           // 0x0056edc6    5e
                         pop              ebx                                           // 0x0056edc7    5b
                         ret              0x0018                                        // 0x0056edc8    c21800
_jmp_addr_0x0056edcb:    {disp8} mov      eax, dword ptr [eax + 0x18]                   // 0x0056edcb    8b4018
                         sub              eax, 0x000008fc                               // 0x0056edce    2dfc080000
                         {disp8} je       _jmp_addr_0x0056ee49                          // 0x0056edd3    7474
                         dec              eax                                           // 0x0056edd5    48
                         {disp8} je       _jmp_addr_0x0056ee12                          // 0x0056edd6    743a
                         dec              eax                                           // 0x0056edd8    48
                         {disp32} jne     _jmp_addr_0x0056eebf                          // 0x0056edd9    0f85e0000000
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x0056eddf    8b742410
                         push             0x2                                           // 0x0056ede3    6a02
                         mov.s            ecx, esi                                      // 0x0056ede5    8bce
                         call             _jmp_addr_0x0056e130                          // 0x0056ede7    e844f3ffff
                         call             _HideAll__13DialogBoxBaseFv@0                 // 0x0056edec    e8ef48faff
                         mov              edx, dword ptr [esi]                          // 0x0056edf1    8b16
                         mov.s            ecx, esi                                      // 0x0056edf3    8bce
                         call             dword ptr [edx + 0xc]                         // 0x0056edf5    ff520c
                         {disp32} mov     eax, dword ptr [data_bytes + 0x30ab08]        // 0x0056edf8    a1080bcd00
                         {disp8} mov      byte ptr [eax + 0x40], 0x01                   // 0x0056edfd    c6404001
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab08]        // 0x0056ee01    8b0d080bcd00
                         mov              edx, dword ptr [ecx]                          // 0x0056ee07    8b11
                         call             dword ptr [edx + 0xc]                         // 0x0056ee09    ff520c
                         pop              edi                                           // 0x0056ee0c    5f
                         pop              esi                                           // 0x0056ee0d    5e
                         pop              ebx                                           // 0x0056ee0e    5b
                         ret              0x0018                                        // 0x0056ee0f    c21800
_jmp_addr_0x0056ee12:    {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x0056ee12    8b742410
                         mov              ebx, 0x00000001                               // 0x0056ee16    bb01000000
                         push             ebx                                           // 0x0056ee1b    53
                         mov.s            ecx, esi                                      // 0x0056ee1c    8bce
                         call             _jmp_addr_0x0056e130                          // 0x0056ee1e    e80df3ffff
                         call             _HideAll__13DialogBoxBaseFv@0                 // 0x0056ee23    e8b848faff
                         mov              eax, dword ptr [esi]                          // 0x0056ee28    8b06
                         mov.s            ecx, esi                                      // 0x0056ee2a    8bce
                         call             dword ptr [eax + 0xc]                         // 0x0056ee2c    ff500c
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab08]        // 0x0056ee2f    8b0d080bcd00
                         {disp8} mov      byte ptr [ecx + 0x40], bl                     // 0x0056ee35    885940
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x340058]        // 0x0056ee38    8b0d5860d000
                         mov              edx, dword ptr [ecx]                          // 0x0056ee3e    8b11
                         call             dword ptr [edx + 0xc]                         // 0x0056ee40    ff520c
                         pop              edi                                           // 0x0056ee43    5f
                         pop              esi                                           // 0x0056ee44    5e
                         pop              ebx                                           // 0x0056ee45    5b
                         ret              0x0018                                        // 0x0056ee46    c21800
_jmp_addr_0x0056ee49:    {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0056ee49    8b4c2410
                         push             0x0                                           // 0x0056ee4d    6a00
                         call             _jmp_addr_0x0056e130                          // 0x0056ee4f    e8dcf2ffff
                         pop              edi                                           // 0x0056ee54    5f
                         pop              esi                                           // 0x0056ee55    5e
                         pop              ebx                                           // 0x0056ee56    5b
                         ret              0x0018                                        // 0x0056ee57    c21800
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0056ee5a    8b4c2410
                         {disp8} mov      esi, dword ptr [ecx + 0x34]                   // 0x0056ee5e    8b7134
                         {disp32} mov     al, byte ptr [esi + 0x00000229]               // 0x0056ee61    8a8629020000
                         test             al, al                                        // 0x0056ee67    84c0
                         {disp8} je       _jmp_addr_0x0056ee6e                          // 0x0056ee69    7403
                         {disp8} mov      esi, dword ptr [ecx + 0x38]                   // 0x0056ee6b    8b7138
_jmp_addr_0x0056ee6e:    {disp8} mov      eax, dword ptr [ecx + 0x58]                   // 0x0056ee6e    8b4158
                         {disp8} mov      ecx, dword ptr [ecx + 0x68]                   // 0x0056ee71    8b4968
                         {disp32} mov     edi, dword ptr [data_bytes + 0x2078]          // 0x0056ee74    8b3d78809c00
                         lea              edx, dword ptr [eax + eax * 0x4]              // 0x0056ee7a    8d1480
                         lea              eax, dword ptr [eax + edx * 0x8]              // 0x0056ee7d    8d04d0
                         lea              eax, dword ptr [eax + eax * 0x2]              // 0x0056ee80    8d0440
                         lea              eax, dword ptr [eax + eax * 0x8]              // 0x0056ee83    8d04c0
                         {disp8} mov      ecx, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x0056ee86    8b4c8104
                         mov              ebx, 0x00000001                               // 0x0056ee8a    bb01000000
                         push             ebx                                           // 0x0056ee8f    53
                         push             ebx                                           // 0x0056ee90    53
                         push             ecx                                           // 0x0056ee91    51
                         push             ecx                                           // 0x0056ee92    51
                         mov.s            eax, edi                                      // 0x0056ee93    8bc7
                         cdq                                                            // 0x0056ee95    99
                         sub.s            eax, edx                                      // 0x0056ee96    2bc2
                         push             ecx                                           // 0x0056ee98    51
                         sar              eax, 1                                        // 0x0056ee99    d1f8
                         {disp32} mov     dword ptr [data_bytes + 0x2078], eax          // 0x0056ee9b    a378809c00
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x0056eea0    8b5614
                         {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x0056eea3    8b4610
                         push             ecx                                           // 0x0056eea6    51
                         {disp8} mov      ecx, dword ptr [esi + 0x0c]                   // 0x0056eea7    8b4e0c
                         push             edx                                           // 0x0056eeaa    52
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x0056eeab    8b5608
                         push             eax                                           // 0x0056eeae    50
                         push             ecx                                           // 0x0056eeaf    51
                         push             edx                                           // 0x0056eeb0    52
                         call             ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0056eeb1    e80a44eaff
                         add              esp, 0x28                                     // 0x0056eeb6    83c428
                         {disp32} mov     dword ptr [data_bytes + 0x2078], edi          // 0x0056eeb9    893d78809c00
_jmp_addr_0x0056eebf:    pop              edi                                           // 0x0056eebf    5f
                         pop              esi                                           // 0x0056eec0    5e
                         pop              ebx                                           // 0x0056eec1    5b
                         ret              0x0018                                        // 0x0056eec2    c21800

// Snippet: db, [0x0056eec5, 0x0056eec8)
.byte 0x8d, 0x49, 0x00            // 0x0056eec5

// Snippet: jmptbl, [0x0056eec8, 0x0056eee0)
.byte 0x1f, 0xec, 0x56, 0x00      // 0x0056eec8
.byte 0xa4, 0xed, 0x56, 0x00      // 0x0056eecc
.byte 0x95, 0xed, 0x56, 0x00      // 0x0056eed0
.byte 0x86, 0xed, 0x56, 0x00      // 0x0056eed4
.byte 0x5a, 0xee, 0x56, 0x00      // 0x0056eed8
.byte 0xbf, 0xee, 0x56, 0x00      // 0x0056eedc

// Snippet: ijmptbl, [0x0056eee0, 0x0056eeee)
.byte 0x00, 0x01, 0x05, 0x05      // 0x0056eee0
.byte 0x05, 0x05, 0x02, 0x03      // 0x0056eee4
.byte 0x05, 0x05, 0x05, 0x05      // 0x0056eee8
.byte 0x05, 0x04                  // 0x0056eeec

// Snippet: db, [0x0056eeee, 0x0056eef0)
.byte 0x90, 0x90                  // 0x0056eeee

