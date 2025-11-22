.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern _jmp_addr_0x00418a50
.extern @__ct__7LHPointFfff@20
.extern _jmp_addr_0x00470af0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005d8a10
.extern ?StopHelpScripts@GScript@@QAEXXZ
.extern _jmp_addr_0x006f0a80
.extern _jmp_addr_0x00794a80
.extern @TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d@17
.extern @UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.extern @UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.extern @Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.extern @Init__11InnerCameraFPc@12
.extern @ReloadCamera__11InnerCameraFPc@12
.extern ?Close@InnerCamera@@UAEXXZ
.extern _jmp_addr_0x00797760
.extern _jmp_addr_0x007a1400
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0086d4e0

.globl _jmp_addr_0x0079f5d0
.globl _jmp_addr_0x0079f640
.globl _jmp_addr_0x0079f790

.globl _globl_ct_0x0079f910
.globl _globl_ct_0x0079f940

start_0x0079f5d0_0x007a1360:
// Snippet: asm, [0x0079f5d0, 0x007a133b)
_jmp_addr_0x0079f5d0:    mov                eax, 0x00000001                               // 0x0079f5d0    b801000000
                         xor.s              edx, edx                                      // 0x0079f5d5    33d2
                         push               edi                                           // 0x0079f5d7    57
                         {disp32} mov       dword ptr [data_bytes + 0x2644ec], eax        // 0x0079f5d8    a3eca4c200
                         {disp32} mov       dword ptr [data_bytes + 0x2644f0], eax        // 0x0079f5dd    a3f0a4c200
                         {disp32} mov       dword ptr [data_bytes + 0x2644f4], eax        // 0x0079f5e2    a3f4a4c200
                         {disp32} mov       dword ptr [data_bytes + 0x2644f8], eax        // 0x0079f5e7    a3f8a4c200
                         {disp32} mov       dword ptr [data_bytes + 0x2644fc], eax        // 0x0079f5ec    a3fca4c200
                         mov                ecx, 0x00001000                               // 0x0079f5f1    b900100000
                         xor.s              eax, eax                                      // 0x0079f5f6    33c0
                         mov                edi, 0x00e36158                               // 0x0079f5f8    bf5861e300
                         rep stosd                                                        // 0x0079f5fd    f3ab
                         {disp32} mov       dword ptr [data_bytes + 0x474194], 0x00000000 // 0x0079f5ff    c70594a1e30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x474198], edx        // 0x0079f609    891598a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x47419c], edx        // 0x0079f60f    89159ca1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741a0], edx        // 0x0079f615    8915a0a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741a4], edx        // 0x0079f61b    8915a4a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741a8], edx        // 0x0079f621    8915a8a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741ac], edx        // 0x0079f627    8915aca1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741b0], edx        // 0x0079f62d    8915b0a1e300
                         pop                edi                                           // 0x0079f633    5f
                         ret                                                              // 0x0079f634    c3
                         nop                                                              // 0x0079f635    90
                         nop                                                              // 0x0079f636    90
                         nop                                                              // 0x0079f637    90
                         nop                                                              // 0x0079f638    90
                         nop                                                              // 0x0079f639    90
                         nop                                                              // 0x0079f63a    90
                         nop                                                              // 0x0079f63b    90
                         nop                                                              // 0x0079f63c    90
                         nop                                                              // 0x0079f63d    90
                         nop                                                              // 0x0079f63e    90
                         nop                                                              // 0x0079f63f    90
_jmp_addr_0x0079f640:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0079f640    a190c9be00
                         push               esi                                           // 0x0079f645    56
                         push               edi                                           // 0x0079f646    57
                         xor.s              edi, edi                                      // 0x0079f647    33ff
                         cmp.s              eax, edi                                      // 0x0079f649    3bc7
                         {disp32} je        _jmp_addr_0x0079f78c                          // 0x0079f64b    0f843b010000
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0079f651    8b74240c
                         push               edi                                           // 0x0079f655    57
                         push               0x4                                           // 0x0079f656    6a04
                         push               0x00c2a4ec                                    // 0x0079f658    68eca4c200
                         mov.s              ecx, esi                                      // 0x0079f65d    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0079f65f    e8bcd20100
                         cmp                eax, 0x03                                     // 0x0079f664    83f803
                         {disp8} jne        _jmp_addr_0x0079f66f                          // 0x0079f667    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], edi        // 0x0079f669    893d90c9be00
_jmp_addr_0x0079f66f:    {disp32} mov       eax, dword ptr [data_bytes + 0x2644ec]        // 0x0079f66f    a1eca4c200
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0079f674    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0079f67a    25ff000000
                         add                eax, 0x04                                     // 0x0079f67f    83c004
                         add.s              ecx, eax                                      // 0x0079f682    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0079f684    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], edi        // 0x0079f68a    393d90c9be00
                         {disp32} je        _jmp_addr_0x0079f78c                          // 0x0079f690    0f84f6000000
                         push               edi                                           // 0x0079f696    57
                         push               0x4                                           // 0x0079f697    6a04
                         push               0x00c2a4f8                                    // 0x0079f699    68f8a4c200
                         mov.s              ecx, esi                                      // 0x0079f69e    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0079f6a0    e87bd20100
                         cmp                eax, 0x03                                     // 0x0079f6a5    83f803
                         {disp8} jne        _jmp_addr_0x0079f6b0                          // 0x0079f6a8    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], edi        // 0x0079f6aa    893d90c9be00
_jmp_addr_0x0079f6b0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f8]        // 0x0079f6b0    8b0df8a4c200
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0079f6b6    8b9614020000
                         and                ecx, 0x000000ff                               // 0x0079f6bc    81e1ff000000
                         add                ecx, 0x4                                      // 0x0079f6c2    83c104
                         add.s              edx, ecx                                      // 0x0079f6c5    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0079f6c7    899614020000
                         cmp                dword ptr [data_bytes + 0x226990], edi        // 0x0079f6cd    393d90c9be00
                         {disp32} je        _jmp_addr_0x0079f78c                          // 0x0079f6d3    0f84b3000000
                         push               edi                                           // 0x0079f6d9    57
                         push               0x4                                           // 0x0079f6da    6a04
                         push               0x00c2a4f0                                    // 0x0079f6dc    68f0a4c200
                         mov.s              ecx, esi                                      // 0x0079f6e1    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0079f6e3    e838d20100
                         cmp                eax, 0x03                                     // 0x0079f6e8    83f803
                         {disp8} jne        _jmp_addr_0x0079f6f3                          // 0x0079f6eb    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], edi        // 0x0079f6ed    893d90c9be00
_jmp_addr_0x0079f6f3:    {disp32} mov       edx, dword ptr [data_bytes + 0x2644f0]        // 0x0079f6f3    8b15f0a4c200
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0079f6f9    8b8e14020000
                         and                edx, 0x000000ff                               // 0x0079f6ff    81e2ff000000
                         add                edx, 0x04                                     // 0x0079f705    83c204
                         add.s              ecx, edx                                      // 0x0079f708    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0079f70a    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], edi        // 0x0079f710    393d90c9be00
                         {disp8} je         _jmp_addr_0x0079f78c                          // 0x0079f716    7474
                         push               edi                                           // 0x0079f718    57
                         push               0x4                                           // 0x0079f719    6a04
                         push               0x00c2a4f4                                    // 0x0079f71b    68f4a4c200
                         mov.s              ecx, esi                                      // 0x0079f720    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0079f722    e8f9d10100
                         cmp                eax, 0x03                                     // 0x0079f727    83f803
                         {disp8} jne        _jmp_addr_0x0079f732                          // 0x0079f72a    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], edi        // 0x0079f72c    893d90c9be00
_jmp_addr_0x0079f732:    {disp32} mov       eax, dword ptr [data_bytes + 0x2644f4]        // 0x0079f732    a1f4a4c200
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0079f737    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0079f73d    25ff000000
                         add                eax, 0x04                                     // 0x0079f742    83c004
                         add.s              ecx, eax                                      // 0x0079f745    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0079f747    898e14020000
                         cmp                dword ptr [data_bytes + 0x226990], edi        // 0x0079f74d    393d90c9be00
                         {disp8} je         _jmp_addr_0x0079f78c                          // 0x0079f753    7437
                         push               edi                                           // 0x0079f755    57
                         push               0x4                                           // 0x0079f756    6a04
                         push               0x00c2a4fc                                    // 0x0079f758    68fca4c200
                         mov.s              ecx, esi                                      // 0x0079f75d    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0079f75f    e8bcd10100
                         cmp                eax, 0x03                                     // 0x0079f764    83f803
                         {disp8} jne        _jmp_addr_0x0079f76f                          // 0x0079f767    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226990], edi        // 0x0079f769    893d90c9be00
_jmp_addr_0x0079f76f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644fc]        // 0x0079f76f    8b0dfca4c200
                         {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0079f775    8b8614020000
                         and                ecx, 0x000000ff                               // 0x0079f77b    81e1ff000000
                         add                ecx, 0x4                                      // 0x0079f781    83c104
                         add.s              eax, ecx                                      // 0x0079f784    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0079f786    898614020000
_jmp_addr_0x0079f78c:    pop                edi                                           // 0x0079f78c    5f
                         pop                esi                                           // 0x0079f78d    5e
                         ret                                                              // 0x0079f78e    c3
                         nop                                                              // 0x0079f78f    90
_jmp_addr_0x0079f790:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0079f790    a194c9be00
                         push               esi                                           // 0x0079f795    56
                         push               edi                                           // 0x0079f796    57
                         xor.s              edi, edi                                      // 0x0079f797    33ff
                         cmp.s              eax, edi                                      // 0x0079f799    3bc7
                         {disp32} je        _jmp_addr_0x0079f8fc                          // 0x0079f79b    0f845b010000
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0079f7a1    8b74240c
                         push               edi                                           // 0x0079f7a5    57
                         push               0x4                                           // 0x0079f7a6    6a04
                         push               0x00c2a4ec                                    // 0x0079f7a8    68eca4c200
                         mov.s              ecx, esi                                      // 0x0079f7ad    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0079f7af    e82cd10100
                         cmp                eax, 0x03                                     // 0x0079f7b4    83f803
                         {disp8} jne        _jmp_addr_0x0079f7bf                          // 0x0079f7b7    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], edi        // 0x0079f7b9    893d94c9be00
_jmp_addr_0x0079f7bf:    {disp32} mov       eax, dword ptr [data_bytes + 0x2644ec]        // 0x0079f7bf    a1eca4c200
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0079f7c4    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0079f7ca    25ff000000
                         add                eax, 0x04                                     // 0x0079f7cf    83c004
                         add.s              ecx, eax                                      // 0x0079f7d2    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0079f7d4    898e14020000
                         cmp                dword ptr [data_bytes + 0x226994], edi        // 0x0079f7da    393d94c9be00
                         {disp32} je        _jmp_addr_0x0079f8e0                          // 0x0079f7e0    0f84fa000000
                         push               edi                                           // 0x0079f7e6    57
                         push               0x4                                           // 0x0079f7e7    6a04
                         push               0x00c2a4f8                                    // 0x0079f7e9    68f8a4c200
                         mov.s              ecx, esi                                      // 0x0079f7ee    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0079f7f0    e8ebd00100
                         cmp                eax, 0x03                                     // 0x0079f7f5    83f803
                         {disp8} jne        _jmp_addr_0x0079f800                          // 0x0079f7f8    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], edi        // 0x0079f7fa    893d94c9be00
_jmp_addr_0x0079f800:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f8]        // 0x0079f800    8b0df8a4c200
                         {disp32} mov       edx, dword ptr [esi + 0x00000214]             // 0x0079f806    8b9614020000
                         and                ecx, 0x000000ff                               // 0x0079f80c    81e1ff000000
                         add                ecx, 0x4                                      // 0x0079f812    83c104
                         add.s              edx, ecx                                      // 0x0079f815    03d1
                         {disp32} mov       dword ptr [esi + 0x00000214], edx             // 0x0079f817    899614020000
                         cmp                dword ptr [data_bytes + 0x226994], edi        // 0x0079f81d    393d94c9be00
                         {disp32} je        _jmp_addr_0x0079f8ef                          // 0x0079f823    0f84c6000000
                         push               edi                                           // 0x0079f829    57
                         push               0x4                                           // 0x0079f82a    6a04
                         push               0x00c2a4f0                                    // 0x0079f82c    68f0a4c200
                         mov.s              ecx, esi                                      // 0x0079f831    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0079f833    e8a8d00100
                         cmp                eax, 0x03                                     // 0x0079f838    83f803
                         {disp8} jne        _jmp_addr_0x0079f843                          // 0x0079f83b    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], edi        // 0x0079f83d    893d94c9be00
_jmp_addr_0x0079f843:    {disp32} mov       edx, dword ptr [data_bytes + 0x2644f0]        // 0x0079f843    8b15f0a4c200
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0079f849    8b8e14020000
                         and                edx, 0x000000ff                               // 0x0079f84f    81e2ff000000
                         add                edx, 0x04                                     // 0x0079f855    83c204
                         add.s              ecx, edx                                      // 0x0079f858    03ca
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0079f85a    898e14020000
                         cmp                dword ptr [data_bytes + 0x226994], edi        // 0x0079f860    393d94c9be00
                         {disp32} je        _jmp_addr_0x0079f8fc                          // 0x0079f866    0f8490000000
                         push               edi                                           // 0x0079f86c    57
                         push               0x4                                           // 0x0079f86d    6a04
                         push               0x00c2a4f4                                    // 0x0079f86f    68f4a4c200
                         mov.s              ecx, esi                                      // 0x0079f874    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0079f876    e865d00100
                         cmp                eax, 0x03                                     // 0x0079f87b    83f803
                         {disp8} jne        _jmp_addr_0x0079f886                          // 0x0079f87e    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], edi        // 0x0079f880    893d94c9be00
_jmp_addr_0x0079f886:    {disp32} mov       eax, dword ptr [data_bytes + 0x2644f4]        // 0x0079f886    a1f4a4c200
                         {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0079f88b    8b8e14020000
                         and                eax, 0x000000ff                               // 0x0079f891    25ff000000
                         add                eax, 0x04                                     // 0x0079f896    83c004
                         add.s              ecx, eax                                      // 0x0079f899    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0079f89b    898e14020000
                         cmp                dword ptr [data_bytes + 0x226994], edi        // 0x0079f8a1    393d94c9be00
                         {disp8} je         _jmp_addr_0x0079f8ef                          // 0x0079f8a7    7446
                         push               edi                                           // 0x0079f8a9    57
                         push               0x4                                           // 0x0079f8aa    6a04
                         push               0x00c2a4fc                                    // 0x0079f8ac    68fca4c200
                         mov.s              ecx, esi                                      // 0x0079f8b1    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0079f8b3    e828d00100
                         cmp                eax, 0x03                                     // 0x0079f8b8    83f803
                         {disp8} jne        _jmp_addr_0x0079f8c3                          // 0x0079f8bb    7506
                         {disp32} mov       dword ptr [data_bytes + 0x226994], edi        // 0x0079f8bd    893d94c9be00
_jmp_addr_0x0079f8c3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644fc]        // 0x0079f8c3    8b0dfca4c200
                         {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x0079f8c9    8b8614020000
                         and                ecx, 0x000000ff                               // 0x0079f8cf    81e1ff000000
                         add                ecx, 0x4                                      // 0x0079f8d5    83c104
                         add.s              eax, ecx                                      // 0x0079f8d8    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x0079f8da    898614020000
_jmp_addr_0x0079f8e0:    {disp32} mov       edx, dword ptr [data_bytes + 0x2644f4]        // 0x0079f8e0    8b15f4a4c200
                         pop                edi                                           // 0x0079f8e6    5f
                         {disp32} mov       dword ptr [data_bytes + 0x264478], edx        // 0x0079f8e7    891578a4c200
                         pop                esi                                           // 0x0079f8ed    5e
                         ret                                                              // 0x0079f8ee    c3
_jmp_addr_0x0079f8ef:    {disp32} mov       eax, dword ptr [data_bytes + 0x2644f4]        // 0x0079f8ef    a1f4a4c200
                         pop                edi                                           // 0x0079f8f4    5f
                         {disp32} mov       dword ptr [data_bytes + 0x264478], eax        // 0x0079f8f5    a378a4c200
                         pop                esi                                           // 0x0079f8fa    5e
                         ret                                                              // 0x0079f8fb    c3
_jmp_addr_0x0079f8fc:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2644f4]        // 0x0079f8fc    8b0df4a4c200
                         pop                edi                                           // 0x0079f902    5f
                         {disp32} mov       dword ptr [data_bytes + 0x264478], ecx        // 0x0079f903    890d78a4c200
                         pop                esi                                           // 0x0079f909    5e
                         ret                                                              // 0x0079f90a    c3
                         nop                                                              // 0x0079f90b    90
                         nop                                                              // 0x0079f90c    90
                         nop                                                              // 0x0079f90d    90
                         nop                                                              // 0x0079f90e    90
                         nop                                                              // 0x0079f90f    90
_globl_ct_0x0079f910:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0079f910    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0079f916    b001
                         test               al, cl                                        // 0x0079f918    84c8
                         {disp8} jne        _jmp_addr_0x0079f924                          // 0x0079f91a    7508
                         or.s               cl, al                                        // 0x0079f91c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0079f91e    880d34c9fa00
_jmp_addr_0x0079f924:    {disp32} jmp       _jmp_addr_0x0079f930                          // 0x0079f924    e907000000
                         nop                                                              // 0x0079f929    90
                         nop                                                              // 0x0079f92a    90
                         nop                                                              // 0x0079f92b    90
                         nop                                                              // 0x0079f92c    90
                         nop                                                              // 0x0079f92d    90
                         nop                                                              // 0x0079f92e    90
                         nop                                                              // 0x0079f92f    90
_jmp_addr_0x0079f930:    push               0x00407870                                    // 0x0079f930    6870784000
                         call               _atexit                                       // 0x0079f935    e8575e0200
                         pop                ecx                                           // 0x0079f93a    59
                         ret                                                              // 0x0079f93b    c3
                         nop                                                              // 0x0079f93c    90
                         nop                                                              // 0x0079f93d    90
                         nop                                                              // 0x0079f93e    90
                         nop                                                              // 0x0079f93f    90
_globl_ct_0x0079f940:    {disp32} jmp       _jmp_addr_0x0079f950                          // 0x0079f940    e90b000000
                         nop                                                              // 0x0079f945    90
                         nop                                                              // 0x0079f946    90
                         nop                                                              // 0x0079f947    90
                         nop                                                              // 0x0079f948    90
                         nop                                                              // 0x0079f949    90
                         nop                                                              // 0x0079f94a    90
                         nop                                                              // 0x0079f94b    90
                         nop                                                              // 0x0079f94c    90
                         nop                                                              // 0x0079f94d    90
                         nop                                                              // 0x0079f94e    90
                         nop                                                              // 0x0079f94f    90
_jmp_addr_0x0079f950:    {disp32} mov       dword ptr [data_bytes + 0x4741f8], 0xffffffff // 0x0079f950    c705f8a1e300ffffffff
                         ret                                                              // 0x0079f95a    c3
                         nop                                                              // 0x0079f95b    90
                         nop                                                              // 0x0079f95c    90
                         nop                                                              // 0x0079f95d    90
                         nop                                                              // 0x0079f95e    90
                         nop                                                              // 0x0079f95f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0079f960    8b442404
                         push               esi                                           // 0x0079f964    56
                         mov.s              esi, ecx                                      // 0x0079f965    8bf1
                         push               eax                                           // 0x0079f967    50
                         call               @Init__11InnerCameraFPc@12                    // 0x0079f968    e8d377ffff
                         xor.s              eax, eax                                      // 0x0079f96d    33c0
                         {disp32} mov       dword ptr [esi + 0x000004d4], 0x3f000000      // 0x0079f96f    c786d40400000000003f
                         {disp32} mov       dword ptr [esi + 0x000004d8], 0xffffffff      // 0x0079f979    c786d8040000ffffffff
                         {disp32} mov       dword ptr [esi + 0x00000450], eax             // 0x0079f983    898650040000
                         {disp32} mov       dword ptr [esi + 0x000004d0], eax             // 0x0079f989    8986d0040000
                         {disp32} mov       dword ptr [esi + 0x0000046c], eax             // 0x0079f98f    89866c040000
                         {disp32} mov       dword ptr [esi + 0x00000474], eax             // 0x0079f995    898674040000
                         {disp32} mov       dword ptr [esi + 0x00000470], eax             // 0x0079f99b    898670040000
                         {disp32} mov       dword ptr [esi + 0x0000048c], eax             // 0x0079f9a1    89868c040000
                         {disp32} mov       dword ptr [esi + 0x00000488], eax             // 0x0079f9a7    898688040000
                         {disp32} mov       dword ptr [esi + 0x00000484], eax             // 0x0079f9ad    898684040000
                         {disp32} mov       dword ptr [esi + 0x0000049c], eax             // 0x0079f9b3    89869c040000
                         {disp32} mov       dword ptr [esi + 0x00000498], eax             // 0x0079f9b9    898698040000
                         {disp32} mov       dword ptr [esi + 0x00000480], eax             // 0x0079f9bf    898680040000
                         {disp32} mov       dword ptr [esi + 0x00000494], eax             // 0x0079f9c5    898694040000
                         {disp32} mov       dword ptr [esi + 0x0000047c], eax             // 0x0079f9cb    89867c040000
                         {disp32} mov       dword ptr [esi + 0x00000490], eax             // 0x0079f9d1    898690040000
                         {disp32} mov       dword ptr [esi + 0x00000478], eax             // 0x0079f9d7    898678040000
                         {disp32} fld       dword ptr [esi + 0x000004d4]                  // 0x0079f9dd    d986d4040000
                         {disp32} fst       dword ptr [esi + 0x000004a4]                  // 0x0079f9e3    d996a4040000
                         {disp32} mov       dword ptr [esi + 0x000004b8], eax             // 0x0079f9e9    8986b8040000
                         {disp32} fst       dword ptr [esi + 0x000004a0]                  // 0x0079f9ef    d996a0040000
                         {disp32} mov       dword ptr [esi + 0x000004b4], eax             // 0x0079f9f5    8986b4040000
                         {disp32} fstp      dword ptr [esi + 0x000004bc]                  // 0x0079f9fb    d99ebc040000
                         {disp32} mov       dword ptr [esi + 0x000004cc], eax             // 0x0079fa01    8986cc040000
                         {disp32} mov       dword ptr [esi + 0x000004c8], eax             // 0x0079fa07    8986c8040000
                         {disp32} mov       dword ptr [esi + 0x000004b0], eax             // 0x0079fa0d    8986b0040000
                         {disp32} mov       dword ptr [esi + 0x000004c4], eax             // 0x0079fa13    8986c4040000
                         {disp32} mov       dword ptr [esi + 0x000004ac], eax             // 0x0079fa19    8986ac040000
                         {disp32} mov       dword ptr [esi + 0x000004c0], eax             // 0x0079fa1f    8986c0040000
                         {disp32} mov       dword ptr [esi + 0x000004a8], eax             // 0x0079fa25    8986a8040000
                         pop                esi                                           // 0x0079fa2b    5e
                         ret                0x0004                                        // 0x0079fa2c    c20400
                         nop                                                              // 0x0079fa2f    90
                         {disp32} jmp       ?Close@InnerCamera@@UAEXXZ                    // 0x0079fa30    e96b7affff
                         nop                                                              // 0x0079fa35    90
                         nop                                                              // 0x0079fa36    90
                         nop                                                              // 0x0079fa37    90
                         nop                                                              // 0x0079fa38    90
                         nop                                                              // 0x0079fa39    90
                         nop                                                              // 0x0079fa3a    90
                         nop                                                              // 0x0079fa3b    90
                         nop                                                              // 0x0079fa3c    90
                         nop                                                              // 0x0079fa3d    90
                         nop                                                              // 0x0079fa3e    90
                         nop                                                              // 0x0079fa3f    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0079fa40    8b44240c
                         sub                esp, 0x24                                     // 0x0079fa44    83ec24
                         push               ebx                                           // 0x0079fa47    53
                         {disp8} mov        ebx, dword ptr [esp + 0x2c]                   // 0x0079fa48    8b5c242c
                         push               esi                                           // 0x0079fa4c    56
                         push               edi                                           // 0x0079fa4d    57
                         {disp8} mov        edi, dword ptr [esp + 0x38]                   // 0x0079fa4e    8b7c2438
                         push               eax                                           // 0x0079fa52    50
                         push               edi                                           // 0x0079fa53    57
                         mov.s              esi, ecx                                      // 0x0079fa54    8bf1
                         push               ebx                                           // 0x0079fa56    53
                         {disp32} mov       dword ptr [esi + 0x0000046c], 0x00000000      // 0x0079fa57    c7866c04000000000000
                         call               @TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d@17                          // 0x0079fa61    e85a5dffff
                         test               bl, bl                                        // 0x0079fa66    84db
                         {disp32} je        _jmp_addr_0x0079fb7b                          // 0x0079fa68    0f840d010000
                         test               edi, edi                                      // 0x0079fa6e    85ff
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x0079fa70    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x60ad78ec            // 0x0079fa78    c7442438ec78ad60
                         {disp8} je         _jmp_addr_0x0079fa9c                          // 0x0079fa80    741a
                         fld                dword ptr [edi]                               // 0x0079fa82    d907
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0079fa84    8d442418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0079fa88    d95c2418
                         {disp8} fld        dword ptr [edi + 0x30]                        // 0x0079fa8c    d94730
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0079fa8f    d95c241c
                         {disp8} fld        dword ptr [edi + 0x60]                        // 0x0079fa93    d94760
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0079fa96    d95c2420
                         {disp8} jmp        _jmp_addr_0x0079fabd                          // 0x0079fa9a    eb21
_jmp_addr_0x0079fa9c:    {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]        // 0x0079fa9c    a1c01dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]        // 0x0079faa1    8b0db81dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]        // 0x0079faa7    8b15bc1dea00
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0079faad    89442420
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0079fab1    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0079fab5    8954241c
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0079fab9    8d442418
_jmp_addr_0x0079fabd:    mov                ecx, dword ptr [eax]                          // 0x0079fabd    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0079fabf    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0079fac2    8b4008
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0079fac5    894c240c
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0079fac9    89542410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0079facd    89442414
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000            // 0x0079fad1    c744243c00000000
_jmp_addr_0x0079fad9:    push               0x0                                           // 0x0079fad9    6a00
                         mov.s              ecx, esi                                      // 0x0079fadb    8bce
                         call               @ReloadCamera__11InnerCameraFPc@12            // 0x0079fadd    e83e79ffff
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0079fae2    d944243c
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x0079fae6    d80d28b28a00
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0079faec    8d4c2424
                         push               ecx                                           // 0x0079faf0    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0079faf1    8d54241c
                         push               edx                                           // 0x0079faf5    52
                         call               _jmp_addr_0x007a1400                          // 0x0079faf6    e805190000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000043c]             // 0x0079fafb    8b8e3c040000
                         push               eax                                           // 0x0079fb01    50
                         xor.s              edx, edx                                      // 0x0079fb02    33d2
                         call               _jmp_addr_0x0086d4e0                          // 0x0079fb04    e8d7d90c00
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0079fb09    d9442418
                         {disp8} fsub       dword ptr [esp + 0x0c]                        // 0x0079fb0d    d864240c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0079fb11    d944241c
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0079fb15    d8642410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0079fb19    d9442420
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0079fb1d    d8642414
                         fld                st(0)                                         // 0x0079fb21    d9c0
                         fmul               st, st(1)                                     // 0x0079fb23    d8c9
                         fld                st(2)                                         // 0x0079fb25    d9c2
                         fmul               st, st(3)                                     // 0x0079fb27    d8cb
                         faddp              st(1), st                                     // 0x0079fb29    dec1
                         fld                st(3)                                         // 0x0079fb2b    d9c3
                         fmul               st, st(4)                                     // 0x0079fb2d    d8cc
                         faddp              st(1), st                                     // 0x0079fb2f    dec1
                         fstp               st(3)                                         // 0x0079fb31    dddb
                         fstp               st(0)                                         // 0x0079fb33    ddd8
                         fstp               st(0)                                         // 0x0079fb35    ddd8
                         {disp8} fcom       dword ptr [esp + 0x38]                        // 0x0079fb37    d8542438
                         fnstsw             ax                                            // 0x0079fb3b    dfe0
                         test               ah, 0x01                                      // 0x0079fb3d    f6c401
                         {disp8} je         _jmp_addr_0x0079fb50                          // 0x0079fb40    740e
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0079fb42    8b44243c
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0079fb46    d95c2438
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0079fb4a    89442434
                         {disp8} jmp        _jmp_addr_0x0079fb52                          // 0x0079fb4e    eb02
_jmp_addr_0x0079fb50:    fstp               st(0)                                         // 0x0079fb50    ddd8
_jmp_addr_0x0079fb52:    {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0079fb52    d944243c
                         {disp32} fadd      dword ptr [__real@3dcccccd]                   // 0x0079fb56    d8052cb28a00
                         {disp8} fst        dword ptr [esp + 0x3c]                        // 0x0079fb5c    d954243c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]             // 0x0079fb60    d81d502c8c00
                         fnstsw             ax                                            // 0x0079fb66    dfe0
                         test               ah, 0x01                                      // 0x0079fb68    f6c401
                         {disp32} jne       _jmp_addr_0x0079fad9                          // 0x0079fb6b    0f8568ffffff
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0079fb71    8b4c2434
                         {disp32} mov       dword ptr [esi + 0x000003cc], ecx             // 0x0079fb75    898ecc030000
_jmp_addr_0x0079fb7b:    pop                edi                                           // 0x0079fb7b    5f
                         pop                esi                                           // 0x0079fb7c    5e
                         pop                ebx                                           // 0x0079fb7d    5b
                         add                esp, 0x24                                     // 0x0079fb7e    83c424
                         ret                0x000c                                        // 0x0079fb81    c20c00
                         nop                                                              // 0x0079fb84    90
                         nop                                                              // 0x0079fb85    90
                         nop                                                              // 0x0079fb86    90
                         nop                                                              // 0x0079fb87    90
                         nop                                                              // 0x0079fb88    90
                         nop                                                              // 0x0079fb89    90
                         nop                                                              // 0x0079fb8a    90
                         nop                                                              // 0x0079fb8b    90
                         nop                                                              // 0x0079fb8c    90
                         nop                                                              // 0x0079fb8d    90
                         nop                                                              // 0x0079fb8e    90
                         nop                                                              // 0x0079fb8f    90
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0079fb90    8b442418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0079fb94    8b542414
                         push               eax                                           // 0x0079fb98    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0079fb99    8b442414
                         push               edx                                           // 0x0079fb9d    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0079fb9e    8b542414
                         push               eax                                           // 0x0079fba2    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0079fba3    8b442414
                         push               edx                                           // 0x0079fba7    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0079fba8    8b542414
                         push               eax                                           // 0x0079fbac    50
                         push               edx                                           // 0x0079fbad    52
                         call               @Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29                          // 0x0079fbae    e8ad6fffff
                         ret                0x0018                                        // 0x0079fbb3    c21800
                         nop                                                              // 0x0079fbb6    90
                         nop                                                              // 0x0079fbb7    90
                         nop                                                              // 0x0079fbb8    90
                         nop                                                              // 0x0079fbb9    90
                         nop                                                              // 0x0079fbba    90
                         nop                                                              // 0x0079fbbb    90
                         nop                                                              // 0x0079fbbc    90
                         nop                                                              // 0x0079fbbd    90
                         nop                                                              // 0x0079fbbe    90
                         nop                                                              // 0x0079fbbf    90
                         {disp32} mov       eax, dword ptr [ecx + 0x00000438]             // 0x0079fbc0    8b8138040000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000124]             // 0x0079fbc6    8b9124010000
                         cmp.s              eax, edx                                      // 0x0079fbcc    3bc2
                         {disp32} je        _jmp_addr_0x0079fcc2                          // 0x0079fbce    0f84ee000000
                         dec                eax                                           // 0x0079fbd4    48
                         {disp8} je         _jmp_addr_0x0079fbef                          // 0x0079fbd5    7418
                         sub                eax, 0x03                                     // 0x0079fbd7    83e803
                         {disp32} jne       _jmp_addr_0x0079fcc2                          // 0x0079fbda    0f85e2000000
                         {disp32} mov       dword ptr [ecx + 0x00000124], 0x00000004      // 0x0079fbe0    c7812401000004000000
                         {disp32} jmp       _jmp_addr_0x0079fcc2                          // 0x0079fbea    e9d3000000
_jmp_addr_0x0079fbef:    cmp                dword ptr [ecx + 0x00000450], 0x3f800000      // 0x0079fbef    81b9500400000000803f
                         {disp32} mov       dword ptr [ecx + 0x0000044c], 0xffffffff      // 0x0079fbf9    c7814c040000ffffffff
                         {disp8} je         _jmp_addr_0x0079fc0e                          // 0x0079fc03    7409
                         cmp                edx, 0x04                                     // 0x0079fc05    83fa04
                         {disp32} je        _jmp_addr_0x0079fcb6                          // 0x0079fc08    0f84a8000000
_jmp_addr_0x0079fc0e:    {disp32} mov       dword ptr [ecx + 0x000004d4], 0x3f333333      // 0x0079fc0e    c781d40400003333333f
                         xor.s              eax, eax                                      // 0x0079fc18    33c0
                         {disp32} mov       dword ptr [ecx + 0x000004d0], eax             // 0x0079fc1a    8981d0040000
                         {disp32} mov       dword ptr [ecx + 0x00000474], eax             // 0x0079fc20    898174040000
                         {disp32} mov       dword ptr [ecx + 0x00000470], eax             // 0x0079fc26    898170040000
                         {disp32} mov       dword ptr [ecx + 0x0000048c], eax             // 0x0079fc2c    89818c040000
                         {disp32} mov       dword ptr [ecx + 0x00000488], eax             // 0x0079fc32    898188040000
                         {disp32} mov       dword ptr [ecx + 0x00000484], eax             // 0x0079fc38    898184040000
                         {disp32} mov       dword ptr [ecx + 0x0000049c], eax             // 0x0079fc3e    89819c040000
                         {disp32} mov       dword ptr [ecx + 0x00000498], eax             // 0x0079fc44    898198040000
                         {disp32} mov       dword ptr [ecx + 0x00000480], eax             // 0x0079fc4a    898180040000
                         {disp32} mov       dword ptr [ecx + 0x00000494], eax             // 0x0079fc50    898194040000
                         {disp32} mov       dword ptr [ecx + 0x0000047c], eax             // 0x0079fc56    89817c040000
                         {disp32} mov       dword ptr [ecx + 0x00000490], eax             // 0x0079fc5c    898190040000
                         {disp32} mov       dword ptr [ecx + 0x00000478], eax             // 0x0079fc62    898178040000
                         {disp32} fld       dword ptr [ecx + 0x000004d4]                  // 0x0079fc68    d981d4040000
                         {disp32} fst       dword ptr [ecx + 0x000004a4]                  // 0x0079fc6e    d991a4040000
                         {disp32} mov       dword ptr [ecx + 0x000004b8], eax             // 0x0079fc74    8981b8040000
                         {disp32} fst       dword ptr [ecx + 0x000004a0]                  // 0x0079fc7a    d991a0040000
                         {disp32} mov       dword ptr [ecx + 0x000004b4], eax             // 0x0079fc80    8981b4040000
                         {disp32} fstp      dword ptr [ecx + 0x000004bc]                  // 0x0079fc86    d999bc040000
                         {disp32} mov       dword ptr [ecx + 0x000004cc], eax             // 0x0079fc8c    8981cc040000
                         {disp32} mov       dword ptr [ecx + 0x000004c8], eax             // 0x0079fc92    8981c8040000
                         {disp32} mov       dword ptr [ecx + 0x000004b0], eax             // 0x0079fc98    8981b0040000
                         {disp32} mov       dword ptr [ecx + 0x000004c4], eax             // 0x0079fc9e    8981c4040000
                         {disp32} mov       dword ptr [ecx + 0x000004ac], eax             // 0x0079fca4    8981ac040000
                         {disp32} mov       dword ptr [ecx + 0x000004c0], eax             // 0x0079fcaa    8981c0040000
                         {disp32} mov       dword ptr [ecx + 0x000004a8], eax             // 0x0079fcb0    8981a8040000
_jmp_addr_0x0079fcb6:    {disp32} mov       eax, dword ptr [ecx + 0x00000438]             // 0x0079fcb6    8b8138040000
                         {disp32} mov       dword ptr [ecx + 0x00000124], eax             // 0x0079fcbc    898124010000
_jmp_addr_0x0079fcc2:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0079fcc2    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0079fcc6    8b442414
                         push               edx                                           // 0x0079fcca    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0079fccb    8b542414
                         push               eax                                           // 0x0079fccf    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0079fcd0    8b442414
                         push               edx                                           // 0x0079fcd4    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0079fcd5    8b542414
                         push               eax                                           // 0x0079fcd9    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0079fcda    8b442414
                         push               edx                                           // 0x0079fcde    52
                         push               eax                                           // 0x0079fcdf    50
                         call               @UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29                          // 0x0079fce0    e80b69ffff
                         ret                0x0018                                        // 0x0079fce5    c21800
                         nop                                                              // 0x0079fce8    90
                         nop                                                              // 0x0079fce9    90
                         nop                                                              // 0x0079fcea    90
                         nop                                                              // 0x0079fceb    90
                         nop                                                              // 0x0079fcec    90
                         nop                                                              // 0x0079fced    90
                         nop                                                              // 0x0079fcee    90
                         nop                                                              // 0x0079fcef    90
                         {disp32} mov       al, byte ptr [data_bytes + 0x4741f4]          // 0x0079fcf0    a0f4a1e300
                         sub                esp, 0x000000f0                               // 0x0079fcf5    81ecf0000000
                         test               al, 0x01                                      // 0x0079fcfb    a801
                         push               ebx                                           // 0x0079fcfd    53
                         push               ebp                                           // 0x0079fcfe    55
                         push               esi                                           // 0x0079fcff    56
                         push               edi                                           // 0x0079fd00    57
                         mov.s              esi, ecx                                      // 0x0079fd01    8bf1
                         {disp8} jne        _jmp_addr_0x0079fd3b                          // 0x0079fd03    7536
                         mov.s              dl, al                                        // 0x0079fd05    8ad0
                         or                 dl, 1                                         // 0x0079fd07    80ca01
                         push               0x007a1390                                    // 0x0079fd0a    6890137a00
                         {disp32} mov       byte ptr [data_bytes + 0x4741f4], dl          // 0x0079fd0f    8815f4a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741e8], 0x00000000 // 0x0079fd15    c705e8a1e30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4741ec], 0x41666667 // 0x0079fd1f    c705eca1e30067666641
                         {disp32} mov       dword ptr [data_bytes + 0x4741f0], 0x41666667 // 0x0079fd29    c705f0a1e30067666641
                         call               _atexit                                       // 0x0079fd33    e8595a0200
                         add                esp, 0x04                                     // 0x0079fd38    83c404
_jmp_addr_0x0079fd3b:    {disp32} mov       al, byte ptr [data_bytes + 0x4741f4]          // 0x0079fd3b    a0f4a1e300
                         test               al, 0x02                                      // 0x0079fd40    a802
                         {disp8} jne        _jmp_addr_0x0079fd7a                          // 0x0079fd42    7536
                         mov.s              dl, al                                        // 0x0079fd44    8ad0
                         or                 dl, 2                                         // 0x0079fd46    80ca02
                         push               0x007a1380                                    // 0x0079fd49    6880137a00
                         {disp32} mov       byte ptr [data_bytes + 0x4741f4], dl          // 0x0079fd4e    8815f4a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741d8], 0x00000000 // 0x0079fd54    c705d8a1e30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4741dc], 0x00000000 // 0x0079fd5e    c705dca1e30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4741e0], 0x40800000 // 0x0079fd68    c705e0a1e30000008040
                         call               _atexit                                       // 0x0079fd72    e81a5a0200
                         add                esp, 0x04                                     // 0x0079fd77    83c404
_jmp_addr_0x0079fd7a:    {disp32} mov       al, byte ptr [data_bytes + 0x4741f4]          // 0x0079fd7a    a0f4a1e300
                         test               al, 0x04                                      // 0x0079fd7f    a804
                         mov                ebp, 0x00000004                               // 0x0079fd81    bd04000000
                         {disp8} jne        _jmp_addr_0x0079fdbe                          // 0x0079fd86    7536
                         mov.s              dl, al                                        // 0x0079fd88    8ad0
                         or                 dl, 4                                         // 0x0079fd8a    80ca04
                         push               0x007a1370                                    // 0x0079fd8d    6870137a00
                         {disp32} mov       byte ptr [data_bytes + 0x4741f4], dl          // 0x0079fd92    8815f4a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741c8], 0x00000000 // 0x0079fd98    c705c8a1e30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4741cc], 0x41000000 // 0x0079fda2    c705cca1e30000000041
                         {disp32} mov       dword ptr [data_bytes + 0x4741d0], 0x41a00000 // 0x0079fdac    c705d0a1e3000000a041
                         call               _atexit                                       // 0x0079fdb6    e8d6590200
                         add                esp, 0x04                                     // 0x0079fdbb    83c404
_jmp_addr_0x0079fdbe:    {disp32} mov       al, byte ptr [data_bytes + 0x4741f4]          // 0x0079fdbe    a0f4a1e300
                         test               al, 0x08                                      // 0x0079fdc3    a808
                         {disp8} jne        _jmp_addr_0x0079fdfd                          // 0x0079fdc5    7536
                         mov.s              dl, al                                        // 0x0079fdc7    8ad0
                         or                 dl, 8                                         // 0x0079fdc9    80ca08
                         push               0x007a1360                                    // 0x0079fdcc    6860137a00
                         {disp32} mov       byte ptr [data_bytes + 0x4741f4], dl          // 0x0079fdd1    8815f4a1e300
                         {disp32} mov       dword ptr [data_bytes + 0x4741b8], 0x00000000 // 0x0079fdd7    c705b8a1e30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4741bc], 0x41400000 // 0x0079fde1    c705bca1e30000004041
                         {disp32} mov       dword ptr [data_bytes + 0x4741c0], 0x00000000 // 0x0079fdeb    c705c0a1e30000000000
                         call               _atexit                                       // 0x0079fdf5    e897590200
                         add                esp, 0x04                                     // 0x0079fdfa    83c404
_jmp_addr_0x0079fdfd:    {disp32} mov       edi, dword ptr [esp + 0x00000114]             // 0x0079fdfd    8bbc2414010000
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0079fe04    8b4f04
                         mov                edx, dword ptr [edi]                          // 0x0079fe07    8b17
                         {disp32} mov       ebx, dword ptr [esp + 0x00000104]             // 0x0079fe09    8b9c2404010000
                         mov                eax, dword ptr [esi]                          // 0x0079fe10    8b06
                         push               0x1                                           // 0x0079fe12    6a01
                         push               0x42340000                                    // 0x0079fe14    6800003442
                         push               ecx                                           // 0x0079fe19    51
                         push               edx                                           // 0x0079fe1a    52
                         push               ebx                                           // 0x0079fe1b    53
                         mov.s              ecx, esi                                      // 0x0079fe1c    8bce
                         call               dword ptr [eax + 0x14]                        // 0x0079fe1e    ff5014
                         {disp32} mov       dword ptr [esi + 0x0000012c], eax             // 0x0079fe21    89862c010000
                         {disp32} mov       byte ptr [esi + 0x00000399], 0x01             // 0x0079fe27    c6869903000001
                         {disp32} fld       dword ptr [data_bytes + 0x4741c8]             // 0x0079fe2e    d905c8a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741e8]             // 0x0079fe34    d825e8a1e300
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0079fe3a    8944243c
                         {disp32} fld       dword ptr [data_bytes + 0x4741cc]             // 0x0079fe3e    d905cca1e300
                         {disp32} lea       eax, dword ptr [esi + 0x0000026c]             // 0x0079fe44    8d866c020000
                         {disp32} fsub      dword ptr [data_bytes + 0x4741ec]             // 0x0079fe4a    d825eca1e300
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0079fe50    d95c2414
                         {disp32} fld       dword ptr [data_bytes + 0x4741d0]             // 0x0079fe54    d905d0a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741f0]             // 0x0079fe5a    d825f0a1e300
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0079fe60    d95c2418
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0079fe64    d80d38b28a00
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0079fe6a    d9442414
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0079fe6e    d80d38b28a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0079fe74    d95c2428
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0079fe78    d9442418
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0079fe7c    d80d38b28a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0079fe82    d95c242c
                         {disp32} fadd      dword ptr [data_bytes + 0x4741e8]             // 0x0079fe86    d805e8a1e300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0079fe8c    d95c2410
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0079fe90    d9442428
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0079fe94    8b4c2410
                         {disp32} fadd      dword ptr [data_bytes + 0x4741ec]             // 0x0079fe98    d805eca1e300
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0079fe9e    d95c2414
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0079fea2    d944242c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0079fea6    8b542414
                         {disp32} fadd      dword ptr [data_bytes + 0x4741f0]             // 0x0079feaa    d805f0a1e300
                         mov                dword ptr [eax], ecx                          // 0x0079feb0    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0079feb2    895004
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0079feb5    d95c2418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0079feb9    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0079febd    894808
                         {disp32} fld       dword ptr [data_bytes + 0x4741b8]             // 0x0079fec0    d905b8a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741d8]             // 0x0079fec6    d825d8a1e300
                         {disp32} fld       dword ptr [data_bytes + 0x4741bc]             // 0x0079fecc    d905bca1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741dc]             // 0x0079fed2    d825dca1e300
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0079fed8    d95c2428
                         {disp32} fld       dword ptr [data_bytes + 0x4741c0]             // 0x0079fedc    d905c0a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741e0]             // 0x0079fee2    d825e0a1e300
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0079fee8    d95c242c
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0079feec    d80d38b28a00
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0079fef2    d9442428
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0079fef6    d80d38b28a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0079fefc    d95c2434
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0079ff00    d944242c
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0079ff04    d80d38b28a00
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0079ff0a    d95c2438
                         {disp32} fadd      dword ptr [data_bytes + 0x4741d8]             // 0x0079ff0e    d805d8a1e300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0079ff14    d95c2410
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0079ff18    d9442434
                         {disp32} fadd      dword ptr [data_bytes + 0x4741dc]             // 0x0079ff1c    d805dca1e300
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0079ff22    8b442410
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0079ff26    d95c2414
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0079ff2a    d9442438
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0079ff2e    8b4c2414
                         {disp32} fadd      dword ptr [data_bytes + 0x4741e0]             // 0x0079ff32    d805e0a1e300
                         {disp32} lea       edx, dword ptr [esi + 0x00000260]             // 0x0079ff38    8d9660020000
                         mov                dword ptr [edx], eax                          // 0x0079ff3e    8902
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0079ff40    894a04
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0079ff43    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0079ff47    8b442418
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0079ff4b    894208
                         cmp                dword ptr [esi + 0x00000124], ebp             // 0x0079ff4e    39ae24010000
                         {disp8} je         _jmp_addr_0x0079ffa3                          // 0x0079ff54    744d
                         {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x0079ff56    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0079ff5c    d81d90a38a00
                         fnstsw             ax                                            // 0x0079ff62    dfe0
                         test               ah, 0x41                                      // 0x0079ff64    f6c441
                         {disp8} jne        _jmp_addr_0x0079ff73                          // 0x0079ff67    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x0079ff69    c786500400000000803f
_jmp_addr_0x0079ff73:    {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x0079ff73    d9842408010000
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0079ff7a    d80d38b28a00
                         {disp32} fsubr     dword ptr [esi + 0x00000450]                  // 0x0079ff80    d8ae50040000
                         {disp32} fst       dword ptr [esi + 0x00000450]                  // 0x0079ff86    d99650040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0079ff8c    d81d98a38a00
                         fnstsw             ax                                            // 0x0079ff92    dfe0
                         test               ah, 0x41                                      // 0x0079ff94    f6c441
                         {disp8} je         _jmp_addr_0x0079ffa3                          // 0x0079ff97    740a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x00000000      // 0x0079ff99    c7865004000000000000
_jmp_addr_0x0079ffa3:    {disp32} mov       eax, dword ptr [esi + 0x00000124]             // 0x0079ffa3    8b8624010000
                         dec                eax                                           // 0x0079ffa9    48
                         {disp32} je        _jmp_addr_0x007a03e3                          // 0x0079ffaa    0f8433040000
                         sub                eax, 0x03                                     // 0x0079ffb0    83e803
                         {disp8} je         _jmp_addr_0x0079ffeb                          // 0x0079ffb3    7436
                         {disp32} mov       ecx, dword ptr [esp + 0x00000118]             // 0x0079ffb5    8b8c2418010000
                         {disp32} mov       edx, dword ptr [esp + 0x00000110]             // 0x0079ffbc    8b942410010000
                         {disp32} mov       eax, dword ptr [esp + 0x0000010c]             // 0x0079ffc3    8b84240c010000
                         push               ecx                                           // 0x0079ffca    51
                         {disp32} mov       ecx, dword ptr [esp + 0x0000010c]             // 0x0079ffcb    8b8c240c010000
                         push               edi                                           // 0x0079ffd2    57
                         push               edx                                           // 0x0079ffd3    52
                         push               eax                                           // 0x0079ffd4    50
                         push               ecx                                           // 0x0079ffd5    51
                         push               ebx                                           // 0x0079ffd6    53
                         mov.s              ecx, esi                                      // 0x0079ffd7    8bce
                         call               @UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29                          // 0x0079ffd9    e8025dffff
                         pop                edi                                           // 0x0079ffde    5f
                         pop                esi                                           // 0x0079ffdf    5e
                         pop                ebp                                           // 0x0079ffe0    5d
                         pop                ebx                                           // 0x0079ffe1    5b
                         add                esp, 0x000000f0                               // 0x0079ffe2    81c4f0000000
                         ret                0x0018                                        // 0x0079ffe8    c21800
_jmp_addr_0x0079ffeb:    {disp32} mov       eax, dword ptr [esi + 0x0000044c]             // 0x0079ffeb    8b864c040000
                         test               eax, eax                                      // 0x0079fff1    85c0
                         {disp8} jge        _jmp_addr_0x0079ffff                          // 0x0079fff3    7d0a
                         {disp32} mov       dword ptr [esi + 0x00000438], 0x00000001      // 0x0079fff5    c7863804000001000000
_jmp_addr_0x0079ffff:    {disp32} fld       dword ptr [esi + 0x000004a0]                  // 0x0079ffff    d986a0040000
                         {disp32} lea       edi, dword ptr [esi + 0x000003d4]             // 0x007a0005    8dbed4030000
                         {disp32} fld       dword ptr [data_bytes + 0x4741c8]             // 0x007a000b    d905c8a1e300
                         mov.s              edx, edi                                      // 0x007a0011    8bd7
                         {disp32} fsub      dword ptr [data_bytes + 0x4741e8]             // 0x007a0013    d825e8a1e300
                         {disp32} lea       ebx, dword ptr [esi + 0x000003e0]             // 0x007a0019    8d9ee0030000
                         {disp32} fld       dword ptr [data_bytes + 0x4741cc]             // 0x007a001f    d905cca1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741ec]             // 0x007a0025    d825eca1e300
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007a002b    d95c2434
                         {disp32} fld       dword ptr [data_bytes + 0x4741d0]             // 0x007a002f    d905d0a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741f0]             // 0x007a0035    d825f0a1e300
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007a003b    d95c2438
                         fmul               st, st(1)                                     // 0x007a003f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007a0041    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x007a0045    d9442434
                         fmul               st, st(1)                                     // 0x007a0049    d8c9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007a004b    d95c2428
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x007a004f    d84c2438
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007a0053    d9442424
                         {disp32} fadd      dword ptr [data_bytes + 0x4741e8]             // 0x007a0057    d805e8a1e300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007a005d    d95c2410
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007a0061    d9442428
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007a0065    8b442410
                         {disp32} fadd      dword ptr [data_bytes + 0x4741ec]             // 0x007a0069    d805eca1e300
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007a006f    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007a0073    8b4c2414
                         {disp32} fadd      dword ptr [data_bytes + 0x4741f0]             // 0x007a0077    d805f0a1e300
                         mov                dword ptr [edx], eax                          // 0x007a007d    8902
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x007a007f    894a04
                         mov.s              ecx, ebx                                      // 0x007a0082    8bcb
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007a0084    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007a0088    8b442418
                         {disp32} fld       dword ptr [esi + 0x000004a0]                  // 0x007a008c    d986a0040000
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x007a0092    894208
                         {disp32} fld       dword ptr [data_bytes + 0x4741b8]             // 0x007a0095    d905b8a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741d8]             // 0x007a009b    d825d8a1e300
                         {disp32} fld       dword ptr [data_bytes + 0x4741bc]             // 0x007a00a1    d905bca1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741dc]             // 0x007a00a7    d825dca1e300
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007a00ad    d95c2434
                         {disp32} fld       dword ptr [data_bytes + 0x4741c0]             // 0x007a00b1    d905c0a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741e0]             // 0x007a00b7    d825e0a1e300
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007a00bd    d95c2438
                         fmul               st, st(1)                                     // 0x007a00c1    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007a00c3    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x007a00c7    d9442434
                         fmul               st, st(1)                                     // 0x007a00cb    d8c9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007a00cd    d95c2428
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x007a00d1    d84c2438
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007a00d5    d9442424
                         {disp32} fadd      dword ptr [data_bytes + 0x4741d8]             // 0x007a00d9    d805d8a1e300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007a00df    d95c2410
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007a00e3    d9442428
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007a00e7    8b542410
                         {disp32} fadd      dword ptr [data_bytes + 0x4741dc]             // 0x007a00eb    d805dca1e300
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007a00f1    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007a00f5    8b442414
                         {disp32} fadd      dword ptr [data_bytes + 0x4741e0]             // 0x007a00f9    d805e0a1e300
                         mov                dword ptr [ecx], edx                          // 0x007a00ff    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x007a0101    894104
                         {disp32} mov       eax, dword ptr [esi + 0x00000470]             // 0x007a0104    8b8670040000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007a010a    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x007a010e    8b542418
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x007a0112    895108
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x007a0115    8d4c2440
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x007a0119    8944241c
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x007a011d    e8de33c6ff
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007a0122    d944241c
                         fcos                                                             // 0x007a0126    d9ff
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x007a0128    d95c2460
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007a012c    d944241c
                         fsin                                                             // 0x007a0130    d9fe
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x007a0132    8b4c2460
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x007a0136    894c2440
                         {disp8} fst        dword ptr [esp + 0x48]                        // 0x007a013a    d9542448
                         fchs                                                             // 0x007a013e    d9e0
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x007a0140    d95c2458
                         fld                dword ptr [edi]                               // 0x007a0144    d907
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x007a0146    d94704
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x007a0149    d94708
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x007a014c    d9442458
                         fmul               st, st(1)                                     // 0x007a0150    d8c9
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x007a0152    d9442460
                         fmul               st, st(4)                                     // 0x007a0156    d8cc
                         faddp              st(1), st                                     // 0x007a0158    dec1
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x007a015a    d944244c
                         fmul               st, st(3)                                     // 0x007a015e    d8cb
                         faddp              st(1), st                                     // 0x007a0160    dec1
                         {disp8} fadd       dword ptr [esp + 0x64]                        // 0x007a0162    d8442464
                         fstp               dword ptr [edi]                               // 0x007a0166    d91f
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x007a0168    d944245c
                         fmul               st, st(1)                                     // 0x007a016c    d8c9
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x007a016e    d9442450
                         fmul               st, st(3)                                     // 0x007a0172    d8cb
                         faddp              st(1), st                                     // 0x007a0174    dec1
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x007a0176    d9442444
                         fmul               st, st(4)                                     // 0x007a017a    d8cc
                         faddp              st(1), st                                     // 0x007a017c    dec1
                         {disp8} fadd       dword ptr [esp + 0x68]                        // 0x007a017e    d8442468
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x007a0182    d95f04
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x007a0185    d9442460
                         fmul               st, st(1)                                     // 0x007a0189    d8c9
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x007a018b    d9442448
                         fmul               st, st(4)                                     // 0x007a018f    d8cc
                         faddp              st(1), st                                     // 0x007a0191    dec1
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x007a0193    d9442454
                         fmul               st, st(3)                                     // 0x007a0197    d8cb
                         faddp              st(1), st                                     // 0x007a0199    dec1
                         {disp8} fadd       dword ptr [esp + 0x6c]                        // 0x007a019b    d844246c
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x007a019f    d95f08
                         fstp               st(0)                                         // 0x007a01a2    ddd8
                         fstp               st(0)                                         // 0x007a01a4    ddd8
                         fstp               st(0)                                         // 0x007a01a6    ddd8
                         fld                dword ptr [ebx]                               // 0x007a01a8    d903
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x007a01aa    d94304
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x007a01ad    d94308
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x007a01b0    d9442458
                         fmul               st, st(1)                                     // 0x007a01b4    d8c9
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x007a01b6    d9442460
                         fmul               st, st(4)                                     // 0x007a01ba    d8cc
                         faddp              st(1), st                                     // 0x007a01bc    dec1
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x007a01be    d944244c
                         fmul               st, st(3)                                     // 0x007a01c2    d8cb
                         faddp              st(1), st                                     // 0x007a01c4    dec1
                         {disp8} fadd       dword ptr [esp + 0x64]                        // 0x007a01c6    d8442464
                         fstp               dword ptr [ebx]                               // 0x007a01ca    d91b
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x007a01cc    d944245c
                         fmul               st, st(1)                                     // 0x007a01d0    d8c9
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x007a01d2    d9442450
                         fmul               st, st(3)                                     // 0x007a01d6    d8cb
                         faddp              st(1), st                                     // 0x007a01d8    dec1
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x007a01da    d9442444
                         fmul               st, st(4)                                     // 0x007a01de    d8cc
                         faddp              st(1), st                                     // 0x007a01e0    dec1
                         {disp8} fadd       dword ptr [esp + 0x68]                        // 0x007a01e2    d8442468
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x007a01e6    d95b04
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x007a01e9    d9442460
                         fmul               st, st(1)                                     // 0x007a01ed    d8c9
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x007a01ef    d9442448
                         fmul               st, st(4)                                     // 0x007a01f3    d8cc
                         faddp              st(1), st                                     // 0x007a01f5    dec1
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x007a01f7    d9442454
                         fmul               st, st(3)                                     // 0x007a01fb    d8cb
                         faddp              st(1), st                                     // 0x007a01fd    dec1
                         {disp8} fadd       dword ptr [esp + 0x6c]                        // 0x007a01ff    d844246c
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x007a0203    d95b08
                         xor.s              ebp, ebp                                      // 0x007a0206    33ed
                         {disp32} mov       dword ptr [esi + 0x000003f0], ebp             // 0x007a0208    89aef0030000
                         fstp               st(0)                                         // 0x007a020e    ddd8
                         {disp32} mov       dword ptr [esi + 0x000003ec], ebp             // 0x007a0210    89aeec030000
                         fstp               st(0)                                         // 0x007a0216    ddd8
                         fstp               st(0)                                         // 0x007a0218    ddd8
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a021a    d9842408010000
                         {disp32} fmul      dword ptr [__real@3f400000]                   // 0x007a0221    d80d74b28a00
                         {disp32} fadd      dword ptr [esi + 0x00000450]                  // 0x007a0227    d88650040000
                         {disp32} fst       dword ptr [esi + 0x00000450]                  // 0x007a022d    d99650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007a0233    d81d90a38a00
                         fnstsw             ax                                            // 0x007a0239    dfe0
                         test               ah, 0x41                                      // 0x007a023b    f6c441
                         {disp8} jne        _jmp_addr_0x007a024a                          // 0x007a023e    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x007a0240    c786500400000000803f
_jmp_addr_0x007a024a:    cmp                dword ptr [esp + 0x0000010c], ebp             // 0x007a024a    39ac240c010000
                         {disp8} jne        _jmp_addr_0x007a02ae                          // 0x007a0251    755b
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007a0253    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]             // 0x007a0259    8b8a00032500
                         push               0x7                                           // 0x007a025f    6a07
                         call               _jmp_addr_0x00470af0                          // 0x007a0261    e88a08cdff
                         test               eax, eax                                      // 0x007a0266    85c0
                         {disp8} jne        _jmp_addr_0x007a02ae                          // 0x007a0268    7544
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007a026a    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x007a026f    8b8800032500
                         push               0x8                                           // 0x007a0275    6a08
                         call               _jmp_addr_0x00470af0                          // 0x007a0277    e87408cdff
                         test               eax, eax                                      // 0x007a027c    85c0
                         {disp8} jne        _jmp_addr_0x007a02ae                          // 0x007a027e    752e
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007a0280    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x007a0286    8b8900032500
                         push               0x9                                           // 0x007a028c    6a09
                         call               _jmp_addr_0x00470af0                          // 0x007a028e    e85d08cdff
                         test               eax, eax                                      // 0x007a0293    85c0
                         {disp8} jne        _jmp_addr_0x007a02ae                          // 0x007a0295    7517
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007a0297    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]             // 0x007a029d    8b8a00032500
                         push               0xa                                           // 0x007a02a3    6a0a
                         call               _jmp_addr_0x00470af0                          // 0x007a02a5    e84608cdff
                         test               eax, eax                                      // 0x007a02aa    85c0
                         {disp8} je         _jmp_addr_0x007a02d7                          // 0x007a02ac    7429
_jmp_addr_0x007a02ae:    {disp32} mov       eax, dword ptr [_game]                        // 0x007a02ae    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x007a02b3    8b8890002500
                         push               0x00c2a76c                                    // 0x007a02b9    686ca7c200
                         call               _jmp_addr_0x006f0a80                          // 0x007a02be    e8bd07f5ff
                         {disp32} mov       dword ptr [esi + 0x00000438], 0x00000001      // 0x007a02c3    c7863804000001000000
                         {disp32} mov       dword ptr [esi + 0x000004d4], 0x3f800000      // 0x007a02cd    c786d40400000000803f
_jmp_addr_0x007a02d7:    {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x007a02d7    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007a02dd    d81d98a38a00
                         fnstsw             ax                                            // 0x007a02e3    dfe0
                         test               ah, 0x41                                      // 0x007a02e5    f6c441
                         {disp32} jne       _jmp_addr_0x007a03d0                          // 0x007a02e8    0f85e2000000
                         {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x007a02ee    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007a02f4    d81d90a38a00
                         fnstsw             ax                                            // 0x007a02fa    dfe0
                         test               ah, 0x41                                      // 0x007a02fc    f6c441
                         {disp8} jne        _jmp_addr_0x007a030b                          // 0x007a02ff    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x007a0301    c786500400000000803f
_jmp_addr_0x007a030b:    {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x007a030b    d98650040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x007a0311    d80da0368c00
                         fcos                                                             // 0x007a0317    d9ff
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x007a0319    dc2d80b68a00
                         {disp32} fmul      qword ptr [__real@3fe0000000000000]           // 0x007a031f    dc0d60b28a00
                         {disp32} fld       dword ptr [esi + 0x00000454]                  // 0x007a0325    d98654040000
                         fsub               dword ptr [edi]                               // 0x007a032b    d827
                         {disp32} fld       dword ptr [esi + 0x00000458]                  // 0x007a032d    d98658040000
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x007a0333    d86704
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007a0336    d95c2434
                         {disp32} fld       dword ptr [esi + 0x0000045c]                  // 0x007a033a    d9865c040000
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x007a0340    d86708
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007a0343    d95c2438
                         fmul               st, st(1)                                     // 0x007a0347    d8c9
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x007a0349    d9442434
                         fmul               st, st(2)                                     // 0x007a034d    d8ca
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007a034f    d95c2428
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x007a0353    d9442438
                         fmul               st, st(2)                                     // 0x007a0357    d8ca
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x007a0359    d95c242c
                         fadd               dword ptr [edi]                               // 0x007a035d    d807
                         fstp               dword ptr [edi]                               // 0x007a035f    d91f
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007a0361    d9442428
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x007a0365    d84704
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x007a0368    d95f04
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x007a036b    d944242c
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x007a036f    d84708
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x007a0372    d95f08
                         pop                edi                                           // 0x007a0375    5f
                         {disp32} fld       dword ptr [esi + 0x00000460]                  // 0x007a0376    d98660040000
                         fsub               dword ptr [ebx]                               // 0x007a037c    d823
                         {disp32} fld       dword ptr [esi + 0x00000464]                  // 0x007a037e    d98664040000
                         {disp8} fsub       dword ptr [ebx + 0x04]                        // 0x007a0384    d86304
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x007a0387    d95c2430
                         {disp32} fld       dword ptr [esi + 0x00000468]                  // 0x007a038b    d98668040000
                         pop                esi                                           // 0x007a0391    5e
                         {disp8} fsub       dword ptr [ebx + 0x08]                        // 0x007a0392    d86308
                         pop                ebp                                           // 0x007a0395    5d
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x007a0396    d95c242c
                         fmul               st, st(1)                                     // 0x007a039a    d8c9
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007a039c    d95c2418
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007a03a0    d9442428
                         fmul               st, st(1)                                     // 0x007a03a4    d8c9
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x007a03a6    d95c241c
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x007a03aa    d84c242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x007a03ae    d9442418
                         fadd               dword ptr [ebx]                               // 0x007a03b2    d803
                         fstp               dword ptr [ebx]                               // 0x007a03b4    d91b
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007a03b6    d944241c
                         {disp8} fadd       dword ptr [ebx + 0x04]                        // 0x007a03ba    d84304
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x007a03bd    d95b04
                         {disp8} fadd       dword ptr [ebx + 0x08]                        // 0x007a03c0    d84308
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x007a03c3    d95b08
                         pop                ebx                                           // 0x007a03c6    5b
                         add                esp, 0x000000f0                               // 0x007a03c7    81c4f0000000
                         ret                0x0018                                        // 0x007a03cd    c21800
_jmp_addr_0x007a03d0:    pop                edi                                           // 0x007a03d0    5f
                         {disp32} mov       dword ptr [esi + 0x00000450], ebp             // 0x007a03d1    89ae50040000
                         pop                esi                                           // 0x007a03d7    5e
                         pop                ebp                                           // 0x007a03d8    5d
                         pop                ebx                                           // 0x007a03d9    5b
                         add                esp, 0x000000f0                               // 0x007a03da    81c4f0000000
                         ret                0x0018                                        // 0x007a03e0    c21800
_jmp_addr_0x007a03e3:    {disp32} mov       eax, dword ptr [esi + 0x0000044c]             // 0x007a03e3    8b864c040000
                         test               eax, eax                                      // 0x007a03e9    85c0
                         {disp8} jl         _jmp_addr_0x007a03f3                          // 0x007a03eb    7c06
                         {disp32} mov       dword ptr [esi + 0x00000438], ebp             // 0x007a03ed    89ae38040000
_jmp_addr_0x007a03f3:    {disp32} mov       ebx, dword ptr [esp + 0x0000010c]             // 0x007a03f3    8b9c240c010000
                         test               ebx, ebx                                      // 0x007a03fa    85db
                         {disp32} je        _jmp_addr_0x007a0870                          // 0x007a03fc    0f846e040000
                         {disp32} mov       eax, dword ptr [esi + 0x0000013c]             // 0x007a0402    8b863c010000
                         cmp                eax, 0x02                                     // 0x007a0408    83f802
                         {disp32} je        _jmp_addr_0x007a07d3                          // 0x007a040b    0f84c2030000
                         cmp                eax, 0x03                                     // 0x007a0411    83f803
                         {disp32} je        _jmp_addr_0x007a07d3                          // 0x007a0414    0f84b9030000
                         cmp                eax, 0x01                                     // 0x007a041a    83f801
                         {disp32} jne       _jmp_addr_0x007a0870                          // 0x007a041d    0f854d040000
                         {disp32} mov       eax, dword ptr [esi + 0x00000134]             // 0x007a0423    8b8634010000
                         test               eax, eax                                      // 0x007a0429    85c0
                         {disp32} jne       _jmp_addr_0x007a0509                          // 0x007a042b    0f85d8000000
                         {disp32} lea       eax, dword ptr [esi + 0x00000404]             // 0x007a0431    8d8604040000
                         mov.s              edx, eax                                      // 0x007a0437    8bd0
                         mov                ebp, dword ptr [edx]                          // 0x007a0439    8b2a
                         {disp32} lea       ecx, dword ptr [esi + 0x0000014c]             // 0x007a043b    8d8e4c010000
                         mov                dword ptr [ecx], ebp                          // 0x007a0441    8929
                         {disp8} mov        ebp, dword ptr [edx + 0x04]                   // 0x007a0443    8b6a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x007a0446    8b5208
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x007a0449    896904
                         mov                ebp, dword ptr [eax]                          // 0x007a044c    8b28
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x007a044e    895108
                         mov                ecx, dword ptr [edi]                          // 0x007a0451    8b0f
                         {disp32} mov       dword ptr [esi + 0x00000158], ecx             // 0x007a0453    898e58010000
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x007a0459    8b5704
                         {disp32} mov       dword ptr [esi + 0x0000015c], edx             // 0x007a045c    89965c010000
                         {disp32} lea       ecx, dword ptr [esi + 0x00000460]             // 0x007a0462    8d8e60040000
                         mov.s              edx, ecx                                      // 0x007a0468    8bd1
                         mov                dword ptr [edx], ebp                          // 0x007a046a    892a
                         {disp8} mov        ebp, dword ptr [eax + 0x04]                   // 0x007a046c    8b6804
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x007a046f    8b4008
                         {disp8} mov        dword ptr [edx + 0x04], ebp                   // 0x007a0472    896a04
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x007a0475    894208
                         {disp32} fld       dword ptr [esi + 0x000003d4]                  // 0x007a0478    d986d4030000
                         fsub               dword ptr [ecx]                               // 0x007a047e    d821
                         {disp32} fld       dword ptr [esi + 0x000003d8]                  // 0x007a0480    d986d8030000
                         {disp8} fsub       dword ptr [ecx + 0x04]                        // 0x007a0486    d86104
                         {disp32} fld       dword ptr [esi + 0x000003dc]                  // 0x007a0489    d986dc030000
                         {disp8} fsub       dword ptr [ecx + 0x08]                        // 0x007a048f    d86108
                         fld                st(2)                                         // 0x007a0492    d9c2
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007a0494    d81d98a38a00
                         fnstsw             ax                                            // 0x007a049a    dfe0
                         test               ah, 0x40                                      // 0x007a049c    f6c440
                         {disp8} je         _jmp_addr_0x007a04bd                          // 0x007a049f    741c
                         fld                st(1)                                         // 0x007a04a1    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007a04a3    d81d98a38a00
                         fnstsw             ax                                            // 0x007a04a9    dfe0
                         test               ah, 0x40                                      // 0x007a04ab    f6c440
                         {disp8} je         _jmp_addr_0x007a04bd                          // 0x007a04ae    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x007a04b0    d81598a38a00
                         fnstsw             ax                                            // 0x007a04b6    dfe0
                         test               ah, 0x40                                      // 0x007a04b8    f6c440
                         {disp8} jne        _jmp_addr_0x007a04df                          // 0x007a04bb    7522
_jmp_addr_0x007a04bd:    fld                st(1)                                         // 0x007a04bd    d9c1
                         fmul               st, st(2)                                     // 0x007a04bf    d8ca
                         fld                st(1)                                         // 0x007a04c1    d9c1
                         fmul               st, st(2)                                     // 0x007a04c3    d8ca
                         faddp              st(1), st                                     // 0x007a04c5    dec1
                         fld                st(3)                                         // 0x007a04c7    d9c3
                         fmul               st, st(4)                                     // 0x007a04c9    d8cc
                         faddp              st(1), st                                     // 0x007a04cb    dec1
                         fsqrt                                                            // 0x007a04cd    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x007a04cf    d83d90a38a00
                         fld                st(0)                                         // 0x007a04d5    d9c0
                         fmulp              st(4), st                                     // 0x007a04d7    decc
                         fld                st(0)                                         // 0x007a04d9    d9c0
                         fmulp              st(3), st                                     // 0x007a04db    decb
                         fmulp              st(1), st                                     // 0x007a04dd    dec9
_jmp_addr_0x007a04df:    fld                st(0)                                         // 0x007a04df    d9c0
                         fld                st(3)                                         // 0x007a04e1    d9c3
                         fpatan                                                           // 0x007a04e3    d9f3
                         {disp32} fstp      dword ptr [esi + 0x000004dc]                  // 0x007a04e5    d99edc040000
                         fld                st(0)                                         // 0x007a04eb    d9c0
                         fmul               st, st(1)                                     // 0x007a04ed    d8c9
                         fld                st(3)                                         // 0x007a04ef    d9c3
                         fmul               st, st(4)                                     // 0x007a04f1    d8cc
                         faddp              st(1), st                                     // 0x007a04f3    dec1
                         fsqrt                                                            // 0x007a04f5    d9fa
                         fxch               st(2)                                         // 0x007a04f7    d9ca
                         fxch               st(1)                                         // 0x007a04f9    d9c9
                         fxch               st(2)                                         // 0x007a04fb    d9ca
                         fpatan                                                           // 0x007a04fd    d9f3
                         {disp32} fstp      dword ptr [esi + 0x000004e0]                  // 0x007a04ff    d99ee0040000
                         fstp               st(0)                                         // 0x007a0505    ddd8
                         fstp               st(0)                                         // 0x007a0507    ddd8
_jmp_addr_0x007a0509:    {disp32} mov       eax, dword ptr [esi + 0x00000158]             // 0x007a0509    8b8658010000
                         mov                ecx, dword ptr [edi]                          // 0x007a050f    8b0f
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf058]        // 0x007a0511    8b155850e800
                         sub.s              ecx, eax                                      // 0x007a0517    2bc8
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x007a0519    894c2420
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x007a051d    db442420
                         and                edx, 0x0000ffff                               // 0x007a0521    81e2ffff0000
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x007a0527    89542420
                         {disp32} mov       ecx, dword ptr [esi + 0x0000015c]             // 0x007a052b    8b8e5c010000
                         {disp8} fidiv      dword ptr [esp + 0x20]                        // 0x007a0531    da742420
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x007a0535    8b4704
                         sub.s              eax, ecx                                      // 0x007a0538    2bc1
                         xor.s              ecx, ecx                                      // 0x007a053a    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x007a053c    668b0d5a50e800
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x007a0543    89442420
                         {disp32} fmul      dword ptr [rdata_bytes + 0x235c]              // 0x007a0547    d80d5cb38a00
                         {disp32} fsubr     dword ptr [esi + 0x000004dc]                  // 0x007a054d    d8aedc040000
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x007a0553    db442420
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x007a0557    894c2420
                         {disp8} fidiv      dword ptr [esp + 0x20]                        // 0x007a055b    da742420
                         fadd.s             st(0), st(0)                                  // 0x007a055f    dcc0
                         {disp32} fadd      dword ptr [esi + 0x000004e0]                  // 0x007a0561    d886e0040000
                         {disp8} fst        dword ptr [esp + 0x1c]                        // 0x007a0567    d954241c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xf6010]             // 0x007a056b    d81d10f09900
                         fnstsw             ax                                            // 0x007a0571    dfe0
                         test               ah, 0x41                                      // 0x007a0573    f6c441
                         {disp8} jne        _jmp_addr_0x007a0582                          // 0x007a0576    750a
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3f96cbe4            // 0x007a0578    c744241ce4cb963f
                         {disp8} jmp        _jmp_addr_0x007a059b                          // 0x007a0580    eb19
_jmp_addr_0x007a0582:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007a0582    d944241c
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x57c90]             // 0x007a0586    d81d900c9000
                         fnstsw             ax                                            // 0x007a058c    dfe0
                         test               ah, 0x01                                      // 0x007a058e    f6c401
                         {disp8} je         _jmp_addr_0x007a059b                          // 0x007a0591    7408
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3f20d97c            // 0x007a0593    c744241c7cd9203f
_jmp_addr_0x007a059b:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007a059b    d944241c
                         {disp32} lea       edx, dword ptr [esi + 0x00000454]             // 0x007a059f    8d9654040000
                         fcos                                                             // 0x007a05a5    d9ff
                         fld                st(1)                                         // 0x007a05a7    d9c1
                         fcos                                                             // 0x007a05a9    d9ff
                         fmul               st, st(1)                                     // 0x007a05ab    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x007a05ad    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007a05b1    d944241c
                         fsin                                                             // 0x007a05b5    d9fe
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007a05b7    d95c2434
                         fxch               st(1)                                         // 0x007a05bb    d9c9
                         fsin                                                             // 0x007a05bd    d9fe
                         fmul               st, st(1)                                     // 0x007a05bf    d8c9
                         fxch               st(1)                                         // 0x007a05c1    d9c9
                         fstp               st(0)                                         // 0x007a05c3    ddd8
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x007a05c5    d9442430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x235c]              // 0x007a05c9    d80d5cb38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007a05cf    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x007a05d3    d9442434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x235c]              // 0x007a05d7    d80d5cb38a00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007a05dd    d95c2428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x235c]              // 0x007a05e1    d80d5cb38a00
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007a05e7    d9442424
                         {disp32} fadd      dword ptr [esi + 0x00000460]                  // 0x007a05eb    d88660040000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007a05f1    d95c2410
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007a05f5    d9442428
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007a05f9    8b442410
                         {disp32} fadd      dword ptr [esi + 0x00000464]                  // 0x007a05fd    d88664040000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007a0603    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007a0607    8b4c2414
                         {disp32} fadd      dword ptr [esi + 0x00000468]                  // 0x007a060b    d88668040000
                         mov                dword ptr [edx], eax                          // 0x007a0611    8902
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x007a0613    894a04
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007a0616    d95c2418
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a061a    d9842408010000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007a0621    8b442418
                         fadd.s             st(0), st(0)                                  // 0x007a0625    dcc0
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x007a0627    894208
                         {disp32} fadd      dword ptr [esi + 0x00000450]                  // 0x007a062a    d88650040000
                         {disp32} fst       dword ptr [esi + 0x00000450]                  // 0x007a0630    d99650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007a0636    d81d90a38a00
                         fnstsw             ax                                            // 0x007a063c    dfe0
                         test               ah, 0x41                                      // 0x007a063e    f6c441
                         {disp8} jne        _jmp_addr_0x007a064d                          // 0x007a0641    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x007a0643    c786500400000000803f
_jmp_addr_0x007a064d:    cmp                ebx, 0x02                                     // 0x007a064d    83fb02
                         {disp32} jne       _jmp_addr_0x007a0870                          // 0x007a0650    0f851a020000
                         {disp32} mov       eax, dword ptr [esi + 0x0000046c]             // 0x007a0656    8b866c040000
                         test               eax, eax                                      // 0x007a065c    85c0
                         {disp32} jne       _jmp_addr_0x007a0870                          // 0x007a065e    0f850c020000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000014c]             // 0x007a0664    8b8e4c010000
                         {disp32} mov       edx, dword ptr [esi + 0x00000154]             // 0x007a066a    8b9654010000
                         push               0x00e05ff8                                    // 0x007a0670    68f85fe000
                         {disp32} lea       eax, dword ptr [esi + 0x0000014c]             // 0x007a0675    8d864c010000
                         push               0x00e05ff0                                    // 0x007a067b    68f05fe000
                         push               eax                                           // 0x007a0680    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007a0681    a15c19d000
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x007a0686    894c2428
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x007a068a    8b88b4590000
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x007a0690    8954242c
                         mov                edx, dword ptr [ecx]                          // 0x007a0694    8b11
                         {disp32} mov       ecx, dword ptr [edx + 0x00000154]             // 0x007a0696    8b8a54010000
                         call               _jmp_addr_0x00797760                          // 0x007a069c    e8bf70ffff
                         {disp32} fld       dword ptr [data_bytes + 0x43fff0]             // 0x007a06a1    d905f05fe000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x007a06a7    d80d08c48a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x007a06ad    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x007a06b3    e8480d0000
                         {disp32} fld       dword ptr [data_bytes + 0x43fff8]             // 0x007a06b8    d905f85fe000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]              // 0x007a06be    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x007a06c4    89442430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x007a06c8    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x007a06ce    e82d0d0000
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x007a06d3    8d4c2430
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x007a06d7    89442434
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x007a06db    c744243800000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x007a06e3    e8a8290600
                         {disp32} fstp      dword ptr [data_bytes + 0x43fff4]             // 0x007a06e8    d91df45fe000
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007a06ee    d944241c
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x007a06f2    d84c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x007a06f6    d9442420
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x007a06fa    d84c2420
                         faddp              st(1), st                                     // 0x007a06fe    dec1
                         fsqrt                                                            // 0x007a0700    d9fa
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2414]              // 0x007a0702    d81d14b48a00
                         fnstsw             ax                                            // 0x007a0708    dfe0
                         test               ah, 0x01                                      // 0x007a070a    f6c401
                         {disp8} jne        _jmp_addr_0x007a0726                          // 0x007a070d    7517
                         {disp32} fld       dword ptr [data_bytes + 0x43fff4]             // 0x007a070f    d905f45fe000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007a0715    d81d90a38a00
                         fnstsw             ax                                            // 0x007a071b    dfe0
                         test               ah, 0x41                                      // 0x007a071d    f6c441
                         {disp32} jne       _jmp_addr_0x007a0870                          // 0x007a0720    0f854a010000
_jmp_addr_0x007a0726:    {disp32} fld       dword ptr [data_bytes + 0x43fff0]             // 0x007a0726    d905f05fe000
                         {disp32} mov       byte ptr [data_bytes + 0x440018], 0x01        // 0x007a072c    c6051860e00001
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007a0733    d95c2410
                         {disp32} fld       dword ptr [data_bytes + 0x43fff4]             // 0x007a0737    d905f45fe000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007a073d    8b442410
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1dca4]             // 0x007a0741    d805a46c8c00
                         {disp32} mov       dword ptr [data_bytes + 0x440000], eax        // 0x007a0747    a30060e000
                         {disp32} mov       dword ptr [data_bytes + 0x264150], 0x00000000 // 0x007a074c    c70550a1c20000000000
                         {disp32} mov       dword ptr [_DAT_00e06020], 0x3f800000         // 0x007a0756    c7052060e0000000803f
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007a0760    d95c2414
                         {disp32} fld       dword ptr [data_bytes + 0x43fff8]             // 0x007a0764    d905f85fe000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007a076a    8b4c2414
                         {disp32} fadd      dword ptr [rdata_bytes + 0x822c8]             // 0x007a076e    d805c8b29200
                         {disp32} mov       dword ptr [data_bytes + 0x440004], ecx        // 0x007a0774    890d0460e000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007a077a    8b0d5c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x440024], 0xffffffff // 0x007a0780    c7052460e000ffffffff
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007a078a    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x007a078e    8b542418
                         {disp32} mov       dword ptr [data_bytes + 0x440008], edx        // 0x007a0792    89150860e000
                         {disp32} mov       dword ptr [data_bytes + 0x440028], 0x00000000 // 0x007a0798    c7052860e00000000000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x007a07a2    e8a950dbff
                         test               eax, eax                                      // 0x007a07a7    85c0
                         {disp8} je         _jmp_addr_0x007a07c4                          // 0x007a07a9    7419
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007a07ab    8b0d5c19d000
                         push               0x80000000                                    // 0x007a07b1    6800000080
                         push               0x2c                                          // 0x007a07b6    6a2c
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x007a07b8    e89350dbff
                         mov.s              ecx, eax                                      // 0x007a07bd    8bc8
                         call               _jmp_addr_0x005d8a10                          // 0x007a07bf    e84c82e3ff
_jmp_addr_0x007a07c4:    {disp32} mov       dword ptr [esi + 0x0000046c], 0x00000001      // 0x007a07c4    c7866c04000001000000
                         {disp32} jmp       _jmp_addr_0x007a0870                          // 0x007a07ce    e99d000000
_jmp_addr_0x007a07d3:    {disp32} fld       dword ptr [esi + 0x00000140]                  // 0x007a07d3    d98640010000
                         {disp32} fsub      dword ptr [esi + 0x00000414]                  // 0x007a07d9    d8a614040000
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1e9a4]             // 0x007a07df    d815a4798c00
                         fnstsw             ax                                            // 0x007a07e5    dfe0
                         test               ah, 0x01                                      // 0x007a07e7    f6c401
                         {disp8} je         _jmp_addr_0x007a07f2                          // 0x007a07ea    7406
                         {disp32} fadd      dword ptr [__real@40c90fdb]                   // 0x007a07ec    d80510b28a00
_jmp_addr_0x007a07f2:    {disp32} fcom      dword ptr [rdata_bytes + 0x1a6a0]             // 0x007a07f2    d815a0368c00
                         fnstsw             ax                                            // 0x007a07f8    dfe0
                         test               ah, 0x41                                      // 0x007a07fa    f6c441
                         {disp8} jne        _jmp_addr_0x007a0805                          // 0x007a07fd    7506
                         {disp32} fsub      dword ptr [__real@40c90fdb]                   // 0x007a07ff    d82510b28a00
_jmp_addr_0x007a0805:    {disp32} mov       eax, dword ptr [esi + 0x00000134]             // 0x007a0805    8b8634010000
                         test               eax, eax                                      // 0x007a080b    85c0
                         {disp8} je         _jmp_addr_0x007a085d                          // 0x007a080d    744e
                         {disp32} fld       dword ptr [esi + 0x00000470]                  // 0x007a080f    d98670040000
                         fadd               st, st(1)                                     // 0x007a0815    d8c1
                         {disp32} fstp      dword ptr [esi + 0x000004d0]                  // 0x007a0817    d99ed0040000
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x007a081d    8b4704
                         {disp32} mov       ecx, dword ptr [esi + 0x0000015c]             // 0x007a0820    8b8e5c010000
                         fstp               st(0)                                         // 0x007a0826    ddd8
                         sub.s              eax, ecx                                      // 0x007a0828    2bc1
                         {disp32} fld       dword ptr [esi + 0x000003fc]                  // 0x007a082a    d986fc030000
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x007a0830    89442420
                         fabs                                                             // 0x007a0834    d9e1
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x007a0836    dc2d80b68a00
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x007a083c    db442420
                         {disp32} fmul      dword ptr [esp + 0x00000108]                  // 0x007a0840    d88c2408010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2127c]             // 0x007a0847    d80d7ca28c00
                         fmulp              st(1), st                                     // 0x007a084d    dec9
                         {disp32} fadd      dword ptr [esi + 0x000004d4]                  // 0x007a084f    d886d4040000
                         {disp32} fstp      dword ptr [esi + 0x000004d4]                  // 0x007a0855    d99ed4040000
                         {disp8} jmp        _jmp_addr_0x007a085f                          // 0x007a085b    eb02
_jmp_addr_0x007a085d:    fstp               st(0)                                         // 0x007a085d    ddd8
_jmp_addr_0x007a085f:    mov                ecx, dword ptr [edi]                          // 0x007a085f    8b0f
                         {disp32} mov       dword ptr [esi + 0x00000158], ecx             // 0x007a0861    898e58010000
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x007a0867    8b5704
                         {disp32} mov       dword ptr [esi + 0x0000015c], edx             // 0x007a086a    89965c010000
_jmp_addr_0x007a0870:    {disp32} mov       eax, dword ptr [data_bytes + 0x440028]        // 0x007a0870    a12860e000
                         xor.s              edi, edi                                      // 0x007a0875    33ff
                         cmp.s              eax, edi                                      // 0x007a0877    3bc7
                         {disp8} je         _jmp_addr_0x007a0893                          // 0x007a0879    7418
                         cmp                dword ptr [esi + 0x0000046c], edi             // 0x007a087b    39be6c040000
                         {disp8} je         _jmp_addr_0x007a0893                          // 0x007a0881    7410
                         {disp32} mov       dword ptr [esi + 0x0000046c], edi             // 0x007a0883    89be6c040000
                         {disp32} mov       dword ptr [data_bytes + 0x44001c], 0x00000001 // 0x007a0889    c7051c60e00001000000
_jmp_addr_0x007a0893:    cmp.s              ebx, edi                                      // 0x007a0893    3bdf
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x007a0895    d90598a38a00
                         {disp8} jne        _jmp_addr_0x007a08e1                          // 0x007a089b    7544
                         {disp32} fld       dword ptr [esi + 0x00000400]                  // 0x007a089d    d98600040000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ba04]             // 0x007a08a3    d81d044a8c00
                         fnstsw             ax                                            // 0x007a08a9    dfe0
                         test               ah, 0x41                                      // 0x007a08ab    f6c441
                         {disp32} jne       _jmp_addr_0x007a0b01                          // 0x007a08ae    0f854d020000
                         fstp               st(0)                                         // 0x007a08b4    ddd8
                         {disp32} fld       dword ptr [esi + 0x00000400]                  // 0x007a08b6    d98600040000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1ba04]             // 0x007a08bc    d825044a8c00
                         {disp32} fmul      dword ptr [_rdata_floatn0p8]                  // 0x007a08c2    d80da8a38a00
_jmp_addr_0x007a08c8:    {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a08c8    d9842408010000
                         {disp32} fmul      dword ptr [__real@3e4ccccd]                   // 0x007a08cf    d80d44b28a00
                         {disp32} fadd      dword ptr [data_bytes + 0x4741fc]             // 0x007a08d5    d805fca1e300
                         {disp32} fstp      dword ptr [data_bytes + 0x4741fc]             // 0x007a08db    d91dfca1e300
_jmp_addr_0x007a08e1:    {disp32} fld       dword ptr [data_bytes + 0x4741fc]             // 0x007a08e1    d905fca1e300
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007a08e7    d81d90a38a00
                         fnstsw             ax                                            // 0x007a08ed    dfe0
                         test               ah, 0x41                                      // 0x007a08ef    f6c441
                         {disp8} jne        _jmp_addr_0x007a08fe                          // 0x007a08f2    750a
                         {disp32} mov       dword ptr [data_bytes + 0x4741fc], 0x3f800000 // 0x007a08f4    c705fca1e3000000803f
_jmp_addr_0x007a08fe:    {disp32} fld       dword ptr [data_bytes + 0x474200]             // 0x007a08fe    d90500a2e300
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007a0904    d81d90a38a00
                         fnstsw             ax                                            // 0x007a090a    dfe0
                         test               ah, 0x41                                      // 0x007a090c    f6c441
                         {disp8} jne        _jmp_addr_0x007a091b                          // 0x007a090f    750a
                         {disp32} mov       dword ptr [data_bytes + 0x474200], 0x3f800000 // 0x007a0911    c70500a2e3000000803f
_jmp_addr_0x007a091b:    {disp32} fld       dword ptr [data_bytes + 0x4741fc]             // 0x007a091b    d905fca1e300
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007a0921    d81d98a38a00
                         fnstsw             ax                                            // 0x007a0927    dfe0
                         test               ah, 0x01                                      // 0x007a0929    f6c401
                         {disp8} je         _jmp_addr_0x007a0938                          // 0x007a092c    740a
                         {disp32} mov       dword ptr [data_bytes + 0x4741fc], 0x00000000 // 0x007a092e    c705fca1e30000000000
_jmp_addr_0x007a0938:    {disp32} fld       dword ptr [data_bytes + 0x474200]             // 0x007a0938    d90500a2e300
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007a093e    d81d98a38a00
                         fnstsw             ax                                            // 0x007a0944    dfe0
                         test               ah, 0x01                                      // 0x007a0946    f6c401
                         {disp8} je         _jmp_addr_0x007a0955                          // 0x007a0949    740a
                         {disp32} mov       dword ptr [data_bytes + 0x474200], 0x00000000 // 0x007a094b    c70500a2e30000000000
_jmp_addr_0x007a0955:    {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a0955    d9842408010000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x007a095c    c744242000000000
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x007a0964    d80d4cb28a00
                         push               0x7                                           // 0x007a096a    6a07
                         {disp32} fld       dword ptr [data_bytes + 0x4741fc]             // 0x007a096c    d905fca1e300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x007a0972    d80da0368c00
                         fcos                                                             // 0x007a0978    d9ff
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x007a097a    dc2d80b68a00
                         fxch               st(1)                                         // 0x007a0980    d9c9
                         fmulp              st(1), st                                     // 0x007a0982    dec9
                         fxch               st(1)                                         // 0x007a0984    d9c9
                         fmulp              st(1), st                                     // 0x007a0986    dec9
                         {disp32} fadd      dword ptr [esi + 0x000004d4]                  // 0x007a0988    d886d4040000
                         {disp32} fstp      dword ptr [esi + 0x000004d4]                  // 0x007a098e    d99ed4040000
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007a0994    d9442424
                         {disp32} fadd      dword ptr [esi + 0x000004d0]                  // 0x007a0998    d886d0040000
                         {disp32} fstp      dword ptr [esi + 0x000004d0]                  // 0x007a099e    d99ed0040000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007a09a4    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x007a09a9    8b8800032500
                         call               _jmp_addr_0x00470af0                          // 0x007a09af    e83c01cdff
                         test               eax, eax                                      // 0x007a09b4    85c0
                         {disp8} je         _jmp_addr_0x007a09cd                          // 0x007a09b6    7415
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a09b8    d9842408010000
                         fadd.s             st(0), st(0)                                  // 0x007a09bf    dcc0
                         {disp32} fadd      dword ptr [esi + 0x000004d0]                  // 0x007a09c1    d886d0040000
                         {disp32} fstp      dword ptr [esi + 0x000004d0]                  // 0x007a09c7    d99ed0040000
_jmp_addr_0x007a09cd:    {disp32} mov       ecx, dword ptr [_game]                        // 0x007a09cd    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x007a09d3    8b8900032500
                         push               0x8                                           // 0x007a09d9    6a08
                         call               _jmp_addr_0x00470af0                          // 0x007a09db    e81001cdff
                         test               eax, eax                                      // 0x007a09e0    85c0
                         {disp8} je         _jmp_addr_0x007a09f9                          // 0x007a09e2    7415
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a09e4    d9842408010000
                         fadd.s             st(0), st(0)                                  // 0x007a09eb    dcc0
                         {disp32} fsubr     dword ptr [esi + 0x000004d0]                  // 0x007a09ed    d8aed0040000
                         {disp32} fstp      dword ptr [esi + 0x000004d0]                  // 0x007a09f3    d99ed0040000
_jmp_addr_0x007a09f9:    {disp32} mov       edx, dword ptr [_game]                        // 0x007a09f9    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]             // 0x007a09ff    8b8a00032500
                         push               0x9                                           // 0x007a0a05    6a09
                         call               _jmp_addr_0x00470af0                          // 0x007a0a07    e8e400cdff
                         test               eax, eax                                      // 0x007a0a0c    85c0
                         {disp8} je         _jmp_addr_0x007a0a29                          // 0x007a0a0e    7419
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a0a10    d9842408010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fac]             // 0x007a0a17    d80dacef8c00
                         {disp32} fadd      dword ptr [esi + 0x000004d4]                  // 0x007a0a1d    d886d4040000
                         {disp32} fstp      dword ptr [esi + 0x000004d4]                  // 0x007a0a23    d99ed4040000
_jmp_addr_0x007a0a29:    {disp32} mov       eax, dword ptr [_game]                        // 0x007a0a29    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x007a0a2e    8b8800032500
                         push               0xa                                           // 0x007a0a34    6a0a
                         call               _jmp_addr_0x00470af0                          // 0x007a0a36    e8b500cdff
                         test               eax, eax                                      // 0x007a0a3b    85c0
                         {disp8} je         _jmp_addr_0x007a0a58                          // 0x007a0a3d    7419
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a0a3f    d9842408010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fac]             // 0x007a0a46    d80dacef8c00
                         {disp32} fsubr     dword ptr [esi + 0x000004d4]                  // 0x007a0a4c    d8aed4040000
                         {disp32} fstp      dword ptr [esi + 0x000004d4]                  // 0x007a0a52    d99ed4040000
_jmp_addr_0x007a0a58:    {disp32} fld       dword ptr [esi + 0x000004d4]                  // 0x007a0a58    d986d4040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007a0a5e    d81d98a38a00
                         fnstsw             ax                                            // 0x007a0a64    dfe0
                         test               ah, 0x01                                      // 0x007a0a66    f6c401
                         {disp8} je         _jmp_addr_0x007a0a71                          // 0x007a0a69    7406
                         {disp32} mov       dword ptr [esi + 0x000004d4], edi             // 0x007a0a6b    89bed4040000
_jmp_addr_0x007a0a71:    {disp32} fld       dword ptr [esi + 0x000004d4]                  // 0x007a0a71    d986d4040000
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x1c838]             // 0x007a0a77    dc1d38588c00
                         fnstsw             ax                                            // 0x007a0a7d    dfe0
                         test               ah, 0x41                                      // 0x007a0a7f    f6c441
                         {disp8} jne        _jmp_addr_0x007a0a8e                          // 0x007a0a82    750a
                         {disp32} mov       dword ptr [esi + 0x000004d4], 0x3fc00000      // 0x007a0a84    c786d40400000000c03f
_jmp_addr_0x007a0a8e:    {disp32} fld       dword ptr [esi + 0x000004d0]                  // 0x007a0a8e    d986d0040000
                         push               0x3e99999a                                    // 0x007a0a94    689a99993e
                         push               0x0                                           // 0x007a0a99    6a00
                         push               ecx                                           // 0x007a0a9b    51
                         {disp32} lea       ebx, dword ptr [esi + 0x00000470]             // 0x007a0a9c    8d9e70040000
                         fstp               dword ptr [esp]                               // 0x007a0aa2    d91c24
                         mov.s              ecx, ebx                                      // 0x007a0aa5    8bcb
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x007a0aa7    e8b472c6ff
                         {disp32} fld       dword ptr [esi + 0x000004d4]                  // 0x007a0aac    d986d4040000
                         push               0x3e99999a                                    // 0x007a0ab2    689a99993e
                         xor.s              edi, edi                                      // 0x007a0ab7    33ff
                         push               edi                                           // 0x007a0ab9    57
                         push               ecx                                           // 0x007a0aba    51
                         {disp32} lea       ebp, dword ptr [esi + 0x000004a0]             // 0x007a0abb    8daea0040000
                         fstp               dword ptr [esp]                               // 0x007a0ac1    d91c24
                         mov.s              ecx, ebp                                      // 0x007a0ac4    8bcd
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x007a0ac6    e89572c6ff
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a0acb    d9842408010000
                         {disp8} fadd       dword ptr [ebx + 0x14]                        // 0x007a0ad2    d84314
                         {disp8} fcom       dword ptr [ebx + 0x18]                        // 0x007a0ad5    d85318
                         {disp8} fst        dword ptr [ebx + 0x14]                        // 0x007a0ad8    d95314
                         fnstsw             ax                                            // 0x007a0adb    dfe0
                         test               ah, 0x01                                      // 0x007a0add    f6c401
                         {disp32} jne       _jmp_addr_0x007a0b92                          // 0x007a0ae0    0f85ac000000
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                   // 0x007a0ae6    8b4b04
                         fstp               st(0)                                         // 0x007a0ae9    ddd8
                         {disp8} mov        edx, dword ptr [ebx + 0x08]                   // 0x007a0aeb    8b5308
                         {disp8} mov        eax, dword ptr [ebx + 0x18]                   // 0x007a0aee    8b4318
                         mov                dword ptr [ebx], ecx                          // 0x007a0af1    890b
                         {disp8} mov        dword ptr [ebx + 0x0c], edx                   // 0x007a0af3    89530c
                         {disp8} mov        dword ptr [ebx + 0x10], edi                   // 0x007a0af6    897b10
                         {disp8} mov        dword ptr [ebx + 0x14], eax                   // 0x007a0af9    894314
                         {disp32} jmp       _jmp_addr_0x007a0be4                          // 0x007a0afc    e9e3000000
_jmp_addr_0x007a0b01:    {disp32} fld       dword ptr [esi + 0x00000400]                  // 0x007a0b01    d98600040000
                         {disp32} fcomp     dword ptr [_rdata_floatn0p8]                  // 0x007a0b07    d81da8a38a00
                         fnstsw             ax                                            // 0x007a0b0d    dfe0
                         test               ah, 0x01                                      // 0x007a0b0f    f6c401
                         {disp8} je         _jmp_addr_0x007a0b2f                          // 0x007a0b12    741b
                         fstp               st(0)                                         // 0x007a0b14    ddd8
                         {disp32} fld       dword ptr [esi + 0x00000400]                  // 0x007a0b16    d98600040000
                         fchs                                                             // 0x007a0b1c    d9e0
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1ba04]             // 0x007a0b1e    d825044a8c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ba04]             // 0x007a0b24    d80d044a8c00
                         {disp32} jmp       _jmp_addr_0x007a08c8                          // 0x007a0b2a    e999fdffff
_jmp_addr_0x007a0b2f:    cmp                dword ptr [esi + 0x000003f8], 0x01            // 0x007a0b2f    83bef803000001
                         {disp8} jne        _jmp_addr_0x007a0b83                          // 0x007a0b36    754b
                         fstp               st(0)                                         // 0x007a0b38    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x20b2c]             // 0x007a0b3a    d9052c9b8c00
                         {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a0b40    d9842408010000
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x007a0b47    d80d2cb28a00
                         {disp32} fadd      dword ptr [data_bytes + 0x4741fc]             // 0x007a0b4d    d805fca1e300
                         {disp32} fstp      dword ptr [data_bytes + 0x4741fc]             // 0x007a0b53    d91dfca1e300
                         {disp32} fld       dword ptr [esi + 0x000004d4]                  // 0x007a0b59    d986d4040000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2f734]             // 0x007a0b5f    d81d34878d00
                         fnstsw             ax                                            // 0x007a0b65    dfe0
                         test               ah, 0x01                                      // 0x007a0b67    f6c401
                         {disp32} je        _jmp_addr_0x007a08e1                          // 0x007a0b6a    0f8471fdffff
                         fstp               st(0)                                         // 0x007a0b70    ddd8
                         {disp32} fld       dword ptr [esi + 0x000004d4]                  // 0x007a0b72    d986d4040000
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf600c]             // 0x007a0b78    d80d0cf09900
                         {disp32} jmp       _jmp_addr_0x007a08e1                          // 0x007a0b7e    e95efdffff
_jmp_addr_0x007a0b83:    {disp32} mov       dword ptr [data_bytes + 0x4741fc], 0x00000000 // 0x007a0b83    c705fca1e30000000000
                         {disp32} jmp       _jmp_addr_0x007a08fe                          // 0x007a0b8d    e96cfdffff
_jmp_addr_0x007a0b92:    fld                st(0)                                         // 0x007a0b92    d9c0
                         fld                st(0)                                         // 0x007a0b94    d9c0
                         fmulp              st(1), st                                     // 0x007a0b96    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x007a0b98    d80db4a38a00
                         fld                st(0)                                         // 0x007a0b9e    d9c0
                         fmul               st, st(2)                                     // 0x007a0ba0    d8ca
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x007a0ba2    d80d6cb28a00
                         fld                st(1)                                         // 0x007a0ba8    d9c1
                         {disp8} fmul       dword ptr [ebx + 0x28]                        // 0x007a0baa    d84b28
                         fld                st(1)                                         // 0x007a0bad    d9c1
                         {disp8} fmul       dword ptr [ebx + 0x2c]                        // 0x007a0baf    d84b2c
                         faddp              st(1), st                                     // 0x007a0bb2    dec1
                         fld                st(3)                                         // 0x007a0bb4    d9c3
                         {disp8} fmul       dword ptr [ebx + 0x24]                        // 0x007a0bb6    d84b24
                         faddp              st(1), st                                     // 0x007a0bb9    dec1
                         {disp8} fadd       dword ptr [ebx + 0x20]                        // 0x007a0bbb    d84320
                         {disp8} fstp       dword ptr [ebx + 0x0c]                        // 0x007a0bbe    d95b0c
                         fld                st(1)                                         // 0x007a0bc1    d9c1
                         fmul               st, st(2)                                     // 0x007a0bc3    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x007a0bc5    d80d68b28a00
                         {disp8} fmul       dword ptr [ebx + 0x2c]                        // 0x007a0bcb    d84b2c
                         fxch               st(3)                                         // 0x007a0bce    d9cb
                         {disp8} fmul       dword ptr [ebx + 0x20]                        // 0x007a0bd0    d84b20
                         faddp              st(3), st                                     // 0x007a0bd3    dec3
                         {disp8} fmul       dword ptr [ebx + 0x28]                        // 0x007a0bd5    d84b28
                         faddp              st(2), st                                     // 0x007a0bd8    dec2
                         {disp8} fmul       dword ptr [ebx + 0x24]                        // 0x007a0bda    d84b24
                         faddp              st(1), st                                     // 0x007a0bdd    dec1
                         {disp8} fadd       dword ptr [ebx + 0x1c]                        // 0x007a0bdf    d8431c
                         fstp               dword ptr [ebx]                               // 0x007a0be2    d91b
_jmp_addr_0x007a0be4:    {disp32} fld       dword ptr [esp + 0x00000108]                  // 0x007a0be4    d9842408010000
                         {disp8} fadd       dword ptr [ebp + 0x14]                        // 0x007a0beb    d84514
                         {disp8} fcom       dword ptr [ebp + 0x18]                        // 0x007a0bee    d85518
                         {disp8} fst        dword ptr [ebp + 0x14]                        // 0x007a0bf1    d95514
                         fnstsw             ax                                            // 0x007a0bf4    dfe0
                         test               ah, 0x01                                      // 0x007a0bf6    f6c401
                         {disp8} jne        _jmp_addr_0x007a0c14                          // 0x007a0bf9    7519
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x007a0bfb    8b4d04
                         fstp               st(0)                                         // 0x007a0bfe    ddd8
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x007a0c00    8b5508
                         {disp8} mov        eax, dword ptr [ebp + 0x18]                   // 0x007a0c03    8b4518
                         {disp8} mov        dword ptr [ebp + 0x00], ecx                   // 0x007a0c06    894d00
                         {disp8} mov        dword ptr [ebp + 0x0c], edx                   // 0x007a0c09    89550c
                         {disp8} mov        dword ptr [ebp + 0x10], edi                   // 0x007a0c0c    897d10
                         {disp8} mov        dword ptr [ebp + 0x14], eax                   // 0x007a0c0f    894514
                         {disp8} jmp        _jmp_addr_0x007a0c69                          // 0x007a0c12    eb55
_jmp_addr_0x007a0c14:    fld                st(0)                                         // 0x007a0c14    d9c0
                         fld                st(0)                                         // 0x007a0c16    d9c0
                         fmulp              st(1), st                                     // 0x007a0c18    dec9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x007a0c1a    d80db4a38a00
                         fld                st(1)                                         // 0x007a0c20    d9c1
                         fmul               st, st(1)                                     // 0x007a0c22    d8c9
                         {disp32} fmul      dword ptr [__real@3eaaaaab]                   // 0x007a0c24    d80d6cb28a00
                         fld                st(2)                                         // 0x007a0c2a    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x24]                        // 0x007a0c2c    d84d24
                         fld                st(1)                                         // 0x007a0c2f    d9c1
                         {disp8} fmul       dword ptr [ebp + 0x2c]                        // 0x007a0c31    d84d2c
                         faddp              st(1), st                                     // 0x007a0c34    dec1
                         fld                st(2)                                         // 0x007a0c36    d9c2
                         {disp8} fmul       dword ptr [ebp + 0x28]                        // 0x007a0c38    d84d28
                         faddp              st(1), st                                     // 0x007a0c3b    dec1
                         {disp8} fadd       dword ptr [ebp + 0x20]                        // 0x007a0c3d    d84520
                         {disp8} fstp       dword ptr [ebp + 0x0c]                        // 0x007a0c40    d95d0c
                         fld                st(1)                                         // 0x007a0c43    d9c1
                         fmul               st, st(2)                                     // 0x007a0c45    d8ca
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x007a0c47    d80d68b28a00
                         {disp8} fmul       dword ptr [ebp + 0x2c]                        // 0x007a0c4d    d84d2c
                         fxch               st(3)                                         // 0x007a0c50    d9cb
                         {disp8} fmul       dword ptr [ebp + 0x20]                        // 0x007a0c52    d84d20
                         faddp              st(3), st                                     // 0x007a0c55    dec3
                         fxch               st(1)                                         // 0x007a0c57    d9c9
                         {disp8} fmul       dword ptr [ebp + 0x24]                        // 0x007a0c59    d84d24
                         faddp              st(2), st                                     // 0x007a0c5c    dec2
                         {disp8} fmul       dword ptr [ebp + 0x28]                        // 0x007a0c5e    d84d28
                         faddp              st(1), st                                     // 0x007a0c61    dec1
                         {disp8} fadd       dword ptr [ebp + 0x1c]                        // 0x007a0c63    d8451c
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x007a0c66    d95d00
_jmp_addr_0x007a0c69:    {disp8} fld        dword ptr [ebp + 0x00]                        // 0x007a0c69    d94500
                         {disp32} lea       edi, dword ptr [esi + 0x000003d4]             // 0x007a0c6c    8dbed4030000
                         {disp32} fld       dword ptr [data_bytes + 0x4741c8]             // 0x007a0c72    d905c8a1e300
                         mov.s              ecx, edi                                      // 0x007a0c78    8bcf
                         {disp32} fsub      dword ptr [data_bytes + 0x4741e8]             // 0x007a0c7a    d825e8a1e300
                         {disp32} fld       dword ptr [data_bytes + 0x4741cc]             // 0x007a0c80    d905cca1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741ec]             // 0x007a0c86    d825eca1e300
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007a0c8c    d95c2434
                         {disp32} fld       dword ptr [data_bytes + 0x4741d0]             // 0x007a0c90    d905d0a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741f0]             // 0x007a0c96    d825f0a1e300
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007a0c9c    d95c2438
                         fmul               st, st(1)                                     // 0x007a0ca0    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007a0ca2    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x007a0ca6    d9442434
                         fmul               st, st(1)                                     // 0x007a0caa    d8c9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007a0cac    d95c2428
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x007a0cb0    d84c2438
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007a0cb4    d9442424
                         {disp32} fadd      dword ptr [data_bytes + 0x4741e8]             // 0x007a0cb8    d805e8a1e300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007a0cbe    d95c2410
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007a0cc2    d9442428
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007a0cc6    8b542410
                         {disp32} fadd      dword ptr [data_bytes + 0x4741ec]             // 0x007a0cca    d805eca1e300
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007a0cd0    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007a0cd4    8b442414
                         {disp32} fadd      dword ptr [data_bytes + 0x4741f0]             // 0x007a0cd8    d805f0a1e300
                         mov                dword ptr [ecx], edx                          // 0x007a0cde    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x007a0ce0    894104
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007a0ce3    d95c2418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x007a0ce7    8b542418
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x007a0ceb    d94500
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x007a0cee    895108
                         {disp32} fld       dword ptr [data_bytes + 0x4741b8]             // 0x007a0cf1    d905b8a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741d8]             // 0x007a0cf7    d825d8a1e300
                         {disp32} lea       ebp, dword ptr [esi + 0x000003e0]             // 0x007a0cfd    8daee0030000
                         {disp32} fld       dword ptr [data_bytes + 0x4741bc]             // 0x007a0d03    d905bca1e300
                         mov.s              eax, ebp                                      // 0x007a0d09    8bc5
                         {disp32} fsub      dword ptr [data_bytes + 0x4741dc]             // 0x007a0d0b    d825dca1e300
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x007a0d11    d95c2434
                         {disp32} fld       dword ptr [data_bytes + 0x4741c0]             // 0x007a0d15    d905c0a1e300
                         {disp32} fsub      dword ptr [data_bytes + 0x4741e0]             // 0x007a0d1b    d825e0a1e300
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007a0d21    d95c2438
                         fmul               st, st(1)                                     // 0x007a0d25    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007a0d27    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x007a0d2b    d9442434
                         fmul               st, st(1)                                     // 0x007a0d2f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007a0d31    d95c2428
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x007a0d35    d84c2438
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007a0d39    d9442424
                         {disp32} fadd      dword ptr [data_bytes + 0x4741d8]             // 0x007a0d3d    d805d8a1e300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007a0d43    d95c2410
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x007a0d47    d9442428
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007a0d4b    8b4c2410
                         {disp32} fadd      dword ptr [data_bytes + 0x4741dc]             // 0x007a0d4f    d805dca1e300
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007a0d55    d95c2414
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x007a0d59    8b542414
                         {disp32} fadd      dword ptr [data_bytes + 0x4741e0]             // 0x007a0d5d    d805e0a1e300
                         mov                dword ptr [eax], ecx                          // 0x007a0d63    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x007a0d65    895004
                         mov                edx, dword ptr [ebx]                          // 0x007a0d68    8b13
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007a0d6a    d95c2418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x007a0d6e    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x007a0d72    894808
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x007a0d75    8d4c2470
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x007a0d79    89542420
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x007a0d7d    e87e27c6ff
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x007a0d82    d9442420
                         fcos                                                             // 0x007a0d86    d9ff
                         {disp32} fstp      dword ptr [esp + 0x00000090]                  // 0x007a0d88    d99c2490000000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x007a0d8f    d9442420
                         fsin                                                             // 0x007a0d93    d9fe
                         {disp32} mov       eax, dword ptr [esp + 0x00000090]             // 0x007a0d95    8b842490000000
                         {disp8} mov        dword ptr [esp + 0x70], eax                   // 0x007a0d9c    89442470
                         {disp8} fst        dword ptr [esp + 0x78]                        // 0x007a0da0    d9542478
                         fchs                                                             // 0x007a0da4    d9e0
                         {disp32} fstp      dword ptr [esp + 0x00000088]                  // 0x007a0da6    d99c2488000000
                         fld                dword ptr [edi]                               // 0x007a0dad    d907
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x007a0daf    d94704
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x007a0db2    d94708
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x007a0db5    d9842488000000
                         fmul               st, st(1)                                     // 0x007a0dbc    d8c9
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x007a0dbe    d944247c
                         fmul               st, st(3)                                     // 0x007a0dc2    d8cb
                         faddp              st(1), st                                     // 0x007a0dc4    dec1
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x007a0dc6    d9842490000000
                         fmul               st, st(4)                                     // 0x007a0dcd    d8cc
                         faddp              st(1), st                                     // 0x007a0dcf    dec1
                         {disp32} fadd      dword ptr [esp + 0x00000094]                  // 0x007a0dd1    d8842494000000
                         fstp               dword ptr [edi]                               // 0x007a0dd8    d91f
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x007a0dda    d984248c000000
                         fmul               st, st(1)                                     // 0x007a0de1    d8c9
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x007a0de3    d9842480000000
                         fmul               st, st(3)                                     // 0x007a0dea    d8cb
                         faddp              st(1), st                                     // 0x007a0dec    dec1
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x007a0dee    d9442474
                         fmul               st, st(4)                                     // 0x007a0df2    d8cc
                         faddp              st(1), st                                     // 0x007a0df4    dec1
                         {disp32} fadd      dword ptr [esp + 0x00000098]                  // 0x007a0df6    d8842498000000
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x007a0dfd    d95f04
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x007a0e00    d9842484000000
                         fmul               st, st(2)                                     // 0x007a0e07    d8ca
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x007a0e09    d9842490000000
                         fmul               st, st(2)                                     // 0x007a0e10    d8ca
                         faddp              st(1), st                                     // 0x007a0e12    dec1
                         {disp8} fld        dword ptr [esp + 0x78]                        // 0x007a0e14    d9442478
                         fmul               st, st(4)                                     // 0x007a0e18    d8cc
                         faddp              st(1), st                                     // 0x007a0e1a    dec1
                         {disp32} fadd      dword ptr [esp + 0x0000009c]                  // 0x007a0e1c    d884249c000000
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x007a0e23    d95f08
                         fstp               st(0)                                         // 0x007a0e26    ddd8
                         fstp               st(0)                                         // 0x007a0e28    ddd8
                         fstp               st(0)                                         // 0x007a0e2a    ddd8
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x007a0e2c    d94500
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x007a0e2f    d94504
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x007a0e32    d94508
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x007a0e35    d9842488000000
                         fmul               st, st(1)                                     // 0x007a0e3c    d8c9
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x007a0e3e    d944247c
                         fmul               st, st(3)                                     // 0x007a0e42    d8cb
                         faddp              st(1), st                                     // 0x007a0e44    dec1
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x007a0e46    d9842490000000
                         fmul               st, st(4)                                     // 0x007a0e4d    d8cc
                         faddp              st(1), st                                     // 0x007a0e4f    dec1
                         {disp32} fadd      dword ptr [esp + 0x00000094]                  // 0x007a0e51    d8842494000000
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x007a0e58    d95d00
                         {disp32} fld       dword ptr [esp + 0x0000008c]                  // 0x007a0e5b    d984248c000000
                         fmul               st, st(1)                                     // 0x007a0e62    d8c9
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x007a0e64    d9842480000000
                         fmul               st, st(3)                                     // 0x007a0e6b    d8cb
                         faddp              st(1), st                                     // 0x007a0e6d    dec1
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x007a0e6f    d9442474
                         fmul               st, st(4)                                     // 0x007a0e73    d8cc
                         faddp              st(1), st                                     // 0x007a0e75    dec1
                         {disp32} fadd      dword ptr [esp + 0x00000098]                  // 0x007a0e77    d8842498000000
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x007a0e7e    d95d04
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x007a0e81    d9842484000000
                         fmul               st, st(2)                                     // 0x007a0e88    d8ca
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x007a0e8a    d9842490000000
                         fmul               st, st(2)                                     // 0x007a0e91    d8ca
                         faddp              st(1), st                                     // 0x007a0e93    dec1
                         {disp8} fld        dword ptr [esp + 0x78]                        // 0x007a0e95    d9442478
                         fmul               st, st(4)                                     // 0x007a0e99    d8cc
                         faddp              st(1), st                                     // 0x007a0e9b    dec1
                         {disp32} fadd      dword ptr [esp + 0x0000009c]                  // 0x007a0e9d    d884249c000000
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x007a0ea4    d95d08
                         xor.s              eax, eax                                      // 0x007a0ea7    33c0
                         {disp32} mov       dword ptr [esi + 0x000003f0], eax             // 0x007a0ea9    8986f0030000
                         fstp               st(0)                                         // 0x007a0eaf    ddd8
                         {disp32} mov       dword ptr [esi + 0x000003ec], eax             // 0x007a0eb1    8986ec030000
                         fstp               st(0)                                         // 0x007a0eb7    ddd8
                         fstp               st(0)                                         // 0x007a0eb9    ddd8
                         {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x007a0ebb    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x007a0ec1    d81d98a38a00
                         fnstsw             ax                                            // 0x007a0ec7    dfe0
                         test               ah, 0x41                                      // 0x007a0ec9    f6c441
                         {disp32} jne       _jmp_addr_0x007a1058                          // 0x007a0ecc    0f8586010000
                         {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x007a0ed2    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007a0ed8    d81d90a38a00
                         fnstsw             ax                                            // 0x007a0ede    dfe0
                         test               ah, 0x41                                      // 0x007a0ee0    f6c441
                         {disp8} jne        _jmp_addr_0x007a0eef                          // 0x007a0ee3    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x007a0ee5    c786500400000000803f
_jmp_addr_0x007a0eef:    {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x007a0eef    d98650040000
                         push               ecx                                           // 0x007a0ef5    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x007a0ef6    d80da0368c00
                         fcos                                                             // 0x007a0efc    d9ff
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x007a0efe    dc2d80b68a00
                         {disp32} fmul      qword ptr [__real@3fe0000000000000]           // 0x007a0f04    dc0d60b28a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x007a0f0a    d95c2420
                         {disp32} fld       dword ptr [esi + 0x0000045c]                  // 0x007a0f0e    d9865c040000
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x007a0f14    d86708
                         fstp               dword ptr [esp]                               // 0x007a0f17    d91c24
                         push               ecx                                           // 0x007a0f1a    51
                         {disp32} fld       dword ptr [esi + 0x00000458]                  // 0x007a0f1b    d98658040000
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x007a0f21    d86704
                         fstp               dword ptr [esp]                               // 0x007a0f24    d91c24
                         push               ecx                                           // 0x007a0f27    51
                         {disp32} fld       dword ptr [esi + 0x00000454]                  // 0x007a0f28    d98654040000
                         {disp32} lea       ecx, dword ptr [esp + 0x000000dc]             // 0x007a0f2e    8d8c24dc000000
                         fsub               dword ptr [edi]                               // 0x007a0f35    d827
                         fstp               dword ptr [esp]                               // 0x007a0f37    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x007a0f3a    e8c117caff
                         {disp32} fld       dword ptr [esp + 0x000000d8]                  // 0x007a0f3f    d98424d8000000
                         push               ecx                                           // 0x007a0f46    51
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x007a0f47    d84c2420
                         fstp               dword ptr [esp]                               // 0x007a0f4b    d91c24
                         push               ecx                                           // 0x007a0f4e    51
                         {disp32} fld       dword ptr [esp + 0x000000dc]                  // 0x007a0f4f    d98424dc000000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x007a0f56    d84c2424
                         fstp               dword ptr [esp]                               // 0x007a0f5a    d91c24
                         push               ecx                                           // 0x007a0f5d    51
                         {disp32} fld       dword ptr [esp + 0x000000dc]                  // 0x007a0f5e    d98424dc000000
                         {disp32} lea       ecx, dword ptr [esp + 0x000000f4]             // 0x007a0f65    8d8c24f4000000
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x007a0f6c    d84c2428
                         fstp               dword ptr [esp]                               // 0x007a0f70    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x007a0f73    e88817caff
                         {disp32} fld       dword ptr [esp + 0x000000e8]                  // 0x007a0f78    d98424e8000000
                         push               ecx                                           // 0x007a0f7f    51
                         fadd               dword ptr [edi]                               // 0x007a0f80    d807
                         fstp               dword ptr [edi]                               // 0x007a0f82    d91f
                         {disp32} fld       dword ptr [esp + 0x000000f0]                  // 0x007a0f84    d98424f0000000
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x007a0f8b    d84704
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x007a0f8e    d95f04
                         {disp32} fld       dword ptr [esp + 0x000000f4]                  // 0x007a0f91    d98424f4000000
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x007a0f98    d84708
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x007a0f9b    d95f08
                         {disp32} fld       dword ptr [esi + 0x00000468]                  // 0x007a0f9e    d98668040000
                         {disp8} fsub       dword ptr [ebp + 0x08]                        // 0x007a0fa4    d86508
                         fstp               dword ptr [esp]                               // 0x007a0fa7    d91c24
                         push               ecx                                           // 0x007a0faa    51
                         {disp32} fld       dword ptr [esi + 0x00000464]                  // 0x007a0fab    d98664040000
                         {disp8} fsub       dword ptr [ebp + 0x04]                        // 0x007a0fb1    d86504
                         fstp               dword ptr [esp]                               // 0x007a0fb4    d91c24
                         push               ecx                                           // 0x007a0fb7    51
                         {disp32} fld       dword ptr [esi + 0x00000460]                  // 0x007a0fb8    d98660040000
                         {disp32} lea       ecx, dword ptr [esp + 0x000000e8]             // 0x007a0fbe    8d8c24e8000000
                         {disp8} fsub       dword ptr [ebp + 0x00]                        // 0x007a0fc5    d86500
                         fstp               dword ptr [esp]                               // 0x007a0fc8    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x007a0fcb    e83017caff
                         {disp32} fld       dword ptr [esp + 0x000000e4]                  // 0x007a0fd0    d98424e4000000
                         push               ecx                                           // 0x007a0fd7    51
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x007a0fd8    d84c2420
                         fstp               dword ptr [esp]                               // 0x007a0fdc    d91c24
                         push               ecx                                           // 0x007a0fdf    51
                         {disp32} fld       dword ptr [esp + 0x000000e8]                  // 0x007a0fe0    d98424e8000000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x007a0fe7    d84c2424
                         fstp               dword ptr [esp]                               // 0x007a0feb    d91c24
                         push               ecx                                           // 0x007a0fee    51
                         {disp32} fld       dword ptr [esp + 0x000000e8]                  // 0x007a0fef    d98424e8000000
                         {disp32} lea       ecx, dword ptr [esp + 0x00000100]             // 0x007a0ff6    8d8c2400010000
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x007a0ffd    d84c2428
                         fstp               dword ptr [esp]                               // 0x007a1001    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x007a1004    e8f716caff
                         {disp32} fld       dword ptr [esp + 0x000000f4]                  // 0x007a1009    d98424f4000000
                         {disp8} fadd       dword ptr [ebp + 0x00]                        // 0x007a1010    d84500
                         {disp8} fstp       dword ptr [ebp + 0x00]                        // 0x007a1013    d95d00
                         {disp32} fld       dword ptr [esp + 0x000000f8]                  // 0x007a1016    d98424f8000000
                         {disp8} fadd       dword ptr [ebp + 0x04]                        // 0x007a101d    d84504
                         {disp8} fstp       dword ptr [ebp + 0x04]                        // 0x007a1020    d95d04
                         {disp32} fld       dword ptr [esp + 0x000000fc]                  // 0x007a1023    d98424fc000000
                         {disp8} fadd       dword ptr [ebp + 0x08]                        // 0x007a102a    d84508
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x007a102d    d95d08
                         {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x007a1030    d98650040000
                         {disp32} fmul      dword ptr [__real@3e4ccccd]                   // 0x007a1036    d80d44b28a00
                         fld                st(0)                                         // 0x007a103c    d9c0
                         {disp32} fadd      dword ptr [esi + 0x000003ec]                  // 0x007a103e    d886ec030000
                         {disp32} fstp      dword ptr [esi + 0x000003ec]                  // 0x007a1044    d99eec030000
                         {disp32} fadd      dword ptr [esi + 0x000003f0]                  // 0x007a104a    d886f0030000
                         {disp32} fstp      dword ptr [esi + 0x000003f0]                  // 0x007a1050    d99ef0030000
                         {disp8} jmp        _jmp_addr_0x007a1062                          // 0x007a1056    eb0a
_jmp_addr_0x007a1058:    {disp32} mov       dword ptr [esi + 0x00000450], 0x00000000      // 0x007a1058    c7865004000000000000
_jmp_addr_0x007a1062:    {disp32} mov       eax, dword ptr [esi + 0x00000134]             // 0x007a1062    8b8634010000
                         test               eax, eax                                      // 0x007a1068    85c0
                         {disp32} jne       _jmp_addr_0x007a132e                          // 0x007a106a    0f85be020000
                         {disp32} mov       eax, dword ptr [esp + 0x0000010c]             // 0x007a1070    8b84240c010000
                         test               eax, eax                                      // 0x007a1077    85c0
                         {disp32} je        _jmp_addr_0x007a132e                          // 0x007a1079    0f84af020000
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x007a107f    8b44243c
                         test               eax, eax                                      // 0x007a1083    85c0
                         {disp32} jl        _jmp_addr_0x007a132e                          // 0x007a1085    0f8ca3020000
                         cmp                eax, 0x06                                     // 0x007a108b    83f806
                         {disp32} je        _jmp_addr_0x007a132e                          // 0x007a108e    0f849a020000
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x007a1094    db44243c
                         {disp32} mov       dword ptr [esi + 0x000004d8], eax             // 0x007a1098    8986d8040000
                         {disp8} mov        dword ptr [esp + 0x10], 0x42c80000            // 0x007a109e    c74424100000c842
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x007a10a6    8b542410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc9c]             // 0x007a10aa    d80d9c6c8c00
                         {disp32} lea       ebx, dword ptr [esi + 0x000003b4]             // 0x007a10b0    8d9eb4030000
                         {disp8} mov        dword ptr [esp + 0x14], 0x41000000            // 0x007a10b6    c744241400000041
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x007a10be    8b442414
                         mov.s              ecx, ebx                                      // 0x007a10c2    8bcb
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x007a10c4    d95c243c
                         mov                dword ptr [ecx], edx                          // 0x007a10c8    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x007a10ca    894104
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x007a10cd    c744241800000000
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x007a10d5    8b542418
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x007a10d9    895108
                         {disp8} mov        dword ptr [esp + 0x10], 0x42f00000            // 0x007a10dc    c74424100000f042
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007a10e4    8b4c2410
                         {disp32} lea       ebp, dword ptr [esi + 0x000003c0]             // 0x007a10e8    8daec0030000
                         {disp8} mov        dword ptr [esp + 0x14], 0x41200000            // 0x007a10ee    c744241400002041
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x007a10f6    8b542414
                         mov.s              eax, ebp                                      // 0x007a10fa    8bc5
                         mov                dword ptr [eax], ecx                          // 0x007a10fc    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x007a10fe    895004
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x007a1101    c744241800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x007a1109    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x007a110d    894808
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x007a1110    c744241000000000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007a1118    8b442410
                         {disp32} lea       edi, dword ptr [esi + 0x0000039c]             // 0x007a111c    8dbe9c030000
                         {disp8} mov        dword ptr [esp + 0x14], 0x41c80000            // 0x007a1122    c74424140000c841
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007a112a    8b4c2414
                         mov.s              edx, edi                                      // 0x007a112e    8bd7
                         mov                dword ptr [edx], eax                          // 0x007a1130    8902
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x007a1132    894a04
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x007a1135    c744241800000000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007a113d    8b442418
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x007a1141    894208
                         {disp8} mov        dword ptr [esp + 0x10], 0x41700000            // 0x007a1144    c744241000007041
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007a114c    8b4c2410
                         {disp32} lea       eax, dword ptr [esi + 0x000003a8]             // 0x007a1150    8d86a8030000
                         mov                dword ptr [eax], ecx                          // 0x007a1156    8908
                         {disp8} mov        dword ptr [esp + 0x14], 0x41a00000            // 0x007a1158    c74424140000a041
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x007a1160    8b542414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x007a1164    c744241800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x007a116c    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x007a1170    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x007a1173    894808
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x007a1176    8d8c24a0000000
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x007a117d    e87e23c6ff
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x007a1182    d944243c
                         fcos                                                             // 0x007a1186    d9ff
                         {disp32} fstp      dword ptr [esp + 0x000000c0]                  // 0x007a1188    d99c24c0000000
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x007a118f    d944243c
                         fsin                                                             // 0x007a1193    d9fe
                         {disp32} mov       edx, dword ptr [esp + 0x000000c0]             // 0x007a1195    8b9424c0000000
                         {disp32} mov       dword ptr [esp + 0x000000a0], edx             // 0x007a119c    899424a0000000
                         {disp32} fst       dword ptr [esp + 0x000000a8]                  // 0x007a11a3    d99424a8000000
                         fchs                                                             // 0x007a11aa    d9e0
                         {disp32} fstp      dword ptr [esp + 0x000000b8]                  // 0x007a11ac    d99c24b8000000
                         fld                dword ptr [edi]                               // 0x007a11b3    d907
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x007a11b5    d94704
                         {disp8} fld        dword ptr [edi + 0x08]                        // 0x007a11b8    d94708
                         fld                st(1)                                         // 0x007a11bb    d9c1
                         {disp32} fmul      dword ptr [esp + 0x000000ac]                  // 0x007a11bd    d88c24ac000000
                         fld                st(1)                                         // 0x007a11c4    d9c1
                         {disp32} fmul      dword ptr [esp + 0x000000b8]                  // 0x007a11c6    d88c24b8000000
                         faddp              st(1), st                                     // 0x007a11cd    dec1
                         fld                st(3)                                         // 0x007a11cf    d9c3
                         {disp32} fmul      dword ptr [esp + 0x000000c0]                  // 0x007a11d1    d88c24c0000000
                         faddp              st(1), st                                     // 0x007a11d8    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000c4]                  // 0x007a11da    d88424c4000000
                         fstp               dword ptr [edi]                               // 0x007a11e1    d91f
                         fld                st(2)                                         // 0x007a11e3    d9c2
                         {disp32} fmul      dword ptr [esp + 0x000000a4]                  // 0x007a11e5    d88c24a4000000
                         fld                st(2)                                         // 0x007a11ec    d9c2
                         {disp32} fmul      dword ptr [esp + 0x000000b0]                  // 0x007a11ee    d88c24b0000000
                         faddp              st(1), st                                     // 0x007a11f5    dec1
                         fld                st(1)                                         // 0x007a11f7    d9c1
                         {disp32} fmul      dword ptr [esp + 0x000000bc]                  // 0x007a11f9    d88c24bc000000
                         faddp              st(1), st                                     // 0x007a1200    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000c8]                  // 0x007a1202    d88424c8000000
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x007a1209    d95f04
                         {disp32} lea       edx, dword ptr [esi + 0x000003a8]             // 0x007a120c    8d96a8030000
                         fxch               st(1)                                         // 0x007a1212    d9c9
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x007a1214    8d8c24a0000000
                         {disp32} fmul      dword ptr [esp + 0x000000b4]                  // 0x007a121b    d88c24b4000000
                         fxch               st(1)                                         // 0x007a1222    d9c9
                         {disp32} fmul      dword ptr [esp + 0x000000c0]                  // 0x007a1224    d88c24c0000000
                         faddp              st(1), st                                     // 0x007a122b    dec1
                         fxch               st(1)                                         // 0x007a122d    d9c9
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x007a122f    d88c24a8000000
                         faddp              st(1), st                                     // 0x007a1236    dec1
                         {disp32} fadd      dword ptr [esp + 0x000000cc]                  // 0x007a1238    d88424cc000000
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x007a123f    d95f08
                         call               _jmp_addr_0x00418a50                          // 0x007a1242    e80978c7ff
                         mov.s              edx, ebx                                      // 0x007a1247    8bd3
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x007a1249    8d8c24a0000000
                         call               _jmp_addr_0x00418a50                          // 0x007a1250    e8fb77c7ff
                         mov.s              edx, ebp                                      // 0x007a1255    8bd5
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x007a1257    8d8c24a0000000
                         call               _jmp_addr_0x00418a50                          // 0x007a125e    e8ed77c7ff
                         {disp32} mov       eax, dword ptr [esi + 0x000004d8]             // 0x007a1263    8b86d8040000
                         mov                edx, 0x00000007                               // 0x007a1269    ba07000000
                         cmp.s              eax, edx                                      // 0x007a126e    3bc2
                         mov                ecx, 0x00000003                               // 0x007a1270    b903000000
                         {disp32} mov       dword ptr [esi + 0x00000438], ecx             // 0x007a1275    898e38040000
                         {disp8} ja         _jmp_addr_0x007a12c8                          // 0x007a127b    774b
                         jmp                dword ptr [eax*4 + 0x7a133c]                  // 0x007a127d    ff24853c137a00
                         {disp32} mov       dword ptr [esi + 0x00000130], 0x00000001      // 0x007a1284    c7863001000001000000
                         {disp8} jmp        _jmp_addr_0x007a12ce                          // 0x007a128e    eb3e
                         {disp32} mov       dword ptr [esi + 0x00000130], 0x00000002      // 0x007a1290    c7863001000002000000
                         {disp8} jmp        _jmp_addr_0x007a12ce                          // 0x007a129a    eb32
                         {disp32} mov       dword ptr [esi + 0x00000130], 0x00000005      // 0x007a129c    c7863001000005000000
                         {disp8} jmp        _jmp_addr_0x007a12ce                          // 0x007a12a6    eb26
                         {disp32} mov       dword ptr [esi + 0x00000130], ecx             // 0x007a12a8    898e30010000
                         {disp8} jmp        _jmp_addr_0x007a12ce                          // 0x007a12ae    eb1e
                         {disp32} mov       dword ptr [esi + 0x00000130], 0x00000004      // 0x007a12b0    c7863001000004000000
                         {disp8} jmp        _jmp_addr_0x007a12ce                          // 0x007a12ba    eb12
                         {disp32} mov       dword ptr [esi + 0x00000130], 0x00000006      // 0x007a12bc    c7863001000006000000
                         {disp8} jmp        _jmp_addr_0x007a12ce                          // 0x007a12c6    eb06
_jmp_addr_0x007a12c8:    {disp32} mov       dword ptr [esi + 0x00000130], edx             // 0x007a12c8    899630010000
_jmp_addr_0x007a12ce:    {disp32} mov       eax, dword ptr [esi + 0x00000130]             // 0x007a12ce    8b8630010000
                         cmp.s              eax, edx                                      // 0x007a12d4    3bc2
                         {disp8} je         _jmp_addr_0x007a132e                          // 0x007a12d6    7456
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007a12d8    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x000059b4]             // 0x007a12de    8b89b4590000
                         cmp                dword ptr [ecx + eax * 0x4], 0x00             // 0x007a12e4    833c8100
                         {disp8} je         _jmp_addr_0x007a132e                          // 0x007a12e8    7444
                         cmp.s              eax, edx                                      // 0x007a12ea    3bc2
                         {disp8} jne        _jmp_addr_0x007a12f2                          // 0x007a12ec    7504
                         xor.s              ecx, ecx                                      // 0x007a12ee    33c9
                         {disp8} jmp        _jmp_addr_0x007a12f5                          // 0x007a12f0    eb03
_jmp_addr_0x007a12f2:    mov                ecx, dword ptr [ecx + eax * 0x4]              // 0x007a12f2    8b0c81
_jmp_addr_0x007a12f5:    mov                edx, dword ptr [ecx]                          // 0x007a12f5    8b11
                         call               dword ptr [edx]                               // 0x007a12f7    ff12
                         test               eax, eax                                      // 0x007a12f9    85c0
                         {disp8} jne        _jmp_addr_0x007a132e                          // 0x007a12fb    7531
                         {disp32} mov       eax, dword ptr [esi + 0x00000124]             // 0x007a12fd    8b8624010000
                         {disp32} mov       dword ptr [esi + 0x00000438], eax             // 0x007a1303    898638040000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007a1309    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x000059b4]             // 0x007a130f    8b91b4590000
                         {disp8} mov        eax, dword ptr [edx + 0x44]                   // 0x007a1315    8b4244
                         test               eax, eax                                      // 0x007a1318    85c0
                         {disp8} jne        _jmp_addr_0x007a132e                          // 0x007a131a    7512
                         call               ?StopHelpScripts@GScript@@QAEXXZ              // 0x007a131c    e85fb4f4ff
                         push               0x00c2a788                                    // 0x007a1321    6888a7c200
                         call               _jmp_addr_0x00794a80                          // 0x007a1326    e85537ffff
                         add                esp, 0x04                                     // 0x007a132b    83c404
_jmp_addr_0x007a132e:    pop                edi                                           // 0x007a132e    5f
                         pop                esi                                           // 0x007a132f    5e
                         pop                ebp                                           // 0x007a1330    5d
                         pop                ebx                                           // 0x007a1331    5b
                         add                esp, 0x000000f0                               // 0x007a1332    81c4f0000000
                         ret                0x0018                                        // 0x007a1338    c21800

// Snippet: db, [0x007a133b, 0x007a133c)
.byte 0x90                        // 0x007a133b

// Snippet: jmptbl, [0x007a133c, 0x007a135c)
.byte 0x84, 0x12, 0x7a, 0x00      // 0x007a133c
.byte 0xb0, 0x12, 0x7a, 0x00      // 0x007a1340
.byte 0xc8, 0x12, 0x7a, 0x00      // 0x007a1344
.byte 0xa8, 0x12, 0x7a, 0x00      // 0x007a1348
.byte 0xbc, 0x12, 0x7a, 0x00      // 0x007a134c
.byte 0x9c, 0x12, 0x7a, 0x00      // 0x007a1350
.byte 0xc8, 0x12, 0x7a, 0x00      // 0x007a1354
.byte 0x90, 0x12, 0x7a, 0x00      // 0x007a1358

// Snippet: db, [0x007a135c, 0x007a1360)
.byte 0x90, 0x90, 0x90, 0x90      // 0x007a135c

