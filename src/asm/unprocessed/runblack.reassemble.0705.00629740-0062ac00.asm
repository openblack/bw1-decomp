.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @AutoScroll__9SetupListFb@9
.extern ?UpdateHeights@SetupList@@QAEXXZ
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern ??0DialogBoxBase@@QAE@XZ
.extern _jmp_addr_0x005133c0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x005990a0
.extern _jmp_addr_0x005990f0
.extern _jmp_addr_0x006239e0
.extern _jmp_addr_0x006266f0
.extern _jmp_addr_0x00626780
.extern _jmp_addr_0x00626790
.extern _jmp_addr_0x00628c00
.extern _jmp_addr_0x0062d8f0
.extern ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ
.extern ??0MPFELoginDatabase@@QAE@XZ
.extern _jmp_addr_0x00631070
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ?Exists@LHOSFile@@SAIPAD@Z
.extern _atexit
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern ??2@YAPAXI@Z
.extern __chkstk
.extern _wcscmp
.extern _wcsstr
.extern _wcsncmp
.extern _towlower
.extern ___nw__FUl
.extern _CHAR2WCHAR__FPc
.extern __wcsnicmp

.globl _jmp_addr_0x00629740
.globl _jmp_addr_0x00629760
.globl _jmp_addr_0x006297b0
.globl _jmp_addr_0x00629860
.globl _jmp_addr_0x00629b50
.globl ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ
.globl _jmp_addr_0x0062a100
.globl _jmp_addr_0x0062a220

.globl _globl_ct_0x0062a2c0
.globl ?Destroy@MPFECreateGame@@UAEXXZ
.globl ?Init@MPFECreateGame@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z

start_0x00629740_0x0062ac00:
// Snippet: asm, [0x00629740, 0x0062abd8)
_jmp_addr_0x00629740:    cmp               dword ptr [esp + 0x10], 0x01                   // 0x00629740    837c241001
                         {disp8} jne       _jmp_addr_0x0062975b                           // 0x00629745    7514
                         cmp               dword ptr [esp + 0x0c], 0x00002710             // 0x00629747    817c240c10270000
                         {disp8} jne       _jmp_addr_0x0062975b                           // 0x0062974f    750a
                         mov               ecx, 0x00d40e20                                // 0x00629751    b9200ed400
                         {disp32} jmp      _jmp_addr_0x0062d8f0                           // 0x00629756    e995410000
_jmp_addr_0x0062975b:    ret                                                              // 0x0062975b    c3
                         nop                                                              // 0x0062975c    90
                         nop                                                              // 0x0062975d    90
                         nop                                                              // 0x0062975e    90
                         nop                                                              // 0x0062975f    90
_jmp_addr_0x00629760:    cmp               dword ptr [esp + 0x0c], 0x0d                   // 0x00629760    837c240c0d
                         {disp8} jne       _jmp_addr_0x00629783                           // 0x00629765    751c
                         {disp8} mov       eax, dword ptr [esp + 0x08]                    // 0x00629767    8b442408
                         test              eax, eax                                       // 0x0062976b    85c0
                         {disp8} je        _jmp_addr_0x00629783                           // 0x0062976d    7414
                         cmp               dword ptr [eax + 0x18], 0x06                   // 0x0062976f    83781806
                         {disp8} jne       _jmp_addr_0x00629783                           // 0x00629773    750e
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a954]         // 0x00629775    a15409d400
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a934]         // 0x0062977a    8b0d3409d400
                         {disp8} mov       dword ptr [ecx + 0x70], eax                    // 0x00629780    894170
_jmp_addr_0x00629783:    ret                                                              // 0x00629783    c3
                         nop                                                              // 0x00629784    90
                         nop                                                              // 0x00629785    90
                         nop                                                              // 0x00629786    90
                         nop                                                              // 0x00629787    90
                         nop                                                              // 0x00629788    90
                         nop                                                              // 0x00629789    90
                         nop                                                              // 0x0062978a    90
                         nop                                                              // 0x0062978b    90
                         nop                                                              // 0x0062978c    90
                         nop                                                              // 0x0062978d    90
                         nop                                                              // 0x0062978e    90
                         nop                                                              // 0x0062978f    90
                         ret                                                              // 0x00629790    c3
                         nop                                                              // 0x00629791    90
                         nop                                                              // 0x00629792    90
                         nop                                                              // 0x00629793    90
                         nop                                                              // 0x00629794    90
                         nop                                                              // 0x00629795    90
                         nop                                                              // 0x00629796    90
                         nop                                                              // 0x00629797    90
                         nop                                                              // 0x00629798    90
                         nop                                                              // 0x00629799    90
                         nop                                                              // 0x0062979a    90
                         nop                                                              // 0x0062979b    90
                         nop                                                              // 0x0062979c    90
                         nop                                                              // 0x0062979d    90
                         nop                                                              // 0x0062979e    90
                         nop                                                              // 0x0062979f    90
                         ret               0x0004                                         // 0x006297a0    c20400
                         nop                                                              // 0x006297a3    90
                         nop                                                              // 0x006297a4    90
                         nop                                                              // 0x006297a5    90
                         nop                                                              // 0x006297a6    90
                         nop                                                              // 0x006297a7    90
                         nop                                                              // 0x006297a8    90
                         nop                                                              // 0x006297a9    90
                         nop                                                              // 0x006297aa    90
                         nop                                                              // 0x006297ab    90
                         nop                                                              // 0x006297ac    90
                         nop                                                              // 0x006297ad    90
                         nop                                                              // 0x006297ae    90
                         nop                                                              // 0x006297af    90
_jmp_addr_0x006297b0:    push              esi                                            // 0x006297b0    56
                         push              edi                                            // 0x006297b1    57
                         mov.s             edi, ecx                                       // 0x006297b2    8bf9
                         {disp8} mov       byte ptr [edi + 0x4c], 0x01                    // 0x006297b4    c6474c01
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a954]         // 0x006297b8    a15409d400
                         add               eax, 0x24                                      // 0x006297bd    83c024
                         push              0x00c4cd30                                     // 0x006297c0    6830cdc400
                         push              eax                                            // 0x006297c5    50
                         call              _wcscpy                                        // 0x006297c6    e8ebc71900
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a978]         // 0x006297cb    8b0d7809d400
                         add               ecx, 0x24                                      // 0x006297d1    83c124
                         push              0x00bf4a94                                     // 0x006297d4    68944abf00
                         push              ecx                                            // 0x006297d9    51
                         call              _wcscpy                                        // 0x006297da    e8d7c71900
                         {disp8} mov       esi, dword ptr [edi + 0x28]                    // 0x006297df    8b7728
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]              // 0x006297e2    8b8650020000
                         add               esp, 0x10                                      // 0x006297e8    83c410
                         test              eax, eax                                       // 0x006297eb    85c0
                         {disp8} jle       _jmp_addr_0x00629802                           // 0x006297ed    7e13
_jmp_addr_0x006297ef:    dec               eax                                            // 0x006297ef    48
                         push              eax                                            // 0x006297f0    50
                         mov.s             ecx, esi                                       // 0x006297f1    8bce
                         call              @DeleteString__9SetupListFi@12                 // 0x006297f3    e86815deff
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]              // 0x006297f8    8b8650020000
                         test              eax, eax                                       // 0x006297fe    85c0
                         {disp8} jg        _jmp_addr_0x006297ef                           // 0x00629800    7fed
_jmp_addr_0x00629802:    {disp8} mov       edx, dword ptr [edi + 0x50]                    // 0x00629802    8b5750
                         test              edx, edx                                       // 0x00629805    85d2
                         {disp8} je        _jmp_addr_0x0062985a                           // 0x00629807    7451
                         mov               esi, dword ptr [edx]                           // 0x00629809    8b32
                         mov.s             eax, edx                                       // 0x0062980b    8bc2
                         xor.s             ecx, ecx                                       // 0x0062980d    33c9
                         test              eax, eax                                       // 0x0062980f    85c0
                         {disp8} je        _jmp_addr_0x00629844                           // 0x00629811    7431
_jmp_addr_0x00629813:    cmp               dword ptr [eax], esi                           // 0x00629813    3930
                         {disp8} je        _jmp_addr_0x00629822                           // 0x00629815    740b
                         mov.s             ecx, eax                                       // 0x00629817    8bc8
                         {disp8} mov       eax, dword ptr [eax + 0x04]                    // 0x00629819    8b4004
                         test              eax, eax                                       // 0x0062981c    85c0
                         {disp8} jne       _jmp_addr_0x00629813                           // 0x0062981e    75f3
                         {disp8} jmp       _jmp_addr_0x00629844                           // 0x00629820    eb22
_jmp_addr_0x00629822:    test              ecx, ecx                                       // 0x00629822    85c9
                         {disp8} jne       _jmp_addr_0x0062982e                           // 0x00629824    7508
                         {disp8} mov       edx, dword ptr [edx + 0x04]                    // 0x00629826    8b5204
                         {disp8} mov       dword ptr [edi + 0x50], edx                    // 0x00629829    895750
                         {disp8} jmp       _jmp_addr_0x00629834                           // 0x0062982c    eb06
_jmp_addr_0x0062982e:    {disp8} mov       edx, dword ptr [eax + 0x04]                    // 0x0062982e    8b5004
                         {disp8} mov       dword ptr [ecx + 0x04], edx                    // 0x00629831    895104
_jmp_addr_0x00629834:    push              eax                                            // 0x00629834    50
                         call              ??3@YAXPAX@Z                                   // 0x00629835    e85e561800
                         {disp8} mov       eax, dword ptr [edi + 0x54]                    // 0x0062983a    8b4754
                         add               esp, 0x04                                      // 0x0062983d    83c404
                         dec               eax                                            // 0x00629840    48
                         {disp8} mov       dword ptr [edi + 0x54], eax                    // 0x00629841    894754
_jmp_addr_0x00629844:    test              esi, esi                                       // 0x00629844    85f6
                         {disp8} je        _jmp_addr_0x00629802                           // 0x00629846    74ba
                         mov.s             ecx, esi                                       // 0x00629848    8bce
                         call              _jmp_addr_0x00626780                           // 0x0062984a    e831cfffff
                         push              esi                                            // 0x0062984f    56
                         call              ??3@YAXPAX@Z                                   // 0x00629850    e843561800
                         add               esp, 0x04                                      // 0x00629855    83c404
                         {disp8} jmp       _jmp_addr_0x00629802                           // 0x00629858    eba8
_jmp_addr_0x0062985a:    pop               edi                                            // 0x0062985a    5f
                         pop               esi                                            // 0x0062985b    5e
                         ret                                                              // 0x0062985c    c3
                         nop                                                              // 0x0062985d    90
                         nop                                                              // 0x0062985e    90
                         nop                                                              // 0x0062985f    90
_jmp_addr_0x00629860:    push              ecx                                            // 0x00629860    51
                         push              ebx                                            // 0x00629861    53
                         {disp8} mov       ebx, dword ptr [esp + 0x20]                    // 0x00629862    8b5c2420
                         push              ebp                                            // 0x00629866    55
                         push              esi                                            // 0x00629867    56
                         {disp8} mov       esi, dword ptr [ecx + 0x50]                    // 0x00629868    8b7150
                         xor.s             ebp, ebp                                       // 0x0062986b    33ed
                         cmp.s             esi, ebp                                       // 0x0062986d    3bf5
                         push              edi                                            // 0x0062986f    57
                         {disp8} mov       edi, dword ptr [esp + 0x18]                    // 0x00629870    8b7c2418
                         {disp8} mov       dword ptr [esp + 0x10], ecx                    // 0x00629874    894c2410
                         {disp8} je        _jmp_addr_0x006298b7                           // 0x00629878    743d
_jmp_addr_0x0062987a:    mov               ecx, 0x00d40e20                                // 0x0062987a    b9200ed400
                         call              ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ // 0x0062987f    e83c420000
                         sub               al, 0x00                                       // 0x00629884    2c00
                         {disp8} je        _jmp_addr_0x0062989c                           // 0x00629886    7414
                         dec               al                                             // 0x00629888    fec8
                         {disp8} jne       _jmp_addr_0x006298b0                           // 0x0062988a    7524
                         mov               eax, dword ptr [esi]                           // 0x0062988c    8b06
                         cmp               dword ptr [eax + 0x0000049c], ebx              // 0x0062988e    39989c040000
                         {disp32} je       _jmp_addr_0x006299b1                           // 0x00629894    0f8417010000
                         {disp8} jmp       _jmp_addr_0x006298b0                           // 0x0062989a    eb14
_jmp_addr_0x0062989c:    mov               eax, dword ptr [esi]                           // 0x0062989c    8b06
                         push              eax                                            // 0x0062989e    50
                         push              edi                                            // 0x0062989f    57
                         call              _wcscmp                           // 0x006298a0    e83ad61900
                         add               esp, 0x08                                      // 0x006298a5    83c408
                         test              eax, eax                                       // 0x006298a8    85c0
                         {disp32} je       _jmp_addr_0x006299b1                           // 0x006298aa    0f8401010000
_jmp_addr_0x006298b0:    {disp8} mov       esi, dword ptr [esi + 0x04]                    // 0x006298b0    8b7604
                         cmp.s             esi, ebp                                       // 0x006298b3    3bf5
                         {disp8} jne       _jmp_addr_0x0062987a                           // 0x006298b5    75c3
_jmp_addr_0x006298b7:    push              0x000001ed                                     // 0x006298b7    68ed010000
                         push              0x00bf4a64                                     // 0x006298bc    68644abf00
                         push              0x000005c0                                     // 0x006298c1    68c0050000
                         call              ___nw__FUl                                     // 0x006298c6    e8c51e1b00
                         add               esp, 0x0c                                      // 0x006298cb    83c40c
                         cmp.s             eax, ebp                                       // 0x006298ce    3bc5
                         {disp8} je        _jmp_addr_0x006298fd                           // 0x006298d0    742b
                         {disp8} mov       ecx, dword ptr [esp + 0x38]                    // 0x006298d2    8b4c2438
                         {disp8} mov       edx, dword ptr [esp + 0x30]                    // 0x006298d6    8b542430
                         push              ecx                                            // 0x006298da    51
                         {disp8} mov       ecx, dword ptr [esp + 0x28]                    // 0x006298db    8b4c2428
                         push              edx                                            // 0x006298df    52
                         {disp8} mov       edx, dword ptr [esp + 0x28]                    // 0x006298e0    8b542428
                         push              ecx                                            // 0x006298e4    51
                         {disp8} mov       ecx, dword ptr [esp + 0x28]                    // 0x006298e5    8b4c2428
                         push              ebx                                            // 0x006298e9    53
                         push              edx                                            // 0x006298ea    52
                         {disp8} mov       edx, dword ptr [esp + 0x3c]                    // 0x006298eb    8b54243c
                         push              ecx                                            // 0x006298ef    51
                         push              edx                                            // 0x006298f0    52
                         push              edi                                            // 0x006298f1    57
                         mov.s             ecx, eax                                       // 0x006298f2    8bc8
                         call              _jmp_addr_0x006266f0                           // 0x006298f4    e8f7cdffff
                         mov.s             ebx, eax                                       // 0x006298f9    8bd8
                         {disp8} jmp       _jmp_addr_0x006298ff                           // 0x006298fb    eb02
_jmp_addr_0x006298fd:    xor.s             ebx, ebx                                       // 0x006298fd    33db
_jmp_addr_0x006298ff:    {disp8} mov       edi, dword ptr [esp + 0x34]                    // 0x006298ff    8b7c2434
                         cmp.s             edi, ebp                                       // 0x00629903    3bfd
                         {disp32} lea      edx, dword ptr [ebx + 0x000004c0]              // 0x00629905    8d93c0040000
                         {disp8} jne       _jmp_addr_0x00629912                           // 0x0062990b    7505
                         mov               edi, 0x00c58370                                // 0x0062990d    bf7083c500
_jmp_addr_0x00629912:    or                ecx, 0xffffffff                                // 0x00629912    83c9ff
                         xor.s             eax, eax                                       // 0x00629915    33c0
                         repne scasb                                                      // 0x00629917    f2ae
                         not               ecx                                            // 0x00629919    f7d1
                         sub.s             edi, ecx                                       // 0x0062991b    2bf9
                         mov.s             eax, ecx                                       // 0x0062991d    8bc1
                         shr               ecx, 2                                         // 0x0062991f    c1e902
                         mov.s             esi, edi                                       // 0x00629922    8bf7
                         mov.s             edi, edx                                       // 0x00629924    8bfa
                         rep movsd         es:[edi], dword ptr ds:[esi]                   // 0x00629926    f3a5
                         mov.s             ecx, eax                                       // 0x00629928    8bc8
                         and               ecx, 0x03                                      // 0x0062992a    83e103
                         push              0x8                                            // 0x0062992d    6a08
                         rep movsb                                                        // 0x0062992f    f3a4
                         call              ??2@YAPAXI@Z                                   // 0x00629931    e8b8cb1900
                         add               esp, 0x04                                      // 0x00629936    83c404
                         cmp.s             eax, ebp                                       // 0x00629939    3bc5
                         {disp8} je        _jmp_addr_0x00629944                           // 0x0062993b    7407
                         {disp8} mov       dword ptr [eax + 0x04], ebp                    // 0x0062993d    896804
                         mov               dword ptr [eax], ebx                           // 0x00629940    8918
                         mov.s             ebp, eax                                       // 0x00629942    8be8
_jmp_addr_0x00629944:    {disp8} mov       ecx, dword ptr [esp + 0x10]                    // 0x00629944    8b4c2410
                         {disp8} mov       esi, dword ptr [ecx + 0x50]                    // 0x00629948    8b7150
                         xor.s             edi, edi                                       // 0x0062994b    33ff
                         test              esi, esi                                       // 0x0062994d    85f6
                         {disp8} je        _jmp_addr_0x0062998b                           // 0x0062994f    743a
_jmp_addr_0x00629951:    mov               eax, dword ptr [esi]                           // 0x00629951    8b06
                         push              eax                                            // 0x00629953    50
                         push              ebx                                            // 0x00629954    53
                         call              _wcscmp                           // 0x00629955    e885d51900
                         add               esp, 0x08                                      // 0x0062995a    83c408
                         test              eax, eax                                       // 0x0062995d    85c0
                         {disp8} jl        _jmp_addr_0x0062996c                           // 0x0062995f    7c0b
                         mov.s             edi, esi                                       // 0x00629961    8bfe
                         {disp8} mov       esi, dword ptr [esi + 0x04]                    // 0x00629963    8b7604
                         test              esi, esi                                       // 0x00629966    85f6
                         {disp8} jne       _jmp_addr_0x00629951                           // 0x00629968    75e7
                         {disp8} jmp       _jmp_addr_0x00629983                           // 0x0062996a    eb17
_jmp_addr_0x0062996c:    test              edi, edi                                       // 0x0062996c    85ff
                         {disp8} mov       dword ptr [ebp + 0x04], esi                    // 0x0062996e    897504
                         {disp8} jne       _jmp_addr_0x0062997c                           // 0x00629971    7509
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                    // 0x00629973    8b4c2410
                         {disp8} mov       dword ptr [ecx + 0x50], ebp                    // 0x00629977    896950
                         {disp8} jmp       _jmp_addr_0x0062997f                           // 0x0062997a    eb03
_jmp_addr_0x0062997c:    {disp8} mov       dword ptr [edi + 0x04], ebp                    // 0x0062997c    896f04
_jmp_addr_0x0062997f:    test              esi, esi                                       // 0x0062997f    85f6
                         {disp8} jne       _jmp_addr_0x006299a5                           // 0x00629981    7522
_jmp_addr_0x00629983:    test              edi, edi                                       // 0x00629983    85ff
                         {disp8} jne       _jmp_addr_0x006299a2                           // 0x00629985    751b
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                    // 0x00629987    8b4c2410
_jmp_addr_0x0062998b:    {disp8} mov       eax, dword ptr [ecx + 0x54]                    // 0x0062998b    8b4154
                         inc               eax                                            // 0x0062998e    40
                         {disp8} mov       dword ptr [ecx + 0x50], ebp                    // 0x0062998f    896950
                         {disp8} mov       dword ptr [ecx + 0x54], eax                    // 0x00629992    894154
                         call              ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ// 0x00629995    e8b6020000
                         pop               edi                                            // 0x0062999a    5f
                         pop               esi                                            // 0x0062999b    5e
                         pop               ebp                                            // 0x0062999c    5d
                         pop               ebx                                            // 0x0062999d    5b
                         pop               ecx                                            // 0x0062999e    59
                         ret               0x0024                                         // 0x0062999f    c22400
_jmp_addr_0x006299a2:    {disp8} mov       dword ptr [edi + 0x04], ebp                    // 0x006299a2    896f04
_jmp_addr_0x006299a5:    {disp8} mov       ecx, dword ptr [esp + 0x10]                    // 0x006299a5    8b4c2410
                         {disp8} inc       dword ptr [ecx + 0x54]                         // 0x006299a9    ff4154
                         call              ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ// 0x006299ac    e89f020000
_jmp_addr_0x006299b1:    pop               edi                                            // 0x006299b1    5f
                         pop               esi                                            // 0x006299b2    5e
                         pop               ebp                                            // 0x006299b3    5d
                         pop               ebx                                            // 0x006299b4    5b
                         pop               ecx                                            // 0x006299b5    59
                         ret               0x0024                                         // 0x006299b6    c22400
                         nop                                                              // 0x006299b9    90
                         nop                                                              // 0x006299ba    90
                         nop                                                              // 0x006299bb    90
                         nop                                                              // 0x006299bc    90
                         nop                                                              // 0x006299bd    90
                         nop                                                              // 0x006299be    90
                         nop                                                              // 0x006299bf    90
                         mov               eax, 0x0000110c                                // 0x006299c0    b80c110000
                         call              __chkstk                                       // 0x006299c5    e8e6d41900
                         push              ebp                                            // 0x006299ca    55
                         mov.s             ebp, ecx                                       // 0x006299cb    8be9
                         push              edi                                            // 0x006299cd    57
                         {disp8} mov       edi, dword ptr [ebp + 0x28]                    // 0x006299ce    8b7d28
                         {disp32} mov      ecx, dword ptr [edi + 0x00000250]              // 0x006299d1    8b8f50020000
                         xor.s             eax, eax                                       // 0x006299d7    33c0
                         test              ecx, ecx                                       // 0x006299d9    85c9
                         {disp8} mov       dword ptr [esp + 0x08], eax                    // 0x006299db    89442408
                         {disp32} jle      _jmp_addr_0x00629b3a                           // 0x006299df    0f8e55010000
                         push              ebx                                            // 0x006299e5    53
                         {disp32} mov      ebx, dword ptr [rdata_bytes + 0x3d8]           // 0x006299e6    8b1dd8938a00
                         push              esi                                            // 0x006299ec    56
                         {disp8} jmp       _jmp_addr_0x006299f3                           // 0x006299ed    eb04
_jmp_addr_0x006299ef:    {disp8} mov       eax, dword ptr [esp + 0x10]                    // 0x006299ef    8b442410
_jmp_addr_0x006299f3:    test              eax, eax                                       // 0x006299f3    85c0
                         {disp8} jl        _jmp_addr_0x00629a0a                           // 0x006299f5    7c13
                         cmp               eax, dword ptr [edi + 0x00000250]              // 0x006299f7    3b8750020000
                         {disp8} jge       _jmp_addr_0x00629a0a                           // 0x006299fd    7d0b
                         {disp32} mov      ecx, dword ptr [edi + 0x00000264]              // 0x006299ff    8b8f64020000
                         mov               eax, dword ptr [ecx + eax * 0x4]               // 0x00629a05    8b0481
                         {disp8} jmp       _jmp_addr_0x00629a0c                           // 0x00629a08    eb02
_jmp_addr_0x00629a0a:    xor.s             eax, eax                                       // 0x00629a0a    33c0
_jmp_addr_0x00629a0c:    {disp32} lea      esi, dword ptr [eax + 0x000004c0]              // 0x00629a0c    8db0c0040000
                         {disp32} mov      eax, dword ptr [esp + 0x00001120]              // 0x00629a12    8b842420110000
_jmp_addr_0x00629a19:    mov               dl, byte ptr [eax]                             // 0x00629a19    8a10
                         mov.s             cl, dl                                         // 0x00629a1b    8aca
                         cmp               dl, byte ptr [esi]                             // 0x00629a1d    3a16
                         {disp8} jne       _jmp_addr_0x00629a3d                           // 0x00629a1f    751c
                         test              cl, cl                                         // 0x00629a21    84c9
                         {disp8} je        _jmp_addr_0x00629a39                           // 0x00629a23    7414
                         {disp8} mov       dl, byte ptr [eax + 0x01]                      // 0x00629a25    8a5001
                         mov.s             cl, dl                                         // 0x00629a28    8aca
                         cmp               dl, byte ptr [esi + 0x01]                      // 0x00629a2a    3a5601
                         {disp8} jne       _jmp_addr_0x00629a3d                           // 0x00629a2d    750e
                         add               eax, 0x02                                      // 0x00629a2f    83c002
                         add               esi, 0x02                                      // 0x00629a32    83c602
                         test              cl, cl                                         // 0x00629a35    84c9
                         {disp8} jne       _jmp_addr_0x00629a19                           // 0x00629a37    75e0
_jmp_addr_0x00629a39:    xor.s             eax, eax                                       // 0x00629a39    33c0
                         {disp8} jmp       _jmp_addr_0x00629a42                           // 0x00629a3b    eb05
_jmp_addr_0x00629a3d:    sbb.s             eax, eax                                       // 0x00629a3d    1bc0
                         sbb               eax, -0x01                                     // 0x00629a3f    83d8ff
_jmp_addr_0x00629a42:    test              eax, eax                                       // 0x00629a42    85c0
                         {disp32} jne      _jmp_addr_0x00629b1e                           // 0x00629a44    0f85d4000000
                         {disp32} mov      eax, dword ptr [edi + 0x00000248]              // 0x00629a4a    8b8748020000
                         cmp               eax, dword ptr [esp + 0x10]                    // 0x00629a50    3b442410
                         {disp32} jne      _jmp_addr_0x00629b1e                           // 0x00629a54    0f85c4000000
                         {disp32} mov      esi, dword ptr [esp + 0x00001120]              // 0x00629a5a    8bb42420110000
                         push              esi                                            // 0x00629a61    56
                         call              _jmp_addr_0x005990a0                           // 0x00629a62    e839f6f6ff
                         add               esp, 0x04                                      // 0x00629a67    83c404
                         test              eax, eax                                       // 0x00629a6a    85c0
                         push              esi                                            // 0x00629a6c    56
                         {disp8} je        _jmp_addr_0x00629a76                           // 0x00629a6d    7407
                         call              _jmp_addr_0x005990f0                           // 0x00629a6f    e87cf6f6ff
                         {disp8} jmp       _jmp_addr_0x00629a7b                           // 0x00629a74    eb05
_jmp_addr_0x00629a76:    call              _CHAR2WCHAR__FPc                               // 0x00629a76    e825662000
_jmp_addr_0x00629a7b:    add               esp, 0x04                                      // 0x00629a7b    83c404
                         push              eax                                            // 0x00629a7e    50
                         {disp32} lea      ecx, dword ptr [esp + 0x00000118]              // 0x00629a7f    8d8c2418010000
                         push              0x009cd6c8                                     // 0x00629a86    68c8d69c00
                         push              ecx                                            // 0x00629a8b    51
                         call              ebx                                            // 0x00629a8c    ffd3
                         push              eax                                            // 0x00629a8e    50
                         {disp8} lea       edx, dword ptr [esp + 0x24]                    // 0x00629a8f    8d542424
                         push              edx                                            // 0x00629a93    52
                         call              _wcscpy                                        // 0x00629a94    e81dc51900
                         {disp8} mov       eax, dword ptr [ebp + 0x2c]                    // 0x00629a99    8b452c
                         {disp32} mov      eax, dword ptr [eax + 0x00000250]              // 0x00629a9c    8b8050020000
                         add               esp, 0x14                                      // 0x00629aa2    83c414
                         test              eax, eax                                       // 0x00629aa5    85c0
                         {disp8} je        _jmp_addr_0x00629b1e                           // 0x00629aa7    7475
                         xor.s             edi, edi                                       // 0x00629aa9    33ff
                         test              eax, eax                                       // 0x00629aab    85c0
                         {disp8} jle       _jmp_addr_0x00629b1e                           // 0x00629aad    7e6f
                         xor.s             esi, esi                                       // 0x00629aaf    33f6
_jmp_addr_0x00629ab1:    {disp8} lea       ecx, dword ptr [esp + 0x14]                    // 0x00629ab1    8d4c2414
                         push              ecx                                            // 0x00629ab5    51
                         call              _wcslen                                        // 0x00629ab6    e8a7c91900
                         {disp8} mov       edx, dword ptr [ebp + 0x2c]                    // 0x00629abb    8b552c
                         push              eax                                            // 0x00629abe    50
                         {disp32} mov      eax, dword ptr [edx + 0x00000258]              // 0x00629abf    8b8258020000
                         add.s             eax, esi                                       // 0x00629ac5    03c6
                         push              eax                                            // 0x00629ac7    50
                         {disp8} lea       ecx, dword ptr [esp + 0x20]                    // 0x00629ac8    8d4c2420
                         push              ecx                                            // 0x00629acc    51
                         call              _wcsncmp                                       // 0x00629acd    e850fc1900
                         add               esp, 0x10                                      // 0x00629ad2    83c410
                         test              eax, eax                                       // 0x00629ad5    85c0
                         {disp8} jne       _jmp_addr_0x00629b0a                           // 0x00629ad7    7531
                         {disp32} mov      edx, dword ptr [esp + 0x00001124]              // 0x00629ad9    8b942424110000
                         push              edx                                            // 0x00629ae0    52
                         {disp8} lea       eax, dword ptr [esp + 0x18]                    // 0x00629ae1    8d442418
                         push              eax                                            // 0x00629ae5    50
                         {disp32} lea      ecx, dword ptr [esp + 0x00000920]              // 0x00629ae6    8d8c2420090000
                         push              0x00bf4ab8                                     // 0x00629aed    68b84abf00
                         push              ecx                                            // 0x00629af2    51
                         call              ebx                                            // 0x00629af3    ffd3
                         {disp8} mov       edx, dword ptr [ebp + 0x2c]                    // 0x00629af5    8b552c
                         push              eax                                            // 0x00629af8    50
                         {disp32} mov      eax, dword ptr [edx + 0x00000258]              // 0x00629af9    8b8258020000
                         add.s             eax, esi                                       // 0x00629aff    03c6
                         push              eax                                            // 0x00629b01    50
                         call              _wcscpy                                        // 0x00629b02    e8afc41900
                         add               esp, 0x18                                      // 0x00629b07    83c418
_jmp_addr_0x00629b0a:    {disp8} mov       ecx, dword ptr [ebp + 0x2c]                    // 0x00629b0a    8b4d2c
                         {disp32} mov      eax, dword ptr [ecx + 0x00000250]              // 0x00629b0d    8b8150020000
                         inc               edi                                            // 0x00629b13    47
                         add               esi, 0x00000200                                // 0x00629b14    81c600020000
                         cmp.s             edi, eax                                       // 0x00629b1a    3bf8
                         {disp8} jl        _jmp_addr_0x00629ab1                           // 0x00629b1c    7c93
_jmp_addr_0x00629b1e:    {disp8} mov       eax, dword ptr [esp + 0x10]                    // 0x00629b1e    8b442410
                         {disp8} mov       edi, dword ptr [ebp + 0x28]                    // 0x00629b22    8b7d28
                         {disp32} mov      ecx, dword ptr [edi + 0x00000250]              // 0x00629b25    8b8f50020000
                         inc               eax                                            // 0x00629b2b    40
                         cmp.s             eax, ecx                                       // 0x00629b2c    3bc1
                         {disp8} mov       dword ptr [esp + 0x10], eax                    // 0x00629b2e    89442410
                         {disp32} jl       _jmp_addr_0x006299ef                           // 0x00629b32    0f8cb7feffff
                         pop               esi                                            // 0x00629b38    5e
                         pop               ebx                                            // 0x00629b39    5b
_jmp_addr_0x00629b3a:    pop               edi                                            // 0x00629b3a    5f
                         pop               ebp                                            // 0x00629b3b    5d
                         add               esp, 0x0000110c                                // 0x00629b3c    81c40c110000
                         ret               0x0008                                         // 0x00629b42    c20800
                         nop                                                              // 0x00629b45    90
                         nop                                                              // 0x00629b46    90
                         nop                                                              // 0x00629b47    90
                         nop                                                              // 0x00629b48    90
                         nop                                                              // 0x00629b49    90
                         nop                                                              // 0x00629b4a    90
                         nop                                                              // 0x00629b4b    90
                         nop                                                              // 0x00629b4c    90
                         nop                                                              // 0x00629b4d    90
                         nop                                                              // 0x00629b4e    90
                         nop                                                              // 0x00629b4f    90
_jmp_addr_0x00629b50:    sub               esp, 0x08                                      // 0x00629b50    83ec08
                         push              ebx                                            // 0x00629b53    53
                         push              ebp                                            // 0x00629b54    55
                         {disp8} mov       ebp, dword ptr [ecx + 0x50]                    // 0x00629b55    8b6950
                         test              ebp, ebp                                       // 0x00629b58    85ed
                         push              esi                                            // 0x00629b5a    56
                         push              edi                                            // 0x00629b5b    57
                         {disp8} mov       dword ptr [esp + 0x14], ecx                    // 0x00629b5c    894c2414
                         {disp8} mov       byte ptr [esp + 0x13], 0x00                    // 0x00629b60    c644241300
                         {disp32} je       _jmp_addr_0x00629c35                           // 0x00629b65    0f84ca000000
                         {disp8} mov       ebx, dword ptr [esp + 0x1c]                    // 0x00629b6b    8b5c241c
_jmp_addr_0x00629b6f:    {disp8} mov       al, byte ptr [esp + 0x13]                      // 0x00629b6f    8a442413
                         test              al, al                                         // 0x00629b73    84c0
                         {disp32} jne      _jmp_addr_0x00629c35                           // 0x00629b75    0f85ba000000
                         mov               ecx, 0x00d40e20                                // 0x00629b7b    b9200ed400
                         call              ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ // 0x00629b80    e83b3f0000
                         test              al, al                                         // 0x00629b85    84c0
                         {disp8} mov       eax, dword ptr [ebp + 0x00]                    // 0x00629b87    8b4500
                         {disp8} je        _jmp_addr_0x00629b9d                           // 0x00629b8a    7411
                         {disp32} mov      edx, dword ptr [eax + 0x0000049c]              // 0x00629b8c    8b909c040000
                         {disp8} mov       ecx, dword ptr [esp + 0x30]                    // 0x00629b92    8b4c2430
                         cmp.s             ecx, edx                                       // 0x00629b96    3bca
                         sete              al                                             // 0x00629b98    0f94c0
                         {disp8} jmp       _jmp_addr_0x00629bb2                           // 0x00629b9b    eb15
_jmp_addr_0x00629b9d:    push              0x00000200                                     // 0x00629b9d    6800020000
                         push              eax                                            // 0x00629ba2    50
                         push              ebx                                            // 0x00629ba3    53
                         call              __wcsnicmp                                     // 0x00629ba4    e802c12700
                         add               esp, 0x0c                                      // 0x00629ba9    83c40c
                         neg               eax                                            // 0x00629bac    f7d8
                         sbb.s             al, al                                         // 0x00629bae    1ac0
                         inc               al                                             // 0x00629bb0    fec0
_jmp_addr_0x00629bb2:    test              al, al                                         // 0x00629bb2    84c0
                         {disp8} je        _jmp_addr_0x00629c2a                           // 0x00629bb4    7474
                         {disp8} mov       esi, dword ptr [ebp + 0x00]                    // 0x00629bb6    8b7500
                         {disp8} mov       edx, dword ptr [esp + 0x20]                    // 0x00629bb9    8b542420
                         {disp8} mov       al, byte ptr [esp + 0x24]                      // 0x00629bbd    8a442424
                         {disp8} mov       ecx, dword ptr [esp + 0x28]                    // 0x00629bc1    8b4c2428
                         {disp32} mov      dword ptr [esi + 0x000004a8], edx              // 0x00629bc5    8996a8040000
                         {disp8} mov       dl, byte ptr [esp + 0x2c]                      // 0x00629bcb    8a54242c
                         {disp32} mov      byte ptr [esi + 0x00000498], al                // 0x00629bcf    888698040000
                         {disp8} mov       eax, dword ptr [esp + 0x30]                    // 0x00629bd5    8b442430
                         push              ebx                                            // 0x00629bd9    53
                         push              esi                                            // 0x00629bda    56
                         {disp32} mov      dword ptr [esi + 0x000004ac], ecx              // 0x00629bdb    898eac040000
                         {disp32} mov      byte ptr [esi + 0x00000499], dl                // 0x00629be1    889699040000
                         {disp32} mov      dword ptr [esi + 0x0000049c], eax              // 0x00629be7    89869c040000
                         call              _wcscpy                                        // 0x00629bed    e8c4c31900
                         {disp8} mov       edi, dword ptr [esp + 0x3c]                    // 0x00629bf2    8b7c243c
                         add               esp, 0x08                                      // 0x00629bf6    83c408
                         test              edi, edi                                       // 0x00629bf9    85ff
                         {disp32} lea      edx, dword ptr [esi + 0x000004c0]              // 0x00629bfb    8d96c0040000
                         {disp8} jne       _jmp_addr_0x00629c08                           // 0x00629c01    7505
                         mov               edi, 0x00c58370                                // 0x00629c03    bf7083c500
_jmp_addr_0x00629c08:    or                ecx, 0xffffffff                                // 0x00629c08    83c9ff
                         xor.s             eax, eax                                       // 0x00629c0b    33c0
                         repne scasb                                                      // 0x00629c0d    f2ae
                         not               ecx                                            // 0x00629c0f    f7d1
                         sub.s             edi, ecx                                       // 0x00629c11    2bf9
                         mov.s             eax, ecx                                       // 0x00629c13    8bc1
                         mov.s             esi, edi                                       // 0x00629c15    8bf7
                         shr               ecx, 2                                         // 0x00629c17    c1e902
                         mov.s             edi, edx                                       // 0x00629c1a    8bfa
                         rep movsd         es:[edi], dword ptr ds:[esi]                   // 0x00629c1c    f3a5
                         mov.s             ecx, eax                                       // 0x00629c1e    8bc8
                         and               ecx, 0x03                                      // 0x00629c20    83e103
                         rep movsb                                                        // 0x00629c23    f3a4
                         {disp8} mov       byte ptr [esp + 0x13], 0x01                    // 0x00629c25    c644241301
_jmp_addr_0x00629c2a:    {disp8} mov       ebp, dword ptr [ebp + 0x04]                    // 0x00629c2a    8b6d04
                         test              ebp, ebp                                       // 0x00629c2d    85ed
                         {disp32} jne      _jmp_addr_0x00629b6f                           // 0x00629c2f    0f853affffff
_jmp_addr_0x00629c35:    {disp8} mov       ecx, dword ptr [esp + 0x14]                    // 0x00629c35    8b4c2414
                         call              ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ// 0x00629c39    e812000000
                         pop               edi                                            // 0x00629c3e    5f
                         pop               esi                                            // 0x00629c3f    5e
                         pop               ebp                                            // 0x00629c40    5d
                         pop               ebx                                            // 0x00629c41    5b
                         add               esp, 0x08                                      // 0x00629c42    83c408
                         ret               0x0020                                         // 0x00629c45    c22000
                         nop                                                              // 0x00629c48    90
                         nop                                                              // 0x00629c49    90
                         nop                                                              // 0x00629c4a    90
                         nop                                                              // 0x00629c4b    90
                         nop                                                              // 0x00629c4c    90
                         nop                                                              // 0x00629c4d    90
                         nop                                                              // 0x00629c4e    90
                         nop                                                              // 0x00629c4f    90
?RefreshChannelList@MPFEChannelSelector@@QAEXXZ:
                                                   sub               esp, 0x0000020c                                // 0x00629c50    81ec0c020000
                         push              ebx                                            // 0x00629c56    53
                         push              ebp                                            // 0x00629c57    55
                         mov.s             ebx, ecx                                       // 0x00629c58    8bd9
                         push              esi                                            // 0x00629c5a    56
                         {disp8} mov       esi, dword ptr [ebx + 0x28]                    // 0x00629c5b    8b7328
                         {disp32} fild     dword ptr [esi + 0x0000027c]                   // 0x00629c5e    db867c020000
                         {disp32} mov      eax, dword ptr [esi + 0x00000248]              // 0x00629c64    8b8648020000
                         test              eax, eax                                       // 0x00629c6a    85c0
                         push              edi                                            // 0x00629c6c    57
                         {disp8} fstp      dword ptr [esp + 0x14]                         // 0x00629c6d    d95c2414
                         {disp8} mov       dword ptr [esp + 0x18], ebx                    // 0x00629c71    895c2418
                         {disp8} jl        _jmp_addr_0x00629c8e                           // 0x00629c75    7c17
                         cmp               eax, dword ptr [esi + 0x00000250]              // 0x00629c77    3b8650020000
                         {disp8} jge       _jmp_addr_0x00629c8e                           // 0x00629c7d    7d0f
                         {disp32} mov      ecx, dword ptr [esi + 0x00000264]              // 0x00629c7f    8b8e64020000
                         mov               edi, dword ptr [ecx + eax * 0x4]               // 0x00629c85    8b3c81
                         {disp8} mov       dword ptr [esp + 0x10], edi                    // 0x00629c88    897c2410
                         {disp8} jmp       _jmp_addr_0x00629c9a                           // 0x00629c8c    eb0c
_jmp_addr_0x00629c8e:    {disp8} mov       dword ptr [esp + 0x10], 0x00000000             // 0x00629c8e    c744241000000000
                         {disp8} mov       edi, dword ptr [esp + 0x10]                    // 0x00629c96    8b7c2410
_jmp_addr_0x00629c9a:    {disp32} mov      eax, dword ptr [esi + 0x00000250]              // 0x00629c9a    8b8650020000
                         test              eax, eax                                       // 0x00629ca0    85c0
                         {disp8} jle       _jmp_addr_0x00629cb7                           // 0x00629ca2    7e13
_jmp_addr_0x00629ca4:    dec               eax                                            // 0x00629ca4    48
                         push              eax                                            // 0x00629ca5    50
                         mov.s             ecx, esi                                       // 0x00629ca6    8bce
                         call              @DeleteString__9SetupListFi@12                 // 0x00629ca8    e8b310deff
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]              // 0x00629cad    8b8650020000
                         test              eax, eax                                       // 0x00629cb3    85c0
                         {disp8} jg        _jmp_addr_0x00629ca4                           // 0x00629cb5    7fed
_jmp_addr_0x00629cb7:    {disp8} mov       ebp, dword ptr [ebx + 0x50]                    // 0x00629cb7    8b6b50
                         test              ebp, ebp                                       // 0x00629cba    85ed
                         {disp32} je       _jmp_addr_0x00629ef4                           // 0x00629cbc    0f8432020000
_jmp_addr_0x00629cc2:    {disp32} mov      edx, dword ptr [data_bytes + 0x37a954]         // 0x00629cc2    8b155409d400
                         add               edx, 0x24                                      // 0x00629cc8    83c224
                         push              0x00c4cd30                                     // 0x00629ccb    6830cdc400
                         push              edx                                            // 0x00629cd0    52
                         call              _wcscmp                           // 0x00629cd1    e809d21900
                         add               esp, 0x08                                      // 0x00629cd6    83c408
                         test              eax, eax                                       // 0x00629cd9    85c0
                         {disp32} je       _jmp_addr_0x00629e51                           // 0x00629cdb    0f8470010000
                         {disp32} mov      al, byte ptr [data_bytes + 0x37a97c]           // 0x00629ce1    a07c09d400
                         test              al, al                                         // 0x00629ce6    84c0
                         {disp32} je       _jmp_addr_0x00629e51                           // 0x00629ce8    0f8463010000
                         xor.s             eax, eax                                       // 0x00629cee    33c0
                         mov               ecx, 0x00000040                                // 0x00629cf0    b940000000
                         {disp8} lea       edi, dword ptr [esp + 0x1c]                    // 0x00629cf5    8d7c241c
                         rep stosd                                                        // 0x00629cf9    f3ab
                         mov               ecx, 0x00000040                                // 0x00629cfb    b940000000
                         {disp32} lea      edi, dword ptr [esp + 0x0000011c]              // 0x00629d00    8dbc241c010000
                         rep stosd                                                        // 0x00629d07    f3ab
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a954]         // 0x00629d09    a15409d400
                         add               eax, 0x24                                      // 0x00629d0e    83c024
                         push              eax                                            // 0x00629d11    50
                         xor.s             edi, edi                                       // 0x00629d12    33ff
                         call              _wcslen                                        // 0x00629d14    e849c71900
                         add               esp, 0x04                                      // 0x00629d19    83c404
                         test              eax, eax                                       // 0x00629d1c    85c0
                         {disp8} jbe       _jmp_addr_0x00629d64                           // 0x00629d1e    7644
                         mov               ebx, 0x00000024                                // 0x00629d20    bb24000000
                         {disp8} lea       ecx, dword ptr [esp + 0x1c]                    // 0x00629d25    8d4c241c
                         {disp8} lea       esi, dword ptr [esp + 0x1c]                    // 0x00629d29    8d74241c
                         sub.s             ebx, ecx                                       // 0x00629d2d    2bd9
_jmp_addr_0x00629d2f:    {disp32} mov      eax, dword ptr [data_bytes + 0x37a954]         // 0x00629d2f    a15409d400
                         lea               edx, dword ptr [ebx + esi * 0x1]               // 0x00629d34    8d1433
                         xor.s             ecx, ecx                                       // 0x00629d37    33c9
                         mov               cx, word ptr [edx + eax * 0x1]                 // 0x00629d39    668b0c02
                         push              ecx                                            // 0x00629d3d    51
                         call              _towlower                                      // 0x00629d3e    e817fa1900
                         {disp32} mov      edx, dword ptr [data_bytes + 0x37a954]         // 0x00629d43    8b155409d400
                         add               edx, 0x24                                      // 0x00629d49    83c224
                         mov               word ptr [esi], ax                             // 0x00629d4c    668906
                         push              edx                                            // 0x00629d4f    52
                         inc               edi                                            // 0x00629d50    47
                         add               esi, 0x02                                      // 0x00629d51    83c602
                         call              _wcslen                                        // 0x00629d54    e809c71900
                         add               esp, 0x08                                      // 0x00629d59    83c408
                         cmp.s             edi, eax                                       // 0x00629d5c    3bf8
                         .byte             0x72, 0xcf// {disp8} jb _jmp_addr_0x00629d2f   // 0x00629d5e    72cf
                         {disp8} mov       ebx, dword ptr [esp + 0x18]                    // 0x00629d60    8b5c2418
_jmp_addr_0x00629d64:    {disp8} mov       eax, dword ptr [ebp + 0x00]                    // 0x00629d64    8b4500
                         push              eax                                            // 0x00629d67    50
                         xor.s             esi, esi                                       // 0x00629d68    33f6
                         call              _wcslen                                        // 0x00629d6a    e8f3c61900
                         add               esp, 0x04                                      // 0x00629d6f    83c404
                         test              eax, eax                                       // 0x00629d72    85c0
                         {disp8} jbe       _jmp_addr_0x00629d9c                           // 0x00629d74    7626
_jmp_addr_0x00629d76:    {disp8} mov       eax, dword ptr [ebp + 0x00]                    // 0x00629d76    8b4500
                         mov               ax, word ptr [eax + esi * 0x2]                 // 0x00629d79    668b0470
                         push              eax                                            // 0x00629d7d    50
                         call              _towlower                                      // 0x00629d7e    e8d7f91900
                         {disp32} mov      word ptr [esp + esi * 0x2 + 0x00000120], ax    // 0x00629d83    6689847420010000
                         {disp8} mov       eax, dword ptr [ebp + 0x00]                    // 0x00629d8b    8b4500
                         push              eax                                            // 0x00629d8e    50
                         inc               esi                                            // 0x00629d8f    46
                         call              _wcslen                                        // 0x00629d90    e8cdc61900
                         add               esp, 0x08                                      // 0x00629d95    83c408
                         cmp.s             esi, eax                                       // 0x00629d98    3bf0
                         .byte             0x72, 0xda// {disp8} jb _jmp_addr_0x00629d76   // 0x00629d9a    72da
_jmp_addr_0x00629d9c:    {disp8} lea       ecx, dword ptr [esp + 0x1c]                    // 0x00629d9c    8d4c241c
                         push              ecx                                            // 0x00629da0    51
                         {disp32} lea      edx, dword ptr [esp + 0x00000120]              // 0x00629da1    8d942420010000
                         push              edx                                            // 0x00629da8    52
                         call              _wcsstr                                        // 0x00629da9    e81fe41900
                         add               esp, 0x08                                      // 0x00629dae    83c408
                         test              eax, eax                                       // 0x00629db1    85c0
                         {disp32} je       _jmp_addr_0x00629ee5                           // 0x00629db3    0f842c010000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000019eb  // 0x00629db9    813dac7cd100eb190000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x00629dc3    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x00629dcf                           // 0x00629dc8    7605
                         add               eax, 0x00013704                                // 0x00629dca    0504370100
_jmp_addr_0x00629dcf:    {disp8} mov       esi, dword ptr [ebx + 0x28]                    // 0x00629dcf    8b7328
                         {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x00629dd2    8b4808
                         {disp32} mov      edx, dword ptr [esi + 0x00000250]              // 0x00629dd5    8b9650020000
                         push              ecx                                            // 0x00629ddb    51
                         push              edx                                            // 0x00629ddc    52
                         mov.s             ecx, esi                                       // 0x00629ddd    8bce
                         call              @InsertString__9SetupListFiPw@16               // 0x00629ddf    e88c10deff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000250]              // 0x00629de4    8b8e50020000
                         {disp8} lea       eax, dword ptr [ecx + -0x01]                   // 0x00629dea    8d41ff
                         test              eax, eax                                       // 0x00629ded    85c0
                         {disp8} jl        _jmp_addr_0x00629e02                           // 0x00629def    7c11
                         cmp.s             eax, ecx                                       // 0x00629df1    3bc1
                         {disp8} jge       _jmp_addr_0x00629e02                           // 0x00629df3    7d0d
                         {disp32} mov      ecx, dword ptr [esi + 0x00000268]              // 0x00629df5    8b8e68020000
                         mov               dword ptr [ecx + eax * 0x4], 0x00000000        // 0x00629dfb    c7048100000000
_jmp_addr_0x00629e02:    {disp8} mov       eax, dword ptr [ebx + 0x28]                    // 0x00629e02    8b4328
                         {disp32} mov      edx, dword ptr [eax + 0x00000250]              // 0x00629e05    8b9050020000
                         {disp32} mov      eax, dword ptr [eax + 0x00000258]              // 0x00629e0b    8b8058020000
                         shl               edx, 9                                         // 0x00629e11    c1e209
                         {disp32} lea      ecx, dword ptr [edx + eax * 0x1 + -0x00000200] // 0x00629e14    8d8c0200feffff
                         push              ecx                                            // 0x00629e1b    51
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                    // 0x00629e1c    8b4d00
                         call              _jmp_addr_0x00626790                           // 0x00629e1f    e86cc9ffff
                         {disp8} mov       ecx, dword ptr [ebx + 0x28]                    // 0x00629e24    8b4b28
                         {disp32} mov      eax, dword ptr [ecx + 0x00000250]              // 0x00629e27    8b8150020000
                         dec               eax                                            // 0x00629e2d    48
                         {disp32} js       _jmp_addr_0x00629ee5                           // 0x00629e2e    0f88b1000000
                         cmp               eax, dword ptr [ecx + 0x00000250]              // 0x00629e34    3b8150020000
                         {disp32} jge      _jmp_addr_0x00629ee5                           // 0x00629e3a    0f8da5000000
                         {disp32} mov      edx, dword ptr [ecx + 0x00000264]              // 0x00629e40    8b9164020000
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                    // 0x00629e46    8b4d00
                         mov               dword ptr [edx + eax * 0x4], ecx               // 0x00629e49    890c82
                         {disp32} jmp      _jmp_addr_0x00629ee5                           // 0x00629e4c    e994000000
_jmp_addr_0x00629e51:    cmp               dword ptr [data_bytes + 0x351cac], 0x000019eb  // 0x00629e51    813dac7cd100eb190000
                         {disp8} ja        _jmp_addr_0x00629e64                           // 0x00629e5b    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x00629e5d    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00629e70                           // 0x00629e62    eb0c
_jmp_addr_0x00629e64:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]         // 0x00629e64    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013704]              // 0x00629e6a    8d8204370100
_jmp_addr_0x00629e70:    {disp8} mov       esi, dword ptr [ebx + 0x28]                    // 0x00629e70    8b7328
                         {disp8} mov       eax, dword ptr [eax + 0x08]                    // 0x00629e73    8b4008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000250]              // 0x00629e76    8b8e50020000
                         push              eax                                            // 0x00629e7c    50
                         push              ecx                                            // 0x00629e7d    51
                         mov.s             ecx, esi                                       // 0x00629e7e    8bce
                         call              @InsertString__9SetupListFiPw@16               // 0x00629e80    e8eb0fdeff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000250]              // 0x00629e85    8b8e50020000
                         {disp8} lea       eax, dword ptr [ecx + -0x01]                   // 0x00629e8b    8d41ff
                         test              eax, eax                                       // 0x00629e8e    85c0
                         {disp8} jl        _jmp_addr_0x00629ea3                           // 0x00629e90    7c11
                         cmp.s             eax, ecx                                       // 0x00629e92    3bc1
                         {disp8} jge       _jmp_addr_0x00629ea3                           // 0x00629e94    7d0d
                         {disp32} mov      edx, dword ptr [esi + 0x00000268]              // 0x00629e96    8b9668020000
                         mov               dword ptr [edx + eax * 0x4], 0x00000000        // 0x00629e9c    c7048200000000
_jmp_addr_0x00629ea3:    {disp8} mov       eax, dword ptr [ebx + 0x28]                    // 0x00629ea3    8b4328
                         {disp32} mov      ecx, dword ptr [eax + 0x00000250]              // 0x00629ea6    8b8850020000
                         {disp32} mov      edx, dword ptr [eax + 0x00000258]              // 0x00629eac    8b9058020000
                         shl               ecx, 9                                         // 0x00629eb2    c1e109
                         {disp32} lea      eax, dword ptr [ecx + edx * 0x1 + -0x00000200] // 0x00629eb5    8d841100feffff
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                    // 0x00629ebc    8b4d00
                         push              eax                                            // 0x00629ebf    50
                         call              _jmp_addr_0x00626790                           // 0x00629ec0    e8cbc8ffff
                         {disp8} mov       ecx, dword ptr [ebx + 0x28]                    // 0x00629ec5    8b4b28
                         {disp32} mov      eax, dword ptr [ecx + 0x00000250]              // 0x00629ec8    8b8150020000
                         dec               eax                                            // 0x00629ece    48
                         {disp8} js        _jmp_addr_0x00629ee5                           // 0x00629ecf    7814
                         cmp               eax, dword ptr [ecx + 0x00000250]              // 0x00629ed1    3b8150020000
                         {disp8} jge       _jmp_addr_0x00629ee5                           // 0x00629ed7    7d0c
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000264]              // 0x00629ed9    8b8964020000
                         {disp8} mov       edx, dword ptr [ebp + 0x00]                    // 0x00629edf    8b5500
                         mov               dword ptr [ecx + eax * 0x4], edx               // 0x00629ee2    891481
_jmp_addr_0x00629ee5:    {disp8} mov       ebp, dword ptr [ebp + 0x04]                    // 0x00629ee5    8b6d04
                         test              ebp, ebp                                       // 0x00629ee8    85ed
                         {disp32} jne      _jmp_addr_0x00629cc2                           // 0x00629eea    0f85d2fdffff
                         {disp8} mov       edi, dword ptr [esp + 0x10]                    // 0x00629ef0    8b7c2410
_jmp_addr_0x00629ef4:    {disp8} mov       ecx, dword ptr [ebx + 0x28]                    // 0x00629ef4    8b4b28
                         call              ?UpdateHeights@SetupList@@QAEXXZ               // 0x00629ef7    e8f40bdeff
                         {disp8} mov       eax, dword ptr [ebx + 0x28]                    // 0x00629efc    8b4328
                         {disp32} mov      ecx, dword ptr [eax + 0x00000250]              // 0x00629eff    8b8850020000
                         xor.s             esi, esi                                       // 0x00629f05    33f6
                         test              ecx, ecx                                       // 0x00629f07    85c9
                         {disp8} jle       _jmp_addr_0x00629f34                           // 0x00629f09    7e29
_jmp_addr_0x00629f0b:    {disp32} mov      ecx, dword ptr [eax + 0x00000264]              // 0x00629f0b    8b8864020000
                         cmp               dword ptr [ecx + esi * 0x4], edi               // 0x00629f11    393cb1
                         {disp8} jne       _jmp_addr_0x00629f26                           // 0x00629f14    7510
                         {disp32} mov      dword ptr [eax + 0x00000248], esi              // 0x00629f16    89b048020000
                         {disp8} mov       ecx, dword ptr [ebx + 0x28]                    // 0x00629f1c    8b4b28
                         push              0x0                                            // 0x00629f1f    6a00
                         call              @AutoScroll__9SetupListFb@9                    // 0x00629f21    e8aafeddff
_jmp_addr_0x00629f26:    {disp8} mov       eax, dword ptr [ebx + 0x28]                    // 0x00629f26    8b4328
                         {disp32} mov      ecx, dword ptr [eax + 0x00000250]              // 0x00629f29    8b8850020000
                         inc               esi                                            // 0x00629f2f    46
                         cmp.s             esi, ecx                                       // 0x00629f30    3bf1
                         {disp8} jl        _jmp_addr_0x00629f0b                           // 0x00629f32    7cd7
_jmp_addr_0x00629f34:    test              edi, edi                                       // 0x00629f34    85ff
                         {disp8} jne       _jmp_addr_0x00629f4a                           // 0x00629f36    7512
                         {disp8} fld       dword ptr [esp + 0x14]                         // 0x00629f38    d9442414
                         call              _jmp_addr_0x007a1400                           // 0x00629f3c    e8bf741700
                         {disp8} mov       edx, dword ptr [ebx + 0x28]                    // 0x00629f41    8b5328
                         {disp32} mov      dword ptr [edx + 0x0000027c], eax              // 0x00629f44    89827c020000
_jmp_addr_0x00629f4a:    {disp8} mov       ebx, dword ptr [ebx + 0x28]                    // 0x00629f4a    8b5b28
                         {disp32} mov      eax, dword ptr [ebx + 0x0000027c]              // 0x00629f4d    8b837c020000
                         test              eax, eax                                       // 0x00629f53    85c0
                         {disp8} jle       _jmp_addr_0x00629f65                           // 0x00629f55    7e0e
                         {disp32} mov      ecx, dword ptr [ebx + 0x00000278]              // 0x00629f57    8b8b78020000
                         cmp.s             eax, ecx                                       // 0x00629f5d    3bc1
                         {disp8} jl        _jmp_addr_0x00629f67                           // 0x00629f5f    7c06
                         mov.s             eax, ecx                                       // 0x00629f61    8bc1
                         {disp8} jmp       _jmp_addr_0x00629f67                           // 0x00629f63    eb02
_jmp_addr_0x00629f65:    xor.s             eax, eax                                       // 0x00629f65    33c0
_jmp_addr_0x00629f67:    {disp32} mov      dword ptr [ebx + 0x0000027c], eax              // 0x00629f67    89837c020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a958]         // 0x00629f6d    a15809d400
                         cmp               dword ptr [eax + 0x00000248], -0x01            // 0x00629f72    83b848020000ff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a95c]         // 0x00629f79    8b0d5c09d400
                         mov.s             esi, ecx                                       // 0x00629f7f    8bf1
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]              // 0x00629f81    8b8650020000
                         {disp32} jne      _jmp_addr_0x0062a015                           // 0x00629f87    0f8588000000
                         test              eax, eax                                       // 0x00629f8d    85c0
                         {disp8} jle       _jmp_addr_0x00629faa                           // 0x00629f8f    7e19
_jmp_addr_0x00629f91:    dec               eax                                            // 0x00629f91    48
                         push              eax                                            // 0x00629f92    50
                         mov.s             ecx, esi                                       // 0x00629f93    8bce
                         call              @DeleteString__9SetupListFi@12                 // 0x00629f95    e8c60ddeff
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]              // 0x00629f9a    8b8650020000
                         test              eax, eax                                       // 0x00629fa0    85c0
                         {disp8} jg        _jmp_addr_0x00629f91                           // 0x00629fa2    7fed
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a95c]         // 0x00629fa4    8b0d5c09d400
_jmp_addr_0x00629faa:    mov               edx, dword ptr [ecx]                           // 0x00629faa    8b11
                         mov               ebx, 0x00000001                                // 0x00629fac    bb01000000
                         push              ebx                                            // 0x00629fb1    53
                         call              dword ptr [edx + 8]                            // 0x00629fb2    ff5208
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a970]         // 0x00629fb5    8b0d7009d400
                         mov               eax, dword ptr [ecx]                           // 0x00629fbb    8b01
                         push              ebx                                            // 0x00629fbd    53
                         call              dword ptr [eax + 8]                            // 0x00629fbe    ff5008
                         {disp32} mov      esi, dword ptr [data_bytes + 0x37a950]         // 0x00629fc1    8b355009d400
                         push              0x000000ff                                     // 0x00629fc7    68ff000000
                         {disp8} lea       edi, dword ptr [esi + 0x24]                    // 0x00629fcc    8d7e24
                         push              0x00c4cd30                                     // 0x00629fcf    6830cdc400
                         push              edi                                            // 0x00629fd4    57
                         call              _wcsncpy                                       // 0x00629fd5    e84bc41900
                         xor.s             ebp, ebp                                       // 0x00629fda    33ed
                         push              edi                                            // 0x00629fdc    57
                         {disp32} mov      word ptr [esi + 0x00000222], bp                // 0x00629fdd    6689ae22020000
                         call              _wcslen                                        // 0x00629fe4    e879c41900
                         {disp32} mov      dword ptr [esi + 0x0000024c], eax              // 0x00629fe9    89864c020000
                         {disp32} mov      dword ptr [esi + 0x00000254], eax              // 0x00629fef    898654020000
                         {disp32} mov      dword ptr [esi + 0x00000250], eax              // 0x00629ff5    898650020000
                         {disp32} mov      dword ptr [esi + 0x00000258], ebp              // 0x00629ffb    89ae58020000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a944]         // 0x0062a001    8b0d4409d400
                         mov               edx, dword ptr [ecx]                           // 0x0062a007    8b11
                         add               esp, 0x10                                      // 0x0062a009    83c410
                         push              ebp                                            // 0x0062a00c    55
                         call              dword ptr [edx + 8]                            // 0x0062a00d    ff5208
                         {disp32} jmp      _jmp_addr_0x0062a0db                           // 0x0062a010    e9c6000000
_jmp_addr_0x0062a015:    test              eax, eax                                       // 0x0062a015    85c0
                         {disp8} jle       _jmp_addr_0x0062a032                           // 0x0062a017    7e19
_jmp_addr_0x0062a019:    dec               eax                                            // 0x0062a019    48
                         push              eax                                            // 0x0062a01a    50
                         mov.s             ecx, esi                                       // 0x0062a01b    8bce
                         call              @DeleteString__9SetupListFi@12                 // 0x0062a01d    e83e0ddeff
                         {disp32} mov      eax, dword ptr [esi + 0x00000250]              // 0x0062a022    8b8650020000
                         test              eax, eax                                       // 0x0062a028    85c0
                         {disp8} jg        _jmp_addr_0x0062a019                           // 0x0062a02a    7fed
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a95c]         // 0x0062a02c    8b0d5c09d400
_jmp_addr_0x0062a032:    mov               eax, dword ptr [ecx]                           // 0x0062a032    8b01
                         push              0x0                                            // 0x0062a034    6a00
                         call              dword ptr [eax + 8]                            // 0x0062a036    ff5008
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a970]         // 0x0062a039    8b0d7009d400
                         mov               edx, dword ptr [ecx]                           // 0x0062a03f    8b11
                         push              0x0                                            // 0x0062a041    6a00
                         call              dword ptr [edx + 8]                            // 0x0062a043    ff5208
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a944]         // 0x0062a046    8b0d4409d400
                         mov               eax, dword ptr [ecx]                           // 0x0062a04c    8b01
                         mov               ebx, 0x00000001                                // 0x0062a04e    bb01000000
                         push              ebx                                            // 0x0062a053    53
                         call              dword ptr [eax + 8]                            // 0x0062a054    ff5008
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a958]         // 0x0062a057    a15809d400
                         {disp32} mov      esi, dword ptr [eax + 0x00000248]              // 0x0062a05c    8bb048020000
                         {disp32} mov      eax, dword ptr [eax + 0x00000264]              // 0x0062a062    8b8064020000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x379a98]         // 0x0062a068    8b0d98fad300
                         mov               eax, dword ptr [eax + esi * 0x4]               // 0x0062a06e    8b04b0
                         mov               edx, dword ptr [ecx]                           // 0x0062a071    8b11
                         push              eax                                            // 0x0062a073    50
                         call              dword ptr [edx + 0x14]                         // 0x0062a074    ff5214
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a958]         // 0x0062a077    8b0d5809d400
                         {disp32} mov      eax, dword ptr [ecx + 0x00000248]              // 0x0062a07d    8b8148020000
                         test              eax, eax                                       // 0x0062a083    85c0
                         {disp8} jl        _jmp_addr_0x0062a09a                           // 0x0062a085    7c13
                         cmp               eax, dword ptr [ecx + 0x00000250]              // 0x0062a087    3b8150020000
                         {disp8} jge       _jmp_addr_0x0062a09a                           // 0x0062a08d    7d0b
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000264]              // 0x0062a08f    8b8964020000
                         mov               eax, dword ptr [ecx + eax * 0x4]               // 0x0062a095    8b0481
                         {disp8} jmp       _jmp_addr_0x0062a09c                           // 0x0062a098    eb02
_jmp_addr_0x0062a09a:    xor.s             eax, eax                                       // 0x0062a09a    33c0
_jmp_addr_0x0062a09c:    {disp32} mov      esi, dword ptr [data_bytes + 0x37a950]         // 0x0062a09c    8b355009d400
                         push              0x000000ff                                     // 0x0062a0a2    68ff000000
                         push              eax                                            // 0x0062a0a7    50
                         {disp8} lea       edi, dword ptr [esi + 0x24]                    // 0x0062a0a8    8d7e24
                         push              edi                                            // 0x0062a0ab    57
                         call              _wcsncpy                                       // 0x0062a0ac    e874c31900
                         xor.s             ebp, ebp                                       // 0x0062a0b1    33ed
                         push              edi                                            // 0x0062a0b3    57
                         {disp32} mov      word ptr [esi + 0x00000222], bp                // 0x0062a0b4    6689ae22020000
                         call              _wcslen                                        // 0x0062a0bb    e8a2c31900
                         add               esp, 0x10                                      // 0x0062a0c0    83c410
                         {disp32} mov      dword ptr [esi + 0x0000024c], eax              // 0x0062a0c3    89864c020000
                         {disp32} mov      dword ptr [esi + 0x00000254], eax              // 0x0062a0c9    898654020000
                         {disp32} mov      dword ptr [esi + 0x00000250], eax              // 0x0062a0cf    898650020000
                         {disp32} mov      dword ptr [esi + 0x00000258], ebp              // 0x0062a0d5    89ae58020000
_jmp_addr_0x0062a0db:    pop               edi                                            // 0x0062a0db    5f
                         pop               esi                                            // 0x0062a0dc    5e
                         pop               ebp                                            // 0x0062a0dd    5d
                         {disp32} mov      byte ptr [data_bytes + 0x37a990], bl           // 0x0062a0de    881d9009d400
                         {disp32} mov      byte ptr [data_bytes + 0x37a991], bl           // 0x0062a0e4    881d9109d400
                         pop               ebx                                            // 0x0062a0ea    5b
                         add               esp, 0x0000020c                                // 0x0062a0eb    81c40c020000
                         ret                                                              // 0x0062a0f1    c3
                         nop                                                              // 0x0062a0f2    90
                         nop                                                              // 0x0062a0f3    90
                         nop                                                              // 0x0062a0f4    90
                         nop                                                              // 0x0062a0f5    90
                         nop                                                              // 0x0062a0f6    90
                         nop                                                              // 0x0062a0f7    90
                         nop                                                              // 0x0062a0f8    90
                         nop                                                              // 0x0062a0f9    90
                         nop                                                              // 0x0062a0fa    90
                         nop                                                              // 0x0062a0fb    90
                         nop                                                              // 0x0062a0fc    90
                         nop                                                              // 0x0062a0fd    90
                         nop                                                              // 0x0062a0fe    90
                         nop                                                              // 0x0062a0ff    90
_jmp_addr_0x0062a100:    push              ebx                                            // 0x0062a100    53
                         push              ebp                                            // 0x0062a101    55
                         push              esi                                            // 0x0062a102    56
                         push              edi                                            // 0x0062a103    57
                         mov.s             edi, ecx                                       // 0x0062a104    8bf9
                         {disp8} mov       esi, dword ptr [edi + 0x50]                    // 0x0062a106    8b7750
                         test              esi, esi                                       // 0x0062a109    85f6
                         {disp32} je       _jmp_addr_0x0062a1cd                           // 0x0062a10b    0f84bc000000
                         {disp8} mov       ebx, dword ptr [esp + 0x18]                    // 0x0062a111    8b5c2418
                         {disp8} mov       ebp, dword ptr [esp + 0x14]                    // 0x0062a115    8b6c2414
_jmp_addr_0x0062a119:    mov               ecx, 0x00d40e20                                // 0x0062a119    b9200ed400
                         call              ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ // 0x0062a11e    e89d390000
                         test              al, al                                         // 0x0062a123    84c0
                         mov               eax, dword ptr [esi]                           // 0x0062a125    8b06
                         {disp8} je        _jmp_addr_0x0062a133                           // 0x0062a127    740a
                         cmp               dword ptr [eax + 0x0000049c], ebp              // 0x0062a129    39a89c040000
                         {disp8} je        _jmp_addr_0x0062a15b                           // 0x0062a12f    742a
                         {disp8} jmp       _jmp_addr_0x0062a146                           // 0x0062a131    eb13
_jmp_addr_0x0062a133:    push              0x00000100                                     // 0x0062a133    6800010000
                         push              eax                                            // 0x0062a138    50
                         push              ebx                                            // 0x0062a139    53
                         call              __wcsnicmp                                     // 0x0062a13a    e86cbb2700
                         add               esp, 0x0c                                      // 0x0062a13f    83c40c
                         test              eax, eax                                       // 0x0062a142    85c0
                         {disp8} je        _jmp_addr_0x0062a183                           // 0x0062a144    743d
_jmp_addr_0x0062a146:    {disp8} mov       esi, dword ptr [esi + 0x04]                    // 0x0062a146    8b7604
                         test              esi, esi                                       // 0x0062a149    85f6
                         {disp8} jne       _jmp_addr_0x0062a119                           // 0x0062a14b    75cc
                         mov.s             ecx, edi                                       // 0x0062a14d    8bcf
                         call              ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ// 0x0062a14f    e8fcfaffff
                         pop               edi                                            // 0x0062a154    5f
                         pop               esi                                            // 0x0062a155    5e
                         pop               ebp                                            // 0x0062a156    5d
                         pop               ebx                                            // 0x0062a157    5b
                         ret               0x0008                                         // 0x0062a158    c20800
_jmp_addr_0x0062a15b:    {disp8} mov       edx, dword ptr [edi + 0x50]                    // 0x0062a15b    8b5750
                         mov               esi, dword ptr [esi]                           // 0x0062a15e    8b36
                         mov.s             eax, edx                                       // 0x0062a160    8bc2
                         xor.s             ecx, ecx                                       // 0x0062a162    33c9
                         test              eax, eax                                       // 0x0062a164    85c0
                         {disp8} je        _jmp_addr_0x0062a1cd                           // 0x0062a166    7465
_jmp_addr_0x0062a168:    cmp               dword ptr [eax], esi                           // 0x0062a168    3930
                         {disp8} je        _jmp_addr_0x0062a1ab                           // 0x0062a16a    743f
                         mov.s             ecx, eax                                       // 0x0062a16c    8bc8
                         {disp8} mov       eax, dword ptr [eax + 0x04]                    // 0x0062a16e    8b4004
                         test              eax, eax                                       // 0x0062a171    85c0
                         {disp8} jne       _jmp_addr_0x0062a168                           // 0x0062a173    75f3
                         mov.s             ecx, edi                                       // 0x0062a175    8bcf
                         call              ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ// 0x0062a177    e8d4faffff
                         pop               edi                                            // 0x0062a17c    5f
                         pop               esi                                            // 0x0062a17d    5e
                         pop               ebp                                            // 0x0062a17e    5d
                         pop               ebx                                            // 0x0062a17f    5b
                         ret               0x0008                                         // 0x0062a180    c20800
_jmp_addr_0x0062a183:    {disp8} mov       edx, dword ptr [edi + 0x50]                    // 0x0062a183    8b5750
                         mov               esi, dword ptr [esi]                           // 0x0062a186    8b36
                         mov.s             eax, edx                                       // 0x0062a188    8bc2
                         xor.s             ecx, ecx                                       // 0x0062a18a    33c9
                         test              eax, eax                                       // 0x0062a18c    85c0
                         {disp8} je        _jmp_addr_0x0062a1cd                           // 0x0062a18e    743d
_jmp_addr_0x0062a190:    cmp               dword ptr [eax], esi                           // 0x0062a190    3930
                         {disp8} je        _jmp_addr_0x0062a1ab                           // 0x0062a192    7417
                         mov.s             ecx, eax                                       // 0x0062a194    8bc8
                         {disp8} mov       eax, dword ptr [eax + 0x04]                    // 0x0062a196    8b4004
                         test              eax, eax                                       // 0x0062a199    85c0
                         {disp8} jne       _jmp_addr_0x0062a190                           // 0x0062a19b    75f3
                         mov.s             ecx, edi                                       // 0x0062a19d    8bcf
                         call              ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ// 0x0062a19f    e8acfaffff
                         pop               edi                                            // 0x0062a1a4    5f
                         pop               esi                                            // 0x0062a1a5    5e
                         pop               ebp                                            // 0x0062a1a6    5d
                         pop               ebx                                            // 0x0062a1a7    5b
                         ret               0x0008                                         // 0x0062a1a8    c20800
_jmp_addr_0x0062a1ab:    test              ecx, ecx                                       // 0x0062a1ab    85c9
                         {disp8} jne       _jmp_addr_0x0062a1b7                           // 0x0062a1ad    7508
                         {disp8} mov       ecx, dword ptr [edx + 0x04]                    // 0x0062a1af    8b4a04
                         {disp8} mov       dword ptr [edi + 0x50], ecx                    // 0x0062a1b2    894f50
                         {disp8} jmp       _jmp_addr_0x0062a1bd                           // 0x0062a1b5    eb06
_jmp_addr_0x0062a1b7:    {disp8} mov       edx, dword ptr [eax + 0x04]                    // 0x0062a1b7    8b5004
                         {disp8} mov       dword ptr [ecx + 0x04], edx                    // 0x0062a1ba    895104
_jmp_addr_0x0062a1bd:    push              eax                                            // 0x0062a1bd    50
                         call              ??3@YAXPAX@Z                                   // 0x0062a1be    e8d54c1800
                         {disp8} mov       eax, dword ptr [edi + 0x54]                    // 0x0062a1c3    8b4754
                         add               esp, 0x04                                      // 0x0062a1c6    83c404
                         dec               eax                                            // 0x0062a1c9    48
                         {disp8} mov       dword ptr [edi + 0x54], eax                    // 0x0062a1ca    894754
_jmp_addr_0x0062a1cd:    mov.s             ecx, edi                                       // 0x0062a1cd    8bcf
                         call              ?RefreshChannelList@MPFEChannelSelector@@QAEXXZ// 0x0062a1cf    e87cfaffff
                         pop               edi                                            // 0x0062a1d4    5f
                         pop               esi                                            // 0x0062a1d5    5e
                         pop               ebp                                            // 0x0062a1d6    5d
                         pop               ebx                                            // 0x0062a1d7    5b
                         ret               0x0008                                         // 0x0062a1d8    c20800
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                           // 0x0062a1db    e81976ddff
                         push              esi                                            // 0x0062a1e0    56
                         {disp8} mov       esi, dword ptr [ecx + 0x50]                    // 0x0062a1e1    8b7150
                         test              esi, esi                                       // 0x0062a1e4    85f6
                         push              edi                                            // 0x0062a1e6    57
                         {disp8} je        _jmp_addr_0x0062a209                           // 0x0062a1e7    7420
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                    // 0x0062a1e9    8b7c240c
_jmp_addr_0x0062a1ed:    mov               eax, dword ptr [esi]                           // 0x0062a1ed    8b06
                         push              0x00000200                                     // 0x0062a1ef    6800020000
                         push              eax                                            // 0x0062a1f4    50
                         push              edi                                            // 0x0062a1f5    57
                         call              __wcsnicmp                                     // 0x0062a1f6    e8b0ba2700
                         add               esp, 0x0c                                      // 0x0062a1fb    83c40c
                         test              eax, eax                                       // 0x0062a1fe    85c0
                         {disp8} je        _jmp_addr_0x0062a210                           // 0x0062a200    740e
                         {disp8} mov       esi, dword ptr [esi + 0x04]                    // 0x0062a202    8b7604
                         test              esi, esi                                       // 0x0062a205    85f6
                         {disp8} jne       _jmp_addr_0x0062a1ed                           // 0x0062a207    75e4
_jmp_addr_0x0062a209:    pop               edi                                            // 0x0062a209    5f
                         xor.s             al, al                                         // 0x0062a20a    32c0
                         pop               esi                                            // 0x0062a20c    5e
                         ret               0x0004                                         // 0x0062a20d    c20400
_jmp_addr_0x0062a210:    pop               edi                                            // 0x0062a210    5f
                         mov               al, 0x01                                       // 0x0062a211    b001
                         pop               esi                                            // 0x0062a213    5e
                         ret               0x0004                                         // 0x0062a214    c20400
                         nop                                                              // 0x0062a217    90
                         nop                                                              // 0x0062a218    90
                         nop                                                              // 0x0062a219    90
                         nop                                                              // 0x0062a21a    90
                         nop                                                              // 0x0062a21b    90
                         nop                                                              // 0x0062a21c    90
                         nop                                                              // 0x0062a21d    90
                         nop                                                              // 0x0062a21e    90
                         nop                                                              // 0x0062a21f    90
_jmp_addr_0x0062a220:    push              esi                                            // 0x0062a220    56
                         {disp8} mov       esi, dword ptr [ecx + 0x50]                    // 0x0062a221    8b7150
                         test              esi, esi                                       // 0x0062a224    85f6
                         push              edi                                            // 0x0062a226    57
                         {disp8} je        _jmp_addr_0x0062a249                           // 0x0062a227    7420
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                    // 0x0062a229    8b7c240c
_jmp_addr_0x0062a22d:    mov               eax, dword ptr [esi]                           // 0x0062a22d    8b06
                         push              0x00000200                                     // 0x0062a22f    6800020000
                         push              eax                                            // 0x0062a234    50
                         push              edi                                            // 0x0062a235    57
                         call              __wcsnicmp                                     // 0x0062a236    e870ba2700
                         add               esp, 0x0c                                      // 0x0062a23b    83c40c
                         test              eax, eax                                       // 0x0062a23e    85c0
                         {disp8} je        _jmp_addr_0x0062a250                           // 0x0062a240    740e
                         {disp8} mov       esi, dword ptr [esi + 0x04]                    // 0x0062a242    8b7604
                         test              esi, esi                                       // 0x0062a245    85f6
                         {disp8} jne       _jmp_addr_0x0062a22d                           // 0x0062a247    75e4
_jmp_addr_0x0062a249:    pop               edi                                            // 0x0062a249    5f
                         xor.s             eax, eax                                       // 0x0062a24a    33c0
                         pop               esi                                            // 0x0062a24c    5e
                         ret               0x0004                                         // 0x0062a24d    c20400
_jmp_addr_0x0062a250:    mov               eax, dword ptr [esi]                           // 0x0062a250    8b06
                         pop               edi                                            // 0x0062a252    5f
                         pop               esi                                            // 0x0062a253    5e
                         ret               0x0004                                         // 0x0062a254    c20400
                         nop                                                              // 0x0062a257    90
                         nop                                                              // 0x0062a258    90
                         nop                                                              // 0x0062a259    90
                         nop                                                              // 0x0062a25a    90
                         nop                                                              // 0x0062a25b    90
                         nop                                                              // 0x0062a25c    90
                         nop                                                              // 0x0062a25d    90
                         nop                                                              // 0x0062a25e    90
                         nop                                                              // 0x0062a25f    90
                         {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x0062a260    8b442404
                         push              esi                                            // 0x0062a264    56
                         push              edi                                            // 0x0062a265    57
                         mov.s             esi, ecx                                       // 0x0062a266    8bf1
                         push              eax                                            // 0x0062a268    50
                         call              _jmp_addr_0x0062a220                           // 0x0062a269    e8b2ffffff
                         {disp8} mov       esi, dword ptr [esi + 0x28]                    // 0x0062a26e    8b7628
                         {disp32} mov      edx, dword ptr [esi + 0x00000250]              // 0x0062a271    8b9650020000
                         xor.s             ecx, ecx                                       // 0x0062a277    33c9
                         test              edx, edx                                       // 0x0062a279    85d2
                         {disp8} jle       _jmp_addr_0x0062a2b6                           // 0x0062a27b    7e39
                         {disp32} mov      edi, dword ptr [esi + 0x00000264]              // 0x0062a27d    8bbe64020000
_jmp_addr_0x0062a283:    cmp               dword ptr [edi], eax                           // 0x0062a283    3907
                         {disp8} je        _jmp_addr_0x0062a294                           // 0x0062a285    740d
                         inc               ecx                                            // 0x0062a287    41
                         add               edi, 0x04                                      // 0x0062a288    83c704
                         cmp.s             ecx, edx                                       // 0x0062a28b    3bca
                         {disp8} jl        _jmp_addr_0x0062a283                           // 0x0062a28d    7cf4
                         pop               edi                                            // 0x0062a28f    5f
                         pop               esi                                            // 0x0062a290    5e
                         ret               0x0004                                         // 0x0062a291    c20400
_jmp_addr_0x0062a294:    {disp32} mov      dword ptr [esi + 0x00000248], ecx              // 0x0062a294    898e48020000
                         {disp32} mov      al, byte ptr [data_bytes + 0x37a991]           // 0x0062a29a    a09109d400
                         test              al, al                                         // 0x0062a29f    84c0
                         {disp8} jne       _jmp_addr_0x0062a2af                           // 0x0062a2a1    750c
                         push              0x0                                            // 0x0062a2a3    6a00
                         push              0x0                                            // 0x0062a2a5    6a00
                         call              _jmp_addr_0x00628c00                           // 0x0062a2a7    e854e9ffff
                         add               esp, 0x08                                      // 0x0062a2ac    83c408
_jmp_addr_0x0062a2af:    {disp32} mov      byte ptr [data_bytes + 0x37a991], 0x01         // 0x0062a2af    c6059109d40001
_jmp_addr_0x0062a2b6:    pop               edi                                            // 0x0062a2b6    5f
                         pop               esi                                            // 0x0062a2b7    5e
                         ret               0x0004                                         // 0x0062a2b8    c20400
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                           // 0x0062a2bb    e83975ddff
_globl_ct_0x0062a2c0:    call              _jmp_addr_0x0062a2d0                           // 0x0062a2c0    e80b000000
                         {disp32} jmp      _jmp_addr_0x0062a2e0                           // 0x0062a2c5    e916000000
                         nop                                                              // 0x0062a2ca    90
                         nop                                                              // 0x0062a2cb    90
                         nop                                                              // 0x0062a2cc    90
                         nop                                                              // 0x0062a2cd    90
                         nop                                                              // 0x0062a2ce    90
                         nop                                                              // 0x0062a2cf    90
_jmp_addr_0x0062a2d0:    mov               ecx, 0x00d408d8                                // 0x0062a2d0    b9d808d400
                         {disp32} jmp      _jmp_addr_0x0062a310                           // 0x0062a2d5    e936000000
                         nop                                                              // 0x0062a2da    90
                         nop                                                              // 0x0062a2db    90
                         nop                                                              // 0x0062a2dc    90
                         nop                                                              // 0x0062a2dd    90
                         nop                                                              // 0x0062a2de    90
                         nop                                                              // 0x0062a2df    90
_jmp_addr_0x0062a2e0:    push              0x0062a2f0                                     // 0x0062a2e0    68f0a26200
                         call              _atexit                                        // 0x0062a2e5    e8a7b41900
                         pop               ecx                                            // 0x0062a2ea    59
                         ret                                                              // 0x0062a2eb    c3
                         nop                                                              // 0x0062a2ec    90
                         nop                                                              // 0x0062a2ed    90
                         nop                                                              // 0x0062a2ee    90
                         nop                                                              // 0x0062a2ef    90
                         {disp32} mov      cl, byte ptr [data_bytes + 0x37a8d0]           // 0x0062a2f0    8a0dd008d400
                         mov               al, 0x01                                       // 0x0062a2f6    b001
                         test              al, cl                                         // 0x0062a2f8    84c8
                         {disp8} jne       _jmp_addr_0x0062a30e                           // 0x0062a2fa    7512
                         or.s              cl, al                                         // 0x0062a2fc    0ac8
                         {disp32} mov      byte ptr [data_bytes + 0x37a8d0], cl           // 0x0062a2fe    880dd008d400
                         mov               ecx, 0x00d408d8                                // 0x0062a304    b9d808d400
                         {disp32} jmp      _jmp_addr_0x0062a350                           // 0x0062a309    e942000000
_jmp_addr_0x0062a30e:    ret                                                              // 0x0062a30e    c3
                         nop                                                              // 0x0062a30f    90
_jmp_addr_0x0062a310:    push              esi                                            // 0x0062a310    56
                         mov.s             esi, ecx                                       // 0x0062a311    8bf1
                         call              ??0DialogBoxBase@@QAE@XZ                       // 0x0062a313    e88890eeff
                         {disp8} lea       ecx, dword ptr [esi + 0x40]                    // 0x0062a318    8d4e40
                         call              ??0MPFELoginDatabase@@QAE@XZ                   // 0x0062a31b    e8306d0000
                         push              0x0062ab10                                     // 0x0062a320    6810ab6200
                         push              0x000001f4                                     // 0x0062a325    68f4010000
                         push              0x0000030c                                     // 0x0062a32a    680c030000
                         mov.s             ecx, esi                                       // 0x0062a32f    8bce
                         mov               dword ptr [esi], 0x009307a8                    // 0x0062a331    c706a8079300
                         call              ?Init@MPFECreateGame@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z                           // 0x0062a337    e8f4020000
                         {disp8} mov       eax, dword ptr [esi + 0x04]                    // 0x0062a33c    8b4604
                         {disp32} mov      dword ptr [eax + 0x00000098], 0x00000001       // 0x0062a33f    c7809800000001000000
                         mov.s             eax, esi                                       // 0x0062a349    8bc6
                         pop               esi                                            // 0x0062a34b    5e
                         ret                                                              // 0x0062a34c    c3
                         nop                                                              // 0x0062a34d    90
                         nop                                                              // 0x0062a34e    90
                         nop                                                              // 0x0062a34f    90
_jmp_addr_0x0062a350:    push              esi                                            // 0x0062a350    56
                         mov.s             esi, ecx                                       // 0x0062a351    8bf1
                         {disp8} lea       ecx, dword ptr [esi + 0x40]                    // 0x0062a353    8d4e40
                         mov               dword ptr [esi], 0x009307a8                    // 0x0062a356    c706a8079300
                         call              _jmp_addr_0x00631070                           // 0x0062a35c    e80f6d0000
                         mov.s             ecx, esi                                       // 0x0062a361    8bce
                         call              _jmp_addr_0x005133c0                           // 0x0062a363    e85890eeff
                         pop               esi                                            // 0x0062a368    5e
                         ret                                                              // 0x0062a369    c3
                         nop                                                              // 0x0062a36a    90
                         nop                                                              // 0x0062a36b    90
                         nop                                                              // 0x0062a36c    90
                         nop                                                              // 0x0062a36d    90
                         nop                                                              // 0x0062a36e    90
                         nop                                                              // 0x0062a36f    90
_jmp_addr_0x0062a370:    {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]         // 0x0062a370    a1ac7cd100
                         push              ebx                                            // 0x0062a375    53
                         push              ebp                                            // 0x0062a376    55
                         push              esi                                            // 0x0062a377    56
                         cmp               eax, 0x00000d7a                                // 0x0062a378    3d7a0d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x0062a37d    a1a87cd100
                         push              edi                                            // 0x0062a382    57
                         mov.s             esi, ecx                                       // 0x0062a383    8bf1
                         {disp8} jbe       _jmp_addr_0x0062a38c                           // 0x0062a385    7605
                         add               eax, 0x0000a1b8                                // 0x0062a387    05b8a10000
_jmp_addr_0x0062a38c:    {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x0062a38c    8b4808
                         {disp8} mov       edx, dword ptr [esi + 0x10]                    // 0x0062a38f    8b5610
                         push              ecx                                            // 0x0062a392    51
                         add               edx, 0x24                                      // 0x0062a393    83c224
                         push              edx                                            // 0x0062a396    52
                         call              _wcscpy                                        // 0x0062a397    e81abc1900
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]         // 0x0062a39c    a1ac7cd100
                         add               esp, 0x08                                      // 0x0062a3a1    83c408
                         cmp               eax, 0x00001a4e                                // 0x0062a3a4    3d4e1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x0062a3a9    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0062a3b5                           // 0x0062a3ae    7605
                         add               eax, 0x00013ba8                                // 0x0062a3b0    05a83b0100
_jmp_addr_0x0062a3b5:    {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x0062a3b5    8b4808
                         {disp8} mov       edx, dword ptr [esi + 0x14]                    // 0x0062a3b8    8b5614
                         push              ecx                                            // 0x0062a3bb    51
                         add               edx, 0x24                                      // 0x0062a3bc    83c224
                         push              edx                                            // 0x0062a3bf    52
                         call              _wcscpy                                        // 0x0062a3c0    e8f1bb1900
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]         // 0x0062a3c5    a1ac7cd100
                         add               esp, 0x08                                      // 0x0062a3ca    83c408
                         cmp               eax, 0x00001a3d                                // 0x0062a3cd    3d3d1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x0062a3d2    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0062a3de                           // 0x0062a3d7    7605
                         add               eax, 0x00013adc                                // 0x0062a3d9    05dc3a0100
_jmp_addr_0x0062a3de:    {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x0062a3de    8b4808
                         {disp8} mov       edx, dword ptr [esi + 0x24]                    // 0x0062a3e1    8b5624
                         push              ecx                                            // 0x0062a3e4    51
                         add               edx, 0x24                                      // 0x0062a3e5    83c224
                         push              edx                                            // 0x0062a3e8    52
                         call              _wcscpy                                        // 0x0062a3e9    e8c8bb1900
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]         // 0x0062a3ee    a1ac7cd100
                         add               esp, 0x08                                      // 0x0062a3f3    83c408
                         cmp               eax, 0x00001a5d                                // 0x0062a3f6    3d5d1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x0062a3fb    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0062a407                           // 0x0062a400    7605
                         add               eax, 0x00013c5c                                // 0x0062a402    055c3c0100
_jmp_addr_0x0062a407:    {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x0062a407    8b4808
                         {disp8} mov       edx, dword ptr [esi + 0x2c]                    // 0x0062a40a    8b562c
                         push              ecx                                            // 0x0062a40d    51
                         add               edx, 0x24                                      // 0x0062a40e    83c224
                         push              edx                                            // 0x0062a411    52
                         call              _wcscpy                                        // 0x0062a412    e89fbb1900
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]         // 0x0062a417    a1ac7cd100
                         add               esp, 0x08                                      // 0x0062a41c    83c408
                         cmp               eax, 0x000018ee                                // 0x0062a41f    3dee180000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x0062a424    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0062a430                           // 0x0062a429    7605
                         add               eax, 0x00012b28                                // 0x0062a42b    05282b0100
_jmp_addr_0x0062a430:    {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x0062a430    8b4808
                         {disp8} mov       edx, dword ptr [esi + 0x28]                    // 0x0062a433    8b5628
                         push              ecx                                            // 0x0062a436    51
                         add               edx, 0x24                                      // 0x0062a437    83c224
                         push              edx                                            // 0x0062a43a    52
                         call              _wcscpy                                        // 0x0062a43b    e876bb1900
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]         // 0x0062a440    a1ac7cd100
                         add               esp, 0x08                                      // 0x0062a445    83c408
                         cmp               eax, 0x000006b4                                // 0x0062a448    3db4060000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]         // 0x0062a44d    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0062a459                           // 0x0062a452    7605
                         add               eax, 0x00005070                                // 0x0062a454    0570500000
_jmp_addr_0x0062a459:    {disp8} mov       ecx, dword ptr [eax + 0x08]                    // 0x0062a459    8b4808
                         {disp8} mov       edx, dword ptr [esi + 0x34]                    // 0x0062a45c    8b5634
                         push              ecx                                            // 0x0062a45f    51
                         add               edx, 0x24                                      // 0x0062a460    83c224
                         push              edx                                            // 0x0062a463    52
                         call              _wcscpy                                        // 0x0062a464    e84dbb1900
                         {disp8} mov       eax, dword ptr [esi + 0x18]                    // 0x0062a469    8b4618
                         add               eax, 0x24                                      // 0x0062a46c    83c024
                         push              0x00c4cd30                                     // 0x0062a46f    6830cdc400
                         push              eax                                            // 0x0062a474    50
                         call              _wcscpy                                        // 0x0062a475    e83cbb1900
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca4]         // 0x0062a47a    a1a47cd100
                         add               esp, 0x10                                      // 0x0062a47f    83c410
                         cmp               eax, 0x03                                      // 0x0062a482    83f803
                         {disp8} ja        _jmp_addr_0x0062a48e                           // 0x0062a485    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca0]         // 0x0062a487    a1a07cd100
                         {disp8} jmp       _jmp_addr_0x0062a497                           // 0x0062a48c    eb09
_jmp_addr_0x0062a48e:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca0]         // 0x0062a48e    8b0da07cd100
                         {disp8} lea       eax, dword ptr [ecx + 0x24]                    // 0x0062a494    8d4124
_jmp_addr_0x0062a497:    {disp8} mov       edx, dword ptr [eax + 0x08]                    // 0x0062a497    8b5008
                         {disp8} mov       eax, dword ptr [esi + 0x30]                    // 0x0062a49a    8b4630
                         push              edx                                            // 0x0062a49d    52
                         add               eax, 0x24                                      // 0x0062a49e    83c024
                         push              eax                                            // 0x0062a4a1    50
                         call              _wcscpy                                        // 0x0062a4a2    e80fbb1900
                         {disp8} mov       ecx, dword ptr [esi + 0x1c]                    // 0x0062a4a7    8b4e1c
                         {disp8} mov       dword ptr [esi + 0x4c], 0x00000008             // 0x0062a4aa    c7464c08000000
                         push              0x00bec7a4                                     // 0x0062a4b1    68a4c7be00
                         {disp32} mov      byte ptr [ecx + 0x00000260], 0x01              // 0x0062a4b6    c6816002000001
                         call              ?Exists@LHOSFile@@SAIPAD@Z                     // 0x0062a4bd    e8de211900
                         {disp8} mov       ecx, dword ptr [esi + 0x34]                    // 0x0062a4c2    8b4e34
                         mov               edx, dword ptr [ecx]                           // 0x0062a4c5    8b11
                         add               esp, 0x0c                                      // 0x0062a4c7    83c40c
                         test              eax, eax                                       // 0x0062a4ca    85c0
                         {disp8} jne       _jmp_addr_0x0062a4d9                           // 0x0062a4cc    750b
                         xor.s             ebp, ebp                                       // 0x0062a4ce    33ed
                         push              ebp                                            // 0x0062a4d0    55
                         call              dword ptr [edx + 8]                            // 0x0062a4d1    ff5208
                         {disp8} mov       eax, dword ptr [esi + 0x34]                    // 0x0062a4d4    8b4634
                         {disp8} jmp       _jmp_addr_0x0062a4e3                           // 0x0062a4d7    eb0a
_jmp_addr_0x0062a4d9:    push              0x1                                            // 0x0062a4d9    6a01
                         call              dword ptr [edx + 8]                            // 0x0062a4db    ff5208
                         {disp8} mov       eax, dword ptr [esi + 0x34]                    // 0x0062a4de    8b4634
                         xor.s             ebp, ebp                                       // 0x0062a4e1    33ed
_jmp_addr_0x0062a4e3:    {disp32} mov      dword ptr [eax + 0x00000248], ebp              // 0x0062a4e3    89a848020000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37a950]         // 0x0062a4e9    8b0d5009d400
                         {disp8} mov       edi, dword ptr [esi + 0x18]                    // 0x0062a4ef    8b7e18
                         push              0x000000ff                                     // 0x0062a4f2    68ff000000
                         add               ecx, 0x24                                      // 0x0062a4f7    83c124
                         push              ecx                                            // 0x0062a4fa    51
                         {disp8} lea       ebx, dword ptr [edi + 0x24]                    // 0x0062a4fb    8d5f24
                         push              ebx                                            // 0x0062a4fe    53
                         call              _wcsncpy                                       // 0x0062a4ff    e821bf1900
                         push              ebx                                            // 0x0062a504    53
                         {disp32} mov      word ptr [edi + 0x00000222], bp                // 0x0062a505    6689af22020000
                         call              _wcslen                                        // 0x0062a50c    e851bf1900
                         {disp32} mov      dword ptr [edi + 0x0000024c], eax              // 0x0062a511    89874c020000
                         {disp32} mov      dword ptr [edi + 0x00000254], eax              // 0x0062a517    898754020000
                         {disp32} mov      dword ptr [edi + 0x00000250], eax              // 0x0062a51d    898750020000
                         {disp32} mov      dword ptr [edi + 0x00000258], ebp              // 0x0062a523    89af58020000
                         {disp32} mov      edx, dword ptr [data_bytes + 0x37a954]         // 0x0062a529    8b155409d400
                         {disp8} mov       edi, dword ptr [esi + 0x1c]                    // 0x0062a52f    8b7e1c
                         push              0x000000ff                                     // 0x0062a532    68ff000000
                         add               edx, 0x24                                      // 0x0062a537    83c224
                         push              edx                                            // 0x0062a53a    52
                         {disp8} lea       ebx, dword ptr [edi + 0x24]                    // 0x0062a53b    8d5f24
                         push              ebx                                            // 0x0062a53e    53
                         call              _wcsncpy                                       // 0x0062a53f    e8e1be1900
                         push              ebx                                            // 0x0062a544    53
                         {disp32} mov      word ptr [edi + 0x00000222], bp                // 0x0062a545    6689af22020000
                         call              _wcslen                                        // 0x0062a54c    e811bf1900
                         {disp32} mov      dword ptr [edi + 0x0000024c], eax              // 0x0062a551    89874c020000
                         {disp32} mov      dword ptr [edi + 0x00000254], eax              // 0x0062a557    898754020000
                         {disp32} mov      dword ptr [edi + 0x00000250], eax              // 0x0062a55d    898750020000
                         {disp32} mov      dword ptr [edi + 0x00000258], ebp              // 0x0062a563    89af58020000
                         {disp8} mov       eax, dword ptr [esi + 0x18]                    // 0x0062a569    8b4618
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                    // 0x0062a56c    8b4e04
                         add               esp, 0x20                                      // 0x0062a56f    83c420
                         push              eax                                            // 0x0062a572    50
                         call              @SetFocusControl__8SetupBoxFP12SetupControl@12 // 0x0062a573    e8c8ebddff
                         pop               edi                                            // 0x0062a578    5f
                         pop               esi                                            // 0x0062a579    5e
                         pop               ebp                                            // 0x0062a57a    5d
                         pop               ebx                                            // 0x0062a57b    5b
                         ret                                                              // 0x0062a57c    c3
                         nop                                                              // 0x0062a57d    90
                         nop                                                              // 0x0062a57e    90
                         nop                                                              // 0x0062a57f    90
_jmp_addr_0x0062a580:    push              ebx                                            // 0x0062a580    53
                         push              ebp                                            // 0x0062a581    55
                         push              esi                                            // 0x0062a582    56
                         push              edi                                            // 0x0062a583    57
                         mov.s             edi, ecx                                       // 0x0062a584    8bf9
                         {disp8} mov       eax, dword ptr [edi + 0x18]                    // 0x0062a586    8b4718
                         xor.s             ebp, ebp                                       // 0x0062a589    33ed
                         {disp32} mov      word ptr [eax + 0x000000a4], bp                // 0x0062a58b    6689a8a4000000
                         {disp8} mov       ecx, dword ptr [edi + 0x1c]                    // 0x0062a592    8b4f1c
                         {disp8} mov       word ptr [ecx + 0x44], bp                      // 0x0062a595    66896944
                         {disp8} mov       edx, dword ptr [edi + 0x18]                    // 0x0062a599    8b5718
                         {disp32} mov      esi, dword ptr [data_bytes + 0x37a950]         // 0x0062a59c    8b355009d400
                         push              0x000000ff                                     // 0x0062a5a2    68ff000000
                         add               edx, 0x24                                      // 0x0062a5a7    83c224
                         push              edx                                            // 0x0062a5aa    52
                         {disp8} lea       ebx, dword ptr [esi + 0x24]                    // 0x0062a5ab    8d5e24
                         push              ebx                                            // 0x0062a5ae    53
                         call              _wcsncpy                                       // 0x0062a5af    e871be1900
                         push              ebx                                            // 0x0062a5b4    53
                         {disp32} mov      word ptr [esi + 0x00000222], bp                // 0x0062a5b5    6689ae22020000
                         call              _wcslen                                        // 0x0062a5bc    e8a1be1900
                         {disp32} mov      dword ptr [esi + 0x0000024c], eax              // 0x0062a5c1    89864c020000
                         {disp32} mov      dword ptr [esi + 0x00000254], eax              // 0x0062a5c7    898654020000
                         {disp32} mov      dword ptr [esi + 0x00000250], eax              // 0x0062a5cd    898650020000
                         {disp32} mov      dword ptr [esi + 0x00000258], ebp              // 0x0062a5d3    89ae58020000
                         {disp8} mov       eax, dword ptr [edi + 0x1c]                    // 0x0062a5d9    8b471c
                         {disp32} mov      esi, dword ptr [data_bytes + 0x37a954]         // 0x0062a5dc    8b355409d400
                         push              0x000000ff                                     // 0x0062a5e2    68ff000000
                         add               eax, 0x24                                      // 0x0062a5e7    83c024
                         push              eax                                            // 0x0062a5ea    50
                         {disp8} lea       ebx, dword ptr [esi + 0x24]                    // 0x0062a5eb    8d5e24
                         push              ebx                                            // 0x0062a5ee    53
                         call              _wcsncpy                                       // 0x0062a5ef    e831be1900
                         push              ebx                                            // 0x0062a5f4    53
                         {disp32} mov      word ptr [esi + 0x00000222], bp                // 0x0062a5f5    6689ae22020000
                         call              _wcslen                                        // 0x0062a5fc    e861be1900
                         add               esp, 0x20                                      // 0x0062a601    83c420
                         pop               edi                                            // 0x0062a604    5f
                         {disp32} mov      dword ptr [esi + 0x00000258], ebp              // 0x0062a605    89ae58020000
                         {disp32} mov      dword ptr [esi + 0x0000024c], eax              // 0x0062a60b    89864c020000
                         {disp32} mov      dword ptr [esi + 0x00000254], eax              // 0x0062a611    898654020000
                         {disp32} mov      dword ptr [esi + 0x00000250], eax              // 0x0062a617    898650020000
                         pop               esi                                            // 0x0062a61d    5e
                         pop               ebp                                            // 0x0062a61e    5d
                         {disp32} mov      byte ptr [data_bytes + 0x37a990], 0x01         // 0x0062a61f    c6059009d40001
                         pop               ebx                                            // 0x0062a626    5b
                         ret                                                              // 0x0062a627    c3
                         nop                                                              // 0x0062a628    90
                         nop                                                              // 0x0062a629    90
                         nop                                                              // 0x0062a62a    90
                         nop                                                              // 0x0062a62b    90
                         nop                                                              // 0x0062a62c    90
                         nop                                                              // 0x0062a62d    90
                         nop                                                              // 0x0062a62e    90
                         nop                                                              // 0x0062a62f    90
?Init@MPFECreateGame@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                    // 0x0062a630    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                    // 0x0062a634    8b542404
                         push              ebx                                            // 0x0062a638    53
                         push              esi                                            // 0x0062a639    56
                         push              edi                                            // 0x0062a63a    57
                         mov.s             esi, ecx                                       // 0x0062a63b    8bf1
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                    // 0x0062a63d    8b4c2414
                         push              eax                                            // 0x0062a641    50
                         push              ecx                                            // 0x0062a642    51
                         push              edx                                            // 0x0062a643    52
                         mov.s             ecx, esi                                       // 0x0062a644    8bce
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                           // 0x0062a646    e8b58deeff
                         push              0x00000323                                     // 0x0062a64b    6823030000
                         push              0x00bf4a64                                     // 0x0062a650    68644abf00
                         push              0x0000025c                                     // 0x0062a655    685c020000
                         call              ___nw__FUl                                     // 0x0062a65a    e831111b00
                         xor.s             ebx, ebx                                       // 0x0062a65f    33db
                         add               esp, 0x0c                                      // 0x0062a661    83c40c
                         cmp.s             eax, ebx                                       // 0x0062a664    3bc3
                         {disp8} je        _jmp_addr_0x0062a684                           // 0x0062a666    741c
                         push              0x2                                            // 0x0062a668    6a02
                         push              ebx                                            // 0x0062a66a    53
                         push              0x28                                           // 0x0062a66b    6a28
                         push              0x00c4cd30                                     // 0x0062a66d    6830cdc400
                         push              0x00000212                                     // 0x0062a672    6812020000
                         push              0x1e                                           // 0x0062a677    6a1e
                         push              0x1                                            // 0x0062a679    6a01
                         mov.s             ecx, eax                                       // 0x0062a67b    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36            // 0x0062a67d    e8de2bdeff
                         {disp8} jmp       _jmp_addr_0x0062a686                           // 0x0062a682    eb02
_jmp_addr_0x0062a684:    xor.s             eax, eax                                       // 0x0062a684    33c0
_jmp_addr_0x0062a686:    push              0x00000325                                     // 0x0062a686    6825030000
                         push              0x00bf4a64                                     // 0x0062a68b    68644abf00
                         {disp8} mov       dword ptr [esi + 0x10], eax                    // 0x0062a690    894610
                         push              0x0000025c                                     // 0x0062a693    685c020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x0062aac0       // 0x0062a698    c78038020000c0aa6200
                         call              ___nw__FUl                                     // 0x0062a6a2    e8e9101b00
                         add               esp, 0x0c                                      // 0x0062a6a7    83c40c
                         cmp.s             eax, ebx                                       // 0x0062a6aa    3bc3
                         {disp8} je        _jmp_addr_0x0062a6ce                           // 0x0062a6ac    7420
                         push              0x3                                            // 0x0062a6ae    6a03
                         push              0x1                                            // 0x0062a6b0    6a01
                         push              0x28                                           // 0x0062a6b2    6a28
                         push              0x00c4cd30                                     // 0x0062a6b4    6830cdc400
                         push              0x00000212                                     // 0x0062a6b9    6812020000
                         push              0x000002da                                     // 0x0062a6be    68da020000
                         push              0x2                                            // 0x0062a6c3    6a02
                         mov.s             ecx, eax                                       // 0x0062a6c5    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36            // 0x0062a6c7    e8942bdeff
                         {disp8} jmp       _jmp_addr_0x0062a6d0                           // 0x0062a6cc    eb02
_jmp_addr_0x0062a6ce:    xor.s             eax, eax                                       // 0x0062a6ce    33c0
_jmp_addr_0x0062a6d0:    push              0x00000329                                     // 0x0062a6d0    6829030000
                         push              0x00bf4a64                                     // 0x0062a6d5    68644abf00
                         {disp8} mov       dword ptr [esi + 0x14], eax                    // 0x0062a6da    894614
                         push              0x00000244                                     // 0x0062a6dd    6844020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x0062aad0       // 0x0062a6e2    c78038020000d0aa6200
                         call              ___nw__FUl                                     // 0x0062a6ec    e89f101b00
                         mov.s             edi, eax                                       // 0x0062a6f1    8bf8
                         add               esp, 0x0c                                      // 0x0062a6f3    83c40c
                         cmp.s             edi, ebx                                       // 0x0062a6f6    3bfb
                         {disp8} je        _jmp_addr_0x0062a734                           // 0x0062a6f8    743a
                         push              0x00c4cd30                                     // 0x0062a6fa    6830cdc400
                         push              0x2d                                           // 0x0062a6ff    6a2d
                         push              0x000000c8                                     // 0x0062a701    68c8000000
                         push              0x0000012c                                     // 0x0062a706    682c010000
                         push              0x6e                                           // 0x0062a70b    6a6e
                         push              0x6                                            // 0x0062a70d    6a06
                         mov.s             ecx, edi                                       // 0x0062a70f    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z               // 0x0062a711    e83aebddff
                         mov               dword ptr [edi], 0x008ab5c0                    // 0x0062a716    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000002       // 0x0062a71c    c7873c02000002000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], bl                // 0x0062a726    889f2a020000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebx              // 0x0062a72c    899f40020000
                         {disp8} jmp       _jmp_addr_0x0062a736                           // 0x0062a732    eb02
_jmp_addr_0x0062a734:    xor.s             edi, edi                                       // 0x0062a734    33ff
_jmp_addr_0x0062a736:    {disp8} mov       dword ptr [esi + 0x28], edi                    // 0x0062a736    897e28
                         call              _jmp_addr_0x00407a20                           // 0x0062a739    e8e2d2ddff
                         {disp8} mov       ecx, dword ptr [esi + 0x28]                    // 0x0062a73e    8b4e28
                         push              0x0000032d                                     // 0x0062a741    682d030000
                         push              0x00bf4a64                                     // 0x0062a746    68644abf00
                         push              0x00000244                                     // 0x0062a74b    6844020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                    // 0x0062a750    894120
                         call              ___nw__FUl                                     // 0x0062a753    e838101b00
                         mov.s             edi, eax                                       // 0x0062a758    8bf8
                         add               esp, 0x0c                                      // 0x0062a75a    83c40c
                         cmp.s             edi, ebx                                       // 0x0062a75d    3bfb
                         {disp8} je        _jmp_addr_0x0062a79b                           // 0x0062a75f    743a
                         push              0x00c4cd30                                     // 0x0062a761    6830cdc400
                         push              0x2d                                           // 0x0062a766    6a2d
                         push              0x000000c8                                     // 0x0062a768    68c8000000
                         push              0x000000c8                                     // 0x0062a76d    68c8000000
                         push              0x6e                                           // 0x0062a772    6a6e
                         push              0x6                                            // 0x0062a774    6a06
                         mov.s             ecx, edi                                       // 0x0062a776    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z               // 0x0062a778    e8d3eaddff
                         mov               dword ptr [edi], 0x008ab5c0                    // 0x0062a77d    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000002       // 0x0062a783    c7873c02000002000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], bl                // 0x0062a78d    889f2a020000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebx              // 0x0062a793    899f40020000
                         {disp8} jmp       _jmp_addr_0x0062a79d                           // 0x0062a799    eb02
_jmp_addr_0x0062a79b:    xor.s             edi, edi                                       // 0x0062a79b    33ff
_jmp_addr_0x0062a79d:    {disp8} mov       dword ptr [esi + 0x2c], edi                    // 0x0062a79d    897e2c
                         call              _jmp_addr_0x00407a20                           // 0x0062a7a0    e87bd2ddff
                         {disp8} mov       edx, dword ptr [esi + 0x2c]                    // 0x0062a7a5    8b562c
                         push              0x00000330                                     // 0x0062a7a8    6830030000
                         push              0x00bf4a64                                     // 0x0062a7ad    68644abf00
                         push              0x00000244                                     // 0x0062a7b2    6844020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                    // 0x0062a7b7    894220
                         call              ___nw__FUl                                     // 0x0062a7ba    e8d10f1b00
                         mov.s             edi, eax                                       // 0x0062a7bf    8bf8
                         add               esp, 0x0c                                      // 0x0062a7c1    83c40c
                         cmp.s             edi, ebx                                       // 0x0062a7c4    3bfb
                         {disp8} je        _jmp_addr_0x0062a802                           // 0x0062a7c6    743a
                         push              0x00c4cd30                                     // 0x0062a7c8    6830cdc400
                         push              0x2d                                           // 0x0062a7cd    6a2d
                         push              0x000000c8                                     // 0x0062a7cf    68c8000000
                         push              0x00000190                                     // 0x0062a7d4    6890010000
                         push              0x6e                                           // 0x0062a7d9    6a6e
                         push              0xa                                            // 0x0062a7db    6a0a
                         mov.s             ecx, edi                                       // 0x0062a7dd    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z               // 0x0062a7df    e86ceaddff
                         mov               dword ptr [edi], 0x008ab5c0                    // 0x0062a7e4    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000002       // 0x0062a7ea    c7873c02000002000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], bl                // 0x0062a7f4    889f2a020000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebx              // 0x0062a7fa    899f40020000
                         {disp8} jmp       _jmp_addr_0x0062a804                           // 0x0062a800    eb02
_jmp_addr_0x0062a802:    xor.s             edi, edi                                       // 0x0062a802    33ff
_jmp_addr_0x0062a804:    {disp8} mov       dword ptr [esi + 0x30], edi                    // 0x0062a804    897e30
                         call              _jmp_addr_0x00407a20                           // 0x0062a807    e814d2ddff
                         {disp8} mov       ecx, dword ptr [esi + 0x30]                    // 0x0062a80c    8b4e30
                         push              0x00000334                                     // 0x0062a80f    6834030000
                         push              0x00bf4a64                                     // 0x0062a814    68644abf00
                         push              0x00000468                                     // 0x0062a819    6868040000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                    // 0x0062a81e    894120
                         call              ___nw__FUl                                     // 0x0062a821    e86a0f1b00
                         add               esp, 0x0c                                      // 0x0062a826    83c40c
                         cmp.s             eax, ebx                                       // 0x0062a829    3bc3
                         {disp8} je        _jmp_addr_0x0062a850                           // 0x0062a82b    7423
                         push              0x1                                            // 0x0062a82d    6a01
                         push              0x00c4cd30                                     // 0x0062a82f    6830cdc400
                         push              0x28                                           // 0x0062a834    6a28
                         push              0x000000e6                                     // 0x0062a836    68e6000000
                         push              0x000000c8                                     // 0x0062a83b    68c8000000
                         push              0x00000145                                     // 0x0062a840    6845010000
                         push              0x4                                            // 0x0062a845    6a04
                         mov.s             ecx, eax                                       // 0x0062a847    8bc8
                         call              @__ct__9SetupEditFiiiiiPwi@33                  // 0x0062a849    e8d219deff
                         {disp8} jmp       _jmp_addr_0x0062a852                           // 0x0062a84e    eb02
_jmp_addr_0x0062a850:    xor.s             eax, eax                                       // 0x0062a850    33c0
_jmp_addr_0x0062a852:    {disp8} mov       dword ptr [esi + 0x18], eax                    // 0x0062a852    894618
                         call              _GetMidTextSize__Fv                            // 0x0062a855    e8a6d1ddff
                         {disp8} mov       edx, dword ptr [esi + 0x18]                    // 0x0062a85a    8b5618
                         push              0x00000338                                     // 0x0062a85d    6838030000
                         push              0x00bf4a64                                     // 0x0062a862    68644abf00
                         push              0x00000468                                     // 0x0062a867    6868040000
                         {disp8} mov       dword ptr [edx + 0x20], eax                    // 0x0062a86c    894220
                         call              ___nw__FUl                                     // 0x0062a86f    e81c0f1b00
                         add               esp, 0x0c                                      // 0x0062a874    83c40c
                         cmp.s             eax, ebx                                       // 0x0062a877    3bc3
                         {disp8} je        _jmp_addr_0x0062a89e                           // 0x0062a879    7423
                         push              0x1                                            // 0x0062a87b    6a01
                         push              0x00c4cd30                                     // 0x0062a87d    6830cdc400
                         push              0x28                                           // 0x0062a882    6a28
                         push              0x000000e6                                     // 0x0062a884    68e6000000
                         push              0x0000012c                                     // 0x0062a889    682c010000
                         push              0x00000145                                     // 0x0062a88e    6845010000
                         push              0x4                                            // 0x0062a893    6a04
                         mov.s             ecx, eax                                       // 0x0062a895    8bc8
                         call              @__ct__9SetupEditFiiiiiPwi@33                  // 0x0062a897    e88419deff
                         {disp8} jmp       _jmp_addr_0x0062a8a0                           // 0x0062a89c    eb02
_jmp_addr_0x0062a89e:    xor.s             eax, eax                                       // 0x0062a89e    33c0
_jmp_addr_0x0062a8a0:    {disp8} mov       dword ptr [esi + 0x1c], eax                    // 0x0062a8a0    89461c
                         call              _GetMidTextSize__Fv                            // 0x0062a8a3    e858d1ddff
                         {disp8} mov       ecx, dword ptr [esi + 0x1c]                    // 0x0062a8a8    8b4e1c
                         push              0x0000033d                                     // 0x0062a8ab    683d030000
                         push              0x00bf4a64                                     // 0x0062a8b0    68644abf00
                         {disp8} mov       dword ptr [ecx + 0x20], eax                    // 0x0062a8b5    894120
                         push              0x00000244                                     // 0x0062a8b8    6844020000
                         {disp8} mov       dword ptr [esi + 0x4c], 0x00000008             // 0x0062a8bd    c7464c08000000
                         call              ___nw__FUl                                     // 0x0062a8c4    e8c70e1b00
                         mov.s             edi, eax                                       // 0x0062a8c9    8bf8
                         add               esp, 0x0c                                      // 0x0062a8cb    83c40c
                         cmp.s             edi, ebx                                       // 0x0062a8ce    3bfb
                         {disp8} je        _jmp_addr_0x0062a90c                           // 0x0062a8d0    743a
                         push              0x00bf4af8                                     // 0x0062a8d2    68f84abf00
                         push              0x28                                           // 0x0062a8d7    6a28
                         push              0x28                                           // 0x0062a8d9    6a28
                         push              0x00000190                                     // 0x0062a8db    6890010000
                         push              0x00000190                                     // 0x0062a8e0    6890010000
                         push              0x9                                            // 0x0062a8e5    6a09
                         mov.s             ecx, edi                                       // 0x0062a8e7    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z               // 0x0062a8e9    e862e9ddff
                         mov               dword ptr [edi], 0x008ab5c0                    // 0x0062a8ee    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000001       // 0x0062a8f4    c7873c02000001000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], bl                // 0x0062a8fe    889f2a020000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebx              // 0x0062a904    899f40020000
                         {disp8} jmp       _jmp_addr_0x0062a90e                           // 0x0062a90a    eb02
_jmp_addr_0x0062a90c:    xor.s             edi, edi                                       // 0x0062a90c    33ff
_jmp_addr_0x0062a90e:    {disp8} mov       dword ptr [esi + 0x20], edi                    // 0x0062a90e    897e20
                         call              _jmp_addr_0x00407a20                           // 0x0062a911    e80ad1ddff
                         {disp8} mov       edx, dword ptr [esi + 0x20]                    // 0x0062a916    8b5620
                         push              0x00000340                                     // 0x0062a919    6840030000
                         push              0x00bf4a64                                     // 0x0062a91e    68644abf00
                         push              0x0000025c                                     // 0x0062a923    685c020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                    // 0x0062a928    894220
                         call              ___nw__FUl                                     // 0x0062a92b    e8600e1b00
                         add               esp, 0x0c                                      // 0x0062a930    83c40c
                         cmp.s             eax, ebx                                       // 0x0062a933    3bc3
                         {disp8} je        _jmp_addr_0x0062a956                           // 0x0062a935    741f
                         push              0x2                                            // 0x0062a937    6a02
                         push              ebx                                            // 0x0062a939    53
                         push              0x28                                           // 0x0062a93a    6a28
                         push              0x00c4cd30                                     // 0x0062a93c    6830cdc400
                         push              0x00000190                                     // 0x0062a941    6890010000
                         push              0x0000015e                                     // 0x0062a946    685e010000
                         push              0xb                                            // 0x0062a94b    6a0b
                         mov.s             ecx, eax                                       // 0x0062a94d    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36            // 0x0062a94f    e80c29deff
                         {disp8} jmp       _jmp_addr_0x0062a958                           // 0x0062a954    eb02
_jmp_addr_0x0062a956:    xor.s             eax, eax                                       // 0x0062a956    33c0
_jmp_addr_0x0062a958:    push              0x00000343                                     // 0x0062a958    6843030000
                         push              0x00bf4a64                                     // 0x0062a95d    68644abf00
                         {disp8} mov       dword ptr [esi + 0x38], eax                    // 0x0062a962    894638
                         push              0x0000025c                                     // 0x0062a965    685c020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x0062aa80       // 0x0062a96a    c7803802000080aa6200
                         call              ___nw__FUl                                     // 0x0062a974    e8170e1b00
                         add               esp, 0x0c                                      // 0x0062a979    83c40c
                         cmp.s             eax, ebx                                       // 0x0062a97c    3bc3
                         {disp8} je        _jmp_addr_0x0062a9a0                           // 0x0062a97e    7420
                         push              0x3                                            // 0x0062a980    6a03
                         push              0x1                                            // 0x0062a982    6a01
                         push              0x28                                           // 0x0062a984    6a28
                         push              0x00c4cd30                                     // 0x0062a986    6830cdc400
                         push              0x00000190                                     // 0x0062a98b    6890010000
                         push              0x000001cc                                     // 0x0062a990    68cc010000
                         push              0xc                                            // 0x0062a995    6a0c
                         mov.s             ecx, eax                                       // 0x0062a997    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36            // 0x0062a999    e8c228deff
                         {disp8} jmp       _jmp_addr_0x0062a9a2                           // 0x0062a99e    eb02
_jmp_addr_0x0062a9a0:    xor.s             eax, eax                                       // 0x0062a9a0    33c0
_jmp_addr_0x0062a9a2:    push              0x00000349                                     // 0x0062a9a2    6849030000
                         push              0x00bf4a64                                     // 0x0062a9a7    68644abf00
                         {disp8} mov       dword ptr [esi + 0x3c], eax                    // 0x0062a9ac    89463c
                         push              0x00000260                                     // 0x0062a9af    6860020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x0062aaa0       // 0x0062a9b4    c78038020000a0aa6200
                         call              ___nw__FUl                                     // 0x0062a9be    e8cd0d1b00
                         add               esp, 0x0c                                      // 0x0062a9c3    83c40c
                         cmp.s             eax, ebx                                       // 0x0062a9c6    3bc3
                         {disp8} je        _jmp_addr_0x0062a9e8                           // 0x0062a9c8    741e
                         push              0x23                                           // 0x0062a9ca    6a23
                         push              0x00c4cd30                                     // 0x0062a9cc    6830cdc400
                         push              ebx                                            // 0x0062a9d1    53
                         push              ebx                                            // 0x0062a9d2    53
                         push              0x000001e0                                     // 0x0062a9d3    68e0010000
                         push              0x000001a7                                     // 0x0062a9d8    68a7010000
                         push              0x8                                            // 0x0062a9dd    6a08
                         mov.s             ecx, eax                                       // 0x0062a9df    8bc8
                         call              @__ct__13SetupCheckBoxFiiibiPwi@33             // 0x0062a9e1    e82a65deff
                         {disp8} jmp       _jmp_addr_0x0062a9ea                           // 0x0062a9e6    eb02
_jmp_addr_0x0062a9e8:    xor.s             eax, eax                                       // 0x0062a9e8    33c0
_jmp_addr_0x0062a9ea:    {disp8} mov       dword ptr [esi + 0x34], eax                    // 0x0062a9ea    894634
                         call              _GetMidTextSize__Fv                            // 0x0062a9ed    e80ed0ddff
                         {disp8} mov       ecx, dword ptr [esi + 0x34]                    // 0x0062a9f2    8b4e34
                         push              0x0000034c                                     // 0x0062a9f5    684c030000
                         push              0x00bf4a64                                     // 0x0062a9fa    68644abf00
                         push              0x00000244                                     // 0x0062a9ff    6844020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                    // 0x0062aa04    894120
                         call              ___nw__FUl                                     // 0x0062aa07    e8840d1b00
                         mov.s             edi, eax                                       // 0x0062aa0c    8bf8
                         add               esp, 0x0c                                      // 0x0062aa0e    83c40c
                         cmp.s             edi, ebx                                       // 0x0062aa11    3bfb
                         {disp8} je        _jmp_addr_0x0062aa5e                           // 0x0062aa13    7449
                         push              0x00c4cd30                                     // 0x0062aa15    6830cdc400
                         push              0x28                                           // 0x0062aa1a    6a28
                         push              0x000002d0                                     // 0x0062aa1c    68d0020000
                         push              0x46                                           // 0x0062aa21    6a46
                         push              0x28                                           // 0x0062aa23    6a28
                         push              0x3                                            // 0x0062aa25    6a03
                         mov.s             ecx, edi                                       // 0x0062aa27    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z               // 0x0062aa29    e822e8ddff
                         mov               dword ptr [edi], 0x008ab5c0                    // 0x0062aa2e    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], 0x00000001       // 0x0062aa34    c7873c02000001000000
                         {disp32} mov      byte ptr [edi + 0x0000022a], bl                // 0x0062aa3e    889f2a020000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebx              // 0x0062aa44    899f40020000
                         {disp8} mov       dword ptr [esi + 0x24], edi                    // 0x0062aa4a    897e24
                         call              _jmp_addr_0x00407a20                           // 0x0062aa4d    e8cecfddff
                         {disp8} mov       edx, dword ptr [esi + 0x24]                    // 0x0062aa52    8b5624
                         pop               edi                                            // 0x0062aa55    5f
                         pop               esi                                            // 0x0062aa56    5e
                         {disp8} mov       dword ptr [edx + 0x20], eax                    // 0x0062aa57    894220
                         pop               ebx                                            // 0x0062aa5a    5b
                         ret               0x000c                                         // 0x0062aa5b    c20c00
_jmp_addr_0x0062aa5e:    xor.s             edi, edi                                       // 0x0062aa5e    33ff
                         {disp8} mov       dword ptr [esi + 0x24], edi                    // 0x0062aa60    897e24
                         call              _jmp_addr_0x00407a20                           // 0x0062aa63    e8b8cfddff
                         {disp8} mov       edx, dword ptr [esi + 0x24]                    // 0x0062aa68    8b5624
                         pop               edi                                            // 0x0062aa6b    5f
                         pop               esi                                            // 0x0062aa6c    5e
                         {disp8} mov       dword ptr [edx + 0x20], eax                    // 0x0062aa6d    894220
                         pop               ebx                                            // 0x0062aa70    5b
                         ret               0x000c                                         // 0x0062aa71    c20c00
                         nop                                                              // 0x0062aa74    90
                         nop                                                              // 0x0062aa75    90
                         nop                                                              // 0x0062aa76    90
                         nop                                                              // 0x0062aa77    90
                         nop                                                              // 0x0062aa78    90
                         nop                                                              // 0x0062aa79    90
                         nop                                                              // 0x0062aa7a    90
                         nop                                                              // 0x0062aa7b    90
                         nop                                                              // 0x0062aa7c    90
                         nop                                                              // 0x0062aa7d    90
                         nop                                                              // 0x0062aa7e    90
                         nop                                                              // 0x0062aa7f    90
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a924]         // 0x0062aa80    a12409d400
                         cmp               eax, 0x02                                      // 0x0062aa85    83f802
                         {disp8} jbe       _jmp_addr_0x0062aa90                           // 0x0062aa88    7606
                         dec               eax                                            // 0x0062aa8a    48
                         {disp32} mov      dword ptr [data_bytes + 0x37a924], eax         // 0x0062aa8b    a32409d400
_jmp_addr_0x0062aa90:    ret                                                              // 0x0062aa90    c3
                         nop                                                              // 0x0062aa91    90
                         nop                                                              // 0x0062aa92    90
                         nop                                                              // 0x0062aa93    90
                         nop                                                              // 0x0062aa94    90
                         nop                                                              // 0x0062aa95    90
                         nop                                                              // 0x0062aa96    90
                         nop                                                              // 0x0062aa97    90
                         nop                                                              // 0x0062aa98    90
                         nop                                                              // 0x0062aa99    90
                         nop                                                              // 0x0062aa9a    90
                         nop                                                              // 0x0062aa9b    90
                         nop                                                              // 0x0062aa9c    90
                         nop                                                              // 0x0062aa9d    90
                         nop                                                              // 0x0062aa9e    90
                         nop                                                              // 0x0062aa9f    90
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a924]         // 0x0062aaa0    a12409d400
                         cmp               eax, 0x08                                      // 0x0062aaa5    83f808
                         {disp8} jae       _jmp_addr_0x0062aab0                           // 0x0062aaa8    7306
                         inc               eax                                            // 0x0062aaaa    40
                         {disp32} mov      dword ptr [data_bytes + 0x37a924], eax         // 0x0062aaab    a32409d400
_jmp_addr_0x0062aab0:    ret                                                              // 0x0062aab0    c3
                         nop                                                              // 0x0062aab1    90
                         nop                                                              // 0x0062aab2    90
                         nop                                                              // 0x0062aab3    90
                         nop                                                              // 0x0062aab4    90
                         nop                                                              // 0x0062aab5    90
                         nop                                                              // 0x0062aab6    90
                         nop                                                              // 0x0062aab7    90
                         nop                                                              // 0x0062aab8    90
                         nop                                                              // 0x0062aab9    90
                         nop                                                              // 0x0062aaba    90
                         nop                                                              // 0x0062aabb    90
                         nop                                                              // 0x0062aabc    90
                         nop                                                              // 0x0062aabd    90
                         nop                                                              // 0x0062aabe    90
                         nop                                                              // 0x0062aabf    90
                         mov               ecx, 0x00d408d8                                // 0x0062aac0    b9d808d400
                         call              _jmp_addr_0x0062a580                           // 0x0062aac5    e8b6faffff
                         {disp32} jmp      _jmp_addr_0x00513640                           // 0x0062aaca    e9718beeff
                         nop                                                              // 0x0062aacf    90
                         mov               ecx, 0x00d408d8                                // 0x0062aad0    b9d808d400
                         call              _jmp_addr_0x0062a580                           // 0x0062aad5    e8a6faffff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a90c]         // 0x0062aada    a10c09d400
                         {disp32} mov      byte ptr [data_bytes + 0x37a992], 0x01         // 0x0062aadf    c6059209d40001
                         {disp32} mov      ecx, dword ptr [eax + 0x00000248]              // 0x0062aae6    8b8848020000
                         test              ecx, ecx                                       // 0x0062aaec    85c9
                         setne             cl                                             // 0x0062aaee    0f95c1
                         {disp32} mov      byte ptr [data_bytes + 0x37a5fc], cl           // 0x0062aaf1    880dfc05d400
                         {disp32} jmp      _jmp_addr_0x00513640                           // 0x0062aaf7    e9448beeff
                         nop                                                              // 0x0062aafc    90
                         nop                                                              // 0x0062aafd    90
                         nop                                                              // 0x0062aafe    90
                         nop                                                              // 0x0062aaff    90
?Destroy@MPFECreateGame@@UAEXXZ:
                         ret                                                              // 0x0062ab00    c3
                         nop                                                              // 0x0062ab01    90
                         nop                                                              // 0x0062ab02    90
                         nop                                                              // 0x0062ab03    90
                         nop                                                              // 0x0062ab04    90
                         nop                                                              // 0x0062ab05    90
                         nop                                                              // 0x0062ab06    90
                         nop                                                              // 0x0062ab07    90
                         nop                                                              // 0x0062ab08    90
                         nop                                                              // 0x0062ab09    90
                         nop                                                              // 0x0062ab0a    90
                         nop                                                              // 0x0062ab0b    90
                         nop                                                              // 0x0062ab0c    90
                         nop                                                              // 0x0062ab0d    90
                         nop                                                              // 0x0062ab0e    90
                         nop                                                              // 0x0062ab0f    90
                         {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x0062ab10    8b442404
                         cmp               eax, 0x0d                                      // 0x0062ab14    83f80d
                         {disp32} ja       _jmp_addr_0x0062abd5                           // 0x0062ab17    0f87b8000000
                         xor.s             ecx, ecx                                       // 0x0062ab1d    33c9
                         {disp32} mov      cl, byte ptr [eax + 0x0062abec]                // 0x0062ab1f    8a88ecab6200
                         jmp               dword ptr [ecx*4 + 0x62abd8]                   // 0x0062ab25    ff248dd8ab6200
                         push              esi                                            // 0x0062ab2c    56
                         {disp32} mov      esi, dword ptr [data_bytes + 0x2078]           // 0x0062ab2d    8b3578809c00
                         push              0x1                                            // 0x0062ab33    6a01
                         push              0x1                                            // 0x0062ab35    6a01
                         mov.s             eax, esi                                       // 0x0062ab37    8bc6
                         cdq                                                              // 0x0062ab39    99
                         sub.s             eax, edx                                       // 0x0062ab3a    2bc2
                         push              0x00e0e0e0                                     // 0x0062ab3c    68e0e0e000
                         push              0x00e0e0e0                                     // 0x0062ab41    68e0e0e000
                         sar               eax, 1                                         // 0x0062ab46    d1f8
                         {disp32} mov      dword ptr [data_bytes + 0x2078], eax           // 0x0062ab48    a378809c00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a8fc]         // 0x0062ab4d    a1fc08d400
                         {disp8} mov       edx, dword ptr [eax + 0x14]                    // 0x0062ab52    8b5014
                         {disp8} mov       ecx, dword ptr [eax + 0x10]                    // 0x0062ab55    8b4810
                         push              0x00e0e0e0                                     // 0x0062ab58    68e0e0e000
                         push              0x00e0e0e0                                     // 0x0062ab5d    68e0e0e000
                         push              edx                                            // 0x0062ab62    52
                         {disp8} mov       edx, dword ptr [eax + 0x0c]                    // 0x0062ab63    8b500c
                         {disp8} mov       eax, dword ptr [eax + 0x08]                    // 0x0062ab66    8b4008
                         push              ecx                                            // 0x0062ab69    51
                         push              edx                                            // 0x0062ab6a    52
                         push              eax                                            // 0x0062ab6b    50
                         call              ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z           // 0x0062ab6c    e84f87deff
                         add               esp, 0x28                                      // 0x0062ab71    83c428
                         {disp32} mov      dword ptr [data_bytes + 0x2078], esi           // 0x0062ab74    893578809c00
                         pop               esi                                            // 0x0062ab7a    5e
                         ret               0x0014                                         // 0x0062ab7b    c21400
                         mov               ecx, 0x00d408d8                                // 0x0062ab7e    b9d808d400
                         call              _jmp_addr_0x0062a370                           // 0x0062ab83    e8e8f7ffff
                         ret               0x0014                                         // 0x0062ab88    c21400
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]                    // 0x0062ab8b    8b4c240c
                         {disp8} mov       eax, dword ptr [ecx + 0x18]                    // 0x0062ab8f    8b4118
                         test              eax, eax                                       // 0x0062ab92    85c0
                         {disp8} je        _jmp_addr_0x0062abd5                           // 0x0062ab94    743f
                         {disp32} mov      eax, dword ptr [ecx + 0x00000238]              // 0x0062ab96    8b8138020000
                         test              eax, eax                                       // 0x0062ab9c    85c0
                         {disp8} je        _jmp_addr_0x0062abd5                           // 0x0062ab9e    7435
                         push              ecx                                            // 0x0062aba0    51
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]                    // 0x0062aba1    8b4c240c
                         push              ecx                                            // 0x0062aba5    51
                         call              eax                                            // 0x0062aba6    ffd0
                         add               esp, 0x08                                      // 0x0062aba8    83c408
                         ret               0x0014                                         // 0x0062abab    c21400
                         {disp32} mov      edx, dword ptr [data_bytes + 0x37a924]         // 0x0062abae    8b152409d400
                         {disp32} mov      eax, dword ptr [data_bytes + 0x37a8f8]         // 0x0062abb4    a1f808d400
                         push              edx                                            // 0x0062abb9    52
                         add               eax, 0x24                                      // 0x0062abba    83c024
                         push              0x009c8208                                     // 0x0062abbd    6808829c00
                         push              eax                                            // 0x0062abc2    50
                         call              _swprintf                                      // 0x0062abc3    e8b7b81900
                         add               esp, 0x0c                                      // 0x0062abc8    83c40c
                         mov               ecx, 0x00d3f038                                // 0x0062abcb    b938f0d300
                         call              _jmp_addr_0x006239e0                           // 0x0062abd0    e80b8effff
_jmp_addr_0x0062abd5:    ret               0x0014                                         // 0x0062abd5    c21400

// Snippet: jmptbl, [0x0062abd8, 0x0062abec)
.byte 0xae, 0xab, 0x62, 0x00      // 0x0062abd8
.byte 0x8b, 0xab, 0x62, 0x00      // 0x0062abdc
.byte 0x7e, 0xab, 0x62, 0x00      // 0x0062abe0
.byte 0x2c, 0xab, 0x62, 0x00      // 0x0062abe4
.byte 0xd5, 0xab, 0x62, 0x00      // 0x0062abe8

// Snippet: ijmptbl, [0x0062abec, 0x0062abfa)
.byte 0x00, 0x01, 0x04, 0x04      // 0x0062abec
.byte 0x04, 0x04, 0x02, 0x04      // 0x0062abf0
.byte 0x04, 0x04, 0x04, 0x04      // 0x0062abf4
.byte 0x04, 0x03                  // 0x0062abf8

// Snippet: db, [0x0062abfa, 0x0062ac00)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0062abfa
.byte 0x90, 0x90                  // 0x0062abfe

