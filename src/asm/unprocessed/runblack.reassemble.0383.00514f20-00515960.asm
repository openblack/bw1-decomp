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
.extern @__ct__11SetupSliderFiiiiifPw@36
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern _jmp_addr_0x00426d30
.extern _jmp_addr_0x00428250
.extern _jmp_addr_0x004282b0
.extern _jmp_addr_0x00428600
.extern _jmp_addr_0x00428660
.extern _jmp_addr_0x00428680
.extern _jmp_addr_0x00428690
.extern ??0DialogBoxBase@@QAE@XZ
.extern _jmp_addr_0x005133c0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x00513eb0
.extern _jmp_addr_0x00513f80
.extern _jmp_addr_0x005148b0
.extern _jmp_addr_0x0053f3e0
.extern _jmp_addr_0x0053f540
.extern _jmp_addr_0x005553f0
.extern _jmp_addr_0x00793d90
.extern _jmp_addr_0x007a1400
.extern _wcscpy
.extern ___nw__FUl

.globl ??0MiniDialogBoxOptions@@QAE@XZ
.globl ?Init@MiniDialogBoxOptions@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@MiniDialogBoxOptions@@UAEXXZ
.globl ?InitControls@MiniDialogBoxOptions@@UAEXXZ
.globl ?CanESCOut@MiniDialogBoxOptions@@UAE_NXZ

start_0x00514f20_0x00515960:
// Snippet: asm, [0x00514f20, 0x0051593a)
??0MiniDialogBoxOptions@@QAE@XZ:    push              esi                                           // 0x00514f20    56
                         mov.s             esi, ecx                                      // 0x00514f21    8bf1
                         call              ??0DialogBoxBase@@QAE@XZ                      // 0x00514f23    e878e4ffff
                         mov               dword ptr [esi], 0x008d866c                   // 0x00514f28    c7066c868d00
                         mov.s             eax, esi                                      // 0x00514f2e    8bc6
                         pop               esi                                           // 0x00514f30    5e
                         ret                                                             // 0x00514f31    c3
                         nop                                                             // 0x00514f32    90
                         nop                                                             // 0x00514f33    90
                         nop                                                             // 0x00514f34    90
                         nop                                                             // 0x00514f35    90
                         nop                                                             // 0x00514f36    90
                         nop                                                             // 0x00514f37    90
                         nop                                                             // 0x00514f38    90
                         nop                                                             // 0x00514f39    90
                         nop                                                             // 0x00514f3a    90
                         nop                                                             // 0x00514f3b    90
                         nop                                                             // 0x00514f3c    90
                         nop                                                             // 0x00514f3d    90
                         nop                                                             // 0x00514f3e    90
                         nop                                                             // 0x00514f3f    90
                         mov               dword ptr [ecx], 0x008d866c                   // 0x00514f40    c7016c868d00
                         {disp32} jmp      _jmp_addr_0x005133c0                          // 0x00514f46    e975e4ffff
                         nop                                                             // 0x00514f4b    90
                         nop                                                             // 0x00514f4c    90
                         nop                                                             // 0x00514f4d    90
                         nop                                                             // 0x00514f4e    90
                         nop                                                             // 0x00514f4f    90
?Init@MiniDialogBoxOptions@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x00514f50    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x00514f54    8b542404
                         sub               esp, 0x08                                     // 0x00514f58    83ec08
                         push              ebp                                           // 0x00514f5b    55
                         push              esi                                           // 0x00514f5c    56
                         push              edi                                           // 0x00514f5d    57
                         mov.s             esi, ecx                                      // 0x00514f5e    8bf1
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                   // 0x00514f60    8b4c241c
                         push              eax                                           // 0x00514f64    50
                         push              ecx                                           // 0x00514f65    51
                         push              edx                                           // 0x00514f66    52
                         mov.s             ecx, esi                                      // 0x00514f67    8bce
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00514f69    e892e4ffff
                         push              0x000003ac                                    // 0x00514f6e    68ac030000
                         push              0x00be8d40                                    // 0x00514f73    68408dbe00
                         push              0x00000244                                    // 0x00514f78    6844020000
                         call              ___nw__FUl                                    // 0x00514f7d    e80e682c00
                         mov.s             edi, eax                                      // 0x00514f82    8bf8
                         xor.s             ebp, ebp                                      // 0x00514f84    33ed
                         add               esp, 0x0c                                     // 0x00514f86    83c40c
                         cmp.s             edi, ebp                                      // 0x00514f89    3bfd
                         {disp8} je        _jmp_addr_0x00514fdd                          // 0x00514f8b    7450
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d64 // 0x00514f8d    813dac7cd100640d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00514f97    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x00514fa3                          // 0x00514f9c    7605
                         add               eax, 0x0000a0b0                               // 0x00514f9e    05b0a00000
_jmp_addr_0x00514fa3:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00514fa3    8b4808
                         push              ecx                                           // 0x00514fa6    51
                         push              0x28                                          // 0x00514fa7    6a28
                         push              0x000002bc                                    // 0x00514fa9    68bc020000
                         push              0x3c                                          // 0x00514fae    6a3c
                         push              0x32                                          // 0x00514fb0    6a32
                         push              0x000003e7                                    // 0x00514fb2    68e7030000
                         mov.s             ecx, edi                                      // 0x00514fb7    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00514fb9    e89242efff
                         mov               dword ptr [edi], 0x008ab5c0                   // 0x00514fbe    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000004      // 0x00514fc4    c7873c02000004000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], 0x00             // 0x00514fce    c6872a02000000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebp             // 0x00514fd5    89af40020000
                         {disp8} jmp       _jmp_addr_0x00514fdf                          // 0x00514fdb    eb02
_jmp_addr_0x00514fdd:    xor.s             edi, edi                                      // 0x00514fdd    33ff
_jmp_addr_0x00514fdf:    {disp8} mov       dword ptr [esi + 0x28], edi                   // 0x00514fdf    897e28
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x00514fe2    8b0d203bcd00
                         call              _jmp_addr_0x00426d30                          // 0x00514fe8    e8431df1ff
                         push              0x000003b1                                    // 0x00514fed    68b1030000
                         push              0x00be8d40                                    // 0x00514ff2    68408dbe00
                         push              0x00000260                                    // 0x00514ff7    6860020000
                         {disp8} mov       dword ptr [esp + 0x2c], eax                   // 0x00514ffc    8944242c
                         call              ___nw__FUl                                    // 0x00515000    e88b672c00
                         add               esp, 0x0c                                     // 0x00515005    83c40c
                         cmp.s             eax, ebp                                      // 0x00515008    3bc5
                         {disp8} je        _jmp_addr_0x00515049                          // 0x0051500a    743d
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000dc8 // 0x0051500c    813dac7cd100c80d0000
                         {disp8} ja        _jmp_addr_0x00515020                          // 0x00515016    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00515018    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x0051502c                          // 0x0051501e    eb0c
_jmp_addr_0x00515020:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00515020    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0000a560]             // 0x00515026    8d8a60a50000
_jmp_addr_0x0051502c:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0051502c    8b4908
                         push              0x19                                          // 0x0051502f    6a19
                         push              ecx                                           // 0x00515031    51
                         push              ebp                                           // 0x00515032    55
                         push              ebp                                           // 0x00515033    55
                         push              0x000001c2                                    // 0x00515034    68c2010000
                         push              0x0000011d                                    // 0x00515039    681d010000
                         push              0x75                                          // 0x0051503e    6a75
                         mov.s             ecx, eax                                      // 0x00515040    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00515042    e8c9beefff
                         {disp8} jmp       _jmp_addr_0x0051504b                          // 0x00515047    eb02
_jmp_addr_0x00515049:    xor.s             eax, eax                                      // 0x00515049    33c0
_jmp_addr_0x0051504b:    push              ebx                                           // 0x0051504b    53
                         push              0x000003b4                                    // 0x0051504c    68b4030000
                         push              0x00be8d40                                    // 0x00515051    68408dbe00
                         {disp8} mov       dword ptr [esi + 0x34], eax                   // 0x00515056    894634
                         mov               ebx, 0x00000001                               // 0x00515059    bb01000000
                         push              0x00000260                                    // 0x0051505e    6860020000
                         {disp32} mov      dword ptr [eax + 0x00000248], ebx             // 0x00515063    899848020000
                         call              ___nw__FUl                                    // 0x00515069    e822672c00
                         add               esp, 0x0c                                     // 0x0051506e    83c40c
                         cmp.s             eax, ebp                                      // 0x00515071    3bc5
                         {disp8} je        _jmp_addr_0x005150aa                          // 0x00515073    7435
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a96 // 0x00515075    813dac7cd100961a0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0051507f    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0051508d                          // 0x00515085    7606
                         add               ecx, 0x00013f08                               // 0x00515087    81c1083f0100
_jmp_addr_0x0051508d:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0051508d    8b4908
                         push              0x19                                          // 0x00515090    6a19
                         push              ecx                                           // 0x00515092    51
                         push              ebp                                           // 0x00515093    55
                         push              ebp                                           // 0x00515094    55
                         push              0x000001c2                                    // 0x00515095    68c2010000
                         push              0x000001e5                                    // 0x0051509a    68e5010000
                         push              0x76                                          // 0x0051509f    6a76
                         mov.s             ecx, eax                                      // 0x005150a1    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x005150a3    e868beefff
                         {disp8} jmp       _jmp_addr_0x005150ac                          // 0x005150a8    eb02
_jmp_addr_0x005150aa:    xor.s             eax, eax                                      // 0x005150aa    33c0
_jmp_addr_0x005150ac:    push              0x000003b7                                    // 0x005150ac    68b7030000
                         push              0x00be8d40                                    // 0x005150b1    68408dbe00
                         {disp8} mov       dword ptr [esi + 0x38], eax                   // 0x005150b6    894638
                         push              0x00000250                                    // 0x005150b9    6850020000
                         {disp32} mov      dword ptr [eax + 0x00000248], ebp             // 0x005150be    89a848020000
                         call              ___nw__FUl                                    // 0x005150c4    e8c7662c00
                         add               esp, 0x0c                                     // 0x005150c9    83c40c
                         cmp.s             eax, ebp                                      // 0x005150cc    3bc5
                         {disp8} je        _jmp_addr_0x00515111                          // 0x005150ce    7441
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d66 // 0x005150d0    813dac7cd100660d0000
                         {disp8} ja        _jmp_addr_0x005150e4                          // 0x005150da    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005150dc    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x005150f0                          // 0x005150e2    eb0c
_jmp_addr_0x005150e4:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x005150e4    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0000a0c8]             // 0x005150ea    8d8ac8a00000
_jmp_addr_0x005150f0:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x005150f0    8b4908
                         push              ecx                                           // 0x005150f3    51
                         push              ebp                                           // 0x005150f4    55
                         push              0x1e                                          // 0x005150f5    6a1e
                         push              0x0000012c                                    // 0x005150f7    682c010000
                         push              0x0000008c                                    // 0x005150fc    688c000000
                         push              0x000000fa                                    // 0x00515101    68fa000000
                         push              0x64                                          // 0x00515106    6a64
                         mov.s             ecx, eax                                      // 0x00515108    8bc8
                         call              @__ct__11SetupSliderFiiiiifPw@36              // 0x0051510a    e8e14aefff
                         {disp8} jmp       _jmp_addr_0x00515113                          // 0x0051510f    eb02
_jmp_addr_0x00515111:    xor.s             eax, eax                                      // 0x00515111    33c0
_jmp_addr_0x00515113:    {disp8} mov       dword ptr [esi + 0x10], eax                   // 0x00515113    894610
                         call              _GetMidTextSize__Fv                           // 0x00515116    e8e528efff
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                   // 0x0051511b    8b4e10
                         push              0x000003ba                                    // 0x0051511e    68ba030000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x00515123    894120
                         {disp8} mov       edx, dword ptr [esi + 0x10]                   // 0x00515126    8b5610
                         push              0x00be8d40                                    // 0x00515129    68408dbe00
                         push              0x00000250                                    // 0x0051512e    6850020000
                         {disp32} mov      dword ptr [edx + 0x00000238], 0x00515500      // 0x00515133    c7823802000000555100
                         call              ___nw__FUl                                    // 0x0051513d    e84e662c00
                         add               esp, 0x0c                                     // 0x00515142    83c40c
                         cmp.s             eax, ebp                                      // 0x00515145    3bc5
                         {disp8} je        _jmp_addr_0x00515182                          // 0x00515147    7439
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d67 // 0x00515149    813dac7cd100670d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00515153    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00515161                          // 0x00515159    7606
                         add               ecx, 0x0000a0d4                               // 0x0051515b    81c1d4a00000
_jmp_addr_0x00515161:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00515161    8b4908
                         push              ecx                                           // 0x00515164    51
                         push              ebp                                           // 0x00515165    55
                         push              0x1e                                          // 0x00515166    6a1e
                         push              0x0000012c                                    // 0x00515168    682c010000
                         push              0x000000c8                                    // 0x0051516d    68c8000000
                         push              0x000000fa                                    // 0x00515172    68fa000000
                         push              0x65                                          // 0x00515177    6a65
                         mov.s             ecx, eax                                      // 0x00515179    8bc8
                         call              @__ct__11SetupSliderFiiiiifPw@36              // 0x0051517b    e8704aefff
                         {disp8} jmp       _jmp_addr_0x00515184                          // 0x00515180    eb02
_jmp_addr_0x00515182:    xor.s             eax, eax                                      // 0x00515182    33c0
_jmp_addr_0x00515184:    {disp8} mov       dword ptr [esi + 0x14], eax                   // 0x00515184    894614
                         call              _GetMidTextSize__Fv                           // 0x00515187    e87428efff
                         {disp8} mov       edx, dword ptr [esi + 0x14]                   // 0x0051518c    8b5614
                         push              0x000003be                                    // 0x0051518f    68be030000
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x00515194    894220
                         {disp8} mov       eax, dword ptr [esi + 0x14]                   // 0x00515197    8b4614
                         push              0x00be8d40                                    // 0x0051519a    68408dbe00
                         push              0x00000244                                    // 0x0051519f    6844020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x00515530      // 0x005151a4    c7803802000030555100
                         call              ___nw__FUl                                    // 0x005151ae    e8dd652c00
                         mov.s             edi, eax                                      // 0x005151b3    8bf8
                         add               esp, 0x0c                                     // 0x005151b5    83c40c
                         cmp.s             edi, ebp                                      // 0x005151b8    3bfd
                         {disp8} je        _jmp_addr_0x00515214                          // 0x005151ba    7458
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d65 // 0x005151bc    813dac7cd100650d0000
                         {disp8} ja        _jmp_addr_0x005151cf                          // 0x005151c6    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x005151c8    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x005151db                          // 0x005151cd    eb0c
_jmp_addr_0x005151cf:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005151cf    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000a0bc]             // 0x005151d5    8d81bca00000
_jmp_addr_0x005151db:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x005151db    8b5008
                         push              edx                                           // 0x005151de    52
                         push              0x28                                          // 0x005151df    6a28
                         push              0x000002bc                                    // 0x005151e1    68bc020000
                         push              0x00000118                                    // 0x005151e6    6818010000
                         push              0x32                                          // 0x005151eb    6a32
                         push              0x000003e7                                    // 0x005151ed    68e7030000
                         mov.s             ecx, edi                                      // 0x005151f2    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005151f4    e85740efff
                         mov               dword ptr [edi], 0x008ab5c0                   // 0x005151f9    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], ebx             // 0x005151ff    899f3c020000
                         {disp32} mov      byte ptr [edi + 0x0000022a], 0x00             // 0x00515205    c6872a02000000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebp             // 0x0051520c    89af40020000
                         {disp8} jmp       _jmp_addr_0x00515216                          // 0x00515212    eb02
_jmp_addr_0x00515214:    xor.s             edi, edi                                      // 0x00515214    33ff
_jmp_addr_0x00515216:    push              0x000003bf                                    // 0x00515216    68bf030000
                         push              0x00be8d40                                    // 0x0051521b    68408dbe00
                         push              0x00000244                                    // 0x00515220    6844020000
                         {disp8} mov       dword ptr [esi + 0x2c], edi                   // 0x00515225    897e2c
                         call              ___nw__FUl                                    // 0x00515228    e863652c00
                         mov.s             edi, eax                                      // 0x0051522d    8bf8
                         add               esp, 0x0c                                     // 0x0051522f    83c40c
                         cmp.s             edi, ebp                                      // 0x00515232    3bfd
                         {disp8} je        _jmp_addr_0x0051528c                          // 0x00515234    7456
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000de6 // 0x00515236    813dac7cd100e60d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00515240    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0051524c                          // 0x00515245    7605
                         add               eax, 0x0000a6c8                               // 0x00515247    05c8a60000
_jmp_addr_0x0051524c:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0051524c    8b4808
                         push              ecx                                           // 0x0051524f    51
                         push              0x0000008c                                    // 0x00515250    688c000000
                         push              0x000002bc                                    // 0x00515255    68bc020000
                         push              0x0000010e                                    // 0x0051525a    680e010000
                         push              0x32                                          // 0x0051525f    6a32
                         push              0x000003e7                                    // 0x00515261    68e7030000
                         mov.s             ecx, edi                                      // 0x00515266    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00515268    e8e33fefff
                         mov               dword ptr [edi], 0x008ab5c0                   // 0x0051526d    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000004      // 0x00515273    c7873c02000004000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], 0x00             // 0x0051527d    c6872a02000000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebp             // 0x00515284    89af40020000
                         {disp8} jmp       _jmp_addr_0x0051528e                          // 0x0051528a    eb02
_jmp_addr_0x0051528c:    xor.s             edi, edi                                      // 0x0051528c    33ff
_jmp_addr_0x0051528e:    {disp8} mov       dword ptr [esi + 0x30], edi                   // 0x0051528e    897e30
                         call              _GetMidTextSize__Fv                           // 0x00515291    e86a27efff
                         {disp8} mov       edx, dword ptr [esi + 0x30]                   // 0x00515296    8b5630
                         push              0x000003c3                                    // 0x00515299    68c3030000
                         push              0x00be8d40                                    // 0x0051529e    68408dbe00
                         push              0x00000244                                    // 0x005152a3    6844020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x005152a8    894220
                         call              ___nw__FUl                                    // 0x005152ab    e8e0642c00
                         add               esp, 0x0c                                     // 0x005152b0    83c40c
                         cmp.s             eax, ebp                                      // 0x005152b3    3bc5
                         {disp8} je        _jmp_addr_0x005152d9                          // 0x005152b5    7422
                         push              ebp                                           // 0x005152b7    55
                         push              0x009cee0c                                    // 0x005152b8    680cee9c00
                         push              0x1e                                          // 0x005152bd    6a1e
                         push              0x000000c8                                    // 0x005152bf    68c8000000
                         push              0x0000015e                                    // 0x005152c4    685e010000
                         push              0x0000012c                                    // 0x005152c9    682c010000
                         push              0x66                                          // 0x005152ce    6a66
                         mov.s             ecx, eax                                      // 0x005152d0    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x005152d2    e8d945efff
                         {disp8} jmp       _jmp_addr_0x005152db                          // 0x005152d7    eb02
_jmp_addr_0x005152d9:    xor.s             eax, eax                                      // 0x005152d9    33c0
_jmp_addr_0x005152db:    {disp8} mov       dword ptr [esi + 0x44], eax                   // 0x005152db    894644
                         call              _GetMidTextSize__Fv                           // 0x005152de    e81d27efff
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x005152e3    8b4e44
                         push              0x000003c6                                    // 0x005152e6    68c6030000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x005152eb    894120
                         {disp8} mov       edx, dword ptr [esi + 0x44]                   // 0x005152ee    8b5644
                         push              0x00be8d40                                    // 0x005152f1    68408dbe00
                         mov               edi, 0x005155f0                               // 0x005152f6    bff0555100
                         push              0x0000025c                                    // 0x005152fb    685c020000
                         {disp32} mov      dword ptr [edx + 0x00000238], edi             // 0x00515300    89ba38020000
                         call              ___nw__FUl                                    // 0x00515306    e885642c00
                         add               esp, 0x0c                                     // 0x0051530b    83c40c
                         cmp.s             eax, ebp                                      // 0x0051530e    3bc5
                         {disp8} je        _jmp_addr_0x00515331                          // 0x00515310    741f
                         push              0x2                                           // 0x00515312    6a02
                         push              ebp                                           // 0x00515314    55
                         push              0x20                                          // 0x00515315    6a20
                         push              0x009cee0c                                    // 0x00515317    680cee9c00
                         push              0x0000015d                                    // 0x0051531c    685d010000
                         push              0x00000104                                    // 0x00515321    6804010000
                         push              0x68                                          // 0x00515326    6a68
                         mov.s             ecx, eax                                      // 0x00515328    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0051532a    e8317fefff
                         {disp8} jmp       _jmp_addr_0x00515333                          // 0x0051532f    eb02
_jmp_addr_0x00515331:    xor.s             eax, eax                                      // 0x00515331    33c0
_jmp_addr_0x00515333:    push              0x000003c8                                    // 0x00515333    68c8030000
                         push              0x00be8d40                                    // 0x00515338    68408dbe00
                         {disp8} mov       dword ptr [esi + 0x18], eax                   // 0x0051533d    894618
                         push              0x0000025c                                    // 0x00515340    685c020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x00515650      // 0x00515345    c7803802000050565100
                         call              ___nw__FUl                                    // 0x0051534f    e83c642c00
                         add               esp, 0x0c                                     // 0x00515354    83c40c
                         cmp.s             eax, ebp                                      // 0x00515357    3bc5
                         {disp8} je        _jmp_addr_0x0051537a                          // 0x00515359    741f
                         push              0x3                                           // 0x0051535b    6a03
                         push              ebp                                           // 0x0051535d    55
                         push              0x20                                          // 0x0051535e    6a20
                         push              0x009cee0c                                    // 0x00515360    680cee9c00
                         push              0x0000015d                                    // 0x00515365    685d010000
                         push              0x000001fc                                    // 0x0051536a    68fc010000
                         push              0x67                                          // 0x0051536f    6a67
                         mov.s             ecx, eax                                      // 0x00515371    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00515373    e8e87eefff
                         {disp8} jmp       _jmp_addr_0x0051537c                          // 0x00515378    eb02
_jmp_addr_0x0051537a:    xor.s             eax, eax                                      // 0x0051537a    33c0
_jmp_addr_0x0051537c:    {disp8} mov       dword ptr [esi + 0x1c], eax                   // 0x0051537c    89461c
                         {disp32} mov      dword ptr [eax + 0x00000238], edi             // 0x0051537f    89b838020000
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00515385    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x0051538a    8b8804032500
                         call              _jmp_addr_0x00513f80                          // 0x00515390    e8ebebffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00515395    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051539b    8b8904032500
                         push              eax                                           // 0x005153a1    50
                         call              _jmp_addr_0x00513eb0                          // 0x005153a2    e809ebffff
                         {disp8} mov       ebx, dword ptr [esp + 0x24]                   // 0x005153a7    8b5c2424
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                   // 0x005153ab    8b4e10
                         mov               edx, dword ptr [ecx]                          // 0x005153ae    8b11
                         cmp.s             ebx, ebp                                      // 0x005153b0    3bdd
                         sete              bl                                            // 0x005153b2    0f94c3
                         push              ebx                                           // 0x005153b5    53
                         call              dword ptr [edx + 8]                           // 0x005153b6    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x14]                   // 0x005153b9    8b4e14
                         mov               eax, dword ptr [ecx]                          // 0x005153bc    8b01
                         push              ebx                                           // 0x005153be    53
                         call              dword ptr [eax + 8]                           // 0x005153bf    ff5008
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005153c2    8b0d203bcd00
                         call              _jmp_addr_0x00428680                          // 0x005153c8    e8b332f1ff
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                   // 0x005153cd    8b4e10
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x005153d0    89442410
                         {disp8} mov       dword ptr [esp + 0x14], ebp                   // 0x005153d4    896c2414
                         {disp8} fild      qword ptr [esp + 0x10]                        // 0x005153d8    df6c2410
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2f690]             // 0x005153dc    d80d90868d00
                         {disp32} fstp     dword ptr [ecx + 0x0000023c]                  // 0x005153e2    d9993c020000
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005153e8    8b0d203bcd00
                         call              _jmp_addr_0x00428690                          // 0x005153ee    e89d32f1ff
                         {disp8} mov       edx, dword ptr [esi + 0x14]                   // 0x005153f3    8b5614
                         {disp8} mov       dword ptr [esp + 0x24], eax                   // 0x005153f6    89442424
                         {disp8} fild      dword ptr [esp + 0x24]                        // 0x005153fa    db442424
                         push              0x000003e7                                    // 0x005153fe    68e7030000
                         push              0x00be8d40                                    // 0x00515403    68408dbe00
                         push              0x0000025c                                    // 0x00515408    685c020000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2f690]             // 0x0051540d    d80d90868d00
                         {disp32} fstp     dword ptr [edx + 0x0000023c]                  // 0x00515413    d99a3c020000
                         call              ___nw__FUl                                    // 0x00515419    e872632c00
                         add               esp, 0x0c                                     // 0x0051541e    83c40c
                         cmp.s             eax, ebp                                      // 0x00515421    3bc5
                         pop               ebx                                           // 0x00515423    5b
                         {disp8} je        _jmp_addr_0x00515459                          // 0x00515424    7433
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7a // 0x00515426    813dac7cd1007a0d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00515430    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0051543e                          // 0x00515436    7606
                         add               ecx, 0x0000a1b8                               // 0x00515438    81c1b8a10000
_jmp_addr_0x0051543e:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0051543e    8b4908
                         push              0x2                                           // 0x00515441    6a02
                         push              ebp                                           // 0x00515443    55
                         push              0x28                                          // 0x00515444    6a28
                         push              ecx                                           // 0x00515446    51
                         push              0x00000212                                    // 0x00515447    6812020000
                         push              0x1e                                          // 0x0051544c    6a1e
                         push              0x7a                                          // 0x0051544e    6a7a
                         mov.s             ecx, eax                                      // 0x00515450    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00515452    e8097eefff
                         {disp8} jmp       _jmp_addr_0x0051545b                          // 0x00515457    eb02
_jmp_addr_0x00515459:    xor.s             eax, eax                                      // 0x00515459    33c0
_jmp_addr_0x0051545b:    {disp8} mov       dword ptr [esi + 0x20], eax                   // 0x0051545b    894620
                         mov               edi, 0x00515560                               // 0x0051545e    bf60555100
                         {disp32} mov      dword ptr [eax + 0x00000238], edi             // 0x00515463    89b838020000
                         call              _GetMidTextSize__Fv                           // 0x00515469    e89225efff
                         {disp8} mov       edx, dword ptr [esi + 0x20]                   // 0x0051546e    8b5620
                         push              0x000003eb                                    // 0x00515471    68eb030000
                         push              0x00be8d40                                    // 0x00515476    68408dbe00
                         push              0x0000025c                                    // 0x0051547b    685c020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x00515480    894220
                         call              ___nw__FUl                                    // 0x00515483    e808632c00
                         add               esp, 0x0c                                     // 0x00515488    83c40c
                         cmp.s             eax, ebp                                      // 0x0051548b    3bc5
                         {disp8} je        _jmp_addr_0x005154c6                          // 0x0051548d    7437
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d53 // 0x0051548f    813dac7cd100530d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00515499    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x005154a7                          // 0x0051549f    7606
                         add               ecx, 0x00009fe4                               // 0x005154a1    81c1e49f0000
_jmp_addr_0x005154a7:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x005154a7    8b4908
                         push              0x3                                           // 0x005154aa    6a03
                         push              0x1                                           // 0x005154ac    6a01
                         push              0x28                                          // 0x005154ae    6a28
                         push              ecx                                           // 0x005154b0    51
                         push              0x00000212                                    // 0x005154b1    6812020000
                         push              0x000002da                                    // 0x005154b6    68da020000
                         push              0x7b                                          // 0x005154bb    6a7b
                         mov.s             ecx, eax                                      // 0x005154bd    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005154bf    e89c7defff
                         {disp8} jmp       _jmp_addr_0x005154c8                          // 0x005154c4    eb02
_jmp_addr_0x005154c6:    xor.s             eax, eax                                      // 0x005154c6    33c0
_jmp_addr_0x005154c8:    {disp8} mov       dword ptr [esi + 0x24], eax                   // 0x005154c8    894624
                         {disp32} mov      dword ptr [eax + 0x00000238], edi             // 0x005154cb    89b838020000
                         call              _GetMidTextSize__Fv                           // 0x005154d1    e82a25efff
                         {disp8} mov       edx, dword ptr [esi + 0x24]                   // 0x005154d6    8b5624
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x005154d9    894220
                         {disp8} mov       eax, dword ptr [esi + 0x24]                   // 0x005154dc    8b4624
                         push              0x1                                           // 0x005154df    6a01
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x0053fb70      // 0x005154e1    c7803802000070fb5300
                         call              _jmp_addr_0x0053f540                          // 0x005154eb    e850a00200
                         add               esp, 0x04                                     // 0x005154f0    83c404
                         pop               edi                                           // 0x005154f3    5f
                         pop               esi                                           // 0x005154f4    5e
                         pop               ebp                                           // 0x005154f5    5d
                         add               esp, 0x08                                     // 0x005154f6    83c408
                         ret               0x000c                                        // 0x005154f9    c20c00
                         nop                                                             // 0x005154fc    90
                         nop                                                             // 0x005154fd    90
                         nop                                                             // 0x005154fe    90
                         nop                                                             // 0x005154ff    90
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x00515500    8b442408
                         {disp32} fld      dword ptr [eax + 0x0000023c]                  // 0x00515504    d9803c020000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1ba00]             // 0x0051550a    d80d004a8c00
                         call              _jmp_addr_0x007a1400                          // 0x00515510    e8ebbe2800
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x00515515    8b0d203bcd00
                         push              eax                                           // 0x0051551b    50
                         call              _jmp_addr_0x00428600                          // 0x0051551c    e8df30f1ff
                         ret                                                             // 0x00515521    c3
                         nop                                                             // 0x00515522    90
                         nop                                                             // 0x00515523    90
                         nop                                                             // 0x00515524    90
                         nop                                                             // 0x00515525    90
                         nop                                                             // 0x00515526    90
                         nop                                                             // 0x00515527    90
                         nop                                                             // 0x00515528    90
                         nop                                                             // 0x00515529    90
                         nop                                                             // 0x0051552a    90
                         nop                                                             // 0x0051552b    90
                         nop                                                             // 0x0051552c    90
                         nop                                                             // 0x0051552d    90
                         nop                                                             // 0x0051552e    90
                         nop                                                             // 0x0051552f    90
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x00515530    8b442408
                         {disp32} fld      dword ptr [eax + 0x0000023c]                  // 0x00515534    d9803c020000
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1ba00]             // 0x0051553a    d80d004a8c00
                         call              _jmp_addr_0x007a1400                          // 0x00515540    e8bbbe2800
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x00515545    8b0d203bcd00
                         push              eax                                           // 0x0051554b    50
                         call              _jmp_addr_0x00428660                          // 0x0051554c    e80f31f1ff
                         ret                                                             // 0x00515551    c3
                         nop                                                             // 0x00515552    90
                         nop                                                             // 0x00515553    90
                         nop                                                             // 0x00515554    90
                         nop                                                             // 0x00515555    90
                         nop                                                             // 0x00515556    90
                         nop                                                             // 0x00515557    90
                         nop                                                             // 0x00515558    90
                         nop                                                             // 0x00515559    90
                         nop                                                             // 0x0051555a    90
                         nop                                                             // 0x0051555b    90
                         nop                                                             // 0x0051555c    90
                         nop                                                             // 0x0051555d    90
                         nop                                                             // 0x0051555e    90
                         nop                                                             // 0x0051555f    90
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00515560    a15c19d000
                         {disp32} mov      eax, dword ptr [eax + 0x00250304]             // 0x00515565    8b8004032500
                         {disp8} mov       ecx, dword ptr [eax + 0x5c]                   // 0x0051556b    8b485c
                         cmp               ecx, dword ptr [eax + 0x54]                   // 0x0051556e    3b4854
                         {disp8} je        _jmp_addr_0x005155c0                          // 0x00515571    744d
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000dd0 // 0x00515573    813dac7cd100d00d0000
                         {disp8} ja        _jmp_addr_0x00515586                          // 0x0051557d    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0051557f    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00515592                          // 0x00515584    eb0c
_jmp_addr_0x00515586:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00515586    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a5c0]             // 0x0051558c    8d82c0a50000
_jmp_addr_0x00515592:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00515592    8b4008
                         {disp8} mov       ecx, dword ptr [esp + 0x04]                   // 0x00515595    8b4c2404
                         push              0x0                                           // 0x00515599    6a00
                         push              0x0                                           // 0x0051559b    6a00
                         push              eax                                           // 0x0051559d    50
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0051559e    e8edbbefff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005155a3    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00250304]             // 0x005155a9    8b8104032500
                         {disp8} mov       edx, dword ptr [eax + 0x54]                   // 0x005155af    8b5054
                         {disp8} mov       dword ptr [eax + 0x5c], edx                   // 0x005155b2    89505c
                         {disp32} mov      dword ptr [data_bytes + 0x3002b8], 0x00000000 // 0x005155b5    c705b862cc0000000000
                         ret                                                             // 0x005155bf    c3
_jmp_addr_0x005155c0:    call              _jmp_addr_0x00513640                          // 0x005155c0    e87be0ffff
                         {disp32} mov      eax, dword ptr [_game]                        // 0x005155c5    a15c19d000
                         cmp               dword ptr [eax + 0x00205a28], 0x01            // 0x005155ca    83b8285a200001
                         {disp8} jne       _jmp_addr_0x005155e0                          // 0x005155d1    750d
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]             // 0x005155d3    8b88b4590000
                         push              0x0                                           // 0x005155d9    6a00
                         call              _jmp_addr_0x00793d90                          // 0x005155db    e8b0e72700
_jmp_addr_0x005155e0:    ret                                                             // 0x005155e0    c3
                         nop                                                             // 0x005155e1    90
                         nop                                                             // 0x005155e2    90
                         nop                                                             // 0x005155e3    90
                         nop                                                             // 0x005155e4    90
                         nop                                                             // 0x005155e5    90
                         nop                                                             // 0x005155e6    90
                         nop                                                             // 0x005155e7    90
                         nop                                                             // 0x005155e8    90
                         nop                                                             // 0x005155e9    90
                         nop                                                             // 0x005155ea    90
                         nop                                                             // 0x005155eb    90
                         nop                                                             // 0x005155ec    90
                         nop                                                             // 0x005155ed    90
                         nop                                                             // 0x005155ee    90
                         nop                                                             // 0x005155ef    90
                         call              _jmp_addr_0x00515620                          // 0x005155f0    e82b000000
                         test              al, al                                        // 0x005155f5    84c0
                         {disp8} je        _jmp_addr_0x0051561c                          // 0x005155f7    7423
                         {disp32} mov      eax, dword ptr [_game]                        // 0x005155f9    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x005155fe    8b8804032500
                         call              _jmp_addr_0x00513f80                          // 0x00515604    e877e9ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00515609    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051560f    8b8904032500
                         inc               eax                                           // 0x00515615    40
                         push              eax                                           // 0x00515616    50
                         call              _jmp_addr_0x00513eb0                          // 0x00515617    e894e8ffff
_jmp_addr_0x0051561c:    ret                                                             // 0x0051561c    c3
                         nop                                                             // 0x0051561d    90
                         nop                                                             // 0x0051561e    90
                         nop                                                             // 0x0051561f    90
_jmp_addr_0x00515620:    call              dword ptr [__imp__GetTickCount@4]             // 0x00515620    ff15c4918a00
                         {disp32} mov      edx, dword ptr [data_bytes + 0x222cac]        // 0x00515626    8b15ac8cbe00
                         mov.s             ecx, eax                                      // 0x0051562c    8bc8
                         sub.s             ecx, edx                                      // 0x0051562e    2bca
                         cmp               ecx, 0x0000012c                               // 0x00515630    81f92c010000
                         {disp8} jle       _jmp_addr_0x00515640                          // 0x00515636    7e08
                         {disp32} mov      dword ptr [data_bytes + 0x222cac], eax        // 0x00515638    a3ac8cbe00
                         mov               al, 0x01                                      // 0x0051563d    b001
                         ret                                                             // 0x0051563f    c3
_jmp_addr_0x00515640:    xor.s             al, al                                        // 0x00515640    32c0
                         ret                                                             // 0x00515642    c3
                         nop                                                             // 0x00515643    90
                         nop                                                             // 0x00515644    90
                         nop                                                             // 0x00515645    90
                         nop                                                             // 0x00515646    90
                         nop                                                             // 0x00515647    90
                         nop                                                             // 0x00515648    90
                         nop                                                             // 0x00515649    90
                         nop                                                             // 0x0051564a    90
                         nop                                                             // 0x0051564b    90
                         nop                                                             // 0x0051564c    90
                         nop                                                             // 0x0051564d    90
                         nop                                                             // 0x0051564e    90
                         nop                                                             // 0x0051564f    90
                         call              _jmp_addr_0x00515620                          // 0x00515650    e8cbffffff
                         test              al, al                                        // 0x00515655    84c0
                         {disp8} je        _jmp_addr_0x0051567c                          // 0x00515657    7423
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00515659    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x0051565e    8b8804032500
                         call              _jmp_addr_0x00513f80                          // 0x00515664    e817e9ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00515669    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x0051566f    8b8904032500
                         dec               eax                                           // 0x00515675    48
                         push              eax                                           // 0x00515676    50
                         call              _jmp_addr_0x00513eb0                          // 0x00515677    e834e8ffff
_jmp_addr_0x0051567c:    ret                                                             // 0x0051567c    c3
                         nop                                                             // 0x0051567d    90
                         nop                                                             // 0x0051567e    90
                         nop                                                             // 0x0051567f    90
?Destroy@MiniDialogBoxOptions@@UAEXXZ:
                         {disp32} jmp      ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00515680    e90bdfffff
                         nop                                                             // 0x00515685    90
                         nop                                                             // 0x00515686    90
                         nop                                                             // 0x00515687    90
                         nop                                                             // 0x00515688    90
                         nop                                                             // 0x00515689    90
                         nop                                                             // 0x0051568a    90
                         nop                                                             // 0x0051568b    90
                         nop                                                             // 0x0051568c    90
                         nop                                                             // 0x0051568d    90
                         nop                                                             // 0x0051568e    90
                         nop                                                             // 0x0051568f    90
?InitControls@MiniDialogBoxOptions@@UAEXXZ:
                         sub               esp, 0x08                                     // 0x00515690    83ec08
                         push              ebx                                           // 0x00515693    53
                         push              esi                                           // 0x00515694    56
                         mov.s             esi, ecx                                      // 0x00515695    8bf1
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x00515697    8b0d203bcd00
                         push              edi                                           // 0x0051569d    57
                         call              _jmp_addr_0x00426d30                          // 0x0051569e    e88d16f1ff
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                   // 0x005156a3    8b4e10
                         mov.s             edi, eax                                      // 0x005156a6    8bf8
                         mov               eax, dword ptr [ecx]                          // 0x005156a8    8b01
                         test              edi, edi                                      // 0x005156aa    85ff
                         sete              bl                                            // 0x005156ac    0f94c3
                         push              ebx                                           // 0x005156af    53
                         call              dword ptr [eax + 8]                           // 0x005156b0    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x14]                   // 0x005156b3    8b4e14
                         mov               edx, dword ptr [ecx]                          // 0x005156b6    8b11
                         push              ebx                                           // 0x005156b8    53
                         call              dword ptr [edx + 8]                           // 0x005156b9    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x28]                   // 0x005156bc    8b4e28
                         mov               eax, dword ptr [ecx]                          // 0x005156bf    8b01
                         push              ebx                                           // 0x005156c1    53
                         call              dword ptr [eax + 8]                           // 0x005156c2    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x30]                   // 0x005156c5    8b4e30
                         mov               edx, dword ptr [ecx]                          // 0x005156c8    8b11
                         cmp               edi, 0x01                                     // 0x005156ca    83ff01
                         sete              al                                            // 0x005156cd    0f94c0
                         push              eax                                           // 0x005156d0    50
                         call              dword ptr [edx + 8]                           // 0x005156d1    ff5208
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005156d4    8b0d203bcd00
                         call              _jmp_addr_0x00428680                          // 0x005156da    e8a12ff1ff
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                   // 0x005156df    8b4e10
                         {disp8} mov       dword ptr [esp + 0x0c], eax                   // 0x005156e2    8944240c
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000            // 0x005156e6    c744241000000000
                         {disp8} fild      qword ptr [esp + 0x0c]                        // 0x005156ee    df6c240c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2f690]             // 0x005156f2    d80d90868d00
                         {disp32} fstp     dword ptr [ecx + 0x0000023c]                  // 0x005156f8    d9993c020000
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005156fe    8b0d203bcd00
                         call              _jmp_addr_0x00428690                          // 0x00515704    e8872ff1ff
                         {disp8} mov       edx, dword ptr [esi + 0x14]                   // 0x00515709    8b5614
                         {disp8} mov       dword ptr [esp + 0x0c], eax                   // 0x0051570c    8944240c
                         {disp8} fild      dword ptr [esp + 0x0c]                        // 0x00515710    db44240c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2f690]             // 0x00515714    d80d90868d00
                         {disp32} fstp     dword ptr [edx + 0x0000023c]                  // 0x0051571a    d99a3c020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x00515720    a1ac7cd100
                         cmp               eax, 0x00000d64                               // 0x00515725    3d640d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0051572a    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x00515736                          // 0x0051572f    7605
                         add               eax, 0x0000a0b0                               // 0x00515731    05b0a00000
_jmp_addr_0x00515736:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00515736    8b4808
                         {disp8} mov       edx, dword ptr [esi + 0x28]                   // 0x00515739    8b5628
                         push              ecx                                           // 0x0051573c    51
                         add               edx, 0x24                                     // 0x0051573d    83c224
                         push              edx                                           // 0x00515740    52
                         call              _wcscpy                                       // 0x00515741    e870082b00
                         {disp8} mov       eax, dword ptr [esi + 0x28]                   // 0x00515746    8b4628
                         {disp8} mov       ecx, dword ptr [eax + 0x0c]                   // 0x00515749    8b480c
                         sub               dword ptr [eax + 0x14], ecx                   // 0x0051574c    294814
                         {disp8} mov       eax, dword ptr [esi + 0x2c]                   // 0x0051574f    8b462c
                         {disp8} mov       edx, dword ptr [eax + 0x0c]                   // 0x00515752    8b500c
                         sub               dword ptr [eax + 0x14], edx                   // 0x00515755    295014
                         {disp8} mov       eax, dword ptr [esi + 0x44]                   // 0x00515758    8b4644
                         {disp8} mov       ecx, dword ptr [eax + 0x0c]                   // 0x0051575b    8b480c
                         sub               dword ptr [eax + 0x14], ecx                   // 0x0051575e    294814
                         {disp8} mov       eax, dword ptr [esi + 0x18]                   // 0x00515761    8b4618
                         {disp8} mov       edx, dword ptr [eax + 0x0c]                   // 0x00515764    8b500c
                         sub               dword ptr [eax + 0x14], edx                   // 0x00515767    295014
                         {disp8} mov       eax, dword ptr [esi + 0x1c]                   // 0x0051576a    8b461c
                         {disp8} mov       ecx, dword ptr [eax + 0x0c]                   // 0x0051576d    8b480c
                         {disp8} mov       edx, dword ptr [eax + 0x14]                   // 0x00515770    8b5014
                         sub.s             edx, ecx                                      // 0x00515773    2bd1
                         add               esp, 0x08                                     // 0x00515775    83c408
                         test              edi, edi                                      // 0x00515778    85ff
                         {disp8} mov       dword ptr [eax + 0x14], edx                   // 0x0051577a    895014
                         {disp8} je        _jmp_addr_0x005157a6                          // 0x0051577d    7427
                         {disp8} mov       edx, dword ptr [esi + 0x2c]                   // 0x0051577f    8b562c
                         {disp8} mov       dword ptr [edx + 0x0c], 0x00000118            // 0x00515782    c7420c18010000
                         {disp8} mov       eax, dword ptr [esi + 0x44]                   // 0x00515789    8b4644
                         {disp8} mov       dword ptr [eax + 0x0c], 0x0000015e            // 0x0051578c    c7400c5e010000
                         {disp8} mov       ecx, dword ptr [esi + 0x1c]                   // 0x00515793    8b4e1c
                         mov               eax, 0x0000015d                               // 0x00515796    b85d010000
                         {disp8} mov       dword ptr [ecx + 0x0c], eax                   // 0x0051579b    89410c
                         {disp8} mov       edx, dword ptr [esi + 0x18]                   // 0x0051579e    8b5618
                         {disp8} mov       dword ptr [edx + 0x0c], eax                   // 0x005157a1    89420c
                         {disp8} jmp       _jmp_addr_0x005157cb                          // 0x005157a4    eb25
_jmp_addr_0x005157a6:    {disp8} mov       eax, dword ptr [esi + 0x2c]                   // 0x005157a6    8b462c
                         {disp8} mov       dword ptr [eax + 0x0c], 0x0000003c            // 0x005157a9    c7400c3c000000
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x005157b0    8b4e44
                         {disp8} mov       dword ptr [ecx + 0x0c], 0x00000078            // 0x005157b3    c7410c78000000
                         {disp8} mov       edx, dword ptr [esi + 0x1c]                   // 0x005157ba    8b561c
                         mov               eax, 0x00000077                               // 0x005157bd    b877000000
                         {disp8} mov       dword ptr [edx + 0x0c], eax                   // 0x005157c2    89420c
                         {disp8} mov       ecx, dword ptr [esi + 0x18]                   // 0x005157c5    8b4e18
                         {disp8} mov       dword ptr [ecx + 0x0c], eax                   // 0x005157c8    89410c
_jmp_addr_0x005157cb:    {disp8} mov       eax, dword ptr [esi + 0x28]                   // 0x005157cb    8b4628
                         {disp8} mov       edx, dword ptr [eax + 0x0c]                   // 0x005157ce    8b500c
                         add               dword ptr [eax + 0x14], edx                   // 0x005157d1    015014
                         {disp8} mov       eax, dword ptr [esi + 0x2c]                   // 0x005157d4    8b462c
                         {disp8} mov       ecx, dword ptr [eax + 0x0c]                   // 0x005157d7    8b480c
                         add               dword ptr [eax + 0x14], ecx                   // 0x005157da    014814
                         {disp8} mov       eax, dword ptr [esi + 0x44]                   // 0x005157dd    8b4644
                         {disp8} mov       edx, dword ptr [eax + 0x0c]                   // 0x005157e0    8b500c
                         add               dword ptr [eax + 0x14], edx                   // 0x005157e3    015014
                         {disp8} mov       eax, dword ptr [esi + 0x18]                   // 0x005157e6    8b4618
                         {disp8} mov       ecx, dword ptr [eax + 0x0c]                   // 0x005157e9    8b480c
                         add               dword ptr [eax + 0x14], ecx                   // 0x005157ec    014814
                         {disp8} mov       esi, dword ptr [esi + 0x1c]                   // 0x005157ef    8b761c
                         {disp8} mov       edx, dword ptr [esi + 0x0c]                   // 0x005157f2    8b560c
                         {disp8} mov       eax, dword ptr [esi + 0x14]                   // 0x005157f5    8b4614
                         add.s             eax, edx                                      // 0x005157f8    03c2
                         pop               edi                                           // 0x005157fa    5f
                         {disp8} mov       dword ptr [esi + 0x14], eax                   // 0x005157fb    894614
                         pop               esi                                           // 0x005157fe    5e
                         pop               ebx                                           // 0x005157ff    5b
                         add               esp, 0x08                                     // 0x00515800    83c408
                         ret                                                             // 0x00515803    c3
                         nop                                                             // 0x00515804    90
                         nop                                                             // 0x00515805    90
                         nop                                                             // 0x00515806    90
                         nop                                                             // 0x00515807    90
                         nop                                                             // 0x00515808    90
                         nop                                                             // 0x00515809    90
                         nop                                                             // 0x0051580a    90
                         nop                                                             // 0x0051580b    90
                         nop                                                             // 0x0051580c    90
                         nop                                                             // 0x0051580d    90
                         nop                                                             // 0x0051580e    90
                         nop                                                             // 0x0051580f    90
?CanESCOut@MiniDialogBoxOptions@@UAE_NXZ:
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00515810    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00515815    8b8804032500
                         {disp8} mov       eax, dword ptr [ecx + 0x5c]                   // 0x0051581b    8b415c
                         sub               eax, dword ptr [ecx + 0x54]                   // 0x0051581e    2b4154
                         neg               eax                                           // 0x00515821    f7d8
                         sbb.s             eax, eax                                      // 0x00515823    1bc0
                         inc               eax                                           // 0x00515825    40
                         ret                                                             // 0x00515826    c3
                         nop                                                             // 0x00515827    90
                         nop                                                             // 0x00515828    90
                         nop                                                             // 0x00515829    90
                         nop                                                             // 0x0051582a    90
                         nop                                                             // 0x0051582b    90
                         nop                                                             // 0x0051582c    90
                         nop                                                             // 0x0051582d    90
                         nop                                                             // 0x0051582e    90
                         nop                                                             // 0x0051582f    90
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x00515830    8b442414
                         push              ebx                                           // 0x00515834    53
                         {disp8} mov       ebx, dword ptr [esp + 0x0c]                   // 0x00515835    8b5c240c
                         push              ebp                                           // 0x00515839    55
                         {disp8} mov       ebp, dword ptr [esp + 0x18]                   // 0x0051583a    8b6c2418
                         push              esi                                           // 0x0051583e    56
                         {disp8} mov       esi, dword ptr [esp + 0x18]                   // 0x0051583f    8b742418
                         push              edi                                           // 0x00515843    57
                         {disp8} mov       edi, dword ptr [esp + 0x14]                   // 0x00515844    8b7c2414
                         push              eax                                           // 0x00515848    50
                         push              ebp                                           // 0x00515849    55
                         push              esi                                           // 0x0051584a    56
                         push              ebx                                           // 0x0051584b    53
                         push              edi                                           // 0x0051584c    57
                         call              _jmp_addr_0x0053f3e0                          // 0x0051584d    e88e9b0200
                         {disp8} lea       eax, dword ptr [edi + -0x01]                  // 0x00515852    8d47ff
                         add               esp, 0x14                                     // 0x00515855    83c414
                         cmp               eax, 0x06                                     // 0x00515858    83f806
                         {disp32} ja       _jmp_addr_0x00515933                          // 0x0051585b    0f87d2000000
                         jmp               dword ptr [eax*4 + 0x51593c]                  // 0x00515861    ff24853c595100
                         {disp32} mov      al, byte ptr [data_bytes + 0x30ab01]          // 0x00515868    a0010bcd00
                         test              al, al                                        // 0x0051586d    84c0
                         {disp32} je       _jmp_addr_0x00515933                          // 0x0051586f    0f84be000000
                         cmp               ebp, 0x00002712                               // 0x00515875    81fd12270000
                         {disp32} mov      byte ptr [data_bytes + 0x30ab01], 0x00        // 0x0051587b    c605010bcd0000
                         {disp32} jne      _jmp_addr_0x00515933                          // 0x00515882    0f85ab000000
                         call              _HideAll__13DialogBoxBaseFv@0                 // 0x00515888    e853deffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0051588d    8b0d5c19d000
                         call              _jmp_addr_0x005553f0                          // 0x00515893    e858fb0300
                         pop               edi                                           // 0x00515898    5f
                         pop               esi                                           // 0x00515899    5e
                         pop               ebp                                           // 0x0051589a    5d
                         pop               ebx                                           // 0x0051589b    5b
                         ret               0x0014                                        // 0x0051589c    c21400
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x0051589f    8b0d203bcd00
                         test              ecx, ecx                                      // 0x005158a5    85c9
                         {disp8} je        _jmp_addr_0x005158bd                          // 0x005158a7    7414
                         call              _jmp_addr_0x00426d30                          // 0x005158a9    e88214f1ff
                         test              eax, eax                                      // 0x005158ae    85c0
                         {disp8} je        _jmp_addr_0x005158bd                          // 0x005158b0    740b
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005158b2    8b0d203bcd00
                         call              _jmp_addr_0x00428250                          // 0x005158b8    e89329f1ff
_jmp_addr_0x005158bd:    {disp32} mov      ecx, dword ptr [_game]                        // 0x005158bd    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250304]             // 0x005158c3    8b8904032500
                         mov               edx, dword ptr [ecx]                          // 0x005158c9    8b11
                         call              dword ptr [edx + 0x20]                        // 0x005158cb    ff5220
                         pop               edi                                           // 0x005158ce    5f
                         pop               esi                                           // 0x005158cf    5e
                         pop               ebp                                           // 0x005158d0    5d
                         pop               ebx                                           // 0x005158d1    5b
                         ret               0x0014                                        // 0x005158d2    c21400
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005158d5    8b0d203bcd00
                         test              ecx, ecx                                      // 0x005158db    85c9
                         {disp8} je        _jmp_addr_0x005158f3                          // 0x005158dd    7414
                         call              _jmp_addr_0x00426d30                          // 0x005158df    e84c14f1ff
                         test              eax, eax                                      // 0x005158e4    85c0
                         {disp8} je        _jmp_addr_0x005158f3                          // 0x005158e6    740b
                         {disp32} mov      ecx, dword ptr [_global]                      // 0x005158e8    8b0d203bcd00
                         call              _jmp_addr_0x004282b0                          // 0x005158ee    e8bd29f1ff
_jmp_addr_0x005158f3:    {disp32} mov      eax, dword ptr [_game]                        // 0x005158f3    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x005158f8    8b8804032500
                         call              _jmp_addr_0x005148b0                          // 0x005158fe    e8adefffff
                         pop               edi                                           // 0x00515903    5f
                         pop               esi                                           // 0x00515904    5e
                         pop               ebp                                           // 0x00515905    5d
                         pop               ebx                                           // 0x00515906    5b
                         ret               0x0014                                        // 0x00515907    c21400
                         {disp32} mov      eax, dword ptr [esi + 0x00000238]             // 0x0051590a    8b8638020000
                         test              eax, eax                                      // 0x00515910    85c0
                         {disp8} je        _jmp_addr_0x00515933                          // 0x00515912    741f
                         push              esi                                           // 0x00515914    56
                         push              ebx                                           // 0x00515915    53
                         call              eax                                           // 0x00515916    ffd0
                         add               esp, 0x08                                     // 0x00515918    83c408
                         pop               edi                                           // 0x0051591b    5f
                         pop               esi                                           // 0x0051591c    5e
                         pop               ebp                                           // 0x0051591d    5d
                         pop               ebx                                           // 0x0051591e    5b
                         ret               0x0014                                        // 0x0051591f    c21400
                         {disp32} mov      eax, dword ptr [esi + 0x00000238]             // 0x00515922    8b8638020000
                         test              eax, eax                                      // 0x00515928    85c0
                         {disp8} je        _jmp_addr_0x00515933                          // 0x0051592a    7407
                         push              esi                                           // 0x0051592c    56
                         push              ebx                                           // 0x0051592d    53
                         call              eax                                           // 0x0051592e    ffd0
                         add               esp, 0x08                                     // 0x00515930    83c408
_jmp_addr_0x00515933:    pop               edi                                           // 0x00515933    5f
                         pop               esi                                           // 0x00515934    5e
                         pop               ebp                                           // 0x00515935    5d
                         pop               ebx                                           // 0x00515936    5b
                         ret               0x0014                                        // 0x00515937    c21400

// Snippet: db, [0x0051593a, 0x0051593c)
.byte 0x8b, 0xff                  // 0x0051593a

// Snippet: jmptbl, [0x0051593c, 0x00515958)
.byte 0x0a, 0x59, 0x51, 0x00      // 0x0051593c
.byte 0x33, 0x59, 0x51, 0x00      // 0x00515940
.byte 0x68, 0x58, 0x51, 0x00      // 0x00515944
.byte 0x22, 0x59, 0x51, 0x00      // 0x00515948
.byte 0x33, 0x59, 0x51, 0x00      // 0x0051594c
.byte 0x9f, 0x58, 0x51, 0x00      // 0x00515950
.byte 0xd5, 0x58, 0x51, 0x00      // 0x00515954

// Snippet: db, [0x00515958, 0x00515960)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00515958
.byte 0x90, 0x90, 0x90, 0x90      // 0x0051595c

