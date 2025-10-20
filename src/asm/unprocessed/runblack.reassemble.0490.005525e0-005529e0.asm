.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern _jmp_addr_0x005529e0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00635450
.extern ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z
.extern @GetPlayer3DColor__7GPlayerFv@12
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x00845d30

.globl _jmp_addr_0x005525e0
.globl ?GetTribe@GGame@@QAEPAVGTribeInfo@@W4TRIBE_TYPE@@@Z
.globl ?AddPlayerSparkles@GGame@@QAEXXZ

start_0x005525e0_0x005529e0:
// Snippet: asm, [0x005525e0, 0x005529cf)
_jmp_addr_0x005525e0:    push             esi                                     // 0x005525e0    56
                         mov.s            esi, ecx                                // 0x005525e1    8bf1
                         {disp32} mov     al, byte ptr [esi + 0x00005318]         // 0x005525e3    8a8618530000
                         test             al, al                                  // 0x005525e9    84c0
                         push             edi                                     // 0x005525eb    57
                         {disp32} lea     edi, dword ptr [esi + 0x00005318]       // 0x005525ec    8dbe18530000
                         {disp8} je       _jmp_addr_0x00552613                    // 0x005525f2    741f
                         xor.s            eax, eax                                // 0x005525f4    33c0
                         {disp32} mov     al, byte ptr [esi + 0x00005978]         // 0x005525f6    8a8678590000
                         {disp32} lea     ecx, dword ptr [esi + 0x00205b70]       // 0x005525fc    8d8e705b2000
                         push             eax                                     // 0x00552602    50
                         push             edi                                     // 0x00552603    57
                         call             _jmp_addr_0x00635450                    // 0x00552604    e8472e0e00
                         {disp32} mov     byte ptr [esi + 0x00005978], 0x01       // 0x00552609    c6867859000001
                         mov              byte ptr [edi], 0x00                    // 0x00552610    c60700
_jmp_addr_0x00552613:    pop              edi                                     // 0x00552613    5f
                         pop              esi                                     // 0x00552614    5e
                         ret                                                      // 0x00552615    c3
                         nop                                                      // 0x00552616    90
                         nop                                                      // 0x00552617    90
                         nop                                                      // 0x00552618    90
                         nop                                                      // 0x00552619    90
                         nop                                                      // 0x0055261a    90
                         nop                                                      // 0x0055261b    90
                         nop                                                      // 0x0055261c    90
                         nop                                                      // 0x0055261d    90
                         nop                                                      // 0x0055261e    90
                         nop                                                      // 0x0055261f    90

?GetTribe@GGame@@QAEPAVGTribeInfo@@W4TRIBE_TYPE@@@Z:
                         {disp8} mov      eax, dword ptr [esp + 0x04]             // 0x00552620    8b442404
                         {disp32} lea     ecx, dword ptr [eax * 0x8 + 0x00000000] // 0x00552624    8d0cc500000000
                         sub.s            ecx, eax                                // 0x0055262b    2bc8
                         {disp32} lea     eax, dword ptr [ecx * 0x4 + _GTribeInfo_ARRAY_00da57a8] // 0x0055262d    8d048da857da00
                         ret              0x0004                                  // 0x00552634    c20400
                         nop                                                      // 0x00552637    90
                         nop                                                      // 0x00552638    90
                         nop                                                      // 0x00552639    90
                         nop                                                      // 0x0055263a    90
                         nop                                                      // 0x0055263b    90
                         nop                                                      // 0x0055263c    90
                         nop                                                      // 0x0055263d    90
                         nop                                                      // 0x0055263e    90
                         nop                                                      // 0x0055263f    90

?AddPlayerSparkles@GGame@@QAEXXZ:
                         sub              esp, 0x20                               // 0x00552640    83ec20
                         {disp32} mov     eax, dword ptr [_game]                  // 0x00552643    a15c19d000
                         push             ebx                                     // 0x00552648    53
                         push             ebp                                     // 0x00552649    55
                         push             esi                                     // 0x0055264a    56
                         mov.s            esi, ecx                                // 0x0055264b    8bf1
                         {disp32} mov     ecx, dword ptr [eax + 0x00205a28]       // 0x0055264d    8b88285a2000
                         test             ecx, ecx                                // 0x00552653    85c9
                         push             edi                                     // 0x00552655    57
                         {disp8} mov      dword ptr [esp + 0x10], esi             // 0x00552656    89742410
                         {disp32} jne     _jmp_addr_0x005529c7                    // 0x0055265a    0f8567030000
                         mov.s            ecx, esi                                // 0x00552660    8bce
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ// 0x00552662    e8e9310000
                         cmp              dword ptr [eax + 0x44], 0x10            // 0x00552667    83784410
                         {disp32} je      _jmp_addr_0x005529c7                    // 0x0055266b    0f8456030000
                         push             0x0                                     // 0x00552671    6a00
                         mov.s            ecx, esi                                // 0x00552673    8bce
                         call             ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                    // 0x00552675    e826e2ffff
                         mov.s            ebp, eax                                // 0x0055267a    8be8
                         test             ebp, ebp                                // 0x0055267c    85ed
                         {disp32} je      _jmp_addr_0x005529c7                    // 0x0055267e    0f8443030000
_jmp_addr_0x00552684:    {disp32} mov     eax, dword ptr [ebp + 0x000008e0]       // 0x00552684    8b85e0080000
                         test             eax, eax                                // 0x0055268a    85c0
                         {disp32} je      _jmp_addr_0x005529b5                    // 0x0055268c    0f8423030000
                         cmp              eax, 0x02                               // 0x00552692    83f802
                         {disp8} jne      _jmp_addr_0x005526ab                    // 0x00552695    7514
                         {disp32} mov     ecx, dword ptr [ebp + 0x00000944]       // 0x00552697    8b8d44090000
                         {disp32} mov     eax, dword ptr [ecx + 0x000001b8]       // 0x0055269d    8b81b8010000
                         test             eax, eax                                // 0x005526a3    85c0
                         {disp32} je      _jmp_addr_0x005529b5                    // 0x005526a5    0f840a030000
_jmp_addr_0x005526ab:    push             0x0                                     // 0x005526ab    6a00
                         mov.s            ecx, ebp                                // 0x005526ad    8bcd
                         call             ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                    // 0x005526af    e80c840f00
                         mov.s            ebx, eax                                // 0x005526b4    8bd8
                         test             ebx, ebx                                // 0x005526b6    85db
                         {disp32} je      _jmp_addr_0x005529b5                    // 0x005526b8    0f84f7020000
_jmp_addr_0x005526be:    mov.s            ecx, esi                                // 0x005526be    8bce
                         call             ?MyInterface@GGame@@QAEPAVGInterface@@XZ// 0x005526c0    e88b310000
                         cmp              ebx, dword ptr [eax + 0x0000039c]       // 0x005526c5    3b989c030000
                         {disp32} je      _jmp_addr_0x0055299f                    // 0x005526cb    0f84ce020000
                         cmp              dword ptr [ebp + 0x000008e0], 0x01      // 0x005526d1    83bde008000001
                         {disp8} jne      _jmp_addr_0x005526ef                    // 0x005526d8    7515
                         mov.s            ecx, ebx                                // 0x005526da    8bcb
                         call             ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                    // 0x005526dc    e8cfa10800
                         {disp32} mov     ecx, dword ptr [eax + 0x000001bc]       // 0x005526e1    8b88bc010000
                         test             ecx, ecx                                // 0x005526e7    85c9
                         {disp32} je      _jmp_addr_0x0055299f                    // 0x005526e9    0f84b0020000
_jmp_addr_0x005526ef:    {disp32} mov     edx, dword ptr [ebx + 0x000000b0]       // 0x005526ef    8b93b0000000
                         {disp32} mov     ecx, dword ptr [ebx + 0x000000b8]       // 0x005526f5    8b8bb8000000
                         {disp32} mov     eax, dword ptr [ebx + 0x000000b4]       // 0x005526fb    8b83b4000000
                         {disp8} mov      dword ptr [esp + 0x18], edx             // 0x00552701    89542418
                         {disp8} lea      edx, dword ptr [esp + 0x14]             // 0x00552705    8d542414
                         {disp8} mov      dword ptr [esp + 0x20], ecx             // 0x00552709    894c2420
                         push             edx                                     // 0x0055270d    52
                         mov.s            ecx, ebp                                // 0x0055270e    8bcd
                         {disp8} mov      dword ptr [esp + 0x20], eax             // 0x00552710    89442420
                         {disp8} mov      dword ptr [esp + 0x28], 0x00000000      // 0x00552714    c744242800000000
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000000      // 0x0055271c    c744242c00000000
                         {disp8} mov      dword ptr [esp + 0x30], 0x00000000      // 0x00552724    c744243000000000
                         call             @GetPlayer3DColor__7GPlayerFv@12        // 0x0055272c    e85f8e0f00
                         mov              eax, dword ptr [eax]                    // 0x00552731    8b00
                         and              eax, 0x00ffffff                         // 0x00552733    25ffffff00
                         mov.s            ecx, eax                                // 0x00552738    8bc8
                         and              ecx, 0x00ff0000                         // 0x0055273a    81e10000ff00
                         shl              ecx, 7                                  // 0x00552740    c1e107
                         mov.s            esi, ecx                                // 0x00552743    8bf1
                         mov.s            edx, eax                                // 0x00552745    8bd0
                         and              edx, 0x0000ff00                         // 0x00552747    81e200ff0000
                         mov.s            ecx, eax                                // 0x0055274d    8bc8
                         and              ecx, 0x000000ff                         // 0x0055274f    81e1ff000000
                         and              esi, 0xff0000ff                         // 0x00552755    81e6ff0000ff
                         shl              edx, 7                                  // 0x0055275b    c1e207
                         and              edx, 0x00ff0000                         // 0x0055275e    81e20000ff00
                         or.s             esi, edx                                // 0x00552764    0bf2
                         shl              ecx, 7                                  // 0x00552766    c1e107
                         and              ecx, 0x0000ff00                         // 0x00552769    81e100ff0000
                         or.s             esi, ecx                                // 0x0055276f    0bf1
                         and              eax, 0xff000000                         // 0x00552771    25000000ff
                         shr              esi, 8                                  // 0x00552776    c1ee08
                         push             0x7                                     // 0x00552779    6a07
                         or.s             esi, eax                                // 0x0055277b    0bf0
                         call             ?LocalRand@GRand@@SAIJ@Z                // 0x0055277d    e8eebd1800
                         add              esp, 0x04                               // 0x00552782    83c404
                         cmp              eax, 0x03                               // 0x00552785    83f803
                         {disp32} ja      _jmp_addr_0x00552922                    // 0x00552788    0f8794010000
                         jmp              dword ptr [eax*4 + 0x5529d0]            // 0x0055278e    ff2485d0295500
                         mov.s            eax, esi                                // 0x00552795    8bc6
                         and              eax, 0x00ff0000                         // 0x00552797    250000ff00
                         lea              edi, dword ptr [eax + eax * 0x2]        // 0x0055279c    8d3c40
                         mov.s            eax, esi                                // 0x0055279f    8bc6
                         and              eax, 0x0000ff00                         // 0x005527a1    2500ff0000
                         lea              edx, dword ptr [eax + eax * 0x2]        // 0x005527a6    8d1440
                         mov.s            eax, esi                                // 0x005527a9    8bc6
                         and              eax, 0x000000ff                         // 0x005527ab    25ff000000
                         shl              edi, 6                                  // 0x005527b0    c1e706
                         and              edi, 0xff0000ff                         // 0x005527b3    81e7ff0000ff
                         shl              edx, 6                                  // 0x005527b9    c1e206
                         lea              eax, dword ptr [eax + eax * 0x2]        // 0x005527bc    8d0440
                         and              edx, 0x00ff0000                         // 0x005527bf    81e20000ff00
                         shl              eax, 6                                  // 0x005527c5    c1e006
                         or.s             edi, edx                                // 0x005527c8    0bfa
                         and              eax, 0x0000ff00                         // 0x005527ca    2500ff0000
                         or.s             edi, eax                                // 0x005527cf    0bf8
                         shr              edi, 8                                  // 0x005527d1    c1ef08
                         and              esi, 0xff000000                         // 0x005527d4    81e6000000ff
                         or.s             edi, esi                                // 0x005527da    0bfe
                         {disp32} jmp     _jmp_addr_0x00552924                    // 0x005527dc    e943010000
                         mov.s            ecx, esi                                // 0x005527e1    8bce
                         and              ecx, 0x0000ff00                         // 0x005527e3    81e100ff0000
                         mov.s            edx, esi                                // 0x005527e9    8bd6
                         and              edx, 0x00ff0000                         // 0x005527eb    81e20000ff00
                         add              edx, 0x01010000                         // 0x005527f1    81c200000101
                         sub              ecx, 0x00009000                         // 0x005527f7    81e900900000
                         mov.s            eax, esi                                // 0x005527fd    8bc6
                         and              eax, 0x000000ff                         // 0x005527ff    25ff000000
                         sub              eax, 0x00000090                         // 0x00552804    2d90000000
                         shl              ecx, 7                                  // 0x00552809    c1e107
                         shl              edx, 7                                  // 0x0055280c    c1e207
                         shl              eax, 7                                  // 0x0055280f    c1e007
                         mov.s            edi, ecx                                // 0x00552812    8bf9
                         shr              edi, 8                                  // 0x00552814    c1ef08
                         shr              edx, 8                                  // 0x00552817    c1ea08
                         sub              edi, 0x00007000                         // 0x0055281a    81ef00700000
                         shr              eax, 8                                  // 0x00552820    c1e808
                         sub              edx, 0x00010000                         // 0x00552823    81ea00000100
                         and              edi, 0x0000ff00                         // 0x00552829    81e700ff0000
                         and              edx, 0x00ff0000                         // 0x0055282f    81e20000ff00
                         sub              eax, 0x70                               // 0x00552835    83e870
                         or.s             edi, edx                                // 0x00552838    0bfa
                         and              eax, 0x000000ff                         // 0x0055283a    25ff000000
                         or.s             edi, eax                                // 0x0055283f    0bf8
                         and              esi, 0xff000000                         // 0x00552841    81e6000000ff
                         or.s             edi, esi                                // 0x00552847    0bfe
                         {disp32} jmp     _jmp_addr_0x00552924                    // 0x00552849    e9d6000000
                         mov.s            ecx, esi                                // 0x0055284e    8bce
                         and              ecx, 0x0000ff00                         // 0x00552850    81e100ff0000
                         mov.s            edx, esi                                // 0x00552856    8bd6
                         and              edx, 0x00ff0000                         // 0x00552858    81e20000ff00
                         add              edx, 0x01010000                         // 0x0055285e    81c200000101
                         sub              ecx, 0x0000ff00                         // 0x00552864    81e900ff0000
                         mov.s            eax, esi                                // 0x0055286a    8bc6
                         and              eax, 0x000000ff                         // 0x0055286c    25ff000000
                         sub              eax, 0x00000090                         // 0x00552871    2d90000000
                         shl              ecx, 7                                  // 0x00552876    c1e107
                         shl              edx, 7                                  // 0x00552879    c1e207
                         shl              eax, 7                                  // 0x0055287c    c1e007
                         mov.s            edi, ecx                                // 0x0055287f    8bf9
                         shr              edi, 8                                  // 0x00552881    c1ef08
                         shr              edx, 8                                  // 0x00552884    c1ea08
                         sub              edi, 0x00000100                         // 0x00552887    81ef00010000
                         shr              eax, 8                                  // 0x0055288d    c1e808
                         sub              edx, 0x00010000                         // 0x00552890    81ea00000100
                         and              edi, 0x0000ff00                         // 0x00552896    81e700ff0000
                         and              edx, 0x00ff0000                         // 0x0055289c    81e20000ff00
                         sub              eax, 0x70                               // 0x005528a2    83e870
                         or.s             edi, edx                                // 0x005528a5    0bfa
                         and              eax, 0x000000ff                         // 0x005528a7    25ff000000
                         or.s             edi, eax                                // 0x005528ac    0bf8
                         and              esi, 0xff000000                         // 0x005528ae    81e6000000ff
                         or.s             edi, esi                                // 0x005528b4    0bfe
                         {disp8} jmp      _jmp_addr_0x00552924                    // 0x005528b6    eb6c
                         mov.s            ecx, esi                                // 0x005528b8    8bce
                         and              ecx, 0x0000ff00                         // 0x005528ba    81e100ff0000
                         mov.s            edx, esi                                // 0x005528c0    8bd6
                         and              edx, 0x00ff0000                         // 0x005528c2    81e20000ff00
                         add              edx, 0x01700000                         // 0x005528c8    81c200007001
                         sub              ecx, 0x0000ff00                         // 0x005528ce    81e900ff0000
                         mov.s            eax, esi                                // 0x005528d4    8bc6
                         and              eax, 0x000000ff                         // 0x005528d6    25ff000000
                         sub              eax, 0x00000090                         // 0x005528db    2d90000000
                         shl              ecx, 7                                  // 0x005528e0    c1e107
                         shl              edx, 7                                  // 0x005528e3    c1e207
                         shl              eax, 7                                  // 0x005528e6    c1e007
                         mov.s            edi, ecx                                // 0x005528e9    8bf9
                         shr              edi, 8                                  // 0x005528eb    c1ef08
                         shr              edx, 8                                  // 0x005528ee    c1ea08
                         sub              edi, 0x00000100                         // 0x005528f1    81ef00010000
                         shr              eax, 8                                  // 0x005528f7    c1e808
                         sub              edx, 0x00700000                         // 0x005528fa    81ea00007000
                         and              edi, 0x0000ff00                         // 0x00552900    81e700ff0000
                         and              edx, 0x00ff0000                         // 0x00552906    81e20000ff00
                         sub              eax, 0x70                               // 0x0055290c    83e870
                         or.s             edi, edx                                // 0x0055290f    0bfa
                         and              eax, 0x000000ff                         // 0x00552911    25ff000000
                         or.s             edi, eax                                // 0x00552916    0bf8
                         and              esi, 0xff000000                         // 0x00552918    81e6000000ff
                         or.s             edi, esi                                // 0x0055291e    0bfe
                         {disp8} jmp      _jmp_addr_0x00552924                    // 0x00552920    eb02
_jmp_addr_0x00552922:    mov.s            edi, esi                                // 0x00552922    8bfe
_jmp_addr_0x00552924:    mov.s            ecx, ebx                                // 0x00552924    8bcb
                         call             ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                    // 0x00552926    e8859f0800
                         {disp8} mov      ecx, dword ptr [eax + 0x2c]             // 0x0055292b    8b482c
                         test             ecx, ecx                                // 0x0055292e    85c9
                         {disp8} je       _jmp_addr_0x00552969                    // 0x00552930    7437
                         push             0x2                                     // 0x00552932    6a02
                         call             ?LocalRand@GRand@@SAIJ@Z                // 0x00552934    e837bc1800
                         add              esp, 0x04                               // 0x00552939    83c404
                         neg              eax                                     // 0x0055293c    f7d8
                         sbb.s            eax, eax                                // 0x0055293e    1bc0
                         add              eax, 0x02                               // 0x00552940    83c002
                         push             eax                                     // 0x00552943    50
                         push             0x41200000                              // 0x00552944    6800002041
                         add              edi, 0x80000000                         // 0x00552949    81c700000080
                         push             edi                                     // 0x0055294f    57
                         {disp8} lea      ecx, dword ptr [esp + 0x30]             // 0x00552950    8d4c2430
                         push             ecx                                     // 0x00552954    51
                         {disp8} lea      edx, dword ptr [esp + 0x28]             // 0x00552955    8d542428
                         push             edx                                     // 0x00552959    52
                         mov.s            ecx, ebx                                // 0x0055295a    8bcb
                         call             ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                    // 0x0055295c    e84f9f0800
                         {disp8} mov      ecx, dword ptr [eax + 0x2c]             // 0x00552961    8b482c
                         call             _jmp_addr_0x00845d30                    // 0x00552964    e8c7332f00
_jmp_addr_0x00552969:    mov.s            ecx, ebx                                // 0x00552969    8bcb
                         call             ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                    // 0x0055296b    e8409f0800
                         {disp8} mov      ecx, dword ptr [eax + 0x2c]             // 0x00552970    8b482c
                         test             ecx, ecx                                // 0x00552973    85c9
                         {disp8} je       _jmp_addr_0x0055299f                    // 0x00552975    7428
                         {disp8} mov      ecx, dword ptr [esp + 0x18]             // 0x00552977    8b4c2418
                         sub              esp, 0x0c                               // 0x0055297b    83ec0c
                         mov.s            eax, esp                                // 0x0055297e    8bc4
                         mov              dword ptr [eax], ecx                    // 0x00552980    8908
                         {disp8} mov      edx, dword ptr [esp + 0x28]             // 0x00552982    8b542428
                         {disp8} mov      dword ptr [eax + 0x04], edx             // 0x00552986    895004
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]             // 0x00552989    8b4c242c
                         {disp8} mov      dword ptr [eax + 0x08], ecx             // 0x0055298d    894808
                         mov.s            ecx, ebx                                // 0x00552990    8bcb
                         call             ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ                    // 0x00552992    e8199f0800
                         {disp8} mov      ecx, dword ptr [eax + 0x2c]             // 0x00552997    8b482c
                         call             _jmp_addr_0x005529e0                    // 0x0055299a    e841000000
_jmp_addr_0x0055299f:    push             ebx                                     // 0x0055299f    53
                         mov.s            ecx, ebp                                // 0x005529a0    8bcd
                         call             ?GetNextInterfaceStatus@GPlayer@@QAEPAVGInterfaceStatus@@PAV2@@Z                    // 0x005529a2    e819810f00
                         {disp8} mov      esi, dword ptr [esp + 0x10]             // 0x005529a7    8b742410
                         mov.s            ebx, eax                                // 0x005529ab    8bd8
                         test             ebx, ebx                                // 0x005529ad    85db
                         {disp32} jne     _jmp_addr_0x005526be                    // 0x005529af    0f8509fdffff
_jmp_addr_0x005529b5:    push             ebp                                     // 0x005529b5    55
                         mov.s            ecx, esi                                // 0x005529b6    8bce
                         call             ?GetNextPlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                    // 0x005529b8    e8e3deffff
                         mov.s            ebp, eax                                // 0x005529bd    8be8
                         test             ebp, ebp                                // 0x005529bf    85ed
                         {disp32} jne     _jmp_addr_0x00552684                    // 0x005529c1    0f85bdfcffff
_jmp_addr_0x005529c7:    pop              edi                                     // 0x005529c7    5f
                         pop              esi                                     // 0x005529c8    5e
                         pop              ebp                                     // 0x005529c9    5d
                         pop              ebx                                     // 0x005529ca    5b
                         add              esp, 0x20                               // 0x005529cb    83c420
                         ret                                                      // 0x005529ce    c3

// Snippet: db, [0x005529cf, 0x005529d0)
.byte 0x90                        // 0x005529cf

// Snippet: jmptbl, [0x005529d0, 0x005529e0)
.byte 0xe1, 0x27, 0x55, 0x00      // 0x005529d0
.byte 0x4e, 0x28, 0x55, 0x00      // 0x005529d4
.byte 0xb8, 0x28, 0x55, 0x00      // 0x005529d8
.byte 0x95, 0x27, 0x55, 0x00      // 0x005529dc

