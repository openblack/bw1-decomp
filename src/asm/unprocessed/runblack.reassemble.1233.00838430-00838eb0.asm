.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?ResetData@LHFile@@QAEIXZ
.extern _jmp_addr_0x0046d720
.extern _jmp_addr_0x007a1400
.extern @SetName__6LHFileFPCc@12
.extern @Open__14LHReleasedFileF12LH_FILE_MODE@12
.extern _jmp_addr_0x007bda20
.extern _jmp_addr_0x007bda70
.extern _jmp_addr_0x007bda90
.extern ?Close@LHFile@@QAEIXZ
.extern @GetSegment__6LHFileFPcP9LHSegmenti@20
.extern _sprintf
.extern _malloc
.extern _free
.extern _jmp_addr_0x007dee20
.extern _Report3D__FPCce
.extern _jmp_addr_0x00837400
.extern _jmp_addr_0x008379e0
.extern _jmp_addr_0x00838f00
.extern _jmp_addr_0x00839010
.extern _jmp_addr_0x00839680
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x00870910
.extern _jmp_addr_0x00871170
.extern _jmp_addr_0x0087f6d0
.extern _jmp_addr_0x0087f880
.extern _jmp_addr_0x0087f8b0

.globl _jmp_addr_0x00838430
.globl _jmp_addr_0x00838450
.globl ?GetThisTexture@LH3DTexture@@SAPAV1@K@Z
.globl _jmp_addr_0x00838500
.globl _jmp_addr_0x00838530
.globl _jmp_addr_0x00838580
.globl _jmp_addr_0x00838660
.globl _jmp_addr_0x00838a70
.globl _jmp_addr_0x00838af0

start_0x00838430_0x00838eb0:
// Snippet: asm, [0x00838430, 0x00838e6e)
_jmp_addr_0x00838430:    {disp8} mov       eax, dword ptr [ecx + 0x10]              // 0x00838430    8b4110
                         and               eax, 0x3f                                // 0x00838433    83e03f
                         cmp               al, 0x08                                 // 0x00838436    3c08
                         {disp8} mov       dword ptr [ecx + 0x04], 0x00000000       // 0x00838438    c7410400000000
                         {disp8} jne       _jmp_addr_0x0083844b                     // 0x0083843f    750a
                         {disp32} mov      dword ptr [ecx + 0x00000138], 0x00000001 // 0x00838441    c7813801000001000000
_jmp_addr_0x0083844b:    ret                                                        // 0x0083844b    c3
                         nop                                                        // 0x0083844c    90
                         nop                                                        // 0x0083844d    90
                         nop                                                        // 0x0083844e    90
                         nop                                                        // 0x0083844f    90
_jmp_addr_0x00838450:    {disp8} mov       eax, dword ptr [ecx + 0x10]              // 0x00838450    8b4110
                         and               eax, 0x3f                                // 0x00838453    83e03f
                         cmp               al, 0x08                                 // 0x00838456    3c08
                         {disp8} jne       _jmp_addr_0x0083846b                     // 0x00838458    7511
                         {disp8} mov       eax, dword ptr [ecx + 0x04]              // 0x0083845a    8b4104
                         test              eax, eax                                 // 0x0083845d    85c0
                         {disp8} jne       _jmp_addr_0x0083846b                     // 0x0083845f    750a
                         {disp32} mov      dword ptr [ecx + 0x00000138], 0x00000001 // 0x00838461    c7813801000001000000
_jmp_addr_0x0083846b:    mov               dword ptr [ecx], 0x00000000              // 0x0083846b    c70100000000
                         ret                                                        // 0x00838471    c3
                         nop                                                        // 0x00838472    90
                         nop                                                        // 0x00838473    90
                         nop                                                        // 0x00838474    90
                         nop                                                        // 0x00838475    90
                         nop                                                        // 0x00838476    90
                         nop                                                        // 0x00838477    90
                         nop                                                        // 0x00838478    90
                         nop                                                        // 0x00838479    90
                         nop                                                        // 0x0083847a    90
                         nop                                                        // 0x0083847b    90
                         nop                                                        // 0x0083847c    90
                         nop                                                        // 0x0083847d    90
                         nop                                                        // 0x0083847e    90
                         nop                                                        // 0x0083847f    90
?GetThisTexture@LH3DTexture@@SAPAV1@K@Z:
                                      {disp32} mov      eax, dword ptr [data_bytes + 0x517460]   // 0x00838480    a160d4ed00
                         test              eax, eax                                 // 0x00838485    85c0
                         {disp8} mov       ecx, dword ptr [esp + 0x04]              // 0x00838487    8b4c2404
                         push              esi                                      // 0x0083848b    56
                         mov.s             esi, eax                                 // 0x0083848c    8bf0
                         {disp8} je        _jmp_addr_0x008384a0                     // 0x0083848e    7410
_jmp_addr_0x00838490:    cmp               dword ptr [eax + 0x18], ecx              // 0x00838490    394818
                         {disp8} je        _jmp_addr_0x0083849e                     // 0x00838493    7409
                         {disp8} mov       eax, dword ptr [eax + 0x0c]              // 0x00838495    8b400c
                         test              eax, eax                                 // 0x00838498    85c0
                         {disp8} je        _jmp_addr_0x008384a0                     // 0x0083849a    7404
                         {disp8} jmp       _jmp_addr_0x00838490                     // 0x0083849c    ebf2
_jmp_addr_0x0083849e:    mov.s             esi, eax                                 // 0x0083849e    8bf0
_jmp_addr_0x008384a0:    test              esi, esi                                 // 0x008384a0    85f6
                         {disp8} je        _jmp_addr_0x008384bb                     // 0x008384a2    7417
                         cmp               dword ptr [esi + 0x18], ecx              // 0x008384a4    394e18
                         {disp8} je        _jmp_addr_0x008384b7                     // 0x008384a7    740e
                         push              ecx                                      // 0x008384a9    51
                         push              0x00c38fe0                               // 0x008384aa    68e08fc300
                         call              _Report3D__FPCce                         // 0x008384af    e81c37feff
                         add               esp, 0x08                                // 0x008384b4    83c408
_jmp_addr_0x008384b7:    mov.s             eax, esi                                 // 0x008384b7    8bc6
                         pop               esi                                      // 0x008384b9    5e
                         ret                                                        // 0x008384ba    c3
_jmp_addr_0x008384bb:    push              ecx                                      // 0x008384bb    51
                         push              0x00c38fac                               // 0x008384bc    68ac8fc300
                         call              _Report3D__FPCce                         // 0x008384c1    e80a37feff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517460]   // 0x008384c6    a160d4ed00
                         add               esp, 0x08                                // 0x008384cb    83c408
                         pop               esi                                      // 0x008384ce    5e
                         ret                                                        // 0x008384cf    c3
                         push              0x0                                      // 0x008384d0    6a00
                         push              0x0                                      // 0x008384d2    6a00
                         push              0x4                                      // 0x008384d4    6a04
                         push              0x0                                      // 0x008384d6    6a00
                         call              _jmp_addr_0x008379e0                     // 0x008384d8    e803f5ffff
                         {disp8} mov       ecx, dword ptr [esp + 0x14]              // 0x008384dd    8b4c2414
                         {disp8} mov       edx, dword ptr [esp + 0x18]              // 0x008384e1    8b542418
                         mov               dword ptr [ecx], 0x00000000              // 0x008384e5    c70100000000
                         add               esp, 0x10                                // 0x008384eb    83c410
                         mov               dword ptr [edx], 0x00000000              // 0x008384ee    c70200000000
                         ret               0x0008                                   // 0x008384f4    c20800
                         nop                                                        // 0x008384f7    90
                         nop                                                        // 0x008384f8    90
                         nop                                                        // 0x008384f9    90
                         nop                                                        // 0x008384fa    90
                         nop                                                        // 0x008384fb    90
                         nop                                                        // 0x008384fc    90
                         nop                                                        // 0x008384fd    90
                         nop                                                        // 0x008384fe    90
                         nop                                                        // 0x008384ff    90
_jmp_addr_0x00838500:    mov               eax, dword ptr [ecx]                     // 0x00838500    8b01
                         cmp               eax, 0x02                                // 0x00838502    83f802
                         {disp8} jne       _jmp_addr_0x0083850d                     // 0x00838505    7506
                         mov               eax, 0x00000020                          // 0x00838507    b820000000
                         ret                                                        // 0x0083850c    c3
_jmp_addr_0x0083850d:    cmp               eax, 0x03                                // 0x0083850d    83f803
                         {disp8} jne       _jmp_addr_0x00838518                     // 0x00838510    7506
                         mov               eax, 0x00000100                          // 0x00838512    b800010000
                         ret                                                        // 0x00838517    c3
_jmp_addr_0x00838518:    {disp32} mov      eax, dword ptr [data_bytes + 0x517470]   // 0x00838518    a170d4ed00
                         neg               eax                                      // 0x0083851d    f7d8
                         sbb.s             eax, eax                                 // 0x0083851f    1bc0
                         and               eax, 0xffffff80                          // 0x00838521    83e080
                         add               eax, 0x00000100                          // 0x00838524    0500010000
                         ret                                                        // 0x00838529    c3
                         nop                                                        // 0x0083852a    90
                         nop                                                        // 0x0083852b    90
                         nop                                                        // 0x0083852c    90
                         nop                                                        // 0x0083852d    90
                         nop                                                        // 0x0083852e    90
                         nop                                                        // 0x0083852f    90
_jmp_addr_0x00838530:    mov               eax, dword ptr [ecx]                     // 0x00838530    8b01
                         cmp               eax, 0x02                                // 0x00838532    83f802
                         {disp8} jne       _jmp_addr_0x0083853d                     // 0x00838535    7506
                         mov               eax, 0x00000020                          // 0x00838537    b820000000
                         ret                                                        // 0x0083853c    c3
_jmp_addr_0x0083853d:    cmp               eax, 0x03                                // 0x0083853d    83f803
                         {disp8} jne       _jmp_addr_0x00838548                     // 0x00838540    7506
                         mov               eax, 0x00000100                          // 0x00838542    b800010000
                         ret                                                        // 0x00838547    c3
_jmp_addr_0x00838548:    {disp32} mov      eax, dword ptr [data_bytes + 0x517470]   // 0x00838548    a170d4ed00
                         neg               eax                                      // 0x0083854d    f7d8
                         sbb.s             eax, eax                                 // 0x0083854f    1bc0
                         and               eax, 0xffffff80                          // 0x00838551    83e080
                         add               eax, 0x00000100                          // 0x00838554    0500010000
                         ret                                                        // 0x00838559    c3
                         nop                                                        // 0x0083855a    90
                         nop                                                        // 0x0083855b    90
                         nop                                                        // 0x0083855c    90
                         nop                                                        // 0x0083855d    90
                         nop                                                        // 0x0083855e    90
                         nop                                                        // 0x0083855f    90
                         cmp               dword ptr [ecx], 0x02                    // 0x00838560    833902
                         {disp8} jne       _jmp_addr_0x0083856b                     // 0x00838563    7506
                         mov               eax, 0x00000004                          // 0x00838565    b804000000
                         ret                                                        // 0x0083856a    c3
_jmp_addr_0x0083856b:    {disp32} mov      eax, dword ptr [data_bytes + 0x517470]   // 0x0083856b    a170d4ed00
                         neg               eax                                      // 0x00838570    f7d8
                         sbb.s             eax, eax                                 // 0x00838572    1bc0
                         and               eax, 0xfffffffc                          // 0x00838574    83e0fc
                         add               eax, 0x08                                // 0x00838577    83c008
                         ret                                                        // 0x0083857a    c3
                         nop                                                        // 0x0083857b    90
                         nop                                                        // 0x0083857c    90
                         nop                                                        // 0x0083857d    90
                         nop                                                        // 0x0083857e    90
                         nop                                                        // 0x0083857f    90
_jmp_addr_0x00838580:    sub               esp, 0x0000014c                          // 0x00838580    81ec4c010000
                         push              esi                                      // 0x00838586    56
                         mov.s             esi, ecx                                 // 0x00838587    8bf1
                         {disp8} mov       eax, dword ptr [esi + 0x10]              // 0x00838589    8b4610
                         and               eax, 0x3f                                // 0x0083858c    83e03f
                         cmp               al, 0x02                                 // 0x0083858f    3c02
                         {disp32} jne      _jmp_addr_0x00838650                     // 0x00838591    0f85b9000000
                         {disp32} mov      eax, dword ptr [esi + 0x00000120]        // 0x00838597    8b8620010000
                         test              eax, eax                                 // 0x0083859d    85c0
                         {disp32} jne      _jmp_addr_0x00838650                     // 0x0083859f    0f85ab000000
                         push              edi                                      // 0x008385a5    57
                         xor.s             eax, eax                                 // 0x008385a6    33c0
                         {disp8} mov       dword ptr [esp + 0x4c], 0x00000000       // 0x008385a8    c744244c00000000
                         {disp8} mov       dword ptr [esp + 0x50], 0x00000000       // 0x008385b0    c744245000000000
                         mov               ecx, 0x00000008                          // 0x008385b8    b908000000
                         {disp8} lea       edi, dword ptr [esp + 0x28]              // 0x008385bd    8d7c2428
                         rep stosd                                                  // 0x008385c1    f3ab
                         stosb                                                      // 0x008385c3    aa
                         {disp32} mov      eax, dword ptr [data_bytes + 0x517470]   // 0x008385c4    a170d4ed00
                         test              eax, eax                                 // 0x008385c9    85c0
                         pop               edi                                      // 0x008385cb    5f
                         {disp8} je        _jmp_addr_0x008385de                     // 0x008385cc    7410
                         {disp8} mov       ecx, dword ptr [esi + 0x18]              // 0x008385ce    8b4e18
                         push              ecx                                      // 0x008385d1    51
                         push              0x00c39038                               // 0x008385d2    683890c300
                         {disp8} lea       edx, dword ptr [esp + 0x0c]              // 0x008385d7    8d54240c
                         push              edx                                      // 0x008385db    52
                         {disp8} jmp       _jmp_addr_0x008385ec                     // 0x008385dc    eb0e
_jmp_addr_0x008385de:    {disp8} mov       eax, dword ptr [esi + 0x18]              // 0x008385de    8b4618
                         push              eax                                      // 0x008385e1    50
                         push              0x00c39034                               // 0x008385e2    683490c300
                         {disp8} lea       ecx, dword ptr [esp + 0x0c]              // 0x008385e7    8d4c240c
                         push              ecx                                      // 0x008385eb    51
_jmp_addr_0x008385ec:    call              _sprintf                                 // 0x008385ec    e8e1d1f8ff
                         add               esp, 0x0c                                // 0x008385f1    83c40c
                         push              0x1                                      // 0x008385f4    6a01
                         {disp8} lea       edx, dword ptr [esp + 0x28]              // 0x008385f6    8d542428
                         push              edx                                      // 0x008385fa    52
                         {disp8} lea       eax, dword ptr [esp + 0x0c]              // 0x008385fb    8d44240c
                         push              eax                                      // 0x008385ff    50
                         mov               ecx, 0x00edd3e0                          // 0x00838600    b9e0d3ed00
                         call              @GetSegment__6LHFileFPcP9LHSegmenti@20   // 0x00838605    e8c657f8ff
                         cmp               eax, 0x02                                // 0x0083860a    83f802
                         {disp8} jne       _jmp_addr_0x0083862e                     // 0x0083860d    751f
                         {disp8} lea       ecx, dword ptr [esp + 0x04]              // 0x0083860f    8d4c2404
                         push              ecx                                      // 0x00838613    51
                         {disp8} lea       edx, dword ptr [esp + 0x54]              // 0x00838614    8d542454
                         push              0x00c3901c                               // 0x00838618    681c90c300
                         push              edx                                      // 0x0083861d    52
                         call              _sprintf                                 // 0x0083861e    e8afd1f8ff
                         add               esp, 0x0c                                // 0x00838623    83c40c
                         pop               esi                                      // 0x00838626    5e
                         add               esp, 0x0000014c                          // 0x00838627    81c44c010000
                         ret                                                        // 0x0083862d    c3
_jmp_addr_0x0083862e:    {disp8} mov       eax, dword ptr [esp + 0x4c]              // 0x0083862e    8b44244c
                         add               eax, 0x0c                                // 0x00838632    83c00c
                         push              0x0                                      // 0x00838635    6a00
                         push              eax                                      // 0x00838637    50
                         call              _jmp_addr_0x0087f6d0                     // 0x00838638    e893700400
                         add               esp, 0x08                                // 0x0083863d    83c408
                         mov               ecx, 0x00edd3e0                          // 0x00838640    b9e0d3ed00
                         {disp32} mov      dword ptr [esi + 0x00000120], eax        // 0x00838645    898620010000
                         call              _jmp_addr_0x007bda70                     // 0x0083864b    e82054f8ff
_jmp_addr_0x00838650:    pop               esi                                      // 0x00838650    5e
                         add               esp, 0x0000014c                          // 0x00838651    81c44c010000
                         ret                                                        // 0x00838657    c3
                         nop                                                        // 0x00838658    90
                         nop                                                        // 0x00838659    90
                         nop                                                        // 0x0083865a    90
                         nop                                                        // 0x0083865b    90
                         nop                                                        // 0x0083865c    90
                         nop                                                        // 0x0083865d    90
                         nop                                                        // 0x0083865e    90
                         nop                                                        // 0x0083865f    90
_jmp_addr_0x00838660:    push              -0x1                                     // 0x00838660    6aff
                         push              0x008a8111                               // 0x00838662    6811818a00
                         {disp32} mov      eax, fs:[0x0]                            // 0x00838667    64a100000000
                         push              eax                                      // 0x0083866d    50
                         {disp32} mov      fs:[0x0], esp                            // 0x0083866e    64892500000000
                         sub               esp, 0x00000154                          // 0x00838675    81ec54010000
                         push              ebx                                      // 0x0083867b    53
                         push              ebp                                      // 0x0083867c    55
                         push              esi                                      // 0x0083867d    56
                         xor.s             esi, esi                                 // 0x0083867e    33f6
                         mov.s             ebp, ecx                                 // 0x00838680    8be9
                         push              edi                                      // 0x00838682    57
                         mov.s             edi, edx                                 // 0x00838683    8bfa
                         {disp8} mov       dword ptr [esp + 0x28], ebp              // 0x00838685    896c2428
                         {disp8} mov       dword ptr [esp + 0x64], esi              // 0x00838689    89742464
                         {disp8} mov       dword ptr [esp + 0x60], esi              // 0x0083868d    89742460
                         {disp8} lea       ecx, dword ptr [esp + 0x70]              // 0x00838691    8d4c2470
                         {disp32} mov      dword ptr [esp + 0x0000016c], esi        // 0x00838695    89b4246c010000
                         call              _jmp_addr_0x0046d720                     // 0x0083869c    e87f50c3ff
                         {disp8} lea       ecx, dword ptr [esp + 0x5c]              // 0x008386a1    8d4c245c
                         {disp8} mov       dword ptr [esp + 0x5c], 0x008c4d14       // 0x008386a5    c744245c144d8c00
                         call              ?ResetData@LHFile@@QAEIXZ                // 0x008386ad    e8ae5abfff
                         push              edi                                      // 0x008386b2    57
                         {disp8} lea       ecx, dword ptr [esp + 0x60]              // 0x008386b3    8d4c2460
                         {disp32} mov      dword ptr [esp + 0x00000170], 0x00000001 // 0x008386b7    c784247001000001000000
                         {disp8} mov       dword ptr [esp + 0x60], 0x008c4d0c       // 0x008386c2    c74424600c4d8c00
                         {disp32} mov      dword ptr [esp + 0x000000c8], esi        // 0x008386ca    89b424c8000000
                         {disp8} mov       dword ptr [esp + 0x6c], esi              // 0x008386d1    8974246c
                         {disp8} mov       dword ptr [esp + 0x70], esi              // 0x008386d5    89742470
                         {disp32} mov      dword ptr [esp + 0x000000a0], esi        // 0x008386d9    89b424a0000000
                         {disp32} mov      dword ptr [esp + 0x000000a4], esi        // 0x008386e0    89b424a4000000
                         {disp32} mov      dword ptr [esp + 0x000000a8], esi        // 0x008386e7    89b424a8000000
                         {disp32} mov      dword ptr [esp + 0x000000b4], esi        // 0x008386ee    89b424b4000000
                         {disp32} mov      dword ptr [esp + 0x000000b8], esi        // 0x008386f5    89b424b8000000
                         {disp32} mov      dword ptr [esp + 0x000000bc], esi        // 0x008386fc    89b424bc000000
                         {disp32} mov      dword ptr [esp + 0x000000c0], esi        // 0x00838703    89b424c0000000
                         call              @SetName__6LHFileFPCc@12                 // 0x0083870a    e8814cf8ff
                         push              esi                                      // 0x0083870f    56
                         {disp8} lea       ecx, dword ptr [esp + 0x60]              // 0x00838710    8d4c2460
                         {disp32} mov      dword ptr [esp + 0x00000170], 0x00000002 // 0x00838714    c784247001000002000000
                         call              @Open__14LHReleasedFileF12LH_FILE_MODE@12// 0x0083871f    e80c50f8ff
                         {disp8} mov       dword ptr [esp + 0x54], esi              // 0x00838724    89742454
                         {disp8} mov       dword ptr [esp + 0x58], esi              // 0x00838728    89742458
                         xor.s             eax, eax                                 // 0x0083872c    33c0
                         mov               ecx, 0x00000008                          // 0x0083872e    b908000000
                         {disp8} lea       edi, dword ptr [esp + 0x30]              // 0x00838733    8d7c2430
                         rep stosd                                                  // 0x00838737    f3ab
                         push              0x00001004                               // 0x00838739    6804100000
                         stosb                                                      // 0x0083873e    aa
                         call              _malloc                                  // 0x0083873f    e808dff8ff
                         mov.s             ebx, eax                                 // 0x00838744    8bd8
                         {disp8} mov       eax, dword ptr [ebp + 0x00]              // 0x00838746    8b4500
                         mov               dword ptr [ebx], eax                     // 0x00838749    8903
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]              // 0x0083874b    8b4d00
                         add               esp, 0x04                                // 0x0083874e    83c404
                         cmp.s             ecx, esi                                 // 0x00838751    3bce
                         {disp8} mov       dword ptr [esp + 0x2c], ebx              // 0x00838753    895c242c
                         {disp8} lea       eax, dword ptr [ebx + 0x04]              // 0x00838757    8d4304
                         {disp8} mov       dword ptr [esp + 0x24], esi              // 0x0083875a    89742424
                         {disp32} jle      _jmp_addr_0x008389f1                     // 0x0083875e    0f8e8d020000
                         {disp8} lea       esi, dword ptr [ebp + 0x38]              // 0x00838764    8d7538
                         {disp8} mov       dword ptr [esp + 0x10], esi              // 0x00838767    89742410
                         {disp8} mov       dword ptr [esp + 0x18], eax              // 0x0083876b    89442418
                         {disp8} jmp       _jmp_addr_0x00838775                     // 0x0083876f    eb04
_jmp_addr_0x00838771:    {disp8} mov       esi, dword ptr [esp + 0x10]              // 0x00838771    8b742410
_jmp_addr_0x00838775:    {disp32} mov      al, byte ptr [esi + 0x00020008]          // 0x00838775    8a8608000200
                         xor.s             edi, edi                                 // 0x0083877b    33ff
                         xor.s             ebx, ebx                                 // 0x0083877d    33db
                         test              al, 0x01                                 // 0x0083877f    a801
                         {disp8} mov       dword ptr [esp + 0x1c], 0x00000001       // 0x00838781    c744241c01000000
                         {disp8} mov       dword ptr [esp + 0x20], edi              // 0x00838789    897c2420
                         {disp8} je        _jmp_addr_0x008387c1                     // 0x0083878d    7432
                         mov               ebx, 0x0002000c                          // 0x0083878f    bb0c000200
                         push              ebx                                      // 0x00838794    53
                         {disp8} mov       dword ptr [esp + 0x20], edi              // 0x00838795    897c2420
                         call              ?Alloc@LH3DMem@@SAPAXJ@Z                 // 0x00838799    e842a50000
                         mov.s             ebp, eax                                 // 0x0083879e    8be8
                         add               esp, 0x04                                // 0x008387a0    83c404
                         cmp.s             ebp, edi                                 // 0x008387a3    3bef
                         {disp8} je        _jmp_addr_0x008387b2                     // 0x008387a5    740b
                         mov               ecx, 0x00008003                          // 0x008387a7    b903800000
                         xor.s             eax, eax                                 // 0x008387ac    33c0
                         mov.s             edi, ebp                                 // 0x008387ae    8bfd
                         rep stosd                                                  // 0x008387b0    f3ab
_jmp_addr_0x008387b2:    {disp8} lea       edi, dword ptr [ebp + 0x0c]              // 0x008387b2    8d7d0c
                         mov               ecx, 0x00008000                          // 0x008387b5    b900800000
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x008387ba    f3a5
                         {disp32} jmp      _jmp_addr_0x00838931                     // 0x008387bc    e970010000
_jmp_addr_0x008387c1:    mov.s             ecx, esi                                 // 0x008387c1    8bce
                         mov               esi, 0x00000100                          // 0x008387c3    be00010000
_jmp_addr_0x008387c8:    mov               edx, 0x00000100                          // 0x008387c8    ba00010000
_jmp_addr_0x008387cd:    xor.s             eax, eax                                 // 0x008387cd    33c0
                         mov               ax, word ptr [ecx]                       // 0x008387cf    668b01
                         shr               eax, 0xc                                 // 0x008387d2    c1e80c
                         {disp8} je        _jmp_addr_0x008387e1                     // 0x008387d5    740a
                         cmp               eax, 0x0f                                // 0x008387d7    83f80f
                         {disp8} je        _jmp_addr_0x008387e1                     // 0x008387da    7405
                         mov               ebx, 0x00000001                          // 0x008387dc    bb01000000
_jmp_addr_0x008387e1:    add               ecx, 0x2                                 // 0x008387e1    83c102
                         dec               edx                                      // 0x008387e4    4a
                         {disp8} jne       _jmp_addr_0x008387cd                     // 0x008387e5    75e6
                         dec               esi                                      // 0x008387e7    4e
                         {disp8} jne       _jmp_addr_0x008387c8                     // 0x008387e8    75de
                         cmp.s             ebx, edi                                 // 0x008387ea    3bdf
                         {disp8} je        _jmp_addr_0x008387f6                     // 0x008387ec    7408
                         {disp8} mov       dword ptr [esp + 0x1c], 0x00000002       // 0x008387ee    c744241c02000000
_jmp_addr_0x008387f6:    push              ebx                                      // 0x008387f6    53
                         push              edi                                      // 0x008387f7    57
                         call              _jmp_addr_0x0087f6d0                     // 0x008387f8    e8d36e0400
                         {disp32} mov      edx, dword ptr [data_bytes + 0x517474]   // 0x008387fd    8b1574d4ed00
                         mov.s             ebx, eax                                 // 0x00838803    8bd8
                         xor.s             eax, eax                                 // 0x00838805    33c0
                         push              eax                                      // 0x00838807    50
                         mov               ecx, 0x0000001f                          // 0x00838808    b91f000000
                         {disp32} lea      edi, dword ptr [esp + 0x000000d4]        // 0x0083880d    8dbc24d4000000
                         rep stosd                                                  // 0x00838814    f3ab
                         push              0x00000801                               // 0x00838816    6801080000
                         {disp32} lea      ecx, dword ptr [esp + 0x000000d8]        // 0x0083881b    8d8c24d8000000
                         push              ecx                                      // 0x00838822    51
                         push              eax                                      // 0x00838823    50
                         push              edx                                      // 0x00838824    52
                         {disp8} mov       dword ptr [esp + 0x3c], ebx              // 0x00838825    895c243c
                         {disp32} mov      dword ptr [esp + 0x000000e4], 0x0000007c // 0x00838829    c78424e40000007c000000
                         call              _jmp_addr_0x00871170                     // 0x00838834    e837890300
                         {disp32} mov      eax, dword ptr [esp + 0x000000f4]        // 0x00838839    8b8424f4000000
                         {disp32} mov      ecx, dword ptr [esp + 0x00000108]        // 0x00838840    8b8c2408010000
                         cdq                                                        // 0x00838847    99
                         sub.s             eax, edx                                 // 0x00838848    2bc2
                         add               esp, 0x1c                                // 0x0083884a    83c41c
                         sar               eax, 1                                   // 0x0083884d    d1f8
                         test              ecx, ecx                                 // 0x0083884f    85c9
                         {disp8} je        _jmp_addr_0x008388b1                     // 0x00838851    745e
                         {disp32} mov      edx, dword ptr [esp + 0x000000d0]        // 0x00838853    8b9424d0000000
                         xor.s             esi, esi                                 // 0x0083885a    33f6
                         test              edx, edx                                 // 0x0083885c    85d2
                         {disp8} jle       _jmp_addr_0x008388b1                     // 0x0083885e    7e51
                         {disp8} mov       ebp, dword ptr [esp + 0x10]              // 0x00838860    8b6c2410
                         {disp32} mov      edi, dword ptr [esp + 0x000000d4]        // 0x00838864    8bbc24d4000000
                         add.s             eax, eax                                 // 0x0083886b    03c0
                         {disp8} mov       dword ptr [esp + 0x14], eax              // 0x0083886d    89442414
                         mov.s             ebx, ecx                                 // 0x00838871    8bd9
_jmp_addr_0x00838873:    xor.s             edx, edx                                 // 0x00838873    33d2
                         test              edi, edi                                 // 0x00838875    85ff
                         {disp8} jle       _jmp_addr_0x00838895                     // 0x00838877    7e1c
                         mov.s             eax, ebx                                 // 0x00838879    8bc3
                         mov.s             ecx, ebp                                 // 0x0083887b    8bcd
_jmp_addr_0x0083887d:    mov               di, word ptr [ecx]                       // 0x0083887d    668b39
                         mov               word ptr [eax], di                       // 0x00838880    668938
                         {disp32} mov      edi, dword ptr [esp + 0x000000d4]        // 0x00838883    8bbc24d4000000
                         inc               edx                                      // 0x0083888a    42
                         add               eax, 0x02                                // 0x0083888b    83c002
                         add               ecx, 0x2                                 // 0x0083888e    83c102
                         cmp.s             edx, edi                                 // 0x00838891    3bd7
                         {disp8} jl        _jmp_addr_0x0083887d                     // 0x00838893    7ce8
_jmp_addr_0x00838895:    {disp8} mov       edx, dword ptr [esp + 0x14]              // 0x00838895    8b542414
                         {disp32} mov      eax, dword ptr [esp + 0x000000d0]        // 0x00838899    8b8424d0000000
                         inc               esi                                      // 0x008388a0    46
                         add.s             ebx, edx                                 // 0x008388a1    03da
                         add               ebp, 0x00000200                          // 0x008388a3    81c500020000
                         cmp.s             esi, eax                                 // 0x008388a9    3bf0
                         {disp8} jl        _jmp_addr_0x00838873                     // 0x008388ab    7cc6
                         {disp8} mov       ebx, dword ptr [esp + 0x20]              // 0x008388ad    8b5c2420
_jmp_addr_0x008388b1:    {disp32} mov      eax, dword ptr [data_bytes + 0x517474]   // 0x008388b1    a174d4ed00
                         mov               ecx, dword ptr [eax]                     // 0x008388b6    8b08
                         push              0x0                                      // 0x008388b8    6a00
                         push              eax                                      // 0x008388ba    50
                         call              dword ptr [ecx + 0x80]                   // 0x008388bb    ff9180000000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517474]   // 0x008388c1    8b0d74d4ed00
                         {disp8} mov       eax, dword ptr [ebx + 0x04]              // 0x008388c7    8b4304
                         mov               edx, dword ptr [eax]                     // 0x008388ca    8b10
                         push              0x0                                      // 0x008388cc    6a00
                         push              0x01000000                               // 0x008388ce    6800000001
                         push              0x0                                      // 0x008388d3    6a00
                         push              ecx                                      // 0x008388d5    51
                         push              0x0                                      // 0x008388d6    6a00
                         push              eax                                      // 0x008388d8    50
                         call              dword ptr [edx + 0x14]                   // 0x008388d9    ff5214
                         mov.s             ecx, ebx                                 // 0x008388dc    8bcb
                         call              _jmp_addr_0x0087f8b0                     // 0x008388de    e8cd6f0400
                         mov.s             esi, eax                                 // 0x008388e3    8bf0
                         mov               ebx, dword ptr [esi]                     // 0x008388e5    8b1e
                         add               ebx, 0x0c                                // 0x008388e7    83c30c
                         push              ebx                                      // 0x008388ea    53
                         {disp8} mov       dword ptr [esp + 0x18], esi              // 0x008388eb    89742418
                         call              ?Alloc@LH3DMem@@SAPAXJ@Z                 // 0x008388ef    e8eca30000
                         mov.s             ebp, eax                                 // 0x008388f4    8be8
                         add               esp, 0x04                                // 0x008388f6    83c404
                         test              ebp, ebp                                 // 0x008388f9    85ed
                         {disp8} je        _jmp_addr_0x00838911                     // 0x008388fb    7414
                         mov.s             ecx, ebx                                 // 0x008388fd    8bcb
                         mov.s             edx, ecx                                 // 0x008388ff    8bd1
                         shr               ecx, 2                                   // 0x00838901    c1e902
                         xor.s             eax, eax                                 // 0x00838904    33c0
                         mov.s             edi, ebp                                 // 0x00838906    8bfd
                         rep stosd                                                  // 0x00838908    f3ab
                         mov.s             ecx, edx                                 // 0x0083890a    8bca
                         and               ecx, 0x03                                // 0x0083890c    83e103
                         rep stosb                                                  // 0x0083890f    f3aa
_jmp_addr_0x00838911:    mov               ecx, dword ptr [esi]                     // 0x00838911    8b0e
                         mov.s             eax, ecx                                 // 0x00838913    8bc1
                         shr               ecx, 2                                   // 0x00838915    c1e902
                         {disp8} lea       edi, dword ptr [ebp + 0x0c]              // 0x00838918    8d7d0c
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x0083891b    f3a5
                         mov.s             ecx, eax                                 // 0x0083891d    8bc8
                         and               ecx, 0x03                                // 0x0083891f    83e103
                         rep movsb                                                  // 0x00838922    f3a4
                         {disp8} mov       ecx, dword ptr [esp + 0x14]              // 0x00838924    8b4c2414
                         push              ecx                                      // 0x00838928    51
                         call              _free                                    // 0x00838929    e858def8ff
                         add               esp, 0x04                                // 0x0083892e    83c404
_jmp_addr_0x00838931:    {disp8} mov       ecx, dword ptr [esp + 0x10]              // 0x00838931    8b4c2410
                         {disp8} mov       edx, dword ptr [esp + 0x18]              // 0x00838935    8b542418
                         {disp8} mov       dword ptr [ebp + 0x00], ebx              // 0x00838939    895d00
                         {disp32} mov      eax, dword ptr [ecx + 0x00020010]        // 0x0083893c    8b8110000200
                         mov               dword ptr [edx], eax                     // 0x00838942    8902
                         {disp8} mov       dword ptr [ebp + 0x04], eax              // 0x00838944    894504
                         {disp8} mov       eax, dword ptr [esp + 0x1c]              // 0x00838947    8b44241c
                         {disp8} mov       dword ptr [edx + 0x04], eax              // 0x0083894b    894204
                         {disp8} mov       dword ptr [ebp + 0x08], eax              // 0x0083894e    894508
                         {disp32} mov      edx, dword ptr [ecx + 0x00020010]        // 0x00838951    8b9110000200
                         push              edx                                      // 0x00838957    52
                         {disp32} lea      eax, dword ptr [esp + 0x00000148]        // 0x00838958    8d842448010000
                         push              0x00c39034                               // 0x0083895f    683490c300
                         push              eax                                      // 0x00838964    50
                         call              _sprintf                                 // 0x00838965    e868cef8ff
                         or                ecx, 0xffffffff                          // 0x0083896a    83c9ff
                         xor.s             eax, eax                                 // 0x0083896d    33c0
                         add               esp, 0x0c                                // 0x0083896f    83c40c
                         {disp32} lea      edi, dword ptr [esp + 0x00000144]        // 0x00838972    8dbc2444010000
                         repne scasb                                                // 0x00838979    f2ae
                         not               ecx                                      // 0x0083897b    f7d1
                         sub.s             edi, ecx                                 // 0x0083897d    2bf9
                         mov.s             eax, ecx                                 // 0x0083897f    8bc1
                         shr               ecx, 2                                   // 0x00838981    c1e902
                         {disp8} lea       edx, dword ptr [esp + 0x30]              // 0x00838984    8d542430
                         mov.s             esi, edi                                 // 0x00838988    8bf7
                         mov.s             edi, edx                                 // 0x0083898a    8bfa
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x0083898c    f3a5
                         mov.s             ecx, eax                                 // 0x0083898e    8bc8
                         and               ecx, 0x03                                // 0x00838990    83e103
                         rep movsb                                                  // 0x00838993    f3a4
                         {disp8} lea       ecx, dword ptr [esp + 0x30]              // 0x00838995    8d4c2430
                         push              ecx                                      // 0x00838999    51
                         {disp8} lea       ecx, dword ptr [esp + 0x60]              // 0x0083899a    8d4c2460
                         {disp8} mov       dword ptr [esp + 0x58], ebx              // 0x0083899e    895c2458
                         {disp8} mov       dword ptr [esp + 0x5c], ebp              // 0x008389a2    896c245c
                         call              _jmp_addr_0x007bda90                     // 0x008389a6    e8e550f8ff
                         push              ebp                                      // 0x008389ab    55
                         call              ?Free@LH3DMem@@SAXPAX@Z                  // 0x008389ac    e8afa30000
                         {disp8} mov       ecx, dword ptr [esp + 0x24]              // 0x008389b1    8b4c2424
                         add               esp, 0x04                                // 0x008389b5    83c404
                         call              _jmp_addr_0x0087f880                     // 0x008389b8    e8c36e0400
                         {disp8} mov       edx, dword ptr [esp + 0x18]              // 0x008389bd    8b542418
                         {disp8} mov       edi, dword ptr [esp + 0x10]              // 0x008389c1    8b7c2410
                         {disp8} mov       eax, dword ptr [esp + 0x24]              // 0x008389c5    8b442424
                         add               edx, 0x08                                // 0x008389c9    83c208
                         add               edi, 0x00020040                          // 0x008389cc    81c740000200
                         {disp8} mov       dword ptr [esp + 0x18], edx              // 0x008389d2    89542418
                         {disp8} mov       edx, dword ptr [esp + 0x28]              // 0x008389d6    8b542428
                         mov               ecx, dword ptr [edx]                     // 0x008389da    8b0a
                         inc               eax                                      // 0x008389dc    40
                         cmp.s             eax, ecx                                 // 0x008389dd    3bc1
                         {disp8} mov       dword ptr [esp + 0x10], edi              // 0x008389df    897c2410
                         {disp8} mov       dword ptr [esp + 0x24], eax              // 0x008389e3    89442424
                         {disp32} jl       _jmp_addr_0x00838771                     // 0x008389e7    0f8c84fdffff
                         {disp8} mov       ebx, dword ptr [esp + 0x2c]              // 0x008389ed    8b5c242c
_jmp_addr_0x008389f1:    or                ecx, 0xffffffff                          // 0x008389f1    83c9ff
                         xor.s             eax, eax                                 // 0x008389f4    33c0
                         mov               edi, 0x00c38ed8                          // 0x008389f6    bfd88ec300
                         repne scasb                                                // 0x008389fb    f2ae
                         not               ecx                                      // 0x008389fd    f7d1
                         sub.s             edi, ecx                                 // 0x008389ff    2bf9
                         mov.s             eax, ecx                                 // 0x00838a01    8bc1
                         shr               ecx, 2                                   // 0x00838a03    c1e902
                         {disp8} lea       edx, dword ptr [esp + 0x30]              // 0x00838a06    8d542430
                         mov.s             esi, edi                                 // 0x00838a0a    8bf7
                         mov.s             edi, edx                                 // 0x00838a0c    8bfa
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x00838a0e    f3a5
                         mov.s             ecx, eax                                 // 0x00838a10    8bc8
                         and               ecx, 0x03                                // 0x00838a12    83e103
                         rep movsb                                                  // 0x00838a15    f3a4
                         {disp8} lea       ecx, dword ptr [esp + 0x30]              // 0x00838a17    8d4c2430
                         push              ecx                                      // 0x00838a1b    51
                         {disp8} lea       ecx, dword ptr [esp + 0x60]              // 0x00838a1c    8d4c2460
                         {disp8} mov       dword ptr [esp + 0x58], 0x00001004       // 0x00838a20    c744245804100000
                         {disp8} mov       dword ptr [esp + 0x5c], ebx              // 0x00838a28    895c245c
                         call              _jmp_addr_0x007bda90                     // 0x00838a2c    e85f50f8ff
                         push              ebx                                      // 0x00838a31    53
                         call              _free                                    // 0x00838a32    e84fddf8ff
                         add               esp, 0x04                                // 0x00838a37    83c404
                         {disp8} lea       ecx, dword ptr [esp + 0x5c]              // 0x00838a3a    8d4c245c
                         call              ?Close@LHFile@@QAEIXZ                    // 0x00838a3e    e87d51f8ff
                         {disp8} lea       ecx, dword ptr [esp + 0x5c]              // 0x00838a43    8d4c245c
                         {disp32} mov      dword ptr [esp + 0x0000016c], 0xffffffff // 0x00838a47    c784246c010000ffffffff
                         call              _jmp_addr_0x007bda20                     // 0x00838a52    e8c94ff8ff
                         {disp32} mov      ecx, dword ptr [esp + 0x00000164]        // 0x00838a57    8b8c2464010000
                         pop               edi                                      // 0x00838a5e    5f
                         pop               esi                                      // 0x00838a5f    5e
                         pop               ebp                                      // 0x00838a60    5d
                         pop               ebx                                      // 0x00838a61    5b
                         {disp32} mov      fs:[0x0], ecx                            // 0x00838a62    64890d00000000
                         add               esp, 0x00000160                          // 0x00838a69    81c460010000
                         ret                                                        // 0x00838a6f    c3
_jmp_addr_0x00838a70:    push              ebx                                      // 0x00838a70    53
                         mov.s             ebx, ecx                                 // 0x00838a71    8bd9
                         {disp8} mov       eax, dword ptr [ebx + 0x10]              // 0x00838a73    8b4310
                         and               eax, 0x3f                                // 0x00838a76    83e03f
                         cmp               al, 0x02                                 // 0x00838a79    3c02
                         {disp8} je        _jmp_addr_0x00838a86                     // 0x00838a7b    7409
                         mov               eax, 0x00000001                          // 0x00838a7d    b801000000
                         pop               ebx                                      // 0x00838a82    5b
                         ret               0x0008                                   // 0x00838a83    c20800
_jmp_addr_0x00838a86:    {disp8} fld       dword ptr [esp + 0x08]                   // 0x00838a86    d9442408
                         push              esi                                      // 0x00838a8a    56
                         {disp32} fmul     dword ptr [rdata_bytes + 0x87678]        // 0x00838a8b    d80d78069300
                         push              edi                                      // 0x00838a91    57
                         call              _jmp_addr_0x007a1400                     // 0x00838a92    e86989f6ff
                         mov.s             edi, eax                                 // 0x00838a97    8bf8
                         test              edi, edi                                 // 0x00838a99    85ff
                         {disp8} jge       _jmp_addr_0x00838aa1                     // 0x00838a9b    7d04
                         xor.s             edi, edi                                 // 0x00838a9d    33ff
                         {disp8} jmp       _jmp_addr_0x00838aab                     // 0x00838a9f    eb0a
_jmp_addr_0x00838aa1:    cmp               edi, 0x3f                                // 0x00838aa1    83ff3f
                         {disp8} jle       _jmp_addr_0x00838aab                     // 0x00838aa4    7e05
                         mov               edi, 0x0000003f                          // 0x00838aa6    bf3f000000
_jmp_addr_0x00838aab:    {disp8} fld       dword ptr [esp + 0x14]                   // 0x00838aab    d9442414
                         {disp32} fmul     dword ptr [rdata_bytes + 0x87678]        // 0x00838aaf    d80d78069300
                         call              _jmp_addr_0x007a1400                     // 0x00838ab5    e84689f6ff
                         mov.s             esi, eax                                 // 0x00838aba    8bf0
                         test              esi, esi                                 // 0x00838abc    85f6
                         {disp8} jge       _jmp_addr_0x00838ac4                     // 0x00838abe    7d04
                         xor.s             esi, esi                                 // 0x00838ac0    33f6
                         {disp8} jmp       _jmp_addr_0x00838ace                     // 0x00838ac2    eb0a
_jmp_addr_0x00838ac4:    cmp               esi, 0x3f                                // 0x00838ac4    83fe3f
                         {disp8} jle       _jmp_addr_0x00838ace                     // 0x00838ac7    7e05
                         mov               esi, 0x0000003f                          // 0x00838ac9    be3f000000
_jmp_addr_0x00838ace:    mov.s             ecx, ebx                                 // 0x00838ace    8bcb
                         call              _jmp_addr_0x00838f00                     // 0x00838ad0    e82b040000
                         add.s             edi, eax                                 // 0x00838ad5    03f8
                         shl               esi, 6                                   // 0x00838ad7    c1e606
                         xor.s             eax, eax                                 // 0x00838ada    33c0
                         mov               al, byte ptr [esi + edi * 0x1]           // 0x00838adc    8a043e
                         pop               edi                                      // 0x00838adf    5f
                         pop               esi                                      // 0x00838ae0    5e
                         pop               ebx                                      // 0x00838ae1    5b
                         ret               0x0008                                   // 0x00838ae2    c20800
                         nop                                                        // 0x00838ae5    90
                         nop                                                        // 0x00838ae6    90
                         nop                                                        // 0x00838ae7    90
                         nop                                                        // 0x00838ae8    90
                         nop                                                        // 0x00838ae9    90
                         nop                                                        // 0x00838aea    90
                         nop                                                        // 0x00838aeb    90
                         nop                                                        // 0x00838aec    90
                         nop                                                        // 0x00838aed    90
                         nop                                                        // 0x00838aee    90
                         nop                                                        // 0x00838aef    90
_jmp_addr_0x00838af0:    sub               esp, 0x7c                                // 0x00838af0    83ec7c
                         push              ebx                                      // 0x00838af3    53
                         push              ebp                                      // 0x00838af4    55
                         {disp32} mov      ebp, dword ptr [esp + 0x00000088]        // 0x00838af5    8bac2488000000
                         mov.s             ebx, ecx                                 // 0x00838afc    8bd9
                         xor.s             eax, eax                                 // 0x00838afe    33c0
                         mov.s             ecx, ebp                                 // 0x00838b00    8bcd
                         mov               dword ptr [ecx], eax                     // 0x00838b02    8901
                         {disp8} mov       dword ptr [ecx + 0x04], eax              // 0x00838b04    894104
                         {disp8} mov       dword ptr [ecx + 0x08], eax              // 0x00838b07    894108
                         {disp8} mov       dword ptr [ecx + 0x0c], eax              // 0x00838b0a    89410c
                         {disp8} mov       edx, dword ptr [ebx + 0x10]              // 0x00838b0d    8b5310
                         and               edx, 0x3f                                // 0x00838b10    83e23f
                         {disp8} lea       eax, dword ptr [edx + -0x01]             // 0x00838b13    8d42ff
                         cmp               eax, 0x1f                                // 0x00838b16    83f81f
                         push              esi                                      // 0x00838b19    56
                         push              edi                                      // 0x00838b1a    57
                         {disp32} ja       _jmp_addr_0x00838e45                     // 0x00838b1b    0f8724030000
                         xor.s             ecx, ecx                                 // 0x00838b21    33c9
                         {disp32} mov      cl, byte ptr [eax + 0x00838e84]          // 0x00838b23    8a88848e8300
                         jmp               dword ptr [ecx*4 + 0x838e70]             // 0x00838b29    ff248d708e8300
                         push              -0x1                                     // 0x00838b30    6aff
                         call              _jmp_addr_0x007dee20                     // 0x00838b32    e8e962faff
                         mov               esi, 0x00000001                          // 0x00838b37    be01000000
                         add               esp, 0x04                                // 0x00838b3c    83c404
                         mov.s             ecx, ebx                                 // 0x00838b3f    8bcb
                         {disp32} mov      dword ptr [ebx + 0x00000128], esi        // 0x00838b41    89b328010000
                         call              _jmp_addr_0x00838580                     // 0x00838b47    e834faffff
                         {disp32} mov      dword ptr [ebx + 0x00000130], esi        // 0x00838b4c    89b330010000
                         xor.s             eax, eax                                 // 0x00838b52    33c0
                         mov               ecx, 0x0000001f                          // 0x00838b54    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x10]              // 0x00838b59    8d7c2410
                         rep stosd                                                  // 0x00838b5d    f3ab
                         {disp8} lea       esi, dword ptr [ebx + 0x14]              // 0x00838b5f    8d7314
                         mov.s             ecx, esi                                 // 0x00838b62    8bce
                         {disp8} mov       dword ptr [esp + 0x10], 0x0000007c       // 0x00838b64    c74424107c000000
                         {disp8} mov       dword ptr [esp + 0x14], 0x00001007       // 0x00838b6c    c744241407100000
                         call              _jmp_addr_0x00838500                     // 0x00838b74    e887f9ffff
                         mov.s             ecx, esi                                 // 0x00838b79    8bce
                         {disp8} mov       dword ptr [esp + 0x1c], eax              // 0x00838b7b    8944241c
                         call              _jmp_addr_0x00838530                     // 0x00838b7f    e8acf9ffff
                         {disp8} mov       dword ptr [esp + 0x18], eax              // 0x00838b84    89442418
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf07c]   // 0x00838b88    a17c50e800
                         {disp8} mov       dword ptr [esp + 0x78], 0x00001800       // 0x00838b8d    c744247800180000
                         mov               ecx, 0x00000008                          // 0x00838b95    b908000000
                         mov               esi, 0x00f05190                          // 0x00838b9a    be9051f000
                         {disp8} lea       edi, dword ptr [esp + 0x58]              // 0x00838b9f    8d7c2458
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x00838ba3    f3a5
                         mov               edx, dword ptr [eax]                     // 0x00838ba5    8b10
                         push              0x0                                      // 0x00838ba7    6a00
                         {disp32} lea      esi, dword ptr [ebx + 0x00000124]        // 0x00838ba9    8db324010000
                         push              esi                                      // 0x00838baf    56
                         {disp8} lea       ecx, dword ptr [esp + 0x18]              // 0x00838bb0    8d4c2418
                         push              ecx                                      // 0x00838bb4    51
                         push              eax                                      // 0x00838bb5    50
                         call              dword ptr [edx + 0x18]                   // 0x00838bb6    ff5218
                         {disp32} mov      ecx, dword ptr [ebx + 0x00000120]        // 0x00838bb9    8b8b20010000
                         {disp8} mov       ecx, dword ptr [ecx + 0x04]              // 0x00838bbf    8b4904
                         mov               eax, dword ptr [esi]                     // 0x00838bc2    8b06
                         mov               edx, dword ptr [eax]                     // 0x00838bc4    8b10
                         push              0x0                                      // 0x00838bc6    6a00
                         push              0x01000000                               // 0x00838bc8    6800000001
                         push              0x0                                      // 0x00838bcd    6a00
                         push              ecx                                      // 0x00838bcf    51
                         push              0x0                                      // 0x00838bd0    6a00
                         push              eax                                      // 0x00838bd2    50
                         call              dword ptr [edx + 0x14]                   // 0x00838bd3    ff5214
                         xor.s             eax, eax                                 // 0x00838bd6    33c0
                         push              eax                                      // 0x00838bd8    50
                         push              0x00000801                               // 0x00838bd9    6801080000
                         {disp8} lea       edx, dword ptr [esp + 0x18]              // 0x00838bde    8d542418
                         push              edx                                      // 0x00838be2    52
                         mov               ecx, 0x0000001f                          // 0x00838be3    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x1c]              // 0x00838be8    8d7c241c
                         rep stosd                                                  // 0x00838bec    f3ab
                         push              eax                                      // 0x00838bee    50
                         mov               eax, dword ptr [esi]                     // 0x00838bef    8b06
                         push              eax                                      // 0x00838bf1    50
                         {disp8} mov       dword ptr [esp + 0x24], 0x0000007c       // 0x00838bf2    c74424247c000000
                         call              _jmp_addr_0x00871170                     // 0x00838bfa    e871850300
                         {disp8} mov       ecx, dword ptr [esp + 0x34]              // 0x00838bff    8b4c2434
                         {disp8} mov       eax, dword ptr [esp + 0x30]              // 0x00838c03    8b442430
                         {disp8} mov       edx, dword ptr [esp + 0x48]              // 0x00838c07    8b542448
                         add               esp, 0x14                                // 0x00838c0b    83c414
                         {disp8} mov       dword ptr [ebp + 0x04], ecx              // 0x00838c0e    894d04
                         {disp8} mov       ecx, dword ptr [esp + 0x18]              // 0x00838c11    8b4c2418
                         pop               edi                                      // 0x00838c15    5f
                         pop               esi                                      // 0x00838c16    5e
                         {disp8} mov       dword ptr [ebp + 0x00], edx              // 0x00838c17    895500
                         {disp8} mov       dword ptr [ebp + 0x08], eax              // 0x00838c1a    894508
                         {disp8} mov       dword ptr [ebp + 0x0c], ecx              // 0x00838c1d    894d0c
                         {disp32} mov      eax, dword ptr [ebx + 0x00000130]        // 0x00838c20    8b8330010000
                         pop               ebp                                      // 0x00838c26    5d
                         pop               ebx                                      // 0x00838c27    5b
                         add               esp, 0x7c                                // 0x00838c28    83c47c
                         ret               0x0004                                   // 0x00838c2b    c20400
                         {disp8} lea       esi, dword ptr [ebx + 0x14]              // 0x00838c2e    8d7314
                         mov.s             ecx, esi                                 // 0x00838c31    8bce
                         call              _jmp_addr_0x00838500                     // 0x00838c33    e8c8f8ffff
                         mov.s             ecx, esi                                 // 0x00838c38    8bce
                         {disp8} mov       dword ptr [ebp + 0x08], eax              // 0x00838c3a    894508
                         call              _jmp_addr_0x00838530                     // 0x00838c3d    e8eef8ffff
                         mov.s             ecx, esi                                 // 0x00838c42    8bce
                         {disp8} mov       dword ptr [ebp + 0x0c], eax              // 0x00838c44    89450c
                         call              _jmp_addr_0x00838500                     // 0x00838c47    e8b4f8ffff
                         shl               eax, 1                                   // 0x00838c4c    d1e0
                         mov.s             ecx, ebx                                 // 0x00838c4e    8bcb
                         {disp8} mov       dword ptr [ebp + 0x04], eax              // 0x00838c50    894504
                         call              _jmp_addr_0x00839010                     // 0x00838c53    e8b8030000
                         mov.s             ecx, eax                                 // 0x00838c58    8bc8
                         call              _jmp_addr_0x00870910                     // 0x00838c5a    e8b17c0300
                         pop               edi                                      // 0x00838c5f    5f
                         {disp8} mov       dword ptr [ebp + 0x00], eax              // 0x00838c60    894500
                         pop               esi                                      // 0x00838c63    5e
                         {disp32} mov      dword ptr [ebx + 0x00000130], 0x00000001 // 0x00838c64    c7833001000001000000
                         {disp32} mov      eax, dword ptr [ebx + 0x00000130]        // 0x00838c6e    8b8330010000
                         pop               ebp                                      // 0x00838c74    5d
                         pop               ebx                                      // 0x00838c75    5b
                         add               esp, 0x7c                                // 0x00838c76    83c47c
                         ret               0x0004                                   // 0x00838c79    c20400
                         xor.s             eax, eax                                 // 0x00838c7c    33c0
                         mov               esi, 0x00000001                          // 0x00838c7e    be01000000
                         mov               ecx, 0x0000001f                          // 0x00838c83    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x10]              // 0x00838c88    8d7c2410
                         rep stosd                                                  // 0x00838c8c    f3ab
                         {disp8} mov       eax, dword ptr [esp + 0x14]              // 0x00838c8e    8b442414
                         {disp32} mov      dword ptr [ebx + 0x00000128], esi        // 0x00838c92    89b328010000
                         {disp32} mov      dword ptr [ebx + 0x00000130], esi        // 0x00838c98    89b330010000
                         or                eax, 0x1007                              // 0x00838c9e    0d07100000
                         {disp8} lea       esi, dword ptr [ebx + 0x14]              // 0x00838ca3    8d7314
                         mov.s             ecx, esi                                 // 0x00838ca6    8bce
                         {disp8} mov       dword ptr [esp + 0x10], 0x0000007c       // 0x00838ca8    c74424107c000000
                         {disp8} mov       dword ptr [esp + 0x14], eax              // 0x00838cb0    89442414
                         call              _jmp_addr_0x00838500                     // 0x00838cb4    e847f8ffff
                         mov.s             ecx, esi                                 // 0x00838cb9    8bce
                         {disp8} mov       dword ptr [esp + 0x1c], eax              // 0x00838cbb    8944241c
                         call              _jmp_addr_0x00838530                     // 0x00838cbf    e86cf8ffff
                         {disp8} mov       dword ptr [esp + 0x18], eax              // 0x00838cc4    89442418
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf07c]   // 0x00838cc8    a17c50e800
                         {disp8} mov       dword ptr [esp + 0x78], 0x00001800       // 0x00838ccd    c744247800180000
                         mov               ecx, 0x00000008                          // 0x00838cd5    b908000000
                         mov               esi, 0x00f05190                          // 0x00838cda    be9051f000
                         {disp8} lea       edi, dword ptr [esp + 0x58]              // 0x00838cdf    8d7c2458
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x00838ce3    f3a5
                         mov               edx, dword ptr [eax]                     // 0x00838ce5    8b10
                         push              0x0                                      // 0x00838ce7    6a00
                         {disp32} lea      esi, dword ptr [ebx + 0x00000124]        // 0x00838ce9    8db324010000
                         push              esi                                      // 0x00838cef    56
                         {disp8} lea       ecx, dword ptr [esp + 0x18]              // 0x00838cf0    8d4c2418
                         push              ecx                                      // 0x00838cf4    51
                         push              eax                                      // 0x00838cf5    50
                         call              dword ptr [edx + 0x18]                   // 0x00838cf6    ff5218
                         xor.s             eax, eax                                 // 0x00838cf9    33c0
                         push              eax                                      // 0x00838cfb    50
                         push              0x00000821                               // 0x00838cfc    6821080000
                         {disp8} lea       edx, dword ptr [esp + 0x18]              // 0x00838d01    8d542418
                         push              edx                                      // 0x00838d05    52
                         mov               ecx, 0x0000001f                          // 0x00838d06    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x1c]              // 0x00838d0b    8d7c241c
                         rep stosd                                                  // 0x00838d0f    f3ab
                         push              eax                                      // 0x00838d11    50
                         mov               eax, dword ptr [esi]                     // 0x00838d12    8b06
                         push              eax                                      // 0x00838d14    50
                         {disp8} mov       dword ptr [esp + 0x24], 0x0000007c       // 0x00838d15    c74424247c000000
                         call              _jmp_addr_0x00871170                     // 0x00838d1d    e84e840300
                         add               esp, 0x14                                // 0x00838d22    83c414
                         {disp8} lea       ecx, dword ptr [esp + 0x10]              // 0x00838d25    8d4c2410
                         push              ecx                                      // 0x00838d29    51
                         mov.s             ecx, ebp                                 // 0x00838d2a    8bcd
                         call              _jmp_addr_0x00839680                     // 0x00838d2c    e84f090000
                         {disp8} mov       edx, dword ptr [ebx + 0x10]              // 0x00838d31    8b5310
                         {disp8} mov       eax, dword ptr [ebx + 0x14]              // 0x00838d34    8b4314
                         and               edx, 0x40                                // 0x00838d37    83e240
                         push              edx                                      // 0x00838d3a    52
                         push              eax                                      // 0x00838d3b    50
                         {disp8} lea       eax, dword ptr [ebx + 0x1c]              // 0x00838d3c    8d431c
                         push              eax                                      // 0x00838d3f    50
                         push              ebp                                      // 0x00838d40    55
                         call              _jmp_addr_0x00837400                     // 0x00838d41    e8bae6ffff
                         {disp32} mov      eax, dword ptr [ebx + 0x00000130]        // 0x00838d46    8b8330010000
                         add               esp, 0x10                                // 0x00838d4c    83c410
                         pop               edi                                      // 0x00838d4f    5f
                         pop               esi                                      // 0x00838d50    5e
                         pop               ebp                                      // 0x00838d51    5d
                         pop               ebx                                      // 0x00838d52    5b
                         add               esp, 0x7c                                // 0x00838d53    83c47c
                         ret               0x0004                                   // 0x00838d56    c20400
                         xor.s             eax, eax                                 // 0x00838d59    33c0
                         mov               ecx, 0x0000001f                          // 0x00838d5b    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x10]              // 0x00838d60    8d7c2410
                         rep stosd                                                  // 0x00838d64    f3ab
                         {disp8} mov       eax, dword ptr [esp + 0x14]              // 0x00838d66    8b442414
                         or                eax, 0x1007                              // 0x00838d6a    0d07100000
                         {disp8} lea       esi, dword ptr [ebx + 0x14]              // 0x00838d6f    8d7314
                         mov.s             ecx, esi                                 // 0x00838d72    8bce
                         {disp32} mov      dword ptr [ebx + 0x00000130], 0x00000001 // 0x00838d74    c7833001000001000000
                         {disp8} mov       dword ptr [esp + 0x10], 0x0000007c       // 0x00838d7e    c74424107c000000
                         {disp8} mov       dword ptr [esp + 0x14], eax              // 0x00838d86    89442414
                         call              _jmp_addr_0x00838500                     // 0x00838d8a    e871f7ffff
                         mov.s             ecx, esi                                 // 0x00838d8f    8bce
                         {disp8} mov       dword ptr [esp + 0x1c], eax              // 0x00838d91    8944241c
                         call              _jmp_addr_0x00838530                     // 0x00838d95    e896f7ffff
                         {disp8} mov       dword ptr [esp + 0x18], eax              // 0x00838d9a    89442418
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4bf07c]   // 0x00838d9e    a17c50e800
                         {disp8} mov       dword ptr [esp + 0x78], 0x00001800       // 0x00838da3    c744247800180000
                         mov               ecx, 0x00000008                          // 0x00838dab    b908000000
                         mov               esi, 0x00f05190                          // 0x00838db0    be9051f000
                         {disp8} lea       edi, dword ptr [esp + 0x58]              // 0x00838db5    8d7c2458
                         rep movsd         es:[edi], dword ptr ds:[esi]             // 0x00838db9    f3a5
                         mov               ecx, dword ptr [eax]                     // 0x00838dbb    8b08
                         push              0x0                                      // 0x00838dbd    6a00
                         {disp32} lea      esi, dword ptr [ebx + 0x00000124]        // 0x00838dbf    8db324010000
                         push              esi                                      // 0x00838dc5    56
                         {disp8} lea       edx, dword ptr [esp + 0x18]              // 0x00838dc6    8d542418
                         push              edx                                      // 0x00838dca    52
                         push              eax                                      // 0x00838dcb    50
                         call              dword ptr [ecx + 0x18]                   // 0x00838dcc    ff5118
                         {disp32} mov      edx, dword ptr [ebx + 0x00000120]        // 0x00838dcf    8b9320010000
                         {disp8} mov       edx, dword ptr [edx + 0x04]              // 0x00838dd5    8b5204
                         mov               eax, dword ptr [esi]                     // 0x00838dd8    8b06
                         mov               ecx, dword ptr [eax]                     // 0x00838dda    8b08
                         push              0x0                                      // 0x00838ddc    6a00
                         push              0x01000000                               // 0x00838dde    6800000001
                         push              0x0                                      // 0x00838de3    6a00
                         push              edx                                      // 0x00838de5    52
                         push              0x0                                      // 0x00838de6    6a00
                         push              eax                                      // 0x00838de8    50
                         call              dword ptr [ecx + 0x14]                   // 0x00838de9    ff5114
                         xor.s             eax, eax                                 // 0x00838dec    33c0
                         push              eax                                      // 0x00838dee    50
                         mov               ecx, 0x0000001f                          // 0x00838def    b91f000000
                         {disp8} lea       edi, dword ptr [esp + 0x14]              // 0x00838df4    8d7c2414
                         rep stosd                                                  // 0x00838df8    f3ab
                         mov               ecx, dword ptr [esi]                     // 0x00838dfa    8b0e
                         push              0x00000801                               // 0x00838dfc    6801080000
                         {disp8} lea       eax, dword ptr [esp + 0x18]              // 0x00838e01    8d442418
                         push              eax                                      // 0x00838e05    50
                         push              0x0                                      // 0x00838e06    6a00
                         push              ecx                                      // 0x00838e08    51
                         {disp8} mov       dword ptr [esp + 0x24], 0x0000007c       // 0x00838e09    c74424247c000000
                         call              _jmp_addr_0x00871170                     // 0x00838e11    e85a830300
                         {disp8} mov       edx, dword ptr [esp + 0x34]              // 0x00838e16    8b542434
                         {disp8} mov       eax, dword ptr [esp + 0x48]              // 0x00838e1a    8b442448
                         {disp8} mov       ecx, dword ptr [esp + 0x30]              // 0x00838e1e    8b4c2430
                         add               esp, 0x14                                // 0x00838e22    83c414
                         {disp8} mov       dword ptr [ebp + 0x04], edx              // 0x00838e25    895504
                         {disp8} mov       edx, dword ptr [esp + 0x18]              // 0x00838e28    8b542418
                         pop               edi                                      // 0x00838e2c    5f
                         pop               esi                                      // 0x00838e2d    5e
                         {disp8} mov       dword ptr [ebp + 0x00], eax              // 0x00838e2e    894500
                         {disp8} mov       dword ptr [ebp + 0x08], ecx              // 0x00838e31    894d08
                         {disp8} mov       dword ptr [ebp + 0x0c], edx              // 0x00838e34    89550c
                         {disp32} mov      eax, dword ptr [ebx + 0x00000130]        // 0x00838e37    8b8330010000
                         pop               ebp                                      // 0x00838e3d    5d
                         pop               ebx                                      // 0x00838e3e    5b
                         add               esp, 0x7c                                // 0x00838e3f    83c47c
                         ret               0x0004                                   // 0x00838e42    c20400
_jmp_addr_0x00838e45:    mov.s             ecx, ebp                                 // 0x00838e45    8bcd
                         mov               eax, 0x01010101                          // 0x00838e47    b801010101
                         mov               dword ptr [ecx], eax                     // 0x00838e4c    8901
                         {disp8} mov       dword ptr [ecx + 0x04], eax              // 0x00838e4e    894104
                         {disp8} mov       dword ptr [ecx + 0x08], eax              // 0x00838e51    894108
                         pop               edi                                      // 0x00838e54    5f
                         {disp8} mov       dword ptr [ecx + 0x0c], eax              // 0x00838e55    89410c
                         pop               esi                                      // 0x00838e58    5e
                         {disp8} mov       dword ptr [ebp + 0x00], 0x00000000       // 0x00838e59    c7450000000000
                         {disp32} mov      eax, dword ptr [ebx + 0x00000130]        // 0x00838e60    8b8330010000
                         pop               ebp                                      // 0x00838e66    5d
                         pop               ebx                                      // 0x00838e67    5b
                         add               esp, 0x7c                                // 0x00838e68    83c47c
                         ret               0x0004                                   // 0x00838e6b    c20400

// Snippet: db, [0x00838e6e, 0x00838e70)
.byte 0x8b, 0xff                  // 0x00838e6e

// Snippet: jmptbl, [0x00838e70, 0x00838e84)
.byte 0x7c, 0x8c, 0x83, 0x00      // 0x00838e70
.byte 0x30, 0x8b, 0x83, 0x00      // 0x00838e74
.byte 0x2e, 0x8c, 0x83, 0x00      // 0x00838e78
.byte 0x59, 0x8d, 0x83, 0x00      // 0x00838e7c
.byte 0x45, 0x8e, 0x83, 0x00      // 0x00838e80

// Snippet: ijmptbl, [0x00838e84, 0x00838ea4)
.byte 0x00, 0x01, 0x04, 0x02      // 0x00838e84
.byte 0x04, 0x04, 0x04, 0x04      // 0x00838e88
.byte 0x04, 0x04, 0x04, 0x04      // 0x00838e8c
.byte 0x04, 0x04, 0x04, 0x04      // 0x00838e90
.byte 0x04, 0x04, 0x04, 0x04      // 0x00838e94
.byte 0x04, 0x04, 0x04, 0x04      // 0x00838e98
.byte 0x04, 0x04, 0x04, 0x04      // 0x00838e9c
.byte 0x04, 0x04, 0x04, 0x03      // 0x00838ea0

// Snippet: db, [0x00838ea4, 0x00838eb0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00838ea4
.byte 0x90, 0x90, 0x90, 0x90      // 0x00838ea8
.byte 0x90, 0x90, 0x90, 0x90      // 0x00838eac

