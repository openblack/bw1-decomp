.intel_syntax noprefix
.align 16

.extern data_bytes

.extern _jmp_addr_0x007cb744
.extern _jmp_addr_0x008a0621
.extern _jmp_addr_0x008a12d2
.extern _jmp_addr_0x008a17ba
.extern _jmp_addr_0x008a1d52
.extern _jmp_addr_0x008a5480

.globl __setjmp3
.globl _mbctoupper
.globl __rt_probe_read

// LIBCMT.LIB/build/intel/mt_obj/setjmp3.obj
__setjmp3:               {disp8} mov      edx, dword ptr [esp + 0x04]             // 0x008a6300    8b542404
                         mov              dword ptr [edx], ebp                    // 0x008a6304    892a
                         {disp8} mov      dword ptr [edx + 0x04], ebx             // 0x008a6306    895a04
                         {disp8} mov      dword ptr [edx + 0x08], edi             // 0x008a6309    897a08
                         {disp8} mov      dword ptr [edx + 0x0c], esi             // 0x008a630c    89720c
                         {disp8} mov      dword ptr [edx + 0x10], esp             // 0x008a630f    896210
                         mov              eax, dword ptr [esp]                    // 0x008a6312    8b0424
                         {disp8} mov      dword ptr [edx + 0x14], eax             // 0x008a6315    894214
                         {disp8} mov      dword ptr [edx + 0x20], 0x56433230      // 0x008a6318    c7422030324356
                         {disp8} mov      dword ptr [edx + 0x24], 0x00000000      // 0x008a631f    c7422400000000
                         {disp32} mov     eax, fs:[0x0]                           // 0x008a6326    64a100000000
                         {disp8} mov      dword ptr [edx + 0x18], eax             // 0x008a632c    894218
                         cmp              eax, -0x01                              // 0x008a632f    83f8ff
                         {disp8} jne      _jmp_addr_0x008a633d                    // 0x008a6332    7509
                         {disp8} mov      dword ptr [edx + 0x1c], 0xffffffff      // 0x008a6334    c7421cffffffff
                         {disp8} jmp      _jmp_addr_0x008a6378                    // 0x008a633b    eb3b
_jmp_addr_0x008a633d:    {disp8} mov      ecx, dword ptr [esp + 0x08]             // 0x008a633d    8b4c2408
                         or.s             ecx, ecx                                // 0x008a6341    0bc9
                         {disp8} je       _jmp_addr_0x008a634f                    // 0x008a6343    740a
                         {disp8} mov      eax, dword ptr [esp + 0x0c]             // 0x008a6345    8b44240c
                         {disp8} mov      dword ptr [edx + 0x24], eax             // 0x008a6349    894224
                         dec              ecx                                     // 0x008a634c    49
                         {disp8} jne      _jmp_addr_0x008a6357                    // 0x008a634d    7508
_jmp_addr_0x008a634f:    {disp8} mov      eax, dword ptr [eax + 0x0c]             // 0x008a634f    8b400c
                         {disp8} mov      dword ptr [edx + 0x1c], eax             // 0x008a6352    89421c
                         {disp8} jmp      _jmp_addr_0x008a6378                    // 0x008a6355    eb21
_jmp_addr_0x008a6357:    {disp8} mov      eax, dword ptr [esp + 0x10]             // 0x008a6357    8b442410
                         {disp8} mov      dword ptr [edx + 0x1c], eax             // 0x008a635b    89421c
                         dec              ecx                                     // 0x008a635e    49
                         {disp8} je       _jmp_addr_0x008a6378                    // 0x008a635f    7417
                         push             esi                                     // 0x008a6361    56
                         push             edi                                     // 0x008a6362    57
                         {disp8} lea      esi, dword ptr [esp + 0x1c]             // 0x008a6363    8d74241c
                         {disp8} lea      edi, dword ptr [edx + 0x28]             // 0x008a6367    8d7a28
                         cmp              ecx, 0x06                               // 0x008a636a    83f906
                         {disp8} jbe      _jmp_addr_0x008a6374                    // 0x008a636d    7605
                         mov              ecx, 0x00000006                         // 0x008a636f    b906000000
_jmp_addr_0x008a6374:    rep movsd        es:[edi], dword ptr ds:[esi]            // 0x008a6374    f3a5
                         pop              edi                                     // 0x008a6376    5f
                         pop              esi                                     // 0x008a6377    5e
_jmp_addr_0x008a6378:    sub.s            eax, eax                                // 0x008a6378    2bc0
                         ret                                                      // 0x008a637a    c3


// LIBCMT.LIB/build/intel/mt_obj/mbtouppr.obj
_mbctoupper:             push             ebp                                     // 0x008a637b    55
                         mov.s            ebp, esp                                // 0x008a637c    8bec
                         push             ecx                                     // 0x008a637e    51
                         push             ebx                                     // 0x008a637f    53
                         {disp8} mov      ebx, dword ptr [ebp + 0x08]             // 0x008a6380    8b5d08
                         cmp              ebx, 0x000000ff                         // 0x008a6383    81fbff000000
                         {disp8} jbe      _jmp_addr_0x008a63dc                    // 0x008a6389    7651
                         mov.s            eax, ebx                                // 0x008a638b    8bc3
                         {disp8} mov      byte ptr [ebp + 0x0b], bl               // 0x008a638d    885d0b
                         shr              eax, 8                                  // 0x008a6390    c1e808
                         {disp8} mov      byte ptr [ebp + 0x0a], al               // 0x008a6393    88450a
                         movzx            eax, al                                 // 0x008a6396    0fb6c0
                         test             byte ptr [eax + 0x00facb81], 0x04       // 0x008a6399    f68081cbfa0004
                         {disp8} je       _jmp_addr_0x008a63f1                    // 0x008a63a0    744f
                         push             0x1                                     // 0x008a63a2    6a01
                         {disp8} lea      eax, dword ptr [ebp + -0x04]            // 0x008a63a4    8d45fc
                         push             dword ptr [data_bytes + 0x5e6a64]       // 0x008a63a7    ff3564cafa00
                         push             0x2                                     // 0x008a63ad    6a02
                         push             eax                                     // 0x008a63af    50
                         {disp8} lea      eax, dword ptr [ebp + 0x0a]             // 0x008a63b0    8d450a
                         push             0x2                                     // 0x008a63b3    6a02
                         push             eax                                     // 0x008a63b5    50
                         push             0x00000200                              // 0x008a63b6    6800020000
                         push             dword ptr [data_bytes + 0x5e6c84]       // 0x008a63bb    ff3584ccfa00
                         call             _jmp_addr_0x007cb744                    // 0x008a63c1    e87e53f2ff
                         add              esp, 0x20                               // 0x008a63c6    83c420
                         test             eax, eax                                // 0x008a63c9    85c0
                         {disp8} je       _jmp_addr_0x008a63f1                    // 0x008a63cb    7424
                         movzx            eax, byte ptr [ebp + -0x04]             // 0x008a63cd    0fb645fc
                         movzx            ecx, byte ptr [ebp + -0x03]             // 0x008a63d1    0fb64dfd
                         shl              eax, 8                                  // 0x008a63d5    c1e008
                         add.s            eax, ecx                                // 0x008a63d8    03c1
                         {disp8} jmp      _jmp_addr_0x008a63f3                    // 0x008a63da    eb17
_jmp_addr_0x008a63dc:    {disp32} mov     al, byte ptr [ebx + 0x00facb81]         // 0x008a63dc    8a8381cbfa00
                         and              al, 0x20                                // 0x008a63e2    2420
                         cmp              al, 0x20                                // 0x008a63e4    3c20
                         {disp8} jne      _jmp_addr_0x008a63f1                    // 0x008a63e6    7509
                         movzx            eax, byte ptr [ebx + __mbcasemap]       // 0x008a63e8    0fb68380cafa00
                         {disp8} jmp      _jmp_addr_0x008a63f3                    // 0x008a63ef    eb02
_jmp_addr_0x008a63f1:    mov.s            eax, ebx                                // 0x008a63f1    8bc3
_jmp_addr_0x008a63f3:    pop              ebx                                     // 0x008a63f3    5b
                         leave                                                    // 0x008a63f4    c9
                         ret                                                      // 0x008a63f5    c3


// LIBCMT.LIB/build/intel/mt_obj/sehsupp.obj
__rt_probe_read:         push             ebp                                     // 0x008a63f6    55
                         mov.s            ebp, esp                                // 0x008a63f7    8bec
                         push             -0x1                                    // 0x008a63f9    6aff
                         push             0x009a62c8                              // 0x008a63fb    68c8629a00
                         push             0x007cd8ac                              // 0x008a6400    68acd87c00
                         {disp32} mov     eax, fs:[0x0]                           // 0x008a6405    64a100000000
                         push             eax                                     // 0x008a640b    50
                         {disp32} mov     fs:[0x0], esp                           // 0x008a640c    64892500000000
                         sub              esp, 0x10                               // 0x008a6413    83ec10
                         push             ebx                                     // 0x008a6416    53
                         push             esi                                     // 0x008a6417    56
                         push             edi                                     // 0x008a6418    57
                         {disp8} mov      dword ptr [ebp + -0x18], esp            // 0x008a6419    8965e8
                         and              dword ptr [ebp + -0x04], 0x00           // 0x008a641c    8365fc00
                         {disp8} mov      eax, dword ptr [ebp + 0x08]             // 0x008a6420    8b4508
                         mov              eax, dword ptr [eax]                    // 0x008a6423    8b00
                         push             0x1                                     // 0x008a6425    6a01
                         pop              eax                                     // 0x008a6427    58
                         {disp8} mov      dword ptr [ebp + -0x1c], eax            // 0x008a6428    8945e4
                         {disp8} jmp      _jmp_addr_0x008a6446                    // 0x008a642b    eb19
                         {disp8} mov      eax, dword ptr [ebp + -0x14]            // 0x008a642d    8b45ec
                         mov              eax, dword ptr [eax]                    // 0x008a6430    8b00
                         mov              eax, dword ptr [eax]                    // 0x008a6432    8b00
                         xor.s            ecx, ecx                                // 0x008a6434    33c9
                         cmp              eax, 0xc0000005                         // 0x008a6436    3d050000c0
                         sete             cl                                      // 0x008a643b    0f94c1
                         mov.s            eax, ecx                                // 0x008a643e    8bc1
                         ret                                                      // 0x008a6440    c3
                         {disp8} mov      esp, dword ptr [ebp + -0x18]            // 0x008a6441    8b65e8
                         xor.s            eax, eax                                // 0x008a6444    33c0
_jmp_addr_0x008a6446:    or               dword ptr [ebp - 4], 0xffffffff         // 0x008a6446    834dfcff
                         {disp8} mov      ecx, dword ptr [ebp + -0x10]            // 0x008a644a    8b4df0
                         {disp32} mov     fs:[0x0], ecx                           // 0x008a644d    64890d00000000
                         pop              edi                                     // 0x008a6454    5f
                         pop              esi                                     // 0x008a6455    5e
                         pop              ebx                                     // 0x008a6456    5b
                         leave                                                    // 0x008a6457    c9
                         ret              0x0004                                  // 0x008a6458    c20400
                         int3                                                     // 0x008a645b    cc
                         int3                                                     // 0x008a645c    cc
                         int3                                                     // 0x008a645d    cc
                         int3                                                     // 0x008a645e    cc
                         int3                                                     // 0x008a645f    cc
