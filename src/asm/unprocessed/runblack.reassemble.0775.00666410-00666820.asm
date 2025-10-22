.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?__nw@Base@@SAPAXK@Z
.extern @__pl__9MapCoordsCFRC9MapCoords@16
.extern @GetLHPoint__9MapCoordsCFv@12
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z_2
.extern _jmp_addr_0x00605cf0
.extern _jmp_addr_0x0064d360
.extern _jmp_addr_0x00650280
.extern _jmp_addr_0x00650d70
.extern _jmp_addr_0x00650ea0
.extern _jmp_addr_0x00650f90
.extern _jmp_addr_0x006510f0
.extern _jmp_addr_0x00651120
.extern _jmp_addr_0x006511b0
.extern _jmp_addr_0x00651210
.extern _jmp_addr_0x00657fe0
.extern _jmp_addr_0x00726380
.extern ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z

.globl _jmp_addr_0x00666410

start_0x00666410_0x00666820:
// Snippet: asm, [0x00666410, 0x006667ed)
_jmp_addr_0x00666410:    sub              esp, 0x68                         // 0x00666410    83ec68
                         push             ebx                               // 0x00666413    53
                         push             ebp                               // 0x00666414    55
                         push             esi                               // 0x00666415    56
                         push             edi                               // 0x00666416    57
                         {disp32} mov     edi, dword ptr [esp + 0x00000080] // 0x00666417    8bbc2480000000
                         mov.s            ebp, ecx                          // 0x0066641e    8be9
                         mov.s            ecx, edi                          // 0x00666420    8bcf
                         call             _jmp_addr_0x00726380              // 0x00666422    e859ff0b00
                         mov.s            esi, eax                          // 0x00666427    8bf0
                         {disp8} lea      eax, dword ptr [esp + 0x18]       // 0x00666429    8d442418
                         push             eax                               // 0x0066642d    50
                         mov.s            ecx, ebp                          // 0x0066642e    8bcd
                         {disp8} mov      dword ptr [esp + 0x14], esi       // 0x00666430    89742414
                         call             _jmp_addr_0x00657fe0              // 0x00666434    e8a71bffff
                         {disp8} mov      ebx, dword ptr [esp + 0x7c]       // 0x00666439    8b5c247c
                         push             eax                               // 0x0066643d    50
                         mov.s            ecx, ebx                          // 0x0066643e    8bcb
                         call             _jmp_addr_0x00605cf0              // 0x00666440    e8abf8f9ff
                         {disp8} fstp     dword ptr [esp + 0x14]            // 0x00666445    d95c2414
                         {disp32} mov     ecx, dword ptr [esp + 0x00000084] // 0x00666449    8b8c2484000000
                         {disp8} mov      edx, dword ptr [esp + 0x14]       // 0x00666450    8b542414
                         push             ecx                               // 0x00666454    51
                         push             edx                               // 0x00666455    52
                         {disp8} lea      eax, dword ptr [esp + 0x20]       // 0x00666456    8d442420
                         push             eax                               // 0x0066645a    50
                         call             ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z      // 0x0066645b    e820710e00
                         add              esp, 0x0c                         // 0x00666460    83c40c
                         push             eax                               // 0x00666463    50
                         {disp8} lea      ecx, dword ptr [esp + 0x28]       // 0x00666464    8d4c2428
                         push             ecx                               // 0x00666468    51
                         mov.s            ecx, ebx                          // 0x00666469    8bcb
                         call             @__pl__9MapCoordsCFRC9MapCoords@16// 0x0066646b    e8b0f0f9ff
                         {disp8} lea      eax, dword ptr [esi + -0x01]      // 0x00666470    8d46ff
                         cmp              eax, 0x18                         // 0x00666473    83f818
                         {disp32} ja      _jmp_addr_0x006667e1              // 0x00666476    0f8765030000
                         xor.s            edx, edx                          // 0x0066647c    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x006667fc]   // 0x0066647e    8a90fc676600
                         jmp              dword ptr [edx*4 + 0x6667f0]      // 0x00666484    ff2495f0676600
                         {disp8} mov      edx, dword ptr [ebp + 0x00]       // 0x0066648b    8b5500
                         {disp8} lea      eax, dword ptr [esp + 0x18]       // 0x0066648e    8d442418
                         push             eax                               // 0x00666492    50
                         {disp8} lea      ecx, dword ptr [esp + 0x28]       // 0x00666493    8d4c2428
                         xor.s            edi, edi                          // 0x00666497    33ff
                         push             ecx                               // 0x00666499    51
                         mov.s            ecx, ebp                          // 0x0066649a    8bcd
                         {disp8} mov      dword ptr [esp + 0x20], edi       // 0x0066649c    897c2420
                         {disp8} mov      dword ptr [esp + 0x24], edi       // 0x006664a0    897c2424
                         {disp8} mov      dword ptr [esp + 0x28], edi       // 0x006664a4    897c2428
                         call             dword ptr [edx + 0x1c]            // 0x006664a8    ff521c
                         mov.s            ecx, eax                          // 0x006664ab    8bc8
                         call             _jmp_addr_0x0064d360              // 0x006664ad    e8ae6efeff
                         test             al, al                            // 0x006664b2    84c0
                         {disp32} je      _jmp_addr_0x006667e1              // 0x006664b4    0f8427030000
                         {disp8} lea      eax, dword ptr [esp + 0x18]       // 0x006664ba    8d442418
                         push             eax                               // 0x006664be    50
                         {disp8} lea      ecx, dword ptr [esp + 0x28]       // 0x006664bf    8d4c2428
                         call             _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2              // 0x006664c3    e808f8f9ff
                         fstp             st(0)                             // 0x006664c8    ddd8
                         push             0x00000112                        // 0x006664ca    6812010000
                         push             0x00c01cc4                        // 0x006664cf    68c41cc000
                         push             0x74                              // 0x006664d4    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x006664d6    e81502ddff
                         mov.s            esi, eax                          // 0x006664db    8bf0
                         add              esp, 0x0c                         // 0x006664dd    83c40c
                         cmp.s            esi, edi                          // 0x006664e0    3bf7
                         {disp8} je       _jmp_addr_0x006664fc              // 0x006664e2    7418
                         {disp8} lea      ecx, dword ptr [esp + 0x30]       // 0x006664e4    8d4c2430
                         push             ecx                               // 0x006664e8    51
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]       // 0x006664e9    8d4c241c
                         call             @GetLHPoint__9MapCoordsCFv@12     // 0x006664ed    e84ef7f9ff
                         push             eax                               // 0x006664f2    50
                         mov.s            ecx, esi                          // 0x006664f3    8bce
                         call             _jmp_addr_0x00651120              // 0x006664f5    e826acfeff
                         {disp8} jmp      _jmp_addr_0x006664fe              // 0x006664fa    eb02
_jmp_addr_0x006664fc:    xor.s            eax, eax                          // 0x006664fc    33c0
_jmp_addr_0x006664fe:    push             eax                               // 0x006664fe    50
                         call             _jmp_addr_0x00650d70              // 0x006664ff    e86ca8feff
                         {disp8} mov      ecx, dword ptr [ebp + 0x34]       // 0x00666504    8b4d34
                         add              esp, 0x04                         // 0x00666507    83c404
                         push             eax                               // 0x0066650a    50
                         push             0x1                               // 0x0066650b    6a01
                         call             _jmp_addr_0x00650280              // 0x0066650d    e86e9dfeff
                         push             0x00000115                        // 0x00666512    6815010000
                         push             0x00c01cc4                        // 0x00666517    68c41cc000
                         push             0x74                              // 0x0066651c    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x0066651e    e8cd01ddff
                         mov.s            esi, eax                          // 0x00666523    8bf0
                         add              esp, 0x0c                         // 0x00666525    83c40c
                         cmp.s            esi, edi                          // 0x00666528    3bf7
                         {disp8} je       _jmp_addr_0x00666544              // 0x0066652a    7418
                         {disp8} lea      edx, dword ptr [esp + 0x3c]       // 0x0066652c    8d54243c
                         push             edx                               // 0x00666530    52
                         {disp8} lea      ecx, dword ptr [esp + 0x28]       // 0x00666531    8d4c2428
                         call             @GetLHPoint__9MapCoordsCFv@12     // 0x00666535    e806f7f9ff
                         push             eax                               // 0x0066653a    50
                         mov.s            ecx, esi                          // 0x0066653b    8bce
                         call             _jmp_addr_0x00651120              // 0x0066653d    e8deabfeff
                         {disp8} jmp      _jmp_addr_0x00666546              // 0x00666542    eb02
_jmp_addr_0x00666544:    xor.s            eax, eax                          // 0x00666544    33c0
_jmp_addr_0x00666546:    push             eax                               // 0x00666546    50
                         call             _jmp_addr_0x00650d70              // 0x00666547    e824a8feff
                         {disp8} mov      ecx, dword ptr [ebp + 0x34]       // 0x0066654c    8b4d34
                         add              esp, 0x04                         // 0x0066654f    83c404
                         push             eax                               // 0x00666552    50
                         push             0x6                               // 0x00666553    6a06
                         call             _jmp_addr_0x00650280              // 0x00666555    e8269dfeff
                         push             0x0000011a                        // 0x0066655a    681a010000
                         push             0x00c01cc4                        // 0x0066655f    68c41cc000
                         push             0x74                              // 0x00666564    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x00666566    e88501ddff
                         add              esp, 0x0c                         // 0x0066656b    83c40c
                         cmp.s            eax, edi                          // 0x0066656e    3bc7
                         {disp8} je       _jmp_addr_0x00666585              // 0x00666570    7413
                         {disp32} mov     ecx, dword ptr [esp + 0x00000080] // 0x00666572    8b8c2480000000
                         push             ecx                               // 0x00666579    51
                         mov.s            ecx, eax                          // 0x0066657a    8bc8
                         call             _jmp_addr_0x006510f0              // 0x0066657c    e86fabfeff
                         mov.s            ebx, eax                          // 0x00666581    8bd8
                         {disp8} jmp      _jmp_addr_0x00666587              // 0x00666583    eb02
_jmp_addr_0x00666585:    xor.s            ebx, ebx                          // 0x00666585    33db
_jmp_addr_0x00666587:    push             0x00000119                        // 0x00666587    6819010000
                         push             0x00c01cc4                        // 0x0066658c    68c41cc000
                         push             0x74                              // 0x00666591    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x00666593    e85801ddff
                         add              esp, 0x0c                         // 0x00666598    83c40c
                         cmp.s            eax, edi                          // 0x0066659b    3bc7
                         {disp8} je       _jmp_addr_0x006665ad              // 0x0066659d    740e
                         {disp8} mov      edx, dword ptr [esp + 0x10]       // 0x0066659f    8b542410
                         push             edx                               // 0x006665a3    52
                         mov.s            ecx, eax                          // 0x006665a4    8bc8
                         call             _jmp_addr_0x006511b0              // 0x006665a6    e805acfeff
                         mov.s            edi, eax                          // 0x006665ab    8bf8
_jmp_addr_0x006665ad:    push             0x00000118                        // 0x006665ad    6818010000
                         push             0x00c01cc4                        // 0x006665b2    68c41cc000
                         push             0x74                              // 0x006665b7    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x006665b9    e83201ddff
                         mov.s            esi, eax                          // 0x006665be    8bf0
                         add              esp, 0x0c                         // 0x006665c0    83c40c
                         test             esi, esi                          // 0x006665c3    85f6
                         {disp8} je       _jmp_addr_0x006665ff              // 0x006665c5    7438
                         {disp8} lea      eax, dword ptr [esp + 0x48]       // 0x006665c7    8d442448
                         push             eax                               // 0x006665cb    50
                         {disp8} lea      ecx, dword ptr [esp + 0x28]       // 0x006665cc    8d4c2428
                         call             @GetLHPoint__9MapCoordsCFv@12     // 0x006665d0    e86bf6f9ff
                         push             eax                               // 0x006665d5    50
                         mov.s            ecx, esi                          // 0x006665d6    8bce
                         call             _jmp_addr_0x00651120              // 0x006665d8    e843abfeff
                         push             ebx                               // 0x006665dd    53
                         push             edi                               // 0x006665de    57
                         push             eax                               // 0x006665df    50
                         call             _jmp_addr_0x00650ea0              // 0x006665e0    e8bba8feff
                         {disp8} mov      ecx, dword ptr [ebp + 0x34]       // 0x006665e5    8b4d34
                         add              esp, 0x0c                         // 0x006665e8    83c40c
                         push             eax                               // 0x006665eb    50
                         push             0x11                              // 0x006665ec    6a11
                         call             _jmp_addr_0x00650280              // 0x006665ee    e88d9cfeff
                         pop              edi                               // 0x006665f3    5f
                         pop              esi                               // 0x006665f4    5e
                         pop              ebp                               // 0x006665f5    5d
                         mov              al, 0x01                          // 0x006665f6    b001
                         pop              ebx                               // 0x006665f8    5b
                         add              esp, 0x68                         // 0x006665f9    83c468
                         ret              0x000c                            // 0x006665fc    c20c00
_jmp_addr_0x006665ff:    push             ebx                               // 0x006665ff    53
                         xor.s            eax, eax                          // 0x00666600    33c0
                         push             edi                               // 0x00666602    57
                         push             eax                               // 0x00666603    50
                         call             _jmp_addr_0x00650ea0              // 0x00666604    e897a8feff
                         {disp8} mov      ecx, dword ptr [ebp + 0x34]       // 0x00666609    8b4d34
                         add              esp, 0x0c                         // 0x0066660c    83c40c
                         push             eax                               // 0x0066660f    50
                         push             0x11                              // 0x00666610    6a11
                         call             _jmp_addr_0x00650280              // 0x00666612    e8699cfeff
                         pop              edi                               // 0x00666617    5f
                         pop              esi                               // 0x00666618    5e
                         pop              ebp                               // 0x00666619    5d
                         mov              al, 0x01                          // 0x0066661a    b001
                         pop              ebx                               // 0x0066661c    5b
                         add              esp, 0x68                         // 0x0066661d    83c468
                         ret              0x000c                            // 0x00666620    c20c00
                         push             0x0000012f                        // 0x00666623    682f010000
                         push             0x00c01cc4                        // 0x00666628    68c41cc000
                         push             0x74                              // 0x0066662d    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x0066662f    e8bc00ddff
                         add              esp, 0x0c                         // 0x00666634    83c40c
                         test             eax, eax                          // 0x00666637    85c0
                         {disp8} je       _jmp_addr_0x00666647              // 0x00666639    740c
                         push             edi                               // 0x0066663b    57
                         mov.s            ecx, eax                          // 0x0066663c    8bc8
                         call             _jmp_addr_0x006510f0              // 0x0066663e    e8adaafeff
                         mov.s            ebx, eax                          // 0x00666643    8bd8
                         {disp8} jmp      _jmp_addr_0x00666649              // 0x00666645    eb02
_jmp_addr_0x00666647:    xor.s            ebx, ebx                          // 0x00666647    33db
_jmp_addr_0x00666649:    push             0x0000012e                        // 0x00666649    682e010000
                         push             0x00c01cc4                        // 0x0066664e    68c41cc000
                         push             0x74                              // 0x00666653    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x00666655    e89600ddff
                         add              esp, 0x0c                         // 0x0066665a    83c40c
                         test             eax, eax                          // 0x0066665d    85c0
                         {disp8} je       _jmp_addr_0x0066666d              // 0x0066665f    740c
                         push             esi                               // 0x00666661    56
                         mov.s            ecx, eax                          // 0x00666662    8bc8
                         call             _jmp_addr_0x006511b0              // 0x00666664    e847abfeff
                         mov.s            edi, eax                          // 0x00666669    8bf8
                         {disp8} jmp      _jmp_addr_0x0066666f              // 0x0066666b    eb02
_jmp_addr_0x0066666d:    xor.s            edi, edi                          // 0x0066666d    33ff
_jmp_addr_0x0066666f:    push             0x0000012d                        // 0x0066666f    682d010000
                         push             0x00c01cc4                        // 0x00666674    68c41cc000
                         push             0x74                              // 0x00666679    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x0066667b    e87000ddff
                         mov.s            esi, eax                          // 0x00666680    8bf0
                         add              esp, 0x0c                         // 0x00666682    83c40c
                         test             esi, esi                          // 0x00666685    85f6
                         {disp8} je       _jmp_addr_0x006666a1              // 0x00666687    7418
                         {disp8} lea      ecx, dword ptr [esp + 0x54]       // 0x00666689    8d4c2454
                         push             ecx                               // 0x0066668d    51
                         {disp8} lea      ecx, dword ptr [esp + 0x28]       // 0x0066668e    8d4c2428
                         call             @GetLHPoint__9MapCoordsCFv@12     // 0x00666692    e8a9f5f9ff
                         push             eax                               // 0x00666697    50
                         mov.s            ecx, esi                          // 0x00666698    8bce
                         call             _jmp_addr_0x00651120              // 0x0066669a    e881aafeff
                         {disp8} jmp      _jmp_addr_0x006666a3              // 0x0066669f    eb02
_jmp_addr_0x006666a1:    xor.s            eax, eax                          // 0x006666a1    33c0
_jmp_addr_0x006666a3:    push             ebx                               // 0x006666a3    53
                         push             edi                               // 0x006666a4    57
                         push             eax                               // 0x006666a5    50
                         call             _jmp_addr_0x00650ea0              // 0x006666a6    e8f5a7feff
                         {disp8} mov      ecx, dword ptr [ebp + 0x34]       // 0x006666ab    8b4d34
                         add              esp, 0x0c                         // 0x006666ae    83c40c
                         push             eax                               // 0x006666b1    50
                         push             0x10                              // 0x006666b2    6a10
                         call             _jmp_addr_0x00650280              // 0x006666b4    e8c79bfeff
                         {disp8} mov      ebx, dword ptr [esp + 0x7c]       // 0x006666b9    8b5c247c
                         push             0x0000013b                        // 0x006666bd    683b010000
                         push             0x00c01cc4                        // 0x006666c2    68c41cc000
                         push             0x74                              // 0x006666c7    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x006666c9    e82200ddff
                         mov.s            esi, eax                          // 0x006666ce    8bf0
                         xor.s            edi, edi                          // 0x006666d0    33ff
                         add              esp, 0x0c                         // 0x006666d2    83c40c
                         cmp.s            esi, edi                          // 0x006666d5    3bf7
                         {disp8} je       _jmp_addr_0x006666ef              // 0x006666d7    7416
                         {disp8} lea      edx, dword ptr [esp + 0x60]       // 0x006666d9    8d542460
                         push             edx                               // 0x006666dd    52
                         mov.s            ecx, ebx                          // 0x006666de    8bcb
                         call             @GetLHPoint__9MapCoordsCFv@12     // 0x006666e0    e85bf5f9ff
                         push             eax                               // 0x006666e5    50
                         mov.s            ecx, esi                          // 0x006666e6    8bce
                         call             _jmp_addr_0x00651120              // 0x006666e8    e833aafeff
                         {disp8} jmp      _jmp_addr_0x006666f1              // 0x006666ed    eb02
_jmp_addr_0x006666ef:    xor.s            eax, eax                          // 0x006666ef    33c0
_jmp_addr_0x006666f1:    push             eax                               // 0x006666f1    50
                         call             _jmp_addr_0x00650d70              // 0x006666f2    e879a6feff
                         {disp8} mov      ecx, dword ptr [ebp + 0x34]       // 0x006666f7    8b4d34
                         add              esp, 0x04                         // 0x006666fa    83c404
                         push             eax                               // 0x006666fd    50
                         push             0x1                               // 0x006666fe    6a01
                         call             _jmp_addr_0x00650280              // 0x00666700    e87b9bfeff
                         push             0x00000141                        // 0x00666705    6841010000
                         push             0x00c01cc4                        // 0x0066670a    68c41cc000
                         push             0x74                              // 0x0066670f    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x00666711    e8daffdcff
                         add              esp, 0x0c                         // 0x00666716    83c40c
                         cmp.s            eax, edi                          // 0x00666719    3bc7
                         {disp8} je       _jmp_addr_0x00666735              // 0x0066671b    7418
                         {disp32} mov     ecx, dword ptr [esp + 0x00000080] // 0x0066671d    8b8c2480000000
                         push             ecx                               // 0x00666724    51
                         mov.s            ecx, eax                          // 0x00666725    8bc8
                         call             _jmp_addr_0x006510f0              // 0x00666727    e8c4a9feff
                         {disp32} mov     dword ptr [esp + 0x00000080], eax // 0x0066672c    89842480000000
                         {disp8} jmp      _jmp_addr_0x0066673c              // 0x00666733    eb07
_jmp_addr_0x00666735:    {disp32} mov     dword ptr [esp + 0x00000080], edi // 0x00666735    89bc2480000000
_jmp_addr_0x0066673c:    push             0x00000140                        // 0x0066673c    6840010000
                         push             0x00c01cc4                        // 0x00666741    68c41cc000
                         push             0x74                              // 0x00666746    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x00666748    e8a3ffdcff
                         add              esp, 0x0c                         // 0x0066674d    83c40c
                         cmp.s            eax, edi                          // 0x00666750    3bc7
                         {disp8} je       _jmp_addr_0x00666767              // 0x00666752    7413
                         {disp32} mov     edx, dword ptr [esp + 0x00000084] // 0x00666754    8b942484000000
                         push             edx                               // 0x0066675b    52
                         mov.s            ecx, eax                          // 0x0066675c    8bc8
                         call             _jmp_addr_0x00651210              // 0x0066675e    e8adaafeff
                         mov.s            ebx, eax                          // 0x00666763    8bd8
                         {disp8} jmp      _jmp_addr_0x00666769              // 0x00666765    eb02
_jmp_addr_0x00666767:    xor.s            ebx, ebx                          // 0x00666767    33db
_jmp_addr_0x00666769:    push             0x0000013f                        // 0x00666769    683f010000
                         push             0x00c01cc4                        // 0x0066676e    68c41cc000
                         push             0x74                              // 0x00666773    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x00666775    e876ffdcff
                         add              esp, 0x0c                         // 0x0066677a    83c40c
                         cmp.s            eax, edi                          // 0x0066677d    3bc7
                         {disp8} je       _jmp_addr_0x0066678f              // 0x0066677f    740e
                         {disp8} mov      ecx, dword ptr [esp + 0x10]       // 0x00666781    8b4c2410
                         push             ecx                               // 0x00666785    51
                         mov.s            ecx, eax                          // 0x00666786    8bc8
                         call             _jmp_addr_0x006511b0              // 0x00666788    e823aafeff
                         mov.s            edi, eax                          // 0x0066678d    8bf8
_jmp_addr_0x0066678f:    push             0x0000013e                        // 0x0066678f    683e010000
                         push             0x00c01cc4                        // 0x00666794    68c41cc000
                         push             0x74                              // 0x00666799    6a74
                         call             ?__nw@Base@@SAPAXK@Z              // 0x0066679b    e850ffdcff
                         mov.s            esi, eax                          // 0x006667a0    8bf0
                         add              esp, 0x0c                         // 0x006667a2    83c40c
                         test             esi, esi                          // 0x006667a5    85f6
                         {disp8} je       _jmp_addr_0x006667c1              // 0x006667a7    7418
                         {disp8} mov      ecx, dword ptr [esp + 0x7c]       // 0x006667a9    8b4c247c
                         {disp8} lea      edx, dword ptr [esp + 0x6c]       // 0x006667ad    8d54246c
                         push             edx                               // 0x006667b1    52
                         call             @GetLHPoint__9MapCoordsCFv@12     // 0x006667b2    e889f4f9ff
                         push             eax                               // 0x006667b7    50
                         mov.s            ecx, esi                          // 0x006667b8    8bce
                         call             _jmp_addr_0x00651120              // 0x006667ba    e861a9feff
                         {disp8} jmp      _jmp_addr_0x006667c3              // 0x006667bf    eb02
_jmp_addr_0x006667c1:    xor.s            eax, eax                          // 0x006667c1    33c0
_jmp_addr_0x006667c3:    {disp32} mov     ecx, dword ptr [esp + 0x00000080] // 0x006667c3    8b8c2480000000
                         push             ecx                               // 0x006667ca    51
                         push             ebx                               // 0x006667cb    53
                         push             edi                               // 0x006667cc    57
                         push             eax                               // 0x006667cd    50
                         call             _jmp_addr_0x00650f90              // 0x006667ce    e8bda7feff
                         {disp8} mov      ecx, dword ptr [ebp + 0x34]       // 0x006667d3    8b4d34
                         add              esp, 0x10                         // 0x006667d6    83c410
                         push             eax                               // 0x006667d9    50
                         push             0x12                              // 0x006667da    6a12
                         call             _jmp_addr_0x00650280              // 0x006667dc    e89f9afeff
_jmp_addr_0x006667e1:    pop              edi                               // 0x006667e1    5f
                         pop              esi                               // 0x006667e2    5e
                         pop              ebp                               // 0x006667e3    5d
                         mov              al, 0x01                          // 0x006667e4    b001
                         pop              ebx                               // 0x006667e6    5b
                         add              esp, 0x68                         // 0x006667e7    83c468
                         ret              0x000c                            // 0x006667ea    c20c00

// Snippet: db, [0x006667ed, 0x006667f0)
.byte 0x8d, 0x49, 0x00            // 0x006667ed

// Snippet: jmptbl, [0x006667f0, 0x006667fc)
.byte 0x8b, 0x64, 0x66, 0x00      // 0x006667f0
.byte 0x23, 0x66, 0x66, 0x00      // 0x006667f4
.byte 0xbd, 0x66, 0x66, 0x00      // 0x006667f8

// Snippet: ijmptbl, [0x006667fc, 0x00666815)
.byte 0x00, 0x00, 0x00, 0x00      // 0x006667fc
.byte 0x00, 0x00, 0x01, 0x01      // 0x00666800
.byte 0x01, 0x01, 0x01, 0x01      // 0x00666804
.byte 0x01, 0x01, 0x01, 0x02      // 0x00666808
.byte 0x02, 0x02, 0x02, 0x02      // 0x0066680c
.byte 0x01, 0x01, 0x01, 0x02      // 0x00666810
.byte 0x02                        // 0x00666814

// Snippet: db, [0x00666815, 0x00666820)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00666815
.byte 0x90, 0x90, 0x90, 0x90      // 0x00666819
.byte 0x90, 0x90, 0x90            // 0x0066681d

