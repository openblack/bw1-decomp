.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.globl _jmp_addr_0x00899040

start_0x00899040_0x00899340:
// Snippet: asm, [0x00899040, 0x0089931a)
_jmp_addr_0x00899040:    push             ebx                                      // 0x00899040    53
                         push             esi                                      // 0x00899041    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]              // 0x00899042    8b74240c
                         push             edi                                      // 0x00899046    57
                         cmp              dword ptr [esi + 0x14], 0x64             // 0x00899047    837e1464
                         {disp8} je       _jmp_addr_0x00899066                     // 0x0089904b    7419
                         mov              eax, dword ptr [esi]                     // 0x0089904d    8b06
                         push             esi                                      // 0x0089904f    56
                         {disp8} mov      dword ptr [eax + 0x14], 0x00000014       // 0x00899050    c7401414000000
                         mov              ecx, dword ptr [esi]                     // 0x00899057    8b0e
                         {disp8} mov      edx, dword ptr [esi + 0x14]              // 0x00899059    8b5614
                         {disp8} mov      dword ptr [ecx + 0x18], edx              // 0x0089905c    895118
                         mov              eax, dword ptr [esi]                     // 0x0089905f    8b06
                         call             dword ptr [eax]                          // 0x00899061    ff10
                         add              esp, 0x04                                // 0x00899063    83c404
_jmp_addr_0x00899066:    {disp8} mov      eax, dword ptr [esp + 0x14]              // 0x00899066    8b442414
                         {disp32} mov     byte ptr [esi + 0x000000c4], 0x00        // 0x0089906a    c686c400000000
                         cmp              eax, 0x05                                // 0x00899071    83f805
                         {disp8} mov      dword ptr [esi + 0x40], eax              // 0x00899074    894640
                         {disp32} mov     byte ptr [esi + 0x000000cc], 0x00        // 0x00899077    c686cc00000000
                         {disp32} ja      _jmp_addr_0x00899305                     // 0x0089907e    0f8781020000
                         jmp              dword ptr [eax*4 + 0x89931c]             // 0x00899084    ff24851c938900
                         mov              ebx, 0x00000001                          // 0x0089908b    bb01000000
                         xor.s            eax, eax                                 // 0x00899090    33c0
                         {disp32} mov     byte ptr [esi + 0x000000c4], bl          // 0x00899092    889ec4000000
                         {disp8} mov      dword ptr [esi + 0x3c], ebx              // 0x00899098    895e3c
                         {disp8} mov      esi, dword ptr [esi + 0x44]              // 0x0089909b    8b7644
                         pop              edi                                      // 0x0089909e    5f
                         mov              dword ptr [esi], ebx                     // 0x0089909f    891e
                         {disp8} mov      dword ptr [esi + 0x08], ebx              // 0x008990a1    895e08
                         {disp8} mov      dword ptr [esi + 0x0c], ebx              // 0x008990a4    895e0c
                         {disp8} mov      dword ptr [esi + 0x10], eax              // 0x008990a7    894610
                         {disp8} mov      dword ptr [esi + 0x14], eax              // 0x008990aa    894614
                         {disp8} mov      dword ptr [esi + 0x18], eax              // 0x008990ad    894618
                         pop              esi                                      // 0x008990b0    5e
                         pop              ebx                                      // 0x008990b1    5b
                         ret                                                       // 0x008990b2    c3
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x008990b3    8b4644
                         mov              ebx, 0x00000001                          // 0x008990b6    bb01000000
                         xor.s            ecx, ecx                                 // 0x008990bb    33c9
                         {disp32} mov     byte ptr [esi + 0x000000cc], bl          // 0x008990bd    889ecc000000
                         {disp8} mov      dword ptr [esi + 0x3c], 0x00000003       // 0x008990c3    c7463c03000000
                         mov              dword ptr [eax], 0x00000052              // 0x008990ca    c70052000000
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x008990d0    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x008990d3    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ecx              // 0x008990d6    894810
                         {disp8} mov      dword ptr [eax + 0x14], ecx              // 0x008990d9    894814
                         {disp8} mov      dword ptr [eax + 0x18], ecx              // 0x008990dc    894818
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x008990df    8b4644
                         add              eax, 0x54                                // 0x008990e2    83c054
                         pop              edi                                      // 0x008990e5    5f
                         mov              dword ptr [eax], 0x00000047              // 0x008990e6    c70047000000
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x008990ec    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x008990ef    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ecx              // 0x008990f2    894810
                         {disp8} mov      dword ptr [eax + 0x14], ecx              // 0x008990f5    894814
                         {disp8} mov      dword ptr [eax + 0x18], ecx              // 0x008990f8    894818
                         {disp8} mov      esi, dword ptr [esi + 0x44]              // 0x008990fb    8b7644
                         {disp32} mov     dword ptr [esi + 0x000000a8], 0x00000042 // 0x008990fe    c786a800000042000000
                         add              esi, 0x000000a8                          // 0x00899108    81c6a8000000
                         {disp8} mov      dword ptr [esi + 0x08], ebx              // 0x0089910e    895e08
                         {disp8} mov      dword ptr [esi + 0x0c], ebx              // 0x00899111    895e0c
                         {disp8} mov      dword ptr [esi + 0x10], ecx              // 0x00899114    894e10
                         {disp8} mov      dword ptr [esi + 0x14], ecx              // 0x00899117    894e14
                         {disp8} mov      dword ptr [esi + 0x18], ecx              // 0x0089911a    894e18
                         pop              esi                                      // 0x0089911d    5e
                         pop              ebx                                      // 0x0089911e    5b
                         ret                                                       // 0x0089911f    c3
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x00899120    8b4644
                         mov              ebx, 0x00000001                          // 0x00899123    bb01000000
                         mov              edx, 0x00000002                          // 0x00899128    ba02000000
                         xor.s            ecx, ecx                                 // 0x0089912d    33c9
                         {disp32} mov     byte ptr [esi + 0x000000c4], bl          // 0x0089912f    889ec4000000
                         {disp8} mov      dword ptr [esi + 0x3c], 0x00000003       // 0x00899135    c7463c03000000
                         mov              dword ptr [eax], ebx                     // 0x0089913c    8918
                         {disp8} mov      dword ptr [eax + 0x08], edx              // 0x0089913e    895008
                         {disp8} mov      dword ptr [eax + 0x0c], edx              // 0x00899141    89500c
                         {disp8} mov      dword ptr [eax + 0x10], ecx              // 0x00899144    894810
                         {disp8} mov      dword ptr [eax + 0x14], ecx              // 0x00899147    894814
                         {disp8} mov      dword ptr [eax + 0x18], ecx              // 0x0089914a    894818
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x0089914d    8b4644
                         {disp8} mov      dword ptr [eax + 0x54], edx              // 0x00899150    895054
                         add              eax, 0x54                                // 0x00899153    83c054
                         pop              edi                                      // 0x00899156    5f
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x00899157    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x0089915a    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ebx              // 0x0089915d    895810
                         {disp8} mov      dword ptr [eax + 0x14], ebx              // 0x00899160    895814
                         {disp8} mov      dword ptr [eax + 0x18], ebx              // 0x00899163    895818
                         {disp8} mov      esi, dword ptr [esi + 0x44]              // 0x00899166    8b7644
                         add              esi, 0x000000a8                          // 0x00899169    81c6a8000000
                         mov              dword ptr [esi], 0x00000003              // 0x0089916f    c70603000000
                         {disp8} mov      dword ptr [esi + 0x08], ebx              // 0x00899175    895e08
                         {disp8} mov      dword ptr [esi + 0x0c], ebx              // 0x00899178    895e0c
                         {disp8} mov      dword ptr [esi + 0x10], ebx              // 0x0089917b    895e10
                         {disp8} mov      dword ptr [esi + 0x14], ebx              // 0x0089917e    895e14
                         {disp8} mov      dword ptr [esi + 0x18], ebx              // 0x00899181    895e18
                         pop              esi                                      // 0x00899184    5e
                         pop              ebx                                      // 0x00899185    5b
                         ret                                                       // 0x00899186    c3
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x00899187    8b4644
                         mov              ebx, 0x00000001                          // 0x0089918a    bb01000000
                         xor.s            ecx, ecx                                 // 0x0089918f    33c9
                         {disp32} mov     byte ptr [esi + 0x000000cc], bl          // 0x00899191    889ecc000000
                         {disp8} mov      dword ptr [esi + 0x3c], 0x00000004       // 0x00899197    c7463c04000000
                         mov              dword ptr [eax], 0x00000043              // 0x0089919e    c70043000000
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x008991a4    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x008991a7    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ecx              // 0x008991aa    894810
                         {disp8} mov      dword ptr [eax + 0x14], ecx              // 0x008991ad    894814
                         {disp8} mov      dword ptr [eax + 0x18], ecx              // 0x008991b0    894818
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x008991b3    8b4644
                         add              eax, 0x54                                // 0x008991b6    83c054
                         pop              edi                                      // 0x008991b9    5f
                         mov              dword ptr [eax], 0x0000004d              // 0x008991ba    c7004d000000
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x008991c0    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x008991c3    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ecx              // 0x008991c6    894810
                         {disp8} mov      dword ptr [eax + 0x14], ecx              // 0x008991c9    894814
                         {disp8} mov      dword ptr [eax + 0x18], ecx              // 0x008991cc    894818
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x008991cf    8b4644
                         {disp32} mov     dword ptr [eax + 0x000000a8], 0x00000059 // 0x008991d2    c780a800000059000000
                         add              eax, 0x000000a8                          // 0x008991dc    05a8000000
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x008991e1    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x008991e4    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ecx              // 0x008991e7    894810
                         {disp8} mov      dword ptr [eax + 0x14], ecx              // 0x008991ea    894814
                         {disp8} mov      dword ptr [eax + 0x18], ecx              // 0x008991ed    894818
                         {disp8} mov      esi, dword ptr [esi + 0x44]              // 0x008991f0    8b7644
                         add              esi, 0x000000fc                          // 0x008991f3    81c6fc000000
                         mov              dword ptr [esi], 0x0000004b              // 0x008991f9    c7064b000000
                         {disp8} mov      dword ptr [esi + 0x08], ebx              // 0x008991ff    895e08
                         {disp8} mov      dword ptr [esi + 0x0c], ebx              // 0x00899202    895e0c
                         {disp8} mov      dword ptr [esi + 0x10], ecx              // 0x00899205    894e10
                         {disp8} mov      dword ptr [esi + 0x14], ecx              // 0x00899208    894e14
                         {disp8} mov      dword ptr [esi + 0x18], ecx              // 0x0089920b    894e18
                         pop              esi                                      // 0x0089920e    5e
                         pop              ebx                                      // 0x0089920f    5b
                         ret                                                       // 0x00899210    c3
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x00899211    8b4644
                         mov              ebx, 0x00000001                          // 0x00899214    bb01000000
                         mov              edx, 0x00000002                          // 0x00899219    ba02000000
                         xor.s            ecx, ecx                                 // 0x0089921e    33c9
                         {disp32} mov     byte ptr [esi + 0x000000cc], bl          // 0x00899220    889ecc000000
                         {disp8} mov      dword ptr [esi + 0x3c], 0x00000004       // 0x00899226    c7463c04000000
                         mov              dword ptr [eax], ebx                     // 0x0089922d    8918
                         {disp8} mov      dword ptr [eax + 0x08], edx              // 0x0089922f    895008
                         {disp8} mov      dword ptr [eax + 0x0c], edx              // 0x00899232    89500c
                         {disp8} mov      dword ptr [eax + 0x10], ecx              // 0x00899235    894810
                         {disp8} mov      dword ptr [eax + 0x14], ecx              // 0x00899238    894814
                         {disp8} mov      dword ptr [eax + 0x18], ecx              // 0x0089923b    894818
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x0089923e    8b4644
                         {disp8} mov      dword ptr [eax + 0x54], edx              // 0x00899241    895054
                         add              eax, 0x54                                // 0x00899244    83c054
                         pop              edi                                      // 0x00899247    5f
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x00899248    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x0089924b    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ebx              // 0x0089924e    895810
                         {disp8} mov      dword ptr [eax + 0x14], ebx              // 0x00899251    895814
                         {disp8} mov      dword ptr [eax + 0x18], ebx              // 0x00899254    895818
                         {disp8} mov      eax, dword ptr [esi + 0x44]              // 0x00899257    8b4644
                         add              eax, 0x000000a8                          // 0x0089925a    05a8000000
                         mov              dword ptr [eax], 0x00000003              // 0x0089925f    c70003000000
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x00899265    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x00899268    89580c
                         {disp8} mov      dword ptr [eax + 0x10], ebx              // 0x0089926b    895810
                         {disp8} mov      dword ptr [eax + 0x14], ebx              // 0x0089926e    895814
                         {disp8} mov      dword ptr [eax + 0x18], ebx              // 0x00899271    895818
                         {disp8} mov      esi, dword ptr [esi + 0x44]              // 0x00899274    8b7644
                         {disp32} mov     dword ptr [esi + 0x000000fc], 0x00000004 // 0x00899277    c786fc00000004000000
                         add              esi, 0x000000fc                          // 0x00899281    81c6fc000000
                         {disp8} mov      dword ptr [esi + 0x08], edx              // 0x00899287    895608
                         {disp8} mov      dword ptr [esi + 0x0c], edx              // 0x0089928a    89560c
                         {disp8} mov      dword ptr [esi + 0x10], ecx              // 0x0089928d    894e10
                         {disp8} mov      dword ptr [esi + 0x14], ecx              // 0x00899290    894e14
                         {disp8} mov      dword ptr [esi + 0x18], ecx              // 0x00899293    894e18
                         pop              esi                                      // 0x00899296    5e
                         pop              ebx                                      // 0x00899297    5b
                         ret                                                       // 0x00899298    c3
                         {disp8} mov      eax, dword ptr [esi + 0x24]              // 0x00899299    8b4624
                         mov              ebx, 0x00000001                          // 0x0089929c    bb01000000
                         cmp.s            eax, ebx                                 // 0x008992a1    3bc3
                         {disp8} mov      dword ptr [esi + 0x3c], eax              // 0x008992a3    89463c
                         {disp8} jl       _jmp_addr_0x008992ad                     // 0x008992a6    7c05
                         cmp              eax, 0x0a                                // 0x008992a8    83f80a
                         {disp8} jle      _jmp_addr_0x008992cf                     // 0x008992ab    7e22
_jmp_addr_0x008992ad:    mov              ecx, dword ptr [esi]                     // 0x008992ad    8b0e
                         push             esi                                      // 0x008992af    56
                         {disp8} mov      dword ptr [ecx + 0x14], 0x0000001a       // 0x008992b0    c741141a000000
                         mov              edx, dword ptr [esi]                     // 0x008992b7    8b16
                         {disp8} mov      eax, dword ptr [esi + 0x3c]              // 0x008992b9    8b463c
                         {disp8} mov      dword ptr [edx + 0x18], eax              // 0x008992bc    894218
                         mov              ecx, dword ptr [esi]                     // 0x008992bf    8b0e
                         {disp8} mov      dword ptr [ecx + 0x1c], 0x0000000a       // 0x008992c1    c7411c0a000000
                         mov              edx, dword ptr [esi]                     // 0x008992c8    8b16
                         call             dword ptr [edx]                          // 0x008992ca    ff12
                         add              esp, 0x04                                // 0x008992cc    83c404
_jmp_addr_0x008992cf:    {disp8} mov      eax, dword ptr [esi + 0x3c]              // 0x008992cf    8b463c
                         xor.s            edi, edi                                 // 0x008992d2    33ff
                         xor.s            ecx, ecx                                 // 0x008992d4    33c9
                         cmp.s            eax, edi                                 // 0x008992d6    3bc7
                         {disp8} jle      _jmp_addr_0x00899316                     // 0x008992d8    7e3c
                         push             ebp                                      // 0x008992da    55
                         xor.s            edx, edx                                 // 0x008992db    33d2
_jmp_addr_0x008992dd:    {disp8} mov      ebp, dword ptr [esi + 0x44]              // 0x008992dd    8b6e44
                         mov.s            eax, edx                                 // 0x008992e0    8bc2
                         add.s            eax, ebp                                 // 0x008992e2    03c5
                         add              edx, 0x54                                // 0x008992e4    83c254
                         mov              dword ptr [eax], ecx                     // 0x008992e7    8908
                         {disp8} mov      dword ptr [eax + 0x08], ebx              // 0x008992e9    895808
                         {disp8} mov      dword ptr [eax + 0x0c], ebx              // 0x008992ec    89580c
                         {disp8} mov      dword ptr [eax + 0x10], edi              // 0x008992ef    897810
                         {disp8} mov      dword ptr [eax + 0x14], edi              // 0x008992f2    897814
                         {disp8} mov      dword ptr [eax + 0x18], edi              // 0x008992f5    897818
                         {disp8} mov      eax, dword ptr [esi + 0x3c]              // 0x008992f8    8b463c
                         inc              ecx                                      // 0x008992fb    41
                         cmp.s            ecx, eax                                 // 0x008992fc    3bc8
                         {disp8} jl       _jmp_addr_0x008992dd                     // 0x008992fe    7cdd
                         pop              ebp                                      // 0x00899300    5d
                         pop              edi                                      // 0x00899301    5f
                         pop              esi                                      // 0x00899302    5e
                         pop              ebx                                      // 0x00899303    5b
                         ret                                                       // 0x00899304    c3
_jmp_addr_0x00899305:    mov              eax, dword ptr [esi]                     // 0x00899305    8b06
                         push             esi                                      // 0x00899307    56
                         {disp8} mov      dword ptr [eax + 0x14], 0x0000000a       // 0x00899308    c740140a000000
                         mov              ecx, dword ptr [esi]                     // 0x0089930f    8b0e
                         call             dword ptr [ecx]                          // 0x00899311    ff11
                         add              esp, 0x04                                // 0x00899313    83c404
_jmp_addr_0x00899316:    pop              edi                                      // 0x00899316    5f
                         pop              esi                                      // 0x00899317    5e
                         pop              ebx                                      // 0x00899318    5b
                         ret                                                       // 0x00899319    c3

// Snippet: db, [0x0089931a, 0x0089931c)
.byte 0x8b, 0xff                  // 0x0089931a

// Snippet: jmptbl, [0x0089931c, 0x00899334)
.byte 0x99, 0x92, 0x89, 0x00      // 0x0089931c
.byte 0x8b, 0x90, 0x89, 0x00      // 0x00899320
.byte 0xb3, 0x90, 0x89, 0x00      // 0x00899324
.byte 0x20, 0x91, 0x89, 0x00      // 0x00899328
.byte 0x87, 0x91, 0x89, 0x00      // 0x0089932c
.byte 0x11, 0x92, 0x89, 0x00      // 0x00899330

// Snippet: db, [0x00899334, 0x00899340)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00899334
.byte 0x90, 0x90, 0x90, 0x90      // 0x00899338
.byte 0x90, 0x90, 0x90, 0x90      // 0x0089933c

