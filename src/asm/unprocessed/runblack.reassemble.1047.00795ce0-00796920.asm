.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern _jmp_addr_0x00418a50
.extern @Update__6ZoomerFf@12
.extern @SetDestinationWithTime__8Zoomer3dFRC7LHPointf@16
.extern _jmp_addr_0x00470af0
.extern _jmp_addr_0x00794fb0
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007fac10
.extern _jmp_addr_0x007faff0
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern _jmp_addr_0x0086d4e0

.globl @UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.globl @UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.globl _UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb
.globl _UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb

start_0x00795ce0_0x00796920:
// Snippet: asm, [0x00795ce0, 0x0079690c)
_UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb:
@UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29:    sub                esp, 0x00000090                               // 0x00795ce0    81ec90000000
                         push               ebx                                           // 0x00795ce6    53
                         push               ebp                                           // 0x00795ce7    55
                         mov.s              ebp, ecx                                      // 0x00795ce8    8be9
                         {disp32} mov       eax, dword ptr [ebp + 0x00000124]             // 0x00795cea    8b8524010000
                         xor.s              ebx, ebx                                      // 0x00795cf0    33db
                         push               esi                                           // 0x00795cf2    56
                         {disp32} mov       dword ptr [ebp + 0x00000438], eax             // 0x00795cf3    898538040000
                         sub.s              eax, ebx                                      // 0x00795cf9    2bc3
                         push               edi                                           // 0x00795cfb    57
                         {disp32} je        _jmp_addr_0x007961e8                          // 0x00795cfc    0f84e6040000
                         sub                eax, 0x02                                     // 0x00795d02    83e802
                         {disp32} je        _jmp_addr_0x00795e4c                          // 0x00795d05    0f8441010000
                         dec                eax                                           // 0x00795d0b    48
                         {disp8} je         _jmp_addr_0x00795d25                          // 0x00795d0c    7417
                         pop                edi                                           // 0x00795d0e    5f
                         pop                esi                                           // 0x00795d0f    5e
                         {disp32} mov       dword ptr [ebp + 0x00000438], 0x00000002      // 0x00795d10    c7853804000002000000
                         pop                ebp                                           // 0x00795d1a    5d
                         pop                ebx                                           // 0x00795d1b    5b
                         add                esp, 0x00000090                               // 0x00795d1c    81c490000000
                         ret                0x0018                                        // 0x00795d22    c21800
_jmp_addr_0x00795d25:    cmp                dword ptr [esp + 0x000000ac], ebx             // 0x00795d25    399c24ac000000
                         {disp8} je         _jmp_addr_0x00795d40                          // 0x00795d2c    7412
                         cmp                dword ptr [ebp + 0x00000134], ebx             // 0x00795d2e    399d34010000
                         {disp8} jne        _jmp_addr_0x00795d40                          // 0x00795d34    750a
                         {disp32} mov       dword ptr [ebp + 0x00000128], 0x00000003      // 0x00795d36    c7852801000003000000
_jmp_addr_0x00795d40:    cmp                dword ptr [ebp + 0x00000128], ebx             // 0x00795d40    399d28010000
                         {disp32} jne       _jmp_addr_0x00795dfd                          // 0x00795d46    0f85b1000000
                         {disp32} fld       dword ptr [ebp + 0x000003cc]                  // 0x00795d4c    d985cc030000
                         {disp32} fcomp     dword ptr [__real@3fc00000]                   // 0x00795d52    d81d4cb28a00
                         fnstsw             ax                                            // 0x00795d58    dfe0
                         test               ah, 0x41                                      // 0x00795d5a    f6c441
                         {disp32} jne       _jmp_addr_0x00795dfd                          // 0x00795d5d    0f859a000000
                         {disp32} lea       esi, dword ptr [ebp + 0x000003d4]             // 0x00795d63    8db5d4030000
                         {disp32} lea       eax, dword ptr [ebp + 0x000003b4]             // 0x00795d69    8d85b4030000
                         mov                edx, dword ptr [eax]                          // 0x00795d6f    8b10
                         mov.s              ecx, esi                                      // 0x00795d71    8bce
                         mov                dword ptr [ecx], edx                          // 0x00795d73    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00795d75    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00795d78    8b4008
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00795d7b    895104
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x00795d7e    894108
                         {disp32} lea       ecx, dword ptr [ebp + 0x000003c0]             // 0x00795d81    8d8dc0030000
                         mov                eax, dword ptr [ecx]                          // 0x00795d87    8b01
                         {disp32} lea       ebx, dword ptr [ebp + 0x000003e0]             // 0x00795d89    8d9de0030000
                         mov.s              edx, ebx                                      // 0x00795d8f    8bd3
                         mov                dword ptr [edx], eax                          // 0x00795d91    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00795d93    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00795d96    8b4908
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x00795d99    894204
                         push               0x40e00000                                    // 0x00795d9c    680000e040
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00795da1    894a08
                         fld                dword ptr [esi]                               // 0x00795da4    d906
                         push               0x0                                           // 0x00795da6    6a00
                         push               ecx                                           // 0x00795da8    51
                         {disp8} lea        edi, dword ptr [ebp + 0x04]                   // 0x00795da9    8d7d04
                         fstp               dword ptr [esp]                               // 0x00795dac    d91c24
                         mov.s              ecx, edi                                      // 0x00795daf    8bcf
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00795db1    e8aa1fc7ff
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00795db6    d94604
                         push               0x40e00000                                    // 0x00795db9    680000e040
                         push               0x0                                           // 0x00795dbe    6a00
                         push               ecx                                           // 0x00795dc0    51
                         fstp               dword ptr [esp]                               // 0x00795dc1    d91c24
                         {disp8} lea        ecx, dword ptr [edi + 0x30]                   // 0x00795dc4    8d4f30
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00795dc7    e8941fc7ff
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00795dcc    d94608
                         push               0x40e00000                                    // 0x00795dcf    680000e040
                         push               0x0                                           // 0x00795dd4    6a00
                         push               ecx                                           // 0x00795dd6    51
                         fstp               dword ptr [esp]                               // 0x00795dd7    d91c24
                         {disp8} lea        ecx, dword ptr [edi + 0x60]                   // 0x00795dda    8d4f60
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00795ddd    e87e1fc7ff
                         push               0x40e00000                                    // 0x00795de2    680000e040
                         push               ebx                                           // 0x00795de7    53
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000094]             // 0x00795de8    8d8d94000000
                         call               @SetDestinationWithTime__8Zoomer3dFRC7LHPointf@16                          // 0x00795dee    e86d89cbff
                         {disp32} mov       dword ptr [ebp + 0x00000128], 0x00000001      // 0x00795df3    c7852801000001000000
_jmp_addr_0x00795dfd:    {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x00795dfd    d98424a8000000
                         mov                eax, 0x40400000                               // 0x00795e04    b800004040
                         {disp32} fadd      dword ptr [ebp + 0x000003cc]                  // 0x00795e09    d885cc030000
                         {disp32} mov       dword ptr [ebp + 0x000003f0], eax             // 0x00795e0f    8985f0030000
                         {disp32} mov       dword ptr [ebp + 0x000003ec], eax             // 0x00795e15    8985ec030000
                         {disp32} fst       dword ptr [ebp + 0x000003cc]                  // 0x00795e1b    d995cc030000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]              // 0x00795e21    d81de4b68a00
                         fnstsw             ax                                            // 0x00795e27    dfe0
                         test               ah, 0x41                                      // 0x00795e29    f6c441
                         {disp8} jne        _jmp_addr_0x00795e38                          // 0x00795e2c    750a
                         {disp32} mov       dword ptr [ebp + 0x00000128], 0x00000002      // 0x00795e2e    c7852801000002000000
_jmp_addr_0x00795e38:    pop                edi                                           // 0x00795e38    5f
                         pop                esi                                           // 0x00795e39    5e
                         {disp32} mov       byte ptr [ebp + 0x000003f4], 0x00             // 0x00795e3a    c685f403000000
                         pop                ebp                                           // 0x00795e41    5d
                         pop                ebx                                           // 0x00795e42    5b
                         add                esp, 0x00000090                               // 0x00795e43    81c490000000
                         ret                0x0018                                        // 0x00795e49    c21800
_jmp_addr_0x00795e4c:    {disp32} mov       al, byte ptr [data_bytes + 0x4bf392]          // 0x00795e4c    a09253e800
                         test               al, al                                        // 0x00795e51    84c0
                         mov                ecx, 0x0000000c                               // 0x00795e53    b90c000000
                         mov                esi, 0x00ea1d28                               // 0x00795e58    be281dea00
                         {disp8} lea        edi, dword ptr [esp + 0x70]                   // 0x00795e5d    8d7c2470
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00795e61    f3a5
                         {disp8} je         _jmp_addr_0x00795ec2                          // 0x00795e63    745d
                         {disp8} fld        dword ptr [esp + 0x78]                        // 0x00795e65    d9442478
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00795e69    d88c24a8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dca4]             // 0x00795e70    d80da46c8c00
                         {disp32} fadd      dword ptr [ebp + 0x0000042c]                  // 0x00795e76    d8852c040000
                         {disp32} fstp      dword ptr [ebp + 0x0000042c]                  // 0x00795e7c    d99d2c040000
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x00795e82    d9842484000000
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00795e89    d88c24a8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dca4]             // 0x00795e90    d80da46c8c00
                         {disp32} fadd      dword ptr [ebp + 0x00000430]                  // 0x00795e96    d88530040000
                         {disp32} fstp      dword ptr [ebp + 0x00000430]                  // 0x00795e9c    d99d30040000
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x00795ea2    d9842490000000
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00795ea9    d88c24a8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dca4]             // 0x00795eb0    d80da46c8c00
                         {disp32} fadd      dword ptr [ebp + 0x00000434]                  // 0x00795eb6    d88534040000
                         {disp32} fstp      dword ptr [ebp + 0x00000434]                  // 0x00795ebc    d99d34040000
_jmp_addr_0x00795ec2:    {disp32} mov       al, byte ptr [data_bytes + 0x4bf3a0]          // 0x00795ec2    a0a053e800
                         test               al, al                                        // 0x00795ec7    84c0
                         {disp8} je         _jmp_addr_0x00795f28                          // 0x00795ec9    745d
                         {disp8} fld        dword ptr [esp + 0x78]                        // 0x00795ecb    d9442478
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00795ecf    d88c24a8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dca4]             // 0x00795ed6    d80da46c8c00
                         {disp32} fsubr     dword ptr [ebp + 0x0000042c]                  // 0x00795edc    d8ad2c040000
                         {disp32} fstp      dword ptr [ebp + 0x0000042c]                  // 0x00795ee2    d99d2c040000
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x00795ee8    d9842484000000
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00795eef    d88c24a8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dca4]             // 0x00795ef6    d80da46c8c00
                         {disp32} fsubr     dword ptr [ebp + 0x00000430]                  // 0x00795efc    d8ad30040000
                         {disp32} fstp      dword ptr [ebp + 0x00000430]                  // 0x00795f02    d99d30040000
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x00795f08    d9842490000000
                         {disp32} fmul      dword ptr [esp + 0x000000a8]                  // 0x00795f0f    d88c24a8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dca4]             // 0x00795f16    d80da46c8c00
                         {disp32} fsubr     dword ptr [ebp + 0x00000434]                  // 0x00795f1c    d8ad34040000
                         {disp32} fstp      dword ptr [ebp + 0x00000434]                  // 0x00795f22    d99d34040000
_jmp_addr_0x00795f28:    {disp32} mov       edx, dword ptr [_game]                        // 0x00795f28    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]             // 0x00795f2e    8b8a00032500
                         push               0x7                                           // 0x00795f34    6a07
                         call               _jmp_addr_0x00470af0                          // 0x00795f36    e8b5abcdff
                         test               eax, eax                                      // 0x00795f3b    85c0
                         {disp8} je         _jmp_addr_0x00795f58                          // 0x00795f3d    7419
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x00795f3f    d98424a8000000
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x00795f46    d80d2cb28a00
                         {disp32} fsubr     dword ptr [ebp + 0x00000420]                  // 0x00795f4c    d8ad20040000
                         {disp32} fstp      dword ptr [ebp + 0x00000420]                  // 0x00795f52    d99d20040000
_jmp_addr_0x00795f58:    {disp32} mov       eax, dword ptr [_game]                        // 0x00795f58    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x00795f5d    8b8800032500
                         push               0x8                                           // 0x00795f63    6a08
                         call               _jmp_addr_0x00470af0                          // 0x00795f65    e886abcdff
                         test               eax, eax                                      // 0x00795f6a    85c0
                         {disp8} je         _jmp_addr_0x00795f87                          // 0x00795f6c    7419
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x00795f6e    d98424a8000000
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x00795f75    d80d2cb28a00
                         {disp32} fadd      dword ptr [ebp + 0x00000420]                  // 0x00795f7b    d88520040000
                         {disp32} fstp      dword ptr [ebp + 0x00000420]                  // 0x00795f81    d99d20040000
_jmp_addr_0x00795f87:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00795f87    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x00795f8d    8b8900032500
                         push               0x9                                           // 0x00795f93    6a09
                         call               _jmp_addr_0x00470af0                          // 0x00795f95    e856abcdff
                         test               eax, eax                                      // 0x00795f9a    85c0
                         {disp8} je         _jmp_addr_0x00795fb7                          // 0x00795f9c    7419
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x00795f9e    d98424a8000000
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x00795fa5    d80d2cb28a00
                         {disp32} fadd      dword ptr [ebp + 0x00000424]                  // 0x00795fab    d88524040000
                         {disp32} fstp      dword ptr [ebp + 0x00000424]                  // 0x00795fb1    d99d24040000
_jmp_addr_0x00795fb7:    {disp32} mov       edx, dword ptr [_game]                        // 0x00795fb7    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]             // 0x00795fbd    8b8a00032500
                         push               0xa                                           // 0x00795fc3    6a0a
                         call               _jmp_addr_0x00470af0                          // 0x00795fc5    e826abcdff
                         test               eax, eax                                      // 0x00795fca    85c0
                         {disp8} je         _jmp_addr_0x00795fe7                          // 0x00795fcc    7419
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x00795fce    d98424a8000000
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x00795fd5    d80d2cb28a00
                         {disp32} fsubr     dword ptr [ebp + 0x00000424]                  // 0x00795fdb    d8ad24040000
                         {disp32} fstp      dword ptr [ebp + 0x00000424]                  // 0x00795fe1    d99d24040000
_jmp_addr_0x00795fe7:    {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x00795fe7    d98424a8000000
                         push               ebx                                           // 0x00795fee    53
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ece0]             // 0x00795fef    d80de07c8c00
                         {disp8} mov        dword ptr [esp + 0x70], 0x00000000            // 0x00795ff5    c744247000000000
                         fldl2e                                                           // 0x00795ffd    d9ea
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000            // 0x00795fff    c744246c00000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000            // 0x00796007    c744246800000000
                         {disp8} mov        dword ptr [esp + 0x60], 0x00000000            // 0x0079600f    c744246000000000
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x00796017    c744245c00000000
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000000            // 0x0079601f    c744245800000000
                         fmulp              st(1), st                                     // 0x00796027    dec9
                         {disp8} mov        dword ptr [esp + 0x50], 0x00000000            // 0x00796029    c744245000000000
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000            // 0x00796031    c744244c00000000
                         {disp8} mov        dword ptr [esp + 0x48], 0x00000000            // 0x00796039    c744244800000000
                         fld                st(0)                                         // 0x00796041    d9c0
                         {disp8} mov        dword ptr [esp + 0x64], 0x3f800000            // 0x00796043    c74424640000803f
                         frndint                                                          // 0x0079604b    d9fc
                         {disp8} mov        dword ptr [esp + 0x54], 0x3f800000            // 0x0079604d    c74424540000803f
                         {disp8} mov        dword ptr [esp + 0x44], 0x3f800000            // 0x00796055    c74424440000803f
                         fxch               st(1)                                         // 0x0079605d    d9c9
                         fsub               st, st(1)                                     // 0x0079605f    d8e1
                         f2xm1                                                            // 0x00796061    d9f0
                         fld1                                                             // 0x00796063    d9e8
                         faddp              st(1), st                                     // 0x00796065    dec1
                         fscale                                                           // 0x00796067    d9fd
                         fstp               st(1)                                         // 0x00796069    ddd9
                         fld                st(0)                                         // 0x0079606b    d9c0
                         fld                st(0)                                         // 0x0079606d    d9c0
                         {disp32} fmul      dword ptr [ebp + 0x0000042c]                  // 0x0079606f    d88d2c040000
                         {disp32} fstp      dword ptr [ebp + 0x0000042c]                  // 0x00796075    d99d2c040000
                         fld                st(0)                                         // 0x0079607b    d9c0
                         {disp32} fmul      dword ptr [ebp + 0x00000430]                  // 0x0079607d    d88d30040000
                         {disp32} fstp      dword ptr [ebp + 0x00000430]                  // 0x00796083    d99d30040000
                         {disp32} fmul      dword ptr [ebp + 0x00000434]                  // 0x00796089    d88d34040000
                         {disp32} fstp      dword ptr [ebp + 0x00000434]                  // 0x0079608f    d99d34040000
                         fld                st(0)                                         // 0x00796095    d9c0
                         {disp32} fmul      dword ptr [ebp + 0x00000420]                  // 0x00796097    d88d20040000
                         {disp32} fstp      dword ptr [ebp + 0x00000420]                  // 0x0079609d    d99d20040000
                         fld                st(0)                                         // 0x007960a3    d9c0
                         {disp32} fmul      dword ptr [ebp + 0x00000424]                  // 0x007960a5    d88d24040000
                         {disp32} fstp      dword ptr [ebp + 0x00000424]                  // 0x007960ab    d99d24040000
                         {disp32} fmul      dword ptr [ebp + 0x00000428]                  // 0x007960b1    d88d28040000
                         {disp32} fstp      dword ptr [ebp + 0x00000428]                  // 0x007960b7    d99d28040000
                         {disp32} mov       eax, dword ptr [ebp + 0x00000424]             // 0x007960bd    8b8524040000
                         {disp32} mov       ecx, dword ptr [ebp + 0x00000420]             // 0x007960c3    8b8d20040000
                         push               eax                                           // 0x007960c9    50
                         push               ecx                                           // 0x007960ca    51
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x007960cb    8d4c244c
                         call               _jmp_addr_0x007fac10                          // 0x007960cf    e83c4b0600
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x007960d4    8d542440
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x007960d8    8d4c2470
                         call               _jmp_addr_0x007faff0                          // 0x007960dc    e80f4f0600
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x007960e1    d98424a8000000
                         {disp32} fmul      dword ptr [ebp + 0x0000042c]                  // 0x007960e8    d88d2c040000
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x007960ee    d98424a8000000
                         {disp32} fmul      dword ptr [ebp + 0x00000430]                  // 0x007960f5    d88d30040000
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x007960fb    d95c2420
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x007960ff    d98424a8000000
                         {disp32} fmul      dword ptr [ebp + 0x00000434]                  // 0x00796106    d88d34040000
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0079610c    d95c2424
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x00796110    d94504
                         {disp8} fld        dword ptr [ebp + 0x34]                        // 0x00796113    d94534
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00796116    d95c242c
                         {disp8} fld        dword ptr [ebp + 0x64]                        // 0x0079611a    d94564
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0079611d    d95c2430
                         fadd               st, st(1)                                     // 0x00796121    d8c1
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00796123    d95c2410
                         fstp               st(0)                                         // 0x00796127    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00796129    d944242c
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x0079612d    d8442420
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00796131    d95c2414
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00796135    d9442430
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x00796139    d8442424
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0079613d    8b4c2410
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00796141    d95c2418
                         {disp8} fld        dword ptr [esp + 0x78]                        // 0x00796145    d9442478
                         {disp32} lea       eax, dword ptr [ebp + 0x000003d4]             // 0x00796149    8d85d4030000
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x0079614f    d9842484000000
                         mov.s              edx, eax                                      // 0x00796156    8bd0
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00796158    d95c242c
                         {disp32} fld       dword ptr [esp + 0x00000090]                  // 0x0079615c    d9842490000000
                         mov                dword ptr [edx], ecx                          // 0x00796163    890a
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00796165    8b4c2414
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00796169    d95c2430
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0079616d    894a04
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00796170    d80d14b48a00
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00796176    8b4c2418
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0079617a    d944242c
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0079617e    894a08
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00796181    d80d14b48a00
                         {disp32} lea       edx, dword ptr [ebp + 0x000003e0]             // 0x00796187    8d95e0030000
                         pop                edi                                           // 0x0079618d    5f
                         pop                esi                                           // 0x0079618e    5e
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0079618f    d95c2418
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00796193    d9442428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00796197    d80d14b48a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0079619d    d95c241c
                         fadd               dword ptr [eax]                               // 0x007961a1    d800
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x007961a3    d95c2408
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x007961a7    d9442418
                         {disp8} fadd       dword ptr [eax + 0x04]                        // 0x007961ab    d84004
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x007961ae    d95c240c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x007961b2    d944241c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x007961b6    8b4c240c
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x007961ba    d84008
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x007961bd    8b442408
                         mov                dword ptr [edx], eax                          // 0x007961c1    8902
                         {disp32} mov       dword ptr [ebp + 0x000003f0], ebx             // 0x007961c3    899df0030000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007961c9    d95c2410
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007961cd    8b442410
                         {disp32} mov       dword ptr [ebp + 0x000003ec], ebx             // 0x007961d1    899dec030000
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x007961d7    894a04
                         pop                ebp                                           // 0x007961da    5d
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x007961db    894208
                         pop                ebx                                           // 0x007961de    5b
                         add                esp, 0x00000090                               // 0x007961df    81c490000000
                         ret                0x0018                                        // 0x007961e5    c21800
_jmp_addr_0x007961e8:    {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x007961e8    d98424a8000000
                         {disp32} fadd      dword ptr [ebp + 0x000003cc]                  // 0x007961ef    d885cc030000
                         {disp32} fstp      dword ptr [ebp + 0x000003cc]                  // 0x007961f5    d99dcc030000
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x007961fb    d98424a8000000
                         {disp32} fadd      dword ptr [ebp + 0x000003d0]                  // 0x00796202    d885d0030000
                         {disp32} fst       dword ptr [ebp + 0x000003d0]                  // 0x00796208    d995d0030000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ea44]             // 0x0079620e    d81d447a8c00
                         fnstsw             ax                                            // 0x00796214    dfe0
                         test               ah, 0x41                                      // 0x00796216    f6c441
                         {disp8} jne        _jmp_addr_0x0079622a                          // 0x00796219    750f
                         push               0x3fcccccd                                    // 0x0079621b    68cdcccc3f
                         push               -0x1                                          // 0x00796220    6aff
                         call               _jmp_addr_0x00794fb0                          // 0x00796222    e889edffff
                         add                esp, 0x08                                     // 0x00796227    83c408
_jmp_addr_0x0079622a:    {disp32} fld       dword ptr [ebp + 0x000003cc]                  // 0x0079622a    d985cc030000
                         {disp32} lea       esi, dword ptr [ebp + 0x000003e0]             // 0x00796230    8db5e0030000
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x00796236    d80d28b28a00
                         {disp32} lea       edi, dword ptr [ebp + 0x000003d4]             // 0x0079623c    8dbdd4030000
                         push               esi                                           // 0x00796242    56
                         push               edi                                           // 0x00796243    57
                         call               _jmp_addr_0x007a1400                          // 0x00796244    e8b7b10000
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000043c]             // 0x00796249    8b8d3c040000
                         push               eax                                           // 0x0079624f    50
                         xor.s              edx, edx                                      // 0x00796250    33d2
                         call               _jmp_addr_0x0086d4e0                          // 0x00796252    e889720d00
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000043c]             // 0x00796257    8b8d3c040000
                         mov                eax, 0x3f000000                               // 0x0079625d    b80000003f
                         {disp32} mov       dword ptr [ebp + 0x000003f0], eax             // 0x00796262    8985f0030000
                         {disp32} mov       dword ptr [ebp + 0x000003ec], eax             // 0x00796268    8985ec030000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0079626e    8b5104
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00796271    89542410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x00796275    895c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x00796279    df6c2410
                         mov                ecx, 0x00000001                               // 0x0079627d    b901000000
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x00796282    d80db0a38a00
                         fld                st(0)                                         // 0x00796288    d9c0
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x0079628a    d805b4a38a00
                         {disp32} fld       dword ptr [ebp + 0x000003cc]                  // 0x00796290    d985cc030000
                         fcompp                                                           // 0x00796296    ded9
                         fnstsw             ax                                            // 0x00796298    dfe0
                         test               ah, 0x41                                      // 0x0079629a    f6c441
                         {disp8} jne        _jmp_addr_0x007962a5                          // 0x0079629d    7506
                         {disp32} mov       dword ptr [ebp + 0x00000438], ecx             // 0x0079629f    898d38040000
_jmp_addr_0x007962a5:    cmp                dword ptr [esp + 0x000000ac], ebx             // 0x007962a5    399c24ac000000
                         {disp8} je         _jmp_addr_0x007962c6                          // 0x007962ac    7418
                         cmp                dword ptr [ebp + 0x00000134], ebx             // 0x007962ae    399d34010000
                         {disp8} jne        _jmp_addr_0x007962c6                          // 0x007962b4    7510
                         {disp32} mov       dword ptr [ebp + 0x00000438], ecx             // 0x007962b6    898d38040000
                         {disp32} mov       dword ptr [data_bytes + 0x264150], 0x3f800000 // 0x007962bc    c70550a1c2000000803f
_jmp_addr_0x007962c6:    {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x007962c6    d82590a38a00
                         {disp32} fsubr     dword ptr [ebp + 0x000003cc]                  // 0x007962cc    d8adcc030000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x007962d2    d81598a38a00
                         fnstsw             ax                                            // 0x007962d8    dfe0
                         test               ah, 0x41                                      // 0x007962da    f6c441
                         {disp32} jne       _jmp_addr_0x00796406                          // 0x007962dd    0f8523010000
                         {disp32} mov       al, byte ptr [ebp + 0x00000399]               // 0x007962e3    8a8599030000
                         test               al, al                                        // 0x007962e9    84c0
                         {disp32} je        _jmp_addr_0x00796406                          // 0x007962eb    0f8415010000
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x007962f1    d81590a38a00
                         {disp32} lea       eax, dword ptr [ebp + 0x0000026c]             // 0x007962f7    8d856c020000
                         mov                ecx, dword ptr [eax]                          // 0x007962fd    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x007962ff    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00796302    8b4008
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00796305    894c2410
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000260]             // 0x00796309    8d8d60020000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0079630f    89542414
                         mov                edx, dword ptr [ecx]                          // 0x00796313    8b11
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00796315    89442418
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00796319    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0079631c    8b4908
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0079631f    89442420
                         fnstsw             ax                                            // 0x00796323    dfe0
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00796325    8954241c
                         test               ah, 0x41                                      // 0x00796329    f6c441
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0079632c    894c2424
                         {disp8} jne        _jmp_addr_0x0079633a                          // 0x00796330    7508
                         fstp               st(0)                                         // 0x00796332    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00796334    d90590a38a00
_jmp_addr_0x0079633a:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0079633a    d9442410
                         mov.s              edx, edi                                      // 0x0079633e    8bd7
                         fsub               dword ptr [edi]                               // 0x00796340    d827
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00796342    d9442414
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x00796346    d86704
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00796349    d95c242c
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0079634d    d9442418
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00796351    d86708
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00796354    d95c2430
                         fmul               st, st(1)                                     // 0x00796358    d8c9
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0079635a    d944242c
                         fmul               st, st(2)                                     // 0x0079635e    d8ca
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00796360    d95c2438
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00796364    d9442430
                         fmul               st, st(2)                                     // 0x00796368    d8ca
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0079636a    d95c243c
                         fadd               dword ptr [edi]                               // 0x0079636e    d807
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00796370    d95c2410
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00796374    d9442438
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00796378    8b442410
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x0079637c    d84704
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0079637f    d95c2414
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00796383    d944243c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00796387    8b4c2414
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x0079638b    d84708
                         mov                dword ptr [edx], eax                          // 0x0079638e    8902
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00796390    894a04
                         mov.s              ecx, esi                                      // 0x00796393    8bce
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00796395    d95c2418
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00796399    8b442418
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0079639d    d944241c
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x007963a1    894208
                         fsub               dword ptr [esi]                               // 0x007963a4    d826
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x007963a6    d9442420
                         {disp8} fsub       dword ptr [esi + 0x04]                        // 0x007963aa    d86604
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007963ad    d95c2438
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007963b1    d9442424
                         {disp8} fsub       dword ptr [esi + 0x08]                        // 0x007963b5    d86608
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x007963b8    d95c243c
                         fmul               st, st(1)                                     // 0x007963bc    d8c9
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x007963be    d9442438
                         fmul               st, st(2)                                     // 0x007963c2    d8ca
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x007963c4    d95c242c
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x007963c8    d944243c
                         fmul               st, st(2)                                     // 0x007963cc    d8ca
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x007963ce    d95c2430
                         fadd               dword ptr [esi]                               // 0x007963d2    d806
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x007963d4    d95c241c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x007963d8    8b54241c
                         fstp               st(0)                                         // 0x007963dc    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x007963de    d944242c
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x007963e2    d84604
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x007963e5    d95c2420
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x007963e9    d9442430
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x007963ed    8b442420
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x007963f1    d84608
                         mov                dword ptr [ecx], edx                          // 0x007963f4    8911
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x007963f6    894104
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x007963f9    d95c2424
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x007963fd    8b542424
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00796401    895108
                         {disp8} jmp        _jmp_addr_0x00796408                          // 0x00796404    eb02
_jmp_addr_0x00796406:    fstp               st(0)                                         // 0x00796406    ddd8
_jmp_addr_0x00796408:    {disp32} fld       dword ptr [rdata_bytes + 0x2478]              // 0x00796408    d90578b48a00
                         {disp32} fsub      dword ptr [ebp + 0x000003d0]                  // 0x0079640e    d8a5d0030000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00796414    d80db4a38a00
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x0079641a    d9542410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0079641e    d81d98a38a00
                         fnstsw             ax                                            // 0x00796424    dfe0
                         test               ah, 0x41                                      // 0x00796426    f6c441
                         {disp32} jne       _jmp_addr_0x007965e2                          // 0x00796429    0f85b3010000
                         {disp32} mov       al, byte ptr [ebp + 0x00000398]               // 0x0079642f    8a8598030000
                         test               al, al                                        // 0x00796435    84c0
                         {disp32} je        _jmp_addr_0x007965e2                          // 0x00796437    0f84a5010000
                         {disp32} mov       eax, dword ptr [esp + 0x000000a8]             // 0x0079643d    8b8424a8000000
                         {disp32} lea       ebx, dword ptr [ebp + 0x00000308]             // 0x00796444    8d9d08030000
                         push               eax                                           // 0x0079644a    50
                         mov.s              ecx, ebx                                      // 0x0079644b    8bcb
                         call               @Update__6ZoomerFf@12                         // 0x0079644d    e8cec2caff
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a8]             // 0x00796452    8b8c24a8000000
                         push               ecx                                           // 0x00796459    51
                         {disp8} lea        ecx, dword ptr [ebx + 0x30]                   // 0x0079645a    8d4b30
                         call               @Update__6ZoomerFf@12                         // 0x0079645d    e8bec2caff
                         {disp32} mov       edx, dword ptr [esp + 0x000000a8]             // 0x00796462    8b9424a8000000
                         push               edx                                           // 0x00796469    52
                         {disp8} lea        ecx, dword ptr [ebx + 0x60]                   // 0x0079646a    8d4b60
                         call               @Update__6ZoomerFf@12                         // 0x0079646d    e8aec2caff
                         {disp32} mov       eax, dword ptr [esp + 0x000000a8]             // 0x00796472    8b8424a8000000
                         {disp32} lea       ecx, dword ptr [ebp + 0x00000278]             // 0x00796479    8d8d78020000
                         push               eax                                           // 0x0079647f    50
                         call               @Update__6ZoomerFf@12                         // 0x00796480    e89bc2caff
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a8]             // 0x00796485    8b8c24a8000000
                         push               ecx                                           // 0x0079648c    51
                         {disp32} lea       ecx, dword ptr [ebp + 0x000002a8]             // 0x0079648d    8d8da8020000
                         call               @Update__6ZoomerFf@12                         // 0x00796493    e888c2caff
                         {disp32} mov       edx, dword ptr [esp + 0x000000a8]             // 0x00796498    8b9424a8000000
                         push               edx                                           // 0x0079649f    52
                         {disp32} lea       ecx, dword ptr [ebp + 0x000002d8]             // 0x007964a0    8d8dd8020000
                         call               @Update__6ZoomerFf@12                         // 0x007964a6    e875c2caff
                         fld                dword ptr [ebx]                               // 0x007964ab    d903
                         {disp8} fld        dword ptr [ebx + 0x30]                        // 0x007964ad    d94330
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x007964b0    d95c2438
                         {disp8} fld        dword ptr [ebx + 0x60]                        // 0x007964b4    d94360
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x007964b7    d95c243c
                         {disp32} fld       dword ptr [ebp + 0x00000278]                  // 0x007964bb    d98578020000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007964c1    d95c2428
                         {disp32} fld       dword ptr [ebp + 0x000002a8]                  // 0x007964c5    d985a8020000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x007964cb    d95c242c
                         {disp32} fld       dword ptr [ebp + 0x000002d8]                  // 0x007964cf    d985d8020000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x007964d5    d95c2430
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x007964d9    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007964dd    d81d90a38a00
                         fnstsw             ax                                            // 0x007964e3    dfe0
                         test               ah, 0x41                                      // 0x007964e5    f6c441
                         {disp8} jne        _jmp_addr_0x007964f2                          // 0x007964e8    7508
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f800000            // 0x007964ea    c74424100000803f
_jmp_addr_0x007964f2:    fsub               dword ptr [edi]                               // 0x007964f2    d827
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x007964f4    d9442438
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x007964f8    d86704
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x007964fb    d95c2420
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x007964ff    d944243c
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00796503    d86708
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00796506    d95c2424
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0079650a    d84c2410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0079650e    d9442420
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00796512    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00796516    d95c2438
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0079651a    d9442424
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0079651e    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00796522    d95c243c
                         fadd               dword ptr [edi]                               // 0x00796526    d807
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00796528    d95c241c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0079652c    d9442438
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00796530    8b44241c
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x00796534    d84704
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00796537    d95c2420
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0079653b    d944243c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0079653f    8b4c2420
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x00796543    d84708
                         mov                dword ptr [edi], eax                          // 0x00796546    8907
                         {disp8} mov        dword ptr [edi + 0x04], ecx                   // 0x00796548    894f04
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0079654b    d95c2424
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0079654f    8b542424
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00796553    d9442428
                         {disp8} mov        dword ptr [edi + 0x08], edx                   // 0x00796557    895708
                         fsub               dword ptr [esi]                               // 0x0079655a    d826
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0079655c    d944242c
                         {disp8} fsub       dword ptr [esi + 0x04]                        // 0x00796560    d86604
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00796563    d95c2438
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00796567    d9442430
                         {disp8} fsub       dword ptr [esi + 0x08]                        // 0x0079656b    d86608
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0079656e    d95c243c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00796572    d84c2410
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00796576    d9442438
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0079657a    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0079657e    d95c2420
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00796582    d944243c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00796586    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0079658a    d95c2424
                         fadd               dword ptr [esi]                               // 0x0079658e    d806
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00796590    d95c2428
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00796594    d9442420
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00796598    8b442428
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0079659c    d84604
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0079659f    d95c242c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x007965a3    d9442424
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x007965a7    8b4c242c
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x007965ab    d84608
                         mov                dword ptr [esi], eax                          // 0x007965ae    8906
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x007965b0    894e04
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x007965b3    d95c2430
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x007965b7    d90590a38a00
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x007965bd    8b542430
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x007965c1    d8642410
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x007965c5    895608
                         fld                st(0)                                         // 0x007965c8    d9c0
                         {disp32} fmul      dword ptr [ebp + 0x000003ec]                  // 0x007965ca    d88dec030000
                         {disp32} fstp      dword ptr [ebp + 0x000003ec]                  // 0x007965d0    d99dec030000
                         {disp32} fmul      dword ptr [ebp + 0x000003f0]                  // 0x007965d6    d88df0030000
                         {disp32} fstp      dword ptr [ebp + 0x000003f0]                  // 0x007965dc    d99df0030000
_jmp_addr_0x007965e2:    pop                edi                                           // 0x007965e2    5f
                         pop                esi                                           // 0x007965e3    5e
                         pop                ebp                                           // 0x007965e4    5d
                         pop                ebx                                           // 0x007965e5    5b
                         add                esp, 0x00000090                               // 0x007965e6    81c490000000
                         ret                0x0018                                        // 0x007965ec    c21800
                         nop                                                              // 0x007965ef    90
_UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb:
@UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29:    sub                esp, 0x6c                                     // 0x007965f0    83ec6c
                         push               esi                                           // 0x007965f3    56
                         push               edi                                           // 0x007965f4    57
                         mov.s              edi, ecx                                      // 0x007965f5    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000438]             // 0x007965f7    8b8738040000
                         cmp                eax, dword ptr [edi + 0x00000124]             // 0x007965fd    3b8724010000
                         {disp32} je        _jmp_addr_0x00796901                          // 0x00796603    0f84f8020000
                         cmp                eax, 0x03                                     // 0x00796609    83f803
                         {disp32} ja        _jmp_addr_0x00796901                          // 0x0079660c    0f87ef020000
                         jmp                dword ptr [eax*4 + 0x79690c]                  // 0x00796612    ff24850c697900
                         xor.s              eax, eax                                      // 0x00796619    33c0
                         {disp32} mov       dword ptr [edi + 0x000003cc], eax             // 0x0079661b    8987cc030000
                         {disp32} mov       dword ptr [edi + 0x000003d0], eax             // 0x00796621    8987d0030000
                         {disp32} mov       dword ptr [edi + 0x00000124], eax             // 0x00796627    898724010000
                         pop                edi                                           // 0x0079662d    5f
                         or                 eax, -0x1                                     // 0x0079662e    83c8ff
                         pop                esi                                           // 0x00796631    5e
                         add                esp, 0x6c                                     // 0x00796632    83c46c
                         ret                0x0018                                        // 0x00796635    c21800
                         {disp32} mov       dword ptr [edi + 0x00000438], 0x00000002      // 0x00796638    c7873804000002000000
                         {disp32} lea       eax, dword ptr [edi + 0x0000042c]             // 0x00796642    8d872c040000
                         mov.s              esi, eax                                      // 0x00796648    8bf0
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x0079664a    c744240800000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00796652    8b442408
                         mov                dword ptr [esi], eax                          // 0x00796656    8906
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x00796658    c744240c00000000
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00796660    8b4c240c
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x00796664    894e04
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00796667    c744241000000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0079666f    8b542410
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00796673    895608
                         {disp32} lea       esi, dword ptr [edi + 0x00000420]             // 0x00796676    8db720040000
                         mov                dword ptr [esi], eax                          // 0x0079667c    8906
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0079667e    894e04
                         {disp32} mov       ecx, dword ptr [edi + 0x00000438]             // 0x00796681    8b8f38040000
                         {disp32} mov       dword ptr [edi + 0x00000124], ecx             // 0x00796687    898f24010000
                         pop                edi                                           // 0x0079668d    5f
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0079668e    895608
                         or                 eax, -0x1                                     // 0x00796691    83c8ff
                         pop                esi                                           // 0x00796694    5e
                         add                esp, 0x6c                                     // 0x00796695    83c46c
                         ret                0x0018                                        // 0x00796698    c21800
                         push               ebx                                           // 0x0079669b    53
                         push               ebp                                           // 0x0079669c    55
                         {disp32} lea       ebp, dword ptr [edi + 0x000003d4]             // 0x0079669d    8dafd4030000
                         {disp32} lea       edx, dword ptr [edi + 0x0000039c]             // 0x007966a3    8d979c030000
                         mov                esi, dword ptr [edx]                          // 0x007966a9    8b32
                         mov.s              ecx, ebp                                      // 0x007966ab    8bcd
                         mov                dword ptr [ecx], esi                          // 0x007966ad    8931
                         {disp8} mov        esi, dword ptr [edx + 0x04]                   // 0x007966af    8b7204
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x007966b2    8b5208
                         {disp8} mov        dword ptr [ecx + 0x04], esi                   // 0x007966b5    897104
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x007966b8    895108
                         {disp32} lea       ecx, dword ptr [edi + 0x000003a8]             // 0x007966bb    8d8fa8030000
                         mov                esi, dword ptr [ecx]                          // 0x007966c1    8b31
                         {disp32} lea       ebx, dword ptr [edi + 0x000003e0]             // 0x007966c3    8d9fe0030000
                         mov.s              edx, ebx                                      // 0x007966c9    8bd3
                         mov                dword ptr [edx], esi                          // 0x007966cb    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x007966cd    8b7104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x007966d0    8b4908
                         xor.s              eax, eax                                      // 0x007966d3    33c0
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x007966d5    897204
                         push               0x40400000                                    // 0x007966d8    6800004040
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x007966dd    894a08
                         {disp32} mov       dword ptr [edi + 0x000003cc], eax             // 0x007966e0    8987cc030000
                         {disp32} mov       dword ptr [edi + 0x00000128], eax             // 0x007966e6    898728010000
                         {disp8} fld        dword ptr [ebp + 0x00]                        // 0x007966ec    d94500
                         push               eax                                           // 0x007966ef    50
                         push               ecx                                           // 0x007966f0    51
                         {disp8} lea        esi, dword ptr [edi + 0x04]                   // 0x007966f1    8d7704
                         fstp               dword ptr [esp]                               // 0x007966f4    d91c24
                         mov.s              ecx, esi                                      // 0x007966f7    8bce
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x007966f9    e86216c7ff
                         {disp8} fld        dword ptr [ebp + 0x04]                        // 0x007966fe    d94504
                         push               0x40400000                                    // 0x00796701    6800004040
                         push               0x0                                           // 0x00796706    6a00
                         push               ecx                                           // 0x00796708    51
                         fstp               dword ptr [esp]                               // 0x00796709    d91c24
                         {disp8} lea        ecx, dword ptr [esi + 0x30]                   // 0x0079670c    8d4e30
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x0079670f    e84c16c7ff
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x00796714    d94508
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x00796717    8b5660
                         {disp8} fstp       dword ptr [esi + 0x64]                        // 0x0079671a    d95e64
                         {disp8} mov        eax, dword ptr [esi + 0x6c]                   // 0x0079671d    8b466c
                         xor.s              ebp, ebp                                      // 0x00796720    33ed
                         {disp8} mov        dword ptr [esi + 0x7c], edx                   // 0x00796722    89567c
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00796725    8d54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00796729    8d4c244c
                         {disp32} mov       dword ptr [esi + 0x00000080], eax             // 0x0079672d    898680000000
                         {disp8} mov        dword ptr [esi + 0x68], ebp                   // 0x00796733    896e68
                         {disp8} mov        dword ptr [esi + 0x78], 0x40400000            // 0x00796736    c7467800004040
                         {disp8} mov        dword ptr [esi + 0x74], ebp                   // 0x0079673d    896e74
                         {disp8} mov        dword ptr [esp + 0x1c], 0x40580000            // 0x00796740    c744241c00005840
                         {disp8} mov        dword ptr [esp + 0x20], 0x40900000            // 0x00796748    c744242000009040
                         {disp8} mov        dword ptr [esp + 0x24], 0x40900000            // 0x00796750    c744242400009040
                         {disp8} mov        dword ptr [esp + 0x28], 0x40900000            // 0x00796758    c744242800009040
                         {disp8} mov        dword ptr [esp + 0x2c], 0x40900000            // 0x00796760    c744242c00009040
                         {disp8} mov        dword ptr [esp + 0x30], 0x40400000            // 0x00796768    c744243000004040
                         {disp8} mov        dword ptr [esp + 0x34], 0x40900000            // 0x00796770    c744243400009040
                         {disp8} mov        dword ptr [esp + 0x38], 0x40400000            // 0x00796778    c744243800004040
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3f800000            // 0x00796780    c744243c0000803f
                         {disp8} mov        dword ptr [esp + 0x48], ebp                   // 0x00796788    896c2448
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x0079678c    896c2444
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x00796790    896c2440
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x00796794    e8f74a0600
                         {disp8} fld        dword ptr [esi + 0x64]                        // 0x00796799    d94664
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x0079679c    d8667c
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0079679f    8d542410
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x007967a3    d98680000000
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x007967a9    8d4c244c
                         {disp8} fmul       dword ptr [esi + 0x78]                        // 0x007967ad    d84e78
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x007967b0    896c2418
                         fsubp              st(1), st                                     // 0x007967b4    dee9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007967b6    d95c2410
                         {disp8} fld        dword ptr [esi + 0x68]                        // 0x007967ba    d94668
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x007967bd    d8a680000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007967c3    d95c2414
                         call               _jmp_addr_0x00418a50                          // 0x007967c7    e88422c8ff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x007967cc    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x007967d0    8b542414
                         {disp32} mov       dword ptr [esi + 0x0000008c], ecx             // 0x007967d4    898e8c000000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x007967da    8b442418
                         push               0x40400000                                    // 0x007967de    6800004040
                         {disp32} mov       dword ptr [esi + 0x00000088], edx             // 0x007967e3    899688000000
                         {disp32} mov       dword ptr [esi + 0x00000084], eax             // 0x007967e9    898684000000
                         fld                dword ptr [ebx]                               // 0x007967ef    d903
                         push               ebp                                           // 0x007967f1    55
                         push               ecx                                           // 0x007967f2    51
                         {disp32} lea       esi, dword ptr [edi + 0x00000094]             // 0x007967f3    8db794000000
                         fstp               dword ptr [esp]                               // 0x007967f9    d91c24
                         mov.s              ecx, esi                                      // 0x007967fc    8bce
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x007967fe    e85d15c7ff
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x00796803    d94304
                         push               0x40400000                                    // 0x00796806    6800004040
                         push               ebp                                           // 0x0079680b    55
                         push               ecx                                           // 0x0079680c    51
                         fstp               dword ptr [esp]                               // 0x0079680d    d91c24
                         {disp8} lea        ecx, dword ptr [esi + 0x30]                   // 0x00796810    8d4e30
                         call               @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00796813    e84815c7ff
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x00796818    d94308
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0079681b    8b4e60
                         {disp8} fstp       dword ptr [esi + 0x64]                        // 0x0079681e    d95e64
                         {disp8} mov        edx, dword ptr [esi + 0x6c]                   // 0x00796821    8b566c
                         {disp8} mov        dword ptr [esi + 0x7c], ecx                   // 0x00796824    894e7c
                         {disp32} mov       dword ptr [esi + 0x00000080], edx             // 0x00796827    899680000000
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0079682d    8d54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00796831    8d4c244c
                         {disp8} mov        dword ptr [esi + 0x68], ebp                   // 0x00796835    896e68
                         {disp8} mov        dword ptr [esi + 0x78], 0x40400000            // 0x00796838    c7467800004040
                         {disp8} mov        dword ptr [esi + 0x74], ebp                   // 0x0079683f    896e74
                         {disp8} mov        dword ptr [esp + 0x1c], 0x40580000            // 0x00796842    c744241c00005840
                         {disp8} mov        dword ptr [esp + 0x20], 0x40900000            // 0x0079684a    c744242000009040
                         {disp8} mov        dword ptr [esp + 0x24], 0x40900000            // 0x00796852    c744242400009040
                         {disp8} mov        dword ptr [esp + 0x28], 0x40900000            // 0x0079685a    c744242800009040
                         {disp8} mov        dword ptr [esp + 0x2c], 0x40900000            // 0x00796862    c744242c00009040
                         {disp8} mov        dword ptr [esp + 0x30], 0x40400000            // 0x0079686a    c744243000004040
                         {disp8} mov        dword ptr [esp + 0x34], 0x40900000            // 0x00796872    c744243400009040
                         {disp8} mov        dword ptr [esp + 0x38], 0x40400000            // 0x0079687a    c744243800004040
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3f800000            // 0x00796882    c744243c0000803f
                         {disp8} mov        dword ptr [esp + 0x48], ebp                   // 0x0079688a    896c2448
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x0079688e    896c2444
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x00796892    896c2440
                         call               ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x00796896    e8f5490600
                         {disp8} fld        dword ptr [esi + 0x64]                        // 0x0079689b    d94664
                         {disp8} fsub       dword ptr [esi + 0x7c]                        // 0x0079689e    d8667c
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x007968a1    8d542410
                         {disp32} fld       dword ptr [esi + 0x00000080]                  // 0x007968a5    d98680000000
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x007968ab    8d4c244c
                         {disp8} fmul       dword ptr [esi + 0x78]                        // 0x007968af    d84e78
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x007968b2    896c2418
                         fsubp              st(1), st                                     // 0x007968b6    dee9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007968b8    d95c2410
                         {disp8} fld        dword ptr [esi + 0x68]                        // 0x007968bc    d94668
                         {disp32} fsub      dword ptr [esi + 0x00000080]                  // 0x007968bf    d8a680000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007968c5    d95c2414
                         call               _jmp_addr_0x00418a50                          // 0x007968c9    e88221c8ff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x007968ce    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x007968d2    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x007968d6    8b542418
                         {disp32} mov       dword ptr [esi + 0x0000008c], eax             // 0x007968da    89868c000000
                         {disp32} mov       dword ptr [esi + 0x00000088], ecx             // 0x007968e0    898e88000000
                         {disp32} mov       dword ptr [esi + 0x00000084], edx             // 0x007968e6    899684000000
                         {disp32} mov       eax, dword ptr [edi + 0x00000438]             // 0x007968ec    8b8738040000
                         pop                ebp                                           // 0x007968f2    5d
                         {disp32} mov       byte ptr [edi + 0x000003f4], 0x00             // 0x007968f3    c687f403000000
                         {disp32} mov       dword ptr [edi + 0x00000124], eax             // 0x007968fa    898724010000
                         pop                ebx                                           // 0x00796900    5b
_jmp_addr_0x00796901:    pop                edi                                           // 0x00796901    5f
                         or                 eax, -0x1                                     // 0x00796902    83c8ff
                         pop                esi                                           // 0x00796905    5e
                         add                esp, 0x6c                                     // 0x00796906    83c46c
                         ret                0x0018                                        // 0x00796909    c21800

// Snippet: jmptbl, [0x0079690c, 0x0079691c)
.byte 0x19, 0x66, 0x79, 0x00      // 0x0079690c
.byte 0x38, 0x66, 0x79, 0x00      // 0x00796910
.byte 0x42, 0x66, 0x79, 0x00      // 0x00796914
.byte 0x9b, 0x66, 0x79, 0x00      // 0x00796918

// Snippet: db, [0x0079691c, 0x00796920)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0079691c

