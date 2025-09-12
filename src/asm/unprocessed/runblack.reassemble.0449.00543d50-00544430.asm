.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern _jmp_addr_0x004287c0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00633ae0
.extern _jmp_addr_0x00633b30
.extern _jmp_addr_0x00633b60
.extern _jmp_addr_0x00633bd0
.extern _jmp_addr_0x00633bf0
.extern _jmp_addr_0x00633ef0
.extern ___nw__FUl

.globl _jmp_addr_0x00543d50
.globl ?Init@CDBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@CDBox@@UAEXXZ
.globl ?InitControls@CDBox@@UAEXXZ
.globl ?Init@SkipBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z

start_0x00543d50_0x00544430:
// Snippet: asm, [0x00543d50, 0x0054441a)
_jmp_addr_0x00543d50:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00543d50    8b442404
                         mov              dword ptr [ecx], eax                          // 0x00543d54    8901
                         ret              0x0004                                        // 0x00543d56    c20400
                         nop                                                            // 0x00543d59    90
                         nop                                                            // 0x00543d5a    90
                         nop                                                            // 0x00543d5b    90
                         nop                                                            // 0x00543d5c    90
                         nop                                                            // 0x00543d5d    90
                         nop                                                            // 0x00543d5e    90
                         nop                                                            // 0x00543d5f    90
                         ret                                                            // 0x00543d60    c3
                         nop                                                            // 0x00543d61    90
                         nop                                                            // 0x00543d62    90
                         nop                                                            // 0x00543d63    90
                         nop                                                            // 0x00543d64    90
                         nop                                                            // 0x00543d65    90
                         nop                                                            // 0x00543d66    90
                         nop                                                            // 0x00543d67    90
                         nop                                                            // 0x00543d68    90
                         nop                                                            // 0x00543d69    90
                         nop                                                            // 0x00543d6a    90
                         nop                                                            // 0x00543d6b    90
                         nop                                                            // 0x00543d6c    90
                         nop                                                            // 0x00543d6d    90
                         nop                                                            // 0x00543d6e    90
                         nop                                                            // 0x00543d6f    90
                         ret                                                            // 0x00543d70    c3
                         nop                                                            // 0x00543d71    90
                         nop                                                            // 0x00543d72    90
                         nop                                                            // 0x00543d73    90
                         nop                                                            // 0x00543d74    90
                         nop                                                            // 0x00543d75    90
                         nop                                                            // 0x00543d76    90
                         nop                                                            // 0x00543d77    90
                         nop                                                            // 0x00543d78    90
                         nop                                                            // 0x00543d79    90
                         nop                                                            // 0x00543d7a    90
                         nop                                                            // 0x00543d7b    90
                         nop                                                            // 0x00543d7c    90
                         nop                                                            // 0x00543d7d    90
                         nop                                                            // 0x00543d7e    90
                         nop                                                            // 0x00543d7f    90
?Init@CDBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x00543d80    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x00543d84    8b542404
                         push             ebx                                           // 0x00543d88    53
                         push             esi                                           // 0x00543d89    56
                         mov.s            esi, ecx                                      // 0x00543d8a    8bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x00543d8c    8b4c2410
                         push             eax                                           // 0x00543d90    50
                         push             ecx                                           // 0x00543d91    51
                         push             edx                                           // 0x00543d92    52
                         mov.s            ecx, esi                                      // 0x00543d93    8bce
                         call             @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00543d95    e866f6fcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab7c], esi        // 0x00543d9a    89357c0bcd00
                         call             _GetMidTextSize__Fv                           // 0x00543da0    e85b3cecff
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x00543da5    8b4e04
                         push             0x00000d07                                    // 0x00543da8    68070d0000
                         push             0x00bea568                                    // 0x00543dad    6868a5be00
                         push             0x00000244                                    // 0x00543db2    6844020000
                         {disp32} mov     dword ptr [ecx + 0x000000ac], eax             // 0x00543db7    8981ac000000
                         call             ___nw__FUl                                    // 0x00543dbd    e8ce792900
                         xor.s            ebx, ebx                                      // 0x00543dc2    33db
                         add              esp, 0x0c                                     // 0x00543dc4    83c40c
                         cmp.s            eax, ebx                                      // 0x00543dc7    3bc3
                         {disp8} je       _jmp_addr_0x00543dea                          // 0x00543dc9    741f
                         push             ebx                                           // 0x00543dcb    53
                         push             0x009cee0c                                    // 0x00543dcc    680cee9c00
                         push             0x1e                                          // 0x00543dd1    6a1e
                         push             0x64                                          // 0x00543dd3    6a64
                         push             0x00000104                                    // 0x00543dd5    6804010000
                         push             0x0000015e                                    // 0x00543dda    685e010000
                         push             0x1                                           // 0x00543ddf    6a01
                         mov.s            ecx, eax                                      // 0x00543de1    8bc8
                         call             @__ct__10SetupButtonFiiiiiPwi@36              // 0x00543de3    e8c85aecff
                         {disp8} jmp      _jmp_addr_0x00543dec                          // 0x00543de8    eb02
_jmp_addr_0x00543dea:    xor.s            eax, eax                                      // 0x00543dea    33c0
_jmp_addr_0x00543dec:    {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x00543dec    894620
                         call             _GetMidTextSize__Fv                           // 0x00543def    e80c3cecff
                         {disp8} mov      edx, dword ptr [esi + 0x20]                   // 0x00543df4    8b5620
                         push             0x00000d09                                    // 0x00543df7    68090d0000
                         push             0x00bea568                                    // 0x00543dfc    6868a5be00
                         push             0x0000025c                                    // 0x00543e01    685c020000
                         {disp8} mov      dword ptr [edx + 0x20], eax                   // 0x00543e06    894220
                         call             ___nw__FUl                                    // 0x00543e09    e882792900
                         add              esp, 0x0c                                     // 0x00543e0e    83c40c
                         cmp.s            eax, ebx                                      // 0x00543e11    3bc3
                         {disp8} je       _jmp_addr_0x00543e34                          // 0x00543e13    741f
                         push             0x2                                           // 0x00543e15    6a02
                         push             ebx                                           // 0x00543e17    53
                         push             0x20                                          // 0x00543e18    6a20
                         push             0x009cee0c                                    // 0x00543e1a    680cee9c00
                         push             0x00000103                                    // 0x00543e1f    6803010000
                         push             0x00000136                                    // 0x00543e24    6836010000
                         push             0x2                                           // 0x00543e29    6a02
                         mov.s            ecx, eax                                      // 0x00543e2b    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00543e2d    e82e94ecff
                         {disp8} jmp      _jmp_addr_0x00543e36                          // 0x00543e32    eb02
_jmp_addr_0x00543e34:    xor.s            eax, eax                                      // 0x00543e34    33c0
_jmp_addr_0x00543e36:    push             0x00000d0a                                    // 0x00543e36    680a0d0000
                         push             0x00bea568                                    // 0x00543e3b    6868a5be00
                         push             0x0000025c                                    // 0x00543e40    685c020000
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x00543e45    894610
                         call             ___nw__FUl                                    // 0x00543e48    e843792900
                         add              esp, 0x0c                                     // 0x00543e4d    83c40c
                         cmp.s            eax, ebx                                      // 0x00543e50    3bc3
                         {disp8} je       _jmp_addr_0x00543e73                          // 0x00543e52    741f
                         push             0x3                                           // 0x00543e54    6a03
                         push             ebx                                           // 0x00543e56    53
                         push             0x20                                          // 0x00543e57    6a20
                         push             0x009cee0c                                    // 0x00543e59    680cee9c00
                         push             0x00000103                                    // 0x00543e5e    6803010000
                         push             0x000001ca                                    // 0x00543e63    68ca010000
                         push             0x3                                           // 0x00543e68    6a03
                         mov.s            ecx, eax                                      // 0x00543e6a    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00543e6c    e8ef93ecff
                         {disp8} jmp      _jmp_addr_0x00543e75                          // 0x00543e71    eb02
_jmp_addr_0x00543e73:    xor.s            eax, eax                                      // 0x00543e73    33c0
_jmp_addr_0x00543e75:    push             0x00000d0c                                    // 0x00543e75    680c0d0000
                         push             0x00bea568                                    // 0x00543e7a    6868a5be00
                         push             0x0000025c                                    // 0x00543e7f    685c020000
                         {disp8} mov      dword ptr [esi + 0x14], eax                   // 0x00543e84    894614
                         call             ___nw__FUl                                    // 0x00543e87    e804792900
                         add              esp, 0x0c                                     // 0x00543e8c    83c40c
                         cmp.s            eax, ebx                                      // 0x00543e8f    3bc3
                         {disp8} je       _jmp_addr_0x00543eb2                          // 0x00543e91    741f
                         push             0x3                                           // 0x00543e93    6a03
                         push             ebx                                           // 0x00543e95    53
                         push             0x20                                          // 0x00543e96    6a20
                         push             0x009cee0c                                    // 0x00543e98    680cee9c00
                         push             0x0000013f                                    // 0x00543e9d    683f010000
                         push             0x00000168                                    // 0x00543ea2    6868010000
                         push             0x4                                           // 0x00543ea7    6a04
                         mov.s            ecx, eax                                      // 0x00543ea9    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00543eab    e8b093ecff
                         {disp8} jmp      _jmp_addr_0x00543eb4                          // 0x00543eb0    eb02
_jmp_addr_0x00543eb2:    xor.s            eax, eax                                      // 0x00543eb2    33c0
_jmp_addr_0x00543eb4:    push             0x00000d0d                                    // 0x00543eb4    680d0d0000
                         push             0x00bea568                                    // 0x00543eb9    6868a5be00
                         push             0x0000025c                                    // 0x00543ebe    685c020000
                         {disp8} mov      dword ptr [esi + 0x18], eax                   // 0x00543ec3    894618
                         call             ___nw__FUl                                    // 0x00543ec6    e8c5782900
                         add              esp, 0x0c                                     // 0x00543ecb    83c40c
                         cmp.s            eax, ebx                                      // 0x00543ece    3bc3
                         {disp8} je       _jmp_addr_0x00543ef0                          // 0x00543ed0    741e
                         push             ebx                                           // 0x00543ed2    53
                         push             ebx                                           // 0x00543ed3    53
                         push             0x20                                          // 0x00543ed4    6a20
                         push             0x009cee0c                                    // 0x00543ed6    680cee9c00
                         push             0x0000013f                                    // 0x00543edb    683f010000
                         push             0x00000198                                    // 0x00543ee0    6898010000
                         push             0x5                                           // 0x00543ee5    6a05
                         mov.s            ecx, eax                                      // 0x00543ee7    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00543ee9    e87293ecff
                         {disp8} jmp      _jmp_addr_0x00543ef2                          // 0x00543eee    eb02
_jmp_addr_0x00543ef0:    xor.s            eax, eax                                      // 0x00543ef0    33c0
_jmp_addr_0x00543ef2:    push             edi                                           // 0x00543ef2    57
                         push             0x00000d0f                                    // 0x00543ef3    680f0d0000
                         push             0x00bea568                                    // 0x00543ef8    6868a5be00
                         push             0x00000244                                    // 0x00543efd    6844020000
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x00543f02    89461c
                         call             ___nw__FUl                                    // 0x00543f05    e886782900
                         mov.s            edi, eax                                      // 0x00543f0a    8bf8
                         add              esp, 0x0c                                     // 0x00543f0c    83c40c
                         cmp.s            edi, ebx                                      // 0x00543f0f    3bfb
                         {disp8} je       _jmp_addr_0x00543f68                          // 0x00543f11    7455
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000de7 // 0x00543f13    813dac7cd100e70d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00543f1d    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00543f29                          // 0x00543f22    7605
                         add              eax, 0x0000a6d4                               // 0x00543f24    05d4a60000
_jmp_addr_0x00543f29:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x00543f29    8b4808
                         push             ecx                                           // 0x00543f2c    51
                         push             0x3c                                          // 0x00543f2d    6a3c
                         push             0x00000190                                    // 0x00543f2f    6890010000
                         push             0x000000c8                                    // 0x00543f34    68c8000000
                         push             0x000000c8                                    // 0x00543f39    68c8000000
                         push             0x000003e7                                    // 0x00543f3e    68e7030000
                         mov.s            ecx, edi                                      // 0x00543f43    8bcf
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00543f45    e80653ecff
                         mov              dword ptr [edi], 0x008ab5c0                   // 0x00543f4a    c707c0b58a00
                         {disp32} mov     dword ptr [edi + 0x0000023c], 0x00000004      // 0x00543f50    c7873c02000004000000
                         {disp32} mov     byte ptr [edi + 0x0000022a], bl               // 0x00543f5a    889f2a020000
                         {disp32} mov     dword ptr [edi + 0x00000240], ebx             // 0x00543f60    899f40020000
                         {disp8} jmp      _jmp_addr_0x00543f6a                          // 0x00543f66    eb02
_jmp_addr_0x00543f68:    xor.s            edi, edi                                      // 0x00543f68    33ff
_jmp_addr_0x00543f6a:    call             _GetMidTextSize__Fv                           // 0x00543f6a    e8913aecff
                         push             0x00000d11                                    // 0x00543f6f    68110d0000
                         push             0x00bea568                                    // 0x00543f74    6868a5be00
                         push             0x0000025c                                    // 0x00543f79    685c020000
                         {disp8} mov      dword ptr [edi + 0x20], eax                   // 0x00543f7e    894720
                         call             ___nw__FUl                                    // 0x00543f81    e80a782900
                         add              esp, 0x0c                                     // 0x00543f86    83c40c
                         cmp.s            eax, ebx                                      // 0x00543f89    3bc3
                         pop              edi                                           // 0x00543f8b    5f
                         {disp8} je       _jmp_addr_0x00543fcc                          // 0x00543f8c    743e
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000d7a // 0x00543f8e    813dac7cd1007a0d0000
                         {disp8} ja       _jmp_addr_0x00543fa2                          // 0x00543f98    7708
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00543f9a    8b0da87cd100
                         {disp8} jmp      _jmp_addr_0x00543fae                          // 0x00543fa0    eb0c
_jmp_addr_0x00543fa2:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x00543fa2    8b15a87cd100
                         {disp32} lea     ecx, dword ptr [edx + 0x0000a1b8]             // 0x00543fa8    8d8ab8a10000
_jmp_addr_0x00543fae:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00543fae    8b4908
                         push             0x2                                           // 0x00543fb1    6a02
                         push             ebx                                           // 0x00543fb3    53
                         push             0x20                                          // 0x00543fb4    6a20
                         push             ecx                                           // 0x00543fb6    51
                         push             0x00000186                                    // 0x00543fb7    6886010000
                         push             0x000000e6                                    // 0x00543fbc    68e6000000
                         push             0xb                                           // 0x00543fc1    6a0b
                         mov.s            ecx, eax                                      // 0x00543fc3    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00543fc5    e89692ecff
                         {disp8} jmp      _jmp_addr_0x00543fce                          // 0x00543fca    eb02
_jmp_addr_0x00543fcc:    xor.s            eax, eax                                      // 0x00543fcc    33c0
_jmp_addr_0x00543fce:    push             0x00000d13                                    // 0x00543fce    68130d0000
                         push             0x00bea568                                    // 0x00543fd3    6868a5be00
                         push             0x00000260                                    // 0x00543fd8    6860020000
                         {disp8} mov      dword ptr [esi + 0x24], eax                   // 0x00543fdd    894624
                         call             ___nw__FUl                                    // 0x00543fe0    e8ab772900
                         add              esp, 0x0c                                     // 0x00543fe5    83c40c
                         cmp.s            eax, ebx                                      // 0x00543fe8    3bc3
                         {disp8} je       _jmp_addr_0x00544021                          // 0x00543fea    7435
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000de8 // 0x00543fec    813dac7cd100e80d0000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00543ff6    8b0da87cd100
                         {disp8} jbe      _jmp_addr_0x00544004                          // 0x00543ffc    7606
                         add              ecx, 0x0000a6e0                               // 0x00543ffe    81c1e0a60000
_jmp_addr_0x00544004:    {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x00544004    8b4908
                         push             0x18                                          // 0x00544007    6a18
                         push             ecx                                           // 0x00544009    51
                         push             ebx                                           // 0x0054400a    53
                         push             ebx                                           // 0x0054400b    53
                         push             0x00000189                                    // 0x0054400c    6889010000
                         push             0x00000222                                    // 0x00544011    6822020000
                         push             0x6                                           // 0x00544016    6a06
                         mov.s            ecx, eax                                      // 0x00544018    8bc8
                         call             @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0054401a    e8f1ceecff
                         {disp8} jmp      _jmp_addr_0x00544023                          // 0x0054401f    eb02
_jmp_addr_0x00544021:    xor.s            eax, eax                                      // 0x00544021    33c0
_jmp_addr_0x00544023:    {disp8} mov      dword ptr [esi + 0x28], eax                   // 0x00544023    894628
                         {disp32} mov     dword ptr [eax + 0x00000244], 0x00000001      // 0x00544026    c7804402000001000000
                         {disp8} mov      dword ptr [esi + 0x30], ebx                   // 0x00544030    895e30
                         {disp8} mov      dword ptr [esi + 0x2c], ebx                   // 0x00544033    895e2c
                         pop              esi                                           // 0x00544036    5e
                         pop              ebx                                           // 0x00544037    5b
                         ret              0x000c                                        // 0x00544038    c20c00
                         call             ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0054403b    e839d8ebff
?Destroy@CDBox@@UAEXXZ:
                         call             ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00544040    e84bf5fcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab7c], 0x00000000 // 0x00544045    c7057c0bcd0000000000
                         ret                                                            // 0x0054404f    c3
?InitControls@CDBox@@UAEXXZ:
                         push             esi                                           // 0x00544050    56
                         mov.s            esi, ecx                                      // 0x00544051    8bf1
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x00544053    8b0d203bcd00
                         call             _jmp_addr_0x004287c0                          // 0x00544059    e86247eeff
                         push             eax                                           // 0x0054405e    50
                         call             _jmp_addr_0x00633b30                          // 0x0054405f    e8ccfa0e00
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x00544064    89462c
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x00544067    8b0d203bcd00
                         add              esp, 0x04                                     // 0x0054406d    83c404
                         call             _jmp_addr_0x004287c0                          // 0x00544070    e84b47eeff
                         push             eax                                           // 0x00544075    50
                         call             _jmp_addr_0x00633bf0                          // 0x00544076    e875fb0e00
                         {disp8} mov      ecx, dword ptr [esi + 0x2c]                   // 0x0054407b    8b4e2c
                         add              esp, 0x04                                     // 0x0054407e    83c404
                         cmp.s            ecx, eax                                      // 0x00544081    3bc8
                         {disp8} mov      dword ptr [esi + 0x30], eax                   // 0x00544083    894630
                         {disp8} jle      _jmp_addr_0x0054408b                          // 0x00544086    7e03
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x00544088    89462c
_jmp_addr_0x0054408b:    {disp8} mov      ecx, dword ptr [esi + 0x20]                   // 0x0054408b    8b4e20
                         push             eax                                           // 0x0054408e    50
                         {disp8} mov      eax, dword ptr [esi + 0x2c]                   // 0x0054408f    8b462c
                         push             eax                                           // 0x00544092    50
                         add              ecx, 0x24                                     // 0x00544093    83c124
                         push             0x00bea730                                    // 0x00544096    6830a7be00
                         push             ecx                                           // 0x0054409b    51
                         call             dword ptr [rdata_bytes + 0x360]               // 0x0054409c    ff1560938a00
                         add              esp, 0x10                                     // 0x005440a2    83c410
                         pop              esi                                           // 0x005440a5    5e
                         ret                                                            // 0x005440a6    c3
                         nop                                                            // 0x005440a7    90
                         nop                                                            // 0x005440a8    90
                         nop                                                            // 0x005440a9    90
                         nop                                                            // 0x005440aa    90
                         nop                                                            // 0x005440ab    90
                         nop                                                            // 0x005440ac    90
                         nop                                                            // 0x005440ad    90
                         nop                                                            // 0x005440ae    90
                         nop                                                            // 0x005440af    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x005440b0    8b442404
                         dec              eax                                           // 0x005440b4    48
                         push             esi                                           // 0x005440b5    56
                         {disp32} mov     esi, dword ptr [data_bytes + 0x30ab7c]        // 0x005440b6    8b357c0bcd00
                         {disp8} je       _jmp_addr_0x005440d2                          // 0x005440bc    7414
                         sub              eax, 0x05                                     // 0x005440be    83e805
                         {disp32} jne     _jmp_addr_0x005441af                          // 0x005440c1    0f85e8000000
                         mov              eax, dword ptr [esi]                          // 0x005440c7    8b06
                         mov.s            ecx, esi                                      // 0x005440c9    8bce
                         call             dword ptr [eax + 0x20]                        // 0x005440cb    ff5020
                         pop              esi                                           // 0x005440ce    5e
                         ret              0x0014                                        // 0x005440cf    c21400
_jmp_addr_0x005440d2:    {disp32} mov     ecx, dword ptr [_global]                      // 0x005440d2    8b0d203bcd00
                         push             ebx                                           // 0x005440d8    53
                         push             edi                                           // 0x005440d9    57
                         call             _jmp_addr_0x004287c0                          // 0x005440da    e8e146eeff
                         push             eax                                           // 0x005440df    50
                         call             _jmp_addr_0x00633ae0                          // 0x005440e0    e8fbf90e00
                         {disp8} mov      edi, dword ptr [esp + 0x1c]                   // 0x005440e5    8b7c241c
                         add              esp, 0x04                                     // 0x005440e9    83c404
                         and              eax, 0x000000ff                               // 0x005440ec    25ff000000
                         mov.s            ebx, eax                                      // 0x005440f1    8bd8
                         cmp              edi, dword ptr [esi + 0x24]                   // 0x005440f3    3b7e24
                         {disp8} jne      _jmp_addr_0x005440fd                          // 0x005440f6    7505
                         call             _jmp_addr_0x00513640                          // 0x005440f8    e843f5fcff
_jmp_addr_0x005440fd:    cmp              edi, dword ptr [esi + 0x14]                   // 0x005440fd    3b7e14
                         {disp8} je       _jmp_addr_0x00544107                          // 0x00544100    7405
                         cmp              edi, dword ptr [esi + 0x20]                   // 0x00544102    3b7e20
                         {disp8} jne      _jmp_addr_0x00544121                          // 0x00544105    751a
_jmp_addr_0x00544107:    {disp8} mov      eax, dword ptr [esi + 0x2c]                   // 0x00544107    8b462c
                         inc              eax                                           // 0x0054410a    40
                         mov.s            ecx, eax                                      // 0x0054410b    8bc8
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x0054410d    89462c
                         {disp8} mov      eax, dword ptr [esi + 0x30]                   // 0x00544110    8b4630
                         cmp.s            ecx, eax                                      // 0x00544113    3bc8
                         {disp8} jle      _jmp_addr_0x0054411a                          // 0x00544115    7e03
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x00544117    89462c
_jmp_addr_0x0054411a:    test             ebx, ebx                                      // 0x0054411a    85db
                         {disp8} je       _jmp_addr_0x00544121                          // 0x0054411c    7403
                         {disp8} mov      edi, dword ptr [esi + 0x18]                   // 0x0054411e    8b7e18
_jmp_addr_0x00544121:    cmp              edi, dword ptr [esi + 0x10]                   // 0x00544121    3b7e10
                         {disp8} jne      _jmp_addr_0x00544144                          // 0x00544124    751e
                         {disp8} mov      eax, dword ptr [esi + 0x2c]                   // 0x00544126    8b462c
                         cmp              eax, 0x01                                     // 0x00544129    83f801
                         {disp8} jle      _jmp_addr_0x00544132                          // 0x0054412c    7e04
                         dec              eax                                           // 0x0054412e    48
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x0054412f    89462c
_jmp_addr_0x00544132:    {disp8} mov      eax, dword ptr [esi + 0x30]                   // 0x00544132    8b4630
                         cmp              dword ptr [esi + 0x2c], eax                   // 0x00544135    39462c
                         {disp8} jle      _jmp_addr_0x0054413d                          // 0x00544138    7e03
                         {disp8} mov      dword ptr [esi + 0x2c], eax                   // 0x0054413a    89462c
_jmp_addr_0x0054413d:    test             ebx, ebx                                      // 0x0054413d    85db
                         {disp8} je       _jmp_addr_0x00544144                          // 0x0054413f    7403
                         {disp8} mov      edi, dword ptr [esi + 0x18]                   // 0x00544141    8b7e18
_jmp_addr_0x00544144:    cmp              edi, dword ptr [esi + 0x1c]                   // 0x00544144    3b7e1c
                         {disp8} jne      _jmp_addr_0x00544164                          // 0x00544147    751b
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x00544149    8b0d203bcd00
                         call             _jmp_addr_0x004287c0                          // 0x0054414f    e86c46eeff
                         push             eax                                           // 0x00544154    50
                         call             _jmp_addr_0x00633bd0                          // 0x00544155    e876fa0e00
                         add              esp, 0x04                                     // 0x0054415a    83c404
                         {disp8} mov      dword ptr [esi + 0x2c], 0x00000001            // 0x0054415d    c7462c01000000
_jmp_addr_0x00544164:    cmp              edi, dword ptr [esi + 0x18]                   // 0x00544164    3b7e18
                         pop              edi                                           // 0x00544167    5f
                         pop              ebx                                           // 0x00544168    5b
                         {disp8} jne      _jmp_addr_0x00544183                          // 0x00544169    7518
                         {disp8} mov      ecx, dword ptr [esi + 0x2c]                   // 0x0054416b    8b4e2c
                         push             ecx                                           // 0x0054416e    51
                         {disp32} mov     ecx, dword ptr [_global]                      // 0x0054416f    8b0d203bcd00
                         call             _jmp_addr_0x004287c0                          // 0x00544175    e84646eeff
                         push             eax                                           // 0x0054417a    50
                         call             _jmp_addr_0x00633b60                          // 0x0054417b    e8e0f90e00
                         add              esp, 0x08                                     // 0x00544180    83c408
_jmp_addr_0x00544183:    push             0x1                                           // 0x00544183    6a01
                         push             0x3dcccccd                                    // 0x00544185    68cdcccc3d
                         call             _jmp_addr_0x00633ef0                          // 0x0054418a    e861fd0e00
                         {disp8} mov      edx, dword ptr [esi + 0x30]                   // 0x0054418f    8b5630
                         {disp8} mov      eax, dword ptr [esi + 0x2c]                   // 0x00544192    8b462c
                         {disp8} mov      ecx, dword ptr [esi + 0x20]                   // 0x00544195    8b4e20
                         add              esp, 0x08                                     // 0x00544198    83c408
                         push             edx                                           // 0x0054419b    52
                         push             eax                                           // 0x0054419c    50
                         add              ecx, 0x24                                     // 0x0054419d    83c124
                         push             0x00bea730                                    // 0x005441a0    6830a7be00
                         push             ecx                                           // 0x005441a5    51
                         call             dword ptr [rdata_bytes + 0x360]               // 0x005441a6    ff1560938a00
                         add              esp, 0x10                                     // 0x005441ac    83c410
_jmp_addr_0x005441af:    pop              esi                                           // 0x005441af    5e
                         ret              0x0014                                        // 0x005441b0    c21400
                         nop                                                            // 0x005441b3    90
                         nop                                                            // 0x005441b4    90
                         nop                                                            // 0x005441b5    90
                         nop                                                            // 0x005441b6    90
                         nop                                                            // 0x005441b7    90
                         nop                                                            // 0x005441b8    90
                         nop                                                            // 0x005441b9    90
                         nop                                                            // 0x005441ba    90
                         nop                                                            // 0x005441bb    90
                         nop                                                            // 0x005441bc    90
                         nop                                                            // 0x005441bd    90
                         nop                                                            // 0x005441be    90
                         nop                                                            // 0x005441bf    90
?Init@SkipBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x005441c0    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x005441c4    8b542404
                         push             ebx                                           // 0x005441c8    53
                         push             ebp                                           // 0x005441c9    55
                         push             esi                                           // 0x005441ca    56
                         push             edi                                           // 0x005441cb    57
                         mov.s            ebx, ecx                                      // 0x005441cc    8bd9
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x005441ce    8b4c2418
                         push             eax                                           // 0x005441d2    50
                         push             ecx                                           // 0x005441d3    51
                         push             edx                                           // 0x005441d4    52
                         mov.s            ecx, ebx                                      // 0x005441d5    8bcb
                         call             @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x005441d7    e824f2fcff
                         {disp32} mov     dword ptr [data_bytes + 0x30ab80], ebx        // 0x005441dc    891d800bcd00
                         call             _GetMidTextSize__Fv                           // 0x005441e2    e81938ecff
                         {disp8} mov      ecx, dword ptr [ebx + 0x04]                   // 0x005441e7    8b4b04
                         push             0x00000d68                                    // 0x005441ea    68680d0000
                         push             0x00bea568                                    // 0x005441ef    6868a5be00
                         push             0x00000244                                    // 0x005441f4    6844020000
                         {disp32} mov     dword ptr [ecx + 0x000000ac], eax             // 0x005441f9    8981ac000000
                         call             ___nw__FUl                                    // 0x005441ff    e88c752900
                         mov.s            esi, eax                                      // 0x00544204    8bf0
                         xor.s            ebp, ebp                                      // 0x00544206    33ed
                         add              esp, 0x0c                                     // 0x00544208    83c40c
                         cmp.s            esi, ebp                                      // 0x0054420b    3bf5
                         {disp8} je       _jmp_addr_0x00544269                          // 0x0054420d    745a
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca4]        // 0x0054420f    a1a47cd100
                         mov              edi, 0x00000004                               // 0x00544214    bf04000000
                         cmp.s            eax, edi                                      // 0x00544219    3bc7
                         {disp8} ja       _jmp_addr_0x00544224                          // 0x0054421b    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca0]        // 0x0054421d    a1a07cd100
                         {disp8} jmp      _jmp_addr_0x0054422d                          // 0x00544222    eb09
_jmp_addr_0x00544224:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca0]        // 0x00544224    8b15a07cd100
                         {disp8} lea      eax, dword ptr [edx + 0x30]                   // 0x0054422a    8d4230
_jmp_addr_0x0054422d:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0054422d    8b4008
                         push             eax                                           // 0x00544230    50
                         push             0x46                                          // 0x00544231    6a46
                         push             0x000001f4                                    // 0x00544233    68f4010000
                         push             0x000000be                                    // 0x00544238    68be000000
                         push             0x00000096                                    // 0x0054423d    6896000000
                         push             0x000003e7                                    // 0x00544242    68e7030000
                         mov.s            ecx, esi                                      // 0x00544247    8bce
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00544249    e80250ecff
                         mov              dword ptr [esi], 0x008ab5c0                   // 0x0054424e    c706c0b58a00
                         {disp32} mov     dword ptr [esi + 0x0000023c], edi             // 0x00544254    89be3c020000
                         {disp32} mov     byte ptr [esi + 0x0000022a], 0x00             // 0x0054425a    c6862a02000000
                         {disp32} mov     dword ptr [esi + 0x00000240], ebp             // 0x00544261    89ae40020000
                         {disp8} jmp      _jmp_addr_0x0054426b                          // 0x00544267    eb02
_jmp_addr_0x00544269:    xor.s            esi, esi                                      // 0x00544269    33f6
_jmp_addr_0x0054426b:    call             _GetMidTextSize__Fv                           // 0x0054426b    e89037ecff
                         push             0x00000d6a                                    // 0x00544270    686a0d0000
                         push             0x00bea568                                    // 0x00544275    6868a5be00
                         push             0x0000025c                                    // 0x0054427a    685c020000
                         {disp8} mov      dword ptr [esi + 0x20], eax                   // 0x0054427f    894620
                         call             ___nw__FUl                                    // 0x00544282    e809752900
                         add              esp, 0x0c                                     // 0x00544287    83c40c
                         cmp.s            eax, ebp                                      // 0x0054428a    3bc5
                         {disp8} je       _jmp_addr_0x005442c2                          // 0x0054428c    7434
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x0054428e    813dac7cd100240a0000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00544298    8b0da87cd100
                         {disp8} jbe      _jmp_addr_0x005442a6                          // 0x0054429e    7606
                         add              ecx, 0x000079b0                               // 0x005442a0    81c1b0790000
_jmp_addr_0x005442a6:    {disp8} mov      edx, dword ptr [ecx + 0x08]                   // 0x005442a6    8b5108
                         push             0x2                                           // 0x005442a9    6a02
                         push             ebp                                           // 0x005442ab    55
                         push             0x20                                          // 0x005442ac    6a20
                         push             edx                                           // 0x005442ae    52
                         push             0x00000190                                    // 0x005442af    6890010000
                         push             0x000000dc                                    // 0x005442b4    68dc000000
                         push             0xb                                           // 0x005442b9    6a0b
                         mov.s            ecx, eax                                      // 0x005442bb    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005442bd    e89e8fecff
_jmp_addr_0x005442c2:    {disp8} mov      dword ptr [ebx + 0x20], ebp                   // 0x005442c2    896b20
                         xor.s            esi, esi                                      // 0x005442c5    33f6
_jmp_addr_0x005442c7:    cmp              esi, 0x03                                     // 0x005442c7    83fe03
                         mov              ebp, 0x00c4cd30                               // 0x005442ca    bd30cdc400
                         {disp8} ja       _jmp_addr_0x00544335                          // 0x005442cf    7764
                         jmp              dword ptr [esi*4 + 0x54441c]                  // 0x005442d1    ff24b51c445400
                         cmp              dword ptr [data_bytes + 0x351ca4], 0x05       // 0x005442d8    833da47cd10005
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca0]        // 0x005442df    a1a07cd100
                         {disp8} jbe      _jmp_addr_0x00544332                          // 0x005442e4    764c
                         add              eax, 0x3c                                     // 0x005442e6    83c03c
                         {disp8} jmp      _jmp_addr_0x00544332                          // 0x005442e9    eb47
                         cmp              dword ptr [data_bytes + 0x351ca4], 0x06       // 0x005442eb    833da47cd10006
                         {disp8} ja       _jmp_addr_0x005442fb                          // 0x005442f2    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca0]        // 0x005442f4    a1a07cd100
                         {disp8} jmp      _jmp_addr_0x00544332                          // 0x005442f9    eb37
_jmp_addr_0x005442fb:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca0]        // 0x005442fb    8b0da07cd100
                         {disp8} lea      eax, dword ptr [ecx + 0x48]                   // 0x00544301    8d4148
                         {disp8} jmp      _jmp_addr_0x00544332                          // 0x00544304    eb2c
                         cmp              dword ptr [data_bytes + 0x351ca4], 0x07       // 0x00544306    833da47cd10007
                         {disp8} ja       _jmp_addr_0x00544316                          // 0x0054430d    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca0]        // 0x0054430f    a1a07cd100
                         {disp8} jmp      _jmp_addr_0x00544332                          // 0x00544314    eb1c
_jmp_addr_0x00544316:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca0]        // 0x00544316    8b15a07cd100
                         {disp8} lea      eax, dword ptr [edx + 0x54]                   // 0x0054431c    8d4254
                         {disp8} jmp      _jmp_addr_0x00544332                          // 0x0054431f    eb11
                         cmp              dword ptr [data_bytes + 0x351ca4], 0x08       // 0x00544321    833da47cd10008
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca0]        // 0x00544328    a1a07cd100
                         {disp8} jbe      _jmp_addr_0x00544332                          // 0x0054432d    7603
                         add              eax, 0x60                                     // 0x0054432f    83c060
_jmp_addr_0x00544332:    {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x00544332    8b6808
_jmp_addr_0x00544335:    push             0x00000d78                                    // 0x00544335    68780d0000
                         push             0x00bea568                                    // 0x0054433a    6868a5be00
                         push             0x00000260                                    // 0x0054433f    6860020000
                         call             ___nw__FUl                                    // 0x00544344    e847742900
                         add              esp, 0x0c                                     // 0x00544349    83c40c
                         test             eax, eax                                      // 0x0054434c    85c0
                         {disp8} je       _jmp_addr_0x00544384                          // 0x0054434e    7434
                         {disp8} mov      edx, dword ptr [ebx + 0x20]                   // 0x00544350    8b5320
                         xor.s            ecx, ecx                                      // 0x00544353    33c9
                         cmp.s            esi, edx                                      // 0x00544355    3bf2
                         sete             cl                                            // 0x00544357    0f94c1
                         push             0x18                                          // 0x0054435a    6a18
                         push             0x009cee0c                                    // 0x0054435c    680cee9c00
                         lea              edx, dword ptr [esi + esi * 0x4]              // 0x00544361    8d14b6
                         push             ecx                                           // 0x00544364    51
                         lea              ecx, dword ptr [esi + edx * 0x2]              // 0x00544365    8d0c56
                         push             0x1                                           // 0x00544368    6a01
                         {disp32} lea     edx, dword ptr [ecx * 0x4 + 0x000000e1]       // 0x0054436a    8d148de1000000
                         push             edx                                           // 0x00544371    52
                         push             0x000000fa                                    // 0x00544372    68fa000000
                         {disp8} lea      ecx, dword ptr [esi + 0x3c]                   // 0x00544377    8d4e3c
                         push             ecx                                           // 0x0054437a    51
                         mov.s            ecx, eax                                      // 0x0054437b    8bc8
                         call             @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0054437d    e88ecbecff
                         {disp8} jmp      _jmp_addr_0x00544386                          // 0x00544382    eb02
_jmp_addr_0x00544384:    xor.s            eax, eax                                      // 0x00544384    33c0
_jmp_addr_0x00544386:    push             0x00000d79                                    // 0x00544386    68790d0000
                         push             0x00bea568                                    // 0x0054438b    6868a5be00
                         push             0x00000244                                    // 0x00544390    6844020000
                         {disp8} mov      dword ptr [ebx + esi * 0x4 + 0x10], eax       // 0x00544395    8944b310
                         call             ___nw__FUl                                    // 0x00544399    e8f2732900
                         mov.s            edi, eax                                      // 0x0054439e    8bf8
                         add              esp, 0x0c                                     // 0x005443a0    83c40c
                         test             edi, edi                                      // 0x005443a3    85ff
                         {disp8} je       _jmp_addr_0x005443f1                          // 0x005443a5    744a
                         push             ebp                                           // 0x005443a7    55
                         push             0x28                                          // 0x005443a8    6a28
                         lea              edx, dword ptr [esi + esi * 0x4]              // 0x005443aa    8d14b6
                         push             0x0000012c                                    // 0x005443ad    682c010000
                         lea              eax, dword ptr [esi + edx * 0x2]              // 0x005443b2    8d0456
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x000000e1]       // 0x005443b5    8d0c85e1000000
                         push             ecx                                           // 0x005443bc    51
                         push             0x00000122                                    // 0x005443bd    6822010000
                         push             0x000003e7                                    // 0x005443c2    68e7030000
                         mov.s            ecx, edi                                      // 0x005443c7    8bcf
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005443c9    e8824eecff
                         mov              dword ptr [edi], 0x008ab5c0                   // 0x005443ce    c707c0b58a00
                         {disp32} mov     dword ptr [edi + 0x0000023c], 0x00000003      // 0x005443d4    c7873c02000003000000
                         {disp32} mov     byte ptr [edi + 0x0000022a], 0x00             // 0x005443de    c6872a02000000
                         {disp32} mov     dword ptr [edi + 0x00000240], 0x00000000      // 0x005443e5    c7874002000000000000
                         {disp8} jmp      _jmp_addr_0x005443f3                          // 0x005443ef    eb02
_jmp_addr_0x005443f1:    xor.s            edi, edi                                      // 0x005443f1    33ff
_jmp_addr_0x005443f3:    call             _GetMidTextSize__Fv                           // 0x005443f3    e80836ecff
                         {disp8} mov      dword ptr [edi + 0x20], eax                   // 0x005443f8    894720
                         {disp8} mov      edx, dword ptr [ebx + esi * 0x4 + 0x10]       // 0x005443fb    8b54b310
                         inc              esi                                           // 0x005443ff    46
                         cmp              esi, 0x04                                     // 0x00544400    83fe04
                         {disp32} mov     dword ptr [edx + 0x00000244], 0x00000000      // 0x00544403    c7824402000000000000
                         {disp32} jl      _jmp_addr_0x005442c7                          // 0x0054440d    0f8cb4feffff
                         pop              edi                                           // 0x00544413    5f
                         pop              esi                                           // 0x00544414    5e
                         pop              ebp                                           // 0x00544415    5d
                         pop              ebx                                           // 0x00544416    5b
                         ret              0x000c                                        // 0x00544417    c20c00

// Snippet: db, [0x0054441a, 0x0054441c)
.byte 0x8b, 0xff                  // 0x0054441a

// Snippet: jmptbl, [0x0054441c, 0x0054442c)
.byte 0xd8, 0x42, 0x54, 0x00      // 0x0054441c
.byte 0xeb, 0x42, 0x54, 0x00      // 0x00544420
.byte 0x06, 0x43, 0x54, 0x00      // 0x00544424
.byte 0x21, 0x43, 0x54, 0x00      // 0x00544428

// Snippet: db, [0x0054442c, 0x00544430)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0054442c

