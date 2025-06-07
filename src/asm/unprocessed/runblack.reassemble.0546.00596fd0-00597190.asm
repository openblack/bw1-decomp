.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @IsReadyForNewAnimation__6LivingFUl@12

.globl _jmp_addr_0x00596fd0

start_0x00596fd0_0x00597190:
// Snippet: asm, [0x00596fd0, 0x0059716d)
_jmp_addr_0x00596fd0:    sub                esp, 0x08                          // 0x00596fd0    83ec08
                         {disp8} mov        edx, dword ptr [esp + 0x10]        // 0x00596fd3    8b542410
                         push               ebx                                // 0x00596fd7    53
                         push               ebp                                // 0x00596fd8    55
                         push               esi                                // 0x00596fd9    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]        // 0x00596fda    8b742418
                         push               edi                                // 0x00596fde    57
                         {disp8} lea        ebx, dword ptr [esi + 0x5c]        // 0x00596fdf    8d5e5c
                         mov.s              eax, edx                           // 0x00596fe2    8bc2
                         mov                ebp, dword ptr [eax]               // 0x00596fe4    8b28
                         mov.s              edi, ebx                           // 0x00596fe6    8bfb
                         mov                dword ptr [edi], ebp               // 0x00596fe8    892f
                         {disp8} mov        ebp, dword ptr [eax + 0x04]        // 0x00596fea    8b6804
                         {disp8} mov        dword ptr [edi + 0x04], ebp        // 0x00596fed    896f04
                         {disp8} mov        ebp, dword ptr [eax + 0x08]        // 0x00596ff0    8b6808
                         {disp8} mov        dword ptr [edi + 0x08], ebp        // 0x00596ff3    896f08
                         {disp8} mov        eax, dword ptr [eax + 0x0c]        // 0x00596ff6    8b400c
                         {disp8} mov        ebp, dword ptr [esp + 0x24]        // 0x00596ff9    8b6c2424
                         {disp8} mov        dword ptr [edi + 0x0c], eax        // 0x00596ffd    89470c
                         {disp8} mov        edi, dword ptr [edx + 0x0c]        // 0x00597000    8b7a0c
                         mov.s              eax, edi                           // 0x00597003    8bc7
                         sub.s              eax, ebp                           // 0x00597005    2bc5
                         {disp8} mov        dword ptr [esp + 0x1c], eax        // 0x00597007    8944241c
                         {disp8} fild       dword ptr [esp + 0x1c]             // 0x0059700b    db44241c
                         {disp32} fcom      dword ptr [_rdata_float0p0]        // 0x0059700f    d81598a38a00
                         fnstsw             ax                                 // 0x00597015    dfe0
                         test               ah, 0x41                           // 0x00597017    f6c441
                         {disp8} jne        _jmp_addr_0x0059702c               // 0x0059701a    7510
                         {disp32} fld       dword ptr [ecx + 0x0000009c]       // 0x0059701c    d9819c000000
                         fdiv               st, st(1)                          // 0x00597022    d8f1
                         {disp8} fstp       dword ptr [esp + 0x1c]             // 0x00597024    d95c241c
                         fstp               st(0)                              // 0x00597028    ddd8
                         {disp8} jmp        _jmp_addr_0x00597036               // 0x0059702a    eb0a
_jmp_addr_0x0059702c:    fstp               st(0)                              // 0x0059702c    ddd8
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000 // 0x0059702e    c744241c00000000
_jmp_addr_0x00597036:    mov                ebx, dword ptr [ebx]               // 0x00597036    8b1b
                         {disp8} lea        eax, dword ptr [ebx + -0x01]       // 0x00597038    8d43ff
                         cmp                eax, 0x0b                          // 0x0059703b    83f80b
                         {disp32} ja        _jmp_addr_0x0059710a               // 0x0059703e    0f87c6000000
                         xor.s              ecx, ecx                           // 0x00597044    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00597184]    // 0x00597046    8a8884715900
                         jmp                dword ptr [ecx*4 + 0x597170]       // 0x0059704c    ff248d70715900
                         cmp.s              edi, ebp                           // 0x00597053    3bfd
                         {disp32} jle       _jmp_addr_0x0059710a               // 0x00597055    0f8eaf000000
                         {disp8} fld        dword ptr [esp + 0x1c]             // 0x0059705b    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2b5cc]  // 0x0059705f    d80dcc458d00
                         {disp8} fstp       dword ptr [esi + 0x34]             // 0x00597065    d95e34
                         {disp32} jmp       _jmp_addr_0x0059710a               // 0x00597068    e99d000000
                         cmp.s              edi, ebp                           // 0x0059706d    3bfd
                         {disp32} jle       _jmp_addr_0x0059710a               // 0x0059706f    0f8e95000000
                         {disp8} fld        dword ptr [esi + 0x58]             // 0x00597075    d94658
                         {disp8} mov        eax, dword ptr [edx + 0x04]        // 0x00597078    8b4204
                         {disp8} fcomp      dword ptr [edx + 0x08]             // 0x0059707b    d85a08
                         cmp                eax, 0x01                          // 0x0059707e    83f801
                         fnstsw             ax                                 // 0x00597081    dfe0
                         {disp8} jne        _jmp_addr_0x00597099               // 0x00597083    7514
                         test               ah, 0x01                           // 0x00597085    f6c401
                         {disp8} fld        dword ptr [esi + 0x58]             // 0x00597088    d94658
                         {disp8} je         _jmp_addr_0x005970ad               // 0x0059708b    7420
                         {disp8} fsubr      dword ptr [edx + 0x08]             // 0x0059708d    d86a08
                         {disp8} fmul       dword ptr [esp + 0x1c]             // 0x00597090    d84c241c
                         {disp8} fstp       dword ptr [esi + 0x38]             // 0x00597094    d95e38
                         {disp8} jmp        _jmp_addr_0x0059710a               // 0x00597097    eb71
_jmp_addr_0x00597099:    test               ah, 0x41                           // 0x00597099    f6c441
                         {disp8} fld        dword ptr [esi + 0x58]             // 0x0059709c    d94658
                         {disp8} jne        _jmp_addr_0x005970ad               // 0x0059709f    750c
                         {disp8} fsubr      dword ptr [edx + 0x08]             // 0x005970a1    d86a08
                         {disp8} fmul       dword ptr [esp + 0x1c]             // 0x005970a4    d84c241c
                         {disp8} fstp       dword ptr [esi + 0x38]             // 0x005970a8    d95e38
                         {disp8} jmp        _jmp_addr_0x0059710a               // 0x005970ab    eb5d
_jmp_addr_0x005970ad:    {disp32} fsubr     dword ptr [rdata_bytes + 0x28678]  // 0x005970ad    d82d78168d00
                         {disp8} fadd       dword ptr [edx + 0x08]             // 0x005970b3    d84208
                         {disp8} fmul       dword ptr [esp + 0x1c]             // 0x005970b6    d84c241c
                         {disp8} fstp       dword ptr [esi + 0x38]             // 0x005970ba    d95e38
                         {disp8} jmp        _jmp_addr_0x0059710a               // 0x005970bd    eb4b
                         cmp.s              edi, ebp                           // 0x005970bf    3bfd
                         {disp8} jle        _jmp_addr_0x0059710a               // 0x005970c1    7e47
                         {disp8} fld        dword ptr [esi + 0x50]             // 0x005970c3    d94650
                         {disp8} fsubr      dword ptr [edx + 0x04]             // 0x005970c6    d86a04
                         {disp8} fmul       dword ptr [esp + 0x1c]             // 0x005970c9    d84c241c
                         {disp8} fstp       dword ptr [esi + 0x30]             // 0x005970cd    d95e30
                         {disp8} jmp        _jmp_addr_0x0059710a               // 0x005970d0    eb38
                         cmp.s              edi, ebp                           // 0x005970d2    3bfd
                         {disp8} jle        _jmp_addr_0x0059710a               // 0x005970d4    7e34
                         {disp8} mov        eax, dword ptr [edx + 0x04]        // 0x005970d6    8b4204
                         {disp8} mov        ecx, dword ptr [edx + 0x08]        // 0x005970d9    8b4a08
                         {disp8} mov        dword ptr [esp + 0x10], eax        // 0x005970dc    89442410
                         {disp8} fld        dword ptr [esp + 0x10]             // 0x005970e0    d9442410
                         {disp8} fmul       dword ptr [esp + 0x1c]             // 0x005970e4    d84c241c
                         {disp8} mov        dword ptr [esp + 0x14], ecx        // 0x005970e8    894c2414
                         {disp8} fstp       dword ptr [esp + 0x10]             // 0x005970ec    d95c2410
                         {disp8} mov        edx, dword ptr [esp + 0x10]        // 0x005970f0    8b542410
                         {disp8} fld        dword ptr [esp + 0x14]             // 0x005970f4    d9442414
                         {disp8} mov        dword ptr [esi + 0x28], edx        // 0x005970f8    895628
                         {disp8} fmul       dword ptr [esp + 0x1c]             // 0x005970fb    d84c241c
                         {disp8} fstp       dword ptr [esp + 0x14]             // 0x005970ff    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]        // 0x00597103    8b442414
                         {disp8} mov        dword ptr [esi + 0x2c], eax        // 0x00597107    89462c
_jmp_addr_0x0059710a:    {disp8} mov        edi, dword ptr [esi + 0x1c]        // 0x0059710a    8b7e1c
                         xor.s              ebx, ebx                           // 0x0059710d    33db
                         cmp.s              edi, ebx                           // 0x0059710f    3bfb
                         {disp8} je         _jmp_addr_0x00597163               // 0x00597111    7450
_jmp_addr_0x00597113:    {disp8} mov        esi, dword ptr [edi + 0x04]        // 0x00597113    8b7704
                         mov                edx, dword ptr [esi]               // 0x00597116    8b16
                         mov.s              ecx, esi                           // 0x00597118    8bce
                         call               dword ptr [edx + 0x34]             // 0x0059711a    ff5234
                         test               eax, eax                           // 0x0059711d    85c0
                         {disp8} jne        _jmp_addr_0x0059715d               // 0x0059711f    753c
                         mov                eax, dword ptr [esi]               // 0x00597121    8b06
                         push               0x1                                // 0x00597123    6a01
                         mov.s              ecx, esi                           // 0x00597125    8bce
                         call               dword ptr [eax + 0x8fc]            // 0x00597127    ff90fc080000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]        // 0x0059712d    8b4e40
                         mov                edx, dword ptr [ecx]               // 0x00597130    8b11
                         call               dword ptr [edx + 0x184]            // 0x00597132    ff9284010000
                         test               eax, eax                           // 0x00597138    85c0
                         {disp8} je         _jmp_addr_0x0059715d               // 0x0059713a    7421
                         push               0x1                                // 0x0059713c    6a01
                         mov.s              ecx, esi                           // 0x0059713e    8bce
                         call               @IsReadyForNewAnimation__6LivingFUl@12               // 0x00597140    e81b580500
                         test               eax, eax                           // 0x00597145    85c0
                         {disp8} je         _jmp_addr_0x0059715d               // 0x00597147    7414
                         {disp8} mov        ecx, dword ptr [esi + 0x40]        // 0x00597149    8b4e40
                         mov                eax, dword ptr [ecx]               // 0x0059714c    8b01
                         xor.s              edx, edx                           // 0x0059714e    33d2
                         call               dword ptr [eax + 0x188]            // 0x00597150    ff9088010000
                         {disp32} mov       word ptr [esi + 0x00000090], bx    // 0x00597156    66899e90000000
_jmp_addr_0x0059715d:    mov                edi, dword ptr [edi]               // 0x0059715d    8b3f
                         cmp.s              edi, ebx                           // 0x0059715f    3bfb
                         {disp8} jne        _jmp_addr_0x00597113               // 0x00597161    75b0
_jmp_addr_0x00597163:    pop                edi                                // 0x00597163    5f
                         pop                esi                                // 0x00597164    5e
                         pop                ebp                                // 0x00597165    5d
                         pop                ebx                                // 0x00597166    5b
                         add                esp, 0x08                          // 0x00597167    83c408
                         ret                0x000c                             // 0x0059716a    c20c00

// Snippet: db, [0x0059716d, 0x00597170)
.byte 0x8d, 0x49, 0x00            // 0x0059716d

// Snippet: jmptbl, [0x00597170, 0x00597184)
.byte 0x53, 0x70, 0x59, 0x00      // 0x00597170
.byte 0x6d, 0x70, 0x59, 0x00      // 0x00597174
.byte 0xbf, 0x70, 0x59, 0x00      // 0x00597178
.byte 0xd2, 0x70, 0x59, 0x00      // 0x0059717c
.byte 0x0a, 0x71, 0x59, 0x00      // 0x00597180

// Snippet: ijmptbl, [0x00597184, 0x00597190)
.byte 0x00, 0x04, 0x04, 0x04      // 0x00597184
.byte 0x04, 0x04, 0x04, 0x04      // 0x00597188
.byte 0x01, 0x04, 0x02, 0x03      // 0x0059718c

