.intel_syntax noprefix
.align 16

.extern  ??3@YAXPAX@Z
.extern ??0LHOSFile@@QAE@XZ
.extern ??_DLHOSFile@@QAEXXZ
.extern @Open__8LHOSFileFPc12LH_FILE_MODE@16
.extern ?Close@LHOSFile@@QAEIXZ
.extern @Write__8LHOSFileFPvUlPUl@20
.extern ??2@YAPAXI@Z

.globl _jmp_addr_0x008a5440
.globl _jmp_addr_0x008a5480
.globl _jmp_addr_0x008a5590

_jmp_addr_0x008a5440:    mov.s            edx, ecx                                 // 0x008a5440    8bd1
                         push             edi                                      // 0x008a5442    57
                         mov              ecx, 0x00000041                          // 0x008a5443    b941000000
                         xor.s            eax, eax                                 // 0x008a5448    33c0
                         mov.s            edi, edx                                 // 0x008a544a    8bfa
                         rep stosd                                                 // 0x008a544c    f3ab
                         {disp32} mov     dword ptr [edx + 0x00000104], eax        // 0x008a544e    898204010000
                         {disp32} mov     dword ptr [edx + 0x00000108], eax        // 0x008a5454    898208010000
                         {disp32} mov     word ptr [edx + 0x00000114], ax          // 0x008a545a    66898214010000
                         {disp32} mov     word ptr [edx + 0x00000116], ax          // 0x008a5461    66898216010000
                         {disp32} mov     word ptr [edx + 0x00000118], ax          // 0x008a5468    66898218010000
                         {disp32} mov     word ptr [edx + 0x0000010c], 0x0018      // 0x008a546f    66c7820c0100001800
                         mov.s            eax, edx                                 // 0x008a5478    8bc2
                         pop              edi                                      // 0x008a547a    5f
                         ret                                                       // 0x008a547b    c3
                         nop                                                       // 0x008a547c    90
                         nop                                                       // 0x008a547d    90
                         nop                                                       // 0x008a547e    90
                         nop                                                       // 0x008a547f    90
_jmp_addr_0x008a5480:    ret                                                       // 0x008a5480    c3
                         nop                                                       // 0x008a5481    90
                         nop                                                       // 0x008a5482    90
                         nop                                                       // 0x008a5483    90
                         nop                                                       // 0x008a5484    90
                         nop                                                       // 0x008a5485    90
                         nop                                                       // 0x008a5486    90
                         nop                                                       // 0x008a5487    90
                         nop                                                       // 0x008a5488    90
                         nop                                                       // 0x008a5489    90
                         nop                                                       // 0x008a548a    90
                         nop                                                       // 0x008a548b    90
                         nop                                                       // 0x008a548c    90
                         nop                                                       // 0x008a548d    90
                         nop                                                       // 0x008a548e    90
                         nop                                                       // 0x008a548f    90
_jmp_addr_0x008a5490:    {disp8} lea      eax, dword ptr [esp + 0x04]              // 0x008a5490    8d442404
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x008a5494    8d4c2408
                         push             eax                                      // 0x008a5498    50
                         push             0x2                                      // 0x008a5499    6a02
                         push             ecx                                      // 0x008a549b    51
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x008a549c    8b4c2410
                         call             @Write__8LHOSFileFPvUlPUl@20             // 0x008a54a0    e87b74f1ff
                         test             eax, eax                                 // 0x008a54a5    85c0
                         {disp8} je       _jmp_addr_0x008a54ae                     // 0x008a54a7    7405
                         xor.s            eax, eax                                 // 0x008a54a9    33c0
                         ret              0x0008                                   // 0x008a54ab    c20800
_jmp_addr_0x008a54ae:    {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008a54ae    8b4c2404
                         xor.s            eax, eax                                 // 0x008a54b2    33c0
                         cmp              ecx, 0x02                                // 0x008a54b4    83f902
                         sete             al                                       // 0x008a54b7    0f94c0
                         ret              0x0008                                   // 0x008a54ba    c20800
                         nop                                                       // 0x008a54bd    90
                         nop                                                       // 0x008a54be    90
                         nop                                                       // 0x008a54bf    90
_jmp_addr_0x008a54c0:    {disp8} lea      eax, dword ptr [esp + 0x04]              // 0x008a54c0    8d442404
                         {disp8} lea      ecx, dword ptr [esp + 0x08]              // 0x008a54c4    8d4c2408
                         push             eax                                      // 0x008a54c8    50
                         push             0x4                                      // 0x008a54c9    6a04
                         push             ecx                                      // 0x008a54cb    51
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x008a54cc    8b4c2410
                         call             @Write__8LHOSFileFPvUlPUl@20             // 0x008a54d0    e84b74f1ff
                         test             eax, eax                                 // 0x008a54d5    85c0
                         {disp8} je       _jmp_addr_0x008a54de                     // 0x008a54d7    7405
                         xor.s            eax, eax                                 // 0x008a54d9    33c0
                         ret              0x0008                                   // 0x008a54db    c20800
_jmp_addr_0x008a54de:    {disp8} mov      ecx, dword ptr [esp + 0x04]              // 0x008a54de    8b4c2404
                         xor.s            eax, eax                                 // 0x008a54e2    33c0
                         cmp              ecx, 0x04                                // 0x008a54e4    83f904
                         sete             al                                       // 0x008a54e7    0f94c0
                         ret              0x0008                                   // 0x008a54ea    c20800
                         nop                                                       // 0x008a54ed    90
                         nop                                                       // 0x008a54ee    90
                         nop                                                       // 0x008a54ef    90
_jmp_addr_0x008a54f0:    push             esi                                      // 0x008a54f0    56
                         push             edi                                      // 0x008a54f1    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]              // 0x008a54f2    8b7c240c
                         push             0x00004d42                               // 0x008a54f6    68424d0000
                         mov.s            esi, ecx                                 // 0x008a54fb    8bf1
                         push             edi                                      // 0x008a54fd    57
                         call             _jmp_addr_0x008a5490                     // 0x008a54fe    e88dffffff
                         test             eax, eax                                 // 0x008a5503    85c0
                         {disp8} jne      _jmp_addr_0x008a550c                     // 0x008a5505    7505
                         pop              edi                                      // 0x008a5507    5f
                         pop              esi                                      // 0x008a5508    5e
                         ret              0x0004                                   // 0x008a5509    c20400
_jmp_addr_0x008a550c:    push             0x0                                      // 0x008a550c    6a00
                         push             edi                                      // 0x008a550e    57
                         mov.s            ecx, esi                                 // 0x008a550f    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a5511    e8aaffffff
                         test             eax, eax                                 // 0x008a5516    85c0
                         {disp8} jne      _jmp_addr_0x008a551f                     // 0x008a5518    7505
                         pop              edi                                      // 0x008a551a    5f
                         pop              esi                                      // 0x008a551b    5e
                         ret              0x0004                                   // 0x008a551c    c20400
_jmp_addr_0x008a551f:    push             0x0                                      // 0x008a551f    6a00
                         push             edi                                      // 0x008a5521    57
                         mov.s            ecx, esi                                 // 0x008a5522    8bce
                         call             _jmp_addr_0x008a5490                     // 0x008a5524    e867ffffff
                         test             eax, eax                                 // 0x008a5529    85c0
                         {disp8} jne      _jmp_addr_0x008a5532                     // 0x008a552b    7505
                         pop              edi                                      // 0x008a552d    5f
                         pop              esi                                      // 0x008a552e    5e
                         ret              0x0004                                   // 0x008a552f    c20400
_jmp_addr_0x008a5532:    push             0x0                                      // 0x008a5532    6a00
                         push             edi                                      // 0x008a5534    57
                         mov.s            ecx, esi                                 // 0x008a5535    8bce
                         call             _jmp_addr_0x008a5490                     // 0x008a5537    e854ffffff
                         test             eax, eax                                 // 0x008a553c    85c0
                         {disp8} jne      _jmp_addr_0x008a5545                     // 0x008a553e    7505
                         pop              edi                                      // 0x008a5540    5f
                         pop              esi                                      // 0x008a5541    5e
                         ret              0x0004                                   // 0x008a5542    c20400
_jmp_addr_0x008a5545:    push             0x36                                     // 0x008a5545    6a36
                         push             edi                                      // 0x008a5547    57
                         mov.s            ecx, esi                                 // 0x008a5548    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a554a    e871ffffff
                         neg              eax                                      // 0x008a554f    f7d8
                         sbb.s            eax, eax                                 // 0x008a5551    1bc0
                         pop              edi                                      // 0x008a5553    5f
                         neg              eax                                      // 0x008a5554    f7d8
                         pop              esi                                      // 0x008a5556    5e
                         ret              0x0004                                   // 0x008a5557    c20400
                         nop                                                       // 0x008a555a    90
                         nop                                                       // 0x008a555b    90
                         nop                                                       // 0x008a555c    90
                         nop                                                       // 0x008a555d    90
                         nop                                                       // 0x008a555e    90
                         nop                                                       // 0x008a555f    90
_jmp_addr_0x008a5560:    {disp8} mov      ecx, dword ptr [esp + 0x08]              // 0x008a5560    8b4c2408
                         test             ecx, ecx                                 // 0x008a5564    85c9
                         {disp8} jle      _jmp_addr_0x008a5571                     // 0x008a5566    7e09
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x008a5568    8b442404
                         shr              eax, cl                                  // 0x008a556c    d3e8
                         ret              0x0008                                   // 0x008a556e    c20800
_jmp_addr_0x008a5571:    mov.s            eax, ecx                                 // 0x008a5571    8bc1
                         cdq                                                       // 0x008a5573    99
                         mov.s            ecx, eax                                 // 0x008a5574    8bc8
                         {disp8} mov      eax, dword ptr [esp + 0x04]              // 0x008a5576    8b442404
                         xor.s            ecx, edx                                 // 0x008a557a    33ca
                         sub.s            ecx, edx                                 // 0x008a557c    2bca
                         shl              eax, cl                                  // 0x008a557e    d3e0
                         ret              0x0008                                   // 0x008a5580    c20800
                         nop                                                       // 0x008a5583    90
                         nop                                                       // 0x008a5584    90
                         nop                                                       // 0x008a5585    90
                         nop                                                       // 0x008a5586    90
                         nop                                                       // 0x008a5587    90
                         nop                                                       // 0x008a5588    90
                         nop                                                       // 0x008a5589    90
                         nop                                                       // 0x008a558a    90
                         nop                                                       // 0x008a558b    90
                         nop                                                       // 0x008a558c    90
                         nop                                                       // 0x008a558d    90
                         nop                                                       // 0x008a558e    90
                         nop                                                       // 0x008a558f    90
_jmp_addr_0x008a5590:    push             -0x1                                     // 0x008a5590    6aff
                         push             0x008a893b                               // 0x008a5592    683b898a00
                         {disp32} mov     eax, fs:[0x0]                            // 0x008a5597    64a100000000
                         push             eax                                      // 0x008a559d    50
                         {disp32} mov     fs:[0x0], esp                            // 0x008a559e    64892500000000
                         sub              esp, 0x00000134                          // 0x008a55a5    81ec34010000
                         push             ebx                                      // 0x008a55ab    53
                         push             ebp                                      // 0x008a55ac    55
                         push             esi                                      // 0x008a55ad    56
                         mov.s            esi, ecx                                 // 0x008a55ae    8bf1
                         push             edi                                      // 0x008a55b0    57
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a55b1    8d4c2438
                         call             ??0LHOSFile@@QAE@XZ                      // 0x008a55b5    e89670f1ff
                         {disp32} mov     eax, dword ptr [esi + 0x00000104]        // 0x008a55ba    8b8604010000
                         xor.s            ebp, ebp                                 // 0x008a55c0    33ed
                         imul             eax, dword ptr [esi + 0x00000108]        // 0x008a55c2    0faf8608010000
                         {disp32} mov     dword ptr [esp + 0x0000014c], ebp        // 0x008a55c9    89ac244c010000
                         lea              eax, dword ptr [eax + eax * 0x2]         // 0x008a55d0    8d0440
                         push             eax                                      // 0x008a55d3    50
                         call             ??2@YAPAXI@Z                             // 0x008a55d4    e8150ff2ff
                         {disp32} mov     cx, word ptr [esi + 0x00000114]          // 0x008a55d9    668b8e14010000
                         {disp32} mov     dx, word ptr [esi + 0x00000116]          // 0x008a55e0    668b9616010000
                         {disp8} mov      dword ptr [esp + 0x2c], eax              // 0x008a55e7    8944242c
                         {disp32} mov     ax, word ptr [esi + 0x00000118]          // 0x008a55eb    668b8618010000
                         add              esp, 0x04                                // 0x008a55f2    83c404
                         {disp8} mov      dword ptr [esp + 0x10], eax              // 0x008a55f5    89442410
                         xor.s            eax, eax                                 // 0x008a55f9    33c0
                         {disp8} mov      dword ptr [esp + 0x1c], ecx              // 0x008a55fb    894c241c
                         push             eax                                      // 0x008a55ff    50
                         push             esi                                      // 0x008a5600    56
                         {disp8} lea      ecx, dword ptr [esp + 0x40]              // 0x008a5601    8d4c2440
                         xor.s            ebx, ebx                                 // 0x008a5605    33db
                         xor.s            edi, edi                                 // 0x008a5607    33ff
                         {disp8} mov      dword ptr [esp + 0x20], edx              // 0x008a5609    89542420
                         {disp8} mov      dword ptr [esp + 0x28], eax              // 0x008a560d    89442428
                         {disp8} mov      dword ptr [esp + 0x2c], eax              // 0x008a5611    8944242c
                         {disp8} mov      dword ptr [esp + 0x38], eax              // 0x008a5615    89442438
                         call             @Open__8LHOSFileFPc12LH_FILE_MODE@16     // 0x008a5619    e81271f1ff
                         test             eax, eax                                 // 0x008a561e    85c0
                         {disp8} je       _jmp_addr_0x008a563d                     // 0x008a5620    741b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a5622    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a5626    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a5631    e84a70f1ff
                         xor.s            eax, eax                                 // 0x008a5636    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5638    e91b040000
_jmp_addr_0x008a563d:    {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a563d    8d4c2438
                         push             ecx                                      // 0x008a5641    51
                         mov.s            ecx, esi                                 // 0x008a5642    8bce
                         call             _jmp_addr_0x008a54f0                     // 0x008a5644    e8a7feffff
                         test             eax, eax                                 // 0x008a5649    85c0
                         {disp8} jne      _jmp_addr_0x008a5668                     // 0x008a564b    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a564d    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a5651    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a565c    e81f70f1ff
                         xor.s            eax, eax                                 // 0x008a5661    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5663    e9f0030000
_jmp_addr_0x008a5668:    {disp8} lea      edx, dword ptr [esp + 0x38]              // 0x008a5668    8d542438
                         push             0x28                                     // 0x008a566c    6a28
                         push             edx                                      // 0x008a566e    52
                         mov.s            ecx, esi                                 // 0x008a566f    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a5671    e84afeffff
                         test             eax, eax                                 // 0x008a5676    85c0
                         {disp8} jne      _jmp_addr_0x008a5695                     // 0x008a5678    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a567a    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a567e    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a5689    e8f26ff1ff
                         xor.s            eax, eax                                 // 0x008a568e    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5690    e9c3030000
_jmp_addr_0x008a5695:    {disp32} mov     eax, dword ptr [esi + 0x00000104]        // 0x008a5695    8b8604010000
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a569b    8d4c2438
                         push             eax                                      // 0x008a569f    50
                         push             ecx                                      // 0x008a56a0    51
                         mov.s            ecx, esi                                 // 0x008a56a1    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a56a3    e818feffff
                         test             eax, eax                                 // 0x008a56a8    85c0
                         {disp8} jne      _jmp_addr_0x008a56c7                     // 0x008a56aa    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a56ac    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a56b0    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a56bb    e8c06ff1ff
                         xor.s            eax, eax                                 // 0x008a56c0    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a56c2    e991030000
_jmp_addr_0x008a56c7:    {disp32} mov     edx, dword ptr [esi + 0x00000108]        // 0x008a56c7    8b9608010000
                         {disp8} lea      eax, dword ptr [esp + 0x38]              // 0x008a56cd    8d442438
                         push             edx                                      // 0x008a56d1    52
                         push             eax                                      // 0x008a56d2    50
                         mov.s            ecx, esi                                 // 0x008a56d3    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a56d5    e8e6fdffff
                         test             eax, eax                                 // 0x008a56da    85c0
                         {disp8} jne      _jmp_addr_0x008a56f9                     // 0x008a56dc    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a56de    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a56e2    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a56ed    e88e6ff1ff
                         xor.s            eax, eax                                 // 0x008a56f2    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a56f4    e95f030000
_jmp_addr_0x008a56f9:    {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a56f9    8d4c2438
                         push             0x1                                      // 0x008a56fd    6a01
                         push             ecx                                      // 0x008a56ff    51
                         mov.s            ecx, esi                                 // 0x008a5700    8bce
                         call             _jmp_addr_0x008a5490                     // 0x008a5702    e889fdffff
                         test             eax, eax                                 // 0x008a5707    85c0
                         {disp8} jne      _jmp_addr_0x008a5726                     // 0x008a5709    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a570b    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a570f    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a571a    e8616ff1ff
                         xor.s            eax, eax                                 // 0x008a571f    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5721    e932030000
_jmp_addr_0x008a5726:    {disp32} mov     dx, word ptr [esi + 0x0000010c]          // 0x008a5726    668b960c010000
                         {disp8} lea      eax, dword ptr [esp + 0x38]              // 0x008a572d    8d442438
                         push             edx                                      // 0x008a5731    52
                         push             eax                                      // 0x008a5732    50
                         mov.s            ecx, esi                                 // 0x008a5733    8bce
                         call             _jmp_addr_0x008a5490                     // 0x008a5735    e856fdffff
                         test             eax, eax                                 // 0x008a573a    85c0
                         {disp8} jne      _jmp_addr_0x008a5759                     // 0x008a573c    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a573e    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a5742    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a574d    e82e6ff1ff
                         xor.s            eax, eax                                 // 0x008a5752    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5754    e9ff020000
_jmp_addr_0x008a5759:    {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a5759    8d4c2438
                         push             0x0                                      // 0x008a575d    6a00
                         push             ecx                                      // 0x008a575f    51
                         mov.s            ecx, esi                                 // 0x008a5760    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a5762    e859fdffff
                         test             eax, eax                                 // 0x008a5767    85c0
                         {disp8} jne      _jmp_addr_0x008a5786                     // 0x008a5769    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a576b    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a576f    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a577a    e8016ff1ff
                         xor.s            eax, eax                                 // 0x008a577f    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5781    e9d2020000
_jmp_addr_0x008a5786:    {disp8} lea      edx, dword ptr [esp + 0x38]              // 0x008a5786    8d542438
                         push             0x0                                      // 0x008a578a    6a00
                         push             edx                                      // 0x008a578c    52
                         mov.s            ecx, esi                                 // 0x008a578d    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a578f    e82cfdffff
                         test             eax, eax                                 // 0x008a5794    85c0
                         {disp8} jne      _jmp_addr_0x008a57b3                     // 0x008a5796    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a5798    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a579c    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a57a7    e8d46ef1ff
                         xor.s            eax, eax                                 // 0x008a57ac    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a57ae    e9a5020000
_jmp_addr_0x008a57b3:    {disp8} lea      eax, dword ptr [esp + 0x38]              // 0x008a57b3    8d442438
                         push             0x0                                      // 0x008a57b7    6a00
                         push             eax                                      // 0x008a57b9    50
                         mov.s            ecx, esi                                 // 0x008a57ba    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a57bc    e8fffcffff
                         test             eax, eax                                 // 0x008a57c1    85c0
                         {disp8} jne      _jmp_addr_0x008a57e0                     // 0x008a57c3    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a57c5    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a57c9    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a57d4    e8a76ef1ff
                         xor.s            eax, eax                                 // 0x008a57d9    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a57db    e978020000
_jmp_addr_0x008a57e0:    {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a57e0    8d4c2438
                         push             0x0                                      // 0x008a57e4    6a00
                         push             ecx                                      // 0x008a57e6    51
                         mov.s            ecx, esi                                 // 0x008a57e7    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a57e9    e8d2fcffff
                         test             eax, eax                                 // 0x008a57ee    85c0
                         {disp8} jne      _jmp_addr_0x008a580d                     // 0x008a57f0    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a57f2    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a57f6    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a5801    e87a6ef1ff
                         xor.s            eax, eax                                 // 0x008a5806    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5808    e94b020000
_jmp_addr_0x008a580d:    {disp32} mov     cl, byte ptr [esi + 0x0000010c]          // 0x008a580d    8a8e0c010000
                         mov              edx, 0x00000001                          // 0x008a5813    ba01000000
                         shl              edx, cl                                  // 0x008a5818    d3e2
                         {disp8} lea      eax, dword ptr [esp + 0x38]              // 0x008a581a    8d442438
                         mov.s            ecx, esi                                 // 0x008a581e    8bce
                         push             edx                                      // 0x008a5820    52
                         push             eax                                      // 0x008a5821    50
                         call             _jmp_addr_0x008a54c0                     // 0x008a5822    e899fcffff
                         test             eax, eax                                 // 0x008a5827    85c0
                         {disp8} jne      _jmp_addr_0x008a5846                     // 0x008a5829    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a582b    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a582f    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a583a    e8416ef1ff
                         xor.s            eax, eax                                 // 0x008a583f    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a5841    e912020000
_jmp_addr_0x008a5846:    {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a5846    8d4c2438
                         push             0x0                                      // 0x008a584a    6a00
                         push             ecx                                      // 0x008a584c    51
                         mov.s            ecx, esi                                 // 0x008a584d    8bce
                         call             _jmp_addr_0x008a54c0                     // 0x008a584f    e86cfcffff
                         test             eax, eax                                 // 0x008a5854    85c0
                         {disp8} jne      _jmp_addr_0x008a5873                     // 0x008a5856    751b
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a5858    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a585c    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a5867    e8146ef1ff
                         xor.s            eax, eax                                 // 0x008a586c    33c0
                         {disp32} jmp     _jmp_addr_0x008a5a58                     // 0x008a586e    e9e5010000
_jmp_addr_0x008a5873:    test             byte ptr [esp + 0x1c], 0x01              // 0x008a5873    f644241c01
                         {disp8} jne      _jmp_addr_0x008a5888                     // 0x008a5878    750e
_jmp_addr_0x008a587a:    shr              word ptr [esp + 0x1c], 1                 // 0x008a587a    66d16c241c
                         {disp8} mov      al, byte ptr [esp + 0x1c]                // 0x008a587f    8a44241c
                         inc              ebx                                      // 0x008a5883    43
                         test             al, 0x01                                 // 0x008a5884    a801
                         {disp8} je       _jmp_addr_0x008a587a                     // 0x008a5886    74f2
_jmp_addr_0x008a5888:    test             byte ptr [esp + 0x18], 0x01              // 0x008a5888    f644241801
                         {disp8} jne      _jmp_addr_0x008a589d                     // 0x008a588d    750e
_jmp_addr_0x008a588f:    shr              word ptr [esp + 0x18], 1                 // 0x008a588f    66d16c2418
                         {disp8} mov      al, byte ptr [esp + 0x18]                // 0x008a5894    8a442418
                         inc              edi                                      // 0x008a5898    47
                         test             al, 0x01                                 // 0x008a5899    a801
                         {disp8} je       _jmp_addr_0x008a588f                     // 0x008a589b    74f2
_jmp_addr_0x008a589d:    test             byte ptr [esp + 0x10], 0x01              // 0x008a589d    f644241001
                         {disp8} jne      _jmp_addr_0x008a58b2                     // 0x008a58a2    750e
_jmp_addr_0x008a58a4:    shr              word ptr [esp + 0x10], 1                 // 0x008a58a4    66d16c2410
                         {disp8} mov      al, byte ptr [esp + 0x10]                // 0x008a58a9    8a442410
                         inc              ebp                                      // 0x008a58ad    45
                         test             al, 0x01                                 // 0x008a58ae    a801
                         {disp8} je       _jmp_addr_0x008a58a4                     // 0x008a58b0    74f2
_jmp_addr_0x008a58b2:    cmp              word ptr [esi + 0x00000116], 0x03e0      // 0x008a58b2    6681be16010000e003
                         {disp8} jne      _jmp_addr_0x008a58c2                     // 0x008a58bb    7505
                         sub              edi, 0x03                                // 0x008a58bd    83ef03
                         {disp8} jmp      _jmp_addr_0x008a58c5                     // 0x008a58c0    eb03
_jmp_addr_0x008a58c2:    sub              edi, 0x02                                // 0x008a58c2    83ef02
_jmp_addr_0x008a58c5:    {disp32} mov     ecx, dword ptr [esi + 0x00000104]        // 0x008a58c5    8b8e04010000
                         sub              ebx, 0x03                                // 0x008a58cb    83eb03
                         mov.s            eax, ecx                                 // 0x008a58ce    8bc1
                         sub              ebp, 0x03                                // 0x008a58d0    83ed03
                         imul             eax, dword ptr [esi + 0x00000108]        // 0x008a58d3    0faf8608010000
                         {disp8} mov      dword ptr [esp + 0x10], edi              // 0x008a58da    897c2410
                         {disp8} mov      dword ptr [esp + 0x18], ebx              // 0x008a58de    895c2418
                         lea              edx, dword ptr [eax + eax * 0x2]         // 0x008a58e2    8d1440
                         {disp8} mov      dword ptr [esp + 0x1c], ebp              // 0x008a58e5    896c241c
                         test             edx, edx                                 // 0x008a58e9    85d2
                         {disp32} jbe     _jmp_addr_0x008a59c9                     // 0x008a58eb    0f86d8000000
                         {disp8} mov      edx, dword ptr [esp + 0x28]              // 0x008a58f1    8b542428
                         or               eax, -0x1                                // 0x008a58f5    83c8ff
                         sub.s            eax, edx                                 // 0x008a58f8    2bc2
                         {disp8} lea      ebp, dword ptr [edx + 0x01]              // 0x008a58fa    8d6a01
                         {disp8} mov      dword ptr [esp + 0x2c], eax              // 0x008a58fd    8944242c
                         {disp8} jmp      _jmp_addr_0x008a5907                     // 0x008a5901    eb04
_jmp_addr_0x008a5903:    {disp8} mov      ebx, dword ptr [esp + 0x18]              // 0x008a5903    8b5c2418
_jmp_addr_0x008a5907:    {disp32} mov     eax, dword ptr [esp + 0x00000154]        // 0x008a5907    8b842454010000
                         {disp8} mov      edx, dword ptr [esp + 0x20]              // 0x008a590e    8b542420
                         mov              di, word ptr [eax + edx * 0x2]           // 0x008a5912    668b3c50
                         mov.s            eax, edx                                 // 0x008a5916    8bc2
                         inc              eax                                      // 0x008a5918    40
                         {disp8} mov      dword ptr [esp + 0x20], eax              // 0x008a5919    89442420
                         {disp8} mov      eax, dword ptr [esp + 0x24]              // 0x008a591d    8b442424
                         inc              eax                                      // 0x008a5921    40
                         cmp.s            eax, ecx                                 // 0x008a5922    3bc1
                         {disp8} mov      dword ptr [esp + 0x24], eax              // 0x008a5924    89442424
                         .byte            0x72, 0x1e// {disp8} jb _jmp_addr_0x008a5948 // 0x008a5928    721e
                         {disp8} mov      ecx, dword ptr [esp + 0x30]              // 0x008a592a    8b4c2430
                         {disp32} mov     eax, dword ptr [esi + 0x00000110]        // 0x008a592e    8b8610010000
                         inc              ecx                                      // 0x008a5934    41
                         {disp8} mov      dword ptr [esp + 0x24], 0x00000000       // 0x008a5935    c744242400000000
                         imul             eax, ecx                                 // 0x008a593d    0fafc1
                         {disp8} mov      dword ptr [esp + 0x30], ecx              // 0x008a5940    894c2430
                         {disp8} mov      dword ptr [esp + 0x20], eax              // 0x008a5944    89442420
_jmp_addr_0x008a5948:    xor.s            eax, eax                                 // 0x008a5948    33c0
                         and              edi, 0x0000ffff                          // 0x008a594a    81e7ffff0000
                         {disp32} mov     ax, word ptr [esi + 0x00000114]          // 0x008a5950    668b8614010000
                         push             ebx                                      // 0x008a5957    53
                         and.s            eax, edi                                 // 0x008a5958    23c7
                         mov.s            ecx, esi                                 // 0x008a595a    8bce
                         push             eax                                      // 0x008a595c    50
                         call             _jmp_addr_0x008a5560                     // 0x008a595d    e8fefbffff
                         {disp8} mov      ecx, dword ptr [esp + 0x10]              // 0x008a5962    8b4c2410
                         xor.s            edx, edx                                 // 0x008a5966    33d2
                         {disp32} mov     dx, word ptr [esi + 0x00000116]          // 0x008a5968    668b9616010000
                         push             ecx                                      // 0x008a596f    51
                         and.s            edx, edi                                 // 0x008a5970    23d7
                         mov.s            ecx, esi                                 // 0x008a5972    8bce
                         push             edx                                      // 0x008a5974    52
                         mov.s            bl, al                                   // 0x008a5975    8ad8
                         call             _jmp_addr_0x008a5560                     // 0x008a5977    e8e4fbffff
                         xor.s            ecx, ecx                                 // 0x008a597c    33c9
                         {disp8} mov      byte ptr [esp + 0x17], al                // 0x008a597e    88442417
                         {disp32} mov     cx, word ptr [esi + 0x00000118]          // 0x008a5982    668b8e18010000
                         {disp8} mov      eax, dword ptr [esp + 0x1c]              // 0x008a5989    8b44241c
                         and.s            ecx, edi                                 // 0x008a598d    23cf
                         push             eax                                      // 0x008a598f    50
                         push             ecx                                      // 0x008a5990    51
                         mov.s            ecx, esi                                 // 0x008a5991    8bce
                         call             _jmp_addr_0x008a5560                     // 0x008a5993    e8c8fbffff
                         {disp8} mov      dl, byte ptr [esp + 0x17]                // 0x008a5998    8a542417
                         {disp8} mov      byte ptr [ebp + -0x01], al               // 0x008a599c    8845ff
                         {disp8} mov      eax, dword ptr [esp + 0x2c]              // 0x008a599f    8b44242c
                         {disp8} mov      byte ptr [ebp + 0x00], dl                // 0x008a59a3    885500
                         {disp8} mov      byte ptr [ebp + 0x01], bl                // 0x008a59a6    885d01
                         {disp32} mov     ecx, dword ptr [esi + 0x00000104]        // 0x008a59a9    8b8e04010000
                         add              ebp, 0x03                                // 0x008a59af    83c503
                         lea              edx, dword ptr [eax + ebp * 0x1]         // 0x008a59b2    8d1428
                         mov.s            eax, ecx                                 // 0x008a59b5    8bc1
                         imul             eax, dword ptr [esi + 0x00000108]        // 0x008a59b7    0faf8608010000
                         lea              eax, dword ptr [eax + eax * 0x2]         // 0x008a59be    8d0440
                         cmp.s            edx, eax                                 // 0x008a59c1    3bd0
                         {disp32} jb      _jmp_addr_0x008a5903                     // 0x008a59c3    0f823affffff
_jmp_addr_0x008a59c9:    {disp32} mov     eax, dword ptr [esi + 0x00000108]        // 0x008a59c9    8b8608010000
                         xor.s            edi, edi                                 // 0x008a59cf    33ff
                         test             eax, eax                                 // 0x008a59d1    85c0
                         {disp8} jbe      _jmp_addr_0x008a5a29                     // 0x008a59d3    7654
_jmp_addr_0x008a59d5:    {disp32} mov     ecx, dword ptr [esi + 0x00000104]        // 0x008a59d5    8b8e04010000
                         sub.s            eax, edi                                 // 0x008a59db    2bc7
                         imul             eax, ecx                                 // 0x008a59dd    0fafc1
                         {disp8} lea      edx, dword ptr [esp + 0x34]              // 0x008a59e0    8d542434
                         push             edx                                      // 0x008a59e4    52
                         lea              edx, dword ptr [ecx + ecx * 0x2]         // 0x008a59e5    8d1449
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]              // 0x008a59e8    8b4c242c
                         push             edx                                      // 0x008a59ec    52
                         lea              edx, dword ptr [ecx + eax * 0x2]         // 0x008a59ed    8d1441
                         {disp8} lea      ecx, dword ptr [esp + 0x40]              // 0x008a59f0    8d4c2440
                         add.s            eax, edx                                 // 0x008a59f4    03c2
                         push             eax                                      // 0x008a59f6    50
                         call             @Write__8LHOSFileFPvUlPUl@20             // 0x008a59f7    e8246ff1ff
                         {disp32} mov     eax, dword ptr [esi + 0x00000104]        // 0x008a59fc    8b8604010000
                         neg              eax                                      // 0x008a5a02    f7d8
                         and              eax, 0x03                                // 0x008a5a04    83e003
                         {disp8} mov      dword ptr [esp + 0x2c], eax              // 0x008a5a07    8944242c
                         {disp8} je       _jmp_addr_0x008a5a1e                     // 0x008a5a0b    7411
                         {disp8} lea      ecx, dword ptr [esp + 0x34]              // 0x008a5a0d    8d4c2434
                         push             ecx                                      // 0x008a5a11    51
                         push             eax                                      // 0x008a5a12    50
                         push             0x0                                      // 0x008a5a13    6a00
                         {disp8} lea      ecx, dword ptr [esp + 0x44]              // 0x008a5a15    8d4c2444
                         call             @Write__8LHOSFileFPvUlPUl@20             // 0x008a5a19    e8026ff1ff
_jmp_addr_0x008a5a1e:    {disp32} mov     eax, dword ptr [esi + 0x00000108]        // 0x008a5a1e    8b8608010000
                         inc              edi                                      // 0x008a5a24    47
                         cmp.s            edi, eax                                 // 0x008a5a25    3bf8
                         .byte            0x72, 0xac// {disp8} jb _jmp_addr_0x008a59d5 // 0x008a5a27    72ac
_jmp_addr_0x008a5a29:    {disp8} mov      edx, dword ptr [esp + 0x28]              // 0x008a5a29    8b542428
                         push             edx                                      // 0x008a5a2d    52
                         call             ??3@YAXPAX@Z                             // 0x008a5a2e    e86594f0ff
                         add              esp, 0x04                                // 0x008a5a33    83c404
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a5a36    8d4c2438
                         call             ?Close@LHOSFile@@QAEIXZ                  // 0x008a5a3a    e8216ef1ff
                         {disp8} lea      ecx, dword ptr [esp + 0x38]              // 0x008a5a3f    8d4c2438
                         {disp32} mov     dword ptr [esp + 0x0000014c], 0xffffffff // 0x008a5a43    c784244c010000ffffffff
                         call             ??_DLHOSFile@@QAEXXZ                     // 0x008a5a4e    e82d6cf1ff
                         mov              eax, 0x00000001                          // 0x008a5a53    b801000000
_jmp_addr_0x008a5a58:    {disp32} mov     ecx, dword ptr [esp + 0x00000144]        // 0x008a5a58    8b8c2444010000
                         pop              edi                                      // 0x008a5a5f    5f
                         pop              esi                                      // 0x008a5a60    5e
                         pop              ebp                                      // 0x008a5a61    5d
                         pop              ebx                                      // 0x008a5a62    5b
                         {disp32} mov     fs:[0x0], ecx                            // 0x008a5a63    64890d00000000
                         add              esp, 0x00000140                          // 0x008a5a6a    81c440010000
                         ret              0x0004                                   // 0x008a5a70    c20400

// Snippet: db, [0x008a5a73, 0x008a5b00)
.byte 0x90, 0x90, 0x90, 0x90      // 0x008a5a73
.byte 0x90, 0x90, 0x90, 0x90      // 0x008a5a77
.byte 0x90, 0x90, 0x90, 0x90      // 0x008a5a7b
.byte 0x90, 0xff, 0x25, 0x1c      // 0x008a5a7f
.byte 0x90, 0x8a, 0x00, 0xcc      // 0x008a5a83
.byte 0xcc, 0xcc, 0xcc, 0xcc      // 0x008a5a87
.byte 0xcc, 0xcc, 0xcc, 0xcc      // 0x008a5a8b
.byte 0xcc, 0x30, 0x4b, 0x9a      // 0x008a5a8f
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5a93
.byte 0x00, 0x03, 0xff, 0xff      // 0x008a5a97
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5a9b
.byte 0x00, 0x20, 0x4b, 0x9a      // 0x008a5a9f
.byte 0x00, 0x04, 0x00, 0x00      // 0x008a5aa3
.byte 0x00, 0x03, 0xff, 0xff      // 0x008a5aa7
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5aab
.byte 0x00, 0x10, 0x4b, 0x9a      // 0x008a5aaf
.byte 0x00, 0x08, 0x00, 0x00      // 0x008a5ab3
.byte 0x00, 0x03, 0xff, 0xff      // 0x008a5ab7
.byte 0x80, 0x00, 0x00, 0x00      // 0x008a5abb
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5abf
.byte 0x00, 0x0c, 0x00, 0x00      // 0x008a5ac3
.byte 0x00, 0x0c, 0xff, 0xff      // 0x008a5ac7
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5acb
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5acf
.byte 0x00, 0x0d, 0x00, 0x00      // 0x008a5ad3
.byte 0x00, 0x0c, 0xff, 0xff      // 0x008a5ad7
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5adb
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5adf
.byte 0x00, 0x0e, 0x00, 0x00      // 0x008a5ae3
.byte 0x00, 0x0c, 0xff, 0xff      // 0x008a5ae7
.byte 0x80, 0x00, 0x00, 0x00      // 0x008a5aeb
.byte 0x00, 0x00, 0x00, 0x00      // 0x008a5aef
.byte 0x00, 0x0f, 0x00, 0x00      // 0x008a5af3
.byte 0x00, 0x0c, 0xff, 0xff      // 0x008a5af7
.byte 0x80, 0x00, 0x00, 0x00      // 0x008a5afb
.byte 0x00                        // 0x008a5aff

