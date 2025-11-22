.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00408240
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ??0DialogBoxBase@@QAE@XZ
.extern _jmp_addr_0x005133c0
.extern ?Init@MPFEChooseConnection@@SAXKKP6AXHPAUSetupBox@@PAUSetupControl@@HH@Z@Z
.extern _jmp_addr_0x0062d1c0
.extern _atexit
.extern _wcscpy

.globl _globl_ct_0x0062ac00
.globl _globl_ct_0x0062ac30
.globl _globl_ct_0x0062ac50
.globl _globl_ct_0x0062ac80

start_0x0062ac00_0x0062b030:
// Snippet: asm, [0x0062ac00, 0x0062aff9)
_globl_ct_0x0062ac00:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0062ac00    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0062ac06    b001
                         test              al, cl                                        // 0x0062ac08    84c8
                         {disp8} jne       _jmp_addr_0x0062ac14                          // 0x0062ac0a    7508
                         or.s              cl, al                                        // 0x0062ac0c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0062ac0e    880d34c9fa00
_jmp_addr_0x0062ac14:    {disp32} jmp      _jmp_addr_0x0062ac20                          // 0x0062ac14    e907000000
                         nop                                                             // 0x0062ac19    90
                         nop                                                             // 0x0062ac1a    90
                         nop                                                             // 0x0062ac1b    90
                         nop                                                             // 0x0062ac1c    90
                         nop                                                             // 0x0062ac1d    90
                         nop                                                             // 0x0062ac1e    90
                         nop                                                             // 0x0062ac1f    90
_jmp_addr_0x0062ac20:    push              0x00407870                                    // 0x0062ac20    6870784000
                         call              _atexit                                       // 0x0062ac25    e867ab1900
                         pop               ecx                                           // 0x0062ac2a    59
                         ret                                                             // 0x0062ac2b    c3
                         nop                                                             // 0x0062ac2c    90
                         nop                                                             // 0x0062ac2d    90
                         nop                                                             // 0x0062ac2e    90
                         nop                                                             // 0x0062ac2f    90
_globl_ct_0x0062ac30:    {disp32} jmp      _jmp_addr_0x0062ac40                          // 0x0062ac30    e90b000000
                         nop                                                             // 0x0062ac35    90
                         nop                                                             // 0x0062ac36    90
                         nop                                                             // 0x0062ac37    90
                         nop                                                             // 0x0062ac38    90
                         nop                                                             // 0x0062ac39    90
                         nop                                                             // 0x0062ac3a    90
                         nop                                                             // 0x0062ac3b    90
                         nop                                                             // 0x0062ac3c    90
                         nop                                                             // 0x0062ac3d    90
                         nop                                                             // 0x0062ac3e    90
                         nop                                                             // 0x0062ac3f    90
_jmp_addr_0x0062ac40:    {disp32} mov      dword ptr [data_bytes + 0x37ade8], 0xffffffff // 0x0062ac40    c705e80dd400ffffffff
                         ret                                                             // 0x0062ac4a    c3
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0062ac4b    e8a96bddff
_globl_ct_0x0062ac50:    {disp32} jmp      _jmp_addr_0x0062ac60                          // 0x0062ac50    e90b000000
                         nop                                                             // 0x0062ac55    90
                         nop                                                             // 0x0062ac56    90
                         nop                                                             // 0x0062ac57    90
                         nop                                                             // 0x0062ac58    90
                         nop                                                             // 0x0062ac59    90
                         nop                                                             // 0x0062ac5a    90
                         nop                                                             // 0x0062ac5b    90
                         nop                                                             // 0x0062ac5c    90
                         nop                                                             // 0x0062ac5d    90
                         nop                                                             // 0x0062ac5e    90
                         nop                                                             // 0x0062ac5f    90
_jmp_addr_0x0062ac60:    {disp32} fld      dword ptr [rdata_bytes + 0x877d0]             // 0x0062ac60    d905d0079300
                         {disp32} fmul     dword ptr [rdata_bytes + 0x877cc]             // 0x0062ac66    d80dcc079300
                         {disp32} fstp     dword ptr [data_bytes + 0x37ade4]             // 0x0062ac6c    d91de40dd400
                         ret                                                             // 0x0062ac72    c3
                         nop                                                             // 0x0062ac73    90
                         nop                                                             // 0x0062ac74    90
                         nop                                                             // 0x0062ac75    90
                         nop                                                             // 0x0062ac76    90
                         nop                                                             // 0x0062ac77    90
                         nop                                                             // 0x0062ac78    90
                         nop                                                             // 0x0062ac79    90
                         nop                                                             // 0x0062ac7a    90
                         nop                                                             // 0x0062ac7b    90
                         nop                                                             // 0x0062ac7c    90
                         nop                                                             // 0x0062ac7d    90
                         nop                                                             // 0x0062ac7e    90
                         nop                                                             // 0x0062ac7f    90
_globl_ct_0x0062ac80:    call              _jmp_addr_0x0062ac90                          // 0x0062ac80    e80b000000
                         {disp32} jmp      _jmp_addr_0x0062aca0                          // 0x0062ac85    e916000000
                         nop                                                             // 0x0062ac8a    90
                         nop                                                             // 0x0062ac8b    90
                         nop                                                             // 0x0062ac8c    90
                         nop                                                             // 0x0062ac8d    90
                         nop                                                             // 0x0062ac8e    90
                         nop                                                             // 0x0062ac8f    90
_jmp_addr_0x0062ac90:    mov               ecx, 0x00d409a8                               // 0x0062ac90    b9a809d400
                         {disp32} jmp      _jmp_addr_0x0062acd0                          // 0x0062ac95    e936000000
                         nop                                                             // 0x0062ac9a    90
                         nop                                                             // 0x0062ac9b    90
                         nop                                                             // 0x0062ac9c    90
                         nop                                                             // 0x0062ac9d    90
                         nop                                                             // 0x0062ac9e    90
                         nop                                                             // 0x0062ac9f    90
_jmp_addr_0x0062aca0:    push              0x0062acb0                                    // 0x0062aca0    68b0ac6200
                         call              _atexit                                       // 0x0062aca5    e8e7aa1900
                         pop               ecx                                           // 0x0062acaa    59
                         ret                                                             // 0x0062acab    c3
                         nop                                                             // 0x0062acac    90
                         nop                                                             // 0x0062acad    90
                         nop                                                             // 0x0062acae    90
                         nop                                                             // 0x0062acaf    90
                         {disp32} mov      cl, byte ptr [data_bytes + 0x37a9a0]          // 0x0062acb0    8a0da009d400
                         mov               al, 0x01                                      // 0x0062acb6    b001
                         test              al, cl                                        // 0x0062acb8    84c8
                         {disp8} jne       _jmp_addr_0x0062acce                          // 0x0062acba    7512
                         or.s              cl, al                                        // 0x0062acbc    0ac8
                         {disp32} mov      byte ptr [data_bytes + 0x37a9a0], cl          // 0x0062acbe    880da009d400
                         mov               ecx, 0x00d409a8                               // 0x0062acc4    b9a809d400
                         {disp32} jmp      _jmp_addr_0x0062ad30                          // 0x0062acc9    e962000000
_jmp_addr_0x0062acce:    ret                                                             // 0x0062acce    c3
                         nop                                                             // 0x0062accf    90
_jmp_addr_0x0062acd0:    push              esi                                           // 0x0062acd0    56
                         mov.s             esi, ecx                                      // 0x0062acd1    8bf1
                         call              ??0DialogBoxBase@@QAE@XZ                      // 0x0062acd3    e8c886eeff
                         xor.s             eax, eax                                      // 0x0062acd8    33c0
                         push              0x0062b700                                    // 0x0062acda    6800b76200
                         push              0x000001f4                                    // 0x0062acdf    68f4010000
                         push              0x0000030c                                    // 0x0062ace4    680c030000
                         mov.s             ecx, esi                                      // 0x0062ace9    8bce
                         mov               dword ptr [esi], 0x009307d8                   // 0x0062aceb    c706d8079300
                         {disp8} mov       dword ptr [esi + 0x10], eax                   // 0x0062acf1    894610
                         {disp8} mov       dword ptr [esi + 0x14], eax                   // 0x0062acf4    894614
                         {disp8} mov       dword ptr [esi + 0x1c], eax                   // 0x0062acf7    89461c
                         {disp8} mov       dword ptr [esi + 0x28], 0x00000001            // 0x0062acfa    c7462801000000
                         {disp8} mov       dword ptr [esi + 0x20], eax                   // 0x0062ad01    894620
                         {disp32} mov      dword ptr [esi + 0x00000434], 0xffffffff      // 0x0062ad04    c78634040000ffffffff
                         {disp8} mov       dword ptr [esi + 0x24], eax                   // 0x0062ad0e    894624
                         call              ?Init@MPFEChooseConnection@@SAXKKP6AXHPAUSetupBox@@PAUSetupControl@@HH@Z@Z                     // 0x0062ad11    e81a030000
                         {disp8} mov       eax, dword ptr [esi + 0x04]                   // 0x0062ad16    8b4604
                         {disp32} mov      dword ptr [eax + 0x00000098], 0x00000001      // 0x0062ad19    c7809800000001000000
                         mov.s             eax, esi                                      // 0x0062ad23    8bc6
                         pop               esi                                           // 0x0062ad25    5e
                         ret                                                             // 0x0062ad26    c3
                         nop                                                             // 0x0062ad27    90
                         nop                                                             // 0x0062ad28    90
                         nop                                                             // 0x0062ad29    90
                         nop                                                             // 0x0062ad2a    90
                         nop                                                             // 0x0062ad2b    90
                         nop                                                             // 0x0062ad2c    90
                         nop                                                             // 0x0062ad2d    90
                         nop                                                             // 0x0062ad2e    90
                         nop                                                             // 0x0062ad2f    90
_jmp_addr_0x0062ad30:    push              esi                                           // 0x0062ad30    56
                         mov.s             esi, ecx                                      // 0x0062ad31    8bf1
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                   // 0x0062ad33    8b4e10
                         push              edi                                           // 0x0062ad36    57
                         xor.s             edi, edi                                      // 0x0062ad37    33ff
                         cmp.s             ecx, edi                                      // 0x0062ad39    3bcf
                         mov               dword ptr [esi], 0x009307d8                   // 0x0062ad3b    c706d8079300
                         {disp8} je        _jmp_addr_0x0062ad4a                          // 0x0062ad41    7407
                         mov               eax, dword ptr [ecx]                          // 0x0062ad43    8b01
                         push              0x1                                           // 0x0062ad45    6a01
                         call              dword ptr [eax + 0x30]                        // 0x0062ad47    ff5030
_jmp_addr_0x0062ad4a:    {disp8} mov       ecx, dword ptr [esi + 0x14]                   // 0x0062ad4a    8b4e14
                         cmp.s             ecx, edi                                      // 0x0062ad4d    3bcf
                         {disp8} mov       dword ptr [esi + 0x10], edi                   // 0x0062ad4f    897e10
                         {disp8} je        _jmp_addr_0x0062ad5b                          // 0x0062ad52    7407
                         mov               edx, dword ptr [ecx]                          // 0x0062ad54    8b11
                         push              0x1                                           // 0x0062ad56    6a01
                         call              dword ptr [edx + 0x30]                        // 0x0062ad58    ff5230
_jmp_addr_0x0062ad5b:    {disp8} mov       ecx, dword ptr [esi + 0x18]                   // 0x0062ad5b    8b4e18
                         cmp.s             ecx, edi                                      // 0x0062ad5e    3bcf
                         {disp8} mov       dword ptr [esi + 0x14], edi                   // 0x0062ad60    897e14
                         {disp8} je        _jmp_addr_0x0062ad6c                          // 0x0062ad63    7407
                         mov               eax, dword ptr [ecx]                          // 0x0062ad65    8b01
                         push              0x1                                           // 0x0062ad67    6a01
                         call              dword ptr [eax + 0x30]                        // 0x0062ad69    ff5030
_jmp_addr_0x0062ad6c:    {disp8} mov       ecx, dword ptr [esi + 0x1c]                   // 0x0062ad6c    8b4e1c
                         cmp.s             ecx, edi                                      // 0x0062ad6f    3bcf
                         {disp8} mov       dword ptr [esi + 0x18], edi                   // 0x0062ad71    897e18
                         {disp8} je        _jmp_addr_0x0062ad7d                          // 0x0062ad74    7407
                         mov               edx, dword ptr [ecx]                          // 0x0062ad76    8b11
                         push              0x1                                           // 0x0062ad78    6a01
                         call              dword ptr [edx + 0x30]                        // 0x0062ad7a    ff5230
_jmp_addr_0x0062ad7d:    {disp8} mov       ecx, dword ptr [esi + 0x20]                   // 0x0062ad7d    8b4e20
                         cmp.s             ecx, edi                                      // 0x0062ad80    3bcf
                         {disp8} mov       dword ptr [esi + 0x1c], edi                   // 0x0062ad82    897e1c
                         {disp8} je        _jmp_addr_0x0062ad8e                          // 0x0062ad85    7407
                         mov               eax, dword ptr [ecx]                          // 0x0062ad87    8b01
                         push              0x1                                           // 0x0062ad89    6a01
                         call              dword ptr [eax + 0x30]                        // 0x0062ad8b    ff5030
_jmp_addr_0x0062ad8e:    {disp8} mov       dword ptr [esi + 0x20], edi                   // 0x0062ad8e    897e20
                         call              _jmp_addr_0x0062d1c0                          // 0x0062ad91    e82a240000
                         mov.s             ecx, esi                                      // 0x0062ad96    8bce
                         call              _jmp_addr_0x005133c0                          // 0x0062ad98    e82386eeff
                         pop               edi                                           // 0x0062ad9d    5f
                         pop               esi                                           // 0x0062ad9e    5e
                         ret                                                             // 0x0062ad9f    c3
                         push              esi                                           // 0x0062ada0    56
                         mov.s             esi, ecx                                      // 0x0062ada1    8bf1
                         call              dword ptr [__imp__timeGetTime@4]              // 0x0062ada3    ff158c988a00
                         {disp32} mov      dword ptr [esi + 0x00000434], eax             // 0x0062ada9    898634040000
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0062adaf    8b442408
                         {disp32} mov      dword ptr [esi + 0x00000438], eax             // 0x0062adb3    898638040000
                         pop               esi                                           // 0x0062adb9    5e
                         ret               0x0004                                        // 0x0062adba    c20400
                         nop                                                             // 0x0062adbd    90
                         nop                                                             // 0x0062adbe    90
                         nop                                                             // 0x0062adbf    90
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0062adc0    8b442408
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x0062adc4    8b4c2404
                         push              eax                                           // 0x0062adc8    50
                         push              ecx                                           // 0x0062adc9    51
                         push              0x00d409a8                                    // 0x0062adca    68a809d400
                         call              _jmp_addr_0x0062ade0                          // 0x0062adcf    e80c000000
                         ret               0x0008                                        // 0x0062add4    c20800
                         nop                                                             // 0x0062add7    90
                         nop                                                             // 0x0062add8    90
                         nop                                                             // 0x0062add9    90
                         nop                                                             // 0x0062adda    90
                         nop                                                             // 0x0062addb    90
                         nop                                                             // 0x0062addc    90
                         nop                                                             // 0x0062addd    90
                         nop                                                             // 0x0062adde    90
                         nop                                                             // 0x0062addf    90
_jmp_addr_0x0062ade0:    {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0062ade0    8b442408
                         add               eax, 0x03                                     // 0x0062ade4    83c003
                         cmp               eax, 0x09                                     // 0x0062ade7    83f809
                         {disp32} ja       _jmp_addr_0x0062aff6                          // 0x0062adea    0f8706020000
                         jmp               dword ptr [eax*4 + 0x62affc]                  // 0x0062adf0    ff2485fcaf6200
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d96 // 0x0062adf7    813dac7cd100960d0000
                         {disp8} ja        _jmp_addr_0x0062ae0d                          // 0x0062ae01    770a
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062ae03    a1a87cd100
                         {disp32} jmp      _jmp_addr_0x0062af19                          // 0x0062ae08    e90c010000
_jmp_addr_0x0062ae0d:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0062ae0d    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a308]             // 0x0062ae13    8d8108a30000
                         {disp32} jmp      _jmp_addr_0x0062af19                          // 0x0062ae19    e9fb000000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d97 // 0x0062ae1e    813dac7cd100970d0000
                         {disp8} ja        _jmp_addr_0x0062ae34                          // 0x0062ae28    770a
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062ae2a    a1a87cd100
                         {disp32} jmp      _jmp_addr_0x0062af19                          // 0x0062ae2f    e9e5000000
_jmp_addr_0x0062ae34:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0062ae34    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a314]             // 0x0062ae3a    8d8114a30000
                         {disp32} jmp      _jmp_addr_0x0062af19                          // 0x0062ae40    e9d4000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a9ac]        // 0x0062ae45    8b0dac09d400
                         test              ecx, ecx                                      // 0x0062ae4b    85c9
                         {disp8} je        _jmp_addr_0x0062ae86                          // 0x0062ae4d    7437
                         call              _jmp_addr_0x00408240                          // 0x0062ae4f    e8ecd3ddff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d98 // 0x0062ae54    813dac7cd100980d0000
                         {disp8} ja        _jmp_addr_0x0062ae67                          // 0x0062ae5e    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062ae60    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0062ae73                          // 0x0062ae65    eb0c
_jmp_addr_0x0062ae67:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0062ae67    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a320]             // 0x0062ae6d    8d8120a30000
_jmp_addr_0x0062ae73:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0062ae73    8b5008
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a9ac]        // 0x0062ae76    8b0dac09d400
                         push              0x0                                           // 0x0062ae7c    6a00
                         push              0x0                                           // 0x0062ae7e    6a00
                         push              edx                                           // 0x0062ae80    52
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0062ae81    e80a63deff
_jmp_addr_0x0062ae86:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0062ae86    8b442404
                         {disp8} mov       dword ptr [eax + 0x28], 0x00000001            // 0x0062ae8a    c7402801000000
                         ret               0x000c                                        // 0x0062ae91    c20c00
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d99 // 0x0062ae94    813dac7cd100990d0000
                         {disp8} ja        _jmp_addr_0x0062aea7                          // 0x0062ae9e    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062aea0    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0062af19                          // 0x0062aea5    eb72
_jmp_addr_0x0062aea7:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0062aea7    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a32c]             // 0x0062aead    8d812ca30000
                         {disp8} jmp       _jmp_addr_0x0062af19                          // 0x0062aeb3    eb64
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x0062aeb5    8b4c2404
                         {disp8} mov       dword ptr [ecx + 0x28], 0x00000000            // 0x0062aeb9    c7412800000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a9ac]        // 0x0062aec0    8b0dac09d400
                         test              ecx, ecx                                      // 0x0062aec6    85c9
                         {disp32} je       _jmp_addr_0x0062aff6                          // 0x0062aec8    0f8428010000
                         call              _jmp_addr_0x00408240                          // 0x0062aece    e86dd3ddff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d9a // 0x0062aed3    813dac7cd1009a0d0000
                         {disp8} ja        _jmp_addr_0x0062aee9                          // 0x0062aedd    770a
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062aedf    a1a87cd100
                         {disp32} jmp      _jmp_addr_0x0062afe3                          // 0x0062aee4    e9fa000000
_jmp_addr_0x0062aee9:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0062aee9    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a338]             // 0x0062aeef    8d8238a30000
                         {disp32} jmp      _jmp_addr_0x0062afe3                          // 0x0062aef5    e9e9000000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d9b // 0x0062aefa    813dac7cd1009b0d0000
                         {disp8} ja        _jmp_addr_0x0062af0d                          // 0x0062af04    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062af06    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0062af19                          // 0x0062af0b    eb0c
_jmp_addr_0x0062af0d:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0062af0d    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a344]             // 0x0062af13    8d8144a30000
_jmp_addr_0x0062af19:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0062af19    8b5008
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0062af1c    8b44240c
                         push              edx                                           // 0x0062af20    52
                         push              eax                                           // 0x0062af21    50
                         call              _wcscpy                                       // 0x0062af22    e88fb01900
                         add               esp, 0x08                                     // 0x0062af27    83c408
                         ret               0x000c                                        // 0x0062af2a    c20c00
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x0062af2d    8b4c2404
                         {disp8} mov       dword ptr [ecx + 0x28], 0x00000000            // 0x0062af31    c7412800000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a9ac]        // 0x0062af38    8b0dac09d400
                         test              ecx, ecx                                      // 0x0062af3e    85c9
                         {disp32} je       _jmp_addr_0x0062aff6                          // 0x0062af40    0f84b0000000
                         call              _jmp_addr_0x00408240                          // 0x0062af46    e8f5d2ddff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d9c // 0x0062af4b    813dac7cd1009c0d0000
                         {disp8} ja        _jmp_addr_0x0062af61                          // 0x0062af55    770a
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062af57    a1a87cd100
                         {disp32} jmp      _jmp_addr_0x0062afe3                          // 0x0062af5c    e982000000
_jmp_addr_0x0062af61:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0062af61    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a350]             // 0x0062af67    8d8250a30000
                         {disp8} jmp       _jmp_addr_0x0062afe3                          // 0x0062af6d    eb74
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x0062af6f    8b4c2404
                         {disp8} mov       dword ptr [ecx + 0x28], 0x00000000            // 0x0062af73    c7412800000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a9ac]        // 0x0062af7a    8b0dac09d400
                         test              ecx, ecx                                      // 0x0062af80    85c9
                         {disp8} je        _jmp_addr_0x0062aff6                          // 0x0062af82    7472
                         call              _jmp_addr_0x00408240                          // 0x0062af84    e8b7d2ddff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d9d // 0x0062af89    813dac7cd1009d0d0000
                         {disp8} ja        _jmp_addr_0x0062af9c                          // 0x0062af93    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062af95    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0062afe3                          // 0x0062af9a    eb47
_jmp_addr_0x0062af9c:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0062af9c    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a35c]             // 0x0062afa2    8d825ca30000
                         {disp8} jmp       _jmp_addr_0x0062afe3                          // 0x0062afa8    eb39
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x0062afaa    8b4c2404
                         {disp8} mov       dword ptr [ecx + 0x28], 0x00000000            // 0x0062afae    c7412800000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a9ac]        // 0x0062afb5    8b0dac09d400
                         test              ecx, ecx                                      // 0x0062afbb    85c9
                         {disp8} je        _jmp_addr_0x0062aff6                          // 0x0062afbd    7437
                         call              _jmp_addr_0x00408240                          // 0x0062afbf    e87cd2ddff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d9e // 0x0062afc4    813dac7cd1009e0d0000
                         {disp8} ja        _jmp_addr_0x0062afd7                          // 0x0062afce    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062afd0    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0062afe3                          // 0x0062afd5    eb0c
_jmp_addr_0x0062afd7:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0062afd7    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a368]             // 0x0062afdd    8d8268a30000
_jmp_addr_0x0062afe3:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0062afe3    8b4008
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a9ac]        // 0x0062afe6    8b0dac09d400
                         push              0x0                                           // 0x0062afec    6a00
                         push              0x0                                           // 0x0062afee    6a00
                         push              eax                                           // 0x0062aff0    50
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0062aff1    e89a61deff
_jmp_addr_0x0062aff6:    ret               0x000c                                        // 0x0062aff6    c20c00

// Snippet: db, [0x0062aff9, 0x0062affc)
.byte 0x8d, 0x49, 0x00            // 0x0062aff9

// Snippet: jmptbl, [0x0062affc, 0x0062b024)
.byte 0xb5, 0xae, 0x62, 0x00      // 0x0062affc
.byte 0x2d, 0xaf, 0x62, 0x00      // 0x0062b000
.byte 0x6f, 0xaf, 0x62, 0x00      // 0x0062b004
.byte 0xf6, 0xaf, 0x62, 0x00      // 0x0062b008
.byte 0xf7, 0xad, 0x62, 0x00      // 0x0062b00c
.byte 0x45, 0xae, 0x62, 0x00      // 0x0062b010
.byte 0x1e, 0xae, 0x62, 0x00      // 0x0062b014
.byte 0x94, 0xae, 0x62, 0x00      // 0x0062b018
.byte 0xfa, 0xae, 0x62, 0x00      // 0x0062b01c
.byte 0xaa, 0xaf, 0x62, 0x00      // 0x0062b020

// Snippet: db, [0x0062b024, 0x0062b030)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0062b024
.byte 0x90, 0x90, 0x90, 0x90      // 0x0062b028
.byte 0x90, 0x90, 0x90, 0x90      // 0x0062b02c

