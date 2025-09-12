.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetSmallTextSize__Fv
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @AutoScroll__9SetupListFb@9
.extern @__ct__9SetupListFiiiii@28
.extern ?UpdateHeights@SetupList@@QAEXXZ
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern _jmp_addr_0x00470b30
.extern _jmp_addr_0x00470de0
.extern _jmp_addr_0x00470e20
.extern _jmp_addr_0x00470e80
.extern _jmp_addr_0x00471130
.extern _jmp_addr_0x00471170
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?SendMessageA@GInterface@@QAE_NW4INTERFACE_MESSAGE_TYPES@@PAULHCoord@@@Z
.extern _jmp_addr_0x005d9dd0
.extern _jmp_addr_0x00617140
.extern _jmp_addr_0x0061ccb0
.extern _jmp_addr_0x0061d680
.extern _jmp_addr_0x0061d930
.extern _jmp_addr_0x0061e7c0
.extern _jmp_addr_0x00621db0
.extern _jmp_addr_0x00622d40
.extern _jmp_addr_0x00622ff0
.extern _jmp_addr_0x006239a0
.extern _jmp_addr_0x006239c0
.extern ?IsLanLobby@MPFEConnectionStatus@@QAE_NXZ
.extern ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ
.extern ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z
.extern _jmp_addr_0x007947c0
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @SetLHFilePointer__6LHFileFPcl@16
.extern _jmp_addr_0x007bdfc0
.extern @GetSegmentData__6LHFileFPvUll@20
.extern _atexit
.extern _sprintf
.extern _wcscat
.extern _wcscpy
.extern _wcslen
.extern _swprintf
.extern ___nw__FUl
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern _jmp_addr_0x00839900
.extern _jmp_addr_0x00839970
.extern ?GetListPtrFrames@LH3DAnim@@QAEHXZ
.extern ??0CAnim@@QAE@XZ
.extern _jmp_addr_0x0085e490
.extern ??_DCAnim@@QAEXXZ
.extern _jmp_addr_0x0085f690
.extern _jmp_addr_0x0085fd00
.extern @ReadBinary__5CAnimFP6LHFile@12
.extern _jmp_addr_0x00860a70
.extern _jmp_addr_0x00860be0

.globl _jmp_addr_0x006199f0
.globl @ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo@20
.globl _jmp_addr_0x00619c90
.globl _jmp_addr_0x00619da0
.globl ?ProcessPosition@CMouse@@QAEXXZ
.globl ?ProcessButtons@CMouse@@QAEXXZ
.globl _jmp_addr_0x0061a660
.globl _jmp_addr_0x0061a9f0
.globl _jmp_addr_0x0061acf0
.globl _jmp_addr_0x0061ad20
.globl _jmp_addr_0x0061b330
.globl _jmp_addr_0x0061b350
.globl _jmp_addr_0x0061b4d0

.globl _globl_ct_0x0061a0e0
.globl _globl_ct_0x0061a610
.globl _globl_ct_0x0061a640

start_0x006199f0_0x0061b880:
// Snippet: asm, [0x006199f0, 0x0061b86e)
_jmp_addr_0x006199f0:    sub               esp, 0x14                                            // 0x006199f0    83ec14
                         push              ebp                                                  // 0x006199f3    55
                         {disp8} mov       ebp, dword ptr [esp + 0x24]                          // 0x006199f4    8b6c2424
                         {disp8} mov       eax, dword ptr [ebp + 0x04]                          // 0x006199f8    8b4504
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                          // 0x006199fb    894c240c
                         xor.s             ecx, ecx                                             // 0x006199ff    33c9
                         cmp.s             eax, ecx                                             // 0x00619a01    3bc1
                         {disp8} mov       dword ptr [esp + 0x04], ecx                          // 0x00619a03    894c2404
                         {disp8} mov       dword ptr [esp + 0x08], ecx                          // 0x00619a07    894c2408
                         {disp32} jle      _jmp_addr_0x00619b6b                                 // 0x00619a0b    0f8e5a010000
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x00619a11    8b442420
                         push              ebx                                                  // 0x00619a15    53
                         push              esi                                                  // 0x00619a16    56
                         sub.s             eax, ebp                                             // 0x00619a17    2bc5
                         push              edi                                                  // 0x00619a19    57
                         {disp8} mov       dword ptr [esp + 0x30], 0x00000183                   // 0x00619a1a    c744243083010000
                         {disp32} lea      ebx, dword ptr [ebp + 0x00000308]                    // 0x00619a22    8d9d08030000
                         {disp8} mov       dword ptr [esp + 0x1c], eax                          // 0x00619a28    8944241c
_jmp_addr_0x00619a2c:    mov               eax, dword ptr [ebx]                                 // 0x00619a2c    8b03
                         xor.s             edi, edi                                             // 0x00619a2e    33ff
                         cmp.s             eax, ecx                                             // 0x00619a30    3bc1
                         {disp32} jle      _jmp_addr_0x00619b34                                 // 0x00619a32    0f8efc000000
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619a38    8b442410
                         {disp8} mov       edx, dword ptr [esp + 0x18]                          // 0x00619a3c    8b542418
                         {disp32} lea      esi, dword ptr [edx + eax * 0x4 + 0x00000740]        // 0x00619a40    8db48240070000
                         {disp8} jmp       _jmp_addr_0x00619a4b                                 // 0x00619a47    eb02
_jmp_addr_0x00619a49:    xor.s             ecx, ecx                                             // 0x00619a49    33c9
_jmp_addr_0x00619a4b:    {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x00619a4b    8b442414
                         {disp8} mov       edx, dword ptr [esp + 0x2c]                          // 0x00619a4f    8b54242c
                         cmp               eax, dword ptr [edx + 0x04]                          // 0x00619a53    3b4204
                         {disp32} jge      _jmp_addr_0x00619b0d                                 // 0x00619a56    0f8db1000000
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                          // 0x00619a5c    8b44241c
                         cmp               edi, dword ptr [eax + ebx * 0x1]                     // 0x00619a60    3b3c18
                         {disp32} jge      _jmp_addr_0x00619b0d                                 // 0x00619a63    0f8da4000000
                         push              -0x1                                                 // 0x00619a69    6aff
                         push              0x4                                                  // 0x00619a6b    6a04
                         {disp8} lea       ecx, dword ptr [esp + 0x28]                          // 0x00619a6d    8d4c2428
                         push              ecx                                                  // 0x00619a71    51
                         {disp8} mov       ecx, dword ptr [esp + 0x34]                          // 0x00619a72    8b4c2434
                         call              @GetSegmentData__6LHFileFPvUll@20                    // 0x00619a76    e8c5451a00
                         {disp8} mov       ecx, dword ptr [esp + 0x20]                          // 0x00619a7b    8b4c2420
                         xor.s             eax, eax                                             // 0x00619a7f    33c0
                         cmp.s             ecx, eax                                             // 0x00619a81    3bc8
                         {disp8} jne       _jmp_addr_0x00619a98                                 // 0x00619a83    7513
                         {disp32} mov      dword ptr [esi + -0x00000740], eax                   // 0x00619a85    8986c0f8ffff
                         {disp32} mov      dword ptr [esi + -0x000003a0], eax                   // 0x00619a8b    898660fcffff
                         mov               dword ptr [esi], eax                                 // 0x00619a91    8906
                         {disp32} jmp      _jmp_addr_0x00619b1b                                 // 0x00619a93    e983000000
_jmp_addr_0x00619a98:    push              0x000005c8                                           // 0x00619a98    68c8050000
                         push              0x00bf42d0                                           // 0x00619a9d    68d042bf00
                         {disp32} mov      dword ptr [esi + -0x000003a0], 0x00000002            // 0x00619aa2    c78660fcffff02000000
                         push              0x38                                                 // 0x00619aac    6a38
                         mov               dword ptr [esi], eax                                 // 0x00619aae    8906
                         call              ___nw__FUl                                           // 0x00619ab0    e8db1c1c00
                         add               esp, 0x0c                                            // 0x00619ab5    83c40c
                         test              eax, eax                                             // 0x00619ab8    85c0
                         {disp8} je        _jmp_addr_0x00619ac5                                 // 0x00619aba    7409
                         mov.s             ecx, eax                                             // 0x00619abc    8bc8
                         call              ??0CAnim@@QAE@XZ                                     // 0x00619abe    e8bd492400
                         {disp8} jmp       _jmp_addr_0x00619ac7                                 // 0x00619ac3    eb02
_jmp_addr_0x00619ac5:    xor.s             eax, eax                                             // 0x00619ac5    33c0
_jmp_addr_0x00619ac7:    {disp8} mov       edx, dword ptr [esp + 0x28]                          // 0x00619ac7    8b542428
                         push              edx                                                  // 0x00619acb    52
                         mov.s             ecx, eax                                             // 0x00619acc    8bc8
                         {disp32} mov      dword ptr [esi + -0x00000740], eax                   // 0x00619ace    8986c0f8ffff
                         call              @ReadBinary__5CAnimFP6LHFile@12                      // 0x00619ad4    e8876d2400
                         {disp8} mov       eax, dword ptr [esp + 0x30]                          // 0x00619ad9    8b442430
                         add.s             eax, edi                                             // 0x00619add    03c7
                         {disp8} mov       cl, byte ptr [ebp + eax * 0x4 + 0x00]                // 0x00619adf    8a4c8500
                         test              cl, 0x01                                             // 0x00619ae3    f6c101
                         {disp8} lea       eax, dword ptr [ebp + eax * 0x4 + 0x00]              // 0x00619ae6    8d448500
                         {disp8} je        _jmp_addr_0x00619af9                                 // 0x00619aea    740d
                         {disp32} mov      ecx, dword ptr [esi + -0x00000740]                   // 0x00619aec    8b8ec0f8ffff
                         {disp8} mov       dword ptr [ecx + 0x04], 0x00000001                   // 0x00619af2    c7410401000000
_jmp_addr_0x00619af9:    test              byte ptr [eax], 0x02                                 // 0x00619af9    f60002
                         {disp8} je        _jmp_addr_0x00619b1b                                 // 0x00619afc    741d
                         {disp32} mov      edx, dword ptr [esi + -0x00000740]                   // 0x00619afe    8b96c0f8ffff
                         {disp8} mov       dword ptr [edx + 0x04], 0x00000000                   // 0x00619b04    c7420400000000
                         {disp8} jmp       _jmp_addr_0x00619b1b                                 // 0x00619b0b    eb0e
_jmp_addr_0x00619b0d:    {disp32} mov      dword ptr [esi + -0x00000740], ecx                   // 0x00619b0d    898ec0f8ffff
                         {disp32} mov      dword ptr [esi + -0x000003a0], ecx                   // 0x00619b13    898e60fcffff
                         mov               dword ptr [esi], ecx                                 // 0x00619b19    890e
_jmp_addr_0x00619b1b:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619b1b    8b442410
                         inc               eax                                                  // 0x00619b1f    40
                         add               esi, 0x04                                            // 0x00619b20    83c604
                         {disp8} mov       dword ptr [esp + 0x10], eax                          // 0x00619b23    89442410
                         mov               eax, dword ptr [ebx]                                 // 0x00619b27    8b03
                         inc               edi                                                  // 0x00619b29    47
                         cmp.s             edi, eax                                             // 0x00619b2a    3bf8
                         {disp32} jl       _jmp_addr_0x00619a49                                 // 0x00619b2c    0f8c17ffffff
                         xor.s             ecx, ecx                                             // 0x00619b32    33c9
_jmp_addr_0x00619b34:    {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x00619b34    8b442414
                         {disp8} mov       esi, dword ptr [esp + 0x30]                          // 0x00619b38    8b742430
                         {disp8} mov       edx, dword ptr [ebp + 0x04]                          // 0x00619b3c    8b5504
                         inc               eax                                                  // 0x00619b3f    40
                         add               esi, 0x000000d9                                      // 0x00619b40    81c6d9000000
                         add               ebx, 0x00000364                                      // 0x00619b46    81c364030000
                         cmp.s             eax, edx                                             // 0x00619b4c    3bc2
                         {disp8} mov       dword ptr [esp + 0x14], eax                          // 0x00619b4e    89442414
                         {disp8} mov       dword ptr [esp + 0x30], esi                          // 0x00619b52    89742430
                         {disp32} jl       _jmp_addr_0x00619a2c                                 // 0x00619b56    0f8cd0feffff
                         pop               edi                                                  // 0x00619b5c    5f
                         pop               esi                                                  // 0x00619b5d    5e
                         pop               ebx                                                  // 0x00619b5e    5b
                         mov               eax, 0x00000001                                      // 0x00619b5f    b801000000
                         pop               ebp                                                  // 0x00619b64    5d
                         add               esp, 0x14                                            // 0x00619b65    83c414
                         ret               0x000c                                               // 0x00619b68    c20c00
_jmp_addr_0x00619b6b:    mov               eax, 0x00000001                                      // 0x00619b6b    b801000000
                         pop               ebp                                                  // 0x00619b70    5d
                         add               esp, 0x14                                            // 0x00619b71    83c414
                         ret               0x000c                                               // 0x00619b74    c20c00
                         nop                                                                    // 0x00619b77    90
                         nop                                                                    // 0x00619b78    90
                         nop                                                                    // 0x00619b79    90
                         nop                                                                    // 0x00619b7a    90
                         nop                                                                    // 0x00619b7b    90
                         nop                                                                    // 0x00619b7c    90
                         nop                                                                    // 0x00619b7d    90
                         nop                                                                    // 0x00619b7e    90
                         nop                                                                    // 0x00619b7f    90
@ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo@20:    sub               esp, 0x14                                            // 0x00619b80    83ec14
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x00619b83    8b442420
                         push              ebp                                                  // 0x00619b87    55
                         xor.s             ebp, ebp                                             // 0x00619b88    33ed
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                          // 0x00619b8a    894c240c
                         cmp               dword ptr [eax + 0x04], ebp                          // 0x00619b8e    396804
                         push              esi                                                  // 0x00619b91    56
                         {disp8} mov       dword ptr [esp + 0x08], ebp                          // 0x00619b92    896c2408
                         {disp8} mov       dword ptr [esp + 0x0c], ebp                          // 0x00619b96    896c240c
                         {disp32} jle      _jmp_addr_0x00619c4e                                 // 0x00619b9a    0f8eae000000
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                          // 0x00619ba0    8b4c2424
                         push              ebx                                                  // 0x00619ba4    53
                         sub.s             ecx, eax                                             // 0x00619ba5    2bc8
                         push              edi                                                  // 0x00619ba7    57
                         {disp32} lea      ebx, dword ptr [eax + 0x00000308]                    // 0x00619ba8    8d9808030000
                         {disp8} mov       dword ptr [esp + 0x1c], ecx                          // 0x00619bae    894c241c
_jmp_addr_0x00619bb2:    mov               ecx, dword ptr [ebx]                                 // 0x00619bb2    8b0b
                         xor.s             edi, edi                                             // 0x00619bb4    33ff
                         cmp.s             ecx, ebp                                             // 0x00619bb6    3bcd
                         {disp8} jle       _jmp_addr_0x00619c32                                 // 0x00619bb8    7e78
                         {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619bba    8b442410
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                          // 0x00619bbe    8b4c2418
                         {disp32} lea      esi, dword ptr [ecx + eax * 0x4 + 0x00000740]        // 0x00619bc2    8db48140070000
_jmp_addr_0x00619bc9:    {disp8} mov       eax, dword ptr [esp + 0x2c]                          // 0x00619bc9    8b44242c
                         {disp8} mov       edx, dword ptr [esp + 0x14]                          // 0x00619bcd    8b542414
                         cmp               edx, dword ptr [eax + 0x04]                          // 0x00619bd1    3b5004
                         {disp8} jge       _jmp_addr_0x00619c0d                                 // 0x00619bd4    7d37
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                          // 0x00619bd6    8b4c241c
                         cmp               edi, dword ptr [ecx + ebx * 0x1]                     // 0x00619bda    3b3c19
                         {disp8} jge       _jmp_addr_0x00619c0d                                 // 0x00619bdd    7d2e
                         {disp8} mov       ecx, dword ptr [esp + 0x28]                          // 0x00619bdf    8b4c2428
                         push              -0x1                                                 // 0x00619be3    6aff
                         push              0x4                                                  // 0x00619be5    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x28]                          // 0x00619be7    8d542428
                         push              edx                                                  // 0x00619beb    52
                         call              @GetSegmentData__6LHFileFPvUll@20                    // 0x00619bec    e84f441a00
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x00619bf1    8b442420
                         cmp.s             eax, ebp                                             // 0x00619bf5    3bc5
                         {disp32} mov      dword ptr [esi + -0x00000740], ebp                   // 0x00619bf7    89aec0f8ffff
                         {disp8} je        _jmp_addr_0x00619c13                                 // 0x00619bfd    7414
                         {disp32} mov      dword ptr [esi + -0x000003a0], 0x00000001            // 0x00619bff    c78660fcffff01000000
                         mov               dword ptr [esi], eax                                 // 0x00619c09    8906
                         {disp8} jmp       _jmp_addr_0x00619c1b                                 // 0x00619c0b    eb0e
_jmp_addr_0x00619c0d:    {disp32} mov      dword ptr [esi + -0x00000740], ebp                   // 0x00619c0d    89aec0f8ffff
_jmp_addr_0x00619c13:    {disp32} mov      dword ptr [esi + -0x000003a0], ebp                   // 0x00619c13    89ae60fcffff
                         mov               dword ptr [esi], ebp                                 // 0x00619c19    892e
_jmp_addr_0x00619c1b:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x00619c1b    8b442410
                         inc               eax                                                  // 0x00619c1f    40
                         add               esi, 0x04                                            // 0x00619c20    83c604
                         {disp8} mov       dword ptr [esp + 0x10], eax                          // 0x00619c23    89442410
                         mov               eax, dword ptr [ebx]                                 // 0x00619c27    8b03
                         inc               edi                                                  // 0x00619c29    47
                         cmp.s             edi, eax                                             // 0x00619c2a    3bf8
                         {disp8} jl        _jmp_addr_0x00619bc9                                 // 0x00619c2c    7c9b
                         {disp8} mov       eax, dword ptr [esp + 0x30]                          // 0x00619c2e    8b442430
_jmp_addr_0x00619c32:    {disp8} mov       ecx, dword ptr [esp + 0x14]                          // 0x00619c32    8b4c2414
                         {disp8} mov       edx, dword ptr [eax + 0x04]                          // 0x00619c36    8b5004
                         inc               ecx                                                  // 0x00619c39    41
                         add               ebx, 0x00000364                                      // 0x00619c3a    81c364030000
                         cmp.s             ecx, edx                                             // 0x00619c40    3bca
                         {disp8} mov       dword ptr [esp + 0x14], ecx                          // 0x00619c42    894c2414
                         {disp32} jl       _jmp_addr_0x00619bb2                                 // 0x00619c46    0f8c66ffffff
                         pop               edi                                                  // 0x00619c4c    5f
                         pop               ebx                                                  // 0x00619c4d    5b
_jmp_addr_0x00619c4e:    {disp8} mov       esi, dword ptr [esp + 0x20]                          // 0x00619c4e    8b742420
                         push              -0x1                                                 // 0x00619c52    6aff
                         push              0x4                                                  // 0x00619c54    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x2c]                          // 0x00619c56    8d44242c
                         push              eax                                                  // 0x00619c5a    50
                         mov.s             ecx, esi                                             // 0x00619c5b    8bce
                         call              @GetSegmentData__6LHFileFPvUll@20                    // 0x00619c5d    e8de431a00
                         cmp               dword ptr [esi + 0x50], 0x02                         // 0x00619c62    837e5002
                         {disp8} jne       _jmp_addr_0x00619c82                                 // 0x00619c66    751a
                         cmp               dword ptr [esi + 0x54], ebp                          // 0x00619c68    396e54
                         {disp8} je        _jmp_addr_0x00619c82                                 // 0x00619c6b    7415
                         {disp8} mov       eax, dword ptr [esp + 0x24]                          // 0x00619c6d    8b442424
                         cmp               eax, dword ptr [esi + 0x58]                          // 0x00619c71    3b4658
                         {disp8} jae       _jmp_addr_0x00619c82                                 // 0x00619c74    730c
                         {disp8} mov       ecx, dword ptr [esi + 0x64]                          // 0x00619c76    8b4e64
                         push              eax                                                  // 0x00619c79    50
                         push              ecx                                                  // 0x00619c7a    51
                         mov.s             ecx, esi                                             // 0x00619c7b    8bce
                         call              @SetLHFilePointer__6LHFileFPcl@16                    // 0x00619c7d    e84e401a00
_jmp_addr_0x00619c82:    pop               esi                                                  // 0x00619c82    5e
                         mov               eax, 0x00000001                                      // 0x00619c83    b801000000
                         pop               ebp                                                  // 0x00619c88    5d
                         add               esp, 0x14                                            // 0x00619c89    83c414
                         ret               0x000c                                               // 0x00619c8c    c20c00
                         nop                                                                    // 0x00619c8f    90
_jmp_addr_0x00619c90:    sub               esp, 0x08                                            // 0x00619c90    83ec08
                         push              ebx                                                  // 0x00619c93    53
                         push              ebp                                                  // 0x00619c94    55
                         push              esi                                                  // 0x00619c95    56
                         push              edi                                                  // 0x00619c96    57
                         mov.s             edi, ecx                                             // 0x00619c97    8bf9
                         {disp8} mov       ecx, dword ptr [esp + 0x1c]                          // 0x00619c99    8b4c241c
                         {disp8} mov       eax, dword ptr [ecx + 0x54]                          // 0x00619c9d    8b4154
                         test              eax, eax                                             // 0x00619ca0    85c0
                         {disp8} mov       dword ptr [esp + 0x14], edi                          // 0x00619ca2    897c2414
                         {disp8} jne       _jmp_addr_0x00619caf                                 // 0x00619ca6    7507
                         mov               eax, 0x00000003                                      // 0x00619ca8    b803000000
                         {disp8} jmp       _jmp_addr_0x00619cb5                                 // 0x00619cad    eb06
_jmp_addr_0x00619caf:    {disp8} mov       eax, dword ptr [ecx + 0x5c]                          // 0x00619caf    8b415c
                         sub               eax, dword ptr [ecx + 0x60]                          // 0x00619cb2    2b4160
_jmp_addr_0x00619cb5:    {disp8} mov       ebp, dword ptr [esp + 0x20]                          // 0x00619cb5    8b6c2420
                         {disp8} lea       ebx, dword ptr [eax + ebp * 0x4 + 0x04]              // 0x00619cb9    8d5ca804
                         xor.s             esi, esi                                             // 0x00619cbd    33f6
                         test              ebp, ebp                                             // 0x00619cbf    85ed
                         {disp8} mov       dword ptr [esp + 0x20], ebx                          // 0x00619cc1    895c2420
                         {disp32} jle      _jmp_addr_0x00619d5b                                 // 0x00619cc5    0f8e90000000
_jmp_addr_0x00619ccb:    {disp32} mov      eax, dword ptr [edi + 0x000003a0]                    // 0x00619ccb    8b87a0030000
                         test              eax, eax                                             // 0x00619cd1    85c0
                         {disp8} je        _jmp_addr_0x00619d37                                 // 0x00619cd3    7462
                         push              0x4                                                  // 0x00619cd5    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619cd7    8d442414
                         push              eax                                                  // 0x00619cdb    50
                         {disp8} mov       dword ptr [esp + 0x18], ebx                          // 0x00619cdc    895c2418
                         call              _jmp_addr_0x007bdfc0                                 // 0x00619ce0    e8db421a00
                         test              esi, esi                                             // 0x00619ce5    85f6
                         {disp8} je        _jmp_addr_0x00619d28                                 // 0x00619ce7    743f
                         push              0x0000061c                                           // 0x00619ce9    681c060000
                         push              0x00bf42d0                                           // 0x00619cee    68d042bf00
                         push              0x38                                                 // 0x00619cf3    6a38
                         call              ___nw__FUl                                           // 0x00619cf5    e8961a1c00
                         add               esp, 0x0c                                            // 0x00619cfa    83c40c
                         test              eax, eax                                             // 0x00619cfd    85c0
                         {disp8} je        _jmp_addr_0x00619d19                                 // 0x00619cff    7418
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                          // 0x00619d01    8b4c2424
                         {disp8} mov       edx, dword ptr [ecx + 0x34]                          // 0x00619d05    8b5134
                         mov               ecx, dword ptr [edx]                                 // 0x00619d08    8b0a
                         mov               edx, dword ptr [edi]                                 // 0x00619d0a    8b17
                         push              ecx                                                  // 0x00619d0c    51
                         push              edx                                                  // 0x00619d0d    52
                         mov.s             ecx, eax                                             // 0x00619d0e    8bc8
                         call              _jmp_addr_0x0085f690                                 // 0x00619d10    e87b592400
                         mov.s             ebx, eax                                             // 0x00619d15    8bd8
                         {disp8} jmp       _jmp_addr_0x00619d1b                                 // 0x00619d17    eb02
_jmp_addr_0x00619d19:    xor.s             ebx, ebx                                             // 0x00619d19    33db
_jmp_addr_0x00619d1b:    mov               ecx, dword ptr [edi]                                 // 0x00619d1b    8b0f
                         call              ??_DCAnim@@QAEXXZ                                    // 0x00619d1d    e87e472400
                         mov               dword ptr [edi], ebx                                 // 0x00619d22    891f
                         {disp8} mov       ebx, dword ptr [esp + 0x20]                          // 0x00619d24    8b5c2420
_jmp_addr_0x00619d28:    mov               ecx, dword ptr [edi]                                 // 0x00619d28    8b0f
                         call              _jmp_addr_0x00860be0                                 // 0x00619d2a    e8b16e2400
                         add.s             ebx, eax                                             // 0x00619d2f    03d8
                         {disp8} mov       dword ptr [esp + 0x20], ebx                          // 0x00619d31    895c2420
                         {disp8} jmp       _jmp_addr_0x00619d4b                                 // 0x00619d35    eb14
_jmp_addr_0x00619d37:    push              0x4                                                  // 0x00619d37    6a04
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619d39    8d442414
                         push              eax                                                  // 0x00619d3d    50
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000000                   // 0x00619d3e    c744241800000000
                         call              _jmp_addr_0x007bdfc0                                 // 0x00619d46    e875421a00
_jmp_addr_0x00619d4b:    {disp8} mov       ecx, dword ptr [esp + 0x1c]                          // 0x00619d4b    8b4c241c
                         inc               esi                                                  // 0x00619d4f    46
                         add               edi, 0x04                                            // 0x00619d50    83c704
                         cmp.s             esi, ebp                                             // 0x00619d53    3bf5
                         {disp32} jl       _jmp_addr_0x00619ccb                                 // 0x00619d55    0f8c70ffffff
_jmp_addr_0x00619d5b:    push              0x4                                                  // 0x00619d5b    6a04
                         {disp8} lea       edx, dword ptr [esp + 0x24]                          // 0x00619d5d    8d542424
                         push              edx                                                  // 0x00619d61    52
                         {disp8} mov       dword ptr [esp + 0x28], ebx                          // 0x00619d62    895c2428
                         call              _jmp_addr_0x007bdfc0                                 // 0x00619d66    e855421a00
                         test              ebp, ebp                                             // 0x00619d6b    85ed
                         {disp8} jle       _jmp_addr_0x00619d91                                 // 0x00619d6d    7e22
                         {disp8} mov       esi, dword ptr [esp + 0x14]                          // 0x00619d6f    8b742414
                         mov.s             edi, ebp                                             // 0x00619d73    8bfd
_jmp_addr_0x00619d75:    {disp32} mov      eax, dword ptr [esi + 0x000003a0]                    // 0x00619d75    8b86a0030000
                         test              eax, eax                                             // 0x00619d7b    85c0
                         {disp8} je        _jmp_addr_0x00619d8b                                 // 0x00619d7d    740c
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                          // 0x00619d7f    8b44241c
                         mov               ecx, dword ptr [esi]                                 // 0x00619d83    8b0e
                         push              eax                                                  // 0x00619d85    50
                         call              _jmp_addr_0x00860a70                                 // 0x00619d86    e8e56c2400
_jmp_addr_0x00619d8b:    add               esi, 0x04                                            // 0x00619d8b    83c604
                         dec               edi                                                  // 0x00619d8e    4f
                         {disp8} jne       _jmp_addr_0x00619d75                                 // 0x00619d8f    75e4
_jmp_addr_0x00619d91:    pop               edi                                                  // 0x00619d91    5f
                         pop               esi                                                  // 0x00619d92    5e
                         pop               ebp                                                  // 0x00619d93    5d
                         pop               ebx                                                  // 0x00619d94    5b
                         add               esp, 0x08                                            // 0x00619d95    83c408
                         ret               0x000c                                               // 0x00619d98    c20c00
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                                 // 0x00619d9b    e8597adeff
_jmp_addr_0x00619da0:    sub               esp, 0x000000c4                                      // 0x00619da0    81ecc4000000
                         {disp8} mov       dword ptr [esp + 0x00], ecx                          // 0x00619da6    894c2400
                         or                ecx, 0xffffffff                                      // 0x00619daa    83c9ff
                         push              ebx                                                  // 0x00619dad    53
                         xor.s             eax, eax                                             // 0x00619dae    33c0
                         push              ebp                                                  // 0x00619db0    55
                         push              esi                                                  // 0x00619db1    56
                         push              edi                                                  // 0x00619db2    57
                         mov               edi, 0x00bf455c                                      // 0x00619db3    bf5c45bf00
                         repne scasb                                                            // 0x00619db8    f2ae
                         not               ecx                                                  // 0x00619dba    f7d1
                         sub.s             edi, ecx                                             // 0x00619dbc    2bf9
                         mov.s             eax, ecx                                             // 0x00619dbe    8bc1
                         shr               ecx, 2                                               // 0x00619dc0    c1e902
                         mov.s             esi, edi                                             // 0x00619dc3    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619dc5    8d542414
                         mov.s             edi, edx                                             // 0x00619dc9    8bfa
                         rep movsd         es:[edi], dword ptr ds:[esi]                         // 0x00619dcb    f3a5
                         mov.s             ecx, eax                                             // 0x00619dcd    8bc8
                         and               ecx, 0x03                                            // 0x00619dcf    83e103
                         rep movsb                                                              // 0x00619dd2    f3a4
                         {disp32} mov      edi, dword ptr [esp + 0x000000d8]                    // 0x00619dd4    8bbc24d8000000
                         or                ecx, 0xffffffff                                      // 0x00619ddb    83c9ff
                         xor.s             eax, eax                                             // 0x00619dde    33c0
                         repne scasb                                                            // 0x00619de0    f2ae
                         not               ecx                                                  // 0x00619de2    f7d1
                         sub.s             edi, ecx                                             // 0x00619de4    2bf9
                         mov.s             ebx, ecx                                             // 0x00619de6    8bd9
                         or                ecx, 0xffffffff                                      // 0x00619de8    83c9ff
                         mov.s             esi, edi                                             // 0x00619deb    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619ded    8d542414
                         mov.s             edi, edx                                             // 0x00619df1    8bfa
                         repne scasb                                                            // 0x00619df3    f2ae
                         dec               edi                                                  // 0x00619df5    4f
                         mov.s             ecx, ebx                                             // 0x00619df6    8bcb
                         shr               ecx, 2                                               // 0x00619df8    c1e902
                         rep movsd         es:[edi], dword ptr ds:[esi]                         // 0x00619dfb    f3a5
                         mov.s             ecx, ebx                                             // 0x00619dfd    8bcb
                         and               ecx, 0x03                                            // 0x00619dff    83e103
                         rep movsb                                                              // 0x00619e02    f3a4
                         or                ecx, 0xffffffff                                      // 0x00619e04    83c9ff
                         mov               edi, 0x00bf4554                                      // 0x00619e07    bf5445bf00
                         repne scasb                                                            // 0x00619e0c    f2ae
                         not               ecx                                                  // 0x00619e0e    f7d1
                         sub.s             edi, ecx                                             // 0x00619e10    2bf9
                         mov.s             ebx, ecx                                             // 0x00619e12    8bd9
                         or                ecx, 0xffffffff                                      // 0x00619e14    83c9ff
                         mov.s             esi, edi                                             // 0x00619e17    8bf7
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619e19    8d542414
                         mov.s             edi, edx                                             // 0x00619e1d    8bfa
                         repne scasb                                                            // 0x00619e1f    f2ae
                         mov.s             ecx, ebx                                             // 0x00619e21    8bcb
                         shr               ecx, 2                                               // 0x00619e23    c1e902
                         dec               edi                                                  // 0x00619e26    4f
                         rep movsd         es:[edi], dword ptr ds:[esi]                         // 0x00619e27    f3a5
                         mov.s             ecx, ebx                                             // 0x00619e29    8bcb
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619e2b    8d442414
                         and               ecx, 0x03                                            // 0x00619e2f    83e103
                         push              eax                                                  // 0x00619e32    50
                         rep movsb                                                              // 0x00619e33    f3a4
                         call              _jmp_addr_0x00839900                                 // 0x00619e35    e8c6fa2100
                         mov.s             ebp, eax                                             // 0x00619e3a    8be8
                         add               esp, 0x04                                            // 0x00619e3c    83c404
                         test              ebp, ebp                                             // 0x00619e3f    85ed
                         {disp8} jne       _jmp_addr_0x00619e64                                 // 0x00619e41    7521
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                          // 0x00619e43    8d4c2414
                         push              ecx                                                  // 0x00619e47    51
                         push              0x00bf453c                                           // 0x00619e48    683c45bf00
                         call              _jmp_addr_0x00617140                                 // 0x00619e4d    e8eed2ffff
                         add               esp, 0x08                                            // 0x00619e52    83c408
                         pop               edi                                                  // 0x00619e55    5f
                         pop               esi                                                  // 0x00619e56    5e
                         pop               ebp                                                  // 0x00619e57    5d
                         xor.s             eax, eax                                             // 0x00619e58    33c0
                         pop               ebx                                                  // 0x00619e5a    5b
                         add               esp, 0x000000c4                                      // 0x00619e5b    81c4c4000000
                         ret               0x0034                                               // 0x00619e61    c23400
_jmp_addr_0x00619e64:    {disp32} mov      eax, dword ptr [esp + 0x000000ec]                    // 0x00619e64    8b8424ec000000
                         test              eax, eax                                             // 0x00619e6b    85c0
                         {disp32} mov      ebx, dword ptr [esp + 0x000000dc]                    // 0x00619e6d    8b9c24dc000000
                         {disp32} je       _jmp_addr_0x00619fc5                                 // 0x00619e74    0f844b010000
                         {disp8} mov       edi, dword ptr [ebp + 0x50]                          // 0x00619e7a    8b7d50
                         and               edi, 0x00000100                                      // 0x00619e7d    81e700010000
                         {disp32} mov      edx, dword ptr [esp + 0x000000e8]                    // 0x00619e83    8b9424e8000000
                         {disp32} mov      eax, dword ptr [esp + 0x000000e4]                    // 0x00619e8a    8b8424e4000000
                         {disp32} mov      esi, dword ptr [esp + 0x000000e0]                    // 0x00619e91    8bb424e0000000
                         {disp8} je        _jmp_addr_0x00619ec6                                 // 0x00619e98    742c
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619e9a    8d0c40
                         lea               ebx, dword ptr [edx + eax * 0x1]                     // 0x00619e9d    8d1c02
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619ea0    8d0cc9
                         lea               ecx, dword ptr [ebx + ecx * 0x8]                     // 0x00619ea3    8d0ccb
                         test              byte ptr [esi + ecx * 0x4 + 0x0000060c], 0x02        // 0x00619ea6    f6848e0c06000002
                         {disp8} je        _jmp_addr_0x00619ebf                                 // 0x00619eae    740f
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619eb0    8d542414
                         push              edx                                                  // 0x00619eb4    52
                         push              0x00bf451c                                           // 0x00619eb5    681c45bf00
                         {disp32} jmp      _jmp_addr_0x00619f72                                 // 0x00619eba    e9b3000000
_jmp_addr_0x00619ebf:    {disp32} mov      ebx, dword ptr [esp + 0x000000dc]                    // 0x00619ebf    8b9c24dc000000
_jmp_addr_0x00619ec6:    test              edi, edi                                             // 0x00619ec6    85ff
                         {disp8} jne       _jmp_addr_0x00619eef                                 // 0x00619ec8    7525
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619eca    8d0c40
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619ecd    8d0cc9
                         lea               edi, dword ptr [edx + eax * 0x1]                     // 0x00619ed0    8d3c02
                         lea               ecx, dword ptr [edi + ecx * 0x8]                     // 0x00619ed3    8d0ccf
                         test              byte ptr [esi + ecx * 0x4 + 0x0000060c], 0x01        // 0x00619ed6    f6848e0c06000001
                         {disp8} je        _jmp_addr_0x00619eef                                 // 0x00619ede    740f
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619ee0    8d542414
                         push              edx                                                  // 0x00619ee4    52
                         push              0x00bf4500                                           // 0x00619ee5    680045bf00
                         {disp32} jmp      _jmp_addr_0x00619f72                                 // 0x00619eea    e983000000
_jmp_addr_0x00619eef:    {disp8} mov       edi, dword ptr [ebp + 0x38]                          // 0x00619eef    8b7d38
                         and               edi, 0x80000001                                      // 0x00619ef2    81e701000080
                         {disp8} jns       _jmp_addr_0x00619eff                                 // 0x00619ef8    7905
                         dec               edi                                                  // 0x00619efa    4f
                         or                edi, 0xfffffffe                                      // 0x00619efb    83cffe
                         inc               edi                                                  // 0x00619efe    47
_jmp_addr_0x00619eff:    {disp8} jne       _jmp_addr_0x00619f2a                                 // 0x00619eff    7529
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619f01    8d0c40
                         lea               ebx, dword ptr [edx + eax * 0x1]                     // 0x00619f04    8d1c02
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619f07    8d0cc9
                         lea               ecx, dword ptr [ebx + ecx * 0x8]                     // 0x00619f0a    8d0ccb
                         test              byte ptr [esi + ecx * 0x4 + 0x0000060c], 0x04        // 0x00619f0d    f6848e0c06000004
                         {disp8} je        _jmp_addr_0x00619f23                                 // 0x00619f15    740c
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619f17    8d542414
                         push              edx                                                  // 0x00619f1b    52
                         push              0x00bf44d0                                           // 0x00619f1c    68d044bf00
                         {disp8} jmp       _jmp_addr_0x00619f72                                 // 0x00619f21    eb4f
_jmp_addr_0x00619f23:    {disp32} mov      ebx, dword ptr [esp + 0x000000dc]                    // 0x00619f23    8b9c24dc000000
_jmp_addr_0x00619f2a:    cmp               edi, 0x01                                            // 0x00619f2a    83ff01
                         {disp8} jne       _jmp_addr_0x00619f50                                 // 0x00619f2d    7521
                         lea               ecx, dword ptr [eax + eax * 0x2]                     // 0x00619f2f    8d0c40
                         add.s             edx, eax                                             // 0x00619f32    03d0
                         lea               ecx, dword ptr [ecx + ecx * 0x8]                     // 0x00619f34    8d0cc9
                         lea               edx, dword ptr [edx + ecx * 0x8]                     // 0x00619f37    8d14ca
                         test              byte ptr [esi + edx * 0x4 + 0x0000060c], 0x08        // 0x00619f3a    f684960c06000008
                         {disp8} je        _jmp_addr_0x00619f50                                 // 0x00619f42    740c
                         {disp8} lea       eax, dword ptr [esp + 0x14]                          // 0x00619f44    8d442414
                         push              eax                                                  // 0x00619f48    50
                         push              0x00bf44a0                                           // 0x00619f49    68a044bf00
                         {disp8} jmp       _jmp_addr_0x00619f72                                 // 0x00619f4e    eb22
_jmp_addr_0x00619f50:    mov.s             ecx, ebp                                             // 0x00619f50    8bcd
                         call              ?GetListPtrFrames@LH3DAnim@@QAEHXZ                   // 0x00619f52    e849072200
                         mov               ecx, dword ptr [eax]                                 // 0x00619f57    8b08
                         mov               edx, dword ptr [ecx]                                 // 0x00619f59    8b11
                         mov               eax, dword ptr [edx]                                 // 0x00619f5b    8b02
                         mov               ecx, dword ptr [eax]                                 // 0x00619f5d    8b08
                         cmp               ecx, dword ptr [esp + 0x00000108]                    // 0x00619f5f    3b8c2408010000
                         {disp8} je        _jmp_addr_0x00619f90                                 // 0x00619f66    7428
                         {disp8} lea       edx, dword ptr [esp + 0x14]                          // 0x00619f68    8d542414
                         push              edx                                                  // 0x00619f6c    52
                         push              0x00bf4470                                           // 0x00619f6d    687044bf00
_jmp_addr_0x00619f72:    call              _jmp_addr_0x00617140                                 // 0x00619f72    e8c9d1ffff
                         add               esp, 0x08                                            // 0x00619f77    83c408
                         mov.s             ecx, ebp                                             // 0x00619f7a    8bcd
                         call              _jmp_addr_0x00839970                                 // 0x00619f7c    e8eff92100
                         pop               edi                                                  // 0x00619f81    5f
                         pop               esi                                                  // 0x00619f82    5e
                         pop               ebp                                                  // 0x00619f83    5d
                         xor.s             eax, eax                                             // 0x00619f84    33c0
                         pop               ebx                                                  // 0x00619f86    5b
                         add               esp, 0x000000c4                                      // 0x00619f87    81c4c4000000
                         ret               0x0034                                               // 0x00619f8d    c23400
_jmp_addr_0x00619f90:    {disp8} mov       edx, dword ptr [ebp + 0x38]                          // 0x00619f90    8b5538
                         {disp32} mov      eax, dword ptr [esp + 0x00000100]                    // 0x00619f93    8b842400010000
                         {disp32} mov      esi, dword ptr [esp + 0x00000104]                    // 0x00619f9a    8bb42404010000
                         xor.s             ecx, ecx                                             // 0x00619fa1    33c9
_jmp_addr_0x00619fa3:    cmp.s             ecx, esi                                             // 0x00619fa3    3bce
                         {disp8} je        _jmp_addr_0x00619fba                                 // 0x00619fa5    7413
                         {disp32} mov      edi, dword ptr [eax + ebx * 0x4 + 0x000003a0]        // 0x00619fa7    8bbc98a0030000
                         test              edi, edi                                             // 0x00619fae    85ff
                         {disp8} je        _jmp_addr_0x00619fba                                 // 0x00619fb0    7408
                         mov               edi, dword ptr [eax + ebx * 0x4]                     // 0x00619fb2    8b3c98
                         cmp               edx, dword ptr [edi + 0x1c]                          // 0x00619fb5    3b571c
                         {disp8} jne       _jmp_addr_0x0061a01c                                 // 0x00619fb8    7562
_jmp_addr_0x00619fba:    inc               ecx                                                  // 0x00619fba    41
                         add               eax, 0x00000ae0                                      // 0x00619fbb    05e00a0000
                         cmp               ecx, 0x06                                            // 0x00619fc0    83f906
                         {disp8} jl        _jmp_addr_0x00619fa3                                 // 0x00619fc3    7cde
_jmp_addr_0x00619fc5:    {disp8} mov       edx, dword ptr [esp + 0x10]                          // 0x00619fc5    8b542410
                         mov               esi, dword ptr [edx + ebx * 0x4]                     // 0x00619fc9    8b349a
                         test              esi, esi                                             // 0x00619fcc    85f6
                         {disp8} je        _jmp_addr_0x00619fe0                                 // 0x00619fce    7410
                         mov.s             ecx, esi                                             // 0x00619fd0    8bce
                         call              _jmp_addr_0x0085e490                                 // 0x00619fd2    e8b9442400
                         push              esi                                                  // 0x00619fd7    56
                         call              ??3@YAXPAX@Z                                         // 0x00619fd8    e8bb4e1900
                         add               esp, 0x04                                            // 0x00619fdd    83c404
_jmp_addr_0x00619fe0:    push              0x0000067d                                           // 0x00619fe0    687d060000
                         push              0x00bf42d0                                           // 0x00619fe5    68d042bf00
                         push              0x38                                                 // 0x00619fea    6a38
                         call              ___nw__FUl                                           // 0x00619fec    e89f171c00
                         add               esp, 0x0c                                            // 0x00619ff1    83c40c
                         test              eax, eax                                             // 0x00619ff4    85c0
                         {disp8} je        _jmp_addr_0x0061a05b                                 // 0x00619ff6    7463
                         {disp32} mov      ecx, dword ptr [esp + 0x000000fc]                    // 0x00619ff8    8b8c24fc000000
                         {disp32} mov      edx, dword ptr [esp + 0x000000f8]                    // 0x00619fff    8b9424f8000000
                         push              ebp                                                  // 0x0061a006    55
                         push              ecx                                                  // 0x0061a007    51
                         {disp32} mov      ecx, dword ptr [esp + 0x000000fc]                    // 0x0061a008    8b8c24fc000000
                         push              edx                                                  // 0x0061a00f    52
                         push              ecx                                                  // 0x0061a010    51
                         mov.s             ecx, eax                                             // 0x0061a011    8bc8
                         call              _jmp_addr_0x0085fd00                                 // 0x0061a013    e8e85c2400
                         mov.s             esi, eax                                             // 0x0061a018    8bf0
                         {disp8} jmp       _jmp_addr_0x0061a05d                                 // 0x0061a01a    eb41
_jmp_addr_0x0061a01c:    mov               eax, dword ptr [eax + ebx * 0x4]                     // 0x0061a01c    8b0498
                         {disp8} mov       ecx, dword ptr [eax + 0x1c]                          // 0x0061a01f    8b481c
                         push              ecx                                                  // 0x0061a022    51
                         push              edx                                                  // 0x0061a023    52
                         {disp8} lea       edx, dword ptr [esp + 0x5c]                          // 0x0061a024    8d54245c
                         push              0x00bf4434                                           // 0x0061a028    683444bf00
                         push              edx                                                  // 0x0061a02d    52
                         call              _sprintf                                             // 0x0061a02e    e89fb71a00
                         {disp8} lea       eax, dword ptr [esp + 0x24]                          // 0x0061a033    8d442424
                         push              eax                                                  // 0x0061a037    50
                         {disp8} lea       ecx, dword ptr [esp + 0x68]                          // 0x0061a038    8d4c2468
                         push              ecx                                                  // 0x0061a03c    51
                         call              _jmp_addr_0x00617140                                 // 0x0061a03d    e8fed0ffff
                         add               esp, 0x18                                            // 0x0061a042    83c418
                         mov.s             ecx, ebp                                             // 0x0061a045    8bcd
                         call              _jmp_addr_0x00839970                                 // 0x0061a047    e824f92100
                         pop               edi                                                  // 0x0061a04c    5f
                         pop               esi                                                  // 0x0061a04d    5e
                         pop               ebp                                                  // 0x0061a04e    5d
                         xor.s             eax, eax                                             // 0x0061a04f    33c0
                         pop               ebx                                                  // 0x0061a051    5b
                         add               esp, 0x000000c4                                      // 0x0061a052    81c4c4000000
                         ret               0x0034                                               // 0x0061a058    c23400
_jmp_addr_0x0061a05b:    xor.s             esi, esi                                             // 0x0061a05b    33f6
_jmp_addr_0x0061a05d:    mov.s             ecx, ebp                                             // 0x0061a05d    8bcd
                         call              _jmp_addr_0x00839970                                 // 0x0061a05f    e80cf92100
                         {disp32} mov      edi, dword ptr [esp + 0x000000f0]                    // 0x0061a064    8bbc24f0000000
                         test              edi, edi                                             // 0x0061a06b    85ff
                         {disp8} je        _jmp_addr_0x0061a0b5                                 // 0x0061a06d    7446
                         test              ebx, ebx                                             // 0x0061a06f    85db
                         {disp8} je        _jmp_addr_0x0061a0b5                                 // 0x0061a071    7442
                         push              0x00000683                                           // 0x0061a073    6883060000
                         push              0x00bf42d0                                           // 0x0061a078    68d042bf00
                         push              0x38                                                 // 0x0061a07d    6a38
                         call              ___nw__FUl                                           // 0x0061a07f    e80c171c00
                         add               esp, 0x0c                                            // 0x0061a084    83c40c
                         test              eax, eax                                             // 0x0061a087    85c0
                         {disp8} je        _jmp_addr_0x0061a096                                 // 0x0061a089    740b
                         push              edi                                                  // 0x0061a08b    57
                         push              esi                                                  // 0x0061a08c    56
                         mov.s             ecx, eax                                             // 0x0061a08d    8bc8
                         call              _jmp_addr_0x0085f690                                 // 0x0061a08f    e8fc552400
                         {disp8} jmp       _jmp_addr_0x0061a098                                 // 0x0061a094    eb02
_jmp_addr_0x0061a096:    xor.s             eax, eax                                             // 0x0061a096    33c0
_jmp_addr_0x0061a098:    test              esi, esi                                             // 0x0061a098    85f6
                         {disp8} mov       edx, dword ptr [esp + 0x10]                          // 0x0061a09a    8b542410
                         mov               dword ptr [edx + ebx * 0x4], eax                     // 0x0061a09e    89049a
                         {disp8} je        _jmp_addr_0x0061a0bc                                 // 0x0061a0a1    7419
                         mov.s             ecx, esi                                             // 0x0061a0a3    8bce
                         call              _jmp_addr_0x0085e490                                 // 0x0061a0a5    e8e6432400
                         push              esi                                                  // 0x0061a0aa    56
                         call              ??3@YAXPAX@Z                                         // 0x0061a0ab    e8e84d1900
                         add               esp, 0x04                                            // 0x0061a0b0    83c404
                         {disp8} jmp       _jmp_addr_0x0061a0bc                                 // 0x0061a0b3    eb07
_jmp_addr_0x0061a0b5:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0061a0b5    8b442410
                         mov               dword ptr [eax + ebx * 0x4], esi                     // 0x0061a0b9    893498
_jmp_addr_0x0061a0bc:    {disp8} mov       ecx, dword ptr [esp + 0x10]                          // 0x0061a0bc    8b4c2410
                         pop               edi                                                  // 0x0061a0c0    5f
                         pop               esi                                                  // 0x0061a0c1    5e
                         pop               ebp                                                  // 0x0061a0c2    5d
                         {disp32} mov      dword ptr [ecx + ebx * 0x4 + 0x000003a0], 0x00000002 // 0x0061a0c3    c78499a003000002000000
                         mov               eax, 0x00000001                                      // 0x0061a0ce    b801000000
                         pop               ebx                                                  // 0x0061a0d3    5b
                         add               esp, 0x000000c4                                      // 0x0061a0d4    81c4c4000000
                         ret               0x0034                                               // 0x0061a0da    c23400
                         nop                                                                    // 0x0061a0dd    90
                         nop                                                                    // 0x0061a0de    90
                         nop                                                                    // 0x0061a0df    90
_globl_ct_0x0061a0e0:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                         // 0x0061a0e0    8a0d34c9fa00
                         mov               al, 0x01                                             // 0x0061a0e6    b001
                         test              al, cl                                               // 0x0061a0e8    84c8
                         {disp8} jne       _jmp_addr_0x0061a0f4                                 // 0x0061a0ea    7508
                         or.s              cl, al                                               // 0x0061a0ec    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                         // 0x0061a0ee    880d34c9fa00
_jmp_addr_0x0061a0f4:    {disp32} jmp      _jmp_addr_0x0061a100                                 // 0x0061a0f4    e907000000
                         nop                                                                    // 0x0061a0f9    90
                         nop                                                                    // 0x0061a0fa    90
                         nop                                                                    // 0x0061a0fb    90
                         nop                                                                    // 0x0061a0fc    90
                         nop                                                                    // 0x0061a0fd    90
                         nop                                                                    // 0x0061a0fe    90
                         nop                                                                    // 0x0061a0ff    90
_jmp_addr_0x0061a100:    push              0x00407870                                           // 0x0061a100    6870784000
                         call              _atexit                                              // 0x0061a105    e887b61a00
                         pop               ecx                                                  // 0x0061a10a    59
                         ret                                                                    // 0x0061a10b    c3
                         nop                                                                    // 0x0061a10c    90
                         nop                                                                    // 0x0061a10d    90
                         nop                                                                    // 0x0061a10e    90
                         nop                                                                    // 0x0061a10f    90
?ProcessPosition@CMouse@@QAEXXZ:
                         sub               esp, 0x08                                            // 0x0061a110    83ec08
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf2c0]               // 0x0061a113    a1c052e800
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4bf2c4]               // 0x0061a118    8b0dc452e800
                         {disp8} mov       dword ptr [esp + 0x00], eax                          // 0x0061a11e    89442400
                         {disp8} mov       dword ptr [esp + 0x00], eax                          // 0x0061a122    89442400
                         {disp8} lea       eax, dword ptr [esp + 0x00]                          // 0x0061a126    8d442400
                         {disp8} mov       dword ptr [esp + 0x04], ecx                          // 0x0061a12a    894c2404
                         push              eax                                                  // 0x0061a12e    50
                         {disp8} mov       dword ptr [esp + 0x08], ecx                          // 0x0061a12f    894c2408
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a133    8b0d5c19d000
                         push              0x0                                                  // 0x0061a139    6a00
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a13b    e810b7f3ff
                         mov.s             ecx, eax                                             // 0x0061a140    8bc8
                         call              ?SendMessageA@GInterface@@QAE_NW4INTERFACE_MESSAGE_TYPES@@PAULHCoord@@@Z                                 // 0x0061a142    e839fcfbff
                         add               esp, 0x08                                            // 0x0061a147    83c408
                         ret                                                                    // 0x0061a14a    c3
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                                 // 0x0061a14b    e8a976deff
?ProcessButtons@CMouse@@QAEXXZ:
                         {disp32} mov      al, byte ptr [rdata_bytes + 0xf8620]                 // 0x0061a150    a020169a00
                         push              ebp                                                  // 0x0061a155    55
                         push              esi                                                  // 0x0061a156    56
                         push              edi                                                  // 0x0061a157    57
                         mov.s             edi, ecx                                             // 0x0061a158    8bf9
                         test              byte ptr [data_bytes + 0x4bf478], al                 // 0x0061a15a    84057854e800
                         {disp32} jne      _jmp_addr_0x0061a40d                                 // 0x0061a160    0f85a7020000
                         {disp32} mov      al, byte ptr [data_bytes + 0x4bf350]                 // 0x0061a166    a05053e800
                         test              al, 0x04                                             // 0x0061a16b    a804
                         {disp8} je        _jmp_addr_0x0061a175                                 // 0x0061a16d    7406
                         {disp32} inc      dword ptr [data_bytes + 0x286d08]                    // 0x0061a16f    ff0508cdc400
_jmp_addr_0x0061a175:    test              al, 0x08                                             // 0x0061a175    a808
                         {disp8} je        _jmp_addr_0x0061a17f                                 // 0x0061a177    7406
                         {disp32} inc      dword ptr [data_bytes + 0x286d08]                    // 0x0061a179    ff0508cdc400
_jmp_addr_0x0061a17f:    test              al, 0x01                                             // 0x0061a17f    a801
                         {disp8} je        _jmp_addr_0x0061a1b9                                 // 0x0061a181    7436
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d04]               // 0x0061a183    8b0d04cdc400
                         mov               ebp, 0x00000001                                      // 0x0061a189    bd01000000
                         push              ebp                                                  // 0x0061a18e    55
                         inc               ecx                                                  // 0x0061a18f    41
                         push              0x0                                                  // 0x0061a190    6a00
                         {disp32} mov      dword ptr [data_bytes + 0x286d04], ecx               // 0x0061a192    890d04cdc400
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a198    8b0d5c19d000
                         push              0x0                                                  // 0x0061a19e    6a00
                         call              ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z       // 0x0061a1a0    e88b560200
                         cmp.s             eax, ebp                                             // 0x0061a1a5    3bc5
                         {disp32} mov      al, byte ptr [data_bytes + 0x4bf350]                 // 0x0061a1a7    a05053e800
                         {disp8} jne       _jmp_addr_0x0061a1be                                 // 0x0061a1ac    7510
                         pop               edi                                                  // 0x0061a1ae    5f
                         and               al, -0x02                                            // 0x0061a1af    24fe
                         pop               esi                                                  // 0x0061a1b1    5e
                         {disp32} mov      byte ptr [data_bytes + 0x4bf350], al                 // 0x0061a1b2    a25053e800
                         pop               ebp                                                  // 0x0061a1b7    5d
                         ret                                                                    // 0x0061a1b8    c3
_jmp_addr_0x0061a1b9:    mov               ebp, 0x00000001                                      // 0x0061a1b9    bd01000000
_jmp_addr_0x0061a1be:    test              al, 0x02                                             // 0x0061a1be    a802
                         {disp8} je        _jmp_addr_0x0061a1f4                                 // 0x0061a1c0    7432
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d04]               // 0x0061a1c2    8b0d04cdc400
                         push              0x5                                                  // 0x0061a1c8    6a05
                         inc               ecx                                                  // 0x0061a1ca    41
                         push              0x0                                                  // 0x0061a1cb    6a00
                         {disp32} mov      dword ptr [data_bytes + 0x286d04], ecx               // 0x0061a1cd    890d04cdc400
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a1d3    8b0d5c19d000
                         push              0x0                                                  // 0x0061a1d9    6a00
                         call              ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z       // 0x0061a1db    e850560200
                         cmp.s             eax, ebp                                             // 0x0061a1e0    3bc5
                         {disp32} mov      al, byte ptr [data_bytes + 0x4bf350]                 // 0x0061a1e2    a05053e800
                         {disp8} jne       _jmp_addr_0x0061a1f4                                 // 0x0061a1e7    750b
                         pop               edi                                                  // 0x0061a1e9    5f
                         and               al, -0x03                                            // 0x0061a1ea    24fd
                         pop               esi                                                  // 0x0061a1ec    5e
                         {disp32} mov      byte ptr [data_bytes + 0x4bf350], al                 // 0x0061a1ed    a25053e800
                         pop               ebp                                                  // 0x0061a1f2    5d
                         ret                                                                    // 0x0061a1f3    c3
_jmp_addr_0x0061a1f4:    test              al, 0x40                                             // 0x0061a1f4    a840
                         {disp8} je        _jmp_addr_0x0061a21d                                 // 0x0061a1f6    7425
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a1f8    8b0d5c19d000
                         push              0x2                                                  // 0x0061a1fe    6a02
                         push              0x0                                                  // 0x0061a200    6a00
                         push              0x0                                                  // 0x0061a202    6a00
                         call              ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z       // 0x0061a204    e827560200
                         cmp.s             eax, ebp                                             // 0x0061a209    3bc5
                         {disp32} mov      al, byte ptr [data_bytes + 0x4bf350]                 // 0x0061a20b    a05053e800
                         {disp8} jne       _jmp_addr_0x0061a21d                                 // 0x0061a210    750b
                         pop               edi                                                  // 0x0061a212    5f
                         and               al, -0x41                                            // 0x0061a213    24bf
                         pop               esi                                                  // 0x0061a215    5e
                         {disp32} mov      byte ptr [data_bytes + 0x4bf350], al                 // 0x0061a216    a25053e800
                         pop               ebp                                                  // 0x0061a21b    5d
                         ret                                                                    // 0x0061a21c    c3
_jmp_addr_0x0061a21d:    {disp32} mov      ecx, dword ptr [data_bytes + 0x4bf300]               // 0x0061a21d    8b0d0053e800
                         test              ecx, ecx                                             // 0x0061a223    85c9
                         {disp8} je        _jmp_addr_0x0061a298                                 // 0x0061a225    7471
                         {disp8} jge       _jmp_addr_0x0061a25e                                 // 0x0061a227    7d35
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a229    8b0d5c19d000
                         push              0x4                                                  // 0x0061a22f    6a04
                         push              0x0                                                  // 0x0061a231    6a00
                         push              0x0                                                  // 0x0061a233    6a00
                         call              ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z       // 0x0061a235    e8f6550200
                         cmp.s             eax, ebp                                             // 0x0061a23a    3bc5
                         {disp8} jne       _jmp_addr_0x0061a293                                 // 0x0061a23c    7555
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4bf300]               // 0x0061a23e    8b0d0053e800
                         {disp32} mov      eax, dword ptr [data_bytes + 0x2988d8]               // 0x0061a244    a1d8e8c500
                         pop               edi                                                  // 0x0061a249    5f
                         add.s             eax, ecx                                             // 0x0061a24a    03c1
                         pop               esi                                                  // 0x0061a24c    5e
                         {disp32} mov      dword ptr [data_bytes + 0x2988d8], eax               // 0x0061a24d    a3d8e8c500
                         {disp32} mov      dword ptr [data_bytes + 0x4bf300], 0x00000000        // 0x0061a252    c7050053e80000000000
                         pop               ebp                                                  // 0x0061a25c    5d
                         ret                                                                    // 0x0061a25d    c3
_jmp_addr_0x0061a25e:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a25e    8b0d5c19d000
                         push              0x3                                                  // 0x0061a264    6a03
                         push              0x0                                                  // 0x0061a266    6a00
                         push              0x0                                                  // 0x0061a268    6a00
                         call              ?ProcessBindableKeys@GGame@@QAEIW4LH_KEY@@0K@Z       // 0x0061a26a    e8c1550200
                         cmp.s             eax, ebp                                             // 0x0061a26f    3bc5
                         {disp8} jne       _jmp_addr_0x0061a293                                 // 0x0061a271    7520
                         {disp32} mov      edx, dword ptr [data_bytes + 0x4bf300]               // 0x0061a273    8b150053e800
                         {disp32} mov      eax, dword ptr [data_bytes + 0x2988d8]               // 0x0061a279    a1d8e8c500
                         pop               edi                                                  // 0x0061a27e    5f
                         add.s             eax, edx                                             // 0x0061a27f    03c2
                         pop               esi                                                  // 0x0061a281    5e
                         {disp32} mov      dword ptr [data_bytes + 0x2988d8], eax               // 0x0061a282    a3d8e8c500
                         {disp32} mov      dword ptr [data_bytes + 0x4bf300], 0x00000000        // 0x0061a287    c7050053e80000000000
                         pop               ebp                                                  // 0x0061a291    5d
                         ret                                                                    // 0x0061a292    c3
_jmp_addr_0x0061a293:    {disp32} mov      al, byte ptr [data_bytes + 0x4bf350]                 // 0x0061a293    a05053e800
_jmp_addr_0x0061a298:    {disp32} mov      cl, byte ptr [data_bytes + 0x286cee]                 // 0x0061a298    8a0deeccc400
                         test              cl, cl                                               // 0x0061a29e    84c9
                         {disp32} je       _jmp_addr_0x0061a338                                 // 0x0061a2a0    0f8492000000
                         {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a2a6    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], ebp                    // 0x0061a2ac    39a9285a2000
                         {disp8} jne       _jmp_addr_0x0061a2de                                 // 0x0061a2b2    752a
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a2b4    e897b5f3ff
                         {disp32} mov      ecx, dword ptr [eax + 0x0000042c]                    // 0x0061a2b9    8b882c040000
                         {disp32} mov      edx, dword ptr [eax + 0x00000428]                    // 0x0061a2bf    8b9028040000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x0061a2c5    a15c19d000
                         push              0x7                                                  // 0x0061a2ca    6a07
                         push              ecx                                                  // 0x0061a2cc    51
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]                    // 0x0061a2cd    8b88b4590000
                         push              edx                                                  // 0x0061a2d3    52
                         call              _jmp_addr_0x007947c0                                 // 0x0061a2d4    e8e7a41700
                         {disp32} mov      al, byte ptr [data_bytes + 0x4bf350]                 // 0x0061a2d9    a05053e800
_jmp_addr_0x0061a2de:    test              al, 0x10                                             // 0x0061a2de    a810
                         {disp8} je        _jmp_addr_0x0061a309                                 // 0x0061a2e0    7427
                         {disp32} mov      esi, dword ptr [data_bytes + 0x286d10]               // 0x0061a2e2    8b3510cdc400
                         {disp32} mov      edx, dword ptr [data_bytes + 0x286d18]               // 0x0061a2e8    8b1518cdc400
                         or.s              esi, ebp                                             // 0x0061a2ee    0bf5
                         or.s              edx, ebp                                             // 0x0061a2f0    0bd5
                         pop               edi                                                  // 0x0061a2f2    5f
                         {disp32} mov      dword ptr [data_bytes + 0x286d10], esi               // 0x0061a2f3    893510cdc400
                         and               al, -0x11                                            // 0x0061a2f9    24ef
                         pop               esi                                                  // 0x0061a2fb    5e
                         {disp32} mov      dword ptr [data_bytes + 0x286d18], edx               // 0x0061a2fc    891518cdc400
                         {disp32} mov      byte ptr [data_bytes + 0x4bf350], al                 // 0x0061a302    a25053e800
                         pop               ebp                                                  // 0x0061a307    5d
                         ret                                                                    // 0x0061a308    c3
_jmp_addr_0x0061a309:    test              al, 0x20                                             // 0x0061a309    a820
                         {disp32} je       _jmp_addr_0x0061a3fc                                 // 0x0061a30b    0f84eb000000
                         {disp32} mov      esi, dword ptr [data_bytes + 0x286d10]               // 0x0061a311    8b3510cdc400
                         {disp32} mov      edx, dword ptr [data_bytes + 0x286d18]               // 0x0061a317    8b1518cdc400
                         or.s              esi, ebp                                             // 0x0061a31d    0bf5
                         or.s              edx, ebp                                             // 0x0061a31f    0bd5
                         pop               edi                                                  // 0x0061a321    5f
                         {disp32} mov      dword ptr [data_bytes + 0x286d10], esi               // 0x0061a322    893510cdc400
                         and               al, -0x21                                            // 0x0061a328    24df
                         pop               esi                                                  // 0x0061a32a    5e
                         {disp32} mov      dword ptr [data_bytes + 0x286d18], edx               // 0x0061a32b    891518cdc400
                         {disp32} mov      byte ptr [data_bytes + 0x4bf350], al                 // 0x0061a331    a25053e800
                         pop               ebp                                                  // 0x0061a336    5d
                         ret                                                                    // 0x0061a337    c3
_jmp_addr_0x0061a338:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a338    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250300]                    // 0x0061a33e    8b8900032500
                         xor.s             esi, esi                                             // 0x0061a344    33f6
                         call              _jmp_addr_0x00471130                                 // 0x0061a346    e8e56de5ff
                         test              eax, eax                                             // 0x0061a34b    85c0
                         {disp8} je        _jmp_addr_0x0061a358                                 // 0x0061a34d    7409
                         mov.s             ecx, edi                                             // 0x0061a34f    8bcf
                         call              _jmp_addr_0x0061a4c0                                 // 0x0061a351    e86a010000
                         mov.s             esi, ebp                                             // 0x0061a356    8bf5
_jmp_addr_0x0061a358:    {disp32} mov      edx, dword ptr [_game]                               // 0x0061a358    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x00250300]                    // 0x0061a35e    8b8a00032500
                         call              _jmp_addr_0x00470e80                                 // 0x0061a364    e8176be5ff
                         test              eax, eax                                             // 0x0061a369    85c0
                         {disp8} je        _jmp_addr_0x0061a376                                 // 0x0061a36b    7409
                         mov.s             ecx, edi                                             // 0x0061a36d    8bcf
                         call              _jmp_addr_0x0061a420                                 // 0x0061a36f    e8ac000000
                         or.s              esi, ebp                                             // 0x0061a374    0bf5
_jmp_addr_0x0061a376:    {disp32} mov      eax, dword ptr [_game]                               // 0x0061a376    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x0061a37b    8b8800032500
                         call              _jmp_addr_0x00471170                                 // 0x0061a381    e8ea6de5ff
                         test              eax, eax                                             // 0x0061a386    85c0
                         {disp8} je        _jmp_addr_0x0061a393                                 // 0x0061a388    7409
                         mov.s             ecx, edi                                             // 0x0061a38a    8bcf
                         call              _jmp_addr_0x0061a530                                 // 0x0061a38c    e89f010000
                         or.s              esi, ebp                                             // 0x0061a391    0bf5
_jmp_addr_0x0061a393:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a393    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00250300]                    // 0x0061a399    8b8900032500
                         call              _jmp_addr_0x00470de0                                 // 0x0061a39f    e83c6ae5ff
                         test              eax, eax                                             // 0x0061a3a4    85c0
                         {disp8} je        _jmp_addr_0x0061a3b1                                 // 0x0061a3a6    7409
                         mov.s             ecx, edi                                             // 0x0061a3a8    8bcf
                         call              _jmp_addr_0x0061a510                                 // 0x0061a3aa    e861010000
                         or.s              esi, ebp                                             // 0x0061a3af    0bf5
_jmp_addr_0x0061a3b1:    {disp32} mov      edx, dword ptr [_game]                               // 0x0061a3b1    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x00250300]                    // 0x0061a3b7    8b8a00032500
                         call              _jmp_addr_0x00470b30                                 // 0x0061a3bd    e86e67e5ff
                         test              eax, eax                                             // 0x0061a3c2    85c0
                         {disp8} je        _jmp_addr_0x0061a3cf                                 // 0x0061a3c4    7409
                         mov.s             ecx, edi                                             // 0x0061a3c6    8bcf
                         call              _jmp_addr_0x0061a470                                 // 0x0061a3c8    e8a3000000
                         or.s              esi, ebp                                             // 0x0061a3cd    0bf5
_jmp_addr_0x0061a3cf:    {disp32} mov      eax, dword ptr [_game]                               // 0x0061a3cf    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250300]                    // 0x0061a3d4    8b8800032500
                         call              _jmp_addr_0x00470e20                                 // 0x0061a3da    e8416ae5ff
                         test              eax, eax                                             // 0x0061a3df    85c0
                         {disp8} je        _jmp_addr_0x0061a3ec                                 // 0x0061a3e1    7409
                         mov.s             ecx, edi                                             // 0x0061a3e3    8bcf
                         call              _jmp_addr_0x0061a580                                 // 0x0061a3e5    e896010000
                         or.s              esi, ebp                                             // 0x0061a3ea    0bf5
_jmp_addr_0x0061a3ec:    test              esi, esi                                             // 0x0061a3ec    85f6
                         {disp8} jne       _jmp_addr_0x0061a3f7                                 // 0x0061a3ee    7507
                         mov.s             ecx, edi                                             // 0x0061a3f0    8bcf
                         call              _jmp_addr_0x0061a5d0                                 // 0x0061a3f2    e8d9010000
_jmp_addr_0x0061a3f7:    {disp32} mov      al, byte ptr [data_bytes + 0x4bf350]                 // 0x0061a3f7    a05053e800
_jmp_addr_0x0061a3fc:    and               al, -0x02                                            // 0x0061a3fc    24fe
                         and               al, -0x03                                            // 0x0061a3fe    24fd
                         and               al, -0x11                                            // 0x0061a400    24ef
                         and               al, -0x21                                            // 0x0061a402    24df
                         and               al, -0x05                                            // 0x0061a404    24fb
                         and               al, -0x09                                            // 0x0061a406    24f7
                         {disp32} mov      byte ptr [data_bytes + 0x4bf350], al                 // 0x0061a408    a25053e800
_jmp_addr_0x0061a40d:    pop               edi                                                  // 0x0061a40d    5f
                         pop               esi                                                  // 0x0061a40e    5e
                         pop               ebp                                                  // 0x0061a40f    5d
                         ret                                                                    // 0x0061a410    c3
                         nop                                                                    // 0x0061a411    90
                         nop                                                                    // 0x0061a412    90
                         nop                                                                    // 0x0061a413    90
                         nop                                                                    // 0x0061a414    90
                         nop                                                                    // 0x0061a415    90
                         nop                                                                    // 0x0061a416    90
                         nop                                                                    // 0x0061a417    90
                         nop                                                                    // 0x0061a418    90
                         nop                                                                    // 0x0061a419    90
                         nop                                                                    // 0x0061a41a    90
                         nop                                                                    // 0x0061a41b    90
                         nop                                                                    // 0x0061a41c    90
                         nop                                                                    // 0x0061a41d    90
                         nop                                                                    // 0x0061a41e    90
                         nop                                                                    // 0x0061a41f    90
_jmp_addr_0x0061a420:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a420    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], 0x01                   // 0x0061a426    83b9285a200001
                         {disp8} jne       _jmp_addr_0x0061a455                                 // 0x0061a42d    7526
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a42f    e81cb4f3ff
                         {disp32} mov      ecx, dword ptr [eax + 0x0000042c]                    // 0x0061a434    8b882c040000
                         {disp32} mov      edx, dword ptr [eax + 0x00000428]                    // 0x0061a43a    8b9028040000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x0061a440    a15c19d000
                         push              0x1                                                  // 0x0061a445    6a01
                         push              ecx                                                  // 0x0061a447    51
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]                    // 0x0061a448    8b88b4590000
                         push              edx                                                  // 0x0061a44e    52
                         call              _jmp_addr_0x007947c0                                 // 0x0061a44f    e86ca31700
                         ret                                                                    // 0x0061a454    c3
_jmp_addr_0x0061a455:    push              0x1                                                  // 0x0061a455    6a01
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a457    e8f4b3f3ff
                         mov.s             ecx, eax                                             // 0x0061a45c    8bc8
                         call              _jmp_addr_0x005d9dd0                                 // 0x0061a45e    e86df9fbff
                         ret                                                                    // 0x0061a463    c3
                         nop                                                                    // 0x0061a464    90
                         nop                                                                    // 0x0061a465    90
                         nop                                                                    // 0x0061a466    90
                         nop                                                                    // 0x0061a467    90
                         nop                                                                    // 0x0061a468    90
                         nop                                                                    // 0x0061a469    90
                         nop                                                                    // 0x0061a46a    90
                         nop                                                                    // 0x0061a46b    90
                         nop                                                                    // 0x0061a46c    90
                         nop                                                                    // 0x0061a46d    90
                         nop                                                                    // 0x0061a46e    90
                         nop                                                                    // 0x0061a46f    90
_jmp_addr_0x0061a470:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a470    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], 0x01                   // 0x0061a476    83b9285a200001
                         {disp8} jne       _jmp_addr_0x0061a4a5                                 // 0x0061a47d    7526
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a47f    e8ccb3f3ff
                         {disp32} mov      ecx, dword ptr [eax + 0x0000042c]                    // 0x0061a484    8b882c040000
                         {disp32} mov      edx, dword ptr [eax + 0x00000428]                    // 0x0061a48a    8b9028040000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x0061a490    a15c19d000
                         push              0x3                                                  // 0x0061a495    6a03
                         push              ecx                                                  // 0x0061a497    51
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]                    // 0x0061a498    8b88b4590000
                         push              edx                                                  // 0x0061a49e    52
                         call              _jmp_addr_0x007947c0                                 // 0x0061a49f    e81ca31700
                         ret                                                                    // 0x0061a4a4    c3
_jmp_addr_0x0061a4a5:    push              0x3                                                  // 0x0061a4a5    6a03
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a4a7    e8a4b3f3ff
                         mov.s             ecx, eax                                             // 0x0061a4ac    8bc8
                         call              _jmp_addr_0x005d9dd0                                 // 0x0061a4ae    e81df9fbff
                         ret                                                                    // 0x0061a4b3    c3
                         nop                                                                    // 0x0061a4b4    90
                         nop                                                                    // 0x0061a4b5    90
                         nop                                                                    // 0x0061a4b6    90
                         nop                                                                    // 0x0061a4b7    90
                         nop                                                                    // 0x0061a4b8    90
                         nop                                                                    // 0x0061a4b9    90
                         nop                                                                    // 0x0061a4ba    90
                         nop                                                                    // 0x0061a4bb    90
                         nop                                                                    // 0x0061a4bc    90
                         nop                                                                    // 0x0061a4bd    90
                         nop                                                                    // 0x0061a4be    90
                         nop                                                                    // 0x0061a4bf    90
_jmp_addr_0x0061a4c0:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a4c0    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], 0x01                   // 0x0061a4c6    83b9285a200001
                         {disp8} jne       _jmp_addr_0x0061a4f5                                 // 0x0061a4cd    7526
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a4cf    e87cb3f3ff
                         {disp32} mov      ecx, dword ptr [eax + 0x0000042c]                    // 0x0061a4d4    8b882c040000
                         {disp32} mov      edx, dword ptr [eax + 0x00000428]                    // 0x0061a4da    8b9028040000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x0061a4e0    a15c19d000
                         push              0x5                                                  // 0x0061a4e5    6a05
                         push              ecx                                                  // 0x0061a4e7    51
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]                    // 0x0061a4e8    8b88b4590000
                         push              edx                                                  // 0x0061a4ee    52
                         call              _jmp_addr_0x007947c0                                 // 0x0061a4ef    e8cca21700
                         ret                                                                    // 0x0061a4f4    c3
_jmp_addr_0x0061a4f5:    push              0x5                                                  // 0x0061a4f5    6a05
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a4f7    e854b3f3ff
                         mov.s             ecx, eax                                             // 0x0061a4fc    8bc8
                         call              _jmp_addr_0x005d9dd0                                 // 0x0061a4fe    e8cdf8fbff
                         ret                                                                    // 0x0061a503    c3
                         nop                                                                    // 0x0061a504    90
                         nop                                                                    // 0x0061a505    90
                         nop                                                                    // 0x0061a506    90
                         nop                                                                    // 0x0061a507    90
                         nop                                                                    // 0x0061a508    90
                         nop                                                                    // 0x0061a509    90
                         nop                                                                    // 0x0061a50a    90
                         nop                                                                    // 0x0061a50b    90
                         nop                                                                    // 0x0061a50c    90
                         nop                                                                    // 0x0061a50d    90
                         nop                                                                    // 0x0061a50e    90
                         nop                                                                    // 0x0061a50f    90
_jmp_addr_0x0061a510:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a510    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], 0x01                   // 0x0061a516    83b9285a200001
                         {disp8} je        _jmp_addr_0x0061a52d                                 // 0x0061a51d    740e
                         push              0x6                                                  // 0x0061a51f    6a06
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a521    e82ab3f3ff
                         mov.s             ecx, eax                                             // 0x0061a526    8bc8
                         call              _jmp_addr_0x005d9dd0                                 // 0x0061a528    e8a3f8fbff
_jmp_addr_0x0061a52d:    ret                                                                    // 0x0061a52d    c3
                         nop                                                                    // 0x0061a52e    90
                         nop                                                                    // 0x0061a52f    90
_jmp_addr_0x0061a530:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a530    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], 0x01                   // 0x0061a536    83b9285a200001
                         {disp8} jne       _jmp_addr_0x0061a565                                 // 0x0061a53d    7526
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a53f    e80cb3f3ff
                         {disp32} mov      ecx, dword ptr [eax + 0x0000042c]                    // 0x0061a544    8b882c040000
                         {disp32} mov      edx, dword ptr [eax + 0x00000428]                    // 0x0061a54a    8b9028040000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x0061a550    a15c19d000
                         push              0x2                                                  // 0x0061a555    6a02
                         push              ecx                                                  // 0x0061a557    51
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]                    // 0x0061a558    8b88b4590000
                         push              edx                                                  // 0x0061a55e    52
                         call              _jmp_addr_0x007947c0                                 // 0x0061a55f    e85ca21700
                         ret                                                                    // 0x0061a564    c3
_jmp_addr_0x0061a565:    push              0x2                                                  // 0x0061a565    6a02
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a567    e8e4b2f3ff
                         mov.s             ecx, eax                                             // 0x0061a56c    8bc8
                         call              _jmp_addr_0x005d9dd0                                 // 0x0061a56e    e85df8fbff
                         ret                                                                    // 0x0061a573    c3
                         nop                                                                    // 0x0061a574    90
                         nop                                                                    // 0x0061a575    90
                         nop                                                                    // 0x0061a576    90
                         nop                                                                    // 0x0061a577    90
                         nop                                                                    // 0x0061a578    90
                         nop                                                                    // 0x0061a579    90
                         nop                                                                    // 0x0061a57a    90
                         nop                                                                    // 0x0061a57b    90
                         nop                                                                    // 0x0061a57c    90
                         nop                                                                    // 0x0061a57d    90
                         nop                                                                    // 0x0061a57e    90
                         nop                                                                    // 0x0061a57f    90
_jmp_addr_0x0061a580:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a580    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], 0x01                   // 0x0061a586    83b9285a200001
                         {disp8} jne       _jmp_addr_0x0061a5b5                                 // 0x0061a58d    7526
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a58f    e8bcb2f3ff
                         {disp32} mov      ecx, dword ptr [eax + 0x0000042c]                    // 0x0061a594    8b882c040000
                         {disp32} mov      edx, dword ptr [eax + 0x00000428]                    // 0x0061a59a    8b9028040000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x0061a5a0    a15c19d000
                         push              0x4                                                  // 0x0061a5a5    6a04
                         push              ecx                                                  // 0x0061a5a7    51
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]                    // 0x0061a5a8    8b88b4590000
                         push              edx                                                  // 0x0061a5ae    52
                         call              _jmp_addr_0x007947c0                                 // 0x0061a5af    e80ca21700
                         ret                                                                    // 0x0061a5b4    c3
_jmp_addr_0x0061a5b5:    push              0x4                                                  // 0x0061a5b5    6a04
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a5b7    e894b2f3ff
                         mov.s             ecx, eax                                             // 0x0061a5bc    8bc8
                         call              _jmp_addr_0x005d9dd0                                 // 0x0061a5be    e80df8fbff
                         ret                                                                    // 0x0061a5c3    c3
                         nop                                                                    // 0x0061a5c4    90
                         nop                                                                    // 0x0061a5c5    90
                         nop                                                                    // 0x0061a5c6    90
                         nop                                                                    // 0x0061a5c7    90
                         nop                                                                    // 0x0061a5c8    90
                         nop                                                                    // 0x0061a5c9    90
                         nop                                                                    // 0x0061a5ca    90
                         nop                                                                    // 0x0061a5cb    90
                         nop                                                                    // 0x0061a5cc    90
                         nop                                                                    // 0x0061a5cd    90
                         nop                                                                    // 0x0061a5ce    90
                         nop                                                                    // 0x0061a5cf    90
_jmp_addr_0x0061a5d0:    {disp32} mov      ecx, dword ptr [_game]                               // 0x0061a5d0    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x00205a28], 0x01                   // 0x0061a5d6    83b9285a200001
                         {disp8} jne       _jmp_addr_0x0061a604                                 // 0x0061a5dd    7525
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x0061a5df    e86cb2f3ff
                         {disp32} mov      ecx, dword ptr [eax + 0x0000042c]                    // 0x0061a5e4    8b882c040000
                         {disp32} mov      edx, dword ptr [eax + 0x00000428]                    // 0x0061a5ea    8b9028040000
                         {disp32} mov      eax, dword ptr [_game]                               // 0x0061a5f0    a15c19d000
                         push              0x7                                                  // 0x0061a5f5    6a07
                         push              ecx                                                  // 0x0061a5f7    51
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]                    // 0x0061a5f8    8b88b4590000
                         push              edx                                                  // 0x0061a5fe    52
                         call              _jmp_addr_0x007947c0                                 // 0x0061a5ff    e8bca11700
_jmp_addr_0x0061a604:    ret                                                                    // 0x0061a604    c3
                         nop                                                                    // 0x0061a605    90
                         nop                                                                    // 0x0061a606    90
                         nop                                                                    // 0x0061a607    90
                         nop                                                                    // 0x0061a608    90
                         nop                                                                    // 0x0061a609    90
                         nop                                                                    // 0x0061a60a    90
                         nop                                                                    // 0x0061a60b    90
                         nop                                                                    // 0x0061a60c    90
                         nop                                                                    // 0x0061a60d    90
                         nop                                                                    // 0x0061a60e    90
                         nop                                                                    // 0x0061a60f    90
_globl_ct_0x0061a610:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                         // 0x0061a610    8a0d34c9fa00
                         mov               al, 0x01                                             // 0x0061a616    b001
                         test              al, cl                                               // 0x0061a618    84c8
                         {disp8} jne       _jmp_addr_0x0061a624                                 // 0x0061a61a    7508
                         or.s              cl, al                                               // 0x0061a61c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                         // 0x0061a61e    880d34c9fa00
_jmp_addr_0x0061a624:    {disp32} jmp      _jmp_addr_0x0061a630                                 // 0x0061a624    e907000000
                         nop                                                                    // 0x0061a629    90
                         nop                                                                    // 0x0061a62a    90
                         nop                                                                    // 0x0061a62b    90
                         nop                                                                    // 0x0061a62c    90
                         nop                                                                    // 0x0061a62d    90
                         nop                                                                    // 0x0061a62e    90
                         nop                                                                    // 0x0061a62f    90
_jmp_addr_0x0061a630:    push              0x00407870                                           // 0x0061a630    6870784000
                         call              _atexit                                              // 0x0061a635    e857b11a00
                         pop               ecx                                                  // 0x0061a63a    59
                         ret                                                                    // 0x0061a63b    c3
                         nop                                                                    // 0x0061a63c    90
                         nop                                                                    // 0x0061a63d    90
                         nop                                                                    // 0x0061a63e    90
                         nop                                                                    // 0x0061a63f    90
_globl_ct_0x0061a640:    {disp32} jmp      _jmp_addr_0x0061a650                                 // 0x0061a640    e90b000000
                         nop                                                                    // 0x0061a645    90
                         nop                                                                    // 0x0061a646    90
                         nop                                                                    // 0x0061a647    90
                         nop                                                                    // 0x0061a648    90
                         nop                                                                    // 0x0061a649    90
                         nop                                                                    // 0x0061a64a    90
                         nop                                                                    // 0x0061a64b    90
                         nop                                                                    // 0x0061a64c    90
                         nop                                                                    // 0x0061a64d    90
                         nop                                                                    // 0x0061a64e    90
                         nop                                                                    // 0x0061a64f    90
_jmp_addr_0x0061a650:    {disp32} mov      dword ptr [data_bytes + 0x37900c], 0xffffffff        // 0x0061a650    c7050cf0d300ffffffff
                         ret                                                                    // 0x0061a65a    c3
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                                 // 0x0061a65b    e89971deff
_jmp_addr_0x0061a660:    {disp8} mov       eax, dword ptr [esp + 0x04]                          // 0x0061a660    8b442404
                         push              ebx                                                  // 0x0061a664    53
                         push              ebp                                                  // 0x0061a665    55
                         push              esi                                                  // 0x0061a666    56
                         mov.s             esi, ecx                                             // 0x0061a667    8bf1
                         {disp8} mov       dword ptr [esi + 0x10], eax                          // 0x0061a669    894610
                         {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x0061a66c    8b442414
                         push              edi                                                  // 0x0061a670    57
                         {disp8} mov       dword ptr [esi + 0x14], eax                          // 0x0061a671    894614
                         push              0x1f                                                 // 0x0061a674    6a1f
                         {disp8} lea       eax, dword ptr [eax + eax * 0x4 + 0x05]              // 0x0061a676    8d448005
                         lea               ebp, dword ptr [eax + eax * 0x4]                     // 0x0061a67a    8d2c80
                         push              0x00bf4584                                           // 0x0061a67d    688445bf00
                         push              0x00000244                                           // 0x0061a682    6844020000
                         shl               ebp, 2                                               // 0x0061a687    c1e502
                         call              ___nw__FUl                                           // 0x0061a68a    e801111c00
                         mov.s             edi, eax                                             // 0x0061a68f    8bf8
                         xor.s             ebx, ebx                                             // 0x0061a691    33db
                         add               esp, 0x0c                                            // 0x0061a693    83c40c
                         cmp.s             edi, ebx                                             // 0x0061a696    3bfb
                         {disp8} je        _jmp_addr_0x0061a6cd                                 // 0x0061a698    7433
                         push              0x00c4cd30                                           // 0x0061a69a    6830cdc400
                         push              0xa                                                  // 0x0061a69f    6a0a
                         push              0x000003e8                                           // 0x0061a6a1    68e8030000
                         push              ebx                                                  // 0x0061a6a6    53
                         push              ebx                                                  // 0x0061a6a7    53
                         {disp8} lea       ecx, dword ptr [ebp + 0x01]                          // 0x0061a6a8    8d4d01
                         push              ecx                                                  // 0x0061a6ab    51
                         mov.s             ecx, edi                                             // 0x0061a6ac    8bcf
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z                     // 0x0061a6ae    e89debdeff
                         mov               dword ptr [edi], 0x008ab5c0                          // 0x0061a6b3    c707c0b58a00
                         {disp32} mov      dword ptr [edi + 0x0000023c], ebx                    // 0x0061a6b9    899f3c020000
                         {disp32} mov      byte ptr [edi + 0x0000022a], bl                      // 0x0061a6bf    889f2a020000
                         {disp32} mov      dword ptr [edi + 0x00000240], ebx                    // 0x0061a6c5    899f40020000
                         {disp8} jmp       _jmp_addr_0x0061a6cf                                 // 0x0061a6cb    eb02
_jmp_addr_0x0061a6cd:    xor.s             edi, edi                                             // 0x0061a6cd    33ff
_jmp_addr_0x0061a6cf:    push              0x20                                                 // 0x0061a6cf    6a20
                         push              0x00bf4584                                           // 0x0061a6d1    688445bf00
                         push              0x000002b0                                           // 0x0061a6d6    68b0020000
                         {disp8} mov       dword ptr [esi + 0x0c], edi                          // 0x0061a6db    897e0c
                         call              ___nw__FUl                                           // 0x0061a6de    e8ad101c00
                         add               esp, 0x0c                                            // 0x0061a6e3    83c40c
                         cmp.s             eax, ebx                                             // 0x0061a6e6    3bc3
                         {disp8} je        _jmp_addr_0x0061a700                                 // 0x0061a6e8    7416
                         push              0xa                                                  // 0x0061a6ea    6a0a
                         push              0x000003e8                                           // 0x0061a6ec    68e8030000
                         push              ebx                                                  // 0x0061a6f1    53
                         push              ebx                                                  // 0x0061a6f2    53
                         {disp8} lea       edx, dword ptr [ebp + 0x02]                          // 0x0061a6f3    8d5502
                         push              edx                                                  // 0x0061a6f6    52
                         mov.s             ecx, eax                                             // 0x0061a6f7    8bc8
                         call              @__ct__9SetupListFiiiii@28                           // 0x0061a6f9    e852fddeff
                         {disp8} jmp       _jmp_addr_0x0061a702                                 // 0x0061a6fe    eb02
_jmp_addr_0x0061a700:    xor.s             eax, eax                                             // 0x0061a700    33c0
_jmp_addr_0x0061a702:    push              0x21                                                 // 0x0061a702    6a21
                         push              0x00bf4584                                           // 0x0061a704    688445bf00
                         push              0x00000244                                           // 0x0061a709    6844020000
                         {disp8} mov       dword ptr [esi + 0x04], eax                          // 0x0061a70e    894604
                         call              ___nw__FUl                                           // 0x0061a711    e87a101c00
                         add               esp, 0x0c                                            // 0x0061a716    83c40c
                         cmp.s             eax, ebx                                             // 0x0061a719    3bc3
                         {disp8} je        _jmp_addr_0x0061a750                                 // 0x0061a71b    7433
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000db1        // 0x0061a71d    813dac7cd100b10d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061a727    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0061a735                                 // 0x0061a72d    7606
                         add               ecx, 0x0000a44c                                      // 0x0061a72f    81c14ca40000
_jmp_addr_0x0061a735:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                          // 0x0061a735    8b4908
                         push              ebx                                                  // 0x0061a738    53
                         push              ecx                                                  // 0x0061a739    51
                         push              0xa                                                  // 0x0061a73a    6a0a
                         push              0x000003e8                                           // 0x0061a73c    68e8030000
                         push              ebx                                                  // 0x0061a741    53
                         push              ebx                                                  // 0x0061a742    53
                         add               ebp, 0x03                                            // 0x0061a743    83c503
                         push              ebp                                                  // 0x0061a746    55
                         mov.s             ecx, eax                                             // 0x0061a747    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36                     // 0x0061a749    e862f1deff
                         {disp8} jmp       _jmp_addr_0x0061a752                                 // 0x0061a74e    eb02
_jmp_addr_0x0061a750:    xor.s             eax, eax                                             // 0x0061a750    33c0
_jmp_addr_0x0061a752:    {disp8} mov       dword ptr [esi + 0x08], eax                          // 0x0061a752    894608
                         call              _GetSmallTextSize__Fv                                // 0x0061a755    e8b6d2deff
                         {disp8} mov       edx, dword ptr [esi + 0x08]                          // 0x0061a75a    8b5608
                         {disp8} mov       dword ptr [edx + 0x20], eax                          // 0x0061a75d    894220
                         call              _GetSmallTextSize__Fv                                // 0x0061a760    e8abd2deff
                         {disp8} mov       dword ptr [esp + 0x14], eax                          // 0x0061a765    89442414
                         {disp8} mov       eax, dword ptr [esi + 0x08]                          // 0x0061a769    8b4608
                         {disp8} fild      dword ptr [esp + 0x14]                               // 0x0061a76c    db442414
                         add               eax, 0x24                                            // 0x0061a770    83c024
                         push              eax                                                  // 0x0061a773    50
                         {disp8} fstp      dword ptr [esp + 0x18]                               // 0x0061a774    d95c2418
                         call              _wcslen                                              // 0x0061a778    e8e5bc1a00
                         {disp8} mov       edi, dword ptr [esp + 0x18]                          // 0x0061a77d    8b7c2418
                         {disp8} mov       edx, dword ptr [esi + 0x08]                          // 0x0061a781    8b5608
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d2c]               // 0x0061a784    8b0d2ccdc400
                         add               esp, 0x04                                            // 0x0061a78a    83c404
                         push              edi                                                  // 0x0061a78d    57
                         add               edx, 0x24                                            // 0x0061a78e    83c224
                         push              eax                                                  // 0x0061a791    50
                         push              edx                                                  // 0x0061a792    52
                         call              @GetStringWidth__13GatheringTextFPwif@20             // 0x0061a793    e898692100
                         {disp32} fadd     dword ptr [rdata_bytes + 0x19c70]                    // 0x0061a798    d805702c8c00
                         call              _jmp_addr_0x007a1400                                 // 0x0061a79e    e85d6c1800
                         {disp8} mov       ecx, dword ptr [esi + 0x08]                          // 0x0061a7a3    8b4e08
                         mov               dword ptr [esi], eax                                 // 0x0061a7a6    8906
                         mov               bl, 0x01                                             // 0x0061a7a8    b301
                         {disp32} mov      byte ptr [ecx + 0x0000022b], bl                      // 0x0061a7aa    88992b020000
                         call              _GetSmallTextSize__Fv                                // 0x0061a7b0    e85bd2deff
                         {disp8} mov       edx, dword ptr [esi + 0x04]                          // 0x0061a7b5    8b5604
                         pop               edi                                                  // 0x0061a7b8    5f
                         {disp8} mov       dword ptr [edx + 0x20], eax                          // 0x0061a7b9    894220
                         {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061a7bc    8b4604
                         pop               esi                                                  // 0x0061a7bf    5e
                         pop               ebp                                                  // 0x0061a7c0    5d
                         {disp32} mov      byte ptr [eax + 0x00000244], bl                      // 0x0061a7c1    889844020000
                         pop               ebx                                                  // 0x0061a7c7    5b
                         ret               0x0008                                               // 0x0061a7c8    c20800
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                                 // 0x0061a7cb    e82970deff
                         push              ebx                                                  // 0x0061a7d0    53
                         push              ebp                                                  // 0x0061a7d1    55
                         push              esi                                                  // 0x0061a7d2    56
                         push              edi                                                  // 0x0061a7d3    57
                         mov               ecx, 0x00d40e20                                      // 0x0061a7d4    b9200ed400
                         call              ?IsInternetLobby@MPFEConnectionStatus@@QAE_NXZ       // 0x0061a7d9    e8e2320100
                         test              al, al                                               // 0x0061a7de    84c0
                         {disp32} je       _jmp_addr_0x0061a9e1                                 // 0x0061a7e0    0f84fb010000
                         {disp8} mov       eax, dword ptr [esp + 0x18]                          // 0x0061a7e6    8b442418
                         test              eax, eax                                             // 0x0061a7ea    85c0
                         {disp32} jl       _jmp_addr_0x0061a9e1                                 // 0x0061a7ec    0f8cef010000
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                          // 0x0061a7f2    8b4c2414
                         cmp               eax, dword ptr [ecx + 0x00000250]                    // 0x0061a7f6    3b8150020000
                         {disp32} jge      _jmp_addr_0x0061a9e1                                 // 0x0061a7fc    0f8ddf010000
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000264]                    // 0x0061a802    8b8964020000
                         mov               edx, dword ptr [ecx + eax * 0x4]                     // 0x0061a808    8b1481
                         test              edx, edx                                             // 0x0061a80b    85d2
                         {disp32} je       _jmp_addr_0x0061a9e1                                 // 0x0061a80d    0f84ce010000
                         mov               ecx, 0x00d3f038                                      // 0x0061a813    b938f0d300
_jmp_addr_0x0061a818:    mov               eax, dword ptr [ecx]                                 // 0x0061a818    8b01
                         test              eax, eax                                             // 0x0061a81a    85c0
                         {disp8} je        _jmp_addr_0x0061a831                                 // 0x0061a81c    7413
_jmp_addr_0x0061a81e:    cmp               dword ptr [eax], edx                                 // 0x0061a81e    3910
                         {disp8} je        _jmp_addr_0x0061a82b                                 // 0x0061a820    7409
                         {disp8} mov       eax, dword ptr [eax + 0x04]                          // 0x0061a822    8b4004
                         test              eax, eax                                             // 0x0061a825    85c0
                         {disp8} jne       _jmp_addr_0x0061a81e                                 // 0x0061a827    75f5
                         {disp8} jmp       _jmp_addr_0x0061a831                                 // 0x0061a829    eb06
_jmp_addr_0x0061a82b:    mov               eax, dword ptr [eax]                                 // 0x0061a82b    8b00
                         test              eax, eax                                             // 0x0061a82d    85c0
                         {disp8} jne       _jmp_addr_0x0061a848                                 // 0x0061a82f    7517
_jmp_addr_0x0061a831:    add               ecx, 0x8                                             // 0x0061a831    83c108
                         cmp               ecx, 0x00d3f060                                      // 0x0061a834    81f960f0d300
                         {disp8} jl        _jmp_addr_0x0061a818                                 // 0x0061a83a    7cdc
                         pop               edi                                                  // 0x0061a83c    5f
                         pop               esi                                                  // 0x0061a83d    5e
                         pop               ebp                                                  // 0x0061a83e    5d
                         mov               eax, 0x00000001                                      // 0x0061a83f    b801000000
                         pop               ebx                                                  // 0x0061a844    5b
                         ret               0x0020                                               // 0x0061a845    c22000
_jmp_addr_0x0061a848:    {disp32} mov      esi, dword ptr [eax + 0x0000011c]                    // 0x0061a848    8bb01c010000
                         test              esi, esi                                             // 0x0061a84e    85f6
                         {disp32} jl       _jmp_addr_0x0061a9e1                                 // 0x0061a850    0f8c8b010000
                         {disp8} jle       _jmp_addr_0x0061a867                                 // 0x0061a856    7e0f
                         cmp               esi, 0x000001f4                                      // 0x0061a858    81fef4010000
                         {disp8} jl        _jmp_addr_0x0061a869                                 // 0x0061a85e    7c09
                         mov               esi, 0x000001f4                                      // 0x0061a860    bef4010000
                         {disp8} jmp       _jmp_addr_0x0061a869                                 // 0x0061a865    eb02
_jmp_addr_0x0061a867:    xor.s             esi, esi                                             // 0x0061a867    33f6
_jmp_addr_0x0061a869:    {disp8} lea       ecx, dword ptr [esi + 0x63]                          // 0x0061a869    8d4e63
                         mov               eax, 0x51eb851f                                      // 0x0061a86c    b81f85eb51
                         imul              ecx                                                  // 0x0061a871    f7e9
                         sar               edx, 5                                               // 0x0061a873    c1fa05
                         mov.s             eax, edx                                             // 0x0061a876    8bc2
                         shr               eax, 0x1f                                            // 0x0061a878    c1e81f
                         add.s             edx, eax                                             // 0x0061a87b    03d0
                         mov.s             ebx, edx                                             // 0x0061a87d    8bda
                         cmp               ebx, 0x01                                            // 0x0061a87f    83fb01
                         {disp8} mov       dword ptr [esp + 0x18], ebx                          // 0x0061a882    895c2418
                         {disp8} jle       _jmp_addr_0x0061a897                                 // 0x0061a886    7e0f
                         cmp               ebx, 0x05                                            // 0x0061a888    83fb05
                         {disp8} jl        _jmp_addr_0x0061a8a3                                 // 0x0061a88b    7c16
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000005                   // 0x0061a88d    c744241805000000
                         {disp8} jmp       _jmp_addr_0x0061a89f                                 // 0x0061a895    eb08
_jmp_addr_0x0061a897:    {disp8} mov       dword ptr [esp + 0x18], 0x00000001                   // 0x0061a897    c744241801000000
_jmp_addr_0x0061a89f:    {disp8} mov       ebx, dword ptr [esp + 0x18]                          // 0x0061a89f    8b5c2418
_jmp_addr_0x0061a8a3:    shl               esi, 8                                               // 0x0061a8a3    c1e608
                         mov               eax, 0x10624dd3                                      // 0x0061a8a6    b8d34d6210
                         imul              esi                                                  // 0x0061a8ab    f7ee
                         sar               edx, 5                                               // 0x0061a8ad    c1fa05
                         mov.s             ecx, edx                                             // 0x0061a8b0    8bca
                         shr               ecx, 0x1f                                            // 0x0061a8b2    c1e91f
                         add.s             edx, ecx                                             // 0x0061a8b5    03d1
                         mov               eax, 0x000000ff                                      // 0x0061a8b7    b8ff000000
                         sub.s             eax, edx                                             // 0x0061a8bc    2bc2
                         test              eax, eax                                             // 0x0061a8be    85c0
                         {disp8} jle       _jmp_addr_0x0061a927                                 // 0x0061a8c0    7e65
                         cmp               eax, 0x00000100                                      // 0x0061a8c2    3d00010000
                         {disp8} jl        _jmp_addr_0x0061a92b                                 // 0x0061a8c7    7c62
                         mov               eax, 0x00000100                                      // 0x0061a8c9    b800010000
_jmp_addr_0x0061a8ce:    lea               edx, dword ptr [eax + eax * 0x4]                     // 0x0061a8ce    8d1480
                         shl               edx, 0x16                                            // 0x0061a8d1    c1e216
                         mov               eax, 0xa0000000                                      // 0x0061a8d4    b8000000a0
                         sub.s             eax, edx                                             // 0x0061a8d9    2bc2
                         shr               eax, 8                                               // 0x0061a8db    c1e808
                         sub               eax, 0x00600000                                      // 0x0061a8de    2d00006000
                         and               eax, 0xffffa000                                      // 0x0061a8e3    2500a0ffff
                         or                eax, 0xff00a000                                      // 0x0061a8e8    0d00a000ff
_jmp_addr_0x0061a8ed:    {disp8} mov       ecx, dword ptr [esp + 0x30]                          // 0x0061a8ed    8b4c2430
                         {disp8} mov       ebp, dword ptr [esp + 0x2c]                          // 0x0061a8f1    8b6c242c
                         {disp8} mov       dword ptr [esp + 0x14], eax                          // 0x0061a8f5    89442414
                         mov.s             eax, ecx                                             // 0x0061a8f9    8bc1
                         sub.s             eax, ebp                                             // 0x0061a8fb    2bc5
                         cdq                                                                    // 0x0061a8fd    99
                         sub.s             eax, edx                                             // 0x0061a8fe    2bc2
                         mov.s             esi, eax                                             // 0x0061a900    8bf0
                         sar               esi, 1                                               // 0x0061a902    d1fe
                         mov.s             eax, esi                                             // 0x0061a904    8bc6
                         cdq                                                                    // 0x0061a906    99
                         sub.s             eax, edx                                             // 0x0061a907    2bc2
                         {disp8} mov       edx, dword ptr [esp + 0x28]                          // 0x0061a909    8b542428
                         sar               eax, 1                                               // 0x0061a90d    d1f8
                         sub.s             ecx, eax                                             // 0x0061a90f    2bc8
                         add.s             ebp, eax                                             // 0x0061a911    03e8
                         {disp8} mov       eax, dword ptr [esp + 0x20]                          // 0x0061a913    8b442420
                         cmp.s             ebp, eax                                             // 0x0061a917    3be8
                         {disp8} mov       dword ptr [esp + 0x30], ecx                          // 0x0061a919    894c2430
                         {disp8} jle       _jmp_addr_0x0061a947                                 // 0x0061a91d    7e28
                         cmp.s             ebp, edx                                             // 0x0061a91f    3bea
                         {disp8} jl        _jmp_addr_0x0061a949                                 // 0x0061a921    7c26
                         mov.s             ebp, edx                                             // 0x0061a923    8bea
                         {disp8} jmp       _jmp_addr_0x0061a949                                 // 0x0061a925    eb22
_jmp_addr_0x0061a927:    xor.s             eax, eax                                             // 0x0061a927    33c0
                         {disp8} jmp       _jmp_addr_0x0061a932                                 // 0x0061a929    eb07
_jmp_addr_0x0061a92b:    cmp               eax, 0x00000080                                      // 0x0061a92b    3d80000000
                         {disp8} jge       _jmp_addr_0x0061a8ce                                 // 0x0061a930    7d9c
_jmp_addr_0x0061a932:    lea               eax, dword ptr [eax + eax * 0x4]                     // 0x0061a932    8d0480
                         shl               eax, 0xe                                             // 0x0061a935    c1e00e
                         shr               eax, 8                                               // 0x0061a938    c1e808
                         and               eax, 0x0000ff00                                      // 0x0061a93b    2500ff0000
                         or                eax, 0xffa00000                                      // 0x0061a940    0d0000a0ff
                         {disp8} jmp       _jmp_addr_0x0061a8ed                                 // 0x0061a945    eba6
_jmp_addr_0x0061a947:    mov.s             ebp, eax                                             // 0x0061a947    8be8
_jmp_addr_0x0061a949:    cmp.s             ecx, eax                                             // 0x0061a949    3bc8
                         {disp8} jle       _jmp_addr_0x0061a957                                 // 0x0061a94b    7e0a
                         cmp.s             ecx, edx                                             // 0x0061a94d    3bca
                         {disp8} jl        _jmp_addr_0x0061a95f                                 // 0x0061a94f    7c0e
                         {disp8} mov       dword ptr [esp + 0x30], edx                          // 0x0061a951    89542430
                         {disp8} jmp       _jmp_addr_0x0061a95b                                 // 0x0061a955    eb04
_jmp_addr_0x0061a957:    {disp8} mov       dword ptr [esp + 0x30], eax                          // 0x0061a957    89442430
_jmp_addr_0x0061a95b:    {disp8} mov       ecx, dword ptr [esp + 0x30]                          // 0x0061a95b    8b4c2430
_jmp_addr_0x0061a95f:    {disp8} lea       eax, dword ptr [ebp + 0x02]                          // 0x0061a95f    8d4502
                         cmp.s             ecx, eax                                             // 0x0061a962    3bc8
                         {disp8} jle       _jmp_addr_0x0061a9e1                                 // 0x0061a964    7e7b
                         {disp32} mov      eax, dword ptr [data_bytes + 0x516368]               // 0x0061a966    a168c3ed00
                         test              eax, eax                                             // 0x0061a96b    85c0
                         {disp8} je        _jmp_addr_0x0061a9e1                                 // 0x0061a96d    7472
                         test              ebx, ebx                                             // 0x0061a96f    85db
                         {disp8} mov       edx, dword ptr [esp + 0x1c]                          // 0x0061a971    8b54241c
                         {disp8} lea       edi, dword ptr [edx + 0x04]                          // 0x0061a975    8d7a04
                         {disp8} jle       _jmp_addr_0x0061a9e1                                 // 0x0061a978    7e67
                         {disp8} mov       eax, dword ptr [esp + 0x18]                          // 0x0061a97a    8b442418
                         lea               ebx, dword ptr [edi + esi * 0x1]                     // 0x0061a97e    8d1c37
                         {disp8} mov       dword ptr [esp + 0x18], eax                          // 0x0061a981    89442418
                         {disp8} jmp       _jmp_addr_0x0061a98b                                 // 0x0061a985    eb04
_jmp_addr_0x0061a987:    {disp8} mov       ecx, dword ptr [esp + 0x30]                          // 0x0061a987    8b4c2430
_jmp_addr_0x0061a98b:    {disp8} mov       edx, dword ptr [esp + 0x14]                          // 0x0061a98b    8b542414
                         push              0x42c80000                                           // 0x0061a98f    680000c842
                         push              0x0                                                  // 0x0061a994    6a00
                         push              0x0000a000                                           // 0x0061a996    6800a00000
                         push              0xffff6000                                           // 0x0061a99b    680060ffff
                         push              0x1                                                  // 0x0061a9a0    6a01
                         {disp8} lea       eax, dword ptr [esp + 0x40]                          // 0x0061a9a2    8d442440
                         push              eax                                                  // 0x0061a9a6    50
                         {disp8} mov       dword ptr [esp + 0x44], edx                          // 0x0061a9a7    89542444
                         {disp32} mov      edx, dword ptr [data_bytes + 0x516364]               // 0x0061a9ab    8b1564c3ed00
                         push              edx                                                  // 0x0061a9b1    52
                         push              0x3ec00000                                           // 0x0061a9b2    680000c03e
                         push              0x3f600000                                           // 0x0061a9b7    680000603f
                         push              0x3e800000                                           // 0x0061a9bc    680000803e
                         push              0x3f400000                                           // 0x0061a9c1    680000403f
                         push              ecx                                                  // 0x0061a9c6    51
                         push              ebx                                                  // 0x0061a9c7    53
                         push              ebp                                                  // 0x0061a9c8    55
                         push              edi                                                  // 0x0061a9c9    57
                         call              ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                        // 0x0061a9ca    e8b17fdfff
                         {disp8} mov       eax, dword ptr [esp + 0x54]                          // 0x0061a9cf    8b442454
                         add               esp, 0x3c                                            // 0x0061a9d3    83c43c
                         add.s             edi, esi                                             // 0x0061a9d6    03fe
                         add.s             ebx, esi                                             // 0x0061a9d8    03de
                         dec               eax                                                  // 0x0061a9da    48
                         {disp8} mov       dword ptr [esp + 0x18], eax                          // 0x0061a9db    89442418
                         {disp8} jne       _jmp_addr_0x0061a987                                 // 0x0061a9df    75a6
_jmp_addr_0x0061a9e1:    pop               edi                                                  // 0x0061a9e1    5f
                         pop               esi                                                  // 0x0061a9e2    5e
                         pop               ebp                                                  // 0x0061a9e3    5d
                         mov               eax, 0x00000001                                      // 0x0061a9e4    b801000000
                         pop               ebx                                                  // 0x0061a9e9    5b
                         ret               0x0020                                               // 0x0061a9ea    c22000
                         nop                                                                    // 0x0061a9ed    90
                         nop                                                                    // 0x0061a9ee    90
                         nop                                                                    // 0x0061a9ef    90
_jmp_addr_0x0061a9f0:    {disp8} mov       edx, dword ptr [esp + 0x0c]                          // 0x0061a9f0    8b54240c
                         {disp8} mov       eax, dword ptr [esp + 0x08]                          // 0x0061a9f4    8b442408
                         sub               esp, 0x00000104                                      // 0x0061a9f8    81ec04010000
                         push              ebx                                                  // 0x0061a9fe    53
                         {disp32} mov      ebx, dword ptr [esp + 0x00000118]                    // 0x0061a9ff    8b9c2418010000
                         push              ebp                                                  // 0x0061aa06    55
                         push              esi                                                  // 0x0061aa07    56
                         mov.s             esi, ecx                                             // 0x0061aa08    8bf1
                         {disp8} mov       ebp, dword ptr [esi + 0x0c]                          // 0x0061aa0a    8b6e0c
                         {disp32} mov      ecx, dword ptr [esp + 0x00000114]                    // 0x0061aa0d    8b8c2414010000
                         push              edi                                                  // 0x0061aa14    57
                         {disp8} mov       dword ptr [esi + 0x1c], ecx                          // 0x0061aa15    894e1c
                         {disp8} mov       dword ptr [esi + 0x20], eax                          // 0x0061aa18    894620
                         lea               edi, dword ptr [ecx + edx * 0x1]                     // 0x0061aa1b    8d3c11
                         {disp8} mov       dword ptr [esi + 0x24], edi                          // 0x0061aa1e    897e24
                         lea               edi, dword ptr [eax + ebx * 0x1]                     // 0x0061aa21    8d3c18
                         {disp8} mov       dword ptr [esi + 0x28], edi                          // 0x0061aa24    897e28
                         {disp8} lea       edi, dword ptr [ecx + 0x02]                          // 0x0061aa27    8d7902
                         {disp8} mov       dword ptr [ebp + 0x08], edi                          // 0x0061aa2a    897d08
                         {disp8} mov       edi, dword ptr [esi + 0x0c]                          // 0x0061aa2d    8b7e0c
                         {disp8} mov       ebp, dword ptr [edi + 0x08]                          // 0x0061aa30    8b6f08
                         {disp8} lea       ebp, dword ptr [edx + ebp * 0x1 + -0x02]             // 0x0061aa33    8d6c2afe
                         {disp8} mov       dword ptr [edi + 0x10], ebp                          // 0x0061aa37    896f10
                         {disp8} mov       edi, dword ptr [esi + 0x0c]                          // 0x0061aa3a    8b7e0c
                         {disp8} mov       dword ptr [edi + 0x0c], eax                          // 0x0061aa3d    89470c
                         {disp8} mov       edi, dword ptr [esi + 0x0c]                          // 0x0061aa40    8b7e0c
                         {disp8} mov       ebp, dword ptr [edi + 0x0c]                          // 0x0061aa43    8b6f0c
                         add               ebp, 0x1e                                            // 0x0061aa46    83c51e
                         {disp8} mov       dword ptr [edi + 0x14], ebp                          // 0x0061aa49    896f14
                         {disp8} mov       ebp, dword ptr [esi + 0x08]                          // 0x0061aa4c    8b6e08
                         {disp8} lea       edi, dword ptr [eax + 0x04]                          // 0x0061aa4f    8d7804
                         {disp8} mov       dword ptr [ebp + 0x0c], edi                          // 0x0061aa52    897d0c
                         {disp8} mov       edi, dword ptr [esi + 0x0c]                          // 0x0061aa55    8b7e0c
                         {disp8} mov       edi, dword ptr [edi + 0x14]                          // 0x0061aa58    8b7f14
                         {disp8} mov       ebp, dword ptr [esi + 0x08]                          // 0x0061aa5b    8b6e08
                         sub               edi, 0x04                                            // 0x0061aa5e    83ef04
                         {disp8} mov       dword ptr [ebp + 0x14], edi                          // 0x0061aa61    897d14
                         {disp8} mov       edi, dword ptr [esi + 0x0c]                          // 0x0061aa64    8b7e0c
                         {disp8} mov       edi, dword ptr [edi + 0x10]                          // 0x0061aa67    8b7f10
                         {disp8} mov       ebp, dword ptr [esi + 0x08]                          // 0x0061aa6a    8b6e08
                         sub               edi, 0x04                                            // 0x0061aa6d    83ef04
                         {disp8} mov       dword ptr [ebp + 0x10], edi                          // 0x0061aa70    897d10
                         {disp8} mov       edi, dword ptr [esi + 0x08]                          // 0x0061aa73    8b7e08
                         {disp8} mov       ebp, dword ptr [edi + 0x10]                          // 0x0061aa76    8b6f10
                         sub               ebp, dword ptr [esi]                                 // 0x0061aa79    2b2e
                         add               ecx, 0x4                                             // 0x0061aa7b    83c104
                         {disp8} mov       dword ptr [edi + 0x08], ebp                          // 0x0061aa7e    896f08
                         {disp8} mov       edi, dword ptr [esi + 0x04]                          // 0x0061aa81    8b7e04
                         {disp8} mov       dword ptr [edi + 0x08], ecx                          // 0x0061aa84    894f08
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061aa87    8b4e04
                         {disp8} mov       edi, dword ptr [ecx + 0x08]                          // 0x0061aa8a    8b7908
                         {disp8} lea       edx, dword ptr [edi + edx * 0x1 + -0x08]             // 0x0061aa8d    8d5417f8
                         {disp8} mov       dword ptr [ecx + 0x10], edx                          // 0x0061aa91    895110
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061aa94    8b4e04
                         add               eax, 0x1e                                            // 0x0061aa97    83c01e
                         {disp8} mov       dword ptr [ecx + 0x0c], eax                          // 0x0061aa9a    89410c
                         {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061aa9d    8b4604
                         {disp8} mov       edx, dword ptr [eax + 0x0c]                          // 0x0061aaa0    8b500c
                         {disp8} lea       ecx, dword ptr [edx + ebx * 0x1 + -0x22]             // 0x0061aaa3    8d4c1ade
                         {disp8} mov       dword ptr [eax + 0x14], ecx                          // 0x0061aaa7    894814
                         {disp8} mov       edi, dword ptr [esi + 0x04]                          // 0x0061aaaa    8b7e04
                         {disp32} mov      eax, dword ptr [edi + 0x00000250]                    // 0x0061aaad    8b8750020000
                         test              eax, eax                                             // 0x0061aab3    85c0
                         {disp8} jle       _jmp_addr_0x0061aaca                                 // 0x0061aab5    7e13
_jmp_addr_0x0061aab7:    dec               eax                                                  // 0x0061aab7    48
                         push              eax                                                  // 0x0061aab8    50
                         mov.s             ecx, edi                                             // 0x0061aab9    8bcf
                         call              @DeleteString__9SetupListFi@12                       // 0x0061aabb    e8a002dfff
                         {disp32} mov      eax, dword ptr [edi + 0x00000250]                    // 0x0061aac0    8b8750020000
                         test              eax, eax                                             // 0x0061aac6    85c0
                         {disp8} jg        _jmp_addr_0x0061aab7                                 // 0x0061aac8    7fed
_jmp_addr_0x0061aaca:    {disp8} mov       eax, dword ptr [esi + 0x14]                          // 0x0061aaca    8b4614
                         {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061aacd    8b5610
                         {disp32} mov      edx, dword ptr [edx + 0x00000a4c]                    // 0x0061aad0    8b924c0a0000
                         mov.s             ecx, eax                                             // 0x0061aad6    8bc8
                         shl               ecx, 6                                               // 0x0061aad8    c1e106
                         add.s             ecx, eax                                             // 0x0061aadb    03c8
                         {disp8} lea       eax, dword ptr [edx + ecx * 0x8 + 0x28]              // 0x0061aadd    8d44ca28
                         {disp8} mov       ecx, dword ptr [esi + 0x0c]                          // 0x0061aae1    8b4e0c
                         push              eax                                                  // 0x0061aae4    50
                         add               ecx, 0x24                                            // 0x0061aae5    83c124
                         push              ecx                                                  // 0x0061aae8    51
                         call              _wcscpy                                              // 0x0061aae9    e8c8b41a00
                         {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061aaee    8b5610
                         {disp32} mov      ecx, dword ptr [edx + 0x00000a4c]                    // 0x0061aaf1    8b8a4c0a0000
                         add               esp, 0x08                                            // 0x0061aaf7    83c408
                         call              _jmp_addr_0x00622d40                                 // 0x0061aafa    e841820000
                         {disp8} mov       ecx, dword ptr [esi + 0x14]                          // 0x0061aaff    8b4e14
                         {disp8} mov       dword ptr [esp + 0x10], eax                          // 0x0061ab02    89442410
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061ab06    8b4610
                         {disp32} mov      edx, dword ptr [eax + 0x00000a4c]                    // 0x0061ab09    8b904c0a0000
                         mov               ebp, dword ptr [edx + ecx * 0x8]                     // 0x0061ab0f    8b2cca
                         test              ebp, ebp                                             // 0x0061ab12    85ed
                         {disp32} je       _jmp_addr_0x0061acda                                 // 0x0061ab14    0f84c0010000
_jmp_addr_0x0061ab1a:    {disp8} mov       ecx, dword ptr [ebp + 0x00]                          // 0x0061ab1a    8b4d00
                         {disp32} mov      al, byte ptr [ecx + 0x0000011a]                      // 0x0061ab1d    8a811a010000
                         test              al, al                                               // 0x0061ab23    84c0
                         mov               edx, 0x00bf45c0                                      // 0x0061ab25    bac045bf00
                         {disp8} jne       _jmp_addr_0x0061ab31                                 // 0x0061ab2a    7505
                         mov               edx, 0x00c4cd30                                      // 0x0061ab2c    ba30cdc400
_jmp_addr_0x0061ab31:    {disp32} mov      al, byte ptr [ecx + 0x00000121]                      // 0x0061ab31    8a8121010000
                         test              al, al                                               // 0x0061ab37    84c0
                         mov               eax, 0x00bf45b8                                      // 0x0061ab39    b8b845bf00
                         {disp8} jne       _jmp_addr_0x0061ab45                                 // 0x0061ab3e    7505
                         mov               eax, 0x00c4cd30                                      // 0x0061ab40    b830cdc400
_jmp_addr_0x0061ab45:    push              edx                                                  // 0x0061ab45    52
                         push              eax                                                  // 0x0061ab46    50
                         push              ecx                                                  // 0x0061ab47    51
                         {disp8} lea       eax, dword ptr [esp + 0x20]                          // 0x0061ab48    8d442420
                         push              0x00bf45a8                                           // 0x0061ab4c    68a845bf00
                         push              eax                                                  // 0x0061ab51    50
                         call              _swprintf                                            // 0x0061ab52    e828b91a00
                         {disp8} mov       edi, dword ptr [esi + 0x04]                          // 0x0061ab57    8b7e04
                         {disp32} mov      edx, dword ptr [edi + 0x00000250]                    // 0x0061ab5a    8b9750020000
                         add               esp, 0x14                                            // 0x0061ab60    83c414
                         {disp8} lea       ecx, dword ptr [esp + 0x14]                          // 0x0061ab63    8d4c2414
                         push              ecx                                                  // 0x0061ab67    51
                         push              edx                                                  // 0x0061ab68    52
                         mov.s             ecx, edi                                             // 0x0061ab69    8bcf
                         call              @InsertString__9SetupListFiPw@16                     // 0x0061ab6b    e80003dfff
                         {disp32} mov      ecx, dword ptr [edi + 0x00000250]                    // 0x0061ab70    8b8f50020000
                         {disp8} lea       eax, dword ptr [ecx + -0x01]                         // 0x0061ab76    8d41ff
                         test              eax, eax                                             // 0x0061ab79    85c0
                         {disp8} jl        _jmp_addr_0x0061ab8e                                 // 0x0061ab7b    7c11
                         cmp.s             eax, ecx                                             // 0x0061ab7d    3bc1
                         {disp8} jge       _jmp_addr_0x0061ab8e                                 // 0x0061ab7f    7d0d
                         {disp32} mov      ecx, dword ptr [edi + 0x00000268]                    // 0x0061ab81    8b8f68020000
                         mov               dword ptr [ecx + eax * 0x4], 0x00000000              // 0x0061ab87    c7048100000000
_jmp_addr_0x0061ab8e:    {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061ab8e    8b4e04
                         {disp32} mov      eax, dword ptr [ecx + 0x00000250]                    // 0x0061ab91    8b8150020000
                         dec               eax                                                  // 0x0061ab97    48
                         {disp8} js        _jmp_addr_0x0061abaf                                 // 0x0061ab98    7815
                         cmp               eax, dword ptr [ecx + 0x00000250]                    // 0x0061ab9a    3b8150020000
                         {disp8} jge       _jmp_addr_0x0061abaf                                 // 0x0061aba0    7d0d
                         {disp32} mov      edx, dword ptr [ecx + 0x0000026c]                    // 0x0061aba2    8b916c020000
                         mov               dword ptr [edx + eax * 0x4], 0x0061a7d0              // 0x0061aba8    c70482d0a76100
_jmp_addr_0x0061abaf:    {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061abaf    8b4e04
                         {disp32} mov      eax, dword ptr [ecx + 0x00000250]                    // 0x0061abb2    8b8150020000
                         dec               eax                                                  // 0x0061abb8    48
                         {disp8} js        _jmp_addr_0x0061abcf                                 // 0x0061abb9    7814
                         cmp               eax, dword ptr [ecx + 0x00000250]                    // 0x0061abbb    3b8150020000
                         {disp8} jge       _jmp_addr_0x0061abcf                                 // 0x0061abc1    7d0c
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000264]                    // 0x0061abc3    8b8964020000
                         {disp8} mov       edx, dword ptr [ebp + 0x00]                          // 0x0061abc9    8b5500
                         mov               dword ptr [ecx + eax * 0x4], edx                     // 0x0061abcc    891481
_jmp_addr_0x0061abcf:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0061abcf    8b442410
                         cmp               dword ptr [ebp + 0x00], eax                          // 0x0061abd3    394500
                         {disp8} jne       _jmp_addr_0x0061abf9                                 // 0x0061abd6    7521
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061abd8    8b4e04
                         {disp32} mov      eax, dword ptr [ecx + 0x00000250]                    // 0x0061abdb    8b8150020000
                         dec               eax                                                  // 0x0061abe1    48
                         {disp8} js        _jmp_addr_0x0061abf9                                 // 0x0061abe2    7815
                         cmp               eax, dword ptr [ecx + 0x00000250]                    // 0x0061abe4    3b8150020000
                         {disp8} jge       _jmp_addr_0x0061abf9                                 // 0x0061abea    7d0d
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000268]                    // 0x0061abec    8b8968020000
                         mov               dword ptr [ecx + eax * 0x4], 0x00ffff00              // 0x0061abf2    c7048100ffff00
_jmp_addr_0x0061abf9:    {disp8} mov       edx, dword ptr [ebp + 0x00]                          // 0x0061abf9    8b5500
                         {disp32} mov      al, byte ptr [edx + 0x00000100]                      // 0x0061abfc    8a8200010000
                         test              al, al                                               // 0x0061ac02    84c0
                         {disp8} je        _jmp_addr_0x0061ac53                                 // 0x0061ac04    744d
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a25        // 0x0061ac06    813dac7cd100251a0000
                         {disp8} ja        _jmp_addr_0x0061ac1a                                 // 0x0061ac10    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061ac12    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x0061ac25                                 // 0x0061ac18    eb0b
_jmp_addr_0x0061ac1a:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061ac1a    a1a87cd100
                         {disp32} lea      ecx, dword ptr [eax + 0x000139bc]                    // 0x0061ac1f    8d88bc390100
_jmp_addr_0x0061ac25:    {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061ac25    8b4604
                         {disp32} mov      edx, dword ptr [eax + 0x00000250]                    // 0x0061ac28    8b9050020000
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]                          // 0x0061ac2e    8b4908
                         {disp32} mov      eax, dword ptr [eax + 0x00000258]                    // 0x0061ac31    8b8058020000
                         push              ecx                                                  // 0x0061ac37    51
                         shl               edx, 9                                               // 0x0061ac38    c1e209
                         {disp32} lea      ecx, dword ptr [edx + eax * 0x1 + -0x00000200]       // 0x0061ac3b    8d8c0200feffff
                         push              ecx                                                  // 0x0061ac42    51
                         call              _wcscat                                              // 0x0061ac43    e844b31a00
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061ac48    8b4e04
                         add               esp, 0x08                                            // 0x0061ac4b    83c408
                         call              ?UpdateHeights@SetupList@@QAEXXZ                     // 0x0061ac4e    e89dfedeff
_jmp_addr_0x0061ac53:    {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061ac53    8b5610
                         {disp32} mov      eax, dword ptr [edx + 0x00000a4c]                    // 0x0061ac56    8b824c0a0000
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                          // 0x0061ac5c    8b4d00
                         cmp               ecx, dword ptr [eax + 0x00000a58]                    // 0x0061ac5f    3b88580a0000
                         {disp8} jne       _jmp_addr_0x0061accf                                 // 0x0061ac65    7568
                         {disp8} mov       edi, dword ptr [esi + 0x04]                          // 0x0061ac67    8b7e04
                         {disp32} mov      ebx, dword ptr [edi + 0x00000250]                    // 0x0061ac6a    8b9f50020000
                         dec               ebx                                                  // 0x0061ac70    4b
                         {disp8} js        _jmp_addr_0x0061ac83                                 // 0x0061ac71    7810
                         cmp               ebx, dword ptr [edi + 0x00000250]                    // 0x0061ac73    3b9f50020000
                         {disp8} jge       _jmp_addr_0x0061ac83                                 // 0x0061ac79    7d08
                         {disp32} mov      dword ptr [edi + 0x00000248], ebx                    // 0x0061ac7b    899f48020000
                         {disp8} jmp       _jmp_addr_0x0061ac8d                                 // 0x0061ac81    eb0a
_jmp_addr_0x0061ac83:    {disp32} mov      dword ptr [edi + 0x00000248], 0xffffffff             // 0x0061ac83    c78748020000ffffffff
_jmp_addr_0x0061ac8d:    {disp8} mov       eax, dword ptr [edi + 0x04]                          // 0x0061ac8d    8b4704
                         test              eax, eax                                             // 0x0061ac90    85c0
                         {disp8} je        _jmp_addr_0x0061accf                                 // 0x0061ac92    743b
                         {disp32} mov      eax, dword ptr [data_bytes + 0x286d00]               // 0x0061ac94    a100cdc400
                         test              eax, eax                                             // 0x0061ac99    85c0
                         {disp8} je        _jmp_addr_0x0061accf                                 // 0x0061ac9b    7432
                         test              ebx, ebx                                             // 0x0061ac9d    85db
                         {disp8} jl        _jmp_addr_0x0061accf                                 // 0x0061ac9f    7c2e
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061aca1    8b0d04c1e800
                         call              @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4       // 0x0061aca7    e814911d00
                         cmp.s             eax, ebx                                             // 0x0061acac    3bc3
                         {disp8} je        _jmp_addr_0x0061accf                                 // 0x0061acae    741f
                         {disp32} mov      edx, dword ptr [edi + 0x00000250]                    // 0x0061acb0    8b9750020000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061acb6    8b0d04c1e800
                         push              ebx                                                  // 0x0061acbc    53
                         dec               edx                                                  // 0x0061acbd    4a
                         push              edx                                                  // 0x0061acbe    52
                         push              0x0                                                  // 0x0061acbf    6a00
                         call              @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20// 0x0061acc1    e81a911d00
                         push              0x0                                                  // 0x0061acc6    6a00
                         mov.s             ecx, edi                                             // 0x0061acc8    8bcf
                         call              @AutoScroll__9SetupListFb@9                          // 0x0061acca    e801f1deff
_jmp_addr_0x0061accf:    {disp8} mov       ebp, dword ptr [ebp + 0x04]                          // 0x0061accf    8b6d04
                         test              ebp, ebp                                             // 0x0061acd2    85ed
                         {disp32} jne      _jmp_addr_0x0061ab1a                                 // 0x0061acd4    0f8540feffff
_jmp_addr_0x0061acda:    push              0x1                                                  // 0x0061acda    6a01
                         mov.s             ecx, esi                                             // 0x0061acdc    8bce
                         call              _jmp_addr_0x0061acf0                                 // 0x0061acde    e80d000000
                         pop               edi                                                  // 0x0061ace3    5f
                         pop               esi                                                  // 0x0061ace4    5e
                         pop               ebp                                                  // 0x0061ace5    5d
                         pop               ebx                                                  // 0x0061ace6    5b
                         add               esp, 0x00000104                                      // 0x0061ace7    81c404010000
                         ret               0x0014                                               // 0x0061aced    c21400
_jmp_addr_0x0061acf0:    push              ebx                                                  // 0x0061acf0    53
                         {disp8} mov       ebx, dword ptr [esp + 0x08]                          // 0x0061acf1    8b5c2408
                         push              esi                                                  // 0x0061acf5    56
                         mov.s             esi, ecx                                             // 0x0061acf6    8bf1
                         {disp8} mov       ecx, dword ptr [esi + 0x0c]                          // 0x0061acf8    8b4e0c
                         {disp8} mov       byte ptr [esi + 0x19], bl                            // 0x0061acfb    885e19
                         mov               eax, dword ptr [ecx]                                 // 0x0061acfe    8b01
                         push              ebx                                                  // 0x0061ad00    53
                         call              dword ptr [eax + 8]                                  // 0x0061ad01    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061ad04    8b4e04
                         mov               edx, dword ptr [ecx]                                 // 0x0061ad07    8b11
                         push              ebx                                                  // 0x0061ad09    53
                         call              dword ptr [edx + 8]                                  // 0x0061ad0a    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x08]                          // 0x0061ad0d    8b4e08
                         mov               eax, dword ptr [ecx]                                 // 0x0061ad10    8b01
                         push              ebx                                                  // 0x0061ad12    53
                         call              dword ptr [eax + 8]                                  // 0x0061ad13    ff5008
                         pop               esi                                                  // 0x0061ad16    5e
                         pop               ebx                                                  // 0x0061ad17    5b
                         ret               0x0004                                               // 0x0061ad18    c20400
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                                 // 0x0061ad1b    e8d96adeff
_jmp_addr_0x0061ad20:    sub               esp, 0x14                                            // 0x0061ad20    83ec14
                         push              ebx                                                  // 0x0061ad23    53
                         push              ebp                                                  // 0x0061ad24    55
                         push              esi                                                  // 0x0061ad25    56
                         mov.s             esi, ecx                                             // 0x0061ad26    8bf1
                         {disp8} mov       al, byte ptr [esi + 0x19]                            // 0x0061ad28    8a4619
                         test              al, al                                               // 0x0061ad2b    84c0
                         push              edi                                                  // 0x0061ad2d    57
                         {disp32} jne      _jmp_addr_0x0061b31f                                 // 0x0061ad2e    0f85eb050000
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061ad34    8b4610
                         {disp32} mov      eax, dword ptr [eax + 0x00000a44]                    // 0x0061ad37    8b80440a0000
                         test              eax, eax                                             // 0x0061ad3d    85c0
                         {disp32} je       _jmp_addr_0x0061b31f                                 // 0x0061ad3f    0f84da050000
                         {disp8} mov       ebp, dword ptr [esp + 0x34]                          // 0x0061ad45    8b6c2434
                         cmp               ebp, dword ptr [esi + 0x1c]                          // 0x0061ad49    3b6e1c
                         {disp8} jl        _jmp_addr_0x0061ad78                                 // 0x0061ad4c    7c2a
                         cmp               ebp, dword ptr [esi + 0x24]                          // 0x0061ad4e    3b6e24
                         {disp8} jge       _jmp_addr_0x0061ad78                                 // 0x0061ad51    7d25
                         {disp8} mov       ecx, dword ptr [esp + 0x38]                          // 0x0061ad53    8b4c2438
                         cmp               ecx, dword ptr [esi + 0x20]                          // 0x0061ad57    3b4e20
                         {disp8} jl        _jmp_addr_0x0061ad78                                 // 0x0061ad5a    7c1c
                         cmp               ecx, dword ptr [esi + 0x28]                          // 0x0061ad5c    3b4e28
                         {disp8} jge       _jmp_addr_0x0061ad78                                 // 0x0061ad5f    7d17
                         {disp32} mov      ecx, dword ptr [eax + 0x00000110]                    // 0x0061ad61    8b8810010000
                         cmp               ecx, dword ptr [esi + 0x14]                          // 0x0061ad67    3b4e14
                         {disp8} mov       dword ptr [esp + 0x1c], 0x00000001                   // 0x0061ad6a    c744241c01000000
                         {disp8} je        _jmp_addr_0x0061ad80                                 // 0x0061ad72    740c
                         xor.s             eax, eax                                             // 0x0061ad74    33c0
                         {disp8} jmp       _jmp_addr_0x0061ad85                                 // 0x0061ad76    eb0d
_jmp_addr_0x0061ad78:    {disp8} mov       dword ptr [esp + 0x1c], 0x00000000                   // 0x0061ad78    c744241c00000000
_jmp_addr_0x0061ad80:    mov               eax, 0x00000001                                      // 0x0061ad80    b801000000
_jmp_addr_0x0061ad85:    {disp8} mov       ecx, dword ptr [esi + 0x08]                          // 0x0061ad85    8b4e08
                         mov               edx, dword ptr [ecx]                                 // 0x0061ad88    8b11
                         push              eax                                                  // 0x0061ad8a    50
                         call              dword ptr [edx + 8]                                  // 0x0061ad8b    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061ad8e    8b4e10
                         {disp32} mov      edx, dword ptr [ecx + 0x00000a44]                    // 0x0061ad91    8b91440a0000
                         {disp32} mov      eax, dword ptr [edx + 0x00000110]                    // 0x0061ad97    8b8210010000
                         cmp               eax, -0x01                                           // 0x0061ad9d    83f8ff
                         {disp8} mov       byte ptr [esp + 0x13], 0x00                          // 0x0061ada0    c644241300
                         {disp8} je        _jmp_addr_0x0061adb0                                 // 0x0061ada5    7409
                         test              eax, eax                                             // 0x0061ada7    85c0
                         {disp8} je        _jmp_addr_0x0061adb0                                 // 0x0061ada9    7405
                         {disp8} mov       byte ptr [esp + 0x13], 0x01                          // 0x0061adab    c644241301
_jmp_addr_0x0061adb0:    cmp               eax, -0x01                                           // 0x0061adb0    83f8ff
                         {disp8} mov       byte ptr [esp + 0x12], 0x00                          // 0x0061adb3    c644241200
                         {disp8} je        _jmp_addr_0x0061add7                                 // 0x0061adb8    741d
                         cmp               eax, dword ptr [esi + 0x14]                          // 0x0061adba    3b4614
                         {disp8} je        _jmp_addr_0x0061add2                                 // 0x0061adbd    7413
                         {disp32} mov      bl, byte ptr [ecx + 0x00000a48]                      // 0x0061adbf    8a99480a0000
                         test              bl, bl                                               // 0x0061adc5    84db
                         {disp8} je        _jmp_addr_0x0061add2                                 // 0x0061adc7    7409
                         test              eax, eax                                             // 0x0061adc9    85c0
                         {disp8} mov       byte ptr [esp + 0x12], 0x01                          // 0x0061adcb    c644241201
                         {disp8} jne       _jmp_addr_0x0061add7                                 // 0x0061add0    7505
_jmp_addr_0x0061add2:    {disp8} mov       byte ptr [esp + 0x12], 0x00                          // 0x0061add2    c644241200
_jmp_addr_0x0061add7:    cmp               eax, -0x01                                           // 0x0061add7    83f8ff
                         {disp8} mov       byte ptr [esp + 0x11], 0x00                          // 0x0061adda    c644241100
                         {disp8} je        _jmp_addr_0x0061adfa                                 // 0x0061addf    7419
                         cmp               eax, dword ptr [esi + 0x14]                          // 0x0061ade1    3b4614
                         {disp8} jne       _jmp_addr_0x0061adf5                                 // 0x0061ade4    750f
                         {disp32} mov      al, byte ptr [ecx + 0x00000a48]                      // 0x0061ade6    8a81480a0000
                         test              al, al                                               // 0x0061adec    84c0
                         {disp8} mov       byte ptr [esp + 0x11], 0x01                          // 0x0061adee    c644241101
                         {disp8} jne       _jmp_addr_0x0061adfa                                 // 0x0061adf3    7505
_jmp_addr_0x0061adf5:    {disp8} mov       byte ptr [esp + 0x11], 0x00                          // 0x0061adf5    c644241100
_jmp_addr_0x0061adfa:    {disp8} mov       eax, dword ptr [esi + 0x14]                          // 0x0061adfa    8b4614
                         test              eax, eax                                             // 0x0061adfd    85c0
                         {disp8} jne       _jmp_addr_0x0061ae05                                 // 0x0061adff    7504
                         {disp8} mov       byte ptr [esp + 0x11], al                            // 0x0061ae01    88442411
_jmp_addr_0x0061ae05:    {disp32} mov      bl, byte ptr [edx + 0x00000100]                      // 0x0061ae05    8a9a00010000
                         test              bl, bl                                               // 0x0061ae0b    84db
                         {disp8} je        _jmp_addr_0x0061ae14                                 // 0x0061ae0d    7405
                         {disp8} mov       byte ptr [esp + 0x11], 0x01                          // 0x0061ae0f    c644241101
_jmp_addr_0x0061ae14:    {disp8} mov       ebx, dword ptr [esp + 0x28]                          // 0x0061ae14    8b5c2428
                         cmp               ebx, 0x0d                                            // 0x0061ae18    83fb0d
                         {disp32} jne      _jmp_addr_0x0061af9c                                 // 0x0061ae1b    0f857b010000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x2390b8]               // 0x0061ae21    a1b8f0bf00
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x2390bc]               // 0x0061ae26    8b0dbcf0bf00
                         {disp32} mov      edx, dword ptr [data_bytes + 0x2390c0]               // 0x0061ae2c    8b15c0f0bf00
                         {disp32} mov      dword ptr [data_bytes + 0x22e578], edx               // 0x0061ae32    89157845bf00
                         {disp32} mov      dword ptr [data_bytes + 0x22e570], eax               // 0x0061ae38    a37045bf00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x2390c4]               // 0x0061ae3d    a1c4f0bf00
                         {disp32} mov      dword ptr [data_bytes + 0x22e57c], eax               // 0x0061ae42    a37c45bf00
                         {disp32} mov      dword ptr [data_bytes + 0x22e574], ecx               // 0x0061ae47    890d7445bf00
                         {disp8} mov       ecx, dword ptr [esi + 0x14]                          // 0x0061ae4d    8b4e14
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + 0x00bf456c]              // 0x0061ae50    8b0c8d6c45bf00
                         mov.s             edx, ecx                                             // 0x0061ae57    8bd1
                         and               edx, 0x000000ff                                      // 0x0061ae59    81e2ff000000
                         {disp8} mov       dword ptr [esp + 0x14], edx                          // 0x0061ae5f    89542414
                         mov.s             ebp, ecx                                             // 0x0061ae63    8be9
                         and               ebp, 0x0000ff00                                      // 0x0061ae65    81e500ff0000
                         mov.s             eax, ecx                                             // 0x0061ae6b    8bc1
                         and               eax, 0xffff0000                                      // 0x0061ae6d    250000ffff
                         {disp8} mov       dword ptr [esp + 0x18], eax                          // 0x0061ae72    89442418
                         mov.s             edx, ebp                                             // 0x0061ae76    8bd5
                         shl               edx, 7                                               // 0x0061ae78    c1e207
                         mov               ebx, 0x007f8000                                      // 0x0061ae7b    bb00807f00
                         sub.s             ebx, edx                                             // 0x0061ae80    2bda
                         shr               ebx, 8                                               // 0x0061ae82    c1eb08
                         mov.s             eax, ecx                                             // 0x0061ae85    8bc1
                         and               eax, 0xffffff00                                      // 0x0061ae87    2500ffffff
                         add.s             ebx, eax                                             // 0x0061ae8c    03d8
                         {disp8} mov       dword ptr [esp + 0x20], eax                          // 0x0061ae8e    89442420
                         mov.s             edi, ecx                                             // 0x0061ae92    8bf9
                         and               edi, 0x00ff0000                                      // 0x0061ae94    81e70000ff00
                         mov.s             eax, edi                                             // 0x0061ae9a    8bc7
                         shl               eax, 7                                               // 0x0061ae9c    c1e007
                         mov               edx, 0x7f800000                                      // 0x0061ae9f    ba0000807f
                         sub.s             edx, eax                                             // 0x0061aea4    2bd0
                         {disp8} mov       eax, dword ptr [esp + 0x18]                          // 0x0061aea6    8b442418
                         shr               edx, 8                                               // 0x0061aeaa    c1ea08
                         add.s             edx, eax                                             // 0x0061aead    03d0
                         {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x0061aeaf    8b442414
                         and               edx, 0x00ff0000                                      // 0x0061aeb3    81e20000ff00
                         and               ebx, 0x0000ff00                                      // 0x0061aeb9    81e300ff0000
                         or.s              ebx, edx                                             // 0x0061aebf    0bda
                         shl               eax, 7                                               // 0x0061aec1    c1e007
                         mov               edx, 0x00007f80                                      // 0x0061aec4    ba807f0000
                         sub.s             edx, eax                                             // 0x0061aec9    2bd0
                         {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061aecb    8b4604
                         shr               edx, 8                                               // 0x0061aece    c1ea08
                         add.s             edx, ecx                                             // 0x0061aed1    03d1
                         and               edx, 0x000000ff                                      // 0x0061aed3    81e2ff000000
                         or.s              ebx, edx                                             // 0x0061aed9    0bda
                         {disp32} mov      dword ptr [eax + 0x00000298], ebx                    // 0x0061aedb    899898020000
                         {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061aee1    8b5610
                         {disp8} mov       eax, dword ptr [edx + 0x14]                          // 0x0061aee4    8b4214
                         cmp               eax, dword ptr [esi + 0x14]                          // 0x0061aee7    3b4614
                         {disp32} mov      ebx, dword ptr [data_bytes + 0x2078]                 // 0x0061aeea    8b1d78809c00
                         {disp8} je        _jmp_addr_0x0061aefe                                 // 0x0061aef0    740c
                         mov.s             eax, ebx                                             // 0x0061aef2    8bc3
                         cdq                                                                    // 0x0061aef4    99
                         sub.s             eax, edx                                             // 0x0061aef5    2bc2
                         sar               eax, 1                                               // 0x0061aef7    d1f8
                         {disp32} mov      dword ptr [data_bytes + 0x2078], eax                 // 0x0061aef9    a378809c00
_jmp_addr_0x0061aefe:    {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061aefe    8b5610
                         {disp8} mov       eax, dword ptr [edx + 0x14]                          // 0x0061af01    8b4214
                         cmp               eax, dword ptr [esi + 0x14]                          // 0x0061af04    3b4614
                         {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061af07    8b4604
                         sete              dl                                                   // 0x0061af0a    0f94c2
                         {disp32} mov      byte ptr [eax + 0x00000290], dl                      // 0x0061af0d    889090020000
                         {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061af13    8b5610
                         {disp8} mov       eax, dword ptr [edx + 0x14]                          // 0x0061af16    8b4214
                         cmp               eax, dword ptr [esi + 0x14]                          // 0x0061af19    3b4614
                         {disp8} jne       _jmp_addr_0x0061af5c                                 // 0x0061af1c    753e
                         {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x0061af1e    8b442414
                         neg               eax                                                  // 0x0061af22    f7d8
                         shl               eax, 7                                               // 0x0061af24    c1e007
                         shr               eax, 8                                               // 0x0061af27    c1e808
                         add.s             eax, ecx                                             // 0x0061af2a    03c1
                         xor.s             edx, edx                                             // 0x0061af2c    33d2
                         mov.s             dl, al                                               // 0x0061af2e    8ad0
                         neg               ebp                                                  // 0x0061af30    f7dd
                         shl               ebp, 7                                               // 0x0061af32    c1e507
                         mov.s             eax, ebp                                             // 0x0061af35    8bc5
                         {disp8} mov       ebp, dword ptr [esp + 0x20]                          // 0x0061af37    8b6c2420
                         shr               eax, 8                                               // 0x0061af3b    c1e808
                         neg               edi                                                  // 0x0061af3e    f7df
                         add.s             eax, ebp                                             // 0x0061af40    03c5
                         shl               edi, 7                                               // 0x0061af42    c1e707
                         mov.s             dh, ah                                               // 0x0061af45    8af4
                         {disp8} mov       eax, dword ptr [esp + 0x18]                          // 0x0061af47    8b442418
                         shr               edi, 8                                               // 0x0061af4b    c1ef08
                         add.s             edi, eax                                             // 0x0061af4e    03f8
                         and               edi, 0x00ff0000                                      // 0x0061af50    81e70000ff00
                         or.s              edx, edi                                             // 0x0061af56    0bd7
                         mov.s             eax, edx                                             // 0x0061af58    8bc2
                         {disp8} jmp       _jmp_addr_0x0061af5f                                 // 0x0061af5a    eb03
_jmp_addr_0x0061af5c:    or                eax, -0x1                                            // 0x0061af5c    83c8ff
_jmp_addr_0x0061af5f:    {disp8} mov       edx, dword ptr [esi + 0x04]                          // 0x0061af5f    8b5604
                         push              0x1                                                  // 0x0061af62    6a01
                         push              0x1                                                  // 0x0061af64    6a01
                         push              ecx                                                  // 0x0061af66    51
                         push              ecx                                                  // 0x0061af67    51
                         {disp32} mov      dword ptr [edx + 0x00000294], eax                    // 0x0061af68    898294020000
                         {disp8} mov       eax, dword ptr [esi + 0x28]                          // 0x0061af6e    8b4628
                         {disp8} mov       edx, dword ptr [esi + 0x20]                          // 0x0061af71    8b5620
                         push              ecx                                                  // 0x0061af74    51
                         push              ecx                                                  // 0x0061af75    51
                         {disp8} mov       ecx, dword ptr [esi + 0x24]                          // 0x0061af76    8b4e24
                         dec               eax                                                  // 0x0061af79    48
                         push              eax                                                  // 0x0061af7a    50
                         {disp8} mov       eax, dword ptr [esi + 0x1c]                          // 0x0061af7b    8b461c
                         dec               ecx                                                  // 0x0061af7e    49
                         push              ecx                                                  // 0x0061af7f    51
                         inc               edx                                                  // 0x0061af80    42
                         push              edx                                                  // 0x0061af81    52
                         inc               eax                                                  // 0x0061af82    40
                         push              eax                                                  // 0x0061af83    50
                         call              ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z                 // 0x0061af84    e83783dfff
                         {disp8} mov       ebp, dword ptr [esp + 0x5c]                          // 0x0061af89    8b6c245c
                         {disp32} mov      dword ptr [data_bytes + 0x2078], ebx                 // 0x0061af8d    891d78809c00
                         {disp8} mov       ebx, dword ptr [esp + 0x50]                          // 0x0061af93    8b5c2450
                         add               esp, 0x28                                            // 0x0061af97    83c428
                         {disp8} jmp       _jmp_addr_0x0061aff4                                 // 0x0061af9a    eb58
_jmp_addr_0x0061af9c:    cmp               ebx, 0x0e                                            // 0x0061af9c    83fb0e
                         {disp8} jne       _jmp_addr_0x0061aff4                                 // 0x0061af9f    7553
                         mov.s             edx, eax                                             // 0x0061afa1    8bd0
                         shl               edx, 6                                               // 0x0061afa3    c1e206
                         add.s             edx, eax                                             // 0x0061afa6    03d0
                         {disp32} mov      eax, dword ptr [ecx + 0x00000a4c]                    // 0x0061afa8    8b814c0a0000
                         {disp32} mov      ecx, dword ptr [eax + edx * 0x8 + 0x00000228]        // 0x0061afae    8b8cd028020000
                         test              ecx, ecx                                             // 0x0061afb5    85c9
                         {disp8} je        _jmp_addr_0x0061aff4                                 // 0x0061afb7    743b
                         {disp32} mov      edi, dword ptr [data_bytes + 0x2078]                 // 0x0061afb9    8b3d78809c00
                         mov.s             eax, edi                                             // 0x0061afbf    8bc7
                         cdq                                                                    // 0x0061afc1    99
                         and               edx, 0x03                                            // 0x0061afc2    83e203
                         add.s             eax, edx                                             // 0x0061afc5    03c2
                         sar               eax, 2                                               // 0x0061afc7    c1f802
                         {disp32} mov      dword ptr [data_bytes + 0x2078], eax                 // 0x0061afca    a378809c00
                         {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061afcf    8b4604
                         {disp8} mov       ecx, dword ptr [esi + 0x14]                          // 0x0061afd2    8b4e14
                         {disp8} mov       edx, dword ptr [eax + 0x14]                          // 0x0061afd5    8b5014
                         push              ecx                                                  // 0x0061afd8    51
                         {disp8} mov       ecx, dword ptr [eax + 0x10]                          // 0x0061afd9    8b4810
                         push              edx                                                  // 0x0061afdc    52
                         {disp8} mov       edx, dword ptr [eax + 0x0c]                          // 0x0061afdd    8b500c
                         {disp8} mov       eax, dword ptr [eax + 0x08]                          // 0x0061afe0    8b4008
                         push              ecx                                                  // 0x0061afe3    51
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061afe4    8b4e10
                         push              edx                                                  // 0x0061afe7    52
                         push              eax                                                  // 0x0061afe8    50
                         call              _jmp_addr_0x0061e7c0                                 // 0x0061afe9    e8d2370000
                         {disp32} mov      dword ptr [data_bytes + 0x2078], edi                 // 0x0061afee    893d78809c00
_jmp_addr_0x0061aff4:    {disp8} mov       eax, dword ptr [esp + 0x1c]                          // 0x0061aff4    8b44241c
                         test              eax, eax                                             // 0x0061aff8    85c0
                         {disp32} je       _jmp_addr_0x0061b31f                                 // 0x0061affa    0f841f030000
                         {disp8} mov       edi, dword ptr [esp + 0x30]                          // 0x0061b000    8b7c2430
                         cmp               edi, dword ptr [esi + 0x0c]                          // 0x0061b004    3b7e0c
                         {disp8} jne       _jmp_addr_0x0061b023                                 // 0x0061b007    751a
                         cmp               ebx, 0x01                                            // 0x0061b009    83fb01
                         {disp8} jne       _jmp_addr_0x0061b023                                 // 0x0061b00c    7515
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b00e    8b4e10
                         {disp8} mov       eax, dword ptr [esi + 0x14]                          // 0x0061b011    8b4614
                         cmp               eax, dword ptr [ecx + 0x14]                          // 0x0061b014    3b4114
                         {disp8} jne       _jmp_addr_0x0061b01d                                 // 0x0061b017    7504
                         push              0x5                                                  // 0x0061b019    6a05
                         {disp8} jmp       _jmp_addr_0x0061b01e                                 // 0x0061b01b    eb01
_jmp_addr_0x0061b01d:    push              eax                                                  // 0x0061b01d    50
_jmp_addr_0x0061b01e:    call              _jmp_addr_0x0061b330                                 // 0x0061b01e    e80d030000
_jmp_addr_0x0061b023:    {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061b023    8b4e04
                         cmp.s             edi, ecx                                             // 0x0061b026    3bf9
                         {disp32} jne      _jmp_addr_0x0061b0c5                                 // 0x0061b028    0f8597000000
                         cmp               ebx, 0x01                                            // 0x0061b02e    83fb01
                         {disp8} je        _jmp_addr_0x0061b038                                 // 0x0061b031    7405
                         cmp               ebx, 0x04                                            // 0x0061b033    83fb04
                         {disp8} jne       _jmp_addr_0x0061b060                                 // 0x0061b036    7528
_jmp_addr_0x0061b038:    {disp32} mov      eax, dword ptr [ecx + 0x00000248]                    // 0x0061b038    8b8148020000
                         test              eax, eax                                             // 0x0061b03e    85c0
                         {disp8} jl        _jmp_addr_0x0061b073                                 // 0x0061b040    7c31
                         cmp               eax, dword ptr [ecx + 0x00000250]                    // 0x0061b042    3b8150020000
                         {disp8} jge       _jmp_addr_0x0061b055                                 // 0x0061b048    7d0b
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000264]                    // 0x0061b04a    8b8964020000
                         mov               eax, dword ptr [ecx + eax * 0x4]                     // 0x0061b050    8b0481
                         {disp8} jmp       _jmp_addr_0x0061b057                                 // 0x0061b053    eb02
_jmp_addr_0x0061b055:    xor.s             eax, eax                                             // 0x0061b055    33c0
_jmp_addr_0x0061b057:    {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b057    8b4e10
                         push              eax                                                  // 0x0061b05a    50
                         call              _jmp_addr_0x0061b350                                 // 0x0061b05b    e8f0020000
_jmp_addr_0x0061b060:    cmp               ebx, 0x09                                            // 0x0061b060    83fb09
                         {disp8} jne       _jmp_addr_0x0061b0b2                                 // 0x0061b063    754d
                         pop               edi                                                  // 0x0061b065    5f
                         {disp8} mov       byte ptr [esi + 0x18], 0x01                          // 0x0061b066    c6461801
                         pop               esi                                                  // 0x0061b06a    5e
                         pop               ebp                                                  // 0x0061b06b    5d
                         pop               ebx                                                  // 0x0061b06c    5b
                         add               esp, 0x14                                            // 0x0061b06d    83c414
                         ret               0x0014                                               // 0x0061b070    c21400
_jmp_addr_0x0061b073:    {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b073    8b4e10
                         {disp32} mov      edx, dword ptr [ecx + 0x00000a4c]                    // 0x0061b076    8b914c0a0000
                         {disp32} mov      eax, dword ptr [edx + 0x00000a58]                    // 0x0061b07c    8b82580a0000
                         test              eax, eax                                             // 0x0061b082    85c0
                         {disp8} je        _jmp_addr_0x0061b094                                 // 0x0061b084    740e
                         cmp               ebx, 0x01                                            // 0x0061b086    83fb01
                         {disp8} jne       _jmp_addr_0x0061b060                                 // 0x0061b089    75d5
                         push              0x0                                                  // 0x0061b08b    6a00
                         call              _jmp_addr_0x0061b350                                 // 0x0061b08d    e8be020000
                         {disp8} jmp       _jmp_addr_0x0061b0ca                                 // 0x0061b092    eb36
_jmp_addr_0x0061b094:    cmp               ebx, 0x01                                            // 0x0061b094    83fb01
                         {disp8} jne       _jmp_addr_0x0061b060                                 // 0x0061b097    75c7
                         {disp8} mov       eax, dword ptr [esi + 0x14]                          // 0x0061b099    8b4614
                         cmp               eax, dword ptr [ecx + 0x14]                          // 0x0061b09c    3b4114
                         {disp8} jne       _jmp_addr_0x0061b0aa                                 // 0x0061b09f    7509
                         push              0x5                                                  // 0x0061b0a1    6a05
                         call              _jmp_addr_0x0061b330                                 // 0x0061b0a3    e888020000
                         {disp8} jmp       _jmp_addr_0x0061b0ca                                 // 0x0061b0a8    eb20
_jmp_addr_0x0061b0aa:    push              eax                                                  // 0x0061b0aa    50
                         call              _jmp_addr_0x0061b330                                 // 0x0061b0ab    e880020000
                         {disp8} jmp       _jmp_addr_0x0061b0ca                                 // 0x0061b0b0    eb18
_jmp_addr_0x0061b0b2:    cmp               ebx, 0x0a                                            // 0x0061b0b2    83fb0a
                         {disp8} jne       _jmp_addr_0x0061b0c5                                 // 0x0061b0b5    750e
                         pop               edi                                                  // 0x0061b0b7    5f
                         {disp8} mov       byte ptr [esi + 0x18], 0x00                          // 0x0061b0b8    c6461800
                         pop               esi                                                  // 0x0061b0bc    5e
                         pop               ebp                                                  // 0x0061b0bd    5d
                         pop               ebx                                                  // 0x0061b0be    5b
                         add               esp, 0x14                                            // 0x0061b0bf    83c414
                         ret               0x0014                                               // 0x0061b0c2    c21400
_jmp_addr_0x0061b0c5:    cmp               ebx, 0x01                                            // 0x0061b0c5    83fb01
                         {disp8} jne       _jmp_addr_0x0061b107                                 // 0x0061b0c8    753d
_jmp_addr_0x0061b0ca:    cmp               edi, dword ptr [esi + 0x08]                          // 0x0061b0ca    3b7e08
                         {disp8} jne       _jmp_addr_0x0061b0e1                                 // 0x0061b0cd    7512
                         {disp8} mov       eax, dword ptr [esi + 0x14]                          // 0x0061b0cf    8b4614
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b0d2    8b4e10
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000a4c]                    // 0x0061b0d5    8b894c0a0000
                         push              eax                                                  // 0x0061b0db    50
                         call              _jmp_addr_0x00622ff0                                 // 0x0061b0dc    e80f7f0000
_jmp_addr_0x0061b0e1:    {disp8} mov       esi, dword ptr [esi + 0x10]                          // 0x0061b0e1    8b7610
                         cmp               edi, dword ptr [esi + 0x00000128]                    // 0x0061b0e4    3bbe28010000
                         {disp32} jne      _jmp_addr_0x0061b31f                                 // 0x0061b0ea    0f852f020000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061b0f0    8b8e4c0a0000
                         push              0x0                                                  // 0x0061b0f6    6a00
                         call              _jmp_addr_0x00622ff0                                 // 0x0061b0f8    e8f37e0000
                         pop               edi                                                  // 0x0061b0fd    5f
                         pop               esi                                                  // 0x0061b0fe    5e
                         pop               ebp                                                  // 0x0061b0ff    5d
                         pop               ebx                                                  // 0x0061b100    5b
                         add               esp, 0x14                                            // 0x0061b101    83c414
                         ret               0x0014                                               // 0x0061b104    c21400
_jmp_addr_0x0061b107:    cmp               ebx, 0x0d                                            // 0x0061b107    83fb0d
                         {disp32} jne      _jmp_addr_0x0061b31f                                 // 0x0061b10a    0f850f020000
                         cmp               byte ptr [esi + 0x18], 0x01                          // 0x0061b110    807e1801
                         {disp8} jne       _jmp_addr_0x0061b128                                 // 0x0061b114    7512
                         {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061b116    8b5610
                         {disp8} mov       eax, dword ptr [edx + 0x04]                          // 0x0061b119    8b4204
                         {disp8} mov       ecx, dword ptr [eax + 0x70]                          // 0x0061b11c    8b4870
                         cmp               ecx, dword ptr [esi + 0x04]                          // 0x0061b11f    3b4e04
                         {disp32} je       _jmp_addr_0x0061b31f                                 // 0x0061b122    0f84f7010000
_jmp_addr_0x0061b128:    {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061b128    8b4604
                         {disp32} mov      edx, dword ptr [eax + 0x00000248]                    // 0x0061b12b    8b9048020000
                         test              edx, edx                                             // 0x0061b131    85d2
                         {disp32} jl       _jmp_addr_0x0061b31f                                 // 0x0061b133    0f8ce6010000
                         cmp               ebp, dword ptr [eax + 0x000002a0]                    // 0x0061b139    3ba8a0020000
                         {disp32} jl       _jmp_addr_0x0061b31f                                 // 0x0061b13f    0f8cda010000
                         {disp32} mov      ebx, dword ptr [eax + 0x000002a4]                    // 0x0061b145    8b98a4020000
                         cmp               dword ptr [esp + 0x38], ebx                          // 0x0061b14b    395c2438
                         {disp32} jl       _jmp_addr_0x0061b31f                                 // 0x0061b14f    0f8cca010000
                         {disp32} mov      edi, dword ptr [eax + 0x000002a8]                    // 0x0061b155    8bb8a8020000
                         cmp.s             ebp, edi                                             // 0x0061b15b    3bef
                         {disp32} jge      _jmp_addr_0x0061b31f                                 // 0x0061b15d    0f8dbc010000
                         {disp32} mov      ecx, dword ptr [eax + 0x000002ac]                    // 0x0061b163    8b88ac020000
                         cmp               dword ptr [esp + 0x38], ecx                          // 0x0061b169    394c2438
                         {disp32} jge      _jmp_addr_0x0061b31f                                 // 0x0061b16d    0f8dac010000
                         test              edx, edx                                             // 0x0061b173    85d2
                         {disp8} jl        _jmp_addr_0x0061b18a                                 // 0x0061b175    7c13
                         cmp               edx, dword ptr [eax + 0x00000250]                    // 0x0061b177    3b9050020000
                         {disp8} jge       _jmp_addr_0x0061b18a                                 // 0x0061b17d    7d0b
                         {disp32} mov      eax, dword ptr [eax + 0x00000264]                    // 0x0061b17f    8b8064020000
                         mov               edx, dword ptr [eax + edx * 0x4]                     // 0x0061b185    8b1490
                         {disp8} jmp       _jmp_addr_0x0061b18c                                 // 0x0061b188    eb02
_jmp_addr_0x0061b18a:    xor.s             edx, edx                                             // 0x0061b18a    33d2
_jmp_addr_0x0061b18c:    {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b18c    8b4610
                         cmp               edx, dword ptr [eax + 0x00000a44]                    // 0x0061b18f    3b90440a0000
                         sete              dl                                                   // 0x0061b195    0f94c2
                         sub.s             ecx, ebx                                             // 0x0061b198    2bcb
                         cmp               ecx, 0x0a                                            // 0x0061b19a    83f90a
                         {disp32} jle      _jmp_addr_0x0061b31f                                 // 0x0061b19d    0f8e7c010000
                         add               edi, -0x04                                           // 0x0061b1a3    83c7fc
                         test              dl, dl                                               // 0x0061b1a6    84d2
                         {disp32} jne      _jmp_addr_0x0061b2ad                                 // 0x0061b1a8    0f85ff000000
                         {disp8} mov       cl, byte ptr [esp + 0x12]                            // 0x0061b1ae    8a4c2412
                         test              cl, cl                                               // 0x0061b1b2    84c9
                         {disp8} je        _jmp_addr_0x0061b235                                 // 0x0061b1b4    747f
                         {disp32} mov      ecx, dword ptr [eax + 0x00000124]                    // 0x0061b1b6    8b8824010000
                         {disp32} mov      edx, dword ptr [eax + 0x00000130]                    // 0x0061b1bc    8b9030010000
                         {disp8} mov       dword ptr [ecx + 0x10], edx                          // 0x0061b1c2    895110
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b1c5    8b4610
                         {disp32} mov      eax, dword ptr [eax + 0x00000124]                    // 0x0061b1c8    8b8024010000
                         {disp8} mov       edx, dword ptr [eax + 0x10]                          // 0x0061b1ce    8b5010
                         mov.s             ecx, edi                                             // 0x0061b1d1    8bcf
                         sub.s             ecx, edx                                             // 0x0061b1d3    2bca
                         {disp8} mov       dword ptr [eax + 0x08], ecx                          // 0x0061b1d5    894808
                         {disp8} mov       edx, dword ptr [esi + 0x04]                          // 0x0061b1d8    8b5604
                         {disp32} mov      eax, dword ptr [edx + 0x000002a4]                    // 0x0061b1db    8b82a4020000
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b1e1    8b4e10
                         {disp32} mov      edx, dword ptr [ecx + 0x00000124]                    // 0x0061b1e4    8b9124010000
                         add               eax, 0x02                                            // 0x0061b1ea    83c002
                         {disp8} mov       dword ptr [edx + 0x0c], eax                          // 0x0061b1ed    89420c
                         {disp8} mov       eax, dword ptr [esi + 0x04]                          // 0x0061b1f0    8b4604
                         {disp32} mov      ecx, dword ptr [eax + 0x000002ac]                    // 0x0061b1f3    8b88ac020000
                         {disp8} mov       edx, dword ptr [esi + 0x10]                          // 0x0061b1f9    8b5610
                         {disp32} mov      eax, dword ptr [edx + 0x00000124]                    // 0x0061b1fc    8b8224010000
                         sub               ecx, 0x02                                            // 0x0061b202    83e902
                         {disp8} mov       dword ptr [eax + 0x14], ecx                          // 0x0061b205    894814
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b208    8b4e10
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000124]                    // 0x0061b20b    8b8924010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b211    8b11
                         push              0x0                                                  // 0x0061b213    6a00
                         call              dword ptr [edx + 8]                                  // 0x0061b215    ff5208
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b218    8b4610
                         {disp32} mov      eax, dword ptr [eax + 0x00000124]                    // 0x0061b21b    8b8024010000
                         {disp8} mov       ecx, dword ptr [eax + 0x10]                          // 0x0061b221    8b4810
                         mov               edx, 0xfffffffc                                      // 0x0061b224    bafcffffff
                         sub.s             edx, ecx                                             // 0x0061b229    2bd1
                         add.s             edi, edx                                             // 0x0061b22b    03fa
                         {disp8} mov       edx, dword ptr [eax + 0x08]                          // 0x0061b22d    8b5008
                         add.s             edx, ecx                                             // 0x0061b230    03d1
                         {disp8} mov       dword ptr [eax + 0x10], edx                          // 0x0061b232    895010
_jmp_addr_0x0061b235:    {disp8} mov       al, byte ptr [esp + 0x11]                            // 0x0061b235    8a442411
                         test              al, al                                               // 0x0061b239    84c0
                         {disp32} je       _jmp_addr_0x0061b31f                                 // 0x0061b23b    0f84de000000
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b241    8b4610
                         {disp32} mov      ecx, dword ptr [eax + 0x00000120]                    // 0x0061b244    8b8820010000
                         {disp32} mov      edx, dword ptr [eax + 0x0000012c]                    // 0x0061b24a    8b902c010000
                         {disp8} mov       dword ptr [ecx + 0x10], edx                          // 0x0061b250    895110
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b253    8b4610
                         {disp32} mov      eax, dword ptr [eax + 0x00000120]                    // 0x0061b256    8b8020010000
                         sub               edi, dword ptr [eax + 0x10]                          // 0x0061b25c    2b7810
                         {disp8} mov       dword ptr [eax + 0x08], edi                          // 0x0061b25f    897808
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061b262    8b4e04
                         {disp32} mov      edx, dword ptr [ecx + 0x000002a4]                    // 0x0061b265    8b91a4020000
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b26b    8b4610
                         {disp32} mov      ecx, dword ptr [eax + 0x00000120]                    // 0x0061b26e    8b8820010000
                         add               edx, 0x02                                            // 0x0061b274    83c202
                         {disp8} mov       dword ptr [ecx + 0x0c], edx                          // 0x0061b277    89510c
                         {disp8} mov       edx, dword ptr [esi + 0x04]                          // 0x0061b27a    8b5604
                         {disp32} mov      eax, dword ptr [edx + 0x000002ac]                    // 0x0061b27d    8b82ac020000
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b283    8b4e10
                         {disp32} mov      edx, dword ptr [ecx + 0x00000120]                    // 0x0061b286    8b9120010000
                         sub               eax, 0x02                                            // 0x0061b28c    83e802
                         {disp8} mov       dword ptr [edx + 0x14], eax                          // 0x0061b28f    894214
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b292    8b4610
                         {disp32} mov      ecx, dword ptr [eax + 0x00000120]                    // 0x0061b295    8b8820010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b29b    8b11
                         push              0x0                                                  // 0x0061b29d    6a00
                         call              dword ptr [edx + 8]                                  // 0x0061b29f    ff5208
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b2a2    8b4610
                         {disp32} mov      eax, dword ptr [eax + 0x00000120]                    // 0x0061b2a5    8b8020010000
                         {disp8} jmp       _jmp_addr_0x0061b319                                 // 0x0061b2ab    eb6c
_jmp_addr_0x0061b2ad:    {disp8} mov       cl, byte ptr [esp + 0x13]                            // 0x0061b2ad    8a4c2413
                         test              cl, cl                                               // 0x0061b2b1    84c9
                         {disp8} je        _jmp_addr_0x0061b31f                                 // 0x0061b2b3    746a
                         {disp32} mov      eax, dword ptr [eax + 0x00000128]                    // 0x0061b2b5    8b8028010000
                         {disp8} mov       edx, dword ptr [eax + 0x08]                          // 0x0061b2bb    8b5008
                         sub               dword ptr [eax + 0x10], edx                          // 0x0061b2be    295010
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b2c1    8b4610
                         {disp32} mov      eax, dword ptr [eax + 0x00000128]                    // 0x0061b2c4    8b8028010000
                         sub               edi, dword ptr [eax + 0x10]                          // 0x0061b2ca    2b7810
                         {disp8} mov       dword ptr [eax + 0x08], edi                          // 0x0061b2cd    897808
                         {disp8} mov       ecx, dword ptr [esi + 0x04]                          // 0x0061b2d0    8b4e04
                         {disp32} mov      edx, dword ptr [ecx + 0x000002a4]                    // 0x0061b2d3    8b91a4020000
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b2d9    8b4610
                         {disp32} mov      ecx, dword ptr [eax + 0x00000128]                    // 0x0061b2dc    8b8828010000
                         add               edx, 0x02                                            // 0x0061b2e2    83c202
                         {disp8} mov       dword ptr [ecx + 0x0c], edx                          // 0x0061b2e5    89510c
                         {disp8} mov       edx, dword ptr [esi + 0x04]                          // 0x0061b2e8    8b5604
                         {disp32} mov      eax, dword ptr [edx + 0x000002ac]                    // 0x0061b2eb    8b82ac020000
                         {disp8} mov       ecx, dword ptr [esi + 0x10]                          // 0x0061b2f1    8b4e10
                         {disp32} mov      edx, dword ptr [ecx + 0x00000128]                    // 0x0061b2f4    8b9128010000
                         sub               eax, 0x02                                            // 0x0061b2fa    83e802
                         {disp8} mov       dword ptr [edx + 0x14], eax                          // 0x0061b2fd    894214
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b300    8b4610
                         {disp32} mov      ecx, dword ptr [eax + 0x00000128]                    // 0x0061b303    8b8828010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b309    8b11
                         push              0x0                                                  // 0x0061b30b    6a00
                         call              dword ptr [edx + 8]                                  // 0x0061b30d    ff5208
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b310    8b4610
                         {disp32} mov      eax, dword ptr [eax + 0x00000128]                    // 0x0061b313    8b8028010000
_jmp_addr_0x0061b319:    {disp8} mov       ecx, dword ptr [eax + 0x08]                          // 0x0061b319    8b4808
                         add               dword ptr [eax + 0x10], ecx                          // 0x0061b31c    014810
_jmp_addr_0x0061b31f:    pop               edi                                                  // 0x0061b31f    5f
                         pop               esi                                                  // 0x0061b320    5e
                         pop               ebp                                                  // 0x0061b321    5d
                         pop               ebx                                                  // 0x0061b322    5b
                         add               esp, 0x14                                            // 0x0061b323    83c414
                         ret               0x0014                                               // 0x0061b326    c21400
                         nop                                                                    // 0x0061b329    90
                         nop                                                                    // 0x0061b32a    90
                         nop                                                                    // 0x0061b32b    90
                         nop                                                                    // 0x0061b32c    90
                         nop                                                                    // 0x0061b32d    90
                         nop                                                                    // 0x0061b32e    90
                         nop                                                                    // 0x0061b32f    90
_jmp_addr_0x0061b330:    {disp8} mov       eax, dword ptr [ecx + 0x10]                          // 0x0061b330    8b4110
                         test              eax, eax                                             // 0x0061b333    85c0
                         mov               eax, 0x00000005                                      // 0x0061b335    b805000000
                         {disp8} jne       _jmp_addr_0x0061b340                                 // 0x0061b33a    7504
                         {disp8} mov       eax, dword ptr [esp + 0x04]                          // 0x0061b33c    8b442404
_jmp_addr_0x0061b340:    push              0x0                                                  // 0x0061b340    6a00
                         {disp8} mov       dword ptr [ecx + 0x14], eax                          // 0x0061b342    894114
                         call              _jmp_addr_0x0061b350                                 // 0x0061b345    e806000000
                         ret               0x0004                                               // 0x0061b34a    c20400
                         nop                                                                    // 0x0061b34d    90
                         nop                                                                    // 0x0061b34e    90
                         nop                                                                    // 0x0061b34f    90
_jmp_addr_0x0061b350:    sub               esp, 0x08                                            // 0x0061b350    83ec08
                         push              ebx                                                  // 0x0061b353    53
                         push              ebp                                                  // 0x0061b354    55
                         mov.s             ebp, ecx                                             // 0x0061b355    8be9
                         {disp32} mov      eax, dword ptr [ebp + 0x00000a4c]                    // 0x0061b357    8b854c0a0000
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                          // 0x0061b35d    8b4c2414
                         push              esi                                                  // 0x0061b361    56
                         push              edi                                                  // 0x0061b362    57
                         {disp32} mov      dword ptr [eax + 0x00000a58], ecx                    // 0x0061b363    8988580a0000
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000                   // 0x0061b369    c744241400000000
                         {disp8} lea       ebx, dword ptr [ebp + 0x3c]                          // 0x0061b371    8d5d3c
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000005                   // 0x0061b374    c744241005000000
_jmp_addr_0x0061b37c:    mov               eax, dword ptr [ebx]                                 // 0x0061b37c    8b03
                         {disp32} mov      dword ptr [eax + 0x00000248], 0xffffffff             // 0x0061b37e    c78048020000ffffffff
                         mov               edx, dword ptr [ebx]                                 // 0x0061b388    8b13
                         {disp32} mov      eax, dword ptr [edx + 0x00000250]                    // 0x0061b38a    8b8250020000
                         xor.s             esi, esi                                             // 0x0061b390    33f6
                         test              eax, eax                                             // 0x0061b392    85c0
                         {disp32} jle      _jmp_addr_0x0061b434                                 // 0x0061b394    0f8e9a000000
_jmp_addr_0x0061b39a:    test              esi, esi                                             // 0x0061b39a    85f6
                         mov               edi, dword ptr [ebx]                                 // 0x0061b39c    8b3b
                         {disp8} jl        _jmp_addr_0x0061b3b3                                 // 0x0061b39e    7c13
                         cmp               esi, dword ptr [edi + 0x00000250]                    // 0x0061b3a0    3bb750020000
                         {disp8} jge       _jmp_addr_0x0061b3b3                                 // 0x0061b3a6    7d0b
                         {disp32} mov      eax, dword ptr [edi + 0x00000264]                    // 0x0061b3a8    8b8764020000
                         mov               eax, dword ptr [eax + esi * 0x4]                     // 0x0061b3ae    8b04b0
                         {disp8} jmp       _jmp_addr_0x0061b3b5                                 // 0x0061b3b1    eb02
_jmp_addr_0x0061b3b3:    xor.s             eax, eax                                             // 0x0061b3b3    33c0
_jmp_addr_0x0061b3b5:    cmp               eax, dword ptr [esp + 0x1c]                          // 0x0061b3b5    3b44241c
                         {disp8} jne       _jmp_addr_0x0061b423                                 // 0x0061b3b9    7568
                         test              esi, esi                                             // 0x0061b3bb    85f6
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000001                   // 0x0061b3bd    c744241401000000
                         {disp8} jl        _jmp_addr_0x0061b3d7                                 // 0x0061b3c5    7c10
                         cmp               esi, dword ptr [edi + 0x00000250]                    // 0x0061b3c7    3bb750020000
                         {disp8} jge       _jmp_addr_0x0061b3d7                                 // 0x0061b3cd    7d08
                         {disp32} mov      dword ptr [edi + 0x00000248], esi                    // 0x0061b3cf    89b748020000
                         {disp8} jmp       _jmp_addr_0x0061b3e1                                 // 0x0061b3d5    eb0a
_jmp_addr_0x0061b3d7:    {disp32} mov      dword ptr [edi + 0x00000248], 0xffffffff             // 0x0061b3d7    c78748020000ffffffff
_jmp_addr_0x0061b3e1:    {disp8} mov       eax, dword ptr [edi + 0x04]                          // 0x0061b3e1    8b4704
                         test              eax, eax                                             // 0x0061b3e4    85c0
                         {disp8} je        _jmp_addr_0x0061b423                                 // 0x0061b3e6    743b
                         {disp32} mov      eax, dword ptr [data_bytes + 0x286d00]               // 0x0061b3e8    a100cdc400
                         test              eax, eax                                             // 0x0061b3ed    85c0
                         {disp8} je        _jmp_addr_0x0061b423                                 // 0x0061b3ef    7432
                         test              esi, esi                                             // 0x0061b3f1    85f6
                         {disp8} jl        _jmp_addr_0x0061b423                                 // 0x0061b3f3    7c2e
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061b3f5    8b0d04c1e800
                         call              @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4       // 0x0061b3fb    e8c0891d00
                         cmp.s             eax, esi                                             // 0x0061b400    3bc6
                         {disp8} je        _jmp_addr_0x0061b423                                 // 0x0061b402    741f
                         {disp32} mov      ecx, dword ptr [edi + 0x00000250]                    // 0x0061b404    8b8f50020000
                         push              esi                                                  // 0x0061b40a    56
                         dec               ecx                                                  // 0x0061b40b    49
                         push              ecx                                                  // 0x0061b40c    51
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x4c6104]               // 0x0061b40d    8b0d04c1e800
                         push              0x0                                                  // 0x0061b413    6a00
                         call              @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20// 0x0061b415    e8c6891d00
                         push              0x0                                                  // 0x0061b41a    6a00
                         mov.s             ecx, edi                                             // 0x0061b41c    8bcf
                         call              @AutoScroll__9SetupListFb@9                          // 0x0061b41e    e8ade9deff
_jmp_addr_0x0061b423:    mov               edx, dword ptr [ebx]                                 // 0x0061b423    8b13
                         {disp32} mov      eax, dword ptr [edx + 0x00000250]                    // 0x0061b425    8b8250020000
                         inc               esi                                                  // 0x0061b42b    46
                         cmp.s             esi, eax                                             // 0x0061b42c    3bf0
                         {disp32} jl       _jmp_addr_0x0061b39a                                 // 0x0061b42e    0f8c66ffffff
_jmp_addr_0x0061b434:    {disp8} mov       eax, dword ptr [esp + 0x10]                          // 0x0061b434    8b442410
                         add               ebx, 0x2c                                            // 0x0061b438    83c32c
                         dec               eax                                                  // 0x0061b43b    48
                         {disp8} mov       dword ptr [esp + 0x10], eax                          // 0x0061b43c    89442410
                         {disp32} jne      _jmp_addr_0x0061b37c                                 // 0x0061b440    0f8536ffffff
                         {disp8} mov       eax, dword ptr [esp + 0x14]                          // 0x0061b446    8b442414
                         test              eax, eax                                             // 0x0061b44a    85c0
                         {disp8} jne       _jmp_addr_0x0061b45e                                 // 0x0061b44c    7510
                         {disp32} mov      eax, dword ptr [ebp + 0x00000a4c]                    // 0x0061b44e    8b854c0a0000
                         {disp32} mov      dword ptr [eax + 0x00000a58], 0x00000000             // 0x0061b454    c780580a000000000000
_jmp_addr_0x0061b45e:    {disp32} mov      ecx, dword ptr [ebp + 0x00000a4c]                    // 0x0061b45e    8b8d4c0a0000
                         {disp32} mov      eax, dword ptr [ecx + 0x00000a58]                    // 0x0061b464    8b81580a0000
                         test              eax, eax                                             // 0x0061b46a    85c0
                         {disp8} je        _jmp_addr_0x0061b475                                 // 0x0061b46c    7407
                         {disp8} mov       dword ptr [ebp + 0x14], 0x00000005                   // 0x0061b46e    c7451405000000
_jmp_addr_0x0061b475:    mov.s             ecx, ebp                                             // 0x0061b475    8bcd
                         call              _jmp_addr_0x0061ccb0                                 // 0x0061b477    e834180000
                         mov.s             ecx, ebp                                             // 0x0061b47c    8bcd
                         call              _jmp_addr_0x0061d680                                 // 0x0061b47e    e8fd210000
                         {disp32} mov      ecx, dword ptr [ebp + 0x00000a4c]                    // 0x0061b483    8b8d4c0a0000
                         {disp32} mov      eax, dword ptr [ecx + 0x00000a58]                    // 0x0061b489    8b81580a0000
                         test              eax, eax                                             // 0x0061b48f    85c0
                         {disp8} je        _jmp_addr_0x0061b4b7                                 // 0x0061b491    7424
                         cmp               dword ptr [ebp + 0x10], 0x02                         // 0x0061b493    837d1002
                         {disp8} jne       _jmp_addr_0x0061b49f                                 // 0x0061b497    7506
                         push              eax                                                  // 0x0061b499    50
                         call              _jmp_addr_0x006239a0                                 // 0x0061b49a    e801850000
_jmp_addr_0x0061b49f:    cmp               dword ptr [ebp + 0x10], 0x03                         // 0x0061b49f    837d1003
                         {disp8} jne       _jmp_addr_0x0061b4b7                                 // 0x0061b4a3    7512
                         {disp32} mov      ecx, dword ptr [ebp + 0x00000a4c]                    // 0x0061b4a5    8b8d4c0a0000
                         {disp32} mov      edx, dword ptr [ecx + 0x00000a58]                    // 0x0061b4ab    8b91580a0000
                         push              edx                                                  // 0x0061b4b1    52
                         call              _jmp_addr_0x006239c0                                 // 0x0061b4b2    e809850000
_jmp_addr_0x0061b4b7:    pop               edi                                                  // 0x0061b4b7    5f
                         pop               esi                                                  // 0x0061b4b8    5e
                         pop               ebp                                                  // 0x0061b4b9    5d
                         pop               ebx                                                  // 0x0061b4ba    5b
                         add               esp, 0x08                                            // 0x0061b4bb    83c408
                         ret               0x0004                                               // 0x0061b4be    c20400
                         nop                                                                    // 0x0061b4c1    90
                         nop                                                                    // 0x0061b4c2    90
                         nop                                                                    // 0x0061b4c3    90
                         nop                                                                    // 0x0061b4c4    90
                         nop                                                                    // 0x0061b4c5    90
                         nop                                                                    // 0x0061b4c6    90
                         nop                                                                    // 0x0061b4c7    90
                         nop                                                                    // 0x0061b4c8    90
                         nop                                                                    // 0x0061b4c9    90
                         nop                                                                    // 0x0061b4ca    90
                         nop                                                                    // 0x0061b4cb    90
                         nop                                                                    // 0x0061b4cc    90
                         nop                                                                    // 0x0061b4cd    90
                         nop                                                                    // 0x0061b4ce    90
                         nop                                                                    // 0x0061b4cf    90
_jmp_addr_0x0061b4d0:    push              ebx                                                  // 0x0061b4d0    53
                         push              ebp                                                  // 0x0061b4d1    55
                         push              esi                                                  // 0x0061b4d2    56
                         mov.s             esi, ecx                                             // 0x0061b4d3    8bf1
                         push              edi                                                  // 0x0061b4d5    57
                         {disp8} mov       edi, dword ptr [esp + 0x14]                          // 0x0061b4d6    8b7c2414
                         xor.s             eax, eax                                             // 0x0061b4da    33c0
                         {disp8} lea       ecx, dword ptr [esi + 0x20]                          // 0x0061b4dc    8d4e20
_jmp_addr_0x0061b4df:    mov               ebx, dword ptr [ecx]                                 // 0x0061b4df    8b19
                         xor.s             edx, edx                                             // 0x0061b4e1    33d2
                         cmp.s             eax, edi                                             // 0x0061b4e3    3bc7
                         sete              dl                                                   // 0x0061b4e5    0f94c2
                         inc               eax                                                  // 0x0061b4e8    40
                         add               ecx, 0x4                                             // 0x0061b4e9    83c104
                         cmp               eax, 0x04                                            // 0x0061b4ec    83f804
                         {disp32} mov      dword ptr [ebx + 0x00000244], edx                    // 0x0061b4ef    899344020000
                         {disp8} jl        _jmp_addr_0x0061b4df                                 // 0x0061b4f5    7ce8
                         mov.s             ecx, esi                                             // 0x0061b4f7    8bce
                         {disp8} mov       dword ptr [esi + 0x10], edi                          // 0x0061b4f9    897e10
                         call              _jmp_addr_0x0061d930                                 // 0x0061b4fc    e82f240000
                         cmp               dword ptr [esi + 0x10], 0x01                         // 0x0061b501    837e1001
                         {disp8} jne       _jmp_addr_0x0061b51e                                 // 0x0061b505    7517
                         {disp8} lea       ebx, dword ptr [esi + 0x38]                          // 0x0061b507    8d5e38
                         mov               ebp, 0x00000005                                      // 0x0061b50a    bd05000000
_jmp_addr_0x0061b50f:    push              0x1                                                  // 0x0061b50f    6a01
                         mov.s             ecx, ebx                                             // 0x0061b511    8bcb
                         call              _jmp_addr_0x0061acf0                                 // 0x0061b513    e8d8f7ffff
                         add               ebx, 0x2c                                            // 0x0061b518    83c32c
                         dec               ebp                                                  // 0x0061b51b    4d
                         {disp8} jne       _jmp_addr_0x0061b50f                                 // 0x0061b51c    75f1
_jmp_addr_0x0061b51e:    cmp               dword ptr [esi + 0x10], 0x01                         // 0x0061b51e    837e1001
                         setne             al                                                   // 0x0061b522    0f95c0
                         mov.s             ecx, esi                                             // 0x0061b525    8bce
                         push              eax                                                  // 0x0061b527    50
                         call              _jmp_addr_0x00621db0                                 // 0x0061b528    e883680000
                         test              edi, edi                                             // 0x0061b52d    85ff
                         {disp8} je        _jmp_addr_0x0061b538                                 // 0x0061b52f    7407
                         {disp8} mov       dword ptr [esi + 0x14], 0x00000005                   // 0x0061b531    c7461405000000
_jmp_addr_0x0061b538:    mov               ebp, 0x00000001                                      // 0x0061b538    bd01000000
                         cmp.s             edi, ebp                                             // 0x0061b53d    3bfd
                         {disp8} jne       _jmp_addr_0x0061b553                                 // 0x0061b53f    7512
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]                    // 0x0061b541    8b8e4c0a0000
                         {disp32} mov      dword ptr [ecx + 0x00000a58], 0x00000000             // 0x0061b547    c781580a000000000000
                         {disp8} jmp       _jmp_addr_0x0061b557                                 // 0x0061b551    eb04
_jmp_addr_0x0061b553:    test              edi, edi                                             // 0x0061b553    85ff
                         {disp8} je        _jmp_addr_0x0061b561                                 // 0x0061b555    740a
_jmp_addr_0x0061b557:    {disp32} mov      al, byte ptr [esi + 0x00000abc]                      // 0x0061b557    8a86bc0a0000
                         test              al, al                                               // 0x0061b55d    84c0
                         {disp8} je        _jmp_addr_0x0061b568                                 // 0x0061b55f    7407
_jmp_addr_0x0061b561:    {disp32} mov      byte ptr [data_bytes + 0x379010], 0x01               // 0x0061b561    c60510f0d30001
_jmp_addr_0x0061b568:    {disp32} mov      ecx, dword ptr [esi + 0x00000144]                    // 0x0061b568    8b8e44010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b56e    8b11
                         test              edi, edi                                             // 0x0061b570    85ff
                         setne             bl                                                   // 0x0061b572    0f95c3
                         push              ebx                                                  // 0x0061b575    53
                         call              dword ptr [edx + 8]                                  // 0x0061b576    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000148]                    // 0x0061b579    8b8e48010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b57f    8b01
                         push              ebx                                                  // 0x0061b581    53
                         call              dword ptr [eax + 8]                                  // 0x0061b582    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x0000014c]                    // 0x0061b585    8b8e4c010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b58b    8b11
                         push              ebx                                                  // 0x0061b58d    53
                         call              dword ptr [edx + 8]                                  // 0x0061b58e    ff5208
                         cmp               dword ptr [esi + 0x10], ebp                          // 0x0061b591    396e10
                         {disp8} jne       _jmp_addr_0x0061b5db                                 // 0x0061b594    7545
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b596    8a96bc0a0000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000144]                    // 0x0061b59c    8b8e44010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b5a2    8b01
                         test              dl, dl                                               // 0x0061b5a4    84d2
                         sete              dl                                                   // 0x0061b5a6    0f94c2
                         push              edx                                                  // 0x0061b5a9    52
                         call              dword ptr [eax + 8]                                  // 0x0061b5aa    ff5008
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b5ad    8a96bc0a0000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000148]                    // 0x0061b5b3    8b8e48010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b5b9    8b01
                         test              dl, dl                                               // 0x0061b5bb    84d2
                         sete              dl                                                   // 0x0061b5bd    0f94c2
                         push              edx                                                  // 0x0061b5c0    52
                         call              dword ptr [eax + 8]                                  // 0x0061b5c1    ff5008
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b5c4    8a96bc0a0000
                         {disp32} mov      ecx, dword ptr [esi + 0x0000014c]                    // 0x0061b5ca    8b8e4c010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b5d0    8b01
                         test              dl, dl                                               // 0x0061b5d2    84d2
                         sete              dl                                                   // 0x0061b5d4    0f94c2
                         push              edx                                                  // 0x0061b5d7    52
                         call              dword ptr [eax + 8]                                  // 0x0061b5d8    ff5008
_jmp_addr_0x0061b5db:    {disp32} mov      ecx, dword ptr [esi + 0x00000aac]                    // 0x0061b5db    8b8eac0a0000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b5e1    8b01
                         cmp.s             edi, ebp                                             // 0x0061b5e3    3bfd
                         setne             bl                                                   // 0x0061b5e5    0f95c3
                         push              ebx                                                  // 0x0061b5e8    53
                         call              dword ptr [eax + 8]                                  // 0x0061b5e9    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000ab0]                    // 0x0061b5ec    8b8eb00a0000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b5f2    8b11
                         push              ebx                                                  // 0x0061b5f4    53
                         call              dword ptr [edx + 8]                                  // 0x0061b5f5    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000aa4]                    // 0x0061b5f8    8b8ea40a0000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b5fe    8b01
                         push              ebx                                                  // 0x0061b600    53
                         call              dword ptr [eax + 8]                                  // 0x0061b601    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000aa8]                    // 0x0061b604    8b8ea80a0000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b60a    8b11
                         push              ebx                                                  // 0x0061b60c    53
                         call              dword ptr [edx + 8]                                  // 0x0061b60d    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000aa0]                    // 0x0061b610    8b8ea00a0000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b616    8b01
                         push              ebx                                                  // 0x0061b618    53
                         call              dword ptr [eax + 8]                                  // 0x0061b619    ff5008
                         {disp32} mov      al, byte ptr [data_bytes + 0x37a5fe]                 // 0x0061b61c    a0fe05d400
                         test              al, al                                               // 0x0061b621    84c0
                         {disp8} jne       _jmp_addr_0x0061b63d                                 // 0x0061b623    7518
                         {disp32} mov      ecx, dword ptr [esi + 0x00000aac]                    // 0x0061b625    8b8eac0a0000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b62b    8b11
                         push              ebp                                                  // 0x0061b62d    55
                         call              dword ptr [edx + 8]                                  // 0x0061b62e    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000ab0]                    // 0x0061b631    8b8eb00a0000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b637    8b01
                         push              ebp                                                  // 0x0061b639    55
                         call              dword ptr [eax + 8]                                  // 0x0061b63a    ff5008
_jmp_addr_0x0061b63d:    {disp32} mov      ecx, dword ptr [esi + 0x00000158]                    // 0x0061b63d    8b8e58010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b643    8b11
                         cmp               edi, 0x02                                            // 0x0061b645    83ff02
                         setne             bl                                                   // 0x0061b648    0f95c3
                         push              ebx                                                  // 0x0061b64b    53
                         call              dword ptr [edx + 8]                                  // 0x0061b64c    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x0000015c]                    // 0x0061b64f    8b8e5c010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b655    8b01
                         push              ebx                                                  // 0x0061b657    53
                         call              dword ptr [eax + 8]                                  // 0x0061b658    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000160]                    // 0x0061b65b    8b8e60010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b661    8b11
                         push              ebx                                                  // 0x0061b663    53
                         call              dword ptr [edx + 8]                                  // 0x0061b664    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000164]                    // 0x0061b667    8b8e64010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b66d    8b01
                         push              ebx                                                  // 0x0061b66f    53
                         call              dword ptr [eax + 8]                                  // 0x0061b670    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000168]                    // 0x0061b673    8b8e68010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b679    8b11
                         push              ebx                                                  // 0x0061b67b    53
                         call              dword ptr [edx + 8]                                  // 0x0061b67c    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x0000016c]                    // 0x0061b67f    8b8e6c010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b685    8b01
                         push              ebx                                                  // 0x0061b687    53
                         call              dword ptr [eax + 8]                                  // 0x0061b688    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000174]                    // 0x0061b68b    8b8e74010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b691    8b11
                         cmp               edi, 0x03                                            // 0x0061b693    83ff03
                         setne             bl                                                   // 0x0061b696    0f95c3
                         push              ebx                                                  // 0x0061b699    53
                         call              dword ptr [edx + 8]                                  // 0x0061b69a    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000178]                    // 0x0061b69d    8b8e78010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b6a3    8b01
                         push              ebx                                                  // 0x0061b6a5    53
                         call              dword ptr [eax + 8]                                  // 0x0061b6a6    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x0000017c]                    // 0x0061b6a9    8b8e7c010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b6af    8b11
                         push              ebx                                                  // 0x0061b6b1    53
                         call              dword ptr [edx + 8]                                  // 0x0061b6b2    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000180]                    // 0x0061b6b5    8b8e80010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b6bb    8b01
                         push              ebx                                                  // 0x0061b6bd    53
                         call              dword ptr [eax + 8]                                  // 0x0061b6be    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000184]                    // 0x0061b6c1    8b8e84010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b6c7    8b11
                         push              ebx                                                  // 0x0061b6c9    53
                         call              dword ptr [edx + 8]                                  // 0x0061b6ca    ff5208
                         {disp8} mov       eax, dword ptr [esi + 0x10]                          // 0x0061b6cd    8b4610
                         {disp32} mov      ecx, dword ptr [esi + 0x00000188]                    // 0x0061b6d0    8b8e88010000
                         cmp.s             eax, ebp                                             // 0x0061b6d6    3bc5
                         mov               eax, dword ptr [ecx]                                 // 0x0061b6d8    8b01
                         {disp8} jne       _jmp_addr_0x0061b74e                                 // 0x0061b6da    7572
                         xor.s             edx, edx                                             // 0x0061b6dc    33d2
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b6de    8a96bc0a0000
                         push              edx                                                  // 0x0061b6e4    52
                         call              dword ptr [eax + 8]                                  // 0x0061b6e5    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x0000018c]                    // 0x0061b6e8    8b8e8c010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b6ee    8b01
                         xor.s             edx, edx                                             // 0x0061b6f0    33d2
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b6f2    8a96bc0a0000
                         push              edx                                                  // 0x0061b6f8    52
                         call              dword ptr [eax + 8]                                  // 0x0061b6f9    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000190]                    // 0x0061b6fc    8b8e90010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b702    8b01
                         xor.s             edx, edx                                             // 0x0061b704    33d2
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b706    8a96bc0a0000
                         push              edx                                                  // 0x0061b70c    52
                         call              dword ptr [eax + 8]                                  // 0x0061b70d    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000194]                    // 0x0061b710    8b8e94010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b716    8b01
                         xor.s             edx, edx                                             // 0x0061b718    33d2
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b71a    8a96bc0a0000
                         push              edx                                                  // 0x0061b720    52
                         call              dword ptr [eax + 8]                                  // 0x0061b721    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000198]                    // 0x0061b724    8b8e98010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b72a    8b01
                         xor.s             edx, edx                                             // 0x0061b72c    33d2
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b72e    8a96bc0a0000
                         push              edx                                                  // 0x0061b734    52
                         call              dword ptr [eax + 8]                                  // 0x0061b735    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x0000019c]                    // 0x0061b738    8b8e9c010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b73e    8b01
                         xor.s             edx, edx                                             // 0x0061b740    33d2
                         {disp32} mov      dl, byte ptr [esi + 0x00000abc]                      // 0x0061b742    8a96bc0a0000
                         push              edx                                                  // 0x0061b748    52
                         call              dword ptr [eax + 8]                                  // 0x0061b749    ff5008
                         {disp8} jmp       _jmp_addr_0x0061b78e                                 // 0x0061b74c    eb40
_jmp_addr_0x0061b74e:    push              ebp                                                  // 0x0061b74e    55
                         call              dword ptr [eax + 8]                                  // 0x0061b74f    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x0000018c]                    // 0x0061b752    8b8e8c010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b758    8b11
                         push              ebp                                                  // 0x0061b75a    55
                         call              dword ptr [edx + 8]                                  // 0x0061b75b    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000190]                    // 0x0061b75e    8b8e90010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b764    8b01
                         push              ebp                                                  // 0x0061b766    55
                         call              dword ptr [eax + 8]                                  // 0x0061b767    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x00000194]                    // 0x0061b76a    8b8e94010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b770    8b11
                         push              ebp                                                  // 0x0061b772    55
                         call              dword ptr [edx + 8]                                  // 0x0061b773    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x00000198]                    // 0x0061b776    8b8e98010000
                         mov               eax, dword ptr [ecx]                                 // 0x0061b77c    8b01
                         push              ebp                                                  // 0x0061b77e    55
                         call              dword ptr [eax + 8]                                  // 0x0061b77f    ff5008
                         {disp32} mov      ecx, dword ptr [esi + 0x0000019c]                    // 0x0061b782    8b8e9c010000
                         mov               edx, dword ptr [ecx]                                 // 0x0061b788    8b11
                         push              ebp                                                  // 0x0061b78a    55
                         call              dword ptr [edx + 8]                                  // 0x0061b78b    ff5208
_jmp_addr_0x0061b78e:    test              edi, edi                                             // 0x0061b78e    85ff
                         {disp8} je        _jmp_addr_0x0061b7a1                                 // 0x0061b790    740f
                         cmp               dword ptr [esi + 0x14], 0x05                         // 0x0061b792    837e1405
                         {disp8} je        _jmp_addr_0x0061b7a1                                 // 0x0061b796    7409
                         push              0x5                                                  // 0x0061b798    6a05
                         mov.s             ecx, esi                                             // 0x0061b79a    8bce
                         call              _jmp_addr_0x0061b330                                 // 0x0061b79c    e88ffbffff
_jmp_addr_0x0061b7a1:    mov               ecx, 0x00d40e20                                      // 0x0061b7a1    b9200ed400
                         call              ?IsLanLobby@MPFEConnectionStatus@@QAE_NXZ            // 0x0061b7a6    e805230100
                         {disp8} mov       edi, dword ptr [esp + 0x14]                          // 0x0061b7ab    8b7c2414
                         mov.s             bl, al                                               // 0x0061b7af    8ad8
                         xor.s             ebp, ebp                                             // 0x0061b7b1    33ed
_jmp_addr_0x0061b7b3:    cmp               ebp, 0x03                                            // 0x0061b7b3    83fd03
                         {disp32} ja       _jmp_addr_0x0061b84c                                 // 0x0061b7b6    0f8790000000
                         jmp               dword ptr [ebp*4 + 0x61b870]                         // 0x0061b7bc    ff24ad70b86100
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000019df        // 0x0061b7c3    813dac7cd100df190000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061b7cd    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0061b849                                 // 0x0061b7d2    7675
                         add               eax, 0x00013674                                      // 0x0061b7d4    0574360100
                         {disp8} jmp       _jmp_addr_0x0061b849                                 // 0x0061b7d9    eb6e
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000019e0        // 0x0061b7db    813dac7cd100e0190000
                         {disp8} ja        _jmp_addr_0x0061b7ee                                 // 0x0061b7e5    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061b7e7    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0061b849                                 // 0x0061b7ec    eb5b
_jmp_addr_0x0061b7ee:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]               // 0x0061b7ee    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x00013680]                    // 0x0061b7f4    8d8180360100
                         {disp8} jmp       _jmp_addr_0x0061b849                                 // 0x0061b7fa    eb4d
                         test              bl, bl                                               // 0x0061b7fc    84db
                         {disp8} je        _jmp_addr_0x0061b807                                 // 0x0061b7fe    7407
                         mov               edi, 0x00c4cd30                                      // 0x0061b800    bf30cdc400
                         {disp8} jmp       _jmp_addr_0x0061b84c                                 // 0x0061b805    eb45
_jmp_addr_0x0061b807:    cmp               dword ptr [data_bytes + 0x351cac], 0x00001a90        // 0x0061b807    813dac7cd100901a0000
                         {disp8} ja        _jmp_addr_0x0061b81a                                 // 0x0061b811    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061b813    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0061b849                                 // 0x0061b818    eb2f
_jmp_addr_0x0061b81a:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]               // 0x0061b81a    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013ec0]                    // 0x0061b820    8d82c03e0100
                         {disp8} jmp       _jmp_addr_0x0061b849                                 // 0x0061b826    eb21
                         test              bl, bl                                               // 0x0061b828    84db
                         {disp8} je        _jmp_addr_0x0061b833                                 // 0x0061b82a    7407
                         mov               edi, 0x00c4cd30                                      // 0x0061b82c    bf30cdc400
                         {disp8} jmp       _jmp_addr_0x0061b84c                                 // 0x0061b831    eb19
_jmp_addr_0x0061b833:    cmp               dword ptr [data_bytes + 0x351cac], 0x000019e1        // 0x0061b833    813dac7cd100e1190000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]               // 0x0061b83d    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0061b849                                 // 0x0061b842    7605
                         add               eax, 0x0001368c                                      // 0x0061b844    058c360100
_jmp_addr_0x0061b849:    {disp8} mov       edi, dword ptr [eax + 0x08]                          // 0x0061b849    8b7808
_jmp_addr_0x0061b84c:    {disp8} mov       ecx, dword ptr [esi + ebp * 0x4 + 0x20]              // 0x0061b84c    8b4cae20
                         add               ecx, 0x24                                            // 0x0061b850    83c124
                         push              edi                                                  // 0x0061b853    57
                         push              ecx                                                  // 0x0061b854    51
                         call              _wcscpy                                              // 0x0061b855    e85ca71a00
                         add               esp, 0x08                                            // 0x0061b85a    83c408
                         inc               ebp                                                  // 0x0061b85d    45
                         cmp               ebp, 0x04                                            // 0x0061b85e    83fd04
                         {disp32} jl       _jmp_addr_0x0061b7b3                                 // 0x0061b861    0f8c4cffffff
                         pop               edi                                                  // 0x0061b867    5f
                         pop               esi                                                  // 0x0061b868    5e
                         pop               ebp                                                  // 0x0061b869    5d
                         pop               ebx                                                  // 0x0061b86a    5b
                         ret               0x0004                                               // 0x0061b86b    c20400

// Snippet: db, [0x0061b86e, 0x0061b870)
.byte 0x8b, 0xff                  // 0x0061b86e

// Snippet: jmptbl, [0x0061b870, 0x0061b880)
.byte 0xc3, 0xb7, 0x61, 0x00      // 0x0061b870
.byte 0xdb, 0xb7, 0x61, 0x00      // 0x0061b874
.byte 0x28, 0xb8, 0x61, 0x00      // 0x0061b878
.byte 0xfc, 0xb7, 0x61, 0x00      // 0x0061b87c

