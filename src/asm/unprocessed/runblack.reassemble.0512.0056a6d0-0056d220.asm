.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00401140
.extern _GetSmallTextSize__Fv
.extern @AutoScroll__9SetupListFb@9
.extern @InsertString__9SetupListFiPw@16
.extern @SetNum__9HLineDataFi@12
.extern ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.extern ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern _jmp_addr_0x00550a80
.extern _jmp_addr_0x00555130
.extern _jmp_addr_0x00566850
.extern _jmp_addr_0x0056d220
.extern @GetPlayer3DColor__7GPlayerFv@12
.extern  ??3@YAXPAX@Z
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _wcscpy
.extern _swprintf
.extern ___nw__FUl
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20

.globl _jmp_addr_0x0056a6d0
.globl _jmp_addr_0x0056a7a0
.globl _jmp_addr_0x0056a7b0
.globl _jmp_addr_0x0056a7e0
.globl _jmp_addr_0x0056a7f0
.globl _jmp_addr_0x0056a830
.globl _jmp_addr_0x0056a840
.globl _jmp_addr_0x0056a890
.globl _jmp_addr_0x0056aca0
.globl _jmp_addr_0x0056b4b0

.globl _globl_ct_0x0056a8e0
.globl _globl_ct_0x0056a910
.globl _globl_ct_0x0056a940

start_0x0056a6d0_0x0056d220:
// Snippet: asm, [0x0056a6d0, 0x0056d206)
_jmp_addr_0x0056a6d0:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056a6d0    8b0d5c19d000
                         push               ebx                                           // 0x0056a6d6    53
                         push               esi                                           // 0x0056a6d7    56
                         push               edi                                           // 0x0056a6d8    57
                         xor.s              edi, edi                                      // 0x0056a6d9    33ff
                         push               edi                                           // 0x0056a6db    57
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056a6dc    e8ef61feff
                         test               eax, eax                                      // 0x0056a6e1    85c0
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0056a6e3    8b742410
                         mov                ebx, 0x00000001                               // 0x0056a6e7    bb01000000
                         {disp8} je         _jmp_addr_0x0056a73a                          // 0x0056a6ec    744c
_jmp_addr_0x0056a6ee:    cmp.s              eax, esi                                      // 0x0056a6ee    3bc6
                         {disp8} je         _jmp_addr_0x0056a72a                          // 0x0056a6f0    7438
                         {disp32} mov       ecx, dword ptr [eax + 0x00000938]             // 0x0056a6f2    8b8838090000
                         test               ecx, ecx                                      // 0x0056a6f8    85c9
                         {disp8} jne        _jmp_addr_0x0056a72a                          // 0x0056a6fa    752e
                         cmp                dword ptr [eax + 0x000008e0], ebx             // 0x0056a6fc    3998e0080000
                         {disp8} jne        _jmp_addr_0x0056a72a                          // 0x0056a702    7526
                         cmp                dword ptr [esi + 0x000008e0], ebx             // 0x0056a704    399ee0080000
                         mov.s              edi, eax                                      // 0x0056a70a    8bf8
                         {disp8} je         _jmp_addr_0x0056a71e                          // 0x0056a70c    7410
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056a70e    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a0c]             // 0x0056a714    8b910c5a2000
                         test               edx, edx                                      // 0x0056a71a    85d2
                         {disp8} je         _jmp_addr_0x0056a72a                          // 0x0056a71c    740c
_jmp_addr_0x0056a71e:    {disp32} mov       ecx, dword ptr [eax + 0x00000a44]             // 0x0056a71e    8b88440a0000
                         {disp32} inc       dword ptr [ecx + 0x00001064]                  // 0x0056a724    ff8164100000
_jmp_addr_0x0056a72a:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056a72a    8b0d5c19d000
                         push               eax                                           // 0x0056a730    50
                         call               ?GetNextActivePlayer@GGame@@QAEPAVGPlayer@@PAV2@@Z                          // 0x0056a731    e89a61feff
                         test               eax, eax                                      // 0x0056a736    85c0
                         {disp8} jne        _jmp_addr_0x0056a6ee                          // 0x0056a738    75b4
_jmp_addr_0x0056a73a:    cmp                dword ptr [esi + 0x000008e0], ebx             // 0x0056a73a    399ee0080000
                         {disp8} jne        _jmp_addr_0x0056a763                          // 0x0056a740    7521
                         {disp32} mov       eax, dword ptr [data_bytes + 0x340054]        // 0x0056a742    a15460d000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0056a747    8b4c2414
                         inc                eax                                           // 0x0056a74b    40
                         {disp32} mov       dword ptr [data_bytes + 0x340054], eax        // 0x0056a74c    a35460d000
                         {disp32} mov       edx, dword ptr [esi + 0x00000a44]             // 0x0056a751    8b96440a0000
                         {disp8} mov        dword ptr [edx + 0x18], eax                   // 0x0056a757    894218
                         {disp32} mov       eax, dword ptr [esi + 0x00000a44]             // 0x0056a75a    8b86440a0000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0056a760    89481c
_jmp_addr_0x0056a763:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056a763    8b0d5c19d000
                         call               _jmp_addr_0x00550a80                          // 0x0056a769    e81263feff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0056a76e    8b0d5c19d000
                         mov.s              esi, eax                                      // 0x0056a774    8bf0
                         dec                esi                                           // 0x0056a776    4e
                         call               _jmp_addr_0x00555130                          // 0x0056a777    e8b4a9feff
                         cmp.s              eax, esi                                      // 0x0056a77c    3bc6
                         {disp8} jne        _jmp_addr_0x0056a798                          // 0x0056a77e    7518
                         test               edi, edi                                      // 0x0056a780    85ff
                         {disp8} je         _jmp_addr_0x0056a798                          // 0x0056a782    7414
                         {disp32} mov       eax, dword ptr [data_bytes + 0x340054]        // 0x0056a784    a15460d000
                         inc                eax                                           // 0x0056a789    40
                         {disp32} mov       dword ptr [data_bytes + 0x340054], eax        // 0x0056a78a    a35460d000
                         {disp32} mov       edx, dword ptr [edi + 0x00000a44]             // 0x0056a78f    8b97440a0000
                         {disp8} mov        dword ptr [edx + 0x18], eax                   // 0x0056a795    894218
_jmp_addr_0x0056a798:    pop                edi                                           // 0x0056a798    5f
                         pop                esi                                           // 0x0056a799    5e
                         pop                ebx                                           // 0x0056a79a    5b
                         ret                                                              // 0x0056a79b    c3
                         nop                                                              // 0x0056a79c    90
                         nop                                                              // 0x0056a79d    90
                         nop                                                              // 0x0056a79e    90
                         nop                                                              // 0x0056a79f    90
_jmp_addr_0x0056a7a0:    mov                eax, dword ptr [ecx]                          // 0x0056a7a0    8b01
                         ret                                                              // 0x0056a7a2    c3
                         nop                                                              // 0x0056a7a3    90
                         nop                                                              // 0x0056a7a4    90
                         nop                                                              // 0x0056a7a5    90
                         nop                                                              // 0x0056a7a6    90
                         nop                                                              // 0x0056a7a7    90
                         nop                                                              // 0x0056a7a8    90
                         nop                                                              // 0x0056a7a9    90
                         nop                                                              // 0x0056a7aa    90
                         nop                                                              // 0x0056a7ab    90
                         nop                                                              // 0x0056a7ac    90
                         nop                                                              // 0x0056a7ad    90
                         nop                                                              // 0x0056a7ae    90
                         nop                                                              // 0x0056a7af    90
_jmp_addr_0x0056a7b0:    {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0056a7b0    8b4108
                         test               eax, eax                                      // 0x0056a7b3    85c0
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0056a7b5    8b542404
                         {disp8} je         _jmp_addr_0x0056a7c1                          // 0x0056a7b9    7406
                         {disp32} mov       dword ptr [eax + 0x00000080], edx             // 0x0056a7bb    899080000000
_jmp_addr_0x0056a7c1:    cmp                dword ptr [ecx], 0x00                         // 0x0056a7c1    833900
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0056a7c4    895108
                         {disp8} jne        _jmp_addr_0x0056a7cb                          // 0x0056a7c7    7502
                         mov                dword ptr [ecx], edx                          // 0x0056a7c9    8911
_jmp_addr_0x0056a7cb:    {disp8} inc        dword ptr [ecx + 0x04]                        // 0x0056a7cb    ff4104
                         ret                0x0004                                        // 0x0056a7ce    c20400
                         nop                                                              // 0x0056a7d1    90
                         nop                                                              // 0x0056a7d2    90
                         nop                                                              // 0x0056a7d3    90
                         nop                                                              // 0x0056a7d4    90
                         nop                                                              // 0x0056a7d5    90
                         nop                                                              // 0x0056a7d6    90
                         nop                                                              // 0x0056a7d7    90
                         nop                                                              // 0x0056a7d8    90
                         nop                                                              // 0x0056a7d9    90
                         nop                                                              // 0x0056a7da    90
                         nop                                                              // 0x0056a7db    90
                         nop                                                              // 0x0056a7dc    90
                         nop                                                              // 0x0056a7dd    90
                         nop                                                              // 0x0056a7de    90
                         nop                                                              // 0x0056a7df    90
_jmp_addr_0x0056a7e0:    mov                eax, dword ptr [ecx]                          // 0x0056a7e0    8b01
                         ret                                                              // 0x0056a7e2    c3
                         nop                                                              // 0x0056a7e3    90
                         nop                                                              // 0x0056a7e4    90
                         nop                                                              // 0x0056a7e5    90
                         nop                                                              // 0x0056a7e6    90
                         nop                                                              // 0x0056a7e7    90
                         nop                                                              // 0x0056a7e8    90
                         nop                                                              // 0x0056a7e9    90
                         nop                                                              // 0x0056a7ea    90
                         nop                                                              // 0x0056a7eb    90
                         nop                                                              // 0x0056a7ec    90
                         nop                                                              // 0x0056a7ed    90
                         nop                                                              // 0x0056a7ee    90
                         nop                                                              // 0x0056a7ef    90
_jmp_addr_0x0056a7f0:    push               edi                                           // 0x0056a7f0    57
                         mov.s              edi, ecx                                      // 0x0056a7f1    8bf9
                         mov                eax, dword ptr [edi]                          // 0x0056a7f3    8b07
                         test               eax, eax                                      // 0x0056a7f5    85c0
                         {disp8} je         _jmp_addr_0x0056a817                          // 0x0056a7f7    741e
                         push               esi                                           // 0x0056a7f9    56
_jmp_addr_0x0056a7fa:    {disp32} mov       esi, dword ptr [eax + 0x00000080]             // 0x0056a7fa    8bb080000000
                         push               eax                                           // 0x0056a800    50
                         call               ??3@YAXPAX@Z                                  // 0x0056a801    e892462400
                         add                esp, 0x04                                     // 0x0056a806    83c404
                         test               esi, esi                                      // 0x0056a809    85f6
                         mov.s              eax, esi                                      // 0x0056a80b    8bc6
                         {disp8} jne        _jmp_addr_0x0056a7fa                          // 0x0056a80d    75eb
                         mov                dword ptr [edi], esi                          // 0x0056a80f    8937
                         {disp8} mov        dword ptr [edi + 0x04], esi                   // 0x0056a811    897704
                         pop                esi                                           // 0x0056a814    5e
                         pop                edi                                           // 0x0056a815    5f
                         ret                                                              // 0x0056a816    c3
_jmp_addr_0x0056a817:    mov                dword ptr [edi], 0x00000000                   // 0x0056a817    c70700000000
                         {disp8} mov        dword ptr [edi + 0x04], 0x00000000            // 0x0056a81d    c7470400000000
                         pop                edi                                           // 0x0056a824    5f
                         ret                                                              // 0x0056a825    c3
                         nop                                                              // 0x0056a826    90
                         nop                                                              // 0x0056a827    90
                         nop                                                              // 0x0056a828    90
                         nop                                                              // 0x0056a829    90
                         nop                                                              // 0x0056a82a    90
                         nop                                                              // 0x0056a82b    90
                         nop                                                              // 0x0056a82c    90
                         nop                                                              // 0x0056a82d    90
                         nop                                                              // 0x0056a82e    90
                         nop                                                              // 0x0056a82f    90
_jmp_addr_0x0056a830:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0056a830    8b442404
                         mov                dword ptr [ecx], eax                          // 0x0056a834    8901
                         ret                0x0004                                        // 0x0056a836    c20400
                         nop                                                              // 0x0056a839    90
                         nop                                                              // 0x0056a83a    90
                         nop                                                              // 0x0056a83b    90
                         nop                                                              // 0x0056a83c    90
                         nop                                                              // 0x0056a83d    90
                         nop                                                              // 0x0056a83e    90
                         nop                                                              // 0x0056a83f    90
_jmp_addr_0x0056a840:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x0056a840    a194c9be00
                         test               eax, eax                                      // 0x0056a845    85c0
                         push               esi                                           // 0x0056a847    56
                         mov.s              esi, ecx                                      // 0x0056a848    8bf1
                         {disp8} je         _jmp_addr_0x0056a885                          // 0x0056a84a    7439
                         push               edi                                           // 0x0056a84c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0056a84d    8b7c240c
                         push               0x0                                           // 0x0056a851    6a00
                         push               0x000007dc                                    // 0x0056a853    68dc070000
                         push               edi                                           // 0x0056a858    57
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x0056a859    e882202500
                         cmp                eax, 0x03                                     // 0x0056a85e    83f803
                         {disp8} jne        _jmp_addr_0x0056a86d                          // 0x0056a861    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x0056a863    c70594c9be0000000000
_jmp_addr_0x0056a86d:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0056a86d    8b8e14020000
                         xor.s              eax, eax                                      // 0x0056a873    33c0
                         mov                al, byte ptr [edi]                            // 0x0056a875    8a07
                         pop                edi                                           // 0x0056a877    5f
                         add                eax, 0x000007dc                               // 0x0056a878    05dc070000
                         add.s              ecx, eax                                      // 0x0056a87d    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0056a87f    898e14020000
_jmp_addr_0x0056a885:    pop                esi                                           // 0x0056a885    5e
                         ret                0x0004                                        // 0x0056a886    c20400
                         nop                                                              // 0x0056a889    90
                         nop                                                              // 0x0056a88a    90
                         nop                                                              // 0x0056a88b    90
                         nop                                                              // 0x0056a88c    90
                         nop                                                              // 0x0056a88d    90
                         nop                                                              // 0x0056a88e    90
                         nop                                                              // 0x0056a88f    90
_jmp_addr_0x0056a890:    {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x0056a890    a190c9be00
                         test               eax, eax                                      // 0x0056a895    85c0
                         push               esi                                           // 0x0056a897    56
                         mov.s              esi, ecx                                      // 0x0056a898    8bf1
                         {disp8} je         _jmp_addr_0x0056a8d5                          // 0x0056a89a    7439
                         push               edi                                           // 0x0056a89c    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x0056a89d    8b7c240c
                         push               0x0                                           // 0x0056a8a1    6a00
                         push               0x000007dc                                    // 0x0056a8a3    68dc070000
                         push               edi                                           // 0x0056a8a8    57
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x0056a8a9    e872202500
                         cmp                eax, 0x03                                     // 0x0056a8ae    83f803
                         {disp8} jne        _jmp_addr_0x0056a8bd                          // 0x0056a8b1    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x0056a8b3    c70590c9be0000000000
_jmp_addr_0x0056a8bd:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x0056a8bd    8b8e14020000
                         xor.s              eax, eax                                      // 0x0056a8c3    33c0
                         mov                al, byte ptr [edi]                            // 0x0056a8c5    8a07
                         pop                edi                                           // 0x0056a8c7    5f
                         add                eax, 0x000007dc                               // 0x0056a8c8    05dc070000
                         add.s              ecx, eax                                      // 0x0056a8cd    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x0056a8cf    898e14020000
_jmp_addr_0x0056a8d5:    pop                esi                                           // 0x0056a8d5    5e
                         ret                0x0004                                        // 0x0056a8d6    c20400
                         nop                                                              // 0x0056a8d9    90
                         nop                                                              // 0x0056a8da    90
                         nop                                                              // 0x0056a8db    90
                         nop                                                              // 0x0056a8dc    90
                         nop                                                              // 0x0056a8dd    90
                         nop                                                              // 0x0056a8de    90
                         nop                                                              // 0x0056a8df    90
_globl_ct_0x0056a8e0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0056a8e0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0056a8e6    b001
                         test               al, cl                                        // 0x0056a8e8    84c8
                         {disp8} jne        _jmp_addr_0x0056a8f4                          // 0x0056a8ea    7508
                         or.s               cl, al                                        // 0x0056a8ec    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0056a8ee    880d34c9fa00
_jmp_addr_0x0056a8f4:    {disp32} jmp       _jmp_addr_0x0056a900                          // 0x0056a8f4    e907000000
                         nop                                                              // 0x0056a8f9    90
                         nop                                                              // 0x0056a8fa    90
                         nop                                                              // 0x0056a8fb    90
                         nop                                                              // 0x0056a8fc    90
                         nop                                                              // 0x0056a8fd    90
                         nop                                                              // 0x0056a8fe    90
                         nop                                                              // 0x0056a8ff    90
_jmp_addr_0x0056a900:    push               0x00407870                                    // 0x0056a900    6870784000
                         call               _atexit                                       // 0x0056a905    e887ae2500
                         pop                ecx                                           // 0x0056a90a    59
                         ret                                                              // 0x0056a90b    c3
                         nop                                                              // 0x0056a90c    90
                         nop                                                              // 0x0056a90d    90
                         nop                                                              // 0x0056a90e    90
                         nop                                                              // 0x0056a90f    90
_globl_ct_0x0056a910:    {disp32} jmp       _jmp_addr_0x0056a920                          // 0x0056a910    e90b000000
                         nop                                                              // 0x0056a915    90
                         nop                                                              // 0x0056a916    90
                         nop                                                              // 0x0056a917    90
                         nop                                                              // 0x0056a918    90
                         nop                                                              // 0x0056a919    90
                         nop                                                              // 0x0056a91a    90
                         nop                                                              // 0x0056a91b    90
                         nop                                                              // 0x0056a91c    90
                         nop                                                              // 0x0056a91d    90
                         nop                                                              // 0x0056a91e    90
                         nop                                                              // 0x0056a91f    90
_jmp_addr_0x0056a920:    {disp32} fld       dword ptr [rdata_bytes + 0x56ed4]             // 0x0056a920    d905d4fe8f00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x56ed0]             // 0x0056a926    d80dd0fe8f00
                         {disp32} fstp      dword ptr [data_bytes + 0x340060]             // 0x0056a92c    d91d6060d000
                         ret                                                              // 0x0056a932    c3
                         nop                                                              // 0x0056a933    90
                         nop                                                              // 0x0056a934    90
                         nop                                                              // 0x0056a935    90
                         nop                                                              // 0x0056a936    90
                         nop                                                              // 0x0056a937    90
                         nop                                                              // 0x0056a938    90
                         nop                                                              // 0x0056a939    90
                         nop                                                              // 0x0056a93a    90
                         nop                                                              // 0x0056a93b    90
                         nop                                                              // 0x0056a93c    90
                         nop                                                              // 0x0056a93d    90
                         nop                                                              // 0x0056a93e    90
                         nop                                                              // 0x0056a93f    90
_globl_ct_0x0056a940:    {disp32} jmp       _jmp_addr_0x0056a950                          // 0x0056a940    e90b000000
                         nop                                                              // 0x0056a945    90
                         nop                                                              // 0x0056a946    90
                         nop                                                              // 0x0056a947    90
                         nop                                                              // 0x0056a948    90
                         nop                                                              // 0x0056a949    90
                         nop                                                              // 0x0056a94a    90
                         nop                                                              // 0x0056a94b    90
                         nop                                                              // 0x0056a94c    90
                         nop                                                              // 0x0056a94d    90
                         nop                                                              // 0x0056a94e    90
                         nop                                                              // 0x0056a94f    90
_jmp_addr_0x0056a950:    {disp32} mov       dword ptr [data_bytes + 0x34005c], 0xffffffff // 0x0056a950    c7055c60d000ffffffff
                         ret                                                              // 0x0056a95a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                          // 0x0056a95b    e8996ee9ff
_jmp_addr_0x0056a960:    push               ebp                                           // 0x0056a960    55
                         mov.s              ebp, esp                                      // 0x0056a961    8bec
                         and                esp, 0xfffffff8                               // 0x0056a963    83e4f8
                         sub                esp, 0x00000214                               // 0x0056a966    81ec14020000
                         {disp8} mov        edx, dword ptr [ebp + 0x20]                   // 0x0056a96c    8b5520
                         push               ebx                                           // 0x0056a96f    53
                         push               esi                                           // 0x0056a970    56
                         {disp8} mov        esi, dword ptr [ebp + 0x1c]                   // 0x0056a971    8b751c
                         {disp8} lea        eax, dword ptr [esi + -0x01]                  // 0x0056a974    8d46ff
                         cmp.s              edx, eax                                      // 0x0056a977    3bd0
                         push               edi                                           // 0x0056a979    57
                         mov.s              ebx, ecx                                      // 0x0056a97a    8bd9
                         {disp32} jge       _jmp_addr_0x0056ac92                          // 0x0056a97c    0f8d10030000
                         {disp8} mov        eax, dword ptr [ebp + 0x14]                   // 0x0056a982    8b4514
                         {disp8} mov        ecx, dword ptr [ebp + 0x24]                   // 0x0056a985    8b4d24
                         {disp8} lea        edi, dword ptr [eax + 0x01]                   // 0x0056a988    8d7801
                         cmp.s              ecx, edi                                      // 0x0056a98b    3bcf
                         {disp32} jle       _jmp_addr_0x0056ac92                          // 0x0056a98d    0f8eff020000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x340068]        // 0x0056a993    8b3d6860d000
                         test               edi, edi                                      // 0x0056a999    85ff
                         {disp32} je        _jmp_addr_0x0056ac84                          // 0x0056a99b    0f84e3020000
                         cmp                dword ptr [ebp + 0x28], 0x00                  // 0x0056a9a1    837d2800
                         {disp8} jne        _jmp_addr_0x0056a9b1                          // 0x0056a9a5    750a
                         cmp                dword ptr [ebx + 0x30], 0x00                  // 0x0056a9a7    837b3000
                         {disp32} jne       _jmp_addr_0x0056aa8a                          // 0x0056a9ab    0f85d9000000
_jmp_addr_0x0056a9b1:    cmp                dword ptr [ebx + 0x30], 0x01                  // 0x0056a9b1    837b3001
                         {disp32} je        _jmp_addr_0x0056aa8a                          // 0x0056a9b5    0f84cf000000
                         cmp.s              edx, eax                                      // 0x0056a9bb    3bd0
                         {disp8} jle        _jmp_addr_0x0056a9c8                          // 0x0056a9bd    7e09
                         cmp.s              edx, esi                                      // 0x0056a9bf    3bd6
                         {disp8} jl         _jmp_addr_0x0056a9ce                          // 0x0056a9c1    7c0b
                         {disp8} mov        dword ptr [ebp + 0x20], esi                   // 0x0056a9c3    897520
                         {disp8} jmp        _jmp_addr_0x0056a9cb                          // 0x0056a9c6    eb03
_jmp_addr_0x0056a9c8:    {disp8} mov        dword ptr [ebp + 0x20], eax                   // 0x0056a9c8    894520
_jmp_addr_0x0056a9cb:    {disp8} mov        edx, dword ptr [ebp + 0x20]                   // 0x0056a9cb    8b5520
_jmp_addr_0x0056a9ce:    cmp.s              ecx, eax                                      // 0x0056a9ce    3bc8
                         {disp8} jle        _jmp_addr_0x0056a9da                          // 0x0056a9d0    7e08
                         cmp.s              ecx, esi                                      // 0x0056a9d2    3bce
                         {disp8} jl         _jmp_addr_0x0056a9dc                          // 0x0056a9d4    7c06
                         mov.s              ecx, esi                                      // 0x0056a9d6    8bce
                         {disp8} jmp        _jmp_addr_0x0056a9dc                          // 0x0056a9d8    eb02
_jmp_addr_0x0056a9da:    mov.s              ecx, eax                                      // 0x0056a9da    8bc8
_jmp_addr_0x0056a9dc:    {disp8} lea        eax, dword ptr [ecx + -0x0a]                  // 0x0056a9dc    8d41f6
                         cmp.s              edx, eax                                      // 0x0056a9df    3bd0
                         {disp32} jge       _jmp_addr_0x0056ac84                          // 0x0056a9e1    0f8d9d020000
                         mov                eax, dword ptr [ebx]                          // 0x0056a9e7    8b03
                         cmp                eax, 0x01                                     // 0x0056a9e9    83f801
                         {disp32} jl        _jmp_addr_0x0056ac84                          // 0x0056a9ec    0f8c92020000
                         cmp                eax, 0x04                                     // 0x0056a9f2    83f804
                         {disp32} jg        _jmp_addr_0x0056ac84                          // 0x0056a9f5    0f8f89020000
                         {disp8} mov        esi, dword ptr [edi + eax * 0x4 + 0x54]       // 0x0056a9fb    8b748754
                         {disp8} mov        eax, dword ptr [ebp + 0x18]                   // 0x0056a9ff    8b4518
                         add                ecx, -0x2                                     // 0x0056aa02    83c1fe
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x0056aa05    894e14
                         {disp8} lea        ecx, dword ptr [eax + -0x04]                  // 0x0056aa08    8d48fc
                         add                eax, 0xfffffed4                               // 0x0056aa0b    05d4feffff
                         add                edx, 0x02                                     // 0x0056aa10    83c202
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x0056aa13    89560c
                         {disp8} mov        dword ptr [esi + 0x10], ecx                   // 0x0056aa16    894e10
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x0056aa19    894608
                         mov                eax, dword ptr [ebx]                          // 0x0056aa1c    8b03
                         xor.s              edi, edi                                      // 0x0056aa1e    33ff
                         test               eax, eax                                      // 0x0056aa20    85c0
                         {disp8} jle        _jmp_addr_0x0056aa5d                          // 0x0056aa22    7e39
                         {disp8} lea        eax, dword ptr [ebx + 0x14]                   // 0x0056aa24    8d4314
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0056aa27    8944240c
                         {disp8} jmp        _jmp_addr_0x0056aa31                          // 0x0056aa2b    eb04
_jmp_addr_0x0056aa2d:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0056aa2d    8b44240c
_jmp_addr_0x0056aa31:    {disp8} fld        dword ptr [eax + -0x10]                       // 0x0056aa31    d940f0
                         mov                edx, dword ptr [eax]                          // 0x0056aa34    8b10
                         mov                eax, dword ptr [esi]                          // 0x0056aa36    8b06
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0056aa38    d95c2418
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0056aa3c    8d4c2414
                         push               ecx                                           // 0x0056aa40    51
                         push               edi                                           // 0x0056aa41    57
                         mov.s              ecx, esi                                      // 0x0056aa42    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0056aa44    8954241c
                         call               dword ptr [eax + 0x40]                        // 0x0056aa48    ff5040
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0056aa4b    8b4c240c
                         mov                eax, dword ptr [ebx]                          // 0x0056aa4f    8b03
                         inc                edi                                           // 0x0056aa51    47
                         add                ecx, 0x4                                      // 0x0056aa52    83c104
                         cmp.s              edi, eax                                      // 0x0056aa55    3bf8
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0056aa57    894c240c
                         {disp8} jl         _jmp_addr_0x0056aa2d                          // 0x0056aa5b    7cd0
_jmp_addr_0x0056aa5d:    cmp                dword ptr [ebx], 0x01                         // 0x0056aa5d    833b01
                         mov                edx, dword ptr [esi]                          // 0x0056aa60    8b16
                         {disp8} jne        _jmp_addr_0x0056aa6a                          // 0x0056aa62    7506
                         {disp8} mov        eax, dword ptr [ebx + 0x24]                   // 0x0056aa64    8b4324
                         push               eax                                           // 0x0056aa67    50
                         {disp8} jmp        _jmp_addr_0x0056aa6c                          // 0x0056aa68    eb02
_jmp_addr_0x0056aa6a:    push               0x0                                           // 0x0056aa6a    6a00
_jmp_addr_0x0056aa6c:    mov.s              ecx, esi                                      // 0x0056aa6c    8bce
                         call               dword ptr [edx + 0x38]                        // 0x0056aa6e    ff5238
                         mov                eax, dword ptr [esi]                          // 0x0056aa71    8b06
                         push               0x0                                           // 0x0056aa73    6a00
                         push               0x0                                           // 0x0056aa75    6a00
                         mov.s              ecx, esi                                      // 0x0056aa77    8bce
                         call               dword ptr [eax + 0x14]                        // 0x0056aa79    ff5014
                         mov                eax, 0x00000001                               // 0x0056aa7c    b801000000
                         pop                edi                                           // 0x0056aa81    5f
                         pop                esi                                           // 0x0056aa82    5e
                         pop                ebx                                           // 0x0056aa83    5b
                         mov.s              esp, ebp                                      // 0x0056aa84    8be5
                         pop                ebp                                           // 0x0056aa86    5d
                         ret                0x0024                                        // 0x0056aa87    c22400
_jmp_addr_0x0056aa8a:    {disp8} mov        ecx, dword ptr [ebp + 0x18]                   // 0x0056aa8a    8b4d18
                         {disp32} lea       edi, dword ptr [ecx + -0x0000012c]            // 0x0056aa8d    8db9d4feffff
                         mov                ecx, dword ptr [ebx]                          // 0x0056aa93    8b0b
                         mov                eax, 0x0000012c                               // 0x0056aa95    b82c010000
                         cdq                                                              // 0x0056aa9a    99
                         {disp8} lea        esi, dword ptr [ecx + 0x01]                   // 0x0056aa9b    8d7101
                         idiv               esi                                           // 0x0056aa9e    f7fe
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0056aaa0    c744241000000000
                         mov.s              esi, eax                                      // 0x0056aaa8    8bf0
                         xor.s              eax, eax                                      // 0x0056aaaa    33c0
                         cmp.s              ecx, eax                                      // 0x0056aaac    3bc8
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0056aaae    89442414
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0056aab2    8944241c
                         {disp32} jle       _jmp_addr_0x0056aba5                          // 0x0056aab6    0f8ee9000000
                         {disp8} lea        ecx, dword ptr [ebx + 0x04]                   // 0x0056aabc    8d4b04
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0056aabf    894c240c
                         {disp8} jmp        _jmp_addr_0x0056aac9                          // 0x0056aac3    eb04
_jmp_addr_0x0056aac5:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0056aac5    8b4c240c
_jmp_addr_0x0056aac9:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0056aac9    d9442410
                         {disp8} mov        eax, dword ptr [ebx + 0x2c]                   // 0x0056aacd    8b432c
                         cmp                eax, 0x02                                     // 0x0056aad0    83f802
                         fadd               dword ptr [ecx]                               // 0x0056aad3    d801
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0056aad5    d95c2410
                         {disp8} jne        _jmp_addr_0x0056ab10                          // 0x0056aad9    7535
                         {disp8} fld        dword ptr [ebx + 0x24]                        // 0x0056aadb    d94324
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0056aade    d81d98a38a00
                         fnstsw             ax                                            // 0x0056aae4    dfe0
                         test               ah, 0x40                                      // 0x0056aae6    f6c440
                         {disp8} jne        _jmp_addr_0x0056ab10                          // 0x0056aae9    7525
                         {disp8} fld        dword ptr [ebx + 0x24]                        // 0x0056aaeb    d94324
                         sub                esp, 0x08                                     // 0x0056aaee    83ec08
                         fstp               qword ptr [esp]                               // 0x0056aaf1    dd1c24
                         sub                esp, 0x08                                     // 0x0056aaf4    83ec08
                         fld                dword ptr [ecx]                               // 0x0056aaf7    d901
                         {disp8} lea        edx, dword ptr [ebx + 0x34]                   // 0x0056aaf9    8d5334
                         {disp8} fdiv       dword ptr [ebx + 0x24]                        // 0x0056aafc    d87324
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x0056aaff    8d442430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x0056ab03    d80d1cb48a00
                         fstp               qword ptr [esp]                               // 0x0056ab09    dd1c24
                         push               edx                                           // 0x0056ab0c    52
                         push               eax                                           // 0x0056ab0d    50
                         {disp8} jmp        _jmp_addr_0x0056ab2a                          // 0x0056ab0e    eb1a
_jmp_addr_0x0056ab10:    {disp8} fld        dword ptr [ebx + 0x24]                        // 0x0056ab10    d94324
                         sub                esp, 0x08                                     // 0x0056ab13    83ec08
                         fstp               qword ptr [esp]                               // 0x0056ab16    dd1c24
                         sub                esp, 0x08                                     // 0x0056ab19    83ec08
                         fld                dword ptr [ecx]                               // 0x0056ab1c    d901
                         {disp8} lea        ecx, dword ptr [ebx + 0x34]                   // 0x0056ab1e    8d4b34
                         fstp               qword ptr [esp]                               // 0x0056ab21    dd1c24
                         push               ecx                                           // 0x0056ab24    51
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0056ab25    8d542434
                         push               edx                                           // 0x0056ab29    52
_jmp_addr_0x0056ab2a:    call               _swprintf                                     // 0x0056ab2a    e850b92500
                         mov                eax, dword ptr [ebx]                          // 0x0056ab2f    8b03
                         add                esp, 0x18                                     // 0x0056ab31    83c418
                         cmp                eax, 0x01                                     // 0x0056ab34    83f801
                         {disp8} jle        _jmp_addr_0x0056ab7d                          // 0x0056ab37    7e44
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0056ab39    8b44240c
                         push               0x0                                           // 0x0056ab3d    6a00
                         add                eax, 0x10                                     // 0x0056ab3f    83c010
                         push               0x0                                           // 0x0056ab42    6a00
                         push               eax                                           // 0x0056ab44    50
                         call               _GetSmallTextSize__Fv                         // 0x0056ab45    e8c6cee9ff
                         {disp8} mov        edx, dword ptr [ebp + 0x20]                   // 0x0056ab4a    8b5520
                         push               eax                                           // 0x0056ab4d    50
                         {disp8} mov        eax, dword ptr [ebp + 0x1c]                   // 0x0056ab4e    8b451c
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0056ab51    8d4c2430
                         push               ecx                                           // 0x0056ab55    51
                         add                edx, 0x02                                     // 0x0056ab56    83c202
                         push               0x1                                           // 0x0056ab59    6a01
                         push               edx                                           // 0x0056ab5b    52
                         push               eax                                           // 0x0056ab5c    50
                         {disp8} mov        eax, dword ptr [ebp + 0x14]                   // 0x0056ab5d    8b4514
                         lea                ecx, dword ptr [edi + esi * 0x2]              // 0x0056ab60    8d0c77
                         mov.s              edx, esi                                      // 0x0056ab63    8bd6
                         add.s              edx, ecx                                      // 0x0056ab65    03d1
                         push               edx                                           // 0x0056ab67    52
                         lea                ecx, dword ptr [esi + esi * 0x1]              // 0x0056ab68    8d0c36
                         mov.s              edx, edi                                      // 0x0056ab6b    8bd7
                         push               eax                                           // 0x0056ab6d    50
                         sub.s              edx, ecx                                      // 0x0056ab6e    2bd1
                         push               edx                                           // 0x0056ab70    52
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0056ab71    e8da6beaff
                         fstp               st(0)                                         // 0x0056ab76    ddd8
                         add                esp, 0x2c                                     // 0x0056ab78    83c42c
                         {disp8} jmp        _jmp_addr_0x0056ab85                          // 0x0056ab7b    eb08
_jmp_addr_0x0056ab7d:    {disp8} mov        dword ptr [esp + 0x14], 0x00000001            // 0x0056ab7d    c744241401000000
_jmp_addr_0x0056ab85:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0056ab85    8b44241c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0056ab89    8b54240c
                         mov                ecx, dword ptr [ebx]                          // 0x0056ab8d    8b0b
                         add.s              edi, esi                                      // 0x0056ab8f    03fe
                         inc                eax                                           // 0x0056ab91    40
                         add                edx, 0x04                                     // 0x0056ab92    83c204
                         cmp.s              eax, ecx                                      // 0x0056ab95    3bc1
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0056ab97    8944241c
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0056ab9b    8954240c
                         {disp32} jl        _jmp_addr_0x0056aac5                          // 0x0056ab9f    0f8c20ffffff
_jmp_addr_0x0056aba5:    cmp                dword ptr [ebx + 0x2c], 0x02                  // 0x0056aba5    837b2c02
                         {disp8} je         _jmp_addr_0x0056ac0e                          // 0x0056aba9    7463
                         {disp8} fld        dword ptr [ebx + 0x24]                        // 0x0056abab    d94324
                         sub                esp, 0x08                                     // 0x0056abae    83ec08
                         fstp               qword ptr [esp]                               // 0x0056abb1    dd1c24
                         sub                esp, 0x08                                     // 0x0056abb4    83ec08
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0056abb7    d9442420
                         add                ebx, 0x34                                     // 0x0056abbb    83c334
                         fstp               qword ptr [esp]                               // 0x0056abbe    dd1c24
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x0056abc1    8d442430
                         push               ebx                                           // 0x0056abc5    53
                         push               eax                                           // 0x0056abc6    50
                         call               _swprintf                                     // 0x0056abc7    e8b3b82500
                         add                esp, 0x18                                     // 0x0056abcc    83c418
                         push               0x0                                           // 0x0056abcf    6a00
                         push               0x0                                           // 0x0056abd1    6a00
                         push               0x00c4ccd8                                    // 0x0056abd3    68d8ccc400
                         call               _GetSmallTextSize__Fv                         // 0x0056abd8    e833cee9ff
                         {disp8} mov        edx, dword ptr [ebp + 0x20]                   // 0x0056abdd    8b5520
                         push               eax                                           // 0x0056abe0    50
                         {disp8} mov        eax, dword ptr [ebp + 0x1c]                   // 0x0056abe1    8b451c
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0056abe4    8d4c2430
                         push               ecx                                           // 0x0056abe8    51
                         add                edx, 0x02                                     // 0x0056abe9    83c202
                         push               0x1                                           // 0x0056abec    6a01
                         push               edx                                           // 0x0056abee    52
                         push               eax                                           // 0x0056abef    50
                         {disp8} mov        eax, dword ptr [ebp + 0x14]                   // 0x0056abf0    8b4514
                         lea                ecx, dword ptr [edi + esi * 0x2]              // 0x0056abf3    8d0c77
                         mov.s              edx, esi                                      // 0x0056abf6    8bd6
                         add.s              edx, ecx                                      // 0x0056abf8    03d1
                         push               edx                                           // 0x0056abfa    52
                         lea                ecx, dword ptr [esi + esi * 0x1]              // 0x0056abfb    8d0c36
                         mov.s              edx, edi                                      // 0x0056abfe    8bd7
                         push               eax                                           // 0x0056ac00    50
                         sub.s              edx, ecx                                      // 0x0056ac01    2bd1
                         push               edx                                           // 0x0056ac03    52
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0056ac04    e8476beaff
                         fstp               st(0)                                         // 0x0056ac09    ddd8
                         add                esp, 0x2c                                     // 0x0056ac0b    83c42c
_jmp_addr_0x0056ac0e:    {disp32} mov       eax, dword ptr [data_bytes + 0x340064]        // 0x0056ac0e    a16460d000
                         test               eax, eax                                      // 0x0056ac13    85c0
                         {disp8} jne        _jmp_addr_0x0056ac84                          // 0x0056ac15    756d
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0056ac17    8b442414
                         test               eax, eax                                      // 0x0056ac1b    85c0
                         {disp8} je         _jmp_addr_0x0056ac84                          // 0x0056ac1d    7465
                         {disp32} mov       dword ptr [data_bytes + 0x340064], 0x00000001 // 0x0056ac1f    c7056460d00001000000
                         call               _GetSmallTextSize__Fv                         // 0x0056ac29    e8e2cde9ff
                         {disp8} mov        ebx, dword ptr [ebp + 0x14]                   // 0x0056ac2e    8b5d14
                         sub.s              ebx, eax                                      // 0x0056ac31    2bd8
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001964 // 0x0056ac33    813dac7cd10064190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ac3d    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056ac49                          // 0x0056ac42    7605
                         add                eax, 0x000130b0                               // 0x0056ac44    05b0300100
_jmp_addr_0x0056ac49:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0056ac49    8b4808
                         push               0x0                                           // 0x0056ac4c    6a00
                         push               0x0                                           // 0x0056ac4e    6a00
                         push               0x00c4ccd8                                    // 0x0056ac50    68d8ccc400
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0056ac55    894c2420
                         call               _GetSmallTextSize__Fv                         // 0x0056ac59    e8b2cde9ff
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0056ac5e    8b542420
                         push               eax                                           // 0x0056ac62    50
                         {disp8} mov        eax, dword ptr [ebp + 0x1c]                   // 0x0056ac63    8b451c
                         push               edx                                           // 0x0056ac66    52
                         push               0x1                                           // 0x0056ac67    6a01
                         push               ebx                                           // 0x0056ac69    53
                         push               eax                                           // 0x0056ac6a    50
                         lea                ecx, dword ptr [edi + esi * 0x2]              // 0x0056ac6b    8d0c77
                         mov.s              edx, esi                                      // 0x0056ac6e    8bd6
                         add.s              edx, ecx                                      // 0x0056ac70    03d1
                         push               edx                                           // 0x0056ac72    52
                         lea                eax, dword ptr [esi + esi * 0x1]              // 0x0056ac73    8d0436
                         sub.s              edi, eax                                      // 0x0056ac76    2bf8
                         push               ebx                                           // 0x0056ac78    53
                         push               edi                                           // 0x0056ac79    57
                         call               ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                 // 0x0056ac7a    e8d16aeaff
                         fstp               st(0)                                         // 0x0056ac7f    ddd8
                         add                esp, 0x2c                                     // 0x0056ac81    83c42c
_jmp_addr_0x0056ac84:    mov                eax, 0x00000001                               // 0x0056ac84    b801000000
                         pop                edi                                           // 0x0056ac89    5f
                         pop                esi                                           // 0x0056ac8a    5e
                         pop                ebx                                           // 0x0056ac8b    5b
                         mov.s              esp, ebp                                      // 0x0056ac8c    8be5
                         pop                ebp                                           // 0x0056ac8e    5d
                         ret                0x0024                                        // 0x0056ac8f    c22400
_jmp_addr_0x0056ac92:    pop                edi                                           // 0x0056ac92    5f
                         pop                esi                                           // 0x0056ac93    5e
                         xor.s              eax, eax                                      // 0x0056ac94    33c0
                         pop                ebx                                           // 0x0056ac96    5b
                         mov.s              esp, ebp                                      // 0x0056ac97    8be5
                         pop                ebp                                           // 0x0056ac99    5d
                         ret                0x0024                                        // 0x0056ac9a    c22400
                         nop                                                              // 0x0056ac9d    90
                         nop                                                              // 0x0056ac9e    90
                         nop                                                              // 0x0056ac9f    90
_jmp_addr_0x0056aca0:    sub                esp, 0x0c                                     // 0x0056aca0    83ec0c
                         push               ebx                                           // 0x0056aca3    53
                         push               ebp                                           // 0x0056aca4    55
                         push               esi                                           // 0x0056aca5    56
                         push               edi                                           // 0x0056aca6    57
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x0056aca7    8b7c2424
                         test               edi, edi                                      // 0x0056acab    85ff
                         mov.s              ebx, ecx                                      // 0x0056acad    8bd9
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x0056acaf    895c2410
                         {disp8} jne        _jmp_addr_0x0056acb8                          // 0x0056acb3    7503
                         {disp8} mov        edi, dword ptr [ebx + 0x4c]                   // 0x0056acb5    8b7b4c
_jmp_addr_0x0056acb8:    {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x0056acb8    8b742420
                         {disp8} mov        dword ptr [ebx + 0x68], esi                   // 0x0056acbc    897368
                         mov                eax, dword ptr [edi]                          // 0x0056acbf    8b07
                         mov.s              ecx, edi                                      // 0x0056acc1    8bcf
                         call               dword ptr [eax + 0x34]                        // 0x0056acc3    ff5034
                         test               esi, esi                                      // 0x0056acc6    85f6
                         {disp8} lea        eax, dword ptr [edi + 0x24]                   // 0x0056acc8    8d4724
                         mov                word ptr [eax], 0x0000                        // 0x0056accb    66c7000000
                         {disp8} mov        ebp, dword ptr [ebx + 0x34]                   // 0x0056acd0    8b6b34
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0056acd3    89442420
                         {disp8} jl         _jmp_addr_0x0056ace9                          // 0x0056acd7    7c10
                         cmp                esi, dword ptr [ebp + 0x00000250]             // 0x0056acd9    3bb550020000
                         {disp8} jge        _jmp_addr_0x0056ace9                          // 0x0056acdf    7d08
                         {disp32} mov       dword ptr [ebp + 0x00000248], esi             // 0x0056ace1    89b548020000
                         {disp8} jmp        _jmp_addr_0x0056acf3                          // 0x0056ace7    eb0a
_jmp_addr_0x0056ace9:    {disp32} mov       dword ptr [ebp + 0x00000248], 0xffffffff      // 0x0056ace9    c78548020000ffffffff
_jmp_addr_0x0056acf3:    {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0056acf3    8b4504
                         test               eax, eax                                      // 0x0056acf6    85c0
                         {disp8} je         _jmp_addr_0x0056ad39                          // 0x0056acf8    743f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]        // 0x0056acfa    a100cdc400
                         test               eax, eax                                      // 0x0056acff    85c0
                         {disp8} je         _jmp_addr_0x0056ad39                          // 0x0056ad01    7436
                         test               esi, esi                                      // 0x0056ad03    85f6
                         {disp32} jl        _jmp_addr_0x0056ade9                          // 0x0056ad05    0f8cde000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x0056ad0b    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4// 0x0056ad11    e8aa902800
                         cmp.s              eax, esi                                      // 0x0056ad16    3bc6
                         {disp8} je         _jmp_addr_0x0056ad39                          // 0x0056ad18    741f
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000250]             // 0x0056ad1a    8b8d50020000
                         push               esi                                           // 0x0056ad20    56
                         dec                ecx                                           // 0x0056ad21    49
                         push               ecx                                           // 0x0056ad22    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x0056ad23    8b0d04c1e800
                         push               0x0                                           // 0x0056ad29    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                          // 0x0056ad2b    e8b0902800
                         push               0x0                                           // 0x0056ad30    6a00
                         mov.s              ecx, ebp                                      // 0x0056ad32    8bcd
                         call               @AutoScroll__9SetupListFb@9                   // 0x0056ad34    e897f0e9ff
_jmp_addr_0x0056ad39:    test               esi, esi                                      // 0x0056ad39    85f6
                         {disp32} jl        _jmp_addr_0x0056ade9                          // 0x0056ad3b    0f8ca8000000
                         {disp8} mov        eax, dword ptr [ebx + 0x6c]                   // 0x0056ad41    8b436c
                         test               eax, eax                                      // 0x0056ad44    85c0
                         {disp32} je        _jmp_addr_0x0056ade9                          // 0x0056ad46    0f849d000000
                         {disp8} mov        ebp, dword ptr [ebx + 0x70]                   // 0x0056ad4c    8b6b70
                         test               ebp, ebp                                      // 0x0056ad4f    85ed
                         {disp32} je        _jmp_addr_0x0056ade9                          // 0x0056ad51    0f8492000000
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056ad57    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056ad5e    2bc6
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x0056ad60    8d1440
                         {disp8} mov        eax, dword ptr [ebp + edx * 0x4 + 0x00]       // 0x0056ad63    8b449500
                         test               eax, eax                                      // 0x0056ad67    85c0
                         {disp8} lea        ebp, dword ptr [ebp + edx * 0x4 + 0x00]       // 0x0056ad69    8d6c9500
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0056ad6d    c744242400000000
                         {disp8} jle        _jmp_addr_0x0056adaa                          // 0x0056ad75    7e33
                         {disp8} lea        ebx, dword ptr [ebp + 0x14]                   // 0x0056ad77    8d5d14
_jmp_addr_0x0056ad7a:    mov                eax, dword ptr [ebx]                          // 0x0056ad7a    8b03
                         {disp8} fld        dword ptr [ebx + -0x10]                       // 0x0056ad7c    d943f0
                         mov                edx, dword ptr [edi]                          // 0x0056ad7f    8b17
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0056ad81    d95c2418
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0056ad85    89442414
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0056ad89    8d442414
                         push               eax                                           // 0x0056ad8d    50
                         mov.s              ecx, edi                                      // 0x0056ad8e    8bcf
                         call               dword ptr [edx + 0x3c]                        // 0x0056ad90    ff523c
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0056ad93    8b442424
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x0056ad97    8b4d00
                         inc                eax                                           // 0x0056ad9a    40
                         add                ebx, 0x04                                     // 0x0056ad9b    83c304
                         cmp.s              eax, ecx                                      // 0x0056ad9e    3bc1
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0056ada0    89442424
                         {disp8} jl         _jmp_addr_0x0056ad7a                          // 0x0056ada4    7cd4
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0056ada6    8b5c2410
_jmp_addr_0x0056adaa:    cmp                dword ptr [ebp + 0x00], 0x01                  // 0x0056adaa    837d0001
                         {disp8} jle        _jmp_addr_0x0056adba                          // 0x0056adae    7e0a
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x0056adb0    c744242400000000
                         {disp8} jmp        _jmp_addr_0x0056adc1                          // 0x0056adb8    eb07
_jmp_addr_0x0056adba:    {disp8} mov        ecx, dword ptr [ebp + 0x24]                   // 0x0056adba    8b4d24
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0056adbd    894c2424
_jmp_addr_0x0056adc1:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0056adc1    8b442424
                         mov                edx, dword ptr [edi]                          // 0x0056adc5    8b17
                         push               eax                                           // 0x0056adc7    50
                         mov.s              ecx, edi                                      // 0x0056adc8    8bcf
                         call               dword ptr [edx + 0x38]                        // 0x0056adca    ff5238
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]                   // 0x0056adcd    8b4b34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000258]             // 0x0056add0    8b9158020000
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0056add6    8b442420
                         shl                esi, 9                                        // 0x0056adda    c1e609
                         add.s              edx, esi                                      // 0x0056addd    03d6
                         push               edx                                           // 0x0056addf    52
                         push               eax                                           // 0x0056ade0    50
                         call               _wcscpy                                       // 0x0056ade1    e8d0b12500
                         add                esp, 0x08                                     // 0x0056ade6    83c408
_jmp_addr_0x0056ade9:    pop                edi                                           // 0x0056ade9    5f
                         pop                esi                                           // 0x0056adea    5e
                         pop                ebp                                           // 0x0056adeb    5d
                         pop                ebx                                           // 0x0056adec    5b
                         add                esp, 0x0c                                     // 0x0056aded    83c40c
                         ret                0x0008                                        // 0x0056adf0    c20800
                         nop                                                              // 0x0056adf3    90
                         nop                                                              // 0x0056adf4    90
                         nop                                                              // 0x0056adf5    90
                         nop                                                              // 0x0056adf6    90
                         nop                                                              // 0x0056adf7    90
                         nop                                                              // 0x0056adf8    90
                         nop                                                              // 0x0056adf9    90
                         nop                                                              // 0x0056adfa    90
                         nop                                                              // 0x0056adfb    90
                         nop                                                              // 0x0056adfc    90
                         nop                                                              // 0x0056adfd    90
                         nop                                                              // 0x0056adfe    90
                         nop                                                              // 0x0056adff    90
_jmp_addr_0x0056ae00:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0056ae00    8b442404
                         push               ebx                                           // 0x0056ae04    53
                         push               ebp                                           // 0x0056ae05    55
                         push               esi                                           // 0x0056ae06    56
                         push               edi                                           // 0x0056ae07    57
                         mov.s              edi, ecx                                      // 0x0056ae08    8bf9
                         {disp8} mov        ebx, dword ptr [edi + 0x34]                   // 0x0056ae0a    8b5f34
                         {disp32} mov       esi, dword ptr [ebx + 0x00000250]             // 0x0056ae0d    8bb350020000
                         push               eax                                           // 0x0056ae13    50
                         mov.s              ecx, esi                                      // 0x0056ae14    8bce
                         push               ecx                                           // 0x0056ae16    51
                         mov.s              ecx, ebx                                      // 0x0056ae17    8bcb
                         call               @InsertString__9SetupListFiPw@16              // 0x0056ae19    e85200eaff
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000250]             // 0x0056ae1e    8b8b50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0056ae24    8d41ff
                         test               eax, eax                                      // 0x0056ae27    85c0
                         {disp8} jl         _jmp_addr_0x0056ae3c                          // 0x0056ae29    7c11
                         cmp.s              eax, ecx                                      // 0x0056ae2b    3bc1
                         {disp8} jge        _jmp_addr_0x0056ae3c                          // 0x0056ae2d    7d0d
                         {disp32} mov       edx, dword ptr [ebx + 0x00000268]             // 0x0056ae2f    8b9368020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000       // 0x0056ae35    c7048200000000
_jmp_addr_0x0056ae3c:    test               esi, esi                                      // 0x0056ae3c    85f6
                         {disp8} mov        ecx, dword ptr [edi + 0x34]                   // 0x0056ae3e    8b4f34
                         {disp8} jl         _jmp_addr_0x0056ae66                          // 0x0056ae41    7c23
                         cmp                esi, dword ptr [ecx + 0x00000250]             // 0x0056ae43    3bb150020000
                         {disp8} jge        _jmp_addr_0x0056ae66                          // 0x0056ae49    7d1b
                         {disp8} mov        edx, dword ptr [edi + 0x70]                   // 0x0056ae4b    8b5770
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]             // 0x0056ae4e    8b8964020000
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056ae54    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056ae5b    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0056ae5d    8d0440
                         lea                eax, dword ptr [edx + eax * 0x4]              // 0x0056ae60    8d0482
                         mov                dword ptr [ecx + esi * 0x4], eax              // 0x0056ae63    8904b1
_jmp_addr_0x0056ae66:    test               esi, esi                                      // 0x0056ae66    85f6
                         {disp8} mov        eax, dword ptr [edi + 0x34]                   // 0x0056ae68    8b4734
                         {disp8} jl         _jmp_addr_0x0056ae82                          // 0x0056ae6b    7c15
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x0056ae6d    3bb050020000
                         {disp8} jge        _jmp_addr_0x0056ae82                          // 0x0056ae73    7d0d
                         {disp32} mov       edx, dword ptr [eax + 0x0000026c]             // 0x0056ae75    8b906c020000
                         mov                dword ptr [edx + esi * 0x4], 0x0056af90       // 0x0056ae7b    c704b290af5600
_jmp_addr_0x0056ae82:    {disp8} mov        eax, dword ptr [edi + 0x6c]                   // 0x0056ae82    8b476c
                         {disp8} mov        ecx, dword ptr [edi + 0x70]                   // 0x0056ae85    8b4f70
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x0056ae88    8b5c2418
                         {disp8} lea        ebp, dword ptr [eax + 0x04]                   // 0x0056ae8c    8d6804
                         xor.s              edx, edx                                      // 0x0056ae8f    33d2
                         mov                dx, word ptr [eax]                            // 0x0056ae91    668b10
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056ae94    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056ae9b    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0056ae9d    8d0440
                         lea                ecx, dword ptr [ecx + eax * 0x4]              // 0x0056aea0    8d0c81
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0056aea3    8b442428
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x0056aea7    894130
                         test               edx, edx                                      // 0x0056aeaa    85d2
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0056aeac    8b44241c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x0056aeb0    894128
                         mov                dword ptr [ecx], edx                          // 0x0056aeb3    8911
                         {disp8} mov        dword ptr [ecx + 0x24], 0x00000000            // 0x0056aeb5    c7412400000000
                         {disp8} jle        _jmp_addr_0x0056af2a                          // 0x0056aebc    7e6c
                         {disp8} lea        esi, dword ptr [ecx + 0x04]                   // 0x0056aebe    8d7104
                         mov.s              edi, edx                                      // 0x0056aec1    8bfa
_jmp_addr_0x0056aec3:    fld                dword ptr [ebx]                               // 0x0056aec3    d903
                         {disp32} fcom      dword ptr [rdata_bytes + 0x56edc]             // 0x0056aec5    d815dcfe8f00
                         fst                dword ptr [esi]                               // 0x0056aecb    d916
                         fnstsw             ax                                            // 0x0056aecd    dfe0
                         test               ah, 0x41                                      // 0x0056aecf    f6c441
                         {disp8} jne        _jmp_addr_0x0056aeeb                          // 0x0056aed2    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x56ed8]             // 0x0056aed4    d815d8fe8f00
                         fnstsw             ax                                            // 0x0056aeda    dfe0
                         test               ah, 0x01                                      // 0x0056aedc    f6c401
                         {disp8} jne        _jmp_addr_0x0056aef3                          // 0x0056aedf    7512
                         fstp               st(0)                                         // 0x0056aee1    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x56ed8]             // 0x0056aee3    d905d8fe8f00
                         {disp8} jmp        _jmp_addr_0x0056aef3                          // 0x0056aee9    eb08
_jmp_addr_0x0056aeeb:    fstp               st(0)                                         // 0x0056aeeb    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x56edc]             // 0x0056aeed    d905dcfe8f00
_jmp_addr_0x0056aef3:    fst                dword ptr [esi]                               // 0x0056aef3    d916
                         {disp8} fcom       dword ptr [ecx + 0x24]                        // 0x0056aef5    d85124
                         fnstsw             ax                                            // 0x0056aef8    dfe0
                         test               ah, 0x41                                      // 0x0056aefa    f6c441
                         {disp8} jne        _jmp_addr_0x0056af04                          // 0x0056aefd    7505
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x0056aeff    d95924
                         {disp8} jmp        _jmp_addr_0x0056af06                          // 0x0056af02    eb02
_jmp_addr_0x0056af04:    fstp               st(0)                                         // 0x0056af04    ddd8
_jmp_addr_0x0056af06:    add                esi, 0x04                                     // 0x0056af06    83c604
                         add                ebx, 0x0000114c                               // 0x0056af09    81c34c110000
                         dec                edi                                           // 0x0056af0f    4f
                         {disp8} jne        _jmp_addr_0x0056aec3                          // 0x0056af10    75b1
                         test               edx, edx                                      // 0x0056af12    85d2
                         {disp8} jle        _jmp_addr_0x0056af2a                          // 0x0056af14    7e14
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x0056af16    8d4114
_jmp_addr_0x0056af19:    {disp8} mov        esi, dword ptr [ebp + 0x00]                   // 0x0056af19    8b7500
                         mov                dword ptr [eax], esi                          // 0x0056af1c    8930
                         add                eax, 0x04                                     // 0x0056af1e    83c004
                         add                ebp, 0x0000114c                               // 0x0056af21    81c54c110000
                         dec                edx                                           // 0x0056af27    4a
                         {disp8} jne        _jmp_addr_0x0056af19                          // 0x0056af28    75ef
_jmp_addr_0x0056af2a:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0056af2a    8b442424
                         cmp                eax, 0x03                                     // 0x0056af2e    83f803
                         pop                edi                                           // 0x0056af31    5f
                         pop                esi                                           // 0x0056af32    5e
                         pop                ebp                                           // 0x0056af33    5d
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x0056af34    89412c
                         pop                ebx                                           // 0x0056af37    5b
                         {disp8} je         _jmp_addr_0x0056af41                          // 0x0056af38    7407
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0056af3a    8b542410
                         {disp8} mov        dword ptr [ecx + 0x24], edx                   // 0x0056af3e    895124
_jmp_addr_0x0056af41:    dec                eax                                           // 0x0056af41    48
                         {disp8} je         _jmp_addr_0x0056af77                          // 0x0056af42    7433
                         dec                eax                                           // 0x0056af44    48
                         {disp8} je         _jmp_addr_0x0056af5f                          // 0x0056af45    7418
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056af47    8b4128
                         push               eax                                           // 0x0056af4a    50
                         add                ecx, 0x34                                     // 0x0056af4b    83c134
                         push               0x00bef048                                    // 0x0056af4e    6848f0be00
                         push               ecx                                           // 0x0056af53    51
                         call               _swprintf                                     // 0x0056af54    e826b52500
                         add                esp, 0x0c                                     // 0x0056af59    83c40c
                         ret                0x0018                                        // 0x0056af5c    c21800
_jmp_addr_0x0056af5f:    {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x0056af5f    8b5128
                         push               edx                                           // 0x0056af62    52
                         add                ecx, 0x34                                     // 0x0056af63    83c134
                         push               0x00bef030                                    // 0x0056af66    6830f0be00
                         push               ecx                                           // 0x0056af6b    51
                         call               _swprintf                                     // 0x0056af6c    e80eb52500
                         add                esp, 0x0c                                     // 0x0056af71    83c40c
                         ret                0x0018                                        // 0x0056af74    c21800
_jmp_addr_0x0056af77:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056af77    8b4128
                         push               eax                                           // 0x0056af7a    50
                         push               eax                                           // 0x0056af7b    50
                         add                ecx, 0x34                                     // 0x0056af7c    83c134
                         push               0x00bef010                                    // 0x0056af7f    6810f0be00
                         push               ecx                                           // 0x0056af84    51
                         call               _swprintf                                     // 0x0056af85    e8f5b42500
                         add                esp, 0x10                                     // 0x0056af8a    83c410
                         ret                0x0018                                        // 0x0056af8d    c21800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x340068]        // 0x0056af90    8b0d6860d000
                         test               ecx, ecx                                      // 0x0056af96    85c9
                         push               ebx                                           // 0x0056af98    53
                         push               esi                                           // 0x0056af99    56
                         push               edi                                           // 0x0056af9a    57
                         mov                eax, 0x00000001                               // 0x0056af9b    b801000000
                         {disp8} je         _jmp_addr_0x0056b008                          // 0x0056afa0    7466
                         {disp8} mov        edi, dword ptr [ecx + 0x34]                   // 0x0056afa2    8b7934
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0056afa5    8b742410
                         cmp.s              edi, esi                                      // 0x0056afa9    3bfe
                         {disp8} jne        _jmp_addr_0x0056b008                          // 0x0056afab    755b
                         {disp8} mov        edx, dword ptr [ecx + 0x70]                   // 0x0056afad    8b5170
                         test               edx, edx                                      // 0x0056afb0    85d2
                         {disp8} je         _jmp_addr_0x0056b008                          // 0x0056afb2    7454
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0056afb4    8b542414
                         test               edx, edx                                      // 0x0056afb8    85d2
                         {disp8} mov        ecx, dword ptr [ecx + 0x38]                   // 0x0056afba    8b4938
                         {disp32} mov       ebx, dword ptr [ecx + 0x00000248]             // 0x0056afbd    8b9948020000
                         {disp8} jl         _jmp_addr_0x0056b008                          // 0x0056afc3    7c43
                         cmp                edx, dword ptr [edi + 0x00000250]             // 0x0056afc5    3b9750020000
                         {disp8} jge        _jmp_addr_0x0056b008                          // 0x0056afcb    7d3b
                         cmp                edx, dword ptr [esi + 0x00000250]             // 0x0056afcd    3b9650020000
                         {disp8} jge        _jmp_addr_0x0056afe0                          // 0x0056afd3    7d0b
                         {disp32} mov       eax, dword ptr [esi + 0x00000264]             // 0x0056afd5    8b8664020000
                         mov                ecx, dword ptr [eax + edx * 0x4]              // 0x0056afdb    8b0c90
                         {disp8} jmp        _jmp_addr_0x0056afe2                          // 0x0056afde    eb02
_jmp_addr_0x0056afe0:    xor.s              ecx, ecx                                      // 0x0056afe0    33c9
_jmp_addr_0x0056afe2:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0056afe2    8b44242c
                         push               ebx                                           // 0x0056afe6    53
                         push               eax                                           // 0x0056afe7    50
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0056afe8    8b442430
                         push               eax                                           // 0x0056afec    50
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0056afed    8b442430
                         push               eax                                           // 0x0056aff1    50
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0056aff2    8b442430
                         push               eax                                           // 0x0056aff6    50
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0056aff7    8b442430
                         push               eax                                           // 0x0056affb    50
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0056affc    8b442430
                         push               eax                                           // 0x0056b000    50
                         push               edx                                           // 0x0056b001    52
                         push               esi                                           // 0x0056b002    56
                         call               _jmp_addr_0x0056a960                          // 0x0056b003    e858f9ffff
_jmp_addr_0x0056b008:    pop                edi                                           // 0x0056b008    5f
                         pop                esi                                           // 0x0056b009    5e
                         pop                ebx                                           // 0x0056b00a    5b
                         ret                0x0020                                        // 0x0056b00b    c22000
                         nop                                                              // 0x0056b00e    90
                         nop                                                              // 0x0056b00f    90
_jmp_addr_0x0056b010:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0056b010    8b442404
                         sub                esp, 0x08                                     // 0x0056b014    83ec08
                         push               ebx                                           // 0x0056b017    53
                         push               ebp                                           // 0x0056b018    55
                         push               esi                                           // 0x0056b019    56
                         push               edi                                           // 0x0056b01a    57
                         mov.s              edi, ecx                                      // 0x0056b01b    8bf9
                         {disp8} mov        ebx, dword ptr [edi + 0x34]                   // 0x0056b01d    8b5f34
                         {disp32} mov       esi, dword ptr [ebx + 0x00000250]             // 0x0056b020    8bb350020000
                         push               eax                                           // 0x0056b026    50
                         mov.s              ecx, esi                                      // 0x0056b027    8bce
                         push               ecx                                           // 0x0056b029    51
                         mov.s              ecx, ebx                                      // 0x0056b02a    8bcb
                         call               @InsertString__9SetupListFiPw@16              // 0x0056b02c    e83ffee9ff
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000250]             // 0x0056b031    8b8b50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0056b037    8d41ff
                         test               eax, eax                                      // 0x0056b03a    85c0
                         {disp8} jl         _jmp_addr_0x0056b04f                          // 0x0056b03c    7c11
                         cmp.s              eax, ecx                                      // 0x0056b03e    3bc1
                         {disp8} jge        _jmp_addr_0x0056b04f                          // 0x0056b040    7d0d
                         {disp32} mov       edx, dword ptr [ebx + 0x00000268]             // 0x0056b042    8b9368020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000       // 0x0056b048    c7048200000000
_jmp_addr_0x0056b04f:    test               esi, esi                                      // 0x0056b04f    85f6
                         {disp8} mov        ecx, dword ptr [edi + 0x34]                   // 0x0056b051    8b4f34
                         {disp8} jl         _jmp_addr_0x0056b079                          // 0x0056b054    7c23
                         cmp                esi, dword ptr [ecx + 0x00000250]             // 0x0056b056    3bb150020000
                         {disp8} jge        _jmp_addr_0x0056b079                          // 0x0056b05c    7d1b
                         {disp8} mov        edx, dword ptr [edi + 0x70]                   // 0x0056b05e    8b5770
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]             // 0x0056b061    8b8964020000
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056b067    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056b06e    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0056b070    8d0440
                         lea                eax, dword ptr [edx + eax * 0x4]              // 0x0056b073    8d0482
                         mov                dword ptr [ecx + esi * 0x4], eax              // 0x0056b076    8904b1
_jmp_addr_0x0056b079:    test               esi, esi                                      // 0x0056b079    85f6
                         {disp8} mov        eax, dword ptr [edi + 0x34]                   // 0x0056b07b    8b4734
                         {disp8} jl         _jmp_addr_0x0056b095                          // 0x0056b07e    7c15
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x0056b080    3bb050020000
                         {disp8} jge        _jmp_addr_0x0056b095                          // 0x0056b086    7d0d
                         {disp32} mov       edx, dword ptr [eax + 0x0000026c]             // 0x0056b088    8b906c020000
                         mov                dword ptr [edx + esi * 0x4], 0x0056af90       // 0x0056b08e    c704b290af5600
_jmp_addr_0x0056b095:    {disp8} mov        eax, dword ptr [edi + 0x6c]                   // 0x0056b095    8b476c
                         {disp8} mov        ecx, dword ptr [edi + 0x70]                   // 0x0056b098    8b4f70
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x0056b09b    8b5c2420
                         {disp8} lea        ebp, dword ptr [eax + 0x04]                   // 0x0056b09f    8d6804
                         xor.s              edx, edx                                      // 0x0056b0a2    33d2
                         mov                dx, word ptr [eax]                            // 0x0056b0a4    668b10
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056b0a7    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056b0ae    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0056b0b0    8d0440
                         lea                ecx, dword ptr [ecx + eax * 0x4]              // 0x0056b0b3    8d0c81
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0056b0b6    8b44242c
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x0056b0ba    894130
                         xor.s              eax, eax                                      // 0x0056b0bd    33c0
                         cmp.s              edx, eax                                      // 0x0056b0bf    3bd0
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x0056b0c1    894128
                         mov                dword ptr [ecx], edx                          // 0x0056b0c4    8911
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x0056b0c6    894124
                         {disp8} jle        _jmp_addr_0x0056b101                          // 0x0056b0c9    7e36
                         {disp8} lea        esi, dword ptr [ecx + 0x04]                   // 0x0056b0cb    8d7104
                         mov.s              edi, edx                                      // 0x0056b0ce    8bfa
_jmp_addr_0x0056b0d0:    mov                eax, dword ptr [ebx]                          // 0x0056b0d0    8b03
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0056b0d2    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0056b0d6    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0056b0de    df6c2410
                         fst                dword ptr [esi]                               // 0x0056b0e2    d916
                         {disp8} fcom       dword ptr [ecx + 0x24]                        // 0x0056b0e4    d85124
                         fnstsw             ax                                            // 0x0056b0e7    dfe0
                         test               ah, 0x41                                      // 0x0056b0e9    f6c441
                         {disp8} jne        _jmp_addr_0x0056b0f3                          // 0x0056b0ec    7505
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x0056b0ee    d95924
                         {disp8} jmp        _jmp_addr_0x0056b0f5                          // 0x0056b0f1    eb02
_jmp_addr_0x0056b0f3:    fstp               st(0)                                         // 0x0056b0f3    ddd8
_jmp_addr_0x0056b0f5:    add                esi, 0x04                                     // 0x0056b0f5    83c604
                         add                ebx, 0x0000114c                               // 0x0056b0f8    81c34c110000
                         dec                edi                                           // 0x0056b0fe    4f
                         {disp8} jne        _jmp_addr_0x0056b0d0                          // 0x0056b0ff    75cf
_jmp_addr_0x0056b101:    test               edx, edx                                      // 0x0056b101    85d2
                         {disp8} jle        _jmp_addr_0x0056b119                          // 0x0056b103    7e14
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x0056b105    8d4114
_jmp_addr_0x0056b108:    {disp8} mov        esi, dword ptr [ebp + 0x00]                   // 0x0056b108    8b7500
                         mov                dword ptr [eax], esi                          // 0x0056b10b    8930
                         add                eax, 0x04                                     // 0x0056b10d    83c004
                         add                ebp, 0x0000114c                               // 0x0056b110    81c54c110000
                         dec                edx                                           // 0x0056b116    4a
                         {disp8} jne        _jmp_addr_0x0056b108                          // 0x0056b117    75ef
_jmp_addr_0x0056b119:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0056b119    8b442428
                         cmp                eax, 0x03                                     // 0x0056b11d    83f803
                         pop                edi                                           // 0x0056b120    5f
                         pop                esi                                           // 0x0056b121    5e
                         pop                ebp                                           // 0x0056b122    5d
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x0056b123    89412c
                         pop                ebx                                           // 0x0056b126    5b
                         {disp8} je         _jmp_addr_0x0056b130                          // 0x0056b127    7407
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0056b129    8b542414
                         {disp8} mov        dword ptr [ecx + 0x24], edx                   // 0x0056b12d    895124
_jmp_addr_0x0056b130:    dec                eax                                           // 0x0056b130    48
                         {disp8} je         _jmp_addr_0x0056b16c                          // 0x0056b131    7439
                         dec                eax                                           // 0x0056b133    48
                         {disp8} je         _jmp_addr_0x0056b151                          // 0x0056b134    741b
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056b136    8b4128
                         push               eax                                           // 0x0056b139    50
                         add                ecx, 0x34                                     // 0x0056b13a    83c134
                         push               0x00bef048                                    // 0x0056b13d    6848f0be00
                         push               ecx                                           // 0x0056b142    51
                         call               _swprintf                                     // 0x0056b143    e837b32500
                         add                esp, 0x0c                                     // 0x0056b148    83c40c
                         add                esp, 0x08                                     // 0x0056b14b    83c408
                         ret                0x0014                                        // 0x0056b14e    c21400
_jmp_addr_0x0056b151:    {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x0056b151    8b5128
                         push               edx                                           // 0x0056b154    52
                         add                ecx, 0x34                                     // 0x0056b155    83c134
                         push               0x00bef030                                    // 0x0056b158    6830f0be00
                         push               ecx                                           // 0x0056b15d    51
                         call               _swprintf                                     // 0x0056b15e    e81cb32500
                         add                esp, 0x0c                                     // 0x0056b163    83c40c
                         add                esp, 0x08                                     // 0x0056b166    83c408
                         ret                0x0014                                        // 0x0056b169    c21400
_jmp_addr_0x0056b16c:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056b16c    8b4128
                         push               eax                                           // 0x0056b16f    50
                         push               eax                                           // 0x0056b170    50
                         add                ecx, 0x34                                     // 0x0056b171    83c134
                         push               0x00bef010                                    // 0x0056b174    6810f0be00
                         push               ecx                                           // 0x0056b179    51
                         call               _swprintf                                     // 0x0056b17a    e800b32500
                         add                esp, 0x10                                     // 0x0056b17f    83c410
                         add                esp, 0x08                                     // 0x0056b182    83c408
                         ret                0x0014                                        // 0x0056b185    c21400
                         nop                                                              // 0x0056b188    90
                         nop                                                              // 0x0056b189    90
                         nop                                                              // 0x0056b18a    90
                         nop                                                              // 0x0056b18b    90
                         nop                                                              // 0x0056b18c    90
                         nop                                                              // 0x0056b18d    90
                         nop                                                              // 0x0056b18e    90
                         nop                                                              // 0x0056b18f    90
_jmp_addr_0x0056b190:    push               ecx                                           // 0x0056b190    51
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0056b191    8b442408
                         push               ebx                                           // 0x0056b195    53
                         push               esi                                           // 0x0056b196    56
                         mov.s              ebx, ecx                                      // 0x0056b197    8bd9
                         push               edi                                           // 0x0056b199    57
                         {disp8} mov        edi, dword ptr [ebx + 0x34]                   // 0x0056b19a    8b7b34
                         {disp32} mov       esi, dword ptr [edi + 0x00000250]             // 0x0056b19d    8bb750020000
                         push               eax                                           // 0x0056b1a3    50
                         mov.s              ecx, esi                                      // 0x0056b1a4    8bce
                         push               ecx                                           // 0x0056b1a6    51
                         mov.s              ecx, edi                                      // 0x0056b1a7    8bcf
                         call               @InsertString__9SetupListFiPw@16              // 0x0056b1a9    e8c2fce9ff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x0056b1ae    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0056b1b4    8d41ff
                         test               eax, eax                                      // 0x0056b1b7    85c0
                         {disp8} jl         _jmp_addr_0x0056b1cc                          // 0x0056b1b9    7c11
                         cmp.s              eax, ecx                                      // 0x0056b1bb    3bc1
                         {disp8} jge        _jmp_addr_0x0056b1cc                          // 0x0056b1bd    7d0d
                         {disp32} mov       edx, dword ptr [edi + 0x00000268]             // 0x0056b1bf    8b9768020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000       // 0x0056b1c5    c7048200000000
_jmp_addr_0x0056b1cc:    test               esi, esi                                      // 0x0056b1cc    85f6
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]                   // 0x0056b1ce    8b4b34
                         {disp8} jl         _jmp_addr_0x0056b1f6                          // 0x0056b1d1    7c23
                         cmp                esi, dword ptr [ecx + 0x00000250]             // 0x0056b1d3    3bb150020000
                         {disp8} jge        _jmp_addr_0x0056b1f6                          // 0x0056b1d9    7d1b
                         {disp8} mov        edx, dword ptr [ebx + 0x70]                   // 0x0056b1db    8b5370
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]             // 0x0056b1de    8b8964020000
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056b1e4    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056b1eb    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0056b1ed    8d0440
                         lea                eax, dword ptr [edx + eax * 0x4]              // 0x0056b1f0    8d0482
                         mov                dword ptr [ecx + esi * 0x4], eax              // 0x0056b1f3    8904b1
_jmp_addr_0x0056b1f6:    test               esi, esi                                      // 0x0056b1f6    85f6
                         {disp8} mov        eax, dword ptr [ebx + 0x34]                   // 0x0056b1f8    8b4334
                         {disp8} jl         _jmp_addr_0x0056b212                          // 0x0056b1fb    7c15
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x0056b1fd    3bb050020000
                         {disp8} jge        _jmp_addr_0x0056b212                          // 0x0056b203    7d0d
                         {disp32} mov       edx, dword ptr [eax + 0x0000026c]             // 0x0056b205    8b906c020000
                         mov                dword ptr [edx + esi * 0x4], 0x0056af90       // 0x0056b20b    c704b290af5600
_jmp_addr_0x0056b212:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056b212    8b0d5c19d000
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x0056b218    8d44240c
                         push               eax                                           // 0x0056b21c    50
                         xor.s              eax, eax                                      // 0x0056b21d    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0056b21f    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0056b225    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0056b228    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0056b22b    8d0450
                         shl                eax, 5                                        // 0x0056b22e    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0056b231    8d4c0818
                         call               @GetPlayer3DColor__7GPlayerFv@12              // 0x0056b235    e856030e00
                         mov.s              edx, eax                                      // 0x0056b23a    8bd0
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056b23c    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056b243    2bc6
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x0056b245    8d0c40
                         {disp8} mov        eax, dword ptr [ebx + 0x70]                   // 0x0056b248    8b4370
                         lea                ecx, dword ptr [eax + ecx * 0x4]              // 0x0056b24b    8d0c88
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0056b24e    8b442428
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x0056b252    894130
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0056b255    8b44241c
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x0056b259    894128
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0056b25c    8b442418
                         mov                dword ptr [ecx], 0x00000001                   // 0x0056b260    c70101000000
                         {disp8} mov        dword ptr [ecx + 0x24], 0x00000000            // 0x0056b266    c7412400000000
                         fld                dword ptr [eax]                               // 0x0056b26d    d900
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x0056b26f    d9542414
                         pop                edi                                           // 0x0056b273    5f
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0056b274    d95904
                         pop                esi                                           // 0x0056b277    5e
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0056b278    d944240c
                         pop                ebx                                           // 0x0056b27c    5b
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x56edc]             // 0x0056b27d    d81ddcfe8f00
                         fnstsw             ax                                            // 0x0056b283    dfe0
                         test               ah, 0x41                                      // 0x0056b285    f6c441
                         {disp8} jne        _jmp_addr_0x0056b2a9                          // 0x0056b288    751f
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0056b28a    d9442408
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x56ed8]             // 0x0056b28e    d81dd8fe8f00
                         fnstsw             ax                                            // 0x0056b294    dfe0
                         test               ah, 0x01                                      // 0x0056b296    f6c401
                         {disp8} je         _jmp_addr_0x0056b2a1                          // 0x0056b299    7406
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0056b29b    d9442408
                         {disp8} jmp        _jmp_addr_0x0056b2af                          // 0x0056b29f    eb0e
_jmp_addr_0x0056b2a1:    {disp32} fld       dword ptr [rdata_bytes + 0x56ed8]             // 0x0056b2a1    d905d8fe8f00
                         {disp8} jmp        _jmp_addr_0x0056b2af                          // 0x0056b2a7    eb06
_jmp_addr_0x0056b2a9:    {disp32} fld       dword ptr [rdata_bytes + 0x56edc]             // 0x0056b2a9    d905dcfe8f00
_jmp_addr_0x0056b2af:    {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0056b2af    d95104
                         {disp8} fcom       dword ptr [ecx + 0x24]                        // 0x0056b2b2    d85124
                         fnstsw             ax                                            // 0x0056b2b5    dfe0
                         test               ah, 0x41                                      // 0x0056b2b7    f6c441
                         {disp8} jne        _jmp_addr_0x0056b2c1                          // 0x0056b2ba    7505
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x0056b2bc    d95924
                         {disp8} jmp        _jmp_addr_0x0056b2c3                          // 0x0056b2bf    eb02
_jmp_addr_0x0056b2c1:    fstp               st(0)                                         // 0x0056b2c1    ddd8
_jmp_addr_0x0056b2c3:    mov                edx, dword ptr [edx]                          // 0x0056b2c3    8b12
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0056b2c5    8b442418
                         cmp                eax, 0x03                                     // 0x0056b2c9    83f803
                         {disp8} mov        dword ptr [ecx + 0x14], edx                   // 0x0056b2cc    895114
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x0056b2cf    89412c
                         {disp8} je         _jmp_addr_0x0056b2db                          // 0x0056b2d2    7407
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0056b2d4    8b542414
                         {disp8} mov        dword ptr [ecx + 0x24], edx                   // 0x0056b2d8    895124
_jmp_addr_0x0056b2db:    dec                eax                                           // 0x0056b2db    48
                         {disp8} je         _jmp_addr_0x0056b313                          // 0x0056b2dc    7435
                         dec                eax                                           // 0x0056b2de    48
                         {disp8} je         _jmp_addr_0x0056b2fa                          // 0x0056b2df    7419
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056b2e1    8b4128
                         push               eax                                           // 0x0056b2e4    50
                         add                ecx, 0x34                                     // 0x0056b2e5    83c134
                         push               0x00bef048                                    // 0x0056b2e8    6848f0be00
                         push               ecx                                           // 0x0056b2ed    51
                         call               _swprintf                                     // 0x0056b2ee    e88cb12500
                         add                esp, 0x0c                                     // 0x0056b2f3    83c40c
                         pop                ecx                                           // 0x0056b2f6    59
                         ret                0x0018                                        // 0x0056b2f7    c21800
_jmp_addr_0x0056b2fa:    {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x0056b2fa    8b5128
                         push               edx                                           // 0x0056b2fd    52
                         add                ecx, 0x34                                     // 0x0056b2fe    83c134
                         push               0x00bef030                                    // 0x0056b301    6830f0be00
                         push               ecx                                           // 0x0056b306    51
                         call               _swprintf                                     // 0x0056b307    e873b12500
                         add                esp, 0x0c                                     // 0x0056b30c    83c40c
                         pop                ecx                                           // 0x0056b30f    59
                         ret                0x0018                                        // 0x0056b310    c21800
_jmp_addr_0x0056b313:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056b313    8b4128
                         push               eax                                           // 0x0056b316    50
                         push               eax                                           // 0x0056b317    50
                         add                ecx, 0x34                                     // 0x0056b318    83c134
                         push               0x00bef010                                    // 0x0056b31b    6810f0be00
                         push               ecx                                           // 0x0056b320    51
                         call               _swprintf                                     // 0x0056b321    e859b12500
                         add                esp, 0x10                                     // 0x0056b326    83c410
                         pop                ecx                                           // 0x0056b329    59
                         ret                0x0018                                        // 0x0056b32a    c21800
                         nop                                                              // 0x0056b32d    90
                         nop                                                              // 0x0056b32e    90
                         nop                                                              // 0x0056b32f    90
_jmp_addr_0x0056b330:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0056b330    8b442404
                         sub                esp, 0x08                                     // 0x0056b334    83ec08
                         push               ebx                                           // 0x0056b337    53
                         push               esi                                           // 0x0056b338    56
                         mov.s              ebx, ecx                                      // 0x0056b339    8bd9
                         push               edi                                           // 0x0056b33b    57
                         {disp8} mov        edi, dword ptr [ebx + 0x34]                   // 0x0056b33c    8b7b34
                         {disp32} mov       esi, dword ptr [edi + 0x00000250]             // 0x0056b33f    8bb750020000
                         push               eax                                           // 0x0056b345    50
                         mov.s              ecx, esi                                      // 0x0056b346    8bce
                         push               ecx                                           // 0x0056b348    51
                         mov.s              ecx, edi                                      // 0x0056b349    8bcf
                         call               @InsertString__9SetupListFiPw@16              // 0x0056b34b    e820fbe9ff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x0056b350    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0056b356    8d41ff
                         test               eax, eax                                      // 0x0056b359    85c0
                         {disp8} jl         _jmp_addr_0x0056b36e                          // 0x0056b35b    7c11
                         cmp.s              eax, ecx                                      // 0x0056b35d    3bc1
                         {disp8} jge        _jmp_addr_0x0056b36e                          // 0x0056b35f    7d0d
                         {disp32} mov       edx, dword ptr [edi + 0x00000268]             // 0x0056b361    8b9768020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000       // 0x0056b367    c7048200000000
_jmp_addr_0x0056b36e:    test               esi, esi                                      // 0x0056b36e    85f6
                         {disp8} mov        ecx, dword ptr [ebx + 0x34]                   // 0x0056b370    8b4b34
                         {disp8} jl         _jmp_addr_0x0056b398                          // 0x0056b373    7c23
                         cmp                esi, dword ptr [ecx + 0x00000250]             // 0x0056b375    3bb150020000
                         {disp8} jge        _jmp_addr_0x0056b398                          // 0x0056b37b    7d1b
                         {disp8} mov        edx, dword ptr [ebx + 0x70]                   // 0x0056b37d    8b5370
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]             // 0x0056b380    8b8964020000
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056b386    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056b38d    2bc6
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x0056b38f    8d0440
                         lea                eax, dword ptr [edx + eax * 0x4]              // 0x0056b392    8d0482
                         mov                dword ptr [ecx + esi * 0x4], eax              // 0x0056b395    8904b1
_jmp_addr_0x0056b398:    test               esi, esi                                      // 0x0056b398    85f6
                         {disp8} mov        eax, dword ptr [ebx + 0x34]                   // 0x0056b39a    8b4334
                         {disp8} jl         _jmp_addr_0x0056b3b4                          // 0x0056b39d    7c15
                         cmp                esi, dword ptr [eax + 0x00000250]             // 0x0056b39f    3bb050020000
                         {disp8} jge        _jmp_addr_0x0056b3b4                          // 0x0056b3a5    7d0d
                         {disp32} mov       edx, dword ptr [eax + 0x0000026c]             // 0x0056b3a7    8b906c020000
                         mov                dword ptr [edx + esi * 0x4], 0x0056af90       // 0x0056b3ad    c704b290af5600
_jmp_addr_0x0056b3b4:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0056b3b4    8b0d5c19d000
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0056b3ba    8d442418
                         push               eax                                           // 0x0056b3be    50
                         xor.s              eax, eax                                      // 0x0056b3bf    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0056b3c1    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0056b3c7    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0056b3ca    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0056b3cd    8d0450
                         shl                eax, 5                                        // 0x0056b3d0    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0056b3d3    8d4c0818
                         call               @GetPlayer3DColor__7GPlayerFv@12              // 0x0056b3d7    e8b4010e00
                         mov.s              edx, eax                                      // 0x0056b3dc    8bd0
                         {disp32} lea       eax, dword ptr [esi * 0x8 + 0x00000000]       // 0x0056b3de    8d04f500000000
                         sub.s              eax, esi                                      // 0x0056b3e5    2bc6
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x0056b3e7    8d0c40
                         {disp8} mov        eax, dword ptr [ebx + 0x70]                   // 0x0056b3ea    8b4370
                         lea                ecx, dword ptr [eax + ecx * 0x4]              // 0x0056b3ed    8d0c88
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0056b3f0    8b442428
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x0056b3f4    894130
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0056b3f7    8b44241c
                         {disp8} mov        dword ptr [ecx + 0x24], 0x00000000            // 0x0056b3fb    c7412400000000
                         {disp8} mov        dword ptr [ecx + 0x28], 0x00000000            // 0x0056b402    c7412800000000
                         mov                dword ptr [ecx], 0x00000001                   // 0x0056b409    c70101000000
                         mov                eax, dword ptr [eax]                          // 0x0056b40f    8b00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0056b411    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0056b415    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x0056b41d    df6c240c
                         pop                edi                                           // 0x0056b421    5f
                         pop                esi                                           // 0x0056b422    5e
                         pop                ebx                                           // 0x0056b423    5b
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0056b424    d95104
                         {disp8} fcom       dword ptr [ecx + 0x24]                        // 0x0056b427    d85124
                         fnstsw             ax                                            // 0x0056b42a    dfe0
                         test               ah, 0x41                                      // 0x0056b42c    f6c441
                         {disp8} jne        _jmp_addr_0x0056b436                          // 0x0056b42f    7505
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x0056b431    d95924
                         {disp8} jmp        _jmp_addr_0x0056b438                          // 0x0056b434    eb02
_jmp_addr_0x0056b436:    fstp               st(0)                                         // 0x0056b436    ddd8
_jmp_addr_0x0056b438:    mov                edx, dword ptr [edx]                          // 0x0056b438    8b12
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0056b43a    8b442418
                         cmp                eax, 0x03                                     // 0x0056b43e    83f803
                         {disp8} mov        dword ptr [ecx + 0x14], edx                   // 0x0056b441    895114
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x0056b444    89412c
                         {disp8} je         _jmp_addr_0x0056b450                          // 0x0056b447    7407
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0056b449    8b542414
                         {disp8} mov        dword ptr [ecx + 0x24], edx                   // 0x0056b44d    895124
_jmp_addr_0x0056b450:    dec                eax                                           // 0x0056b450    48
                         {disp8} je         _jmp_addr_0x0056b48c                          // 0x0056b451    7439
                         dec                eax                                           // 0x0056b453    48
                         {disp8} je         _jmp_addr_0x0056b471                          // 0x0056b454    741b
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056b456    8b4128
                         push               eax                                           // 0x0056b459    50
                         add                ecx, 0x34                                     // 0x0056b45a    83c134
                         push               0x00bef048                                    // 0x0056b45d    6848f0be00
                         push               ecx                                           // 0x0056b462    51
                         call               _swprintf                                     // 0x0056b463    e817b02500
                         add                esp, 0x0c                                     // 0x0056b468    83c40c
                         add                esp, 0x08                                     // 0x0056b46b    83c408
                         ret                0x0014                                        // 0x0056b46e    c21400
_jmp_addr_0x0056b471:    {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x0056b471    8b5128
                         push               edx                                           // 0x0056b474    52
                         add                ecx, 0x34                                     // 0x0056b475    83c134
                         push               0x00bef030                                    // 0x0056b478    6830f0be00
                         push               ecx                                           // 0x0056b47d    51
                         call               _swprintf                                     // 0x0056b47e    e8fcaf2500
                         add                esp, 0x0c                                     // 0x0056b483    83c40c
                         add                esp, 0x08                                     // 0x0056b486    83c408
                         ret                0x0014                                        // 0x0056b489    c21400
_jmp_addr_0x0056b48c:    {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0056b48c    8b4128
                         push               eax                                           // 0x0056b48f    50
                         push               eax                                           // 0x0056b490    50
                         add                ecx, 0x34                                     // 0x0056b491    83c134
                         push               0x00bef010                                    // 0x0056b494    6810f0be00
                         push               ecx                                           // 0x0056b499    51
                         call               _swprintf                                     // 0x0056b49a    e8e0af2500
                         add                esp, 0x10                                     // 0x0056b49f    83c410
                         add                esp, 0x08                                     // 0x0056b4a2    83c408
                         ret                0x0014                                        // 0x0056b4a5    c21400
                         nop                                                              // 0x0056b4a8    90
                         nop                                                              // 0x0056b4a9    90
                         nop                                                              // 0x0056b4aa    90
                         nop                                                              // 0x0056b4ab    90
                         nop                                                              // 0x0056b4ac    90
                         nop                                                              // 0x0056b4ad    90
                         nop                                                              // 0x0056b4ae    90
                         nop                                                              // 0x0056b4af    90
_jmp_addr_0x0056b4b0:    sub                esp, 0x20                                     // 0x0056b4b0    83ec20
                         push               ebx                                           // 0x0056b4b3    53
                         push               ebp                                           // 0x0056b4b4    55
                         push               esi                                           // 0x0056b4b5    56
                         push               edi                                           // 0x0056b4b6    57
                         mov.s              esi, ecx                                      // 0x0056b4b7    8bf1
                         call               _jmp_addr_0x0056d220                          // 0x0056b4b9    e8621d0000
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056b4be    8b466c
                         test               eax, eax                                      // 0x0056b4c1    85c0
                         {disp32} je        _jmp_addr_0x0056d1fe                          // 0x0056b4c3    0f84351d0000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0056b4c9    a15c19d000
                         {disp8} mov        edx, dword ptr [esi + 0x70]                   // 0x0056b4ce    8b5670
                         {disp32} mov       ecx, dword ptr [eax + 0x00205c88]             // 0x0056b4d1    8b88885c2000
                         push               edx                                           // 0x0056b4d7    52
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0056b4d8    894c2414
                         call               ??3@YAXPAX@Z                                  // 0x0056b4dc    e8b7392400
                         push               0xb                                           // 0x0056b4e1    6a0b
                         push               0x00bef058                                    // 0x0056b4e3    6858f0be00
                         push               0x00005400                                    // 0x0056b4e8    6800540000
                         call               ___nw__FUl                                    // 0x0056b4ed    e89e022700
                         mov.s              ebx, eax                                      // 0x0056b4f2    8bd8
                         add                esp, 0x10                                     // 0x0056b4f4    83c410
                         test               ebx, ebx                                      // 0x0056b4f7    85db
                         {disp8} je         _jmp_addr_0x0056b51a                          // 0x0056b4f9    741f
                         {disp8} lea        edi, dword ptr [ebx + 0x14]                   // 0x0056b4fb    8d7b14
                         mov                ebp, 0x00000100                               // 0x0056b4fe    bd00010000
_jmp_addr_0x0056b503:    push               0x0053ce50                                    // 0x0056b503    6850ce5300
                         push               0x4                                           // 0x0056b508    6a04
                         push               0x4                                           // 0x0056b50a    6a04
                         push               edi                                           // 0x0056b50c    57
                         call               _jmp_addr_0x00401140                          // 0x0056b50d    e82e5ce9ff
                         add                edi, 0x54                                     // 0x0056b512    83c754
                         dec                ebp                                           // 0x0056b515    4d
                         {disp8} jne        _jmp_addr_0x0056b503                          // 0x0056b516    75eb
                         {disp8} jmp        _jmp_addr_0x0056b51c                          // 0x0056b518    eb02
_jmp_addr_0x0056b51a:    xor.s              ebx, ebx                                      // 0x0056b51a    33db
_jmp_addr_0x0056b51c:    {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x0056b51c    8b4610
                         dec                eax                                           // 0x0056b51f    48
                         cmp                eax, 0x04                                     // 0x0056b520    83f804
                         {disp8} mov        dword ptr [esi + 0x70], ebx                   // 0x0056b523    895e70
                         {disp32} ja        _jmp_addr_0x0056d1fe                          // 0x0056b526    0f87d21c0000
                         jmp                dword ptr [eax*4 + 0x56d208]                  // 0x0056b52c    ff248508d25600
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a52 // 0x0056b533    813dac7cd100521a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b53d    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b549                          // 0x0056b542    7605
                         add                eax, 0x00013bd8                               // 0x0056b544    05d83b0100
_jmp_addr_0x0056b549:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b549    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b54c    8b5008
                         push               0x2                                           // 0x0056b54f    6a02
                         push               0x2                                           // 0x0056b551    6a02
                         push               0x42c80000                                    // 0x0056b553    680000c842
                         push               0x2                                           // 0x0056b558    6a02
                         add                ecx, 0x00001148                               // 0x0056b55a    81c148110000
                         push               ecx                                           // 0x0056b560    51
                         push               edx                                           // 0x0056b561    52
                         mov.s              ecx, esi                                      // 0x0056b562    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056b564    e897f8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a66 // 0x0056b569    813dac7cd100661a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b573    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b57f                          // 0x0056b578    7605
                         add                eax, 0x00013cc8                               // 0x0056b57a    05c83c0100
_jmp_addr_0x0056b57f:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b57f    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b582    8b5008
                         push               0x2                                           // 0x0056b585    6a02
                         push               0x2                                           // 0x0056b587    6a02
                         push               0x42c80000                                    // 0x0056b589    680000c842
                         push               0x2                                           // 0x0056b58e    6a02
                         add                ecx, 0x00001144                               // 0x0056b590    81c144110000
                         push               ecx                                           // 0x0056b596    51
                         push               edx                                           // 0x0056b597    52
                         mov.s              ecx, esi                                      // 0x0056b598    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056b59a    e861f8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aab // 0x0056b59f    813dac7cd100ab1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b5a9    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b5b5                          // 0x0056b5ae    7605
                         add                eax, 0x00014004                               // 0x0056b5b0    0504400100
_jmp_addr_0x0056b5b5:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b5b5    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b5b8    8b5008
                         push               0x2                                           // 0x0056b5bb    6a02
                         push               0x2                                           // 0x0056b5bd    6a02
                         push               0x42c80000                                    // 0x0056b5bf    680000c842
                         push               0x2                                           // 0x0056b5c4    6a02
                         add                ecx, 0x0000114c                               // 0x0056b5c6    81c14c110000
                         push               ecx                                           // 0x0056b5cc    51
                         push               edx                                           // 0x0056b5cd    52
                         mov.s              ecx, esi                                      // 0x0056b5ce    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056b5d0    e82bf8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001abf // 0x0056b5d5    813dac7cd100bf1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b5df    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b5eb                          // 0x0056b5e4    7605
                         add                eax, 0x000140f4                               // 0x0056b5e6    05f4400100
_jmp_addr_0x0056b5eb:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b5eb    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b5ee    8b5008
                         push               0x2                                           // 0x0056b5f1    6a02
                         push               0x3                                           // 0x0056b5f3    6a03
                         push               0x3f800000                                    // 0x0056b5f5    680000803f
                         add                ecx, 0x00001120                               // 0x0056b5fa    81c120110000
                         push               ecx                                           // 0x0056b600    51
                         push               edx                                           // 0x0056b601    52
                         mov.s              ecx, esi                                      // 0x0056b602    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056b604    e807faffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ac0 // 0x0056b609    813dac7cd100c01a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b613    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b61f                          // 0x0056b618    7605
                         add                eax, 0x00014100                               // 0x0056b61a    0500410100
_jmp_addr_0x0056b61f:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b61f    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b622    8b5008
                         push               0x2                                           // 0x0056b625    6a02
                         push               0x0                                           // 0x0056b627    6a00
                         push               0x3f800000                                    // 0x0056b629    680000803f
                         push               0x2                                           // 0x0056b62e    6a02
                         add                ecx, 0x00001124                               // 0x0056b630    81c124110000
                         push               ecx                                           // 0x0056b636    51
                         push               edx                                           // 0x0056b637    52
                         mov.s              ecx, esi                                      // 0x0056b638    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056b63a    e8c1f7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ac2 // 0x0056b63f    813dac7cd100c21a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b649    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b655                          // 0x0056b64e    7605
                         add                eax, 0x00014118                               // 0x0056b650    0518410100
_jmp_addr_0x0056b655:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b655    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b658    8b5008
                         push               0x2                                           // 0x0056b65b    6a02
                         push               0x3                                           // 0x0056b65d    6a03
                         push               0x3f800000                                    // 0x0056b65f    680000803f
                         add                ecx, 0x0000112c                               // 0x0056b664    81c12c110000
                         push               ecx                                           // 0x0056b66a    51
                         push               edx                                           // 0x0056b66b    52
                         mov.s              ecx, esi                                      // 0x0056b66c    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056b66e    e89df9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ac4 // 0x0056b673    813dac7cd100c41a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b67d    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b689                          // 0x0056b682    7605
                         add                eax, 0x00014130                               // 0x0056b684    0530410100
_jmp_addr_0x0056b689:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b689    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b68c    8b5008
                         push               0x2                                           // 0x0056b68f    6a02
                         push               0x3                                           // 0x0056b691    6a03
                         push               0x3f800000                                    // 0x0056b693    680000803f
                         add                ecx, 0x00001134                               // 0x0056b698    81c134110000
                         push               ecx                                           // 0x0056b69e    51
                         push               edx                                           // 0x0056b69f    52
                         mov.s              ecx, esi                                      // 0x0056b6a0    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056b6a2    e869f9ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0056b6a7    8b4e34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000250]             // 0x0056b6aa    8b9150020000
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x0056b6b0    8b4648
                         push               eax                                           // 0x0056b6b3    50
                         dec                edx                                           // 0x0056b6b4    4a
                         push               edx                                           // 0x0056b6b5    52
                         mov.s              ecx, esi                                      // 0x0056b6b6    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056b6b8    e8e3f5ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ac5 // 0x0056b6bd    813dac7cd100c51a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b6c7    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b6d3                          // 0x0056b6cc    7605
                         add                eax, 0x0001413c                               // 0x0056b6ce    053c410100
_jmp_addr_0x0056b6d3:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b6d3    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b6d6    8b5008
                         push               0x2                                           // 0x0056b6d9    6a02
                         push               0x3                                           // 0x0056b6db    6a03
                         push               0x3f800000                                    // 0x0056b6dd    680000803f
                         add                ecx, 0x00001138                               // 0x0056b6e2    81c138110000
                         push               ecx                                           // 0x0056b6e8    51
                         push               edx                                           // 0x0056b6e9    52
                         mov.s              ecx, esi                                      // 0x0056b6ea    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056b6ec    e81ff9ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0056b6f1    8b4e34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000250]             // 0x0056b6f4    8b9150020000
                         {disp8} mov        eax, dword ptr [esi + 0x44]                   // 0x0056b6fa    8b4644
                         push               eax                                           // 0x0056b6fd    50
                         dec                edx                                           // 0x0056b6fe    4a
                         push               edx                                           // 0x0056b6ff    52
                         mov.s              ecx, esi                                      // 0x0056b700    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056b702    e899f5ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ac6 // 0x0056b707    813dac7cd100c61a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b711    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b71d                          // 0x0056b716    7605
                         add                eax, 0x00014148                               // 0x0056b718    0548410100
_jmp_addr_0x0056b71d:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b71d    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b720    8b5008
                         push               0x2                                           // 0x0056b723    6a02
                         push               0x3                                           // 0x0056b725    6a03
                         push               0x3f800000                                    // 0x0056b727    680000803f
                         add                ecx, 0x0000113c                               // 0x0056b72c    81c13c110000
                         push               ecx                                           // 0x0056b732    51
                         push               edx                                           // 0x0056b733    52
                         mov.s              ecx, esi                                      // 0x0056b734    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056b736    e8d5f8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001ac7 // 0x0056b73b    813dac7cd100c71a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b745    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b751                          // 0x0056b74a    7605
                         add                eax, 0x00014154                               // 0x0056b74c    0554410100
_jmp_addr_0x0056b751:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b751    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b754    8b5008
                         push               0x2                                           // 0x0056b757    6a02
                         push               0x3                                           // 0x0056b759    6a03
                         push               0x3f800000                                    // 0x0056b75b    680000803f
                         add                ecx, 0x00001140                               // 0x0056b760    81c140110000
                         push               ecx                                           // 0x0056b766    51
                         push               edx                                           // 0x0056b767    52
                         mov.s              ecx, esi                                      // 0x0056b768    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056b76a    e8a1f8ffff
                         pop                edi                                           // 0x0056b76f    5f
                         pop                esi                                           // 0x0056b770    5e
                         pop                ebp                                           // 0x0056b771    5d
                         pop                ebx                                           // 0x0056b772    5b
                         add                esp, 0x20                                     // 0x0056b773    83c420
                         ret                                                              // 0x0056b776    c3
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000196a // 0x0056b777    813dac7cd1006a190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b781    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b78d                          // 0x0056b786    7605
                         add                eax, 0x000130f8                               // 0x0056b788    05f8300100
_jmp_addr_0x0056b78d:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b78d    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b790    8b5008
                         push               0x1                                           // 0x0056b793    6a01
                         push               0x3                                           // 0x0056b795    6a03
                         push               0x3f800000                                    // 0x0056b797    680000803f
                         add                ecx, 0x00004534                               // 0x0056b79c    81c134450000
                         push               ecx                                           // 0x0056b7a2    51
                         push               edx                                           // 0x0056b7a3    52
                         mov.s              ecx, esi                                      // 0x0056b7a4    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b7a6    e885fbffff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0056b7ab    8b4e34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000250]             // 0x0056b7ae    8b9150020000
                         {disp8} mov        eax, dword ptr [esi + 0x4c]                   // 0x0056b7b4    8b464c
                         push               eax                                           // 0x0056b7b7    50
                         dec                edx                                           // 0x0056b7b8    4a
                         push               edx                                           // 0x0056b7b9    52
                         mov.s              ecx, esi                                      // 0x0056b7ba    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056b7bc    e8dff4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000196b // 0x0056b7c1    813dac7cd1006b190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b7cb    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b7d7                          // 0x0056b7d0    7605
                         add                eax, 0x00013104                               // 0x0056b7d2    0504310100
_jmp_addr_0x0056b7d7:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b7d7    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b7da    8b5008
                         push               0x1                                           // 0x0056b7dd    6a01
                         push               0x0                                           // 0x0056b7df    6a00
                         push               0x42480000                                    // 0x0056b7e1    6800004842
                         push               0x1                                           // 0x0056b7e6    6a01
                         add                ecx, 0x00004538                               // 0x0056b7e8    81c138450000
                         push               ecx                                           // 0x0056b7ee    51
                         push               edx                                           // 0x0056b7ef    52
                         mov.s              ecx, esi                                      // 0x0056b7f0    8bce
                         call               _jmp_addr_0x0056b190                          // 0x0056b7f2    e899f9ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0056b7f7    8b4e34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000250]             // 0x0056b7fa    8b9150020000
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x0056b800    8b4648
                         push               eax                                           // 0x0056b803    50
                         dec                edx                                           // 0x0056b804    4a
                         push               edx                                           // 0x0056b805    52
                         mov.s              ecx, esi                                      // 0x0056b806    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056b808    e893f4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000196c // 0x0056b80d    813dac7cd1006c190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b817    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b823                          // 0x0056b81c    7605
                         add                eax, 0x00013110                               // 0x0056b81e    0510310100
_jmp_addr_0x0056b823:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b823    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b826    8b5008
                         push               0x1                                           // 0x0056b829    6a01
                         push               0x0                                           // 0x0056b82b    6a00
                         push               0x42480000                                    // 0x0056b82d    6800004842
                         push               0x1                                           // 0x0056b832    6a01
                         add                ecx, 0x0000453c                               // 0x0056b834    81c13c450000
                         push               ecx                                           // 0x0056b83a    51
                         push               edx                                           // 0x0056b83b    52
                         mov.s              ecx, esi                                      // 0x0056b83c    8bce
                         call               _jmp_addr_0x0056b190                          // 0x0056b83e    e84df9ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0056b843    8b4e34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000250]             // 0x0056b846    8b9150020000
                         {disp8} mov        eax, dword ptr [esi + 0x44]                   // 0x0056b84c    8b4644
                         push               eax                                           // 0x0056b84f    50
                         dec                edx                                           // 0x0056b850    4a
                         push               edx                                           // 0x0056b851    52
                         mov.s              ecx, esi                                      // 0x0056b852    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056b854    e847f4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000196e // 0x0056b859    813dac7cd1006e190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b863    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b86f                          // 0x0056b868    7605
                         add                eax, 0x00013128                               // 0x0056b86a    0528310100
_jmp_addr_0x0056b86f:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b86f    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b872    8b5008
                         push               0x1                                           // 0x0056b875    6a01
                         push               0x3                                           // 0x0056b877    6a03
                         push               0x3f800000                                    // 0x0056b879    680000803f
                         add                ecx, 0x00004540                               // 0x0056b87e    81c140450000
                         push               ecx                                           // 0x0056b884    51
                         push               edx                                           // 0x0056b885    52
                         mov.s              ecx, esi                                      // 0x0056b886    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b888    e8a3faffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000196f // 0x0056b88d    813dac7cd1006f190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b897    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b8a3                          // 0x0056b89c    7605
                         add                eax, 0x00013134                               // 0x0056b89e    0534310100
_jmp_addr_0x0056b8a3:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b8a3    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b8a6    8b5008
                         push               0x1                                           // 0x0056b8a9    6a01
                         push               0x3                                           // 0x0056b8ab    6a03
                         push               0x3f800000                                    // 0x0056b8ad    680000803f
                         add                ecx, 0x00004544                               // 0x0056b8b2    81c144450000
                         push               ecx                                           // 0x0056b8b8    51
                         push               edx                                           // 0x0056b8b9    52
                         mov.s              ecx, esi                                      // 0x0056b8ba    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b8bc    e86ffaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001970 // 0x0056b8c1    813dac7cd10070190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b8cb    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b8d7                          // 0x0056b8d0    7605
                         add                eax, 0x00013140                               // 0x0056b8d2    0540310100
_jmp_addr_0x0056b8d7:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b8d7    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b8da    8b5008
                         push               0x1                                           // 0x0056b8dd    6a01
                         push               0x3                                           // 0x0056b8df    6a03
                         push               0x3f800000                                    // 0x0056b8e1    680000803f
                         add                ecx, 0x00004548                               // 0x0056b8e6    81c148450000
                         push               ecx                                           // 0x0056b8ec    51
                         push               edx                                           // 0x0056b8ed    52
                         mov.s              ecx, esi                                      // 0x0056b8ee    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b8f0    e83bfaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001971 // 0x0056b8f5    813dac7cd10071190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b8ff    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b90b                          // 0x0056b904    7605
                         add                eax, 0x0001314c                               // 0x0056b906    054c310100
_jmp_addr_0x0056b90b:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b90b    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b90e    8b5008
                         push               0x1                                           // 0x0056b911    6a01
                         push               0x3                                           // 0x0056b913    6a03
                         push               0x3f800000                                    // 0x0056b915    680000803f
                         add                ecx, 0x0000454c                               // 0x0056b91a    81c14c450000
                         push               ecx                                           // 0x0056b920    51
                         push               edx                                           // 0x0056b921    52
                         mov.s              ecx, esi                                      // 0x0056b922    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b924    e807faffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001972 // 0x0056b929    813dac7cd10072190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b933    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b93f                          // 0x0056b938    7605
                         add                eax, 0x00013158                               // 0x0056b93a    0558310100
_jmp_addr_0x0056b93f:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b93f    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b942    8b5008
                         push               0x1                                           // 0x0056b945    6a01
                         push               0x3                                           // 0x0056b947    6a03
                         push               0x3f800000                                    // 0x0056b949    680000803f
                         add                ecx, 0x00004550                               // 0x0056b94e    81c150450000
                         push               ecx                                           // 0x0056b954    51
                         push               edx                                           // 0x0056b955    52
                         mov.s              ecx, esi                                      // 0x0056b956    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b958    e8d3f9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001973 // 0x0056b95d    813dac7cd10073190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b967    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b973                          // 0x0056b96c    7605
                         add                eax, 0x00013164                               // 0x0056b96e    0564310100
_jmp_addr_0x0056b973:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b973    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b976    8b5008
                         push               0x1                                           // 0x0056b979    6a01
                         push               0x3                                           // 0x0056b97b    6a03
                         push               0x3f800000                                    // 0x0056b97d    680000803f
                         add                ecx, 0x00004554                               // 0x0056b982    81c154450000
                         push               ecx                                           // 0x0056b988    51
                         push               edx                                           // 0x0056b989    52
                         mov.s              ecx, esi                                      // 0x0056b98a    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b98c    e89ff9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001974 // 0x0056b991    813dac7cd10074190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b99b    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b9a7                          // 0x0056b9a0    7605
                         add                eax, 0x00013170                               // 0x0056b9a2    0570310100
_jmp_addr_0x0056b9a7:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b9a7    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b9aa    8b5008
                         push               0x1                                           // 0x0056b9ad    6a01
                         push               0x3                                           // 0x0056b9af    6a03
                         push               0x3f800000                                    // 0x0056b9b1    680000803f
                         add                ecx, 0x00004558                               // 0x0056b9b6    81c158450000
                         push               ecx                                           // 0x0056b9bc    51
                         push               edx                                           // 0x0056b9bd    52
                         mov.s              ecx, esi                                      // 0x0056b9be    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b9c0    e86bf9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001975 // 0x0056b9c5    813dac7cd10075190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056b9cf    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056b9db                          // 0x0056b9d4    7605
                         add                eax, 0x0001317c                               // 0x0056b9d6    057c310100
_jmp_addr_0x0056b9db:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056b9db    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056b9de    8b5008
                         push               0x1                                           // 0x0056b9e1    6a01
                         push               0x3                                           // 0x0056b9e3    6a03
                         push               0x3f800000                                    // 0x0056b9e5    680000803f
                         add                ecx, 0x0000455c                               // 0x0056b9ea    81c15c450000
                         push               ecx                                           // 0x0056b9f0    51
                         push               edx                                           // 0x0056b9f1    52
                         mov.s              ecx, esi                                      // 0x0056b9f2    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056b9f4    e837f9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001976 // 0x0056b9f9    813dac7cd10076190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ba03    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056ba0f                          // 0x0056ba08    7605
                         add                eax, 0x00013188                               // 0x0056ba0a    0588310100
_jmp_addr_0x0056ba0f:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056ba0f    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056ba12    8b5008
                         push               0x1                                           // 0x0056ba15    6a01
                         push               0x3                                           // 0x0056ba17    6a03
                         push               0x3f800000                                    // 0x0056ba19    680000803f
                         add                ecx, 0x00004560                               // 0x0056ba1e    81c160450000
                         push               ecx                                           // 0x0056ba24    51
                         push               edx                                           // 0x0056ba25    52
                         mov.s              ecx, esi                                      // 0x0056ba26    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056ba28    e803f9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001977 // 0x0056ba2d    813dac7cd10077190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ba37    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056ba43                          // 0x0056ba3c    7605
                         add                eax, 0x00013194                               // 0x0056ba3e    0594310100
_jmp_addr_0x0056ba43:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056ba43    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056ba46    8b5008
                         push               0x1                                           // 0x0056ba49    6a01
                         push               0x3                                           // 0x0056ba4b    6a03
                         push               0x3f800000                                    // 0x0056ba4d    680000803f
                         add                ecx, 0x00004564                               // 0x0056ba52    81c164450000
                         push               ecx                                           // 0x0056ba58    51
                         push               edx                                           // 0x0056ba59    52
                         mov.s              ecx, esi                                      // 0x0056ba5a    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056ba5c    e8cff8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001978 // 0x0056ba61    813dac7cd10078190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ba6b    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056ba77                          // 0x0056ba70    7605
                         add                eax, 0x000131a0                               // 0x0056ba72    05a0310100
_jmp_addr_0x0056ba77:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056ba77    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056ba7a    8b5008
                         push               0x1                                           // 0x0056ba7d    6a01
                         push               0x3                                           // 0x0056ba7f    6a03
                         push               0x3f800000                                    // 0x0056ba81    680000803f
                         add                ecx, 0x00004568                               // 0x0056ba86    81c168450000
                         push               ecx                                           // 0x0056ba8c    51
                         push               edx                                           // 0x0056ba8d    52
                         mov.s              ecx, esi                                      // 0x0056ba8e    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056ba90    e89bf8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001979 // 0x0056ba95    813dac7cd10079190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ba9f    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056baab                          // 0x0056baa4    7605
                         add                eax, 0x000131ac                               // 0x0056baa6    05ac310100
_jmp_addr_0x0056baab:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056baab    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056baae    8b5008
                         push               0x1                                           // 0x0056bab1    6a01
                         push               0x3                                           // 0x0056bab3    6a03
                         push               0x3f800000                                    // 0x0056bab5    680000803f
                         add                ecx, 0x0000456c                               // 0x0056baba    81c16c450000
                         push               ecx                                           // 0x0056bac0    51
                         push               edx                                           // 0x0056bac1    52
                         mov.s              ecx, esi                                      // 0x0056bac2    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056bac4    e867f8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000197a // 0x0056bac9    813dac7cd1007a190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bad3    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056badf                          // 0x0056bad8    7605
                         add                eax, 0x000131b8                               // 0x0056bada    05b8310100
_jmp_addr_0x0056badf:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056badf    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bae2    8b5008
                         push               0x1                                           // 0x0056bae5    6a01
                         push               0x3                                           // 0x0056bae7    6a03
                         push               0x3f800000                                    // 0x0056bae9    680000803f
                         add                ecx, 0x00004570                               // 0x0056baee    81c170450000
                         push               ecx                                           // 0x0056baf4    51
                         push               edx                                           // 0x0056baf5    52
                         mov.s              ecx, esi                                      // 0x0056baf6    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056baf8    e833f8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000197b // 0x0056bafd    813dac7cd1007b190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bb07    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056bb13                          // 0x0056bb0c    7605
                         add                eax, 0x000131c4                               // 0x0056bb0e    05c4310100
_jmp_addr_0x0056bb13:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056bb13    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bb16    8b5008
                         push               0x1                                           // 0x0056bb19    6a01
                         push               0x3                                           // 0x0056bb1b    6a03
                         push               0x3f800000                                    // 0x0056bb1d    680000803f
                         add                ecx, 0x00004574                               // 0x0056bb22    81c174450000
                         push               ecx                                           // 0x0056bb28    51
                         push               edx                                           // 0x0056bb29    52
                         mov.s              ecx, esi                                      // 0x0056bb2a    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056bb2c    e8fff7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000197c // 0x0056bb31    813dac7cd1007c190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bb3b    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056bb47                          // 0x0056bb40    7605
                         add                eax, 0x000131d0                               // 0x0056bb42    05d0310100
_jmp_addr_0x0056bb47:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056bb47    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bb4a    8b5008
                         push               0x1                                           // 0x0056bb4d    6a01
                         push               0x3                                           // 0x0056bb4f    6a03
                         push               0x3f800000                                    // 0x0056bb51    680000803f
                         add                ecx, 0x00004578                               // 0x0056bb56    81c178450000
                         push               ecx                                           // 0x0056bb5c    51
                         push               edx                                           // 0x0056bb5d    52
                         mov.s              ecx, esi                                      // 0x0056bb5e    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056bb60    e8cbf7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000197d // 0x0056bb65    813dac7cd1007d190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bb6f    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056bb7b                          // 0x0056bb74    7605
                         add                eax, 0x000131dc                               // 0x0056bb76    05dc310100
_jmp_addr_0x0056bb7b:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056bb7b    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bb7e    8b5008
                         push               0x1                                           // 0x0056bb81    6a01
                         push               0x3                                           // 0x0056bb83    6a03
                         push               0x3f800000                                    // 0x0056bb85    680000803f
                         add                ecx, 0x0000457c                               // 0x0056bb8a    81c17c450000
                         push               ecx                                           // 0x0056bb90    51
                         push               edx                                           // 0x0056bb91    52
                         mov.s              ecx, esi                                      // 0x0056bb92    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056bb94    e897f7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000197e // 0x0056bb99    813dac7cd1007e190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bba3    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056bbaf                          // 0x0056bba8    7605
                         add                eax, 0x000131e8                               // 0x0056bbaa    05e8310100
_jmp_addr_0x0056bbaf:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056bbaf    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bbb2    8b5008
                         push               0x1                                           // 0x0056bbb5    6a01
                         push               0x3                                           // 0x0056bbb7    6a03
                         push               0x3f800000                                    // 0x0056bbb9    680000803f
                         add                ecx, 0x00004580                               // 0x0056bbbe    81c180450000
                         push               ecx                                           // 0x0056bbc4    51
                         push               edx                                           // 0x0056bbc5    52
                         mov.s              ecx, esi                                      // 0x0056bbc6    8bce
                         call               _jmp_addr_0x0056b330                          // 0x0056bbc8    e863f7ffff
                         pop                edi                                           // 0x0056bbcd    5f
                         pop                esi                                           // 0x0056bbce    5e
                         pop                ebp                                           // 0x0056bbcf    5d
                         pop                ebx                                           // 0x0056bbd0    5b
                         add                esp, 0x20                                     // 0x0056bbd1    83c420
                         ret                                                              // 0x0056bbd4    c3
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000197f // 0x0056bbd5    813dac7cd1007f190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bbdf    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056bbeb                          // 0x0056bbe4    7605
                         add                eax, 0x000131f4                               // 0x0056bbe6    05f4310100
_jmp_addr_0x0056bbeb:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056bbeb    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bbee    8b5008
                         push               0x2                                           // 0x0056bbf1    6a02
                         push               0x3                                           // 0x0056bbf3    6a03
                         push               0x42c80000                                    // 0x0056bbf5    680000c842
                         add                ecx, 0x24                                     // 0x0056bbfa    83c124
                         push               ecx                                           // 0x0056bbfd    51
                         push               edx                                           // 0x0056bbfe    52
                         mov.s              ecx, esi                                      // 0x0056bbff    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bc01    e80af4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001980 // 0x0056bc06    813dac7cd10080190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bc10    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056bc1c                          // 0x0056bc15    7605
                         add                eax, 0x00013200                               // 0x0056bc17    0500320100
_jmp_addr_0x0056bc1c:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056bc1c    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bc1f    8b5008
                         push               0x2                                           // 0x0056bc22    6a02
                         push               0x3                                           // 0x0056bc24    6a03
                         push               0x42c80000                                    // 0x0056bc26    680000c842
                         add                ecx, 0x28                                     // 0x0056bc2b    83c128
                         push               ecx                                           // 0x0056bc2e    51
                         push               edx                                           // 0x0056bc2f    52
                         mov.s              ecx, esi                                      // 0x0056bc30    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bc32    e8d9f3ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001981 // 0x0056bc37    813dac7cd10081190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bc41    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056bc4d                          // 0x0056bc46    7605
                         add                eax, 0x0001320c                               // 0x0056bc48    050c320100
_jmp_addr_0x0056bc4d:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056bc4d    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056bc50    8b5008
                         push               0x2                                           // 0x0056bc53    6a02
                         push               0x3                                           // 0x0056bc55    6a03
                         push               0x447a0000                                    // 0x0056bc57    6800007a44
                         add                ecx, 0x2c                                     // 0x0056bc5c    83c12c
                         push               ecx                                           // 0x0056bc5f    51
                         push               edx                                           // 0x0056bc60    52
                         mov.s              ecx, esi                                      // 0x0056bc61    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bc63    e8a8f3ffff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0056bc68    8b4e34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000250]             // 0x0056bc6b    8b9150020000
                         {disp8} mov        eax, dword ptr [esi + 0x4c]                   // 0x0056bc71    8b464c
                         push               eax                                           // 0x0056bc74    50
                         dec                edx                                           // 0x0056bc75    4a
                         push               edx                                           // 0x0056bc76    52
                         mov.s              ecx, esi                                      // 0x0056bc77    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056bc79    e822f0ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001982 // 0x0056bc7e    813dac7cd10082190000
                         {disp8} ja         _jmp_addr_0x0056bc92                          // 0x0056bc88    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bc8a    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0056bc9d                          // 0x0056bc90    eb0b
_jmp_addr_0x0056bc92:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bc92    a1a87cd100
                         {disp32} lea       ecx, dword ptr [eax + 0x00013218]             // 0x0056bc97    8d8818320100
_jmp_addr_0x0056bc9d:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056bc9d    8b466c
                         {disp8} mov        edx, dword ptr [eax + 0x2c]                   // 0x0056bca0    8b502c
                         push               0x2                                           // 0x0056bca3    6a02
                         xor.s              edi, edi                                      // 0x0056bca5    33ff
                         push               0x1                                           // 0x0056bca7    6a01
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0056bca9    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056bcad    897c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0056bcb1    df6c2418
                         push               ecx                                           // 0x0056bcb5    51
                         add                eax, 0x30                                     // 0x0056bcb6    83c030
                         fstp               dword ptr [esp]                               // 0x0056bcb9    d91c24
                         push               eax                                           // 0x0056bcbc    50
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0056bcbd    8b4108
                         push               eax                                           // 0x0056bcc0    50
                         mov.s              ecx, esi                                      // 0x0056bcc1    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bcc3    e848f3ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001983 // 0x0056bcc8    813dac7cd10083190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bcd2    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0056bce0                          // 0x0056bcd8    7606
                         add                ecx, 0x00013224                               // 0x0056bcda    81c124320100
_jmp_addr_0x0056bce0:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056bce0    8b466c
                         {disp8} mov        edx, dword ptr [eax + 0x2c]                   // 0x0056bce3    8b502c
                         push               0x2                                           // 0x0056bce6    6a02
                         push               0x1                                           // 0x0056bce8    6a01
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0056bcea    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056bcee    897c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0056bcf2    df6c2418
                         push               ecx                                           // 0x0056bcf6    51
                         add                eax, 0x34                                     // 0x0056bcf7    83c034
                         fstp               dword ptr [esp]                               // 0x0056bcfa    d91c24
                         push               eax                                           // 0x0056bcfd    50
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0056bcfe    8b4108
                         push               eax                                           // 0x0056bd01    50
                         mov.s              ecx, esi                                      // 0x0056bd02    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bd04    e807f3ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001984 // 0x0056bd09    813dac7cd10084190000
                         {disp8} ja         _jmp_addr_0x0056bd1c                          // 0x0056bd13    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bd15    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056bd28                          // 0x0056bd1a    eb0c
_jmp_addr_0x0056bd1c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bd1c    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013230]             // 0x0056bd22    8d8130320100
_jmp_addr_0x0056bd28:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056bd28    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056bd2b    8b4008
                         push               0x2                                           // 0x0056bd2e    6a02
                         push               0x3                                           // 0x0056bd30    6a03
                         push               0x447a0000                                    // 0x0056bd32    6800007a44
                         add                edx, 0x38                                     // 0x0056bd37    83c238
                         push               edx                                           // 0x0056bd3a    52
                         push               eax                                           // 0x0056bd3b    50
                         mov.s              ecx, esi                                      // 0x0056bd3c    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bd3e    e8cdf2ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001985 // 0x0056bd43    813dac7cd10085190000
                         {disp8} ja         _jmp_addr_0x0056bd56                          // 0x0056bd4d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bd4f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056bd62                          // 0x0056bd54    eb0c
_jmp_addr_0x0056bd56:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bd56    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001323c]             // 0x0056bd5c    8d813c320100
_jmp_addr_0x0056bd62:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056bd62    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056bd65    8b4008
                         push               0x2                                           // 0x0056bd68    6a02
                         push               0x3                                           // 0x0056bd6a    6a03
                         push               0x447a0000                                    // 0x0056bd6c    6800007a44
                         add                edx, 0x3c                                     // 0x0056bd71    83c23c
                         push               edx                                           // 0x0056bd74    52
                         push               eax                                           // 0x0056bd75    50
                         mov.s              ecx, esi                                      // 0x0056bd76    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bd78    e893f2ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001986 // 0x0056bd7d    813dac7cd10086190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bd87    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0056bd95                          // 0x0056bd8d    7606
                         add                ecx, 0x00013248                               // 0x0056bd8f    81c148320100
_jmp_addr_0x0056bd95:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056bd95    8b466c
                         {disp8} mov        edx, dword ptr [eax + 0x3c]                   // 0x0056bd98    8b503c
                         push               0x2                                           // 0x0056bd9b    6a02
                         push               0x1                                           // 0x0056bd9d    6a01
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0056bd9f    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056bda3    897c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0056bda7    df6c2418
                         push               ecx                                           // 0x0056bdab    51
                         add                eax, 0x40                                     // 0x0056bdac    83c040
                         fstp               dword ptr [esp]                               // 0x0056bdaf    d91c24
                         push               eax                                           // 0x0056bdb2    50
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0056bdb3    8b4108
                         push               eax                                           // 0x0056bdb6    50
                         mov.s              ecx, esi                                      // 0x0056bdb7    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bdb9    e852f2ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001987 // 0x0056bdbe    813dac7cd10087190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bdc8    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0056bdd6                          // 0x0056bdce    7606
                         add                ecx, 0x00013254                               // 0x0056bdd0    81c154320100
_jmp_addr_0x0056bdd6:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056bdd6    8b466c
                         {disp8} mov        edx, dword ptr [eax + 0x3c]                   // 0x0056bdd9    8b503c
                         push               0x2                                           // 0x0056bddc    6a02
                         push               0x1                                           // 0x0056bdde    6a01
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0056bde0    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056bde4    897c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0056bde8    df6c2418
                         push               ecx                                           // 0x0056bdec    51
                         add                eax, 0x44                                     // 0x0056bded    83c044
                         fstp               dword ptr [esp]                               // 0x0056bdf0    d91c24
                         push               eax                                           // 0x0056bdf3    50
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0056bdf4    8b4108
                         push               eax                                           // 0x0056bdf7    50
                         mov.s              ecx, esi                                      // 0x0056bdf8    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bdfa    e811f2ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001988 // 0x0056bdff    813dac7cd10088190000
                         {disp8} ja         _jmp_addr_0x0056be12                          // 0x0056be09    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056be0b    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056be1e                          // 0x0056be10    eb0c
_jmp_addr_0x0056be12:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056be12    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013260]             // 0x0056be18    8d8160320100
_jmp_addr_0x0056be1e:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056be1e    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056be21    8b4008
                         push               0x2                                           // 0x0056be24    6a02
                         push               0x3                                           // 0x0056be26    6a03
                         push               0x447a0000                                    // 0x0056be28    6800007a44
                         add                edx, 0x48                                     // 0x0056be2d    83c248
                         push               edx                                           // 0x0056be30    52
                         push               eax                                           // 0x0056be31    50
                         mov.s              ecx, esi                                      // 0x0056be32    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056be34    e8d7f1ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001989 // 0x0056be39    813dac7cd10089190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056be43    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0056be51                          // 0x0056be49    7606
                         add                ecx, 0x0001326c                               // 0x0056be4b    81c16c320100
_jmp_addr_0x0056be51:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056be51    8b466c
                         {disp8} mov        edx, dword ptr [eax + 0x48]                   // 0x0056be54    8b5048
                         push               0x2                                           // 0x0056be57    6a02
                         push               0x1                                           // 0x0056be59    6a01
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0056be5b    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056be5f    897c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0056be63    df6c2418
                         push               ecx                                           // 0x0056be67    51
                         add                eax, 0x4c                                     // 0x0056be68    83c04c
                         fstp               dword ptr [esp]                               // 0x0056be6b    d91c24
                         push               eax                                           // 0x0056be6e    50
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0056be6f    8b4108
                         push               eax                                           // 0x0056be72    50
                         mov.s              ecx, esi                                      // 0x0056be73    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056be75    e896f1ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000198a // 0x0056be7a    813dac7cd1008a190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056be84    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0056be92                          // 0x0056be8a    7606
                         add                ecx, 0x00013278                               // 0x0056be8c    81c178320100
_jmp_addr_0x0056be92:    {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056be92    8b466c
                         {disp8} mov        edx, dword ptr [eax + 0x48]                   // 0x0056be95    8b5048
                         push               0x2                                           // 0x0056be98    6a02
                         push               0x1                                           // 0x0056be9a    6a01
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0056be9c    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0056bea0    897c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0056bea4    df6c2418
                         push               ecx                                           // 0x0056bea8    51
                         add                eax, 0x50                                     // 0x0056bea9    83c050
                         fstp               dword ptr [esp]                               // 0x0056beac    d91c24
                         push               eax                                           // 0x0056beaf    50
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x0056beb0    8b4108
                         push               eax                                           // 0x0056beb3    50
                         mov.s              ecx, esi                                      // 0x0056beb4    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056beb6    e855f1ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000198b // 0x0056bebb    813dac7cd1008b190000
                         {disp8} ja         _jmp_addr_0x0056bece                          // 0x0056bec5    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bec7    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056beda                          // 0x0056becc    eb0c
_jmp_addr_0x0056bece:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bece    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013284]             // 0x0056bed4    8d8184320100
_jmp_addr_0x0056beda:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056beda    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056bedd    8b4008
                         push               0x2                                           // 0x0056bee0    6a02
                         push               0x3                                           // 0x0056bee2    6a03
                         push               0x447a0000                                    // 0x0056bee4    6800007a44
                         add                edx, 0x54                                     // 0x0056bee9    83c254
                         push               edx                                           // 0x0056beec    52
                         push               eax                                           // 0x0056beed    50
                         mov.s              ecx, esi                                      // 0x0056beee    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bef0    e81bf1ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000198c // 0x0056bef5    813dac7cd1008c190000
                         {disp8} ja         _jmp_addr_0x0056bf08                          // 0x0056beff    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bf01    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056bf14                          // 0x0056bf06    eb0c
_jmp_addr_0x0056bf08:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bf08    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013290]             // 0x0056bf0e    8d8190320100
_jmp_addr_0x0056bf14:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056bf14    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056bf17    8b4008
                         push               0x2                                           // 0x0056bf1a    6a02
                         push               edi                                           // 0x0056bf1c    57
                         push               0x3f800000                                    // 0x0056bf1d    680000803f
                         push               0x2                                           // 0x0056bf22    6a02
                         add                edx, 0x58                                     // 0x0056bf24    83c258
                         push               edx                                           // 0x0056bf27    52
                         push               eax                                           // 0x0056bf28    50
                         mov.s              ecx, esi                                      // 0x0056bf29    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056bf2b    e8d0eeffff
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x0056bf30    8b5634
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                   // 0x0056bf33    8b4e44
                         {disp32} mov       eax, dword ptr [edx + 0x00000250]             // 0x0056bf36    8b8250020000
                         push               ecx                                           // 0x0056bf3c    51
                         dec                eax                                           // 0x0056bf3d    48
                         push               eax                                           // 0x0056bf3e    50
                         mov.s              ecx, esi                                      // 0x0056bf3f    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056bf41    e85aedffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000198d // 0x0056bf46    813dac7cd1008d190000
                         {disp8} ja         _jmp_addr_0x0056bf59                          // 0x0056bf50    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bf52    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056bf65                          // 0x0056bf57    eb0c
_jmp_addr_0x0056bf59:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bf59    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001329c]             // 0x0056bf5f    8d819c320100
_jmp_addr_0x0056bf65:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056bf65    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056bf68    8b4008
                         push               0x2                                           // 0x0056bf6b    6a02
                         push               0x3                                           // 0x0056bf6d    6a03
                         push               0x41c80000                                    // 0x0056bf6f    680000c841
                         add                edx, 0x5c                                     // 0x0056bf74    83c25c
                         push               edx                                           // 0x0056bf77    52
                         push               eax                                           // 0x0056bf78    50
                         mov.s              ecx, esi                                      // 0x0056bf79    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bf7b    e890f0ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000198e // 0x0056bf80    813dac7cd1008e190000
                         {disp8} ja         _jmp_addr_0x0056bf93                          // 0x0056bf8a    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bf8c    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056bf9f                          // 0x0056bf91    eb0c
_jmp_addr_0x0056bf93:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bf93    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132a8]             // 0x0056bf99    8d81a8320100
_jmp_addr_0x0056bf9f:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056bf9f    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056bfa2    8b4008
                         push               0x2                                           // 0x0056bfa5    6a02
                         push               0x3                                           // 0x0056bfa7    6a03
                         push               0x42c80000                                    // 0x0056bfa9    680000c842
                         add                edx, 0x60                                     // 0x0056bfae    83c260
                         push               edx                                           // 0x0056bfb1    52
                         push               eax                                           // 0x0056bfb2    50
                         mov.s              ecx, esi                                      // 0x0056bfb3    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bfb5    e856f0ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000198f // 0x0056bfba    813dac7cd1008f190000
                         {disp8} ja         _jmp_addr_0x0056bfcd                          // 0x0056bfc4    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056bfc6    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056bfd9                          // 0x0056bfcb    eb0c
_jmp_addr_0x0056bfcd:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056bfcd    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132b4]             // 0x0056bfd3    8d81b4320100
_jmp_addr_0x0056bfd9:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056bfd9    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056bfdc    8b4008
                         push               0x2                                           // 0x0056bfdf    6a02
                         push               0x3                                           // 0x0056bfe1    6a03
                         push               0x42c80000                                    // 0x0056bfe3    680000c842
                         add                edx, 0x64                                     // 0x0056bfe8    83c264
                         push               edx                                           // 0x0056bfeb    52
                         push               eax                                           // 0x0056bfec    50
                         mov.s              ecx, esi                                      // 0x0056bfed    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056bfef    e81cf0ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001990 // 0x0056bff4    813dac7cd10090190000
                         {disp8} ja         _jmp_addr_0x0056c007                          // 0x0056bffe    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c000    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c013                          // 0x0056c005    eb0c
_jmp_addr_0x0056c007:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c007    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132c0]             // 0x0056c00d    8d81c0320100
_jmp_addr_0x0056c013:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c013    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c016    8b4008
                         push               0x2                                           // 0x0056c019    6a02
                         push               0x3                                           // 0x0056c01b    6a03
                         push               0x42c80000                                    // 0x0056c01d    680000c842
                         add                edx, 0x68                                     // 0x0056c022    83c268
                         push               edx                                           // 0x0056c025    52
                         push               eax                                           // 0x0056c026    50
                         mov.s              ecx, esi                                      // 0x0056c027    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c029    e8e2efffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001991 // 0x0056c02e    813dac7cd10091190000
                         {disp8} ja         _jmp_addr_0x0056c041                          // 0x0056c038    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c03a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c04d                          // 0x0056c03f    eb0c
_jmp_addr_0x0056c041:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c041    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132cc]             // 0x0056c047    8d81cc320100
_jmp_addr_0x0056c04d:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c04d    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c050    8b4008
                         push               0x2                                           // 0x0056c053    6a02
                         push               0x3                                           // 0x0056c055    6a03
                         push               0x42c80000                                    // 0x0056c057    680000c842
                         add                edx, 0x6c                                     // 0x0056c05c    83c26c
                         push               edx                                           // 0x0056c05f    52
                         push               eax                                           // 0x0056c060    50
                         mov.s              ecx, esi                                      // 0x0056c061    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c063    e8a8efffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001992 // 0x0056c068    813dac7cd10092190000
                         {disp8} ja         _jmp_addr_0x0056c07b                          // 0x0056c072    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c074    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c087                          // 0x0056c079    eb0c
_jmp_addr_0x0056c07b:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c07b    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132d8]             // 0x0056c081    8d81d8320100
_jmp_addr_0x0056c087:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c087    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c08a    8b4008
                         push               0x2                                           // 0x0056c08d    6a02
                         push               0x3                                           // 0x0056c08f    6a03
                         push               0x42c80000                                    // 0x0056c091    680000c842
                         add                edx, 0x70                                     // 0x0056c096    83c270
                         push               edx                                           // 0x0056c099    52
                         push               eax                                           // 0x0056c09a    50
                         mov.s              ecx, esi                                      // 0x0056c09b    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c09d    e86eefffff
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x0056c0a2    8b5634
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x0056c0a5    8b4e48
                         {disp32} mov       eax, dword ptr [edx + 0x00000250]             // 0x0056c0a8    8b8250020000
                         push               ecx                                           // 0x0056c0ae    51
                         dec                eax                                           // 0x0056c0af    48
                         push               eax                                           // 0x0056c0b0    50
                         mov.s              ecx, esi                                      // 0x0056c0b1    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056c0b3    e8e8ebffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001993 // 0x0056c0b8    813dac7cd10093190000
                         {disp8} ja         _jmp_addr_0x0056c0cb                          // 0x0056c0c2    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c0c4    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c0d7                          // 0x0056c0c9    eb0c
_jmp_addr_0x0056c0cb:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c0cb    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132e4]             // 0x0056c0d1    8d81e4320100
_jmp_addr_0x0056c0d7:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c0d7    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c0da    8b4008
                         push               0x2                                           // 0x0056c0dd    6a02
                         push               0x3                                           // 0x0056c0df    6a03
                         push               0x42c80000                                    // 0x0056c0e1    680000c842
                         add                edx, 0x74                                     // 0x0056c0e6    83c274
                         push               edx                                           // 0x0056c0e9    52
                         push               eax                                           // 0x0056c0ea    50
                         mov.s              ecx, esi                                      // 0x0056c0eb    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c0ed    e81eefffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001994 // 0x0056c0f2    813dac7cd10094190000
                         {disp8} ja         _jmp_addr_0x0056c105                          // 0x0056c0fc    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c0fe    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c111                          // 0x0056c103    eb0c
_jmp_addr_0x0056c105:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c105    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132f0]             // 0x0056c10b    8d81f0320100
_jmp_addr_0x0056c111:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c111    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c114    8b4008
                         push               0x2                                           // 0x0056c117    6a02
                         push               0x3                                           // 0x0056c119    6a03
                         push               0x42c80000                                    // 0x0056c11b    680000c842
                         add                edx, 0x78                                     // 0x0056c120    83c278
                         push               edx                                           // 0x0056c123    52
                         push               eax                                           // 0x0056c124    50
                         mov.s              ecx, esi                                      // 0x0056c125    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c127    e8e4eeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001995 // 0x0056c12c    813dac7cd10095190000
                         {disp8} ja         _jmp_addr_0x0056c13f                          // 0x0056c136    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c138    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c14b                          // 0x0056c13d    eb0c
_jmp_addr_0x0056c13f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c13f    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000132fc]             // 0x0056c145    8d81fc320100
_jmp_addr_0x0056c14b:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c14b    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c14e    8b4008
                         push               0x2                                           // 0x0056c151    6a02
                         push               0x3                                           // 0x0056c153    6a03
                         push               0x42c80000                                    // 0x0056c155    680000c842
                         add                edx, 0x7c                                     // 0x0056c15a    83c27c
                         push               edx                                           // 0x0056c15d    52
                         push               eax                                           // 0x0056c15e    50
                         mov.s              ecx, esi                                      // 0x0056c15f    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c161    e8aaeeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001996 // 0x0056c166    813dac7cd10096190000
                         {disp8} ja         _jmp_addr_0x0056c179                          // 0x0056c170    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c172    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c185                          // 0x0056c177    eb0c
_jmp_addr_0x0056c179:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c179    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013308]             // 0x0056c17f    8d8108330100
_jmp_addr_0x0056c185:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c185    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c188    8b4008
                         push               0x2                                           // 0x0056c18b    6a02
                         push               0x3                                           // 0x0056c18d    6a03
                         push               0x42c80000                                    // 0x0056c18f    680000c842
                         add                edx, 0x00000080                               // 0x0056c194    81c280000000
                         push               edx                                           // 0x0056c19a    52
                         push               eax                                           // 0x0056c19b    50
                         mov.s              ecx, esi                                      // 0x0056c19c    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c19e    e86deeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001997 // 0x0056c1a3    813dac7cd10097190000
                         {disp8} ja         _jmp_addr_0x0056c1b6                          // 0x0056c1ad    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c1af    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c1c2                          // 0x0056c1b4    eb0c
_jmp_addr_0x0056c1b6:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c1b6    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013314]             // 0x0056c1bc    8d8114330100
_jmp_addr_0x0056c1c2:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c1c2    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c1c5    8b4008
                         push               0x2                                           // 0x0056c1c8    6a02
                         push               0x3                                           // 0x0056c1ca    6a03
                         push               0x42c80000                                    // 0x0056c1cc    680000c842
                         add                edx, 0x00000084                               // 0x0056c1d1    81c284000000
                         push               edx                                           // 0x0056c1d7    52
                         push               eax                                           // 0x0056c1d8    50
                         mov.s              ecx, esi                                      // 0x0056c1d9    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c1db    e830eeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001998 // 0x0056c1e0    813dac7cd10098190000
                         {disp8} ja         _jmp_addr_0x0056c1f3                          // 0x0056c1ea    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c1ec    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c1ff                          // 0x0056c1f1    eb0c
_jmp_addr_0x0056c1f3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c1f3    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013320]             // 0x0056c1f9    8d8120330100
_jmp_addr_0x0056c1ff:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c1ff    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c202    8b4008
                         push               0x2                                           // 0x0056c205    6a02
                         push               0x3                                           // 0x0056c207    6a03
                         push               0x42c80000                                    // 0x0056c209    680000c842
                         add                edx, 0x00000088                               // 0x0056c20e    81c288000000
                         push               edx                                           // 0x0056c214    52
                         push               eax                                           // 0x0056c215    50
                         mov.s              ecx, esi                                      // 0x0056c216    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c218    e8f3edffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001999 // 0x0056c21d    813dac7cd10099190000
                         {disp8} ja         _jmp_addr_0x0056c230                          // 0x0056c227    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c229    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c23c                          // 0x0056c22e    eb0c
_jmp_addr_0x0056c230:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c230    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001332c]             // 0x0056c236    8d812c330100
_jmp_addr_0x0056c23c:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c23c    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c23f    8b4008
                         push               0x2                                           // 0x0056c242    6a02
                         push               0x3                                           // 0x0056c244    6a03
                         push               0x42c80000                                    // 0x0056c246    680000c842
                         add                edx, 0x0000008c                               // 0x0056c24b    81c28c000000
                         push               edx                                           // 0x0056c251    52
                         push               eax                                           // 0x0056c252    50
                         mov.s              ecx, esi                                      // 0x0056c253    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c255    e8b6edffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000199a // 0x0056c25a    813dac7cd1009a190000
                         {disp8} ja         _jmp_addr_0x0056c26d                          // 0x0056c264    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c266    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c279                          // 0x0056c26b    eb0c
_jmp_addr_0x0056c26d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c26d    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013338]             // 0x0056c273    8d8138330100
_jmp_addr_0x0056c279:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c279    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c27c    8b4008
                         push               0x2                                           // 0x0056c27f    6a02
                         push               0x3                                           // 0x0056c281    6a03
                         push               0x42c80000                                    // 0x0056c283    680000c842
                         add                edx, 0x00000090                               // 0x0056c288    81c290000000
                         push               edx                                           // 0x0056c28e    52
                         push               eax                                           // 0x0056c28f    50
                         mov.s              ecx, esi                                      // 0x0056c290    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c292    e879edffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000199b // 0x0056c297    813dac7cd1009b190000
                         {disp8} ja         _jmp_addr_0x0056c2aa                          // 0x0056c2a1    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c2a3    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c2b6                          // 0x0056c2a8    eb0c
_jmp_addr_0x0056c2aa:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c2aa    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013344]             // 0x0056c2b0    8d8144330100
_jmp_addr_0x0056c2b6:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c2b6    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c2b9    8b4008
                         push               0x2                                           // 0x0056c2bc    6a02
                         push               0x3                                           // 0x0056c2be    6a03
                         push               0x42c80000                                    // 0x0056c2c0    680000c842
                         add                edx, 0x00000094                               // 0x0056c2c5    81c294000000
                         push               edx                                           // 0x0056c2cb    52
                         push               eax                                           // 0x0056c2cc    50
                         mov.s              ecx, esi                                      // 0x0056c2cd    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c2cf    e83cedffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000199c // 0x0056c2d4    813dac7cd1009c190000
                         {disp8} ja         _jmp_addr_0x0056c2e7                          // 0x0056c2de    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c2e0    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c2f3                          // 0x0056c2e5    eb0c
_jmp_addr_0x0056c2e7:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c2e7    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013350]             // 0x0056c2ed    8d8150330100
_jmp_addr_0x0056c2f3:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c2f3    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c2f6    8b4008
                         push               0x2                                           // 0x0056c2f9    6a02
                         push               0x3                                           // 0x0056c2fb    6a03
                         push               0x42c80000                                    // 0x0056c2fd    680000c842
                         add                edx, 0x00000098                               // 0x0056c302    81c298000000
                         push               edx                                           // 0x0056c308    52
                         push               eax                                           // 0x0056c309    50
                         mov.s              ecx, esi                                      // 0x0056c30a    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c30c    e8ffecffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000199d // 0x0056c311    813dac7cd1009d190000
                         {disp8} ja         _jmp_addr_0x0056c324                          // 0x0056c31b    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c31d    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c330                          // 0x0056c322    eb0c
_jmp_addr_0x0056c324:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c324    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001335c]             // 0x0056c32a    8d815c330100
_jmp_addr_0x0056c330:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c330    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c333    8b4008
                         push               0x2                                           // 0x0056c336    6a02
                         push               0x3                                           // 0x0056c338    6a03
                         push               0x42c80000                                    // 0x0056c33a    680000c842
                         add                edx, 0x0000009c                               // 0x0056c33f    81c29c000000
                         push               edx                                           // 0x0056c345    52
                         push               eax                                           // 0x0056c346    50
                         mov.s              ecx, esi                                      // 0x0056c347    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c349    e8c2ecffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000199e // 0x0056c34e    813dac7cd1009e190000
                         {disp8} ja         _jmp_addr_0x0056c361                          // 0x0056c358    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c35a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c36d                          // 0x0056c35f    eb0c
_jmp_addr_0x0056c361:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c361    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013368]             // 0x0056c367    8d8168330100
_jmp_addr_0x0056c36d:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c36d    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c370    8b4008
                         push               0x2                                           // 0x0056c373    6a02
                         push               0x3                                           // 0x0056c375    6a03
                         push               0x49742400                                    // 0x0056c377    6800247449
                         add                edx, 0x000000a0                               // 0x0056c37c    81c2a0000000
                         push               edx                                           // 0x0056c382    52
                         push               eax                                           // 0x0056c383    50
                         mov.s              ecx, esi                                      // 0x0056c384    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c386    e885ecffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x0000199f // 0x0056c38b    813dac7cd1009f190000
                         {disp8} ja         _jmp_addr_0x0056c39e                          // 0x0056c395    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c397    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c3aa                          // 0x0056c39c    eb0c
_jmp_addr_0x0056c39e:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c39e    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013374]             // 0x0056c3a4    8d8174330100
_jmp_addr_0x0056c3aa:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c3aa    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c3ad    8b4008
                         push               0x2                                           // 0x0056c3b0    6a02
                         push               0x3                                           // 0x0056c3b2    6a03
                         push               0x49742400                                    // 0x0056c3b4    6800247449
                         add                edx, 0x000000a4                               // 0x0056c3b9    81c2a4000000
                         push               edx                                           // 0x0056c3bf    52
                         push               eax                                           // 0x0056c3c0    50
                         mov.s              ecx, esi                                      // 0x0056c3c1    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c3c3    e848ecffff
                         pop                edi                                           // 0x0056c3c8    5f
                         pop                esi                                           // 0x0056c3c9    5e
                         pop                ebp                                           // 0x0056c3ca    5d
                         pop                ebx                                           // 0x0056c3cb    5b
                         add                esp, 0x20                                     // 0x0056c3cc    83c420
                         ret                                                              // 0x0056c3cf    c3
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a0 // 0x0056c3d0    813dac7cd100a0190000
                         {disp8} ja         _jmp_addr_0x0056c3e3                          // 0x0056c3da    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c3dc    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c3ef                          // 0x0056c3e1    eb0c
_jmp_addr_0x0056c3e3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c3e3    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013380]             // 0x0056c3e9    8d8180330100
_jmp_addr_0x0056c3ef:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c3ef    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c3f2    8b4008
                         push               0x2                                           // 0x0056c3f5    6a02
                         push               0x3                                           // 0x0056c3f7    6a03
                         push               0x447a0000                                    // 0x0056c3f9    6800007a44
                         add                edx, 0x000000d4                               // 0x0056c3fe    81c2d4000000
                         push               edx                                           // 0x0056c404    52
                         push               eax                                           // 0x0056c405    50
                         mov.s              ecx, esi                                      // 0x0056c406    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c408    e803ecffff
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x0056c40d    8b5634
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                   // 0x0056c410    8b4e44
                         {disp32} mov       eax, dword ptr [edx + 0x00000250]             // 0x0056c413    8b8250020000
                         push               ecx                                           // 0x0056c419    51
                         dec                eax                                           // 0x0056c41a    48
                         push               eax                                           // 0x0056c41b    50
                         mov.s              ecx, esi                                      // 0x0056c41c    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056c41e    e87de8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a1 // 0x0056c423    813dac7cd100a1190000
                         {disp8} ja         _jmp_addr_0x0056c436                          // 0x0056c42d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c42f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c442                          // 0x0056c434    eb0c
_jmp_addr_0x0056c436:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c436    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001338c]             // 0x0056c43c    8d818c330100
_jmp_addr_0x0056c442:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c442    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c445    8b4008
                         push               0x2                                           // 0x0056c448    6a02
                         push               0x3                                           // 0x0056c44a    6a03
                         push               0x447a0000                                    // 0x0056c44c    6800007a44
                         add                edx, 0x000000d8                               // 0x0056c451    81c2d8000000
                         push               edx                                           // 0x0056c457    52
                         push               eax                                           // 0x0056c458    50
                         mov.s              ecx, esi                                      // 0x0056c459    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c45b    e8b0ebffff
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x0056c460    8b5634
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x0056c463    8b4e48
                         {disp32} mov       eax, dword ptr [edx + 0x00000250]             // 0x0056c466    8b8250020000
                         push               ecx                                           // 0x0056c46c    51
                         dec                eax                                           // 0x0056c46d    48
                         push               eax                                           // 0x0056c46e    50
                         mov.s              ecx, esi                                      // 0x0056c46f    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056c471    e82ae8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a2 // 0x0056c476    813dac7cd100a2190000
                         {disp8} ja         _jmp_addr_0x0056c489                          // 0x0056c480    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c482    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c495                          // 0x0056c487    eb0c
_jmp_addr_0x0056c489:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c489    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013398]             // 0x0056c48f    8d8198330100
_jmp_addr_0x0056c495:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c495    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c498    8b4008
                         push               0x2                                           // 0x0056c49b    6a02
                         push               0x3                                           // 0x0056c49d    6a03
                         push               0x447a0000                                    // 0x0056c49f    6800007a44
                         add                edx, 0x000000dc                               // 0x0056c4a4    81c2dc000000
                         push               edx                                           // 0x0056c4aa    52
                         push               eax                                           // 0x0056c4ab    50
                         mov.s              ecx, esi                                      // 0x0056c4ac    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c4ae    e85debffff
                         {disp8} mov        edx, dword ptr [esi + 0x34]                   // 0x0056c4b3    8b5634
                         {disp8} mov        ecx, dword ptr [esi + 0x4c]                   // 0x0056c4b6    8b4e4c
                         {disp32} mov       eax, dword ptr [edx + 0x00000250]             // 0x0056c4b9    8b8250020000
                         push               ecx                                           // 0x0056c4bf    51
                         dec                eax                                           // 0x0056c4c0    48
                         push               eax                                           // 0x0056c4c1    50
                         mov.s              ecx, esi                                      // 0x0056c4c2    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056c4c4    e8d7e7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a3 // 0x0056c4c9    813dac7cd100a3190000
                         {disp8} ja         _jmp_addr_0x0056c4dc                          // 0x0056c4d3    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c4d5    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c4e8                          // 0x0056c4da    eb0c
_jmp_addr_0x0056c4dc:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c4dc    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133a4]             // 0x0056c4e2    8d81a4330100
_jmp_addr_0x0056c4e8:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c4e8    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c4eb    8b4008
                         push               0x2                                           // 0x0056c4ee    6a02
                         push               0x3                                           // 0x0056c4f0    6a03
                         push               0x42c80000                                    // 0x0056c4f2    680000c842
                         add                edx, 0x000000e0                               // 0x0056c4f7    81c2e0000000
                         push               edx                                           // 0x0056c4fd    52
                         push               eax                                           // 0x0056c4fe    50
                         mov.s              ecx, esi                                      // 0x0056c4ff    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c501    e80aebffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a4 // 0x0056c506    813dac7cd100a4190000
                         {disp8} ja         _jmp_addr_0x0056c519                          // 0x0056c510    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c512    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c525                          // 0x0056c517    eb0c
_jmp_addr_0x0056c519:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c519    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133b0]             // 0x0056c51f    8d81b0330100
_jmp_addr_0x0056c525:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c525    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c528    8b4008
                         push               0x2                                           // 0x0056c52b    6a02
                         push               0x3                                           // 0x0056c52d    6a03
                         push               0x42c80000                                    // 0x0056c52f    680000c842
                         add                edx, 0x000000e4                               // 0x0056c534    81c2e4000000
                         push               edx                                           // 0x0056c53a    52
                         push               eax                                           // 0x0056c53b    50
                         mov.s              ecx, esi                                      // 0x0056c53c    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c53e    e8cdeaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a5 // 0x0056c543    813dac7cd100a5190000
                         {disp8} ja         _jmp_addr_0x0056c556                          // 0x0056c54d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c54f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c562                          // 0x0056c554    eb0c
_jmp_addr_0x0056c556:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c556    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133bc]             // 0x0056c55c    8d81bc330100
_jmp_addr_0x0056c562:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c562    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c565    8b4008
                         push               0x2                                           // 0x0056c568    6a02
                         push               0x3                                           // 0x0056c56a    6a03
                         push               0x42c80000                                    // 0x0056c56c    680000c842
                         add                edx, 0x000000e8                               // 0x0056c571    81c2e8000000
                         push               edx                                           // 0x0056c577    52
                         push               eax                                           // 0x0056c578    50
                         mov.s              ecx, esi                                      // 0x0056c579    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c57b    e890eaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a6 // 0x0056c580    813dac7cd100a6190000
                         {disp8} ja         _jmp_addr_0x0056c593                          // 0x0056c58a    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c58c    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c59f                          // 0x0056c591    eb0c
_jmp_addr_0x0056c593:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c593    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133c8]             // 0x0056c599    8d81c8330100
_jmp_addr_0x0056c59f:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c59f    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c5a2    8b4008
                         push               0x2                                           // 0x0056c5a5    6a02
                         push               0x3                                           // 0x0056c5a7    6a03
                         push               0x42c80000                                    // 0x0056c5a9    680000c842
                         add                edx, 0x000000ec                               // 0x0056c5ae    81c2ec000000
                         push               edx                                           // 0x0056c5b4    52
                         push               eax                                           // 0x0056c5b5    50
                         mov.s              ecx, esi                                      // 0x0056c5b6    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c5b8    e853eaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a7 // 0x0056c5bd    813dac7cd100a7190000
                         {disp8} ja         _jmp_addr_0x0056c5d0                          // 0x0056c5c7    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c5c9    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c5dc                          // 0x0056c5ce    eb0c
_jmp_addr_0x0056c5d0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c5d0    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133d4]             // 0x0056c5d6    8d81d4330100
_jmp_addr_0x0056c5dc:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c5dc    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c5df    8b4008
                         push               0x2                                           // 0x0056c5e2    6a02
                         push               0x3                                           // 0x0056c5e4    6a03
                         push               0x42c80000                                    // 0x0056c5e6    680000c842
                         add                edx, 0x000000f0                               // 0x0056c5eb    81c2f0000000
                         push               edx                                           // 0x0056c5f1    52
                         push               eax                                           // 0x0056c5f2    50
                         mov.s              ecx, esi                                      // 0x0056c5f3    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c5f5    e816eaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a8 // 0x0056c5fa    813dac7cd100a8190000
                         {disp8} ja         _jmp_addr_0x0056c60d                          // 0x0056c604    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c606    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c619                          // 0x0056c60b    eb0c
_jmp_addr_0x0056c60d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c60d    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133e0]             // 0x0056c613    8d81e0330100
_jmp_addr_0x0056c619:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c619    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c61c    8b4008
                         push               0x2                                           // 0x0056c61f    6a02
                         push               0x3                                           // 0x0056c621    6a03
                         push               0x42c80000                                    // 0x0056c623    680000c842
                         add                edx, 0x000000f4                               // 0x0056c628    81c2f4000000
                         push               edx                                           // 0x0056c62e    52
                         push               eax                                           // 0x0056c62f    50
                         mov.s              ecx, esi                                      // 0x0056c630    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c632    e8d9e9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019a9 // 0x0056c637    813dac7cd100a9190000
                         {disp8} ja         _jmp_addr_0x0056c64a                          // 0x0056c641    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c643    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c656                          // 0x0056c648    eb0c
_jmp_addr_0x0056c64a:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c64a    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133ec]             // 0x0056c650    8d81ec330100
_jmp_addr_0x0056c656:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c656    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c659    8b4008
                         push               0x2                                           // 0x0056c65c    6a02
                         push               0x3                                           // 0x0056c65e    6a03
                         push               0x42c80000                                    // 0x0056c660    680000c842
                         add                edx, 0x000000f8                               // 0x0056c665    81c2f8000000
                         push               edx                                           // 0x0056c66b    52
                         push               eax                                           // 0x0056c66c    50
                         mov.s              ecx, esi                                      // 0x0056c66d    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c66f    e89ce9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019aa // 0x0056c674    813dac7cd100aa190000
                         {disp8} ja         _jmp_addr_0x0056c687                          // 0x0056c67e    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c680    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c693                          // 0x0056c685    eb0c
_jmp_addr_0x0056c687:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c687    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000133f8]             // 0x0056c68d    8d81f8330100
_jmp_addr_0x0056c693:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c693    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c696    8b4008
                         push               0x2                                           // 0x0056c699    6a02
                         push               0x3                                           // 0x0056c69b    6a03
                         push               0x42c80000                                    // 0x0056c69d    680000c842
                         add                edx, 0x000000fc                               // 0x0056c6a2    81c2fc000000
                         push               edx                                           // 0x0056c6a8    52
                         push               eax                                           // 0x0056c6a9    50
                         mov.s              ecx, esi                                      // 0x0056c6aa    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c6ac    e85fe9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019ab // 0x0056c6b1    813dac7cd100ab190000
                         {disp8} ja         _jmp_addr_0x0056c6c4                          // 0x0056c6bb    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c6bd    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c6d0                          // 0x0056c6c2    eb0c
_jmp_addr_0x0056c6c4:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c6c4    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013404]             // 0x0056c6ca    8d8104340100
_jmp_addr_0x0056c6d0:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c6d0    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c6d3    8b4008
                         push               0x2                                           // 0x0056c6d6    6a02
                         push               0x3                                           // 0x0056c6d8    6a03
                         push               0x42c80000                                    // 0x0056c6da    680000c842
                         add                edx, 0x00000100                               // 0x0056c6df    81c200010000
                         push               edx                                           // 0x0056c6e5    52
                         push               eax                                           // 0x0056c6e6    50
                         mov.s              ecx, esi                                      // 0x0056c6e7    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c6e9    e822e9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019ac // 0x0056c6ee    813dac7cd100ac190000
                         {disp8} ja         _jmp_addr_0x0056c701                          // 0x0056c6f8    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c6fa    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c70d                          // 0x0056c6ff    eb0c
_jmp_addr_0x0056c701:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c701    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013410]             // 0x0056c707    8d8110340100
_jmp_addr_0x0056c70d:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c70d    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c710    8b4008
                         push               0x2                                           // 0x0056c713    6a02
                         push               0x3                                           // 0x0056c715    6a03
                         push               0x42c80000                                    // 0x0056c717    680000c842
                         add                edx, 0x00000104                               // 0x0056c71c    81c204010000
                         push               edx                                           // 0x0056c722    52
                         push               eax                                           // 0x0056c723    50
                         mov.s              ecx, esi                                      // 0x0056c724    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c726    e8e5e8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019ad // 0x0056c72b    813dac7cd100ad190000
                         {disp8} ja         _jmp_addr_0x0056c73e                          // 0x0056c735    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c737    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c74a                          // 0x0056c73c    eb0c
_jmp_addr_0x0056c73e:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c73e    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001341c]             // 0x0056c744    8d811c340100
_jmp_addr_0x0056c74a:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c74a    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c74d    8b4008
                         push               0x2                                           // 0x0056c750    6a02
                         push               0x3                                           // 0x0056c752    6a03
                         push               0x42c80000                                    // 0x0056c754    680000c842
                         add                edx, 0x00000108                               // 0x0056c759    81c208010000
                         push               edx                                           // 0x0056c75f    52
                         push               eax                                           // 0x0056c760    50
                         mov.s              ecx, esi                                      // 0x0056c761    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c763    e8a8e8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019ae // 0x0056c768    813dac7cd100ae190000
                         {disp8} ja         _jmp_addr_0x0056c77b                          // 0x0056c772    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c774    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c787                          // 0x0056c779    eb0c
_jmp_addr_0x0056c77b:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c77b    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013428]             // 0x0056c781    8d8128340100
_jmp_addr_0x0056c787:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c787    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c78a    8b4008
                         push               0x2                                           // 0x0056c78d    6a02
                         push               0x3                                           // 0x0056c78f    6a03
                         push               0x42c80000                                    // 0x0056c791    680000c842
                         add                edx, 0x0000010c                               // 0x0056c796    81c20c010000
                         push               edx                                           // 0x0056c79c    52
                         push               eax                                           // 0x0056c79d    50
                         mov.s              ecx, esi                                      // 0x0056c79e    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c7a0    e86be8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019af // 0x0056c7a5    813dac7cd100af190000
                         {disp8} ja         _jmp_addr_0x0056c7b8                          // 0x0056c7af    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c7b1    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c7c4                          // 0x0056c7b6    eb0c
_jmp_addr_0x0056c7b8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c7b8    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013434]             // 0x0056c7be    8d8134340100
_jmp_addr_0x0056c7c4:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c7c4    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c7c7    8b4008
                         push               0x2                                           // 0x0056c7ca    6a02
                         push               0x3                                           // 0x0056c7cc    6a03
                         push               0x42c80000                                    // 0x0056c7ce    680000c842
                         add                edx, 0x00000110                               // 0x0056c7d3    81c210010000
                         push               edx                                           // 0x0056c7d9    52
                         push               eax                                           // 0x0056c7da    50
                         mov.s              ecx, esi                                      // 0x0056c7db    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c7dd    e82ee8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b0 // 0x0056c7e2    813dac7cd100b0190000
                         {disp8} ja         _jmp_addr_0x0056c7f5                          // 0x0056c7ec    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c7ee    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c801                          // 0x0056c7f3    eb0c
_jmp_addr_0x0056c7f5:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c7f5    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013440]             // 0x0056c7fb    8d8140340100
_jmp_addr_0x0056c801:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c801    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c804    8b4008
                         push               0x2                                           // 0x0056c807    6a02
                         push               0x3                                           // 0x0056c809    6a03
                         push               0x42c80000                                    // 0x0056c80b    680000c842
                         add                edx, 0x00000114                               // 0x0056c810    81c214010000
                         push               edx                                           // 0x0056c816    52
                         push               eax                                           // 0x0056c817    50
                         mov.s              ecx, esi                                      // 0x0056c818    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c81a    e8f1e7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b1 // 0x0056c81f    813dac7cd100b1190000
                         {disp8} ja         _jmp_addr_0x0056c832                          // 0x0056c829    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c82b    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c83e                          // 0x0056c830    eb0c
_jmp_addr_0x0056c832:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c832    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001344c]             // 0x0056c838    8d814c340100
_jmp_addr_0x0056c83e:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c83e    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c841    8b4008
                         push               0x2                                           // 0x0056c844    6a02
                         push               0x3                                           // 0x0056c846    6a03
                         push               0x42c80000                                    // 0x0056c848    680000c842
                         add                edx, 0x00000118                               // 0x0056c84d    81c218010000
                         push               edx                                           // 0x0056c853    52
                         push               eax                                           // 0x0056c854    50
                         mov.s              ecx, esi                                      // 0x0056c855    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c857    e8b4e7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b2 // 0x0056c85c    813dac7cd100b2190000
                         {disp8} ja         _jmp_addr_0x0056c86f                          // 0x0056c866    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c868    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c87b                          // 0x0056c86d    eb0c
_jmp_addr_0x0056c86f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c86f    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013458]             // 0x0056c875    8d8158340100
_jmp_addr_0x0056c87b:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c87b    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c87e    8b4008
                         push               0x2                                           // 0x0056c881    6a02
                         push               0x3                                           // 0x0056c883    6a03
                         push               0x42c80000                                    // 0x0056c885    680000c842
                         add                edx, 0x0000011c                               // 0x0056c88a    81c21c010000
                         push               edx                                           // 0x0056c890    52
                         push               eax                                           // 0x0056c891    50
                         mov.s              ecx, esi                                      // 0x0056c892    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c894    e877e7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b3 // 0x0056c899    813dac7cd100b3190000
                         {disp8} ja         _jmp_addr_0x0056c8ac                          // 0x0056c8a3    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c8a5    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c8b8                          // 0x0056c8aa    eb0c
_jmp_addr_0x0056c8ac:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c8ac    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013464]             // 0x0056c8b2    8d8164340100
_jmp_addr_0x0056c8b8:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c8b8    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c8bb    8b4008
                         push               0x2                                           // 0x0056c8be    6a02
                         push               0x3                                           // 0x0056c8c0    6a03
                         push               0x42c80000                                    // 0x0056c8c2    680000c842
                         add                edx, 0x00000120                               // 0x0056c8c7    81c220010000
                         push               edx                                           // 0x0056c8cd    52
                         push               eax                                           // 0x0056c8ce    50
                         mov.s              ecx, esi                                      // 0x0056c8cf    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c8d1    e83ae7ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b4 // 0x0056c8d6    813dac7cd100b4190000
                         {disp8} ja         _jmp_addr_0x0056c8e9                          // 0x0056c8e0    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c8e2    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c8f5                          // 0x0056c8e7    eb0c
_jmp_addr_0x0056c8e9:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c8e9    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013470]             // 0x0056c8ef    8d8170340100
_jmp_addr_0x0056c8f5:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c8f5    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c8f8    8b4008
                         push               0x2                                           // 0x0056c8fb    6a02
                         push               0x3                                           // 0x0056c8fd    6a03
                         push               0x42c80000                                    // 0x0056c8ff    680000c842
                         add                edx, 0x00000124                               // 0x0056c904    81c224010000
                         push               edx                                           // 0x0056c90a    52
                         push               eax                                           // 0x0056c90b    50
                         mov.s              ecx, esi                                      // 0x0056c90c    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c90e    e8fde6ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b5 // 0x0056c913    813dac7cd100b5190000
                         {disp8} ja         _jmp_addr_0x0056c926                          // 0x0056c91d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c91f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c932                          // 0x0056c924    eb0c
_jmp_addr_0x0056c926:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c926    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001347c]             // 0x0056c92c    8d817c340100
_jmp_addr_0x0056c932:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c932    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c935    8b4008
                         push               0x2                                           // 0x0056c938    6a02
                         push               0x3                                           // 0x0056c93a    6a03
                         push               0x42c80000                                    // 0x0056c93c    680000c842
                         add                edx, 0x00000128                               // 0x0056c941    81c228010000
                         push               edx                                           // 0x0056c947    52
                         push               eax                                           // 0x0056c948    50
                         mov.s              ecx, esi                                      // 0x0056c949    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c94b    e8c0e6ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b6 // 0x0056c950    813dac7cd100b6190000
                         {disp8} ja         _jmp_addr_0x0056c963                          // 0x0056c95a    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c95c    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c96f                          // 0x0056c961    eb0c
_jmp_addr_0x0056c963:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c963    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013488]             // 0x0056c969    8d8188340100
_jmp_addr_0x0056c96f:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c96f    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c972    8b4008
                         push               0x2                                           // 0x0056c975    6a02
                         push               0x3                                           // 0x0056c977    6a03
                         push               0x42c80000                                    // 0x0056c979    680000c842
                         add                edx, 0x0000012c                               // 0x0056c97e    81c22c010000
                         push               edx                                           // 0x0056c984    52
                         push               eax                                           // 0x0056c985    50
                         mov.s              ecx, esi                                      // 0x0056c986    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c988    e883e6ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b7 // 0x0056c98d    813dac7cd100b7190000
                         {disp8} ja         _jmp_addr_0x0056c9a0                          // 0x0056c997    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c999    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c9ac                          // 0x0056c99e    eb0c
_jmp_addr_0x0056c9a0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c9a0    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013494]             // 0x0056c9a6    8d8194340100
_jmp_addr_0x0056c9ac:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c9ac    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c9af    8b4008
                         push               0x2                                           // 0x0056c9b2    6a02
                         push               0x3                                           // 0x0056c9b4    6a03
                         push               0x42c80000                                    // 0x0056c9b6    680000c842
                         add                edx, 0x00000130                               // 0x0056c9bb    81c230010000
                         push               edx                                           // 0x0056c9c1    52
                         push               eax                                           // 0x0056c9c2    50
                         mov.s              ecx, esi                                      // 0x0056c9c3    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056c9c5    e846e6ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b8 // 0x0056c9ca    813dac7cd100b8190000
                         {disp8} ja         _jmp_addr_0x0056c9dd                          // 0x0056c9d4    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056c9d6    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056c9e9                          // 0x0056c9db    eb0c
_jmp_addr_0x0056c9dd:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056c9dd    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134a0]             // 0x0056c9e3    8d81a0340100
_jmp_addr_0x0056c9e9:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056c9e9    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056c9ec    8b4008
                         push               0x2                                           // 0x0056c9ef    6a02
                         push               0x3                                           // 0x0056c9f1    6a03
                         push               0x42c80000                                    // 0x0056c9f3    680000c842
                         add                edx, 0x00000134                               // 0x0056c9f8    81c234010000
                         push               edx                                           // 0x0056c9fe    52
                         push               eax                                           // 0x0056c9ff    50
                         mov.s              ecx, esi                                      // 0x0056ca00    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056ca02    e809e6ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019b9 // 0x0056ca07    813dac7cd100b9190000
                         {disp8} ja         _jmp_addr_0x0056ca1a                          // 0x0056ca11    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ca13    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056ca26                          // 0x0056ca18    eb0c
_jmp_addr_0x0056ca1a:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056ca1a    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134ac]             // 0x0056ca20    8d81ac340100
_jmp_addr_0x0056ca26:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056ca26    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056ca29    8b4008
                         push               0x2                                           // 0x0056ca2c    6a02
                         push               0x3                                           // 0x0056ca2e    6a03
                         push               0x42c80000                                    // 0x0056ca30    680000c842
                         add                edx, 0x00000138                               // 0x0056ca35    81c238010000
                         push               edx                                           // 0x0056ca3b    52
                         push               eax                                           // 0x0056ca3c    50
                         mov.s              ecx, esi                                      // 0x0056ca3d    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056ca3f    e8cce5ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019ba // 0x0056ca44    813dac7cd100ba190000
                         {disp8} ja         _jmp_addr_0x0056ca57                          // 0x0056ca4e    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ca50    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056ca63                          // 0x0056ca55    eb0c
_jmp_addr_0x0056ca57:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056ca57    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134b8]             // 0x0056ca5d    8d81b8340100
_jmp_addr_0x0056ca63:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056ca63    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056ca66    8b4008
                         push               0x2                                           // 0x0056ca69    6a02
                         push               0x3                                           // 0x0056ca6b    6a03
                         push               0x42c80000                                    // 0x0056ca6d    680000c842
                         add                edx, 0x0000013c                               // 0x0056ca72    81c23c010000
                         push               edx                                           // 0x0056ca78    52
                         push               eax                                           // 0x0056ca79    50
                         mov.s              ecx, esi                                      // 0x0056ca7a    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056ca7c    e88fe5ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019bb // 0x0056ca81    813dac7cd100bb190000
                         {disp8} ja         _jmp_addr_0x0056ca94                          // 0x0056ca8b    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ca8d    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056caa0                          // 0x0056ca92    eb0c
_jmp_addr_0x0056ca94:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056ca94    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134c4]             // 0x0056ca9a    8d81c4340100
_jmp_addr_0x0056caa0:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056caa0    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056caa3    8b4008
                         push               0x2                                           // 0x0056caa6    6a02
                         push               0x3                                           // 0x0056caa8    6a03
                         push               0x42c80000                                    // 0x0056caaa    680000c842
                         add                edx, 0x00000140                               // 0x0056caaf    81c240010000
                         push               edx                                           // 0x0056cab5    52
                         push               eax                                           // 0x0056cab6    50
                         mov.s              ecx, esi                                      // 0x0056cab7    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cab9    e852e5ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019bc // 0x0056cabe    813dac7cd100bc190000
                         {disp8} ja         _jmp_addr_0x0056cad1                          // 0x0056cac8    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056caca    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cadd                          // 0x0056cacf    eb0c
_jmp_addr_0x0056cad1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cad1    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134d0]             // 0x0056cad7    8d81d0340100
_jmp_addr_0x0056cadd:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cadd    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cae0    8b4008
                         push               0x2                                           // 0x0056cae3    6a02
                         push               0x3                                           // 0x0056cae5    6a03
                         push               0x42c80000                                    // 0x0056cae7    680000c842
                         add                edx, 0x00000144                               // 0x0056caec    81c244010000
                         push               edx                                           // 0x0056caf2    52
                         push               eax                                           // 0x0056caf3    50
                         mov.s              ecx, esi                                      // 0x0056caf4    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056caf6    e815e5ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019bd // 0x0056cafb    813dac7cd100bd190000
                         {disp8} ja         _jmp_addr_0x0056cb0e                          // 0x0056cb05    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cb07    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cb1a                          // 0x0056cb0c    eb0c
_jmp_addr_0x0056cb0e:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cb0e    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134dc]             // 0x0056cb14    8d81dc340100
_jmp_addr_0x0056cb1a:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cb1a    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cb1d    8b4008
                         push               0x2                                           // 0x0056cb20    6a02
                         push               0x3                                           // 0x0056cb22    6a03
                         push               0x42c80000                                    // 0x0056cb24    680000c842
                         add                edx, 0x00000148                               // 0x0056cb29    81c248010000
                         push               edx                                           // 0x0056cb2f    52
                         push               eax                                           // 0x0056cb30    50
                         mov.s              ecx, esi                                      // 0x0056cb31    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cb33    e8d8e4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019be // 0x0056cb38    813dac7cd100be190000
                         {disp8} ja         _jmp_addr_0x0056cb4b                          // 0x0056cb42    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cb44    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cb57                          // 0x0056cb49    eb0c
_jmp_addr_0x0056cb4b:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cb4b    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134e8]             // 0x0056cb51    8d81e8340100
_jmp_addr_0x0056cb57:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cb57    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cb5a    8b4008
                         push               0x2                                           // 0x0056cb5d    6a02
                         push               0x3                                           // 0x0056cb5f    6a03
                         push               0x42c80000                                    // 0x0056cb61    680000c842
                         add                edx, 0x0000014c                               // 0x0056cb66    81c24c010000
                         push               edx                                           // 0x0056cb6c    52
                         push               eax                                           // 0x0056cb6d    50
                         mov.s              ecx, esi                                      // 0x0056cb6e    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cb70    e89be4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019bf // 0x0056cb75    813dac7cd100bf190000
                         {disp8} ja         _jmp_addr_0x0056cb88                          // 0x0056cb7f    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cb81    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cb94                          // 0x0056cb86    eb0c
_jmp_addr_0x0056cb88:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cb88    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000134f4]             // 0x0056cb8e    8d81f4340100
_jmp_addr_0x0056cb94:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cb94    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cb97    8b4008
                         push               0x2                                           // 0x0056cb9a    6a02
                         push               0x3                                           // 0x0056cb9c    6a03
                         push               0x42c80000                                    // 0x0056cb9e    680000c842
                         add                edx, 0x00000150                               // 0x0056cba3    81c250010000
                         push               edx                                           // 0x0056cba9    52
                         push               eax                                           // 0x0056cbaa    50
                         mov.s              ecx, esi                                      // 0x0056cbab    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cbad    e85ee4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019c0 // 0x0056cbb2    813dac7cd100c0190000
                         {disp8} ja         _jmp_addr_0x0056cbc5                          // 0x0056cbbc    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cbbe    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cbd1                          // 0x0056cbc3    eb0c
_jmp_addr_0x0056cbc5:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cbc5    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013500]             // 0x0056cbcb    8d8100350100
_jmp_addr_0x0056cbd1:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cbd1    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cbd4    8b4008
                         push               0x2                                           // 0x0056cbd7    6a02
                         push               0x3                                           // 0x0056cbd9    6a03
                         push               0x42c80000                                    // 0x0056cbdb    680000c842
                         add                edx, 0x00000154                               // 0x0056cbe0    81c254010000
                         push               edx                                           // 0x0056cbe6    52
                         push               eax                                           // 0x0056cbe7    50
                         mov.s              ecx, esi                                      // 0x0056cbe8    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cbea    e821e4ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019c1 // 0x0056cbef    813dac7cd100c1190000
                         {disp8} ja         _jmp_addr_0x0056cc02                          // 0x0056cbf9    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cbfb    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cc0e                          // 0x0056cc00    eb0c
_jmp_addr_0x0056cc02:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cc02    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001350c]             // 0x0056cc08    8d810c350100
_jmp_addr_0x0056cc0e:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cc0e    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cc11    8b4008
                         push               0x2                                           // 0x0056cc14    6a02
                         push               0x3                                           // 0x0056cc16    6a03
                         push               0x42c80000                                    // 0x0056cc18    680000c842
                         add                edx, 0x00000158                               // 0x0056cc1d    81c258010000
                         push               edx                                           // 0x0056cc23    52
                         push               eax                                           // 0x0056cc24    50
                         mov.s              ecx, esi                                      // 0x0056cc25    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cc27    e8e4e3ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019c2 // 0x0056cc2c    813dac7cd100c2190000
                         {disp8} ja         _jmp_addr_0x0056cc3f                          // 0x0056cc36    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cc38    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cc4b                          // 0x0056cc3d    eb0c
_jmp_addr_0x0056cc3f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cc3f    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013518]             // 0x0056cc45    8d8118350100
_jmp_addr_0x0056cc4b:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cc4b    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cc4e    8b4008
                         push               0x2                                           // 0x0056cc51    6a02
                         push               0x3                                           // 0x0056cc53    6a03
                         push               0x42c80000                                    // 0x0056cc55    680000c842
                         add                edx, 0x0000015c                               // 0x0056cc5a    81c25c010000
                         push               edx                                           // 0x0056cc60    52
                         push               eax                                           // 0x0056cc61    50
                         mov.s              ecx, esi                                      // 0x0056cc62    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cc64    e8a7e3ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019c3 // 0x0056cc69    813dac7cd100c3190000
                         {disp8} ja         _jmp_addr_0x0056cc7c                          // 0x0056cc73    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cc75    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cc88                          // 0x0056cc7a    eb0c
_jmp_addr_0x0056cc7c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cc7c    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013524]             // 0x0056cc82    8d8124350100
_jmp_addr_0x0056cc88:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cc88    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cc8b    8b4008
                         push               0x2                                           // 0x0056cc8e    6a02
                         push               0x3                                           // 0x0056cc90    6a03
                         push               0x42c80000                                    // 0x0056cc92    680000c842
                         add                edx, 0x00000160                               // 0x0056cc97    81c260010000
                         push               edx                                           // 0x0056cc9d    52
                         push               eax                                           // 0x0056cc9e    50
                         mov.s              ecx, esi                                      // 0x0056cc9f    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cca1    e86ae3ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019c4 // 0x0056cca6    813dac7cd100c4190000
                         {disp8} ja         _jmp_addr_0x0056ccb9                          // 0x0056ccb0    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ccb2    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056ccc5                          // 0x0056ccb7    eb0c
_jmp_addr_0x0056ccb9:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056ccb9    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013530]             // 0x0056ccbf    8d8130350100
_jmp_addr_0x0056ccc5:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056ccc5    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056ccc8    8b4008
                         push               0x2                                           // 0x0056cccb    6a02
                         push               0x3                                           // 0x0056cccd    6a03
                         push               0x42c80000                                    // 0x0056cccf    680000c842
                         add                edx, 0x00000164                               // 0x0056ccd4    81c264010000
                         push               edx                                           // 0x0056ccda    52
                         push               eax                                           // 0x0056ccdb    50
                         mov.s              ecx, esi                                      // 0x0056ccdc    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056ccde    e82de3ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019c5 // 0x0056cce3    813dac7cd100c5190000
                         {disp8} ja         _jmp_addr_0x0056ccf6                          // 0x0056cced    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ccef    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cd02                          // 0x0056ccf4    eb0c
_jmp_addr_0x0056ccf6:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056ccf6    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001353c]             // 0x0056ccfc    8d813c350100
_jmp_addr_0x0056cd02:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cd02    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cd05    8b4008
                         push               0x2                                           // 0x0056cd08    6a02
                         push               0x3                                           // 0x0056cd0a    6a03
                         push               0x42c80000                                    // 0x0056cd0c    680000c842
                         add                edx, 0x00000168                               // 0x0056cd11    81c268010000
                         push               edx                                           // 0x0056cd17    52
                         push               eax                                           // 0x0056cd18    50
                         mov.s              ecx, esi                                      // 0x0056cd19    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cd1b    e8f0e2ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019cb // 0x0056cd20    813dac7cd100cb190000
                         {disp8} ja         _jmp_addr_0x0056cd33                          // 0x0056cd2a    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cd2c    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cd3f                          // 0x0056cd31    eb0c
_jmp_addr_0x0056cd33:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cd33    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013584]             // 0x0056cd39    8d8184350100
_jmp_addr_0x0056cd3f:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cd3f    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cd42    8b4008
                         push               0x2                                           // 0x0056cd45    6a02
                         push               0x3                                           // 0x0056cd47    6a03
                         push               0x42c80000                                    // 0x0056cd49    680000c842
                         add                edx, 0x0000016c                               // 0x0056cd4e    81c26c010000
                         push               edx                                           // 0x0056cd54    52
                         push               eax                                           // 0x0056cd55    50
                         mov.s              ecx, esi                                      // 0x0056cd56    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cd58    e8b3e2ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019cc // 0x0056cd5d    813dac7cd100cc190000
                         {disp8} ja         _jmp_addr_0x0056cd70                          // 0x0056cd67    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cd69    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cd7c                          // 0x0056cd6e    eb0c
_jmp_addr_0x0056cd70:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cd70    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013590]             // 0x0056cd76    8d8190350100
_jmp_addr_0x0056cd7c:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cd7c    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cd7f    8b4008
                         push               0x2                                           // 0x0056cd82    6a02
                         push               0x3                                           // 0x0056cd84    6a03
                         push               0x49742400                                    // 0x0056cd86    6800247449
                         push               0x1                                           // 0x0056cd8b    6a01
                         add                edx, 0x00000170                               // 0x0056cd8d    81c270010000
                         push               edx                                           // 0x0056cd93    52
                         push               eax                                           // 0x0056cd94    50
                         mov.s              ecx, esi                                      // 0x0056cd95    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056cd97    e864e0ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019cd // 0x0056cd9c    813dac7cd100cd190000
                         {disp8} ja         _jmp_addr_0x0056cdaf                          // 0x0056cda6    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cda8    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cdbb                          // 0x0056cdad    eb0c
_jmp_addr_0x0056cdaf:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cdaf    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001359c]             // 0x0056cdb5    8d819c350100
_jmp_addr_0x0056cdbb:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cdbb    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cdbe    8b4008
                         push               0x2                                           // 0x0056cdc1    6a02
                         push               0x3                                           // 0x0056cdc3    6a03
                         push               0x42c80000                                    // 0x0056cdc5    680000c842
                         add                edx, 0x00000174                               // 0x0056cdca    81c274010000
                         push               edx                                           // 0x0056cdd0    52
                         push               eax                                           // 0x0056cdd1    50
                         mov.s              ecx, esi                                      // 0x0056cdd2    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056cdd4    e837e2ffff
                         pop                edi                                           // 0x0056cdd9    5f
                         pop                esi                                           // 0x0056cdda    5e
                         pop                ebp                                           // 0x0056cddb    5d
                         pop                ebx                                           // 0x0056cddc    5b
                         add                esp, 0x20                                     // 0x0056cddd    83c420
                         ret                                                              // 0x0056cde0    c3
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019cf // 0x0056cde1    813dac7cd100cf190000
                         {disp8} ja         _jmp_addr_0x0056cdf4                          // 0x0056cdeb    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cded    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056ce00                          // 0x0056cdf2    eb0c
_jmp_addr_0x0056cdf4:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cdf4    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000135b4]             // 0x0056cdfa    8d81b4350100
_jmp_addr_0x0056ce00:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056ce00    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056ce03    8b4008
                         push               0x2                                           // 0x0056ce06    6a02
                         push               0x3                                           // 0x0056ce08    6a03
                         push               0x447a0000                                    // 0x0056ce0a    6800007a44
                         xor.s              ebp, ebp                                      // 0x0056ce0f    33ed
                         push               ebp                                           // 0x0056ce11    55
                         add                edx, 0x000000c0                               // 0x0056ce12    81c2c0000000
                         push               edx                                           // 0x0056ce18    52
                         push               eax                                           // 0x0056ce19    50
                         mov.s              ecx, esi                                      // 0x0056ce1a    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056ce1c    e8dfdfffff
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0056ce21    8b4e34
                         {disp32} mov       edx, dword ptr [ecx + 0x00000250]             // 0x0056ce24    8b9150020000
                         push               ebp                                           // 0x0056ce2a    55
                         dec                edx                                           // 0x0056ce2b    4a
                         push               edx                                           // 0x0056ce2c    52
                         mov.s              ecx, esi                                      // 0x0056ce2d    8bce
                         call               _jmp_addr_0x0056aca0                          // 0x0056ce2f    e86cdeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d0 // 0x0056ce34    813dac7cd100d0190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ce3e    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056ce4a                          // 0x0056ce43    7605
                         add                eax, 0x000135c0                               // 0x0056ce45    05c0350100
_jmp_addr_0x0056ce4a:    {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x0056ce4a    8b7808
                         push               0x2                                           // 0x0056ce4d    6a02
                         push               0x1                                           // 0x0056ce4f    6a01
                         call               _jmp_addr_0x00566850                          // 0x0056ce51    e8fa99ffff
                         push               ecx                                           // 0x0056ce56    51
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056ce57    8b4e6c
                         dec                eax                                           // 0x0056ce5a    48
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0056ce5b    89442424
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0056ce5f    896c2428
                         {disp8} fild       qword ptr [esp + 0x24]                        // 0x0056ce63    df6c2424
                         add                ecx, 0x000000a8                               // 0x0056ce67    81c1a8000000
                         fstp               dword ptr [esp]                               // 0x0056ce6d    d91c24
                         push               ecx                                           // 0x0056ce70    51
                         push               edi                                           // 0x0056ce71    57
                         mov.s              ecx, esi                                      // 0x0056ce72    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056ce74    e897e1ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d1 // 0x0056ce79    813dac7cd100d1190000
                         {disp8} ja         _jmp_addr_0x0056ce8c                          // 0x0056ce83    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056ce85    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056ce98                          // 0x0056ce8a    eb0c
_jmp_addr_0x0056ce8c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056ce8c    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x000135cc]             // 0x0056ce92    8d82cc350100
_jmp_addr_0x0056ce98:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056ce98    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056ce9b    8b5008
                         push               0x1                                           // 0x0056ce9e    6a01
                         push               ebp                                           // 0x0056cea0    55
                         push               0x3f800000                                    // 0x0056cea1    680000803f
                         push               0x2                                           // 0x0056cea6    6a02
                         add                ecx, 0x000000ac                               // 0x0056cea8    81c1ac000000
                         push               ecx                                           // 0x0056ceae    51
                         push               edx                                           // 0x0056ceaf    52
                         mov.s              ecx, esi                                      // 0x0056ceb0    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056ceb2    e849dfffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d2 // 0x0056ceb7    813dac7cd100d2190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cec1    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056cecd                          // 0x0056cec6    7605
                         add                eax, 0x000135d8                               // 0x0056cec8    05d8350100
_jmp_addr_0x0056cecd:    {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0056cecd    8b7c2410
                         {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056ced1    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056ced4    8b4008
                         push               0x2                                           // 0x0056ced7    6a02
                         lea                ecx, dword ptr [edi + edi * 0x4]              // 0x0056ced9    8d0cbf
                         shl                ecx, 2                                        // 0x0056cedc    c1e102
                         push               0x3                                           // 0x0056cedf    6a03
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0056cee1    894c2420
                         push               ecx                                           // 0x0056cee5    51
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0056cee6    896c2428
                         {disp8} fild       qword ptr [esp + 0x24]                        // 0x0056ceea    df6c2424
                         add                edx, 0x000000b0                               // 0x0056ceee    81c2b0000000
                         mov.s              ecx, esi                                      // 0x0056cef4    8bce
                         fstp               dword ptr [esp]                               // 0x0056cef6    d91c24
                         push               edx                                           // 0x0056cef9    52
                         push               eax                                           // 0x0056cefa    50
                         call               _jmp_addr_0x0056b010                          // 0x0056cefb    e810e1ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d3 // 0x0056cf00    813dac7cd100d3190000
                         {disp8} ja         _jmp_addr_0x0056cf13                          // 0x0056cf0a    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cf0c    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cf1f                          // 0x0056cf11    eb0c
_jmp_addr_0x0056cf13:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cf13    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000135e4]             // 0x0056cf19    8d81e4350100
_jmp_addr_0x0056cf1f:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cf1f    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cf22    8b4008
                         push               0x2                                           // 0x0056cf25    6a02
                         push               0x3                                           // 0x0056cf27    6a03
                         push               0x47c35000                                    // 0x0056cf29    680050c347
                         push               ebp                                           // 0x0056cf2e    55
                         add                edx, 0x000000b4                               // 0x0056cf2f    81c2b4000000
                         push               edx                                           // 0x0056cf35    52
                         push               eax                                           // 0x0056cf36    50
                         mov.s              ecx, esi                                      // 0x0056cf37    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056cf39    e8c2deffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d4 // 0x0056cf3e    813dac7cd100d4190000
                         {disp8} ja         _jmp_addr_0x0056cf51                          // 0x0056cf48    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cf4a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cf5d                          // 0x0056cf4f    eb0c
_jmp_addr_0x0056cf51:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cf51    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000135f0]             // 0x0056cf57    8d81f0350100
_jmp_addr_0x0056cf5d:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cf5d    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cf60    8b4008
                         push               0x2                                           // 0x0056cf63    6a02
                         push               0x3                                           // 0x0056cf65    6a03
                         push               0x47c35000                                    // 0x0056cf67    680050c347
                         push               ebp                                           // 0x0056cf6c    55
                         add                edx, 0x000000b8                               // 0x0056cf6d    81c2b8000000
                         push               edx                                           // 0x0056cf73    52
                         push               eax                                           // 0x0056cf74    50
                         mov.s              ecx, esi                                      // 0x0056cf75    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056cf77    e884deffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d5 // 0x0056cf7c    813dac7cd100d5190000
                         {disp8} ja         _jmp_addr_0x0056cf8f                          // 0x0056cf86    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cf88    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cf9b                          // 0x0056cf8d    eb0c
_jmp_addr_0x0056cf8f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cf8f    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x000135fc]             // 0x0056cf95    8d81fc350100
_jmp_addr_0x0056cf9b:    {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x0056cf9b    8b566c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0056cf9e    8b4008
                         push               0x2                                           // 0x0056cfa1    6a02
                         push               0x3                                           // 0x0056cfa3    6a03
                         push               0x47c35000                                    // 0x0056cfa5    680050c347
                         push               ebp                                           // 0x0056cfaa    55
                         add                edx, 0x000000bc                               // 0x0056cfab    81c2bc000000
                         push               edx                                           // 0x0056cfb1    52
                         push               eax                                           // 0x0056cfb2    50
                         mov.s              ecx, esi                                      // 0x0056cfb3    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056cfb5    e846deffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d6 // 0x0056cfba    813dac7cd100d6190000
                         {disp8} ja         _jmp_addr_0x0056cfcd                          // 0x0056cfc4    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056cfc6    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0056cfd9                          // 0x0056cfcb    eb0c
_jmp_addr_0x0056cfcd:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056cfcd    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013608]             // 0x0056cfd3    8d8108360100
_jmp_addr_0x0056cfd9:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056cfd9    8b4e6c
                         lea                edx, dword ptr [edi + edi * 0x4]              // 0x0056cfdc    8d14bf
                         shl                edx, 1                                        // 0x0056cfdf    d1e2
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0056cfe1    89542418
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056cfe5    8b5008
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x0056cfe8    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0056cfec    df6c2418
                         push               0x2                                           // 0x0056cff0    6a02
                         push               0x3                                           // 0x0056cff2    6a03
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0056cff4    d95c2418
                         add                ecx, 0x000000c4                               // 0x0056cff8    81c1c4000000
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0056cffe    8b7c2418
                         push               edi                                           // 0x0056d002    57
                         push               ecx                                           // 0x0056d003    51
                         push               edx                                           // 0x0056d004    52
                         mov.s              ecx, esi                                      // 0x0056d005    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056d007    e804e0ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d7 // 0x0056d00c    813dac7cd100d7190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d016    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056d022                          // 0x0056d01b    7605
                         add                eax, 0x00013614                               // 0x0056d01d    0514360100
_jmp_addr_0x0056d022:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056d022    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056d025    8b5008
                         push               0x2                                           // 0x0056d028    6a02
                         push               0x2                                           // 0x0056d02a    6a02
                         push               0x3f800000                                    // 0x0056d02c    680000803f
                         push               0x2                                           // 0x0056d031    6a02
                         add                ecx, 0x000000c8                               // 0x0056d033    81c1c8000000
                         push               ecx                                           // 0x0056d039    51
                         push               edx                                           // 0x0056d03a    52
                         mov.s              ecx, esi                                      // 0x0056d03b    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056d03d    e8beddffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d8 // 0x0056d042    813dac7cd100d8190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d04c    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056d058                          // 0x0056d051    7605
                         add                eax, 0x00013620                               // 0x0056d053    0520360100
_jmp_addr_0x0056d058:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056d058    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056d05b    8b5008
                         push               0x1                                           // 0x0056d05e    6a01
                         push               ebp                                           // 0x0056d060    55
                         push               0x3f800000                                    // 0x0056d061    680000803f
                         push               0x2                                           // 0x0056d066    6a02
                         add                ecx, 0x000000cc                               // 0x0056d068    81c1cc000000
                         push               ecx                                           // 0x0056d06e    51
                         push               edx                                           // 0x0056d06f    52
                         mov.s              ecx, esi                                      // 0x0056d070    8bce
                         call               _jmp_addr_0x0056ae00                          // 0x0056d072    e889ddffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000019d9 // 0x0056d077    813dac7cd100d9190000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056d081    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0056d08d                          // 0x0056d086    7605
                         add                eax, 0x0001362c                               // 0x0056d088    052c360100
_jmp_addr_0x0056d08d:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056d08d    8b4e6c
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0056d090    8b5008
                         push               0x2                                           // 0x0056d093    6a02
                         push               0x3                                           // 0x0056d095    6a03
                         push               edi                                           // 0x0056d097    57
                         add                ecx, 0x000000d0                               // 0x0056d098    81c1d0000000
                         push               ecx                                           // 0x0056d09e    51
                         push               edx                                           // 0x0056d09f    52
                         mov.s              ecx, esi                                      // 0x0056d0a0    8bce
                         call               _jmp_addr_0x0056b010                          // 0x0056d0a2    e869dfffff
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x0056d0a7    8b4e54
                         mov                eax, dword ptr [ecx]                          // 0x0056d0aa    8b01
                         call               dword ptr [eax + 0x34]                        // 0x0056d0ac    ff5034
                         {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x0056d0af    8b4e50
                         mov                edx, dword ptr [ecx]                          // 0x0056d0b2    8b11
                         call               dword ptr [edx + 0x34]                        // 0x0056d0b4    ff5234
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056d0b7    8b466c
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x0056d0ba    896c2424
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0056d0be    896c2428
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0056d0c2    896c242c
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x0056d0c6    896c2418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x0056d0ca    896c241c
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x0056d0ce    896c2420
                         cmp                word ptr [eax], bp                            // 0x0056d0d2    663928
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x0056d0d5    896c2410
                         {disp32} jbe       _jmp_addr_0x0056d1cf                          // 0x0056d0d9    0f86f0000000
                         xor.s              edi, edi                                      // 0x0056d0df    33ff
                         mov                ebx, 0x0000005e                               // 0x0056d0e1    bb5e000000
_jmp_addr_0x0056d0e6:    {disp32} mov       eax, dword ptr [eax + edi * 0x1 + 0x0000111c] // 0x0056d0e6    8b84381c110000
                         push               eax                                           // 0x0056d0ed    50
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0056d0ee    8d4c2428
                         call               @SetNum__9HLineDataFi@12                      // 0x0056d0f2    e83909eaff
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056d0f7    8b4e6c
                         {disp8} mov        eax, dword ptr [edi + ecx * 0x1 + 0x04]       // 0x0056d0fa    8b440f04
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0056d0fe    8b4c2428
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0056d102    89442424
                         xor.s              eax, eax                                      // 0x0056d106    33c0
                         cmp.s              ecx, ebp                                      // 0x0056d108    3bcd
                         {disp8} jle        _jmp_addr_0x0056d13b                          // 0x0056d10a    7e2f
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0056d10c    8b54242c
_jmp_addr_0x0056d110:    cmp.s              eax, ebp                                      // 0x0056d110    3bc5
                         {disp8} jl         _jmp_addr_0x0056d136                          // 0x0056d112    7c22
                         cmp.s              eax, ecx                                      // 0x0056d114    3bc1
                         {disp8} jge        _jmp_addr_0x0056d136                          // 0x0056d116    7d1e
                         cmp.s              edx, ebp                                      // 0x0056d118    3bd5
                         {disp8} je         _jmp_addr_0x0056d136                          // 0x0056d11a    741a
                         {disp8} mov        ebp, dword ptr [esi + 0x6c]                   // 0x0056d11c    8b6e6c
                         lea                ecx, dword ptr [ebx + eax * 0x1]              // 0x0056d11f    8d0c03
                         {disp32} fld       dword ptr [ebp + ecx * 0x4 + 0x000007d4]      // 0x0056d122    d9848dd4070000
                         xor.s              ebp, ebp                                      // 0x0056d129    33ed
                         fstp               dword ptr [edx + eax * 0x4]                   // 0x0056d12b    d91c82
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0056d12e    8b54242c
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0056d132    8b4c2428
_jmp_addr_0x0056d136:    inc                eax                                           // 0x0056d136    40
                         cmp.s              eax, ecx                                      // 0x0056d137    3bc1
                         {disp8} jl         _jmp_addr_0x0056d110                          // 0x0056d139    7cd5
_jmp_addr_0x0056d13b:    {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x0056d13b    8b4e54
                         mov                edx, dword ptr [ecx]                          // 0x0056d13e    8b11
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x0056d140    8d442424
                         push               eax                                           // 0x0056d144    50
                         call               dword ptr [edx + 0x3c]                        // 0x0056d145    ff523c
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                   // 0x0056d148    8b4e6c
                         {disp32} mov       edx, dword ptr [edi + ecx * 0x1 + 0x00000948] // 0x0056d14b    8b940f48090000
                         push               edx                                           // 0x0056d152    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0056d153    8d4c241c
                         call               @SetNum__9HLineDataFi@12                      // 0x0056d157    e8d408eaff
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056d15c    8b466c
                         {disp8} mov        eax, dword ptr [edi + eax * 0x1 + 0x04]       // 0x0056d15f    8b440704
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0056d163    8b4c241c
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0056d167    89442418
                         xor.s              eax, eax                                      // 0x0056d16b    33c0
                         cmp.s              ecx, ebp                                      // 0x0056d16d    3bcd
                         {disp8} jle        _jmp_addr_0x0056d19d                          // 0x0056d16f    7e2c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0056d171    8b542420
_jmp_addr_0x0056d175:    cmp.s              eax, ebp                                      // 0x0056d175    3bc5
                         {disp8} jl         _jmp_addr_0x0056d198                          // 0x0056d177    7c1f
                         cmp.s              eax, ecx                                      // 0x0056d179    3bc1
                         {disp8} jge        _jmp_addr_0x0056d198                          // 0x0056d17b    7d1b
                         cmp.s              edx, ebp                                      // 0x0056d17d    3bd5
                         {disp8} je         _jmp_addr_0x0056d198                          // 0x0056d17f    7417
                         {disp8} mov        ebp, dword ptr [esi + 0x6c]                   // 0x0056d181    8b6e6c
                         lea                ecx, dword ptr [ebx + eax * 0x1]              // 0x0056d184    8d0c03
                         {disp8} fld        dword ptr [ebp + ecx * 0x4 + 0x00]            // 0x0056d187    d9448d00
                         xor.s              ebp, ebp                                      // 0x0056d18b    33ed
                         fstp               dword ptr [edx + eax * 0x4]                   // 0x0056d18d    d91c82
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0056d190    8b542420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0056d194    8b4c241c
_jmp_addr_0x0056d198:    inc                eax                                           // 0x0056d198    40
                         cmp.s              eax, ecx                                      // 0x0056d199    3bc1
                         {disp8} jl         _jmp_addr_0x0056d175                          // 0x0056d19b    7cd8
_jmp_addr_0x0056d19d:    {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x0056d19d    8b4e50
                         mov                edx, dword ptr [ecx]                          // 0x0056d1a0    8b11
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x0056d1a2    8d442418
                         push               eax                                           // 0x0056d1a6    50
                         call               dword ptr [edx + 0x3c]                        // 0x0056d1a7    ff523c
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0056d1aa    8b466c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0056d1ad    8b4c2410
                         xor.s              edx, edx                                      // 0x0056d1b1    33d2
                         mov                dx, word ptr [eax]                            // 0x0056d1b3    668b10
                         inc                ecx                                           // 0x0056d1b6    41
                         add                edi, 0x0000114c                               // 0x0056d1b7    81c74c110000
                         add                ebx, 0x00000453                               // 0x0056d1bd    81c353040000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0056d1c3    894c2410
                         cmp.s              ecx, edx                                      // 0x0056d1c7    3bca
                         {disp32} jl        _jmp_addr_0x0056d0e6                          // 0x0056d1c9    0f8c17ffffff
_jmp_addr_0x0056d1cf:    {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x0056d1cf    8b4e54
                         mov                eax, dword ptr [ecx]                          // 0x0056d1d2    8b01
                         push               ebp                                           // 0x0056d1d4    55
                         push               ebp                                           // 0x0056d1d5    55
                         push               ebp                                           // 0x0056d1d6    55
                         call               dword ptr [eax + 0x38]                        // 0x0056d1d7    ff5038
                         {disp8} mov        esi, dword ptr [esi + 0x50]                   // 0x0056d1da    8b7650
                         mov                edx, dword ptr [esi]                          // 0x0056d1dd    8b16
                         push               ebp                                           // 0x0056d1df    55
                         push               ebp                                           // 0x0056d1e0    55
                         push               ebp                                           // 0x0056d1e1    55
                         mov.s              ecx, esi                                      // 0x0056d1e2    8bce
                         call               dword ptr [edx + 0x38]                        // 0x0056d1e4    ff5238
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0056d1e7    8b442420
                         push               eax                                           // 0x0056d1eb    50
                         call               ??3@YAXPAX@Z                                  // 0x0056d1ec    e8a71c2400
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0056d1f1    8b4c2430
                         push               ecx                                           // 0x0056d1f5    51
                         call               ??3@YAXPAX@Z                                  // 0x0056d1f6    e89d1c2400
                         add                esp, 0x08                                     // 0x0056d1fb    83c408
_jmp_addr_0x0056d1fe:    pop                edi                                           // 0x0056d1fe    5f
                         pop                esi                                           // 0x0056d1ff    5e
                         pop                ebp                                           // 0x0056d200    5d
                         pop                ebx                                           // 0x0056d201    5b
                         add                esp, 0x20                                     // 0x0056d202    83c420
                         ret                                                              // 0x0056d205    c3

// Snippet: db, [0x0056d206, 0x0056d208)
.byte 0x8b, 0xff                  // 0x0056d206

// Snippet: jmptbl, [0x0056d208, 0x0056d21c)
.byte 0xe1, 0xcd, 0x56, 0x00      // 0x0056d208
.byte 0x33, 0xb5, 0x56, 0x00      // 0x0056d20c
.byte 0xd5, 0xbb, 0x56, 0x00      // 0x0056d210
.byte 0xd0, 0xc3, 0x56, 0x00      // 0x0056d214
.byte 0x77, 0xb7, 0x56, 0x00      // 0x0056d218

// Snippet: db, [0x0056d21c, 0x0056d220)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0056d21c

