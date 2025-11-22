.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x00436a50
.extern _jmp_addr_0x00436a90
.extern ??0MapCoords@@QAE@XZ
.extern ?Draw@MobileObject@@UAEXXZ
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x00563400
.extern _jmp_addr_0x00563410
.extern ??0GameThing@@QAE@XZ
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z
.extern ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z
.extern ?SetToZero@GameThingWithPos@@QAEXXZ
.extern @GetLHPoint__9MapCoordsCFv@12
.extern @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28
.extern _jmp_addr_0x00606ed0
.extern @SetLife__6ObjectFf@12
.extern _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x006e4750
.extern ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z
.extern _jmp_addr_0x0074e2b0
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl _jmp_addr_0x0063df70
.globl _jmp_addr_0x0063e090
.globl _jmp_addr_0x0063e0d0
.globl _jmp_addr_0x0063e1b0
.globl _jmp_addr_0x0063e370
.globl _jmp_addr_0x0063e380
.globl _jmp_addr_0x0063e3a0
.globl _jmp_addr_0x0063e3e0
.globl _jmp_addr_0x0063e540
.globl _jmp_addr_0x0063e580
.globl _jmp_addr_0x0063ed40
.globl _jmp_addr_0x0063ee10

.globl _globl_ct_0x0063dfb0
.globl _globl_ct_0x0063dfe0
.globl _globl_ct_0x0063e7d0
.globl _globl_ct_0x0063e800
.globl _globl_ct_0x0063e840
.globl _globl_ct_0x0063eb00
.globl _globl_ct_0x0063eb30
.globl _globl_ct_0x0063eb80
.globl _globl_ct_0x0063eb50
.globl _globl_ct_0x0063ebb0
.globl _globl_ct_0x0063ebe0
.globl _globl_ct_0x0063ec00
.globl _globl_ct_0x0063ec30
.globl _globl_ct_0x0063ec60
.globl _globl_ct_0x0063ec80
.globl _globl_ct_0x0063ecb0
.globl _globl_ct_0x0063ece0
.globl _globl_ct_0x0063ed00
.globl ?GetBaseInfo@GSpotVisualInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGSpotVisualInfo@@UAEPAXI@Z
.globl ?ToBeDeleted@GParticleContainer@@UAEXH@Z
.globl ?SetPlayer@GParticleContainer@@UAEXPAVGPlayer@@@Z
.globl ?SetScale@GParticleContainer@@UAEXM@Z
.globl ?Save@GParticleContainer@@UAEIAAVGameOSFile@@@Z
.globl ?Load@GParticleContainer@@UAEIAAVGameOSFile@@@Z
.globl ?GetBaseInfo@GPBallInfo@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGPBallInfo@@UAEPAXI@Z
.globl ??_GPBall@@UAEPAXI@Z
.globl ?Draw@PBall@@UAEXXZ
.globl ?Process@PBall@@UAEIXZ

start_0x0063df70_0x0063eef0:
// Snippet: asm, [0x0063df70, 0x0063eea0)
_jmp_addr_0x0063df70:    push              esi                                           // 0x0063df70    56
                         push              edi                                           // 0x0063df71    57
                         mov.s             edi, ecx                                      // 0x0063df72    8bf9
                         {disp8} mov       ecx, dword ptr [edi + 0x08]                   // 0x0063df74    8b4f08
                         xor.s             eax, eax                                      // 0x0063df77    33c0
                         test              ecx, ecx                                      // 0x0063df79    85c9
                         {disp8} je        _jmp_addr_0x0063dfa3                          // 0x0063df7b    7426
                         push              ecx                                           // 0x0063df7d    51
                         call              _jmp_addr_0x00436a50                          // 0x0063df7e    e8cd8adfff
                         mov.s             esi, eax                                      // 0x0063df83    8bf0
                         add               esp, 0x04                                     // 0x0063df85    83c404
                         test              esi, esi                                      // 0x0063df88    85f6
                         {disp8} je        _jmp_addr_0x0063dfa1                          // 0x0063df8a    7415
                         push              esi                                           // 0x0063df8c    56
                         call              _jmp_addr_0x00436a90                          // 0x0063df8d    e8fe8adfff
                         {disp8} mov       ecx, dword ptr [edi + 0x0c]                   // 0x0063df92    8b4f0c
                         add               esp, 0x04                                     // 0x0063df95    83c404
                         cmp.s             eax, ecx                                      // 0x0063df98    3bc1
                         {disp8} je        _jmp_addr_0x0063dfa1                          // 0x0063df9a    7405
                         pop               edi                                           // 0x0063df9c    5f
                         xor.s             eax, eax                                      // 0x0063df9d    33c0
                         pop               esi                                           // 0x0063df9f    5e
                         ret                                                             // 0x0063dfa0    c3
_jmp_addr_0x0063dfa1:    mov.s             eax, esi                                      // 0x0063dfa1    8bc6
_jmp_addr_0x0063dfa3:    pop               edi                                           // 0x0063dfa3    5f
                         pop               esi                                           // 0x0063dfa4    5e
                         ret                                                             // 0x0063dfa5    c3
                         nop                                                             // 0x0063dfa6    90
                         nop                                                             // 0x0063dfa7    90
                         nop                                                             // 0x0063dfa8    90
                         nop                                                             // 0x0063dfa9    90
                         nop                                                             // 0x0063dfaa    90
                         nop                                                             // 0x0063dfab    90
                         nop                                                             // 0x0063dfac    90
                         nop                                                             // 0x0063dfad    90
                         nop                                                             // 0x0063dfae    90
                         nop                                                             // 0x0063dfaf    90
_globl_ct_0x0063dfb0:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0063dfb0    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0063dfb6    b001
                         test              al, cl                                        // 0x0063dfb8    84c8
                         {disp8} jne       _jmp_addr_0x0063dfc4                          // 0x0063dfba    7508
                         or.s              cl, al                                        // 0x0063dfbc    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0063dfbe    880d34c9fa00
_jmp_addr_0x0063dfc4:    {disp32} jmp      _jmp_addr_0x0063dfd0                          // 0x0063dfc4    e907000000
                         nop                                                             // 0x0063dfc9    90
                         nop                                                             // 0x0063dfca    90
                         nop                                                             // 0x0063dfcb    90
                         nop                                                             // 0x0063dfcc    90
                         nop                                                             // 0x0063dfcd    90
                         nop                                                             // 0x0063dfce    90
                         nop                                                             // 0x0063dfcf    90
_jmp_addr_0x0063dfd0:    push              0x00407870                                    // 0x0063dfd0    6870784000
                         call              _atexit                                       // 0x0063dfd5    e8b7771800
                         pop               ecx                                           // 0x0063dfda    59
                         ret                                                             // 0x0063dfdb    c3
                         nop                                                             // 0x0063dfdc    90
                         nop                                                             // 0x0063dfdd    90
                         nop                                                             // 0x0063dfde    90
                         nop                                                             // 0x0063dfdf    90
_globl_ct_0x0063dfe0:    call              _jmp_addr_0x0063dff0                          // 0x0063dfe0    e80b000000
                         {disp32} jmp      _jmp_addr_0x0063e030                          // 0x0063dfe5    e946000000
                         nop                                                             // 0x0063dfea    90
                         nop                                                             // 0x0063dfeb    90
                         nop                                                             // 0x0063dfec    90
                         nop                                                             // 0x0063dfed    90
                         nop                                                             // 0x0063dfee    90
                         nop                                                             // 0x0063dfef    90
_jmp_addr_0x0063dff0:    mov               eax, 0x00d44470                               // 0x0063dff0    b87044d400
                         mov               ecx, 0x00000032                               // 0x0063dff5    b932000000
                         xor.s             edx, edx                                      // 0x0063dffa    33d2
.att_syntax
_jmp_addr_0x0063dffc:    movl               $??_7Base@@6B@, (%eax)                        // 0x0063dffc    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov       dword ptr [eax + 0x04], edx                   // 0x0063e002    895004
                         {disp8} mov       dword ptr [eax + 0x08], edx                   // 0x0063e005    895008
                         mov               dword ptr [eax], 0x00931340                   // 0x0063e008    c70040139300
                         add               eax, 0x54                                     // 0x0063e00e    83c054
                         dec               ecx                                           // 0x0063e011    49
                         {disp8} jne       _jmp_addr_0x0063dffc                          // 0x0063e012    75e8
                         ret                                                             // 0x0063e014    c3
                         nop                                                             // 0x0063e015    90
                         nop                                                             // 0x0063e016    90
                         nop                                                             // 0x0063e017    90
                         nop                                                             // 0x0063e018    90
                         nop                                                             // 0x0063e019    90
                         nop                                                             // 0x0063e01a    90
                         nop                                                             // 0x0063e01b    90
                         nop                                                             // 0x0063e01c    90
                         nop                                                             // 0x0063e01d    90
                         nop                                                             // 0x0063e01e    90
                         nop                                                             // 0x0063e01f    90
?GetBaseInfo@GSpotVisualInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0063e020    8b442404
                         mov               dword ptr [eax], 0x00000000                   // 0x0063e024    c70000000000
                         xor.s             eax, eax                                      // 0x0063e02a    33c0
                         ret               0x0004                                        // 0x0063e02c    c20400
                         nop                                                             // 0x0063e02f    90
_jmp_addr_0x0063e030:    push              0x0063e040                                    // 0x0063e030    6840e06300
                         call              _atexit                                       // 0x0063e035    e857771800
                         pop               ecx                                           // 0x0063e03a    59
                         ret                                                             // 0x0063e03b    c3
                         nop                                                             // 0x0063e03c    90
                         nop                                                             // 0x0063e03d    90
                         nop                                                             // 0x0063e03e    90
                         nop                                                             // 0x0063e03f    90
                         {disp32} mov      cl, byte ptr [data_bytes + 0x37e468]          // 0x0063e040    8a0d6844d400
                         mov               al, 0x01                                      // 0x0063e046    b001
                         test              al, cl                                        // 0x0063e048    84c8
                         {disp8} jne       _jmp_addr_0x0063e06f                          // 0x0063e04a    7523
                         push              esi                                           // 0x0063e04c    56
                         or.s              cl, al                                        // 0x0063e04d    0ac8
                         push              edi                                           // 0x0063e04f    57
                         {disp32} mov      byte ptr [data_bytes + 0x37e468], cl          // 0x0063e050    880d6844d400
                         mov               esi, 0x00d454d8                               // 0x0063e056    bed854d400
                         mov               edi, 0x00000032                               // 0x0063e05b    bf32000000
_jmp_addr_0x0063e060:    sub               esi, 0x54                                     // 0x0063e060    83ee54
                         mov.s             ecx, esi                                      // 0x0063e063    8bce
                         call              _jmp_addr_0x00436960                          // 0x0063e065    e8f688dfff
                         dec               edi                                           // 0x0063e06a    4f
                         {disp8} jne       _jmp_addr_0x0063e060                          // 0x0063e06b    75f3
                         pop               edi                                           // 0x0063e06d    5f
                         pop               esi                                           // 0x0063e06e    5e
_jmp_addr_0x0063e06f:    ret                                                             // 0x0063e06f    c3
??_GGSpotVisualInfo@@UAEPAXI@Z:
                         push              esi                                           // 0x0063e070    56
                         mov.s             esi, ecx                                      // 0x0063e071    8bf1
                         call              _jmp_addr_0x00436960                          // 0x0063e073    e8e888dfff
                         test              byte ptr [esp + 0x08], 0x01                   // 0x0063e078    f644240801
                         {disp8} je        _jmp_addr_0x0063e08a                          // 0x0063e07d    740b
                         push              0x54                                          // 0x0063e07f    6a54
                         push              esi                                           // 0x0063e081    56
                         call              ??3Base@@SAXPAXK@Z                          // 0x0063e082    e8e988dfff
                         add               esp, 0x08                                     // 0x0063e087    83c408
_jmp_addr_0x0063e08a:    mov.s             eax, esi                                      // 0x0063e08a    8bc6
                         pop               esi                                           // 0x0063e08c    5e
                         ret               0x0004                                        // 0x0063e08d    c20400
_jmp_addr_0x0063e090:    {disp32} mov      eax, dword ptr [_game]                        // 0x0063e090    a15c19d000
                         push              esi                                           // 0x0063e095    56
                         {disp32} mov      esi, dword ptr [eax + 0x00205bcc]             // 0x0063e096    8bb0cc5b2000
                         test              esi, esi                                      // 0x0063e09c    85f6
                         {disp8} je        _jmp_addr_0x0063e0cc                          // 0x0063e09e    742c
                         push              edi                                           // 0x0063e0a0    57
_jmp_addr_0x0063e0a1:    mov               edx, dword ptr [esi]                          // 0x0063e0a1    8b16
                         {disp8} mov       edi, dword ptr [esi + 0x3c]                   // 0x0063e0a3    8b7e3c
                         mov.s             ecx, esi                                      // 0x0063e0a6    8bce
                         call              dword ptr [edx + 0x2c]                        // 0x0063e0a8    ff522c
                         cmp               eax, 0x01                                     // 0x0063e0ab    83f801
                         {disp8} jne       _jmp_addr_0x0063e0c5                          // 0x0063e0ae    7515
                         mov.s             ecx, esi                                      // 0x0063e0b0    8bce
                         call              _jmp_addr_0x0063e280                          // 0x0063e0b2    e8c9010000
                         cmp               eax, 0x05                                     // 0x0063e0b7    83f805
                         {disp8} jne       _jmp_addr_0x0063e0c5                          // 0x0063e0ba    7509
                         mov               eax, dword ptr [esi]                          // 0x0063e0bc    8b06
                         push              0x0                                           // 0x0063e0be    6a00
                         mov.s             ecx, esi                                      // 0x0063e0c0    8bce
                         call              dword ptr [eax + 0xc]                         // 0x0063e0c2    ff500c
_jmp_addr_0x0063e0c5:    test              edi, edi                                      // 0x0063e0c5    85ff
                         mov.s             esi, edi                                      // 0x0063e0c7    8bf7
                         {disp8} jne       _jmp_addr_0x0063e0a1                          // 0x0063e0c9    75d6
                         pop               edi                                           // 0x0063e0cb    5f
_jmp_addr_0x0063e0cc:    pop               esi                                           // 0x0063e0cc    5e
                         ret                                                             // 0x0063e0cd    c3
                         nop                                                             // 0x0063e0ce    90
                         nop                                                             // 0x0063e0cf    90
_jmp_addr_0x0063e0d0:    {disp32} mov      eax, dword ptr [_game]                        // 0x0063e0d0    a15c19d000
                         push              esi                                           // 0x0063e0d5    56
                         {disp32} mov      esi, dword ptr [eax + 0x00205bcc]             // 0x0063e0d6    8bb0cc5b2000
                         test              esi, esi                                      // 0x0063e0dc    85f6
                         {disp8} je        _jmp_addr_0x0063e0ee                          // 0x0063e0de    740e
_jmp_addr_0x0063e0e0:    mov.s             ecx, esi                                      // 0x0063e0e0    8bce
                         call              _jmp_addr_0x0063e240                          // 0x0063e0e2    e859010000
                         {disp8} mov       esi, dword ptr [esi + 0x3c]                   // 0x0063e0e7    8b763c
                         test              esi, esi                                      // 0x0063e0ea    85f6
                         {disp8} jne       _jmp_addr_0x0063e0e0                          // 0x0063e0ec    75f2
_jmp_addr_0x0063e0ee:    pop               esi                                           // 0x0063e0ee    5e
                         ret                                                             // 0x0063e0ef    c3
_jmp_addr_0x0063e0f0:    push              esi                                           // 0x0063e0f0    56
                         push              edi                                           // 0x0063e0f1    57
                         mov.s             esi, ecx                                      // 0x0063e0f2    8bf1
                         call              ??0GameThing@@QAE@XZ                          // 0x0063e0f4    e81719f3ff
                         {disp8} lea       edi, dword ptr [esi + 0x14]                   // 0x0063e0f9    8d7e14
                         mov.s             ecx, edi                                      // 0x0063e0fc    8bcf
                         call              ??0MapCoords@@QAE@XZ                          // 0x0063e0fe    e85d3ae0ff
                         {disp8} mov       dword ptr [esi + 0x20], 0x00000000            // 0x0063e103    c7462000000000
                         mov.s             ecx, esi                                      // 0x0063e10a    8bce
                         mov               dword ptr [esi], 0x008c31a0                   // 0x0063e10c    c706a0318c00
                         call              ?SetToZero@GameThingWithPos@@QAEXXZ           // 0x0063e112    e8b924f3ff
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0063e117    8b44240c
                         mov               ecx, dword ptr [eax]                          // 0x0063e11b    8b08
                         mov               dword ptr [edi], ecx                          // 0x0063e11d    890f
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x0063e11f    8b5004
                         {disp8} mov       dword ptr [edi + 0x04], edx                   // 0x0063e122    895704
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0063e125    8b4008
                         {disp8} mov       dword ptr [edi + 0x08], eax                   // 0x0063e128    894708
                         {disp8} mov       dword ptr [esi + 0x28], 0x00000000            // 0x0063e12b    c7462800000000
                         {disp8} mov       dword ptr [esi + 0x3c], 0x00000000            // 0x0063e132    c7463c00000000
                         mov.s             ecx, esi                                      // 0x0063e139    8bce
                         mov               dword ptr [esi], 0x008e2a14                   // 0x0063e13b    c706142a8e00
                         call              _jmp_addr_0x0063e1b0                          // 0x0063e141    e86a000000
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x0063e146    8b4c2410
                         {disp8} mov       edi, dword ptr [esp + 0x14]                   // 0x0063e14a    8b7c2414
                         {disp8} mov       dword ptr [esi + 0x28], ecx                   // 0x0063e14e    894e28
                         {disp32} mov      edx, dword ptr [_game]                        // 0x0063e151    8b155c19d000
                         {disp32} lea      eax, dword ptr [edx + 0x00205bcc]             // 0x0063e157    8d82cc5b2000
                         mov               edx, dword ptr [eax]                          // 0x0063e15d    8b10
                         {disp8} mov       dword ptr [esi + 0x3c], edx                   // 0x0063e15f    89563c
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x0063e162    8b5004
                         inc               edx                                           // 0x0063e165    42
                         mov               dword ptr [eax], esi                          // 0x0063e166    8930
                         {disp8} mov       dword ptr [eax + 0x04], edx                   // 0x0063e168    895004
                         cmp               dword ptr [edi + 0x48], 0x29                  // 0x0063e16b    837f4829
                         {disp8} je        _jmp_addr_0x0063e190                          // 0x0063e16f    741f
                         test              ecx, ecx                                      // 0x0063e171    85c9
                         {disp8} je        _jmp_addr_0x0063e17c                          // 0x0063e173    7407
                         mov               eax, dword ptr [ecx]                          // 0x0063e175    8b01
                         call              dword ptr [eax + 0x1c]                        // 0x0063e177    ff501c
                         {disp8} jmp       _jmp_addr_0x0063e17e                          // 0x0063e17a    eb02
_jmp_addr_0x0063e17c:    xor.s             eax, eax                                      // 0x0063e17c    33c0
_jmp_addr_0x0063e17e:    xor.s             ecx, ecx                                      // 0x0063e17e    33c9
                         {disp8} mov       cl, byte ptr [edi + 0x48]                     // 0x0063e180    8a4f48
                         push              0x0                                           // 0x0063e183    6a00
                         push              eax                                           // 0x0063e185    50
                         push              ecx                                           // 0x0063e186    51
                         push              esi                                           // 0x0063e187    56
                         call              ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z              // 0x0063e188    e8e35b0a00
                         add               esp, 0x10                                     // 0x0063e18d    83c410
_jmp_addr_0x0063e190:    cmp               dword ptr [edi + 0x4c], 0x01                  // 0x0063e190    837f4c01
                         sete              dl                                            // 0x0063e194    0f94c2
                         pop               edi                                           // 0x0063e197    5f
                         {disp8} mov       byte ptr [esi + 0x38], dl                     // 0x0063e198    885638
                         mov.s             eax, esi                                      // 0x0063e19b    8bc6
                         pop               esi                                           // 0x0063e19d    5e
                         ret               0x0010                                        // 0x0063e19e    c21000
                         nop                                                             // 0x0063e1a1    90
                         nop                                                             // 0x0063e1a2    90
                         nop                                                             // 0x0063e1a3    90
                         nop                                                             // 0x0063e1a4    90
                         nop                                                             // 0x0063e1a5    90
                         nop                                                             // 0x0063e1a6    90
                         nop                                                             // 0x0063e1a7    90
                         nop                                                             // 0x0063e1a8    90
                         nop                                                             // 0x0063e1a9    90
                         nop                                                             // 0x0063e1aa    90
                         nop                                                             // 0x0063e1ab    90
                         nop                                                             // 0x0063e1ac    90
                         nop                                                             // 0x0063e1ad    90
                         nop                                                             // 0x0063e1ae    90
                         nop                                                             // 0x0063e1af    90
_jmp_addr_0x0063e1b0:    xor.s             eax, eax                                      // 0x0063e1b0    33c0
                         {disp8} mov       dword ptr [ecx + 0x2c], eax                   // 0x0063e1b2    89412c
                         {disp8} mov       byte ptr [ecx + 0x38], al                     // 0x0063e1b5    884138
                         {disp8} mov       dword ptr [ecx + 0x34], 0x3f800000            // 0x0063e1b8    c741340000803f
                         {disp8} mov       dword ptr [ecx + 0x28], eax                   // 0x0063e1bf    894128
                         ret                                                             // 0x0063e1c2    c3
                         nop                                                             // 0x0063e1c3    90
                         nop                                                             // 0x0063e1c4    90
                         nop                                                             // 0x0063e1c5    90
                         nop                                                             // 0x0063e1c6    90
                         nop                                                             // 0x0063e1c7    90
                         nop                                                             // 0x0063e1c8    90
                         nop                                                             // 0x0063e1c9    90
                         nop                                                             // 0x0063e1ca    90
                         nop                                                             // 0x0063e1cb    90
                         nop                                                             // 0x0063e1cc    90
                         nop                                                             // 0x0063e1cd    90
                         nop                                                             // 0x0063e1ce    90
                         nop                                                             // 0x0063e1cf    90
?ToBeDeleted@GParticleContainer@@UAEXH@Z:
                         {disp32} mov      eax, dword ptr [_game]                        // 0x0063e1d0    a15c19d000
                         {disp32} lea      edx, dword ptr [eax + 0x00205bcc]             // 0x0063e1d5    8d90cc5b2000
                         mov               eax, dword ptr [edx]                          // 0x0063e1db    8b02
                         push              esi                                           // 0x0063e1dd    56
                         mov.s             esi, ecx                                      // 0x0063e1de    8bf1
                         cmp.s             eax, esi                                      // 0x0063e1e0    3bc6
                         {disp8} jne       _jmp_addr_0x0063e1eb                          // 0x0063e1e2    7507
                         {disp8} mov       ecx, dword ptr [esi + 0x3c]                   // 0x0063e1e4    8b4e3c
                         mov               dword ptr [edx], ecx                          // 0x0063e1e7    890a
                         {disp8} jmp       _jmp_addr_0x0063e204                          // 0x0063e1e9    eb19
_jmp_addr_0x0063e1eb:    test              eax, eax                                      // 0x0063e1eb    85c0
                         {disp8} je        _jmp_addr_0x0063e20e                          // 0x0063e1ed    741f
_jmp_addr_0x0063e1ef:    {disp8} mov       ecx, dword ptr [eax + 0x3c]                   // 0x0063e1ef    8b483c
                         cmp.s             ecx, esi                                      // 0x0063e1f2    3bce
                         {disp8} je        _jmp_addr_0x0063e1fe                          // 0x0063e1f4    7408
                         mov.s             eax, ecx                                      // 0x0063e1f6    8bc1
                         test              eax, eax                                      // 0x0063e1f8    85c0
                         {disp8} jne       _jmp_addr_0x0063e1ef                          // 0x0063e1fa    75f3
                         {disp8} jmp       _jmp_addr_0x0063e20e                          // 0x0063e1fc    eb10
_jmp_addr_0x0063e1fe:    {disp8} mov       ecx, dword ptr [esi + 0x3c]                   // 0x0063e1fe    8b4e3c
                         {disp8} mov       dword ptr [eax + 0x3c], ecx                   // 0x0063e201    89483c
_jmp_addr_0x0063e204:    dec               dword ptr [edx + 0x04]                        // 0x0063e204    ff4a04
                         {disp8} mov       dword ptr [esi + 0x3c], 0x00000000            // 0x0063e207    c7463c00000000
_jmp_addr_0x0063e20e:    push              esi                                           // 0x0063e20e    56
                         call              _jmp_addr_0x006e4750                          // 0x0063e20f    e83c650a00
                         {disp8} mov       ecx, dword ptr [esi + 0x2c]                   // 0x0063e214    8b4e2c
                         add               esp, 0x04                                     // 0x0063e217    83c404
                         test              ecx, ecx                                      // 0x0063e21a    85c9
                         {disp8} je        _jmp_addr_0x0063e22c                          // 0x0063e21c    740e
                         mov               edx, dword ptr [ecx]                          // 0x0063e21e    8b11
                         push              0x1                                           // 0x0063e220    6a01
                         call              dword ptr [edx + 4]                           // 0x0063e222    ff5204
                         {disp8} mov       dword ptr [esi + 0x2c], 0x00000000            // 0x0063e225    c7462c00000000
_jmp_addr_0x0063e22c:    {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0063e22c    8b442408
                         push              eax                                           // 0x0063e230    50
                         mov.s             ecx, esi                                      // 0x0063e231    8bce
                         call              ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x0063e233    e8c81bf3ff
                         pop               esi                                           // 0x0063e238    5e
                         ret               0x0004                                        // 0x0063e239    c20400
                         nop                                                             // 0x0063e23c    90
                         nop                                                             // 0x0063e23d    90
                         nop                                                             // 0x0063e23e    90
                         nop                                                             // 0x0063e23f    90
_jmp_addr_0x0063e240:    push              esi                                           // 0x0063e240    56
                         mov.s             esi, ecx                                      // 0x0063e241    8bf1
                         {disp8} mov       ecx, dword ptr [esi + 0x2c]                   // 0x0063e243    8b4e2c
                         test              ecx, ecx                                      // 0x0063e246    85c9
                         {disp8} je        _jmp_addr_0x0063e27d                          // 0x0063e248    7433
                         {disp8} mov       al, byte ptr [esi + 0x38]                     // 0x0063e24a    8a4638
                         test              al, al                                        // 0x0063e24d    84c0
                         {disp8} je        _jmp_addr_0x0063e273                          // 0x0063e24f    7422
                         push              edi                                           // 0x0063e251    57
                         mov               edi, dword ptr [ecx]                          // 0x0063e252    8b39
                         call              dword ptr [edi + 0x130]                       // 0x0063e254    ff9730010000
                         push              eax                                           // 0x0063e25a    50
                         {disp32} mov      eax, dword ptr [_game]                        // 0x0063e25b    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00205d64]             // 0x0063e260    8b88645d2000
                         push              ecx                                           // 0x0063e266    51
                         {disp8} mov       ecx, dword ptr [esi + 0x2c]                   // 0x0063e267    8b4e2c
                         call              dword ptr [edi + 0x10c]                       // 0x0063e26a    ff970c010000
                         pop               edi                                           // 0x0063e270    5f
                         pop               esi                                           // 0x0063e271    5e
                         ret                                                             // 0x0063e272    c3
_jmp_addr_0x0063e273:    mov               edx, dword ptr [ecx]                          // 0x0063e273    8b11
                         push              0x1                                           // 0x0063e275    6a01
                         call              dword ptr [edx + 0x108]                       // 0x0063e277    ff9208010000
_jmp_addr_0x0063e27d:    pop               esi                                           // 0x0063e27d    5e
                         ret                                                             // 0x0063e27e    c3
                         nop                                                             // 0x0063e27f    90
_jmp_addr_0x0063e280:    sub               esp, 0x48                                     // 0x0063e280    83ec48
                         push              esi                                           // 0x0063e283    56
                         mov.s             esi, ecx                                      // 0x0063e284    8bf1
                         {disp8} mov       ecx, dword ptr [esi + 0x28]                   // 0x0063e286    8b4e28
                         test              ecx, ecx                                      // 0x0063e289    85c9
                         {disp8} je        _jmp_addr_0x0063e2a0                          // 0x0063e28b    7413
                         mov               eax, dword ptr [ecx]                          // 0x0063e28d    8b01
                         call              dword ptr [eax + 0x2c]                        // 0x0063e28f    ff502c
                         test              eax, eax                                      // 0x0063e292    85c0
                         {disp8} jne       _jmp_addr_0x0063e2a0                          // 0x0063e294    750a
                         mov.s             ecx, esi                                      // 0x0063e296    8bce
                         {disp8} mov       dword ptr [esi + 0x28], eax                   // 0x0063e298    894628
                         call              _jmp_addr_0x0063e5c0                          // 0x0063e29b    e820030000
_jmp_addr_0x0063e2a0:    {disp8} mov       eax, dword ptr [esi + 0x30]                   // 0x0063e2a0    8b4630
                         test              eax, eax                                      // 0x0063e2a3    85c0
                         {disp8} jl        _jmp_addr_0x0063e2b6                          // 0x0063e2a5    7c0f
                         dec               eax                                           // 0x0063e2a7    48
                         test              eax, eax                                      // 0x0063e2a8    85c0
                         {disp8} mov       dword ptr [esi + 0x30], eax                   // 0x0063e2aa    894630
                         {disp8} jg        _jmp_addr_0x0063e2b6                          // 0x0063e2ad    7f07
                         mov.s             ecx, esi                                      // 0x0063e2af    8bce
                         call              _jmp_addr_0x0063e5c0                          // 0x0063e2b1    e80a030000
_jmp_addr_0x0063e2b6:    {disp8} mov       eax, dword ptr [esi + 0x2c]                   // 0x0063e2b6    8b462c
                         test              eax, eax                                      // 0x0063e2b9    85c0
                         {disp32} je       _jmp_addr_0x0063e365                          // 0x0063e2bb    0f84a4000000
                         {disp8} mov       ecx, dword ptr [esi + 0x34]                   // 0x0063e2c1    8b4e34
                         push              edi                                           // 0x0063e2c4    57
                         {disp8} mov       dword ptr [esp + 0x44], ecx                   // 0x0063e2c5    894c2444
                         {disp8} lea       edx, dword ptr [esp + 0x08]                   // 0x0063e2c9    8d542408
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000            // 0x0063e2cd    c744241400000000
                         {disp8} mov       dword ptr [esp + 0x18], 0x00000000            // 0x0063e2d5    c744241800000000
                         {disp8} mov       dword ptr [esp + 0x1c], 0x00000000            // 0x0063e2dd    c744241c00000000
                         {disp8} mov       dword ptr [esp + 0x20], 0x00000000            // 0x0063e2e5    c744242000000000
                         {disp8} mov       dword ptr [esp + 0x24], 0x00000000            // 0x0063e2ed    c744242400000000
                         {disp8} mov       dword ptr [esp + 0x28], 0x00000000            // 0x0063e2f5    c744242800000000
                         {disp8} mov       dword ptr [esp + 0x2c], 0x00000000            // 0x0063e2fd    c744242c00000000
                         {disp8} mov       dword ptr [esp + 0x30], 0x00000000            // 0x0063e305    c744243000000000
                         {disp8} mov       dword ptr [esp + 0x34], 0x00000000            // 0x0063e30d    c744243400000000
                         {disp8} mov       dword ptr [esp + 0x38], 0x00000000            // 0x0063e315    c744243800000000
                         {disp8} mov       dword ptr [esp + 0x3c], 0x00000000            // 0x0063e31d    c744243c00000000
                         {disp8} mov       dword ptr [esp + 0x40], 0x00000000            // 0x0063e325    c744244000000000
                         {disp8} mov       dword ptr [esp + 0x48], 0x00000000            // 0x0063e32d    c744244800000000
                         {disp8} mov       byte ptr [esp + 0x4c], 0x01                   // 0x0063e335    c644244c01
                         mov               edi, dword ptr [eax]                          // 0x0063e33a    8b38
                         push              edx                                           // 0x0063e33c    52
                         {disp8} lea       ecx, dword ptr [esi + 0x14]                   // 0x0063e33d    8d4e14
                         call              @GetLHPoint__9MapCoordsCFv@12                 // 0x0063e340    e8fb78fcff
                         {disp8} mov       ecx, dword ptr [esi + 0x2c]                   // 0x0063e345    8b4e2c
                         push              eax                                           // 0x0063e348    50
                         call              dword ptr [edi + 0x124]                       // 0x0063e349    ff9724010000
                         {disp8} mov       ecx, dword ptr [esi + 0x2c]                   // 0x0063e34f    8b4e2c
                         mov               eax, dword ptr [ecx]                          // 0x0063e352    8b01
                         {disp8} lea       edx, dword ptr [esp + 0x14]                   // 0x0063e354    8d542414
                         push              edx                                           // 0x0063e358    52
                         call              dword ptr [eax + 0x100]                       // 0x0063e359    ff9000010000
                         pop               edi                                           // 0x0063e35f    5f
                         pop               esi                                           // 0x0063e360    5e
                         add               esp, 0x48                                     // 0x0063e361    83c448
                         ret                                                             // 0x0063e364    c3
_jmp_addr_0x0063e365:    mov               eax, 0x00000005                               // 0x0063e365    b805000000
                         pop               esi                                           // 0x0063e36a    5e
                         add               esp, 0x48                                     // 0x0063e36b    83c448
                         ret                                                             // 0x0063e36e    c3
                         nop                                                             // 0x0063e36f    90
_jmp_addr_0x0063e370:    {disp8} mov       ecx, dword ptr [ecx + 0x2c]                   // 0x0063e370    8b492c
                         test              ecx, ecx                                      // 0x0063e373    85c9
                         {disp8} je        _jmp_addr_0x0063e37f                          // 0x0063e375    7408
                         mov               eax, dword ptr [ecx]                          // 0x0063e377    8b01
                         jmp               dword ptr [eax + 0x118]                       // 0x0063e379    ffa018010000
_jmp_addr_0x0063e37f:    ret                                                             // 0x0063e37f    c3
_jmp_addr_0x0063e380:    {disp8} mov       ecx, dword ptr [ecx + 0x2c]                   // 0x0063e380    8b492c
                         test              ecx, ecx                                      // 0x0063e383    85c9
                         {disp8} je        _jmp_addr_0x0063e394                          // 0x0063e385    740d
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0063e387    8b542404
                         mov               eax, dword ptr [ecx]                          // 0x0063e38b    8b01
                         push              edx                                           // 0x0063e38d    52
                         call              dword ptr [eax + 0x110]                       // 0x0063e38e    ff9010010000
_jmp_addr_0x0063e394:    ret               0x0004                                        // 0x0063e394    c20400
                         nop                                                             // 0x0063e397    90
                         nop                                                             // 0x0063e398    90
                         nop                                                             // 0x0063e399    90
                         nop                                                             // 0x0063e39a    90
                         nop                                                             // 0x0063e39b    90
                         nop                                                             // 0x0063e39c    90
                         nop                                                             // 0x0063e39d    90
                         nop                                                             // 0x0063e39e    90
                         nop                                                             // 0x0063e39f    90
_jmp_addr_0x0063e3a0:    {disp8} mov       ecx, dword ptr [ecx + 0x2c]                   // 0x0063e3a0    8b492c
                         test              ecx, ecx                                      // 0x0063e3a3    85c9
                         {disp8} je        _jmp_addr_0x0063e3b4                          // 0x0063e3a5    740d
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0063e3a7    8b542404
                         mov               eax, dword ptr [ecx]                          // 0x0063e3ab    8b01
                         push              edx                                           // 0x0063e3ad    52
                         call              dword ptr [eax + 0x114]                       // 0x0063e3ae    ff9014010000
_jmp_addr_0x0063e3b4:    ret               0x0004                                        // 0x0063e3b4    c20400
                         nop                                                             // 0x0063e3b7    90
                         nop                                                             // 0x0063e3b8    90
                         nop                                                             // 0x0063e3b9    90
                         nop                                                             // 0x0063e3ba    90
                         nop                                                             // 0x0063e3bb    90
                         nop                                                             // 0x0063e3bc    90
                         nop                                                             // 0x0063e3bd    90
                         nop                                                             // 0x0063e3be    90
                         nop                                                             // 0x0063e3bf    90
?SetPlayer@GParticleContainer@@UAEXPAVGPlayer@@@Z:
                         {disp8} mov       ecx, dword ptr [ecx + 0x2c]                   // 0x0063e3c0    8b492c
                         test              ecx, ecx                                      // 0x0063e3c3    85c9
                         {disp8} je        _jmp_addr_0x0063e3d1                          // 0x0063e3c5    740a
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0063e3c7    8b542404
                         mov               eax, dword ptr [ecx]                          // 0x0063e3cb    8b01
                         push              edx                                           // 0x0063e3cd    52
                         call              dword ptr [eax + 0x20]                        // 0x0063e3ce    ff5020
_jmp_addr_0x0063e3d1:    ret               0x0004                                        // 0x0063e3d1    c20400
                         nop                                                             // 0x0063e3d4    90
                         nop                                                             // 0x0063e3d5    90
                         nop                                                             // 0x0063e3d6    90
                         nop                                                             // 0x0063e3d7    90
                         nop                                                             // 0x0063e3d8    90
                         nop                                                             // 0x0063e3d9    90
                         nop                                                             // 0x0063e3da    90
                         nop                                                             // 0x0063e3db    90
                         nop                                                             // 0x0063e3dc    90
                         nop                                                             // 0x0063e3dd    90
                         nop                                                             // 0x0063e3de    90
                         nop                                                             // 0x0063e3df    90
_jmp_addr_0x0063e3e0:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0063e3e0    8b442404
                         {disp8} mov       dword ptr [ecx + 0x34], eax                   // 0x0063e3e4    894134
                         ret               0x0004                                        // 0x0063e3e7    c20400
                         nop                                                             // 0x0063e3ea    90
                         nop                                                             // 0x0063e3eb    90
                         nop                                                             // 0x0063e3ec    90
                         nop                                                             // 0x0063e3ed    90
                         nop                                                             // 0x0063e3ee    90
                         nop                                                             // 0x0063e3ef    90
?SetScale@GParticleContainer@@UAEXM@Z:
                         {disp8} mov       ecx, dword ptr [ecx + 0x2c]                   // 0x0063e3f0    8b492c
                         test              ecx, ecx                                      // 0x0063e3f3    85c9
                         {disp8} je        _jmp_addr_0x0063e404                          // 0x0063e3f5    740d
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0063e3f7    8b542404
                         mov               eax, dword ptr [ecx]                          // 0x0063e3fb    8b01
                         push              edx                                           // 0x0063e3fd    52
                         call              dword ptr [eax + 0x11c]                       // 0x0063e3fe    ff901c010000
_jmp_addr_0x0063e404:    ret               0x0004                                        // 0x0063e404    c20400
                         nop                                                             // 0x0063e407    90
                         nop                                                             // 0x0063e408    90
                         nop                                                             // 0x0063e409    90
                         nop                                                             // 0x0063e40a    90
                         nop                                                             // 0x0063e40b    90
                         nop                                                             // 0x0063e40c    90
                         nop                                                             // 0x0063e40d    90
                         nop                                                             // 0x0063e40e    90
                         nop                                                             // 0x0063e40f    90
_jmp_addr_0x0063e410:    sub               esp, 0x18                                     // 0x0063e410    83ec18
                         push              esi                                           // 0x0063e413    56
                         {disp8} mov       esi, dword ptr [esp + 0x20]                   // 0x0063e414    8b742420
                         {disp8} mov       eax, dword ptr [esi + 0x08]                   // 0x0063e418    8b4608
                         push              edi                                           // 0x0063e41b    57
                         mov.s             edi, ecx                                      // 0x0063e41c    8bf9
                         mov.s             ecx, esi                                      // 0x0063e41e    8bce
                         {disp8} mov       dword ptr [esp + 0x24], eax                   // 0x0063e420    89442424
                         call              ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x0063e424    e8674c1c00
                         {disp8} fadd      dword ptr [esp + 0x24]                        // 0x0063e429    d8442424
                         mov               edx, dword ptr [esi]                          // 0x0063e42d    8b16
                         {disp8} lea       ecx, dword ptr [edi + 0x14]                   // 0x0063e42f    8d4f14
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x0063e432    d95c2418
                         push              0x1                                           // 0x0063e436    6a01
                         fild              dword ptr [esi]                               // 0x0063e438    db06
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00000000            // 0x0063e43a    c744240c00000000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000            // 0x0063e442    c744241000000000
                         {disp8} mov       dword ptr [esp + 0x14], 0x00000000            // 0x0063e44a    c744241400000000
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x0063e452    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x0063e458    d95c2418
                         {disp8} fild      dword ptr [esi + 0x04]                        // 0x0063e45c    db4604
                         mov               dword ptr [ecx], edx                          // 0x0063e45f    8911
                         {disp8} mov       eax, dword ptr [esi + 0x04]                   // 0x0063e461    8b4604
                         {disp8} mov       dword ptr [ecx + 0x04], eax                   // 0x0063e464    894104
                         {disp8} mov       edx, dword ptr [esi + 0x08]                   // 0x0063e467    8b5608
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x0063e46a    d80da4a38a00
                         {disp8} mov       eax, dword ptr [esp + 0x34]                   // 0x0063e470    8b442434
                         {disp8} mov       dword ptr [ecx + 0x08], edx                   // 0x0063e474    895108
                         {disp8} mov       ecx, dword ptr [esp + 0x30]                   // 0x0063e477    8b4c2430
                         {disp8} fstp      dword ptr [esp + 0x20]                        // 0x0063e47b    d95c2420
                         push              ecx                                           // 0x0063e47f    51
                         {disp8} mov       ecx, dword ptr [esp + 0x30]                   // 0x0063e480    8b4c2430
                         {disp8} lea       edx, dword ptr [esp + 0x10]                   // 0x0063e484    8d542410
                         push              edx                                           // 0x0063e488    52
                         {disp8} mov       dword ptr [edi + 0x30], eax                   // 0x0063e489    894730
                         {disp8} lea       eax, dword ptr [esp + 0x20]                   // 0x0063e48c    8d442420
                         push              eax                                           // 0x0063e490    50
                         push              ecx                                           // 0x0063e491    51
                         push              0x0                                           // 0x0063e492    6a00
                         call              _Create__13PSysInterfaceFP5Spell13PARTICLE_TYPERC7LHPointRC7LHPointfQ213PSysInterface13NET_GAME_TYPE                          // 0x0063e494    e877040500
                         add               esp, 0x18                                     // 0x0063e499    83c418
                         xor.s             edx, edx                                      // 0x0063e49c    33d2
                         test              eax, eax                                      // 0x0063e49e    85c0
                         setne             dl                                            // 0x0063e4a0    0f95c2
                         {disp8} mov       dword ptr [edi + 0x2c], eax                   // 0x0063e4a3    89472c
                         pop               edi                                           // 0x0063e4a6    5f
                         pop               esi                                           // 0x0063e4a7    5e
                         mov.s             eax, edx                                      // 0x0063e4a8    8bc2
                         add               esp, 0x18                                     // 0x0063e4aa    83c418
                         ret               0x0010                                        // 0x0063e4ad    c21000
_jmp_addr_0x0063e4b0:    push              ebx                                           // 0x0063e4b0    53
                         push              ebp                                           // 0x0063e4b1    55
                         {disp8} mov       ebp, dword ptr [esp + 0x14]                   // 0x0063e4b2    8b6c2414
                         {disp8} mov       ecx, dword ptr [ebp + 0x40]                   // 0x0063e4b6    8b4d40
                         push              esi                                           // 0x0063e4b9    56
                         xor.s             eax, eax                                      // 0x0063e4ba    33c0
                         test              ecx, ecx                                      // 0x0063e4bc    85c9
                         push              edi                                           // 0x0063e4be    57
                         {disp8} mov       dword ptr [esp + 0x1c], ecx                   // 0x0063e4bf    894c241c
                         {disp8} je        _jmp_addr_0x0063e53b                          // 0x0063e4c3    7476
                         push              0x000000e1                                    // 0x0063e4c5    68e1000000
                         push              0x00bfe020                                    // 0x0063e4ca    6820e0bf00
                         push              0x40                                          // 0x0063e4cf    6a40
                         call              ?__nw@Base@@SAPAXK@Z                          // 0x0063e4d1    e81a82dfff
                         add               esp, 0x0c                                     // 0x0063e4d6    83c40c
                         test              eax, eax                                      // 0x0063e4d9    85c0
                         {disp8} je        _jmp_addr_0x0063e51b                          // 0x0063e4db    743e
                         {disp8} mov       edi, dword ptr [esp + 0x20]                   // 0x0063e4dd    8b7c2420
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                   // 0x0063e4e1    8b4c2418
                         {disp8} mov       ebx, dword ptr [esp + 0x14]                   // 0x0063e4e5    8b5c2414
                         push              edi                                           // 0x0063e4e9    57
                         push              ebp                                           // 0x0063e4ea    55
                         push              ecx                                           // 0x0063e4eb    51
                         push              ebx                                           // 0x0063e4ec    53
                         mov.s             ecx, eax                                      // 0x0063e4ed    8bc8
                         call              _jmp_addr_0x0063e0f0                          // 0x0063e4ef    e8fcfbffff
                         mov.s             esi, eax                                      // 0x0063e4f4    8bf0
                         test              esi, esi                                      // 0x0063e4f6    85f6
                         {disp8} je        _jmp_addr_0x0063e539                          // 0x0063e4f8    743f
                         {disp8} mov       edx, dword ptr [esp + 0x24]                   // 0x0063e4fa    8b542424
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x0063e4fe    8b44241c
                         push              edx                                           // 0x0063e502    52
                         push              edi                                           // 0x0063e503    57
                         push              eax                                           // 0x0063e504    50
                         push              ebx                                           // 0x0063e505    53
                         mov.s             ecx, esi                                      // 0x0063e506    8bce
                         call              _jmp_addr_0x0063e410                          // 0x0063e508    e803ffffff
                         cmp               eax, 0x01                                     // 0x0063e50d    83f801
                         {disp8} je        _jmp_addr_0x0063e522                          // 0x0063e510    7410
                         mov               edx, dword ptr [esi]                          // 0x0063e512    8b16
                         push              0x0                                           // 0x0063e514    6a00
                         mov.s             ecx, esi                                      // 0x0063e516    8bce
                         call              dword ptr [edx + 0xc]                         // 0x0063e518    ff520c
_jmp_addr_0x0063e51b:    pop               edi                                           // 0x0063e51b    5f
                         pop               esi                                           // 0x0063e51c    5e
                         pop               ebp                                           // 0x0063e51d    5d
                         xor.s             eax, eax                                      // 0x0063e51e    33c0
                         pop               ebx                                           // 0x0063e520    5b
                         ret                                                             // 0x0063e521    c3
_jmp_addr_0x0063e522:    {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0063e522    8b442418
                         test              eax, eax                                      // 0x0063e526    85c0
                         {disp8} je        _jmp_addr_0x0063e539                          // 0x0063e528    740f
                         {disp8} mov       ecx, dword ptr [ebp + 0x50]                   // 0x0063e52a    8b4d50
                         test              ecx, ecx                                      // 0x0063e52d    85c9
                         {disp8} je        _jmp_addr_0x0063e539                          // 0x0063e52f    7408
                         push              eax                                           // 0x0063e531    50
                         mov.s             ecx, esi                                      // 0x0063e532    8bce
                         call              _jmp_addr_0x0063e3a0                          // 0x0063e534    e867feffff
_jmp_addr_0x0063e539:    mov.s             eax, esi                                      // 0x0063e539    8bc6
_jmp_addr_0x0063e53b:    pop               edi                                           // 0x0063e53b    5f
                         pop               esi                                           // 0x0063e53c    5e
                         pop               ebp                                           // 0x0063e53d    5d
                         pop               ebx                                           // 0x0063e53e    5b
                         ret                                                             // 0x0063e53f    c3
_jmp_addr_0x0063e540:    {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x0063e540    8b4c2408
                         {disp32} lea      eax, dword ptr [ecx * 0x8 + 0x00000000]       // 0x0063e544    8d04cd00000000
                         sub.s             eax, ecx                                      // 0x0063e54b    2bc1
                         cmp               ecx, 0x32                                     // 0x0063e54d    83f932
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x0063e550    8d0440
                         {disp32} lea      eax, dword ptr [eax * 0x4 + 0x00d44470]       // 0x0063e553    8d04857044d400
                         {disp8} jl        _jmp_addr_0x0063e55f                          // 0x0063e55a    7c03
                         xor.s             eax, eax                                      // 0x0063e55c    33c0
                         ret                                                             // 0x0063e55e    c3
_jmp_addr_0x0063e55f:    {disp8} mov       ecx, dword ptr [eax + 0x44]                   // 0x0063e55f    8b4844
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x0063e562    8b54240c
                         push              ecx                                           // 0x0063e566    51
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x0063e567    8b4c2408
                         push              edx                                           // 0x0063e56b    52
                         push              eax                                           // 0x0063e56c    50
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x0063e56d    8b44241c
                         push              eax                                           // 0x0063e571    50
                         push              ecx                                           // 0x0063e572    51
                         call              _jmp_addr_0x0063e4b0                          // 0x0063e573    e838ffffff
                         add               esp, 0x14                                     // 0x0063e578    83c414
                         ret                                                             // 0x0063e57b    c3
                         nop                                                             // 0x0063e57c    90
                         nop                                                             // 0x0063e57d    90
                         nop                                                             // 0x0063e57e    90
                         nop                                                             // 0x0063e57f    90
_jmp_addr_0x0063e580:    {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x0063e580    8b4c2408
                         cmp               ecx, 0x32                                     // 0x0063e584    83f932
                         {disp8} jl        _jmp_addr_0x0063e58c                          // 0x0063e587    7c03
                         xor.s             eax, eax                                      // 0x0063e589    33c0
                         ret                                                             // 0x0063e58b    c3
_jmp_addr_0x0063e58c:    {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x0063e58c    8b442410
                         {disp8} mov       edx, dword ptr [esp + 0x0c]                   // 0x0063e590    8b54240c
                         push              eax                                           // 0x0063e594    50
                         {disp32} lea      eax, dword ptr [ecx * 0x8 + 0x00000000]       // 0x0063e595    8d04cd00000000
                         sub.s             eax, ecx                                      // 0x0063e59c    2bc1
                         push              edx                                           // 0x0063e59e    52
                         {disp8} mov       edx, dword ptr [esp + 0x1c]                   // 0x0063e59f    8b54241c
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x0063e5a3    8d0440
                         {disp32} lea      ecx, dword ptr [eax * 0x4 + 0x00d44470]       // 0x0063e5a6    8d0c857044d400
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0063e5ad    8b44240c
                         push              ecx                                           // 0x0063e5b1    51
                         push              edx                                           // 0x0063e5b2    52
                         push              eax                                           // 0x0063e5b3    50
                         call              _jmp_addr_0x0063e4b0                          // 0x0063e5b4    e8f7feffff
                         add               esp, 0x14                                     // 0x0063e5b9    83c414
                         ret                                                             // 0x0063e5bc    c3
                         nop                                                             // 0x0063e5bd    90
                         nop                                                             // 0x0063e5be    90
                         nop                                                             // 0x0063e5bf    90
_jmp_addr_0x0063e5c0:    {disp8} mov       ecx, dword ptr [ecx + 0x2c]                   // 0x0063e5c0    8b492c
                         test              ecx, ecx                                      // 0x0063e5c3    85c9
                         {disp8} je        _jmp_addr_0x0063e5cf                          // 0x0063e5c5    7408
                         mov               eax, dword ptr [ecx]                          // 0x0063e5c7    8b01
                         jmp               dword ptr [eax + 0x118]                       // 0x0063e5c9    ffa018010000
_jmp_addr_0x0063e5cf:    ret                                                             // 0x0063e5cf    c3
?Save@GParticleContainer@@UAEIAAVGameOSFile@@@Z:
                         push              esi                                           // 0x0063e5d0    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x0063e5d1    8b742408
                         push              edi                                           // 0x0063e5d5    57
                         mov.s             edi, ecx                                      // 0x0063e5d6    8bf9
                         push              esi                                           // 0x0063e5d8    56
                         call              ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z // 0x0063e5d9    e8121ef3ff
                         test              eax, eax                                      // 0x0063e5de    85c0
                         {disp32} je       _jmp_addr_0x0063e6ba                          // 0x0063e5e0    0f84d4000000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x0063e5e6    a190c9be00
                         test              eax, eax                                      // 0x0063e5eb    85c0
                         push              ebx                                           // 0x0063e5ed    53
                         {disp8} je        _jmp_addr_0x0063e621                          // 0x0063e5ee    7431
                         push              0x0                                           // 0x0063e5f0    6a00
                         push              0x1                                           // 0x0063e5f2    6a01
                         {disp8} lea       ebx, dword ptr [edi + 0x38]                   // 0x0063e5f4    8d5f38
                         push              ebx                                           // 0x0063e5f7    53
                         mov.s             ecx, esi                                      // 0x0063e5f8    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0063e5fa    e821e31700
                         cmp               eax, 0x03                                     // 0x0063e5ff    83f803
                         {disp8} jne       _jmp_addr_0x0063e60e                          // 0x0063e602    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0063e604    c70590c9be0000000000
_jmp_addr_0x0063e60e:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0063e60e    8b8e14020000
                         xor.s             eax, eax                                      // 0x0063e614    33c0
                         mov               al, byte ptr [ebx]                            // 0x0063e616    8a03
                         inc               eax                                           // 0x0063e618    40
                         add.s             ecx, eax                                      // 0x0063e619    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0063e61b    898e14020000
_jmp_addr_0x0063e621:    {disp8} mov       ecx, dword ptr [edi + 0x28]                   // 0x0063e621    8b4f28
                         push              ecx                                           // 0x0063e624    51
                         mov.s             ecx, esi                                      // 0x0063e625    8bce
                         call              ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z    // 0x0063e627    e8e437f2ff
                         {disp8} lea       edx, dword ptr [edi + 0x2c]                   // 0x0063e62c    8d572c
                         push              edx                                           // 0x0063e62f    52
                         mov.s             ecx, esi                                      // 0x0063e630    8bce
                         call              _jmp_addr_0x00563410                          // 0x0063e632    e8d94df2ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x0063e637    a190c9be00
                         test              eax, eax                                      // 0x0063e63c    85c0
                         {disp8} je        _jmp_addr_0x0063e6af                          // 0x0063e63e    746f
                         push              0x0                                           // 0x0063e640    6a00
                         push              0x4                                           // 0x0063e642    6a04
                         {disp8} lea       ebx, dword ptr [edi + 0x30]                   // 0x0063e644    8d5f30
                         push              ebx                                           // 0x0063e647    53
                         mov.s             ecx, esi                                      // 0x0063e648    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0063e64a    e8d1e21700
                         cmp               eax, 0x03                                     // 0x0063e64f    83f803
                         {disp8} jne       _jmp_addr_0x0063e65e                          // 0x0063e652    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0063e654    c70590c9be0000000000
_jmp_addr_0x0063e65e:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0063e65e    8b8e14020000
                         xor.s             eax, eax                                      // 0x0063e664    33c0
                         mov               al, byte ptr [ebx]                            // 0x0063e666    8a03
                         add               eax, 0x04                                     // 0x0063e668    83c004
                         add.s             ecx, eax                                      // 0x0063e66b    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0063e66d    898e14020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226990]        // 0x0063e673    a190c9be00
                         test              eax, eax                                      // 0x0063e678    85c0
                         {disp8} je        _jmp_addr_0x0063e6af                          // 0x0063e67a    7433
                         push              0x0                                           // 0x0063e67c    6a00
                         push              0x4                                           // 0x0063e67e    6a04
                         add               edi, 0x34                                     // 0x0063e680    83c734
                         push              edi                                           // 0x0063e683    57
                         mov.s             ecx, esi                                      // 0x0063e684    8bce
                         call              @Write__8LHOSFileFPvUlPUl@20                  // 0x0063e686    e895e21700
                         cmp               eax, 0x03                                     // 0x0063e68b    83f803
                         {disp8} jne       _jmp_addr_0x0063e69a                          // 0x0063e68e    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0063e690    c70590c9be0000000000
_jmp_addr_0x0063e69a:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x0063e69a    8b8614020000
                         xor.s             ecx, ecx                                      // 0x0063e6a0    33c9
                         mov               cl, byte ptr [edi]                            // 0x0063e6a2    8a0f
                         add               ecx, 0x4                                      // 0x0063e6a4    83c104
                         add.s             eax, ecx                                      // 0x0063e6a7    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x0063e6a9    898614020000
_jmp_addr_0x0063e6af:    pop               ebx                                           // 0x0063e6af    5b
                         pop               edi                                           // 0x0063e6b0    5f
                         mov               eax, 0x00000001                               // 0x0063e6b1    b801000000
                         pop               esi                                           // 0x0063e6b6    5e
                         ret               0x0004                                        // 0x0063e6b7    c20400
_jmp_addr_0x0063e6ba:    pop               edi                                           // 0x0063e6ba    5f
                         xor.s             eax, eax                                      // 0x0063e6bb    33c0
                         pop               esi                                           // 0x0063e6bd    5e
                         ret               0x0004                                        // 0x0063e6be    c20400
                         nop                                                             // 0x0063e6c1    90
                         nop                                                             // 0x0063e6c2    90
                         nop                                                             // 0x0063e6c3    90
                         nop                                                             // 0x0063e6c4    90
                         nop                                                             // 0x0063e6c5    90
                         nop                                                             // 0x0063e6c6    90
                         nop                                                             // 0x0063e6c7    90
                         nop                                                             // 0x0063e6c8    90
                         nop                                                             // 0x0063e6c9    90
                         nop                                                             // 0x0063e6ca    90
                         nop                                                             // 0x0063e6cb    90
                         nop                                                             // 0x0063e6cc    90
                         nop                                                             // 0x0063e6cd    90
                         nop                                                             // 0x0063e6ce    90
                         nop                                                             // 0x0063e6cf    90
?Load@GParticleContainer@@UAEIAAVGameOSFile@@@Z:
                         push              esi                                           // 0x0063e6d0    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x0063e6d1    8b742408
                         push              edi                                           // 0x0063e6d5    57
                         mov.s             edi, ecx                                      // 0x0063e6d6    8bf9
                         push              esi                                           // 0x0063e6d8    56
                         call              ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z // 0x0063e6d9    e8c21df3ff
                         test              eax, eax                                      // 0x0063e6de    85c0
                         {disp32} je       _jmp_addr_0x0063e7ba                          // 0x0063e6e0    0f84d4000000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x0063e6e6    a194c9be00
                         test              eax, eax                                      // 0x0063e6eb    85c0
                         push              ebx                                           // 0x0063e6ed    53
                         {disp8} lea       ebx, dword ptr [edi + 0x38]                   // 0x0063e6ee    8d5f38
                         {disp8} je        _jmp_addr_0x0063e721                          // 0x0063e6f1    742e
                         push              0x0                                           // 0x0063e6f3    6a00
                         push              0x1                                           // 0x0063e6f5    6a01
                         push              ebx                                           // 0x0063e6f7    53
                         mov.s             ecx, esi                                      // 0x0063e6f8    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0063e6fa    e8e1e11700
                         cmp               eax, 0x03                                     // 0x0063e6ff    83f803
                         {disp8} jne       _jmp_addr_0x0063e70e                          // 0x0063e702    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0063e704    c70594c9be0000000000
_jmp_addr_0x0063e70e:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0063e70e    8b8e14020000
                         xor.s             eax, eax                                      // 0x0063e714    33c0
                         mov               al, byte ptr [ebx]                            // 0x0063e716    8a03
                         inc               eax                                           // 0x0063e718    40
                         add.s             ecx, eax                                      // 0x0063e719    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0063e71b    898e14020000
_jmp_addr_0x0063e721:    {disp8} lea       ecx, dword ptr [edi + 0x28]                   // 0x0063e721    8d4f28
                         push              ecx                                           // 0x0063e724    51
                         mov.s             ecx, esi                                      // 0x0063e725    8bce
                         call              @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x0063e727    e8543af2ff
                         {disp8} lea       edx, dword ptr [edi + 0x2c]                   // 0x0063e72c    8d572c
                         push              edx                                           // 0x0063e72f    52
                         mov.s             ecx, esi                                      // 0x0063e730    8bce
                         call              _jmp_addr_0x00563400                          // 0x0063e732    e8c94cf2ff
                         {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x0063e737    a194c9be00
                         test              eax, eax                                      // 0x0063e73c    85c0
                         {disp8} lea       ebx, dword ptr [edi + 0x30]                   // 0x0063e73e    8d5f30
                         {disp8} je        _jmp_addr_0x0063e773                          // 0x0063e741    7430
                         push              0x0                                           // 0x0063e743    6a00
                         push              0x4                                           // 0x0063e745    6a04
                         push              ebx                                           // 0x0063e747    53
                         mov.s             ecx, esi                                      // 0x0063e748    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0063e74a    e891e11700
                         cmp               eax, 0x03                                     // 0x0063e74f    83f803
                         {disp8} jne       _jmp_addr_0x0063e75e                          // 0x0063e752    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0063e754    c70594c9be0000000000
_jmp_addr_0x0063e75e:    {disp32} mov      ecx, dword ptr [esi + 0x00000214]             // 0x0063e75e    8b8e14020000
                         xor.s             eax, eax                                      // 0x0063e764    33c0
                         mov               al, byte ptr [ebx]                            // 0x0063e766    8a03
                         add               eax, 0x04                                     // 0x0063e768    83c004
                         add.s             ecx, eax                                      // 0x0063e76b    03c8
                         {disp32} mov      dword ptr [esi + 0x00000214], ecx             // 0x0063e76d    898e14020000
_jmp_addr_0x0063e773:    {disp32} mov      eax, dword ptr [data_bytes + 0x226994]        // 0x0063e773    a194c9be00
                         add               edi, 0x34                                     // 0x0063e778    83c734
                         test              eax, eax                                      // 0x0063e77b    85c0
                         pop               ebx                                           // 0x0063e77d    5b
                         {disp8} je        _jmp_addr_0x0063e7b0                          // 0x0063e77e    7430
                         push              0x0                                           // 0x0063e780    6a00
                         push              0x4                                           // 0x0063e782    6a04
                         push              edi                                           // 0x0063e784    57
                         mov.s             ecx, esi                                      // 0x0063e785    8bce
                         call              @Read__8LHOSFileFPvUlPUl@20                   // 0x0063e787    e854e11700
                         cmp               eax, 0x03                                     // 0x0063e78c    83f803
                         {disp8} jne       _jmp_addr_0x0063e79b                          // 0x0063e78f    750a
                         {disp32} mov      dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0063e791    c70594c9be0000000000
_jmp_addr_0x0063e79b:    {disp32} mov      eax, dword ptr [esi + 0x00000214]             // 0x0063e79b    8b8614020000
                         xor.s             ecx, ecx                                      // 0x0063e7a1    33c9
                         mov               cl, byte ptr [edi]                            // 0x0063e7a3    8a0f
                         add               ecx, 0x4                                      // 0x0063e7a5    83c104
                         add.s             eax, ecx                                      // 0x0063e7a8    03c1
                         {disp32} mov      dword ptr [esi + 0x00000214], eax             // 0x0063e7aa    898614020000
_jmp_addr_0x0063e7b0:    pop               edi                                           // 0x0063e7b0    5f
                         mov               eax, 0x00000001                               // 0x0063e7b1    b801000000
                         pop               esi                                           // 0x0063e7b6    5e
                         ret               0x0004                                        // 0x0063e7b7    c20400
_jmp_addr_0x0063e7ba:    pop               edi                                           // 0x0063e7ba    5f
                         xor.s             eax, eax                                      // 0x0063e7bb    33c0
                         pop               esi                                           // 0x0063e7bd    5e
                         ret               0x0004                                        // 0x0063e7be    c20400
                         nop                                                             // 0x0063e7c1    90
                         nop                                                             // 0x0063e7c2    90
                         nop                                                             // 0x0063e7c3    90
                         nop                                                             // 0x0063e7c4    90
                         nop                                                             // 0x0063e7c5    90
                         nop                                                             // 0x0063e7c6    90
                         nop                                                             // 0x0063e7c7    90
                         nop                                                             // 0x0063e7c8    90
                         nop                                                             // 0x0063e7c9    90
                         nop                                                             // 0x0063e7ca    90
                         nop                                                             // 0x0063e7cb    90
                         nop                                                             // 0x0063e7cc    90
                         nop                                                             // 0x0063e7cd    90
                         nop                                                             // 0x0063e7ce    90
                         nop                                                             // 0x0063e7cf    90
_globl_ct_0x0063e7d0:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0063e7d0    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0063e7d6    b001
                         test              al, cl                                        // 0x0063e7d8    84c8
                         {disp8} jne       _jmp_addr_0x0063e7e4                          // 0x0063e7da    7508
                         or.s              cl, al                                        // 0x0063e7dc    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0063e7de    880d34c9fa00
_jmp_addr_0x0063e7e4:    {disp32} jmp      _jmp_addr_0x0063e7f0                          // 0x0063e7e4    e907000000
                         nop                                                             // 0x0063e7e9    90
                         nop                                                             // 0x0063e7ea    90
                         nop                                                             // 0x0063e7eb    90
                         nop                                                             // 0x0063e7ec    90
                         nop                                                             // 0x0063e7ed    90
                         nop                                                             // 0x0063e7ee    90
                         nop                                                             // 0x0063e7ef    90
_jmp_addr_0x0063e7f0:    push              0x00407870                                    // 0x0063e7f0    6870784000
                         call              _atexit                                       // 0x0063e7f5    e8976f1800
                         pop               ecx                                           // 0x0063e7fa    59
                         ret                                                             // 0x0063e7fb    c3
                         nop                                                             // 0x0063e7fc    90
                         nop                                                             // 0x0063e7fd    90
                         nop                                                             // 0x0063e7fe    90
                         nop                                                             // 0x0063e7ff    90
_globl_ct_0x0063e800:    call              _jmp_addr_0x0063e810                          // 0x0063e800    e80b000000
                         {disp32} jmp      _jmp_addr_0x0063e820                          // 0x0063e805    e916000000
                         nop                                                             // 0x0063e80a    90
                         nop                                                             // 0x0063e80b    90
                         nop                                                             // 0x0063e80c    90
                         nop                                                             // 0x0063e80d    90
                         nop                                                             // 0x0063e80e    90
                         nop                                                             // 0x0063e80f    90
_jmp_addr_0x0063e810:    xor.s             eax, eax                                      // 0x0063e810    33c0
                         {disp32} mov      dword ptr [data_bytes + 0x37f4e8], eax        // 0x0063e812    a3e854d400
                         {disp32} mov      dword ptr [data_bytes + 0x37f4ec], eax        // 0x0063e817    a3ec54d400
                         ret                                                             // 0x0063e81c    c3
                         nop                                                             // 0x0063e81d    90
                         nop                                                             // 0x0063e81e    90
                         nop                                                             // 0x0063e81f    90
_jmp_addr_0x0063e820:    push              0x0063e830                                    // 0x0063e820    6830e86300
                         call              _atexit                                       // 0x0063e825    e8676f1800
                         pop               ecx                                           // 0x0063e82a    59
                         ret                                                             // 0x0063e82b    c3
                         nop                                                             // 0x0063e82c    90
                         nop                                                             // 0x0063e82d    90
                         nop                                                             // 0x0063e82e    90
                         nop                                                             // 0x0063e82f    90
                         ret                                                             // 0x0063e830    c3
                         nop                                                             // 0x0063e831    90
                         nop                                                             // 0x0063e832    90
                         nop                                                             // 0x0063e833    90
                         nop                                                             // 0x0063e834    90
                         nop                                                             // 0x0063e835    90
                         nop                                                             // 0x0063e836    90
                         nop                                                             // 0x0063e837    90
                         nop                                                             // 0x0063e838    90
                         nop                                                             // 0x0063e839    90
                         nop                                                             // 0x0063e83a    90
                         nop                                                             // 0x0063e83b    90
                         nop                                                             // 0x0063e83c    90
                         nop                                                             // 0x0063e83d    90
                         nop                                                             // 0x0063e83e    90
                         nop                                                             // 0x0063e83f    90
_globl_ct_0x0063e840:    call              _jmp_addr_0x0063e850                          // 0x0063e840    e80b000000
                         {disp32} jmp      _jmp_addr_0x0063e890                          // 0x0063e845    e946000000
                         nop                                                             // 0x0063e84a    90
                         nop                                                             // 0x0063e84b    90
                         nop                                                             // 0x0063e84c    90
                         nop                                                             // 0x0063e84d    90
                         nop                                                             // 0x0063e84e    90
                         nop                                                             // 0x0063e84f    90
_jmp_addr_0x0063e850:    xor.s             eax, eax                                      // 0x0063e850    33c0
                         {disp32} mov      dword ptr [data_bytes + 0x37f4f4], eax        // 0x0063e852    a3f454d400
                         {disp32} mov      dword ptr [data_bytes + 0x37f4f8], eax        // 0x0063e857    a3f854d400
                         {disp32} mov      dword ptr [data_bytes + 0x37f4f0], 0x00931370 // 0x0063e85c    c705f054d40070139300
                         ret                                                             // 0x0063e866    c3
                         nop                                                             // 0x0063e867    90
                         nop                                                             // 0x0063e868    90
                         nop                                                             // 0x0063e869    90
                         nop                                                             // 0x0063e86a    90
                         nop                                                             // 0x0063e86b    90
                         nop                                                             // 0x0063e86c    90
                         nop                                                             // 0x0063e86d    90
                         nop                                                             // 0x0063e86e    90
                         nop                                                             // 0x0063e86f    90
?GetBaseInfo@GPBallInfo@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0063e870    8b442404
                         mov               dword ptr [eax], 0x00000001                   // 0x0063e874    c70001000000
                         mov               eax, 0x00d454f0                               // 0x0063e87a    b8f054d400
                         ret               0x0004                                        // 0x0063e87f    c20400
                         nop                                                             // 0x0063e882    90
                         nop                                                             // 0x0063e883    90
                         nop                                                             // 0x0063e884    90
                         nop                                                             // 0x0063e885    90
                         nop                                                             // 0x0063e886    90
                         nop                                                             // 0x0063e887    90
                         nop                                                             // 0x0063e888    90
                         nop                                                             // 0x0063e889    90
                         nop                                                             // 0x0063e88a    90
                         nop                                                             // 0x0063e88b    90
                         nop                                                             // 0x0063e88c    90
                         nop                                                             // 0x0063e88d    90
                         nop                                                             // 0x0063e88e    90
                         nop                                                             // 0x0063e88f    90
_jmp_addr_0x0063e890:    push              0x0063e8a0                                    // 0x0063e890    68a0e86300
                         call              _atexit                                       // 0x0063e895    e8f76e1800
                         pop               ecx                                           // 0x0063e89a    59
                         ret                                                             // 0x0063e89b    c3
                         nop                                                             // 0x0063e89c    90
                         nop                                                             // 0x0063e89d    90
                         nop                                                             // 0x0063e89e    90
                         nop                                                             // 0x0063e89f    90
                         {disp32} mov      cl, byte ptr [data_bytes + 0x37f4e0]          // 0x0063e8a0    8a0de054d400
                         mov               al, 0x01                                      // 0x0063e8a6    b001
                         test              al, cl                                        // 0x0063e8a8    84c8
                         {disp8} jne       _jmp_addr_0x0063e8be                          // 0x0063e8aa    7512
                         or.s              cl, al                                        // 0x0063e8ac    0ac8
                         {disp32} mov      byte ptr [data_bytes + 0x37f4e0], cl          // 0x0063e8ae    880de054d400
                         mov               ecx, 0x00d454f0                               // 0x0063e8b4    b9f054d400
                         {disp32} jmp      _jmp_addr_0x00436960                          // 0x0063e8b9    e9a280dfff
_jmp_addr_0x0063e8be:    ret                                                             // 0x0063e8be    c3
                         nop                                                             // 0x0063e8bf    90
??_GGPBallInfo@@UAEPAXI@Z:
                         push              esi                                           // 0x0063e8c0    56
                         mov.s             esi, ecx                                      // 0x0063e8c1    8bf1
                         call              _jmp_addr_0x00436960                          // 0x0063e8c3    e89880dfff
                         test              byte ptr [esp + 0x08], 0x01                   // 0x0063e8c8    f644240801
                         {disp8} je        _jmp_addr_0x0063e8dd                          // 0x0063e8cd    740e
                         push              0x0000011c                                    // 0x0063e8cf    681c010000
                         push              esi                                           // 0x0063e8d4    56
                         call              ??3Base@@SAXPAXK@Z                          // 0x0063e8d5    e89680dfff
                         add               esp, 0x08                                     // 0x0063e8da    83c408
_jmp_addr_0x0063e8dd:    mov.s             eax, esi                                      // 0x0063e8dd    8bc6
                         pop               esi                                           // 0x0063e8df    5e
                         ret               0x0004                                        // 0x0063e8e0    c20400
                         nop                                                             // 0x0063e8e3    90
                         nop                                                             // 0x0063e8e4    90
                         nop                                                             // 0x0063e8e5    90
                         nop                                                             // 0x0063e8e6    90
                         nop                                                             // 0x0063e8e7    90
                         nop                                                             // 0x0063e8e8    90
                         nop                                                             // 0x0063e8e9    90
                         nop                                                             // 0x0063e8ea    90
                         nop                                                             // 0x0063e8eb    90
                         nop                                                             // 0x0063e8ec    90
                         nop                                                             // 0x0063e8ed    90
                         nop                                                             // 0x0063e8ee    90
                         nop                                                             // 0x0063e8ef    90
_jmp_addr_0x0063e8f0:    {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0063e8f0    8b442408
                         push              esi                                           // 0x0063e8f4    56
                         push              0x3f800000                                    // 0x0063e8f5    680000803f
                         push              0x0                                           // 0x0063e8fa    6a00
                         push              0x0                                           // 0x0063e8fc    6a00
                         mov.s             esi, ecx                                      // 0x0063e8fe    8bf1
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x0063e900    8b4c2414
                         push              eax                                           // 0x0063e904    50
                         push              ecx                                           // 0x0063e905    51
                         mov.s             ecx, esi                                      // 0x0063e906    8bce
                         call              @__ct__12MobileObjectFRC9MapCoordsPC17GMobileObjectInfoP6Objectff@28                          // 0x0063e908    e83385fcff
                         {disp8} mov       dword ptr [esi + 0x70], 0x00000000            // 0x0063e90d    c7467000000000
                         push              0x3f800000                                    // 0x0063e914    680000803f
                         mov.s             ecx, esi                                      // 0x0063e919    8bce
                         mov               dword ptr [esi], 0x009313b0                   // 0x0063e91b    c706b0139300
                         call              @SetLife__6ObjectFf@12                        // 0x0063e921    e81ab8ffff
                         {disp8} mov       dword ptr [esi + 0x6c], 0x00000000            // 0x0063e926    c7466c00000000
                         {disp32} mov      edx, dword ptr [data_bytes + 0x37f4e8]        // 0x0063e92d    8b15e854d400
                         {disp8} mov       dword ptr [esi + 0x70], edx                   // 0x0063e933    895670
                         {disp32} inc      dword ptr [data_bytes + 0x37f4ec]             // 0x0063e936    ff05ec54d400
                         {disp32} mov      dword ptr [data_bytes + 0x37f4e8], esi        // 0x0063e93c    8935e854d400
                         mov.s             eax, esi                                      // 0x0063e942    8bc6
                         pop               esi                                           // 0x0063e944    5e
                         ret               0x0008                                        // 0x0063e945    c20800
                         nop                                                             // 0x0063e948    90
                         nop                                                             // 0x0063e949    90
                         nop                                                             // 0x0063e94a    90
                         nop                                                             // 0x0063e94b    90
                         nop                                                             // 0x0063e94c    90
                         nop                                                             // 0x0063e94d    90
                         nop                                                             // 0x0063e94e    90
                         nop                                                             // 0x0063e94f    90
??_GPBall@@UAEPAXI@Z:
                         push              esi                                           // 0x0063e950    56
                         mov.s             esi, ecx                                      // 0x0063e951    8bf1
                         call              _jmp_addr_0x0063e970                          // 0x0063e953    e818000000
                         test              byte ptr [esp + 0x08], 0x01                   // 0x0063e958    f644240801
                         {disp8} je        _jmp_addr_0x0063e96a                          // 0x0063e95d    740b
                         push              0x74                                          // 0x0063e95f    6a74
                         push              esi                                           // 0x0063e961    56
                         call              ??3Base@@SAXPAXK@Z                          // 0x0063e962    e80980dfff
                         add               esp, 0x08                                     // 0x0063e967    83c408
_jmp_addr_0x0063e96a:    mov.s             eax, esi                                      // 0x0063e96a    8bc6
                         pop               esi                                           // 0x0063e96c    5e
                         ret               0x0004                                        // 0x0063e96d    c20400
_jmp_addr_0x0063e970:    mov               dword ptr [ecx], 0x009313b0                   // 0x0063e970    c701b0139300
                         {disp32} jmp      _jmp_addr_0x00606ed0                          // 0x0063e976    e95585fcff
                         nop                                                             // 0x0063e97b    90
                         nop                                                             // 0x0063e97c    90
                         nop                                                             // 0x0063e97d    90
                         nop                                                             // 0x0063e97e    90
                         nop                                                             // 0x0063e97f    90
?Draw@PBall@@UAEXXZ:
                         cmp               dword ptr [ecx + 0x6c], 0x02                  // 0x0063e980    83796c02
                         {disp8} je        _jmp_addr_0x0063e98b                          // 0x0063e984    7405
                         {disp32} jmp      ?Draw@MobileObject@@UAEXXZ                    // 0x0063e986    e9c597edff
_jmp_addr_0x0063e98b:    ret                                                             // 0x0063e98b    c3
                         nop                                                             // 0x0063e98c    90
                         nop                                                             // 0x0063e98d    90
                         nop                                                             // 0x0063e98e    90
                         nop                                                             // 0x0063e98f    90
?Process@PBall@@UAEIXZ:
                         mov               eax, 0x00000001                               // 0x0063e990    b801000000
                         ret                                                             // 0x0063e995    c3
                         nop                                                             // 0x0063e996    90
                         nop                                                             // 0x0063e997    90
                         nop                                                             // 0x0063e998    90
                         nop                                                             // 0x0063e999    90
                         nop                                                             // 0x0063e99a    90
                         nop                                                             // 0x0063e99b    90
                         nop                                                             // 0x0063e99c    90
                         nop                                                             // 0x0063e99d    90
                         nop                                                             // 0x0063e99e    90
                         nop                                                             // 0x0063e99f    90
                         push              esi                                           // 0x0063e9a0    56
                         push              edi                                           // 0x0063e9a1    57
                         push              0x39                                          // 0x0063e9a2    6a39
                         push              0x00bfe07c                                    // 0x0063e9a4    687ce0bf00
                         push              0x74                                          // 0x0063e9a9    6a74
                         call              ?__nw@Base@@SAPAXK@Z                          // 0x0063e9ab    e8407ddfff
                         add               esp, 0x0c                                     // 0x0063e9b0    83c40c
                         test              eax, eax                                      // 0x0063e9b3    85c0
                         {disp8} je        _jmp_addr_0x0063e9ed                          // 0x0063e9b5    7436
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x0063e9b7    8b4c2410
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x0063e9bb    8b7c240c
                         push              ecx                                           // 0x0063e9bf    51
                         push              edi                                           // 0x0063e9c0    57
                         mov.s             ecx, eax                                      // 0x0063e9c1    8bc8
                         call              _jmp_addr_0x0063e8f0                          // 0x0063e9c3    e828ffffff
                         mov.s             esi, eax                                      // 0x0063e9c8    8bf0
                         test              esi, esi                                      // 0x0063e9ca    85f6
                         {disp8} je        _jmp_addr_0x0063e9e8                          // 0x0063e9cc    741a
                         mov               edx, dword ptr [esi]                          // 0x0063e9ce    8b16
                         push              0x3f800000                                    // 0x0063e9d0    680000803f
                         mov.s             ecx, esi                                      // 0x0063e9d5    8bce
                         call              dword ptr [edx + 0x124]                       // 0x0063e9d7    ff9224010000
                         mov               eax, dword ptr [esi]                          // 0x0063e9dd    8b06
                         push              edi                                           // 0x0063e9df    57
                         mov.s             ecx, esi                                      // 0x0063e9e0    8bce
                         call              dword ptr [eax + 0x658]                       // 0x0063e9e2    ff9058060000
_jmp_addr_0x0063e9e8:    pop               edi                                           // 0x0063e9e8    5f
                         mov.s             eax, esi                                      // 0x0063e9e9    8bc6
                         pop               esi                                           // 0x0063e9eb    5e
                         ret                                                             // 0x0063e9ec    c3
_jmp_addr_0x0063e9ed:    pop               edi                                           // 0x0063e9ed    5f
                         xor.s             eax, eax                                      // 0x0063e9ee    33c0
                         pop               esi                                           // 0x0063e9f0    5e
                         ret                                                             // 0x0063e9f1    c3
                         nop                                                             // 0x0063e9f2    90
                         nop                                                             // 0x0063e9f3    90
                         nop                                                             // 0x0063e9f4    90
                         nop                                                             // 0x0063e9f5    90
                         nop                                                             // 0x0063e9f6    90
                         nop                                                             // 0x0063e9f7    90
                         nop                                                             // 0x0063e9f8    90
                         nop                                                             // 0x0063e9f9    90
                         nop                                                             // 0x0063e9fa    90
                         nop                                                             // 0x0063e9fb    90
                         nop                                                             // 0x0063e9fc    90
                         nop                                                             // 0x0063e9fd    90
                         nop                                                             // 0x0063e9fe    90
                         nop                                                             // 0x0063e9ff    90
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x37f4e8]        // 0x0063ea00    8b0de854d400
                         test              ecx, ecx                                      // 0x0063ea06    85c9
                         {disp8} je        _jmp_addr_0x0063ea1d                          // 0x0063ea08    7413
                         push              esi                                           // 0x0063ea0a    56
_jmp_addr_0x0063ea0b:    mov               eax, dword ptr [ecx]                          // 0x0063ea0b    8b01
                         {disp8} mov       esi, dword ptr [ecx + 0x70]                   // 0x0063ea0d    8b7170
                         call              dword ptr [eax + 0x5fc]                       // 0x0063ea10    ff90fc050000
                         test              esi, esi                                      // 0x0063ea16    85f6
                         mov.s             ecx, esi                                      // 0x0063ea18    8bce
                         {disp8} jne       _jmp_addr_0x0063ea0b                          // 0x0063ea1a    75ef
                         pop               esi                                           // 0x0063ea1c    5e
_jmp_addr_0x0063ea1d:    ret                                                             // 0x0063ea1d    c3
                         nop                                                             // 0x0063ea1e    90
                         nop                                                             // 0x0063ea1f    90
_jmp_addr_0x0063ea20:    sub               esp, 0x20                                     // 0x0063ea20    83ec20
                         push              esi                                           // 0x0063ea23    56
                         mov.s             esi, ecx                                      // 0x0063ea24    8bf1
                         mov               eax, dword ptr [esi]                          // 0x0063ea26    8b06
                         call              dword ptr [eax + 0x174]                       // 0x0063ea28    ff9074010000
                         test              eax, eax                                      // 0x0063ea2e    85c0
                         {disp8} jne       _jmp_addr_0x0063eab0                          // 0x0063ea30    757e
                         mov               edx, dword ptr [esi]                          // 0x0063ea32    8b16
                         mov.s             ecx, esi                                      // 0x0063ea34    8bce
                         call              dword ptr [edx + 0x178]                       // 0x0063ea36    ff9278010000
                         test              eax, eax                                      // 0x0063ea3c    85c0
                         {disp8} je        _jmp_addr_0x0063eab0                          // 0x0063ea3e    7470
                         {disp8} mov       eax, dword ptr [esp + 0x28]                   // 0x0063ea40    8b442428
                         push              eax                                           // 0x0063ea44    50
                         call              _jmp_addr_0x0074e2b0                          // 0x0063ea45    e866f81000
                         fld               st(0)                                         // 0x0063ea4a    d9c0
                         fsin                                                            // 0x0063ea4c    d9fe
                         {disp8} mov       ecx, dword ptr [esp + 0x34]                   // 0x0063ea4e    8b4c2434
                         mov               edx, dword ptr [esi]                          // 0x0063ea52    8b16
                         add               esp, 0x04                                     // 0x0063ea54    83c404
                         push              0x0                                           // 0x0063ea57    6a00
                         push              0x1                                           // 0x0063ea59    6a01
                         push              0x0                                           // 0x0063ea5b    6a00
                         {disp8} mov       dword ptr [esp + 0x28], ecx                   // 0x0063ea5d    894c2428
                         {disp8} lea       eax, dword ptr [esp + 0x18]                   // 0x0063ea61    8d442418
                         push              eax                                           // 0x0063ea65    50
                         {disp8} lea       ecx, dword ptr [esp + 0x28]                   // 0x0063ea66    8d4c2428
                         push              ecx                                           // 0x0063ea6a    51
                         {disp8} lea       eax, dword ptr [esp + 0x18]                   // 0x0063ea6b    8d442418
                         push              eax                                           // 0x0063ea6f    50
                         mov.s             ecx, esi                                      // 0x0063ea70    8bce
                         {disp8} mov       dword ptr [esp + 0x24], 0x00000000            // 0x0063ea72    c744242400000000
                         {disp8} mov       dword ptr [esp + 0x28], 0x00000000            // 0x0063ea7a    c744242800000000
                         {disp8} mov       dword ptr [esp + 0x2c], 0x00000000            // 0x0063ea82    c744242c00000000
                         {disp8} fmul      dword ptr [esp + 0x44]                        // 0x0063ea8a    d84c2444
                         {disp8} fstp      dword ptr [esp + 0x30]                        // 0x0063ea8e    d95c2430
                         fcos                                                            // 0x0063ea92    d9ff
                         {disp8} fmul      dword ptr [esp + 0x44]                        // 0x0063ea94    d84c2444
                         fchs                                                            // 0x0063ea98    d9e0
                         {disp8} fstp      dword ptr [esp + 0x38]                        // 0x0063ea9a    d95c2438
                         call              dword ptr [edx + 0x784]                       // 0x0063ea9e    ff9284070000
                         mov               eax, 0x00000001                               // 0x0063eaa4    b801000000
                         pop               esi                                           // 0x0063eaa9    5e
                         add               esp, 0x20                                     // 0x0063eaaa    83c420
                         ret               0x000c                                        // 0x0063eaad    c20c00
_jmp_addr_0x0063eab0:    xor.s             eax, eax                                      // 0x0063eab0    33c0
                         pop               esi                                           // 0x0063eab2    5e
                         add               esp, 0x20                                     // 0x0063eab3    83c420
                         ret               0x000c                                        // 0x0063eab6    c20c00
                         nop                                                             // 0x0063eab9    90
                         nop                                                             // 0x0063eaba    90
                         nop                                                             // 0x0063eabb    90
                         nop                                                             // 0x0063eabc    90
                         nop                                                             // 0x0063eabd    90
                         nop                                                             // 0x0063eabe    90
                         nop                                                             // 0x0063eabf    90
                         {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0063eac0    8b442404
                         push              esi                                           // 0x0063eac4    56
                         mov.s             esi, ecx                                      // 0x0063eac5    8bf1
                         push              eax                                           // 0x0063eac7    50
                         {disp8} lea       ecx, dword ptr [esi + 0x14]                   // 0x0063eac8    8d4e14
                         push              ecx                                           // 0x0063eacb    51
                         call              ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z                               // 0x0063eacc    e86fe71000
                         {disp8} mov       edx, dword ptr [esp + 0x18]                   // 0x0063ead1    8b542418
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x0063ead5    8b4c2414
                         add               esp, 0x08                                     // 0x0063ead9    83c408
                         push              edx                                           // 0x0063eadc    52
                         and               eax, 0x000007ff                               // 0x0063eadd    25ff070000
                         movsx             edx, ax                                       // 0x0063eae2    0fbfd0
                         push              ecx                                           // 0x0063eae5    51
                         push              edx                                           // 0x0063eae6    52
                         mov.s             ecx, esi                                      // 0x0063eae7    8bce
                         call              _jmp_addr_0x0063ea20                          // 0x0063eae9    e832ffffff
                         pop               esi                                           // 0x0063eaee    5e
                         ret               0x000c                                        // 0x0063eaef    c20c00
                         nop                                                             // 0x0063eaf2    90
                         nop                                                             // 0x0063eaf3    90
                         nop                                                             // 0x0063eaf4    90
                         nop                                                             // 0x0063eaf5    90
                         nop                                                             // 0x0063eaf6    90
                         nop                                                             // 0x0063eaf7    90
                         nop                                                             // 0x0063eaf8    90
                         nop                                                             // 0x0063eaf9    90
                         nop                                                             // 0x0063eafa    90
                         nop                                                             // 0x0063eafb    90
                         nop                                                             // 0x0063eafc    90
                         nop                                                             // 0x0063eafd    90
                         nop                                                             // 0x0063eafe    90
                         nop                                                             // 0x0063eaff    90
_globl_ct_0x0063eb00:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0063eb00    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0063eb06    b001
                         test              al, cl                                        // 0x0063eb08    84c8
                         {disp8} jne       _jmp_addr_0x0063eb14                          // 0x0063eb0a    7508
                         or.s              cl, al                                        // 0x0063eb0c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0063eb0e    880d34c9fa00
_jmp_addr_0x0063eb14:    {disp32} jmp      _jmp_addr_0x0063eb20                          // 0x0063eb14    e907000000
                         nop                                                             // 0x0063eb19    90
                         nop                                                             // 0x0063eb1a    90
                         nop                                                             // 0x0063eb1b    90
                         nop                                                             // 0x0063eb1c    90
                         nop                                                             // 0x0063eb1d    90
                         nop                                                             // 0x0063eb1e    90
                         nop                                                             // 0x0063eb1f    90
_jmp_addr_0x0063eb20:    push              0x00407870                                    // 0x0063eb20    6870784000
                         call              _atexit                                       // 0x0063eb25    e8676c1800
                         pop               ecx                                           // 0x0063eb2a    59
                         ret                                                             // 0x0063eb2b    c3
                         nop                                                             // 0x0063eb2c    90
                         nop                                                             // 0x0063eb2d    90
                         nop                                                             // 0x0063eb2e    90
                         nop                                                             // 0x0063eb2f    90
_globl_ct_0x0063eb30:    {disp32} jmp      _jmp_addr_0x0063eb40                          // 0x0063eb30    e90b000000
                         nop                                                             // 0x0063eb35    90
                         nop                                                             // 0x0063eb36    90
                         nop                                                             // 0x0063eb37    90
                         nop                                                             // 0x0063eb38    90
                         nop                                                             // 0x0063eb39    90
                         nop                                                             // 0x0063eb3a    90
                         nop                                                             // 0x0063eb3b    90
                         nop                                                             // 0x0063eb3c    90
                         nop                                                             // 0x0063eb3d    90
                         nop                                                             // 0x0063eb3e    90
                         nop                                                             // 0x0063eb3f    90
_jmp_addr_0x0063eb40:    {disp32} mov      dword ptr [data_bytes + 0x37f610], 0x3e000000 // 0x0063eb40    c7051056d4000000003e
                         ret                                                             // 0x0063eb4a    c3
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0063eb4b    e8a92cdcff
_globl_ct_0x0063eb50:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0063eb50    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0063eb56    b001
                         test              al, cl                                        // 0x0063eb58    84c8
                         {disp8} jne       _jmp_addr_0x0063eb64                          // 0x0063eb5a    7508
                         or.s              cl, al                                        // 0x0063eb5c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0063eb5e    880d34c9fa00
_jmp_addr_0x0063eb64:    {disp32} jmp      _jmp_addr_0x0063eb70                          // 0x0063eb64    e907000000
                         nop                                                             // 0x0063eb69    90
                         nop                                                             // 0x0063eb6a    90
                         nop                                                             // 0x0063eb6b    90
                         nop                                                             // 0x0063eb6c    90
                         nop                                                             // 0x0063eb6d    90
                         nop                                                             // 0x0063eb6e    90
                         nop                                                             // 0x0063eb6f    90
_jmp_addr_0x0063eb70:    push              0x00407870                                    // 0x0063eb70    6870784000
                         call              _atexit                                       // 0x0063eb75    e8176c1800
                         pop               ecx                                           // 0x0063eb7a    59
                         ret                                                             // 0x0063eb7b    c3
                         nop                                                             // 0x0063eb7c    90
                         nop                                                             // 0x0063eb7d    90
                         nop                                                             // 0x0063eb7e    90
                         nop                                                             // 0x0063eb7f    90
_globl_ct_0x0063eb80:    {disp32} jmp      _jmp_addr_0x0063eb90                          // 0x0063eb80    e90b000000
                         nop                                                             // 0x0063eb85    90
                         nop                                                             // 0x0063eb86    90
                         nop                                                             // 0x0063eb87    90
                         nop                                                             // 0x0063eb88    90
                         nop                                                             // 0x0063eb89    90
                         nop                                                             // 0x0063eb8a    90
                         nop                                                             // 0x0063eb8b    90
                         nop                                                             // 0x0063eb8c    90
                         nop                                                             // 0x0063eb8d    90
                         nop                                                             // 0x0063eb8e    90
                         nop                                                             // 0x0063eb8f    90
_jmp_addr_0x0063eb90:    {disp32} fld      dword ptr [rdata_bytes + 0x88c10]             // 0x0063eb90    d905101c9300
                         {disp32} fmul     dword ptr [_rdata_float0p5]                   // 0x0063eb96    d80db4a38a00
                         {disp32} fstp     dword ptr [data_bytes + 0x37f614]             // 0x0063eb9c    d91d1456d400
                         ret                                                             // 0x0063eba2    c3
                         nop                                                             // 0x0063eba3    90
                         nop                                                             // 0x0063eba4    90
                         nop                                                             // 0x0063eba5    90
                         nop                                                             // 0x0063eba6    90
                         nop                                                             // 0x0063eba7    90
                         nop                                                             // 0x0063eba8    90
                         nop                                                             // 0x0063eba9    90
                         nop                                                             // 0x0063ebaa    90
                         nop                                                             // 0x0063ebab    90
                         nop                                                             // 0x0063ebac    90
                         nop                                                             // 0x0063ebad    90
                         nop                                                             // 0x0063ebae    90
                         nop                                                             // 0x0063ebaf    90
_globl_ct_0x0063ebb0:    {disp32} jmp      _jmp_addr_0x0063ebc0                          // 0x0063ebb0    e90b000000
                         nop                                                             // 0x0063ebb5    90
                         nop                                                             // 0x0063ebb6    90
                         nop                                                             // 0x0063ebb7    90
                         nop                                                             // 0x0063ebb8    90
                         nop                                                             // 0x0063ebb9    90
                         nop                                                             // 0x0063ebba    90
                         nop                                                             // 0x0063ebbb    90
                         nop                                                             // 0x0063ebbc    90
                         nop                                                             // 0x0063ebbd    90
                         nop                                                             // 0x0063ebbe    90
                         nop                                                             // 0x0063ebbf    90
_jmp_addr_0x0063ebc0:    {disp32} fld      dword ptr [rdata_bytes + 0x88c1c]             // 0x0063ebc0    d9051c1c9300
                         {disp32} fmul     dword ptr [rdata_bytes + 0x88c18]             // 0x0063ebc6    d80d181c9300
                         {disp32} fstp     dword ptr [data_bytes + 0x380a58]             // 0x0063ebcc    d91d586ad400
                         ret                                                             // 0x0063ebd2    c3
                         nop                                                             // 0x0063ebd3    90
                         nop                                                             // 0x0063ebd4    90
                         nop                                                             // 0x0063ebd5    90
                         nop                                                             // 0x0063ebd6    90
                         nop                                                             // 0x0063ebd7    90
                         nop                                                             // 0x0063ebd8    90
                         nop                                                             // 0x0063ebd9    90
                         nop                                                             // 0x0063ebda    90
                         nop                                                             // 0x0063ebdb    90
                         nop                                                             // 0x0063ebdc    90
                         nop                                                             // 0x0063ebdd    90
                         nop                                                             // 0x0063ebde    90
                         nop                                                             // 0x0063ebdf    90
_globl_ct_0x0063ebe0:    {disp32} jmp      _jmp_addr_0x0063ebf0                          // 0x0063ebe0    e90b000000
                         nop                                                             // 0x0063ebe5    90
                         nop                                                             // 0x0063ebe6    90
                         nop                                                             // 0x0063ebe7    90
                         nop                                                             // 0x0063ebe8    90
                         nop                                                             // 0x0063ebe9    90
                         nop                                                             // 0x0063ebea    90
                         nop                                                             // 0x0063ebeb    90
                         nop                                                             // 0x0063ebec    90
                         nop                                                             // 0x0063ebed    90
                         nop                                                             // 0x0063ebee    90
                         nop                                                             // 0x0063ebef    90
_jmp_addr_0x0063ebf0:    {disp32} mov      dword ptr [data_bytes + 0x380a54], 0xffffffff // 0x0063ebf0    c705546ad400ffffffff
                         ret                                                             // 0x0063ebfa    c3
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0063ebfb    e8f92bdcff
_globl_ct_0x0063ec00:    {disp32} jmp      _jmp_addr_0x0063ec10                          // 0x0063ec00    e90b000000
                         nop                                                             // 0x0063ec05    90
                         nop                                                             // 0x0063ec06    90
                         nop                                                             // 0x0063ec07    90
                         nop                                                             // 0x0063ec08    90
                         nop                                                             // 0x0063ec09    90
                         nop                                                             // 0x0063ec0a    90
                         nop                                                             // 0x0063ec0b    90
                         nop                                                             // 0x0063ec0c    90
                         nop                                                             // 0x0063ec0d    90
                         nop                                                             // 0x0063ec0e    90
                         nop                                                             // 0x0063ec0f    90
_jmp_addr_0x0063ec10:    {disp32} fld      dword ptr [rdata_bytes + 0x88c20]             // 0x0063ec10    d905201c9300
                         {disp32} fmul     dword ptr [_abode_info_float_0x008a99f0]      // 0x0063ec16    d80df0998a00
                         {disp32} fstp     dword ptr [data_bytes + 0x380a50]             // 0x0063ec1c    d91d506ad400
                         ret                                                             // 0x0063ec22    c3
                         nop                                                             // 0x0063ec23    90
                         nop                                                             // 0x0063ec24    90
                         nop                                                             // 0x0063ec25    90
                         nop                                                             // 0x0063ec26    90
                         nop                                                             // 0x0063ec27    90
                         nop                                                             // 0x0063ec28    90
                         nop                                                             // 0x0063ec29    90
                         nop                                                             // 0x0063ec2a    90
                         nop                                                             // 0x0063ec2b    90
                         nop                                                             // 0x0063ec2c    90
                         nop                                                             // 0x0063ec2d    90
                         nop                                                             // 0x0063ec2e    90
                         nop                                                             // 0x0063ec2f    90
_globl_ct_0x0063ec30:    {disp32} jmp      _jmp_addr_0x0063ec40                          // 0x0063ec30    e90b000000
                         nop                                                             // 0x0063ec35    90
                         nop                                                             // 0x0063ec36    90
                         nop                                                             // 0x0063ec37    90
                         nop                                                             // 0x0063ec38    90
                         nop                                                             // 0x0063ec39    90
                         nop                                                             // 0x0063ec3a    90
                         nop                                                             // 0x0063ec3b    90
                         nop                                                             // 0x0063ec3c    90
                         nop                                                             // 0x0063ec3d    90
                         nop                                                             // 0x0063ec3e    90
                         nop                                                             // 0x0063ec3f    90
_jmp_addr_0x0063ec40:    {disp32} fld      dword ptr [rdata_bytes + 0x88c24]             // 0x0063ec40    d905241c9300
                         {disp32} fmul     dword ptr [rdata_bytes + 0x19c50]             // 0x0063ec46    d80d502c8c00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x23d4]              // 0x0063ec4c    d80dd4b38a00
                         {disp32} fstp     dword ptr [data_bytes + 0x380a4c]             // 0x0063ec52    d91d4c6ad400
                         ret                                                             // 0x0063ec58    c3
                         nop                                                             // 0x0063ec59    90
                         nop                                                             // 0x0063ec5a    90
                         nop                                                             // 0x0063ec5b    90
                         nop                                                             // 0x0063ec5c    90
                         nop                                                             // 0x0063ec5d    90
                         nop                                                             // 0x0063ec5e    90
                         nop                                                             // 0x0063ec5f    90
_globl_ct_0x0063ec60:    {disp32} jmp      _jmp_addr_0x0063ec70                          // 0x0063ec60    e90b000000
                         nop                                                             // 0x0063ec65    90
                         nop                                                             // 0x0063ec66    90
                         nop                                                             // 0x0063ec67    90
                         nop                                                             // 0x0063ec68    90
                         nop                                                             // 0x0063ec69    90
                         nop                                                             // 0x0063ec6a    90
                         nop                                                             // 0x0063ec6b    90
                         nop                                                             // 0x0063ec6c    90
                         nop                                                             // 0x0063ec6d    90
                         nop                                                             // 0x0063ec6e    90
                         nop                                                             // 0x0063ec6f    90
_jmp_addr_0x0063ec70:    {disp32} fld      dword ptr [rdata_bytes + 0x88c24]             // 0x0063ec70    d905241c9300
                         fadd.s            st(0), st(0)                                  // 0x0063ec76    dcc0
                         {disp32} fstp     dword ptr [data_bytes + 0x380a48]             // 0x0063ec78    d91d486ad400
                         ret                                                             // 0x0063ec7e    c3
                         nop                                                             // 0x0063ec7f    90
_globl_ct_0x0063ec80:    {disp32} jmp      _jmp_addr_0x0063ec90                          // 0x0063ec80    e90b000000
                         nop                                                             // 0x0063ec85    90
                         nop                                                             // 0x0063ec86    90
                         nop                                                             // 0x0063ec87    90
                         nop                                                             // 0x0063ec88    90
                         nop                                                             // 0x0063ec89    90
                         nop                                                             // 0x0063ec8a    90
                         nop                                                             // 0x0063ec8b    90
                         nop                                                             // 0x0063ec8c    90
                         nop                                                             // 0x0063ec8d    90
                         nop                                                             // 0x0063ec8e    90
                         nop                                                             // 0x0063ec8f    90
_jmp_addr_0x0063ec90:    {disp32} fld      dword ptr [data_bytes + 0x380a48]             // 0x0063ec90    d905486ad400
                         {disp32} fmul     dword ptr [rdata_bytes + 0x23750]             // 0x0063ec96    d80d50c78c00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2620]              // 0x0063ec9c    d80d20b68a00
                         {disp32} fstp     dword ptr [data_bytes + 0x380a44]             // 0x0063eca2    d91d446ad400
                         ret                                                             // 0x0063eca8    c3
                         nop                                                             // 0x0063eca9    90
                         nop                                                             // 0x0063ecaa    90
                         nop                                                             // 0x0063ecab    90
                         nop                                                             // 0x0063ecac    90
                         nop                                                             // 0x0063ecad    90
                         nop                                                             // 0x0063ecae    90
                         nop                                                             // 0x0063ecaf    90
_globl_ct_0x0063ecb0:    {disp32} jmp      _jmp_addr_0x0063ecc0                          // 0x0063ecb0    e90b000000
                         nop                                                             // 0x0063ecb5    90
                         nop                                                             // 0x0063ecb6    90
                         nop                                                             // 0x0063ecb7    90
                         nop                                                             // 0x0063ecb8    90
                         nop                                                             // 0x0063ecb9    90
                         nop                                                             // 0x0063ecba    90
                         nop                                                             // 0x0063ecbb    90
                         nop                                                             // 0x0063ecbc    90
                         nop                                                             // 0x0063ecbd    90
                         nop                                                             // 0x0063ecbe    90
                         nop                                                             // 0x0063ecbf    90
_jmp_addr_0x0063ecc0:    {disp32} fld      dword ptr [data_bytes + 0x380a4c]             // 0x0063ecc0    d9054c6ad400
                         {disp32} fmul     dword ptr [rdata_bytes + 0x23750]             // 0x0063ecc6    d80d50c78c00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x23d4]              // 0x0063eccc    d80dd4b38a00
                         {disp32} fstp     dword ptr [data_bytes + 0x380a40]             // 0x0063ecd2    d91d406ad400
                         ret                                                             // 0x0063ecd8    c3
                         nop                                                             // 0x0063ecd9    90
                         nop                                                             // 0x0063ecda    90
                         nop                                                             // 0x0063ecdb    90
                         nop                                                             // 0x0063ecdc    90
                         nop                                                             // 0x0063ecdd    90
                         nop                                                             // 0x0063ecde    90
                         nop                                                             // 0x0063ecdf    90
_globl_ct_0x0063ece0:    {disp32} jmp      _jmp_addr_0x0063ecf0                          // 0x0063ece0    e90b000000
                         nop                                                             // 0x0063ece5    90
                         nop                                                             // 0x0063ece6    90
                         nop                                                             // 0x0063ece7    90
                         nop                                                             // 0x0063ece8    90
                         nop                                                             // 0x0063ece9    90
                         nop                                                             // 0x0063ecea    90
                         nop                                                             // 0x0063eceb    90
                         nop                                                             // 0x0063ecec    90
                         nop                                                             // 0x0063eced    90
                         nop                                                             // 0x0063ecee    90
                         nop                                                             // 0x0063ecef    90
_jmp_addr_0x0063ecf0:    {disp32} fld      dword ptr [data_bytes + 0x380a4c]             // 0x0063ecf0    d9054c6ad400
                         fadd.s            st(0), st(0)                                  // 0x0063ecf6    dcc0
                         {disp32} fstp     dword ptr [data_bytes + 0x380a3c]             // 0x0063ecf8    d91d3c6ad400
                         ret                                                             // 0x0063ecfe    c3
                         nop                                                             // 0x0063ecff    90
_globl_ct_0x0063ed00:    {disp32} jmp      _jmp_addr_0x0063ed10                          // 0x0063ed00    e90b000000
                         nop                                                             // 0x0063ed05    90
                         nop                                                             // 0x0063ed06    90
                         nop                                                             // 0x0063ed07    90
                         nop                                                             // 0x0063ed08    90
                         nop                                                             // 0x0063ed09    90
                         nop                                                             // 0x0063ed0a    90
                         nop                                                             // 0x0063ed0b    90
                         nop                                                             // 0x0063ed0c    90
                         nop                                                             // 0x0063ed0d    90
                         nop                                                             // 0x0063ed0e    90
                         nop                                                             // 0x0063ed0f    90
_jmp_addr_0x0063ed10:    {disp32} mov      dword ptr [data_bytes + 0x37f630], 0x00000000 // 0x0063ed10    c7053056d40000000000
                         {disp32} mov      dword ptr [data_bytes + 0x380a34], 0x00000000 // 0x0063ed1a    c705346ad40000000000
                         mov               eax, 0x00d45634                               // 0x0063ed24    b83456d400
                         mov               ecx, 0x00000014                               // 0x0063ed29    b914000000
_jmp_addr_0x0063ed2e:    mov               byte ptr [eax], 0x00                          // 0x0063ed2e    c60000
                         add               eax, 0x00000100                               // 0x0063ed31    0500010000
                         dec               ecx                                           // 0x0063ed36    49
                         {disp8} jne       _jmp_addr_0x0063ed2e                          // 0x0063ed37    75f5
                         ret                                                             // 0x0063ed39    c3
                         nop                                                             // 0x0063ed3a    90
                         nop                                                             // 0x0063ed3b    90
                         nop                                                             // 0x0063ed3c    90
                         nop                                                             // 0x0063ed3d    90
                         nop                                                             // 0x0063ed3e    90
                         nop                                                             // 0x0063ed3f    90
_jmp_addr_0x0063ed40:    {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0063ed40    8b442408
                         test              eax, eax                                      // 0x0063ed44    85c0
                         push              esi                                           // 0x0063ed46    56
                         push              edi                                           // 0x0063ed47    57
                         {disp32} mov      dword ptr [data_bytes + 0x380a38], eax        // 0x0063ed48    a3386ad400
                         {disp32} mov      dword ptr [data_bytes + 0x37f630], 0x00000001 // 0x0063ed4d    c7053056d40001000000
                         {disp32} mov      dword ptr [data_bytes + 0x380a34], 0x437a0000 // 0x0063ed57    c705346ad40000007a43
                         {disp8} jne       _jmp_addr_0x0063ed9e                          // 0x0063ed61    753b
                         mov               eax, 0x00d45634                               // 0x0063ed63    b83456d400
_jmp_addr_0x0063ed68:    mov               byte ptr [eax], 0x00                          // 0x0063ed68    c60000
                         add               eax, 0x00000100                               // 0x0063ed6b    0500010000
                         cmp               eax, 0x00d46a34                               // 0x0063ed70    3d346ad400
                         {disp8} jl        _jmp_addr_0x0063ed68                          // 0x0063ed75    7cf1
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x0063ed77    8b7c240c
                         or                ecx, 0xffffffff                               // 0x0063ed7b    83c9ff
                         xor.s             eax, eax                                      // 0x0063ed7e    33c0
                         repne scasb                                                     // 0x0063ed80    f2ae
                         not               ecx                                           // 0x0063ed82    f7d1
                         sub.s             edi, ecx                                      // 0x0063ed84    2bf9
                         mov.s             eax, ecx                                      // 0x0063ed86    8bc1
                         mov.s             esi, edi                                      // 0x0063ed88    8bf7
                         shr               ecx, 2                                        // 0x0063ed8a    c1e902
                         mov               edi, 0x00d45634                               // 0x0063ed8d    bf3456d400
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x0063ed92    f3a5
                         mov.s             ecx, eax                                      // 0x0063ed94    8bc8
                         and               ecx, 0x03                                     // 0x0063ed96    83e103
                         rep movsb                                                       // 0x0063ed99    f3a4
                         pop               edi                                           // 0x0063ed9b    5f
                         pop               esi                                           // 0x0063ed9c    5e
                         ret                                                             // 0x0063ed9d    c3
_jmp_addr_0x0063ed9e:    xor.s             edx, edx                                      // 0x0063ed9e    33d2
                         mov               eax, 0x00d45634                               // 0x0063eda0    b83456d400
_jmp_addr_0x0063eda5:    cmp               byte ptr [eax], 0x00                          // 0x0063eda5    803800
                         {disp8} je        _jmp_addr_0x0063edde                          // 0x0063eda8    7434
                         add               eax, 0x00000100                               // 0x0063edaa    0500010000
                         inc               edx                                           // 0x0063edaf    42
                         cmp               eax, 0x00d46a34                               // 0x0063edb0    3d346ad400
                         {disp8} jl        _jmp_addr_0x0063eda5                          // 0x0063edb5    7cee
                         {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x0063edb7    8b7c240c
                         or                ecx, 0xffffffff                               // 0x0063edbb    83c9ff
                         xor.s             eax, eax                                      // 0x0063edbe    33c0
                         repne scasb                                                     // 0x0063edc0    f2ae
                         not               ecx                                           // 0x0063edc2    f7d1
                         sub.s             edi, ecx                                      // 0x0063edc4    2bf9
                         mov.s             edx, ecx                                      // 0x0063edc6    8bd1
                         mov.s             esi, edi                                      // 0x0063edc8    8bf7
                         shr               ecx, 2                                        // 0x0063edca    c1e902
                         mov               edi, 0x00d45634                               // 0x0063edcd    bf3456d400
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x0063edd2    f3a5
                         mov.s             ecx, edx                                      // 0x0063edd4    8bca
                         and               ecx, 0x03                                     // 0x0063edd6    83e103
                         rep movsb                                                       // 0x0063edd9    f3a4
                         pop               edi                                           // 0x0063eddb    5f
                         pop               esi                                           // 0x0063eddc    5e
                         ret                                                             // 0x0063eddd    c3
_jmp_addr_0x0063edde:    {disp8} mov       edi, dword ptr [esp + 0x0c]                   // 0x0063edde    8b7c240c
                         or                ecx, 0xffffffff                               // 0x0063ede2    83c9ff
                         shl               edx, 8                                        // 0x0063ede5    c1e208
                         xor.s             eax, eax                                      // 0x0063ede8    33c0
                         add               edx, 0x00d45634                               // 0x0063edea    81c23456d400
                         repne scasb                                                     // 0x0063edf0    f2ae
                         not               ecx                                           // 0x0063edf2    f7d1
                         sub.s             edi, ecx                                      // 0x0063edf4    2bf9
                         mov.s             eax, ecx                                      // 0x0063edf6    8bc1
                         mov.s             esi, edi                                      // 0x0063edf8    8bf7
                         shr               ecx, 2                                        // 0x0063edfa    c1e902
                         mov.s             edi, edx                                      // 0x0063edfd    8bfa
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x0063edff    f3a5
                         mov.s             ecx, eax                                      // 0x0063ee01    8bc8
                         and               ecx, 0x03                                     // 0x0063ee03    83e103
                         rep movsb                                                       // 0x0063ee06    f3a4
                         pop               edi                                           // 0x0063ee08    5f
                         pop               esi                                           // 0x0063ee09    5e
                         ret                                                             // 0x0063ee0a    c3
                         call              ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0063ee0b    e8e929dcff
_jmp_addr_0x0063ee10:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0063ee10    8b442404
                         add               eax, -0x0b                                    // 0x0063ee14    83c0f5
                         cmp               eax, 0x27                                     // 0x0063ee17    83f827
                         {disp8} ja        _jmp_addr_0x0063ee93                          // 0x0063ee1a    7777
                         xor.s             ecx, ecx                                      // 0x0063ee1c    33c9
                         {disp32} mov      cl, byte ptr [eax + 0x0063eec8]               // 0x0063ee1e    8a88c8ee6300
                         jmp               dword ptr [ecx*4 + 0x63eea0]                  // 0x0063ee24    ff248da0ee6300
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000001 // 0x0063ee2b    c705606ad40001000000
                         ret               0x0004                                        // 0x0063ee35    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000002 // 0x0063ee38    c705606ad40002000000
                         ret               0x0004                                        // 0x0063ee42    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000003 // 0x0063ee45    c705606ad40003000000
                         ret               0x0004                                        // 0x0063ee4f    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000004 // 0x0063ee52    c705606ad40004000000
                         ret               0x0004                                        // 0x0063ee5c    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000005 // 0x0063ee5f    c705606ad40005000000
                         ret               0x0004                                        // 0x0063ee69    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000006 // 0x0063ee6c    c705606ad40006000000
                         ret               0x0004                                        // 0x0063ee76    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000007 // 0x0063ee79    c705606ad40007000000
                         ret               0x0004                                        // 0x0063ee83    c20400
                         {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000008 // 0x0063ee86    c705606ad40008000000
                         ret               0x0004                                        // 0x0063ee90    c20400
_jmp_addr_0x0063ee93:    {disp32} mov      dword ptr [data_bytes + 0x380a60], 0x00000000 // 0x0063ee93    c705606ad40000000000
                         ret               0x0004                                        // 0x0063ee9d    c20400

// Snippet: jmptbl, [0x0063eea0, 0x0063eec8)
.byte 0x93, 0xee, 0x63, 0x00      // 0x0063eea0
.byte 0x79, 0xee, 0x63, 0x00      // 0x0063eea4
.byte 0x5f, 0xee, 0x63, 0x00      // 0x0063eea8
.byte 0x45, 0xee, 0x63, 0x00      // 0x0063eeac
.byte 0x2b, 0xee, 0x63, 0x00      // 0x0063eeb0
.byte 0x6c, 0xee, 0x63, 0x00      // 0x0063eeb4
.byte 0x52, 0xee, 0x63, 0x00      // 0x0063eeb8
.byte 0x86, 0xee, 0x63, 0x00      // 0x0063eebc
.byte 0x38, 0xee, 0x63, 0x00      // 0x0063eec0
.byte 0x93, 0xee, 0x63, 0x00      // 0x0063eec4

// Snippet: ijmptbl, [0x0063eec8, 0x0063eef0)
.byte 0x00, 0x09, 0x09, 0x09      // 0x0063eec8
.byte 0x09, 0x09, 0x09, 0x09      // 0x0063eecc
.byte 0x09, 0x01, 0x09, 0x09      // 0x0063eed0
.byte 0x09, 0x09, 0x09, 0x09      // 0x0063eed4
.byte 0x09, 0x09, 0x09, 0x09      // 0x0063eed8
.byte 0x09, 0x02, 0x09, 0x03      // 0x0063eedc
.byte 0x09, 0x04, 0x05, 0x09      // 0x0063eee0
.byte 0x09, 0x09, 0x09, 0x09      // 0x0063eee4
.byte 0x09, 0x09, 0x09, 0x06      // 0x0063eee8
.byte 0x09, 0x07, 0x09, 0x08      // 0x0063eeec

