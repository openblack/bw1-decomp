.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern  ___dl__FPv

.globl _jmp_addr_0x00401000
.globl _globl_ct_0x00401040
.globl _globl_ct_0x00401070
.globl _globl_ct_0x00401120

_jmp_addr_0x00401000:    {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x00401000    8b44240c
                         push              ebx                                           // 0x00401004    53
                         {disp8} mov       ebx, dword ptr [esp + 0x0c]                   // 0x00401005    8b5c240c
                         mov.s             ecx, ebx                                      // 0x00401009    8bcb
                         imul              ecx, eax                                      // 0x0040100b    0fafc8
                         push              esi                                           // 0x0040100e    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x0040100f    8b74240c
                         add.s             esi, ecx                                      // 0x00401013    03f1
                         dec               eax                                           // 0x00401015    48
                         {disp8} js        _jmp_addr_0x0040102c                          // 0x00401016    7814
                         push              ebp                                           // 0x00401018    55
                         {disp8} mov       ebp, dword ptr [esp + 0x1c]                   // 0x00401019    8b6c241c
                         push              edi                                           // 0x0040101d    57
                         {disp8} lea       edi, dword ptr [eax + 0x01]                   // 0x0040101e    8d7801
_jmp_addr_0x00401021:    sub.s             esi, ebx                                      // 0x00401021    2bf3
                         mov.s             ecx, esi                                      // 0x00401023    8bce
                         call              ebp                                           // 0x00401025    ffd5
                         dec               edi                                           // 0x00401027    4f
                         {disp8} jne       _jmp_addr_0x00401021                          // 0x00401028    75f7
                         pop               edi                                           // 0x0040102a    5f
                         pop               ebp                                           // 0x0040102b    5d
_jmp_addr_0x0040102c:    pop               esi                                           // 0x0040102c    5e
                         pop               ebx                                           // 0x0040102d    5b
                         ret               0x0010                                        // 0x0040102e    c21000
                         nop                                                             // 0x00401031    90
                         nop                                                             // 0x00401032    90
                         nop                                                             // 0x00401033    90
                         nop                                                             // 0x00401034    90
                         nop                                                             // 0x00401035    90
                         nop                                                             // 0x00401036    90
                         nop                                                             // 0x00401037    90
                         nop                                                             // 0x00401038    90
                         nop                                                             // 0x00401039    90
                         nop                                                             // 0x0040103a    90
                         nop                                                             // 0x0040103b    90
                         nop                                                             // 0x0040103c    90
                         nop                                                             // 0x0040103d    90
                         nop                                                             // 0x0040103e    90
                         nop                                                             // 0x0040103f    90
_globl_ct_0x00401040:    {disp32} jmp      _jmp_addr_0x00401050                          // 0x00401040    e90b000000
                         nop                                                             // 0x00401045    90
                         nop                                                             // 0x00401046    90
                         nop                                                             // 0x00401047    90
                         nop                                                             // 0x00401048    90
                         nop                                                             // 0x00401049    90
                         nop                                                             // 0x0040104a    90
                         nop                                                             // 0x0040104b    90
                         nop                                                             // 0x0040104c    90
                         nop                                                             // 0x0040104d    90
                         nop                                                             // 0x0040104e    90
                         nop                                                             // 0x0040104f    90
_jmp_addr_0x00401050:    {disp32} fld      dword ptr [rdata_bytes + 0x9e4]               // 0x00401050    d905e4998a00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x9e0]               // 0x00401056    d80de0998a00
                         {disp32} fstp     dword ptr [data_bytes + 0x27668c]             // 0x0040105c    d91d8cc6c300
                         ret                                                             // 0x00401062    c3
                         nop                                                             // 0x00401063    90
                         nop                                                             // 0x00401064    90
                         nop                                                             // 0x00401065    90
                         nop                                                             // 0x00401066    90
                         nop                                                             // 0x00401067    90
                         nop                                                             // 0x00401068    90
                         nop                                                             // 0x00401069    90
                         nop                                                             // 0x0040106a    90
                         nop                                                             // 0x0040106b    90
                         nop                                                             // 0x0040106c    90
                         nop                                                             // 0x0040106d    90
                         nop                                                             // 0x0040106e    90
                         nop                                                             // 0x0040106f    90
_globl_ct_0x00401070:    {disp32} jmp      _jmp_addr_0x00401080                          // 0x00401070    e90b000000
                         nop                                                             // 0x00401075    90
                         nop                                                             // 0x00401076    90
                         nop                                                             // 0x00401077    90
                         nop                                                             // 0x00401078    90
                         nop                                                             // 0x00401079    90
                         nop                                                             // 0x0040107a    90
                         nop                                                             // 0x0040107b    90
                         nop                                                             // 0x0040107c    90
                         nop                                                             // 0x0040107d    90
                         nop                                                             // 0x0040107e    90
                         nop                                                             // 0x0040107f    90
_jmp_addr_0x00401080:    {disp32} fld      dword ptr [rdata_bytes + 0x9e8]               // 0x00401080    d905e8998a00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x9f0]               // 0x00401086    d80df0998a00
                         {disp32} fstp     dword ptr [data_bytes + 0x276688]             // 0x0040108c    d91d88c6c300
                         ret                                                             // 0x00401092    c3
                         nop                                                             // 0x00401093    90
                         nop                                                             // 0x00401094    90
                         nop                                                             // 0x00401095    90
                         nop                                                             // 0x00401096    90
                         nop                                                             // 0x00401097    90
                         nop                                                             // 0x00401098    90
                         nop                                                             // 0x00401099    90
                         nop                                                             // 0x0040109a    90
                         nop                                                             // 0x0040109b    90
                         nop                                                             // 0x0040109c    90
                         nop                                                             // 0x0040109d    90
                         nop                                                             // 0x0040109e    90
                         nop                                                             // 0x0040109f    90
                         push              ebx                                           // 0x004010a0    53
                         {disp8} mov       bl, byte ptr [esp + 0x08]                     // 0x004010a1    8a5c2408
                         test              bl, 0x02                                      // 0x004010a5    f6c302
                         push              esi                                           // 0x004010a8    56
                         mov.s             esi, ecx                                      // 0x004010a9    8bf1
                         {disp8} je        _jmp_addr_0x004010f1                          // 0x004010ab    7444
                         {disp8} mov       eax, dword ptr [esi + -0x04]                  // 0x004010ad    8b46fc
                         push              edi                                           // 0x004010b0    57
                         {disp8} lea       edi, dword ptr [esi + -0x04]                  // 0x004010b1    8d7efc
                         lea               ecx, dword ptr [eax + eax * 0x2]              // 0x004010b4    8d0c40
                         dec               eax                                           // 0x004010b7    48
                         lea               ecx, dword ptr [esi + ecx * 0x4]              // 0x004010b8    8d0c8e
                         {disp8} js        _jmp_addr_0x004010db                          // 0x004010bb    781e
                         push              ebp                                           // 0x004010bd    55
                         {disp8} lea       esi, dword ptr [ecx + 0x08]                   // 0x004010be    8d7108
                         {disp8} lea       ebp, dword ptr [eax + 0x01]                   // 0x004010c1    8d6801
_jmp_addr_0x004010c4:    {disp8} mov       eax, dword ptr [esi + -0x0c]                  // 0x004010c4    8b46f4
                         sub               esi, 0x0c                                     // 0x004010c7    83ee0c
                         test              eax, eax                                      // 0x004010ca    85c0
                         {disp8} je        _jmp_addr_0x004010d7                          // 0x004010cc    7409
                         push              eax                                           // 0x004010ce    50
                         call               ___dl__FPv                                   // 0x004010cf    e8c4dd3a00
                         add               esp, 0x04                                     // 0x004010d4    83c404
_jmp_addr_0x004010d7:    dec               ebp                                           // 0x004010d7    4d
                         {disp8} jne       _jmp_addr_0x004010c4                          // 0x004010d8    75ea
                         pop               ebp                                           // 0x004010da    5d
_jmp_addr_0x004010db:    test              bl, 0x01                                      // 0x004010db    f6c301
                         {disp8} je        _jmp_addr_0x004010e9                          // 0x004010de    7409
                         push              edi                                           // 0x004010e0    57
                         call               ___dl__FPv                                   // 0x004010e1    e8b2dd3a00
                         add               esp, 0x04                                     // 0x004010e6    83c404
_jmp_addr_0x004010e9:    mov.s             eax, edi                                      // 0x004010e9    8bc7
                         pop               edi                                           // 0x004010eb    5f
                         pop               esi                                           // 0x004010ec    5e
                         pop               ebx                                           // 0x004010ed    5b
                         ret               0x0004                                        // 0x004010ee    c20400
_jmp_addr_0x004010f1:    {disp8} mov       eax, dword ptr [esi + 0x08]                   // 0x004010f1    8b4608
                         test              eax, eax                                      // 0x004010f4    85c0
                         {disp8} je        _jmp_addr_0x00401101                          // 0x004010f6    7409
                         push              eax                                           // 0x004010f8    50
                         call               ___dl__FPv                                   // 0x004010f9    e89add3a00
                         add               esp, 0x04                                     // 0x004010fe    83c404
_jmp_addr_0x00401101:    test              bl, 0x01                                      // 0x00401101    f6c301
                         {disp8} je        _jmp_addr_0x0040110f                          // 0x00401104    7409
                         push              esi                                           // 0x00401106    56
                         call               ___dl__FPv                                   // 0x00401107    e88cdd3a00
                         add               esp, 0x04                                     // 0x0040110c    83c404
_jmp_addr_0x0040110f:    mov.s             eax, esi                                      // 0x0040110f    8bc6
                         pop               esi                                           // 0x00401111    5e
                         pop               ebx                                           // 0x00401112    5b
                         ret               0x0004                                        // 0x00401113    c20400
                         nop                                                             // 0x00401116    90
                         nop                                                             // 0x00401117    90
                         nop                                                             // 0x00401118    90
                         nop                                                             // 0x00401119    90
                         nop                                                             // 0x0040111a    90
                         nop                                                             // 0x0040111b    90
                         nop                                                             // 0x0040111c    90
                         nop                                                             // 0x0040111d    90
                         nop                                                             // 0x0040111e    90
                         nop                                                             // 0x0040111f    90
_globl_ct_0x00401120:    {disp32} jmp      _jmp_addr_0x00401130                          // 0x00401120    e90b000000
                         nop                                                             // 0x00401125    90
                         nop                                                             // 0x00401126    90
                         nop                                                             // 0x00401127    90
                         nop                                                             // 0x00401128    90
                         nop                                                             // 0x00401129    90
                         nop                                                             // 0x0040112a    90
                         nop                                                             // 0x0040112b    90
                         nop                                                             // 0x0040112c    90
                         nop                                                             // 0x0040112d    90
                         nop                                                             // 0x0040112e    90
                         nop                                                             // 0x0040112f    90
_jmp_addr_0x00401130:    {disp32} mov      dword ptr [data_bytes + 0x276684], 0xffffffff // 0x00401130    c70584c6c300ffffffff
                         ret                                                             // 0x0040113a    c3
// SEH Code path ??
                         call               _jmp_addr_0x00401879                         // 0x0040113b    e839070000

