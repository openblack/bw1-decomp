.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?FUN_004046a0@Abode@@QAEXH@Z
.extern ?DrawPercentFull@Abode@@QAEXH@Z
.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z
.extern ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z
.extern ?unadjust@SetupThing@@SAMAAH0@Z
.extern _jmp_addr_0x00411fc0
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern _jmp_addr_0x0042a4b0
.extern ?SetMessage@GDebug@@SAXGPADZZ
.extern _jmp_addr_0x00517f90
.extern ?Draw@MultiMapFixed@@UAEXXZ
.extern ?Draw@MobileObject@@UAEXXZ
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?GetVisualTime@GGameInfo@@QAEMXZ
.extern _jmp_addr_0x005575e0
.extern _jmp_addr_0x005c9090
.extern _jmp_addr_0x005d56c0
.extern _jmp_addr_0x0063b040
.extern _jmp_addr_0x0063b5d0
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x0071d8e0
.extern _jmp_addr_0x00726d20
.extern _jmp_addr_0x00726d30
.extern _jmp_addr_0x00730480
.extern _jmp_addr_0x00730570
.extern ?GetAbode@Villager@@QAEPAVAbode@@XZ
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast
.extern _wcscat
.extern _wcscpy
.extern _swprintf
.extern _jmp_addr_0x007f7960
.extern _jmp_addr_0x007f8d30
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern _jmp_addr_0x0080bec0
.extern _jmp_addr_0x008398a0
.extern _jmp_addr_0x0083add0
.extern _jmp_addr_0x00868c80
.extern ?Time2SkyType@LH3DSky@@QAEMM@Z

.extern ?Draw@Abode@@UAEXXZ
.globl _jmp_addr_0x005167d0
.globl _jmp_addr_0x00516840
.globl ?GetCell@LH3DIsland@@SAPAULandCell@@JJ@Z
.globl _jmp_addr_0x00516cb0
.globl _jmp_addr_0x00517080

.globl _globl_ct_0x00515e90
.globl _globl_ct_0x00515ec0
.globl _globl_ct_0x00515ef0
.globl _globl_ct_0x00515f10
.globl _globl_ct_0x00515f40
.globl ?Draw@Abode@@UAEXXZ
.globl ?Draw@Windmill@@UAEXXZ
.globl ?Draw@TownCentre@@UAEXXZ
.globl ?Draw@Ball@@UAEXXZ

start_0x00515e90_0x005178d0:
// Snippet: asm, [0x00515e90, 0x005178bf)
_globl_ct_0x00515e90:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00515e90    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00515e96    b001
                         test               al, cl                                        // 0x00515e98    84c8
                         {disp8} jne        _jmp_addr_0x00515ea4                          // 0x00515e9a    7508
                         or.s               cl, al                                        // 0x00515e9c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00515e9e    880d34c9fa00
_jmp_addr_0x00515ea4:    {disp32} jmp       _jmp_addr_0x00515eb0                          // 0x00515ea4    e907000000
                         nop                                                              // 0x00515ea9    90
                         nop                                                              // 0x00515eaa    90
                         nop                                                              // 0x00515eab    90
                         nop                                                              // 0x00515eac    90
                         nop                                                              // 0x00515ead    90
                         nop                                                              // 0x00515eae    90
                         nop                                                              // 0x00515eaf    90
_jmp_addr_0x00515eb0:    push               0x00407870                                    // 0x00515eb0    6870784000
                         call               _atexit                                       // 0x00515eb5    e8d7f82a00
                         pop                ecx                                           // 0x00515eba    59
                         ret                                                              // 0x00515ebb    c3
                         nop                                                              // 0x00515ebc    90
                         nop                                                              // 0x00515ebd    90
                         nop                                                              // 0x00515ebe    90
                         nop                                                              // 0x00515ebf    90
_globl_ct_0x00515ec0:    {disp32} jmp       _jmp_addr_0x00515ed0                          // 0x00515ec0    e90b000000
                         nop                                                              // 0x00515ec5    90
                         nop                                                              // 0x00515ec6    90
                         nop                                                              // 0x00515ec7    90
                         nop                                                              // 0x00515ec8    90
                         nop                                                              // 0x00515ec9    90
                         nop                                                              // 0x00515eca    90
                         nop                                                              // 0x00515ecb    90
                         nop                                                              // 0x00515ecc    90
                         nop                                                              // 0x00515ecd    90
                         nop                                                              // 0x00515ece    90
                         nop                                                              // 0x00515ecf    90
_jmp_addr_0x00515ed0:    {disp32} fld       dword ptr [rdata_bytes + 0x2f6c8]             // 0x00515ed0    d905c8868d00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f6c4]             // 0x00515ed6    d80dc4868d00
                         {disp32} fstp      dword ptr [data_bytes + 0x300304]             // 0x00515edc    d91d0463cc00
                         ret                                                              // 0x00515ee2    c3
                         nop                                                              // 0x00515ee3    90
                         nop                                                              // 0x00515ee4    90
                         nop                                                              // 0x00515ee5    90
                         nop                                                              // 0x00515ee6    90
                         nop                                                              // 0x00515ee7    90
                         nop                                                              // 0x00515ee8    90
                         nop                                                              // 0x00515ee9    90
                         nop                                                              // 0x00515eea    90
                         nop                                                              // 0x00515eeb    90
                         nop                                                              // 0x00515eec    90
                         nop                                                              // 0x00515eed    90
                         nop                                                              // 0x00515eee    90
                         nop                                                              // 0x00515eef    90
_globl_ct_0x00515ef0:    {disp32} jmp       _jmp_addr_0x00515f00                          // 0x00515ef0    e90b000000
                         nop                                                              // 0x00515ef5    90
                         nop                                                              // 0x00515ef6    90
                         nop                                                              // 0x00515ef7    90
                         nop                                                              // 0x00515ef8    90
                         nop                                                              // 0x00515ef9    90
                         nop                                                              // 0x00515efa    90
                         nop                                                              // 0x00515efb    90
                         nop                                                              // 0x00515efc    90
                         nop                                                              // 0x00515efd    90
                         nop                                                              // 0x00515efe    90
                         nop                                                              // 0x00515eff    90
_jmp_addr_0x00515f00:    {disp32} mov       dword ptr [data_bytes + 0x300300], 0xffffffff // 0x00515f00    c7050063cc00ffffffff
                         ret                                                              // 0x00515f0a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00515f0b    e869b9eeff
_globl_ct_0x00515f10:    {disp32} jmp       _jmp_addr_0x00515f20                          // 0x00515f10    e90b000000
                         nop                                                              // 0x00515f15    90
                         nop                                                              // 0x00515f16    90
                         nop                                                              // 0x00515f17    90
                         nop                                                              // 0x00515f18    90
                         nop                                                              // 0x00515f19    90
                         nop                                                              // 0x00515f1a    90
                         nop                                                              // 0x00515f1b    90
                         nop                                                              // 0x00515f1c    90
                         nop                                                              // 0x00515f1d    90
                         nop                                                              // 0x00515f1e    90
                         nop                                                              // 0x00515f1f    90
_jmp_addr_0x00515f20:    fldln2                                                           // 0x00515f20    d9ed
                         {disp32} fld       qword ptr [__real@3fe0000000000000]           // 0x00515f22    dd0560b28a00
                         fyl2x                                                            // 0x00515f28    d9f1
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00515f2a    d83d90a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x3002fc]             // 0x00515f30    d91dfc62cc00
                         ret                                                              // 0x00515f36    c3
                         nop                                                              // 0x00515f37    90
                         nop                                                              // 0x00515f38    90
                         nop                                                              // 0x00515f39    90
                         nop                                                              // 0x00515f3a    90
                         nop                                                              // 0x00515f3b    90
                         nop                                                              // 0x00515f3c    90
                         nop                                                              // 0x00515f3d    90
                         nop                                                              // 0x00515f3e    90
                         nop                                                              // 0x00515f3f    90
_globl_ct_0x00515f40:    {disp32} jmp       _jmp_addr_0x00515f50                          // 0x00515f40    e90b000000
                         nop                                                              // 0x00515f45    90
                         nop                                                              // 0x00515f46    90
                         nop                                                              // 0x00515f47    90
                         nop                                                              // 0x00515f48    90
                         nop                                                              // 0x00515f49    90
                         nop                                                              // 0x00515f4a    90
                         nop                                                              // 0x00515f4b    90
                         nop                                                              // 0x00515f4c    90
                         nop                                                              // 0x00515f4d    90
                         nop                                                              // 0x00515f4e    90
                         nop                                                              // 0x00515f4f    90
_jmp_addr_0x00515f50:    {disp32} mov       dword ptr [data_bytes + 0x3002f0], 0x00000000 // 0x00515f50    c705f062cc0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3002f4], 0x00000000 // 0x00515f5a    c705f462cc0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x3002f8], 0x00000000 // 0x00515f64    c705f862cc0000000000
                         ret                                                              // 0x00515f6e    c3
                         nop                                                              // 0x00515f6f    90
?Draw@Abode@@UAEXXZ:
                         sub                esp, 0x30                                     // 0x00515f70    83ec30
                         push               ebx                                           // 0x00515f73    53
                         push               ebp                                           // 0x00515f74    55
                         push               esi                                           // 0x00515f75    56
                         mov.s              esi, ecx                                      // 0x00515f76    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x000000b6]               // 0x00515f78    8a86b6000000
                         xor.s              ebx, ebx                                      // 0x00515f7e    33db
                         cmp.s              al, bl                                        // 0x00515f80    3ac3
                         push               edi                                           // 0x00515f82    57
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x00515f83    8b7e40
                         {disp32} je        _jmp_addr_0x0051606d                          // 0x00515f86    0f84e1000000
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x00515f8c    b9f819d000
                         call               _jmp_addr_0x005575e0                          // 0x00515f91    e84a160400
                         test               eax, eax                                      // 0x00515f96    85c0
                         {disp32} je        _jmp_addr_0x0051606d                          // 0x00515f98    0f84cf000000
                         {disp8} fld        dword ptr [edi + 0x40]                        // 0x00515f9e    d94740
                         {disp8} fadd       dword ptr [edi + 0x38]                        // 0x00515fa1    d84738
                         fabs                                                             // 0x00515fa4    d9e1
                         {disp32} fmul      qword ptr [__real@3fb999999999999a]           // 0x00515fa6    dc0d20b28a00
                         {disp8} fadd       dword ptr [edi + 0x3c]                        // 0x00515fac    d8473c
                         fld                st(0)                                         // 0x00515faf    d9c0
                         call               _jmp_addr_0x007a1400                          // 0x00515fb1    e84ab42800
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00515fb6    89442410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00515fba    db442410
                         fsubr              st, st(1)                                     // 0x00515fbe    d8e9
                         {disp32} fadd      dword ptr [data_bytes + 0x22d380]             // 0x00515fc0    d8058033bf00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00515fc6    d95c2410
                         fstp               st(0)                                         // 0x00515fca    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00515fcc    d9442410
                         {disp32} fcomp     qword ptr [rdata_bytes + 0x2f718]             // 0x00515fd0    dc1d18878d00
                         fnstsw             ax                                            // 0x00515fd6    dfe0
                         test               ah, 0x41                                      // 0x00515fd8    f6c441
                         {disp8} jne        _jmp_addr_0x00515ff4                          // 0x00515fdb    7517
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00515fdd    d9442410
                         {disp32} fsub      qword ptr [rdata_bytes + 0x2f718]             // 0x00515fe1    dc2518878d00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2f710]             // 0x00515fe7    dc0d10878d00
                         call               _jmp_addr_0x007a1400                          // 0x00515fed    e80eb42800
                         {disp8} jmp        _jmp_addr_0x0051601a                          // 0x00515ff2    eb26
_jmp_addr_0x00515ff4:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00515ff4    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]             // 0x00515ff8    d81d502c8c00
                         fnstsw             ax                                            // 0x00515ffe    dfe0
                         test               ah, 0x01                                      // 0x00516000    f6c401
                         {disp8} je         _jmp_addr_0x0051606d                          // 0x00516003    7468
                         {disp32} fld       dword ptr [rdata_bytes + 0x19c50]             // 0x00516005    d905502c8c00
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0051600b    d8642410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f708]             // 0x0051600f    d80d08878d00
                         call               _jmp_addr_0x007a1400                          // 0x00516015    e8e6b32800
_jmp_addr_0x0051601a:    mov.s              ebp, eax                                      // 0x0051601a    8be8
                         cmp.s              ebp, ebx                                      // 0x0051601c    3beb
                         {disp8} jle        _jmp_addr_0x0051606d                          // 0x0051601e    7e4d
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00516020    d9442410
                         {disp32} fmul      dword ptr [__real@447a0000]                   // 0x00516024    d80d28b28a00
                         call               _jmp_addr_0x007a1400                          // 0x0051602a    e8d1b32800
                         and                eax, 0x07                                     // 0x0051602f    83e007
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x008d86d0]       // 0x00516032    8b0485d0868d00
                         shl                eax, 2                                        // 0x00516039    c1e002
                         and                eax, 0x1f                                     // 0x0051603c    83e01f
                         or                 eax, 0xe0                                     // 0x0051603f    0de0000000
                         cmp                ebp, 0x00000100                               // 0x00516044    81fd00010000
                         {disp8} jge        _jmp_addr_0x00516052                          // 0x0051604a    7d06
                         imul               eax, ebp                                      // 0x0051604c    0fafc5
                         sar                eax, 8                                        // 0x0051604f    c1f808
_jmp_addr_0x00516052:    mov                ebp, dword ptr [edi]                          // 0x00516052    8b2f
                         mov.s              edx, eax                                      // 0x00516054    8bd0
                         or                 edx, 0xffffff00                               // 0x00516056    81ca00ffffff
                         shl                edx, 8                                        // 0x0051605c    c1e208
                         or.s               edx, eax                                      // 0x0051605f    0bd0
                         shl                edx, 8                                        // 0x00516061    c1e208
                         or.s               edx, eax                                      // 0x00516064    0bd0
                         mov.s              ecx, edi                                      // 0x00516066    8bcf
                         call               dword ptr [ebp + 0x30]                        // 0x00516068    ff5530
                         {disp8} jmp        _jmp_addr_0x00516076                          // 0x0051606b    eb09
_jmp_addr_0x0051606d:    mov                eax, dword ptr [edi]                          // 0x0051606d    8b07
                         xor.s              edx, edx                                      // 0x0051606f    33d2
                         mov.s              ecx, edi                                      // 0x00516071    8bcf
                         call               dword ptr [eax + 0x30]                        // 0x00516073    ff5030
_jmp_addr_0x00516076:    push               0x1                                           // 0x00516076    6a01
                         mov.s              ecx, esi                                      // 0x00516078    8bce
                         call               ?FUN_004046a0@Abode@@QAEXH@Z                  // 0x0051607a    e821e6eeff
                         cmp                dword ptr [esi + 0x00000090], ebx             // 0x0051607f    399e90000000
                         {disp32} je        _jmp_addr_0x00516130                          // 0x00516085    0f84a5000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0051608b    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x0051608e    8b11
                         call               dword ptr [edx + 0xf8]                        // 0x00516090    ff92f8000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00516096    8b4e40
                         push               ecx                                           // 0x00516099    51
                         {disp8} lea        ecx, dword ptr [eax + 0x14]                   // 0x0051609a    8d4814
                         call               _jmp_addr_0x00868c80                          // 0x0051609d    e8de2b3500
                         test               eax, eax                                      // 0x005160a2    85c0
                         {disp8} je         _jmp_addr_0x00516123                          // 0x005160a4    747d
                         {disp8} mov        edi, dword ptr [esi + 0x44]                   // 0x005160a6    8b7e44
                         cmp.s              edi, ebx                                      // 0x005160a9    3bfb
                         {disp8} je         _jmp_addr_0x005160cb                          // 0x005160ab    741e
                         mov.s              ecx, edi                                      // 0x005160ad    8bcf
                         call               _jmp_addr_0x00730480                          // 0x005160af    e8cca32100
                         mov.s              ecx, edi                                      // 0x005160b4    8bcf
                         mov.s              ebp, eax                                      // 0x005160b6    8be8
                         call               _jmp_addr_0x00730570                          // 0x005160b8    e8b3a42100
                         {disp32} mov       ecx, dword ptr [esi + 0x00000090]             // 0x005160bd    8b8e90000000
                         {disp8} mov        dword ptr [ecx + 0x10], eax                   // 0x005160c3    894110
                         {disp8} mov        dword ptr [ecx + 0x14], ebp                   // 0x005160c6    896914
                         {disp8} jmp        _jmp_addr_0x005160db                          // 0x005160c9    eb10
_jmp_addr_0x005160cb:    {disp32} mov       eax, dword ptr [esi + 0x00000090]             // 0x005160cb    8b8690000000
                         {disp8} mov        dword ptr [eax + 0x10], 0xffffffff            // 0x005160d1    c74010ffffffff
                         {disp8} mov        dword ptr [eax + 0x14], ebx                   // 0x005160d8    895814
_jmp_addr_0x005160db:    {disp8} mov        edx, dword ptr [esi + 0x40]                   // 0x005160db    8b5640
                         {disp32} mov       ecx, dword ptr [esi + 0x00000090]             // 0x005160de    8b8e90000000
                         add                edx, 0x38                                     // 0x005160e4    83c238
                         push               edx                                           // 0x005160e7    52
                         push               ebx                                           // 0x005160e8    53
                         call               _jmp_addr_0x007f7960                          // 0x005160e9    e872182e00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf4]        // 0x005160ee    a1f41aea00
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x005160f3    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x005160f9    8b895c002500
                         push               eax                                           // 0x005160ff    50
                         push               esi                                           // 0x00516100    56
                         call               _jmp_addr_0x005c9090                          // 0x00516101    e88a2f0b00
                         cmp                dword ptr [data_bytes + 0x4dbad0], ebx        // 0x00516106    391dd01aea00
                         {disp8} je         _jmp_addr_0x00516123                          // 0x0051610c    7415
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0051610e    8b0d5c19d000
                         push               ebx                                           // 0x00516114    53
                         push               ebx                                           // 0x00516115    53
                         push               esi                                           // 0x00516116    56
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00516117    e834f70300
                         mov.s              ecx, eax                                      // 0x0051611c    8bc8
                         call               _jmp_addr_0x005d56c0                          // 0x0051611e    e89df50b00
_jmp_addr_0x00516123:    {disp8} mov        edx, dword ptr [esi + 0x40]                   // 0x00516123    8b5640
                         push               edx                                           // 0x00516126    52
                         mov.s              ecx, esi                                      // 0x00516127    8bce
                         call               _jmp_addr_0x00517f90                          // 0x00516129    e8621e0000
                         {disp8} jmp        _jmp_addr_0x00516137                          // 0x0051612e    eb07
_jmp_addr_0x00516130:    mov.s              ecx, esi                                      // 0x00516130    8bce
                         call               ?Draw@MultiMapFixed@@UAEXXZ                   // 0x00516132    e8591f0000
_jmp_addr_0x00516137:    {disp32} mov       eax, dword ptr [_game]                        // 0x00516137    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205d48]             // 0x0051613c    8b88485d2000
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00516142    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x00516146    895c2418
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0051614a    df6c2414
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x2f704]             // 0x0051614e    d83d04878d00
                         call               _jmp_addr_0x007a1400                          // 0x00516154    e8a7b22800
                         push               eax                                           // 0x00516159    50
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x0051615a    e811841c00
                         add                esp, 0x04                                     // 0x0051615f    83c404
                         cmp                eax, 0x01                                     // 0x00516162    83f801
                         {disp32} jne       _jmp_addr_0x00516288                          // 0x00516165    0f851d010000
                         mov                edx, dword ptr [esi]                          // 0x0051616b    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0051616d    8d442420
                         push               eax                                           // 0x00516171    50
                         mov.s              ecx, esi                                      // 0x00516172    8bce
                         call               dword ptr [edx + 0x10]                        // 0x00516174    ff5210
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00516177    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0051617d    e8fe5f0300
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00516182    d9442420
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]        // 0x00516186    8b0db81dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]        // 0x0051618c    8b15bc1dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]        // 0x00516192    a1c01dea00
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00516197    894c2414
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0051619b    d8642414
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0051619f    d9442424
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x005161a3    89542418
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x005161a7    d8642418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005161ab    8944241c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x005161af    d9442428
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x005161b3    d864241c
                         fld                st(0)                                         // 0x005161b7    d9c0
                         fmul               st, st(1)                                     // 0x005161b9    d8c9
                         fld                st(2)                                         // 0x005161bb    d9c2
                         fmul               st, st(3)                                     // 0x005161bd    d8cb
                         faddp              st(1), st                                     // 0x005161bf    dec1
                         fld                st(3)                                         // 0x005161c1    d9c3
                         fmul               st, st(4)                                     // 0x005161c3    d8cc
                         faddp              st(1), st                                     // 0x005161c5    dec1
                         fsqrt                                                            // 0x005161c7    d9fa
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x005161c9    d9542414
                         fstp               st(3)                                         // 0x005161cd    dddb
                         fstp               st(0)                                         // 0x005161cf    ddd8
                         fstp               st(0)                                         // 0x005161d1    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1eb34]             // 0x005161d3    d81d347b8c00
                         fnstsw             ax                                            // 0x005161d9    dfe0
                         test               ah, 0x01                                      // 0x005161db    f6c401
                         {disp32} je        _jmp_addr_0x00516288                          // 0x005161de    0f84a4000000
                         mov                ecx, OFFSET _GGameInfo_00d019f8               // 0x005161e4    b9f819d000
                         call               ?GetVisualTime@GGameInfo@@QAEMXZ              // 0x005161e9    e8b2130400
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x005161ee    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005161f2    8b4c2410
                         push               ecx                                           // 0x005161f6    51
                         call               ?Time2SkyType@LH3DSky@@QAEMM@Z                // 0x005161f7    e8b43f3500
                         {disp32} fcom      dword ptr [__real@3f333333]                   // 0x005161fc    d81538b28a00
                         add                esp, 0x04                                     // 0x00516202    83c404
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x00516205    895c242c
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00516209    895c2430
                         fnstsw             ax                                            // 0x0051620d    dfe0
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000013            // 0x0051620f    c744243413000000
                         {disp8} mov        dword ptr [esp + 0x38], ebx                   // 0x00516217    895c2438
                         test               ah, 0x01                                      // 0x0051621b    f6c401
                         {disp8} je         _jmp_addr_0x0051622c                          // 0x0051621e    740c
                         fstp               st(0)                                         // 0x00516220    ddd8
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000047            // 0x00516222    c744243c47000000
                         {disp8} jmp        _jmp_addr_0x00516266                          // 0x0051622a    eb3a
_jmp_addr_0x0051622c:    {disp32} fcomp     dword ptr [rdata_bytes + 0x1ea18]             // 0x0051622c    d81d187a8c00
                         fnstsw             ax                                            // 0x00516232    dfe0
                         test               ah, 0x01                                      // 0x00516234    f6c401
                         {disp8} je         _jmp_addr_0x0051625e                          // 0x00516237    7425
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00516239    d9442410
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x261c0]             // 0x0051623d    d81dc0f18c00
                         fnstsw             ax                                            // 0x00516243    dfe0
                         test               ah, 0x01                                      // 0x00516245    f6c401
                         {disp8} je         _jmp_addr_0x00516254                          // 0x00516248    740a
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000049            // 0x0051624a    c744243c49000000
                         {disp8} jmp        _jmp_addr_0x00516266                          // 0x00516252    eb12
_jmp_addr_0x00516254:    {disp8} mov        dword ptr [esp + 0x3c], 0x00000048            // 0x00516254    c744243c48000000
                         {disp8} jmp        _jmp_addr_0x00516266                          // 0x0051625c    eb08
_jmp_addr_0x0051625e:    {disp8} mov        dword ptr [esp + 0x3c], 0x0000004a            // 0x0051625e    c744243c4a000000
_jmp_addr_0x00516266:    {disp32} mov       ecx, dword ptr [_global]                      // 0x00516266    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003b0]             // 0x0051626c    8b91b0030000
                         push               ebx                                           // 0x00516272    53
                         push               ebx                                           // 0x00516273    53
                         push               0x1                                           // 0x00516274    6a01
                         push               edx                                           // 0x00516276    52
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00516277    8b542424
                         push               ebx                                           // 0x0051627b    53
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x0051627c    8d442440
                         push               eax                                           // 0x00516280    50
                         push               edx                                           // 0x00516281    52
                         push               esi                                           // 0x00516282    56
                         call               _jmp_addr_0x0042a4b0                          // 0x00516283    e82842f1ff
_jmp_addr_0x00516288:    cmp                dword ptr [esi + 0x0000008c], ebx             // 0x00516288    399e8c000000
                         {disp8} je         _jmp_addr_0x005162e5                          // 0x0051628e    7455
                         cmp                dword ptr [data_bytes + 0x4dbaf0], ebx        // 0x00516290    391df01aea00
                         {disp8} je         _jmp_addr_0x005162e5                          // 0x00516296    744d
                         cmp                byte ptr [esi + 0x000000b6], bl               // 0x00516298    389eb6000000
                         {disp8} jne        _jmp_addr_0x005162d1                          // 0x0051629e    7531
                         mov                eax, dword ptr [esi]                          // 0x005162a0    8b06
                         mov.s              ecx, esi                                      // 0x005162a2    8bce
                         call               dword ptr [eax + 0x310]                       // 0x005162a4    ff9010030000
                         test               eax, eax                                      // 0x005162aa    85c0
                         {disp8} je         _jmp_addr_0x005162b6                          // 0x005162ac    7408
                         cmp                dword ptr [esi + 0x000000c4], ebx             // 0x005162ae    399ec4000000
                         {disp8} jne        _jmp_addr_0x005162d1                          // 0x005162b4    751b
_jmp_addr_0x005162b6:    {disp32} mov       ecx, dword ptr [esi + 0x0000008c]             // 0x005162b6    8b8e8c000000
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x005162bc    8b410c
                         cmp                eax, 0x02                                     // 0x005162bf    83f802
                         {disp8} je         _jmp_addr_0x005162e0                          // 0x005162c2    741c
                         cmp.s              eax, ebx                                      // 0x005162c4    3bc3
                         {disp8} jne        _jmp_addr_0x005162e5                          // 0x005162c6    751d
                         {disp8} mov        dword ptr [ecx + 0x0c], 0x00000002            // 0x005162c8    c7410c02000000
                         {disp8} jmp        _jmp_addr_0x005162da                          // 0x005162cf    eb09
_jmp_addr_0x005162d1:    {disp32} mov       ecx, dword ptr [esi + 0x0000008c]             // 0x005162d1    8b8e8c000000
                         {disp8} mov        dword ptr [ecx + 0x0c], ebx                   // 0x005162d7    89590c
_jmp_addr_0x005162da:    {disp32} mov       ecx, dword ptr [esi + 0x0000008c]             // 0x005162da    8b8e8c000000
_jmp_addr_0x005162e0:    call               _jmp_addr_0x007f8d30                          // 0x005162e0    e84b2a2e00
_jmp_addr_0x005162e5:    {disp32} mov       eax, dword ptr [data_bytes + 0x2723f0]        // 0x005162e5    a1f083c300
                         xor.s              edx, edx                                      // 0x005162ea    33d2
                         {disp8} mov        dl, byte ptr [esi + 0x7c]                     // 0x005162ec    8a567c
                         shr                edx, 4                                        // 0x005162ef    c1ea04
                         and                edx, 0x01                                     // 0x005162f2    83e201
                         cmp.s              eax, ebx                                      // 0x005162f5    3bc3
                         mov.s              edi, edx                                      // 0x005162f7    8bfa
                         {disp8} je         _jmp_addr_0x0051630a                          // 0x005162f9    740f
                         mov                eax, dword ptr [esi]                          // 0x005162fb    8b06
                         mov.s              ecx, esi                                      // 0x005162fd    8bce
                         call               dword ptr [eax + 0x48]                        // 0x005162ff    ff5048
                         cmp                dword ptr [_abode_town_00c4cc6c], eax         // 0x00516302    39056cccc400
                         {disp8} je         _jmp_addr_0x0051630e                          // 0x00516308    7404
_jmp_addr_0x0051630a:    cmp.s              edi, ebx                                      // 0x0051630a    3bfb
                         {disp8} je         _jmp_addr_0x00516316                          // 0x0051630c    7408
_jmp_addr_0x0051630e:    push               edi                                           // 0x0051630e    57
                         mov.s              ecx, esi                                      // 0x0051630f    8bce
                         call               ?DrawPercentFull@Abode@@QAEXH@Z               // 0x00516311    e8da0defff
_jmp_addr_0x00516316:    pop                edi                                           // 0x00516316    5f
                         pop                esi                                           // 0x00516317    5e
                         pop                ebp                                           // 0x00516318    5d
                         pop                ebx                                           // 0x00516319    5b
                         add                esp, 0x30                                     // 0x0051631a    83c430
                         ret                                                              // 0x0051631d    c3
                         nop                                                              // 0x0051631e    90
                         nop                                                              // 0x0051631f    90
?Draw@Windmill@@UAEXXZ:
                         sub                esp, 0x1c                                     // 0x00516320    83ec1c
                         push               esi                                           // 0x00516323    56
                         mov.s              esi, ecx                                      // 0x00516324    8bf1
                         call               ?Draw@Abode@@UAEXXZ                           // 0x00516326    e845fcffff
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0051632b    8b4e40
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0051632e    8d442414
                         push               eax                                           // 0x00516332    50
                         push               0x0                                           // 0x00516333    6a00
                         call               _jmp_addr_0x0063b040                          // 0x00516335    e8064d1200
                         test               eax, eax                                      // 0x0051633a    85c0
                         {disp32} je        _jmp_addr_0x00516448                          // 0x0051633c    0f8406010000
                         {disp32} mov       ecx, dword ptr [_windmill_lh3d_object_00c4cc70]        // 0x00516342    8b0d70ccc400
                         mov                edx, dword ptr [esi]                          // 0x00516348    8b16
                         push               edi                                           // 0x0051634a    57
                         mov                edi, dword ptr [ecx]                          // 0x0051634b    8b39
                         mov.s              ecx, esi                                      // 0x0051634d    8bce
                         call               dword ptr [edx + 0x120]                       // 0x0051634f    ff9220010000
                         mov                eax, dword ptr [esi]                          // 0x00516355    8b06
                         push               ecx                                           // 0x00516357    51
                         mov.s              ecx, esi                                      // 0x00516358    8bce
                         fstp               dword ptr [esp]                               // 0x0051635a    d91c24
                         call               dword ptr [eax + 0x508]                       // 0x0051635d    ff9008050000
                         push               ecx                                           // 0x00516363    51
                         {disp32} mov       ecx, dword ptr [_windmill_lh3d_object_00c4cc70]        // 0x00516364    8b0d70ccc400
                         fstp               dword ptr [esp]                               // 0x0051636a    d91c24
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0051636d    8d542420
                         call               dword ptr [edi + 0x20]                        // 0x00516371    ff5720
                         {disp32} fld       dword ptr [_windmill_float_00c4cc74]          // 0x00516374    d90574ccc400
                         fld                st(0)                                         // 0x0051637a    d9c0
                         {disp32} mov       ecx, dword ptr [_windmill_lh3d_object_00c4cc70]        // 0x0051637c    8b0d70ccc400
                         fcos                                                             // 0x00516382    d9ff
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x00516384    8d4114
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00516387    8d54240c
                         push               edx                                           // 0x0051638b    52
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0051638c    8d4c241c
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00516390    d95c240c
                         fsin                                                             // 0x00516394    d9fe
                         fld                st(0)                                         // 0x00516396    d9c0
                         fmul               dword ptr [eax]                               // 0x00516398    d808
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0051639a    d944240c
                         fmul               dword ptr [eax]                               // 0x0051639e    d808
                         fld                st(2)                                         // 0x005163a0    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x005163a2    d8480c
                         fsubp              st(1), st                                     // 0x005163a5    dee9
                         fstp               dword ptr [eax]                               // 0x005163a7    d918
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005163a9    d944240c
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x005163ad    d8480c
                         fadd               st, st(1)                                     // 0x005163b0    d8c1
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x005163b2    d9580c
                         fstp               st(0)                                         // 0x005163b5    ddd8
                         fld                st(0)                                         // 0x005163b7    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x005163b9    d84804
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005163bc    d944240c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x005163c0    d84804
                         fld                st(2)                                         // 0x005163c3    d9c2
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x005163c5    d84810
                         fsubp              st(1), st                                     // 0x005163c8    dee9
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x005163ca    d95804
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005163cd    d944240c
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x005163d1    d84810
                         fadd               st, st(1)                                     // 0x005163d4    d8c1
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x005163d6    d95810
                         fstp               st(0)                                         // 0x005163d9    ddd8
                         fld                st(0)                                         // 0x005163db    d9c0
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x005163dd    d84808
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x005163e0    d95c2418
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005163e4    d944240c
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x005163e8    d84808
                         fxch               st(1)                                         // 0x005163eb    d9c9
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x005163ed    d84814
                         fsubp              st(1), st                                     // 0x005163f0    dee9
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x005163f2    d95808
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x005163f5    d944240c
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x005163f9    d84814
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x005163fc    d8442418
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x00516400    d95814
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00516403    8d442414
                         push               eax                                           // 0x00516407    50
                         push               ecx                                           // 0x00516408    51
                         call               _jmp_addr_0x00801c90                          // 0x00516409    e882b82e00
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0051640e    8b442418
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00516412    8d54241c
                         push               edx                                           // 0x00516416    52
                         push               eax                                           // 0x00516417    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00516418    8d4c242c
                         push               ecx                                           // 0x0051641c    51
                         call               _jmp_addr_0x007feb30                          // 0x0051641d    e80e872e00
                         {disp32} mov       ecx, dword ptr [_windmill_lh3d_object_00c4cc70]        // 0x00516422    8b0d70ccc400
                         add                esp, 0x18                                     // 0x00516428    83c418
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0051642b    8944240c
                         mov                esi, dword ptr [ecx]                          // 0x0051642f    8b31
                         push               eax                                           // 0x00516431    50
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00516432    8b542414
                         call               dword ptr [esi + 0x2c]                        // 0x00516436    ff562c
                         {disp32} mov       ecx, dword ptr [_windmill_lh3d_object_00c4cc70]        // 0x00516439    8b0d70ccc400
                         mov                edx, dword ptr [ecx]                          // 0x0051643f    8b11
                         call               dword ptr [edx + 0x108]                       // 0x00516441    ff9208010000
                         pop                edi                                           // 0x00516447    5f
_jmp_addr_0x00516448:    pop                esi                                           // 0x00516448    5e
                         add                esp, 0x1c                                     // 0x00516449    83c41c
                         ret                                                              // 0x0051644c    c3
                         nop                                                              // 0x0051644d    90
                         nop                                                              // 0x0051644e    90
                         nop                                                              // 0x0051644f    90
?Draw@TownCentre@@UAEXXZ:
                         sub                esp, 0x08                                     // 0x00516450    83ec08
                         push               ebx                                           // 0x00516453    53
                         push               esi                                           // 0x00516454    56
                         mov.s              ebx, ecx                                      // 0x00516455    8bd9
                         call               ?Draw@Abode@@UAEXXZ                           // 0x00516457    e814fbffff
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4dbaf0]        // 0x0051645c    8b35f01aea00
                         mov                eax, dword ptr [ebx]                          // 0x00516462    8b03
                         mov.s              ecx, ebx                                      // 0x00516464    8bcb
                         {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x00516466    8974240c
                         call               dword ptr [eax + 0x48]                        // 0x0051646a    ff5048
                         test               eax, eax                                      // 0x0051646d    85c0
                         {disp32} je        _jmp_addr_0x005164ff                          // 0x0051646f    0f848a000000
                         push               ebp                                           // 0x00516475    55
                         push               edi                                           // 0x00516476    57
                         {disp32} lea       ebp, dword ptr [ebx + 0x000000d0]             // 0x00516477    8dabd0000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000006            // 0x0051647d    c744241006000000
_jmp_addr_0x00516485:    {disp8} mov        esi, dword ptr [ebp + 0x00]                   // 0x00516485    8b7500
                         test               esi, esi                                      // 0x00516488    85f6
                         {disp8} je         _jmp_addr_0x005164e0                          // 0x0051648a    7454
                         mov                edx, dword ptr [ebx]                          // 0x0051648c    8b13
                         mov.s              ecx, ebx                                      // 0x0051648e    8bcb
                         call               dword ptr [edx + 0x11c]                       // 0x00516490    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00516496    d81d98a38a00
                         fnstsw             ax                                            // 0x0051649c    dfe0
                         test               ah, 0x41                                      // 0x0051649e    f6c441
                         {disp8} jne        _jmp_addr_0x005164e0                          // 0x005164a1    753d
                         {disp8} mov        edi, dword ptr [esi + 0x40]                   // 0x005164a3    8b7e40
                         {disp32} mov       eax, dword ptr [esi + 0x0000010c]             // 0x005164a6    8b860c010000
                         push               eax                                           // 0x005164ac    50
                         or                 edx, 0xffffffff                               // 0x005164ad    83caff
                         mov.s              ecx, edi                                      // 0x005164b0    8bcf
                         call               _jmp_addr_0x0080bec0                          // 0x005164b2    e8095a2f00
                         mov.s              edx, ebx                                      // 0x005164b7    8bd3
                         mov.s              ecx, edi                                      // 0x005164b9    8bcf
                         call               _jmp_addr_0x0063b5d0                          // 0x005164bb    e810511200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x005164c0    a1f01aea00
                         test               eax, eax                                      // 0x005164c5    85c0
                         {disp8} je         _jmp_addr_0x005164e0                          // 0x005164c7    7417
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x005164c9    8b4e40
                         xor.s              edx, edx                                      // 0x005164cc    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x4c]                     // 0x005164ce    8a514c
                         mov.s              ecx, esi                                      // 0x005164d1    8bce
                         push               edx                                           // 0x005164d3    52
                         call               _jmp_addr_0x00726d30                          // 0x005164d4    e857082100
                         mov.s              ecx, esi                                      // 0x005164d9    8bce
                         call               _jmp_addr_0x00726d20                          // 0x005164db    e840082100
_jmp_addr_0x005164e0:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x005164e0    8b442410
                         add                ebp, 0x04                                     // 0x005164e4    83c504
                         dec                eax                                           // 0x005164e7    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x005164e8    89442410
                         {disp8} jne        _jmp_addr_0x00516485                          // 0x005164ec    7597
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005164ee    8b442414
                         pop                edi                                           // 0x005164f2    5f
                         pop                ebp                                           // 0x005164f3    5d
                         pop                esi                                           // 0x005164f4    5e
                         {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], eax        // 0x005164f5    a3f01aea00
                         pop                ebx                                           // 0x005164fa    5b
                         add                esp, 0x08                                     // 0x005164fb    83c408
                         ret                                                              // 0x005164fe    c3
_jmp_addr_0x005164ff:    {disp32} mov       dword ptr [data_bytes + 0x4dbaf0], esi        // 0x005164ff    8935f01aea00
                         pop                esi                                           // 0x00516505    5e
                         pop                ebx                                           // 0x00516506    5b
                         add                esp, 0x08                                     // 0x00516507    83c408
                         ret                                                              // 0x0051650a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0051650b    e869b3eeff
_jmp_addr_0x00516510:    sub                esp, 0x2c                                     // 0x00516510    83ec2c
                         push               ebx                                           // 0x00516513    53
                         push               ebp                                           // 0x00516514    55
                         {disp8} mov        ebp, dword ptr [esp + 0x38]                   // 0x00516515    8b6c2438
                         push               esi                                           // 0x00516519    56
                         push               edi                                           // 0x0051651a    57
                         {disp8} mov        edi, dword ptr [ebp + 0x48]                   // 0x0051651b    8b7d48
                         test               edi, edi                                      // 0x0051651e    85ff
                         mov.s              esi, ecx                                      // 0x00516520    8bf1
                         {disp32} je        _jmp_addr_0x005167b8                          // 0x00516522    0f8490020000
_jmp_addr_0x00516528:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00516528    8b4704
                         cmp                eax, dword ptr [esp + 0x44]                   // 0x0051652b    3b442444
                         {disp32} jl        _jmp_addr_0x005167ad                          // 0x0051652f    0f8c78020000
                         cmp                eax, dword ptr [esp + 0x48]                   // 0x00516535    3b442448
                         {disp32} jge       _jmp_addr_0x005167ad                          // 0x00516539    0f8d6e020000
                         mov                eax, dword ptr [esi]                          // 0x0051653f    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00516541    8d4c241c
                         push               ecx                                           // 0x00516545    51
                         mov.s              ecx, esi                                      // 0x00516546    8bce
                         call               dword ptr [eax + 0x10]                        // 0x00516548    ff5010
                         cmp                eax, 0x01                                     // 0x0051654b    83f801
                         {disp32} jne       _jmp_addr_0x005167b8                          // 0x0051654e    0f8564020000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00516554    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0051655a    e8215c0300
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0051655f    d944241c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdb8]        // 0x00516563    8b15b81dea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x00516569    a1bc1dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0051656e    8b0dc01dea00
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00516574    89542410
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x00516578    d8642410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0051657c    d9442420
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00516580    89442414
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x00516584    d8642414
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00516588    894c2418
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0051658c    d9442424
                         {disp8} mov        eax, dword ptr [ebp + 0x44]                   // 0x00516590    8b4544
                         cmp                eax, 0x01                                     // 0x00516593    83f801
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x00516596    d8642418
                         fld                st(0)                                         // 0x0051659a    d9c0
                         fmul               st, st(1)                                     // 0x0051659c    d8c9
                         fld                st(2)                                         // 0x0051659e    d9c2
                         fmul               st, st(3)                                     // 0x005165a0    d8cb
                         faddp              st(1), st                                     // 0x005165a2    dec1
                         fld                st(3)                                         // 0x005165a4    d9c3
                         fmul               st, st(4)                                     // 0x005165a6    d8cc
                         faddp              st(1), st                                     // 0x005165a8    dec1
                         fsqrt                                                            // 0x005165aa    d9fa
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x005165ac    d95c2440
                         fstp               st(0)                                         // 0x005165b0    ddd8
                         fstp               st(0)                                         // 0x005165b2    ddd8
                         fstp               st(0)                                         // 0x005165b4    ddd8
                         {disp8} jne        _jmp_addr_0x0051660f                          // 0x005165b6    7557
                         mov                edx, dword ptr [esi]                          // 0x005165b8    8b16
                         mov.s              ecx, esi                                      // 0x005165ba    8bce
                         call               dword ptr [edx + 0x5b4]                       // 0x005165bc    ff92b4050000
                         test               eax, eax                                      // 0x005165c2    85c0
                         {disp32} je        _jmp_addr_0x005167b8                          // 0x005165c4    0f84ee010000
                         push               0x0                                           // 0x005165ca    6a00
                         push               0x009cafc8                                    // 0x005165cc    68c8af9c00
                         push               0x009c7f50                                    // 0x005165d1    68507f9c00
                         push               0x0                                           // 0x005165d6    6a00
                         push               esi                                           // 0x005165d8    56
                         call               ___RTDynamicCast                              // 0x005165d9    e83bf42a00
                         mov.s              ebx, eax                                      // 0x005165de    8bd8
                         add                esp, 0x14                                     // 0x005165e0    83c414
                         test               ebx, ebx                                      // 0x005165e3    85db
                         {disp8} je         _jmp_addr_0x005165f5                          // 0x005165e5    740e
                         mov                eax, dword ptr [ebx]                          // 0x005165e7    8b03
                         mov.s              ecx, ebx                                      // 0x005165e9    8bcb
                         call               dword ptr [eax + 0xaf8]                       // 0x005165eb    ff90f80a0000
                         test               eax, eax                                      // 0x005165f1    85c0
                         {disp8} je         _jmp_addr_0x005165fc                          // 0x005165f3    7407
_jmp_addr_0x005165f5:    mov                eax, 0x00000003                               // 0x005165f5    b803000000
                         {disp8} jmp        _jmp_addr_0x00516614                          // 0x005165fa    eb18
_jmp_addr_0x005165fc:    {disp8} mov        ecx, dword ptr [ebx + 0x28]                   // 0x005165fc    8b4b28
                         {disp32} mov       edx, dword ptr [ecx + 0x000001f8]             // 0x005165ff    8b91f8010000
                         xor.s              eax, eax                                      // 0x00516605    33c0
                         test               edx, edx                                      // 0x00516607    85d2
                         setne              al                                            // 0x00516609    0f95c0
                         inc                eax                                           // 0x0051660c    40
                         {disp8} jmp        _jmp_addr_0x00516614                          // 0x0051660d    eb05
_jmp_addr_0x0051660f:    mov                eax, 0x00000002                               // 0x0051660f    b802000000
_jmp_addr_0x00516614:    {disp8} mov        edx, dword ptr [ebp + 0x44]                   // 0x00516614    8b5544
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00516617    89442428
                         {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x0051661b    8d4614
                         push               eax                                           // 0x0051661e    50
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000002            // 0x0051661f    c744243002000000
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00516627    89542434
                         call               _jmp_addr_0x0071d8e0                          // 0x0051662b    e8b0722000
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00516630    89442438
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x00516634    8b4708
                         add                esp, 0x04                                     // 0x00516637    83c404
                         cmp                eax, 0x00000092                               // 0x0051663a    3d92000000
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0051663f    89442438
                         {disp32} je        _jmp_addr_0x0051674b                          // 0x00516643    0f8402010000
                         cmp                eax, 0x00000093                               // 0x00516649    3d93000000
                         {disp32} je        _jmp_addr_0x00516744                          // 0x0051664e    0f84f0000000
                         cmp                eax, 0x00000094                               // 0x00516654    3d94000000
                         {disp32} je        _jmp_addr_0x00516744                          // 0x00516659    0f84e5000000
                         cmp                eax, 0x04                                     // 0x0051665f    83f804
                         {disp8} jne        _jmp_addr_0x005166aa                          // 0x00516662    7546
                         mov                edx, dword ptr [esi]                          // 0x00516664    8b16
                         push               0x0                                           // 0x00516666    6a00
                         mov.s              ecx, esi                                      // 0x00516668    8bce
                         call               dword ptr [edx + 0x2c8]                       // 0x0051666a    ff92c8020000
                         test               eax, eax                                      // 0x00516670    85c0
                         {disp8} je         _jmp_addr_0x005166aa                          // 0x00516672    7436
                         mov                eax, dword ptr [esi]                          // 0x00516674    8b06
                         mov.s              ecx, esi                                      // 0x00516676    8bce
                         call               dword ptr [eax + 0x448]                       // 0x00516678    ff9048040000
                         test               eax, eax                                      // 0x0051667e    85c0
                         {disp8} jne        _jmp_addr_0x005166aa                          // 0x00516680    7528
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00516682    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x0025005c]             // 0x00516688    8b815c002500
                         test               eax, eax                                      // 0x0051668e    85c0
                         {disp8} je         _jmp_addr_0x005166aa                          // 0x00516690    7418
                         {disp32} mov       ecx, dword ptr [eax + 0x000045e8]             // 0x00516692    8b88e8450000
                         test               ecx, ecx                                      // 0x00516698    85c9
                         {disp8} je         _jmp_addr_0x005166aa                          // 0x0051669a    740e
                         {disp32} mov       ecx, dword ptr [eax + 0x000045ec]             // 0x0051669c    8b88ec450000
                         test               ecx, ecx                                      // 0x005166a2    85c9
                         {disp32} jne       _jmp_addr_0x005167b8                          // 0x005166a4    0f850e010000
_jmp_addr_0x005166aa:    mov.s              ecx, ebp                                      // 0x005166aa    8bcd
                         call               _jmp_addr_0x0083add0                          // 0x005166ac    e81f473200
                         cmp                eax, 0x0000018f                               // 0x005166b1    3d8f010000
                         {disp8} jne        _jmp_addr_0x005166f1                          // 0x005166b6    7539
                         mov                edx, dword ptr [esi]                          // 0x005166b8    8b16
                         push               0x0                                           // 0x005166ba    6a00
                         mov.s              ecx, esi                                      // 0x005166bc    8bce
                         call               dword ptr [edx + 0x2c8]                       // 0x005166be    ff92c8020000
                         test               eax, eax                                      // 0x005166c4    85c0
                         {disp32} je        _jmp_addr_0x005167ad                          // 0x005166c6    0f84e1000000
                         cmp                word ptr [esi + 0x00000090], 0x0f             // 0x005166cc    6683be900000000f
                         {disp32} jae       _jmp_addr_0x005167ad                          // 0x005166d4    0f83d3000000
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x005166da    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003b0]             // 0x005166e0    8b81b0030000
                         push               0x0                                           // 0x005166e6    6a00
                         push               0x0                                           // 0x005166e8    6a00
                         push               0x1                                           // 0x005166ea    6a01
                         {disp32} jmp       _jmp_addr_0x00516798                          // 0x005166ec    e9a7000000
_jmp_addr_0x005166f1:    mov.s              ecx, ebp                                      // 0x005166f1    8bcd
                         call               _jmp_addr_0x0083add0                          // 0x005166f3    e8d8463200
                         cmp                eax, 0x00000191                               // 0x005166f8    3d91010000
                         {disp8} jne        _jmp_addr_0x00516721                          // 0x005166fd    7522
                         mov                eax, dword ptr [esi]                          // 0x005166ff    8b06
                         push               0x0                                           // 0x00516701    6a00
                         mov.s              ecx, esi                                      // 0x00516703    8bce
                         call               dword ptr [eax + 0x2c8]                       // 0x00516705    ff90c8020000
                         test               eax, eax                                      // 0x0051670b    85c0
                         {disp32} je        _jmp_addr_0x005167ad                          // 0x0051670d    0f849a000000
                         cmp                word ptr [esi + 0x00000090], 0x0a             // 0x00516713    6683be900000000a
                         {disp32} jae       _jmp_addr_0x005167ad                          // 0x0051671b    0f838c000000
_jmp_addr_0x00516721:    {disp32} mov       ecx, dword ptr [_global]                      // 0x00516721    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003b0]             // 0x00516727    8b91b0030000
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                   // 0x0051672d    8b470c
                         push               0x0                                           // 0x00516730    6a00
                         push               0x0                                           // 0x00516732    6a00
                         push               0x1                                           // 0x00516734    6a01
                         push               edx                                           // 0x00516736    52
                         push               eax                                           // 0x00516737    50
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x00516738    8b442454
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x0051673c    8d54243c
                         push               edx                                           // 0x00516740    52
                         push               eax                                           // 0x00516741    50
                         {disp8} jmp        _jmp_addr_0x005167a7                          // 0x00516742    eb63
_jmp_addr_0x00516744:    cmp                eax, 0x00000092                               // 0x00516744    3d92000000
                         {disp8} jne        _jmp_addr_0x00516786                          // 0x00516749    753b
_jmp_addr_0x0051674b:    mov                edx, dword ptr [esi]                          // 0x0051674b    8b16
                         push               0x0                                           // 0x0051674d    6a00
                         mov.s              ecx, esi                                      // 0x0051674f    8bce
                         call               dword ptr [edx + 0x2c8]                       // 0x00516751    ff92c8020000
                         test               eax, eax                                      // 0x00516757    85c0
                         {disp8} je         _jmp_addr_0x005167ad                          // 0x00516759    7452
                         mov.s              ecx, esi                                      // 0x0051675b    8bce
                         call               ?GetAbode@Villager@@QAEPAVAbode@@XZ           // 0x0051675d    e8feb92300
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00516762    8b0d203bcd00
                         {disp32} mov       edx, dword ptr [ecx + 0x000003c8]             // 0x00516768    8b91c8030000
                         push               0x0                                           // 0x0051676e    6a00
                         push               0x0                                           // 0x00516770    6a00
                         push               0x1                                           // 0x00516772    6a01
                         push               edx                                           // 0x00516774    52
                         {disp8} mov        edx, dword ptr [edi + 0x0c]                   // 0x00516775    8b570c
                         push               edx                                           // 0x00516778    52
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x00516779    8d54243c
                         push               edx                                           // 0x0051677d    52
                         {disp8} mov        edx, dword ptr [esp + 0x58]                   // 0x0051677e    8b542458
                         push               edx                                           // 0x00516782    52
                         push               eax                                           // 0x00516783    50
                         {disp8} jmp        _jmp_addr_0x005167a8                          // 0x00516784    eb22
_jmp_addr_0x00516786:    {disp32} mov       ecx, dword ptr [_global]                      // 0x00516786    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003c8]             // 0x0051678c    8b81c8030000
                         push               0x0                                           // 0x00516792    6a00
                         push               0x0                                           // 0x00516794    6a00
                         push               0x1                                           // 0x00516796    6a01
_jmp_addr_0x00516798:    {disp8} mov        edx, dword ptr [edi + 0x0c]                   // 0x00516798    8b570c
                         push               eax                                           // 0x0051679b    50
                         push               edx                                           // 0x0051679c    52
                         {disp8} mov        edx, dword ptr [esp + 0x54]                   // 0x0051679d    8b542454
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x005167a1    8d44243c
                         push               eax                                           // 0x005167a5    50
                         push               edx                                           // 0x005167a6    52
_jmp_addr_0x005167a7:    push               esi                                           // 0x005167a7    56
_jmp_addr_0x005167a8:    call               _jmp_addr_0x0042a4b0                          // 0x005167a8    e8033df1ff
_jmp_addr_0x005167ad:    {disp8} mov        edi, dword ptr [edi + 0x10]                   // 0x005167ad    8b7f10
                         test               edi, edi                                      // 0x005167b0    85ff
                         {disp32} jne       _jmp_addr_0x00516528                          // 0x005167b2    0f8570fdffff
_jmp_addr_0x005167b8:    pop                edi                                           // 0x005167b8    5f
                         pop                esi                                           // 0x005167b9    5e
                         pop                ebp                                           // 0x005167ba    5d
                         pop                ebx                                           // 0x005167bb    5b
                         add                esp, 0x2c                                     // 0x005167bc    83c42c
                         ret                0x000c                                        // 0x005167bf    c20c00
                         nop                                                              // 0x005167c2    90
                         nop                                                              // 0x005167c3    90
                         nop                                                              // 0x005167c4    90
                         nop                                                              // 0x005167c5    90
                         nop                                                              // 0x005167c6    90
                         nop                                                              // 0x005167c7    90
                         nop                                                              // 0x005167c8    90
                         nop                                                              // 0x005167c9    90
                         nop                                                              // 0x005167ca    90
                         nop                                                              // 0x005167cb    90
                         nop                                                              // 0x005167cc    90
                         nop                                                              // 0x005167cd    90
                         nop                                                              // 0x005167ce    90
                         nop                                                              // 0x005167cf    90
_jmp_addr_0x005167d0:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x005167d0    8b44240c
                         push               ebx                                           // 0x005167d4    53
                         push               esi                                           // 0x005167d5    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x005167d6    8b74240c
                         mov.s              ebx, ecx                                      // 0x005167da    8bd9
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005167dc    8b4c2410
                         push               edi                                           // 0x005167e0    57
                         lea                edi, dword ptr [ecx + eax * 0x1]              // 0x005167e1    8d3c01
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x005167e4    8b4620
                         cmp.s              edi, eax                                      // 0x005167e7    3bf8
                         {disp8} jl         _jmp_addr_0x00516821                          // 0x005167e9    7c36
                         push               eax                                           // 0x005167eb    50
                         push               ecx                                           // 0x005167ec    51
                         push               esi                                           // 0x005167ed    56
                         mov.s              ecx, ebx                                      // 0x005167ee    8bcb
                         call               _jmp_addr_0x00516510                          // 0x005167f0    e81bfdffff
                         {disp8} mov        eax, dword ptr [esi + 0x50]                   // 0x005167f5    8b4650
                         test               ah, 0x01                                      // 0x005167f8    f6c401
                         {disp8} je         _jmp_addr_0x00516807                          // 0x005167fb    740a
                         mov.s              eax, edi                                      // 0x005167fd    8bc7
                         cdq                                                              // 0x005167ff    99
                         idiv               dword ptr [esi + 0x20]                        // 0x00516800    f77e20
                         mov.s              edi, edx                                      // 0x00516803    8bfa
                         {disp8} jmp        _jmp_addr_0x0051680a                          // 0x00516805    eb03
_jmp_addr_0x00516807:    {disp8} mov        edi, dword ptr [esi + 0x20]                   // 0x00516807    8b7e20
_jmp_addr_0x0051680a:    test               edi, edi                                      // 0x0051680a    85ff
                         {disp8} je         _jmp_addr_0x0051682b                          // 0x0051680c    741d
                         push               edi                                           // 0x0051680e    57
                         push               0x0                                           // 0x0051680f    6a00
                         push               esi                                           // 0x00516811    56
                         mov.s              ecx, ebx                                      // 0x00516812    8bcb
                         call               _jmp_addr_0x00516510                          // 0x00516814    e8f7fcffff
                         mov.s              eax, edi                                      // 0x00516819    8bc7
                         pop                edi                                           // 0x0051681b    5f
                         pop                esi                                           // 0x0051681c    5e
                         pop                ebx                                           // 0x0051681d    5b
                         ret                0x000c                                        // 0x0051681e    c20c00
_jmp_addr_0x00516821:    push               edi                                           // 0x00516821    57
                         push               ecx                                           // 0x00516822    51
                         push               esi                                           // 0x00516823    56
                         mov.s              ecx, ebx                                      // 0x00516824    8bcb
                         call               _jmp_addr_0x00516510                          // 0x00516826    e8e5fcffff
_jmp_addr_0x0051682b:    mov.s              eax, edi                                      // 0x0051682b    8bc7
                         pop                edi                                           // 0x0051682d    5f
                         pop                esi                                           // 0x0051682e    5e
                         pop                ebx                                           // 0x0051682f    5b
                         ret                0x000c                                        // 0x00516830    c20c00
                         nop                                                              // 0x00516833    90
                         nop                                                              // 0x00516834    90
                         nop                                                              // 0x00516835    90
                         nop                                                              // 0x00516836    90
                         nop                                                              // 0x00516837    90
                         nop                                                              // 0x00516838    90
                         nop                                                              // 0x00516839    90
                         nop                                                              // 0x0051683a    90
                         nop                                                              // 0x0051683b    90
                         nop                                                              // 0x0051683c    90
                         nop                                                              // 0x0051683d    90
                         nop                                                              // 0x0051683e    90
                         nop                                                              // 0x0051683f    90
_jmp_addr_0x00516840:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00516840    d944240c
                         push               esi                                           // 0x00516844    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00516845    8b742408
                         {disp8} fdiv       dword ptr [esi + 0x28]                        // 0x00516849    d87628
                         push               edi                                           // 0x0051684c    57
                         mov.s              edi, ecx                                      // 0x0051684d    8bf9
                         {disp8} fimul      dword ptr [esi + 0x20]                        // 0x0051684f    da4e20
                         call               _jmp_addr_0x007a1400                          // 0x00516852    e8a9ab2800
                         push               eax                                           // 0x00516857    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00516858    8b442414
                         push               eax                                           // 0x0051685c    50
                         push               esi                                           // 0x0051685d    56
                         mov.s              ecx, edi                                      // 0x0051685e    8bcf
                         call               _jmp_addr_0x005167d0                          // 0x00516860    e86bffffff
                         pop                edi                                           // 0x00516865    5f
                         pop                esi                                           // 0x00516866    5e
                         ret                0x000c                                        // 0x00516867    c20c00
                         call               dword ptr [__imp__ScreenToClient@4]           // 0x0051686a    ff155c988a00
?Draw@Ball@@UAEXXZ:
                         push               esi                                           // 0x00516870    56
                         mov.s              esi, ecx                                      // 0x00516871    8bf1
                         {disp8} fld        dword ptr [esi + 0x1c]                        // 0x00516873    d9461c
                         sub                esp, 0x08                                     // 0x00516876    83ec08
                         fstp               qword ptr [esp]                               // 0x00516879    dd1c24
                         push               0x00be8ebc                                    // 0x0051687c    68bc8ebe00
                         push               0x2                                           // 0x00516881    6a02
                         push               0x00cd3b24                                    // 0x00516883    68243bcd00
                         call               ?SetMessage@GDebug@@SAXGPADZZ                 // 0x00516888    e813b5ffff
                         add                esp, 0x14                                     // 0x0051688d    83c414
                         mov.s              ecx, esi                                      // 0x00516890    8bce
                         call               ?Draw@MobileObject@@UAEXXZ                    // 0x00516892    e8b9180000
                         pop                esi                                           // 0x00516897    5e
                         ret                                                              // 0x00516898    c3
                         nop                                                              // 0x00516899    90
                         nop                                                              // 0x0051689a    90
                         nop                                                              // 0x0051689b    90
                         nop                                                              // 0x0051689c    90
                         nop                                                              // 0x0051689d    90
                         nop                                                              // 0x0051689e    90
                         nop                                                              // 0x0051689f    90
                         sub                esp, 0x0000023c                               // 0x005168a0    81ec3c020000
                         {disp32} fld       dword ptr [esp + 0x00000250]                  // 0x005168a6    d9842450020000
                         push               ebx                                           // 0x005168ad    53
                         push               ebp                                           // 0x005168ae    55
                         push               esi                                           // 0x005168af    56
                         push               edi                                           // 0x005168b0    57
                         call               _jmp_addr_0x007a1400                          // 0x005168b1    e84aab2800
                         {disp32} fld       dword ptr [esp + 0x0000025c]                  // 0x005168b6    d984245c020000
                         {disp8} mov        byte ptr [esp + 0x10], al                     // 0x005168bd    88442410
                         call               _jmp_addr_0x007a1400                          // 0x005168c1    e83aab2800
                         {disp32} fld       dword ptr [esp + 0x00000258]                  // 0x005168c6    d9842458020000
                         {disp8} mov        byte ptr [esp + 0x11], al                     // 0x005168cd    88442411
                         call               _jmp_addr_0x007a1400                          // 0x005168d1    e82aab2800
                         {disp32} mov       esi, dword ptr [esp + 0x00000250]             // 0x005168d6    8bb42450020000
                         {disp8} mov        byte ptr [esp + 0x12], al                     // 0x005168dd    88442412
                         {disp8} mov        byte ptr [esp + 0x13], -0x01                  // 0x005168e1    c6442413ff
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x005168e6    c744242000000000
                         xor.s              ebx, ebx                                      // 0x005168ee    33db
                         {disp8} lea        edi, dword ptr [esp + 0x68]                   // 0x005168f0    8d7c2468
_jmp_addr_0x005168f4:    {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x005168f4    895c2428
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x005168f8    c744242c00000000
                         {disp8} fild       qword ptr [esp + 0x28]                        // 0x00516900    df6c2428
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f720]             // 0x00516904    d80d20878d00
                         fld                st(0)                                         // 0x0051690a    d9c0
                         fsin                                                             // 0x0051690c    d9fe
                         {disp32} fmul      dword ptr [esp + 0x00000254]                  // 0x0051690e    d88c2454020000
                         fadd               dword ptr [esi]                               // 0x00516915    d806
                         {disp8} fstp       dword ptr [edi + -0x08]                       // 0x00516917    d95ff8
                         fcos                                                             // 0x0051691a    d9ff
                         {disp32} fmul      dword ptr [esp + 0x00000254]                  // 0x0051691c    d88c2454020000
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x00516923    d84608
                         fstp               dword ptr [edi]                               // 0x00516926    d91f
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x00516928    d94608
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x0051692b    d80d04c48a00
                         call               _jmp_addr_0x007a1400                          // 0x00516931    e8caaa2800
                         fld                dword ptr [esi]                               // 0x00516936    d906
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]              // 0x00516938    d80d04c48a00
                         mov.s              ebp, eax                                      // 0x0051693e    8be8
                         call               _jmp_addr_0x007a1400                          // 0x00516940    e8bbaa2800
                         push               ebp                                           // 0x00516945    55
                         push               eax                                           // 0x00516946    50
                         call               ?GetCell@LH3DIsland@@SAPAULandCell@@JJ@Z      // 0x00516947    e854010000
                         add                esp, 0x08                                     // 0x0051694c    83c408
                         test               eax, eax                                      // 0x0051694f    85c0
                         {disp8} je         _jmp_addr_0x00516968                          // 0x00516951    7415
                         xor.s              ecx, ecx                                      // 0x00516953    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x04]                     // 0x00516955    8a4804
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00516958    894c2424
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x0051695c    db442424
                         {disp32} fmul      dword ptr [data_bytes + 0x27120c]             // 0x00516960    d80d0c72c300
                         {disp8} jmp        _jmp_addr_0x0051696e                          // 0x00516966    eb06
_jmp_addr_0x00516968:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00516968    d90598a38a00
_jmp_addr_0x0051696e:    {disp32} fadd      dword ptr [rdata_bytes + 0x2418]              // 0x0051696e    d80518b48a00
                         {disp8} fst        dword ptr [edi + -0x04]                       // 0x00516974    d957fc
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00516977    d9442420
                         fcomp              st(1)                                         // 0x0051697b    d8d9
                         fnstsw             ax                                            // 0x0051697d    dfe0
                         test               ah, 0x01                                      // 0x0051697f    f6c401
                         {disp8} je         _jmp_addr_0x0051698a                          // 0x00516982    7406
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00516984    d95c2420
                         {disp8} jmp        _jmp_addr_0x0051698c                          // 0x00516988    eb02
_jmp_addr_0x0051698a:    fstp               st(0)                                         // 0x0051698a    ddd8
_jmp_addr_0x0051698c:    inc                ebx                                           // 0x0051698c    43
                         add                edi, 0x0c                                     // 0x0051698d    83c70c
                         cmp                ebx, 0x28                                     // 0x00516990    83fb28
                         {disp32} jbe       _jmp_addr_0x005168f4                          // 0x00516993    0f865bffffff
                         xor.s              ebp, ebp                                      // 0x00516999    33ed
                         xor.s              edi, edi                                      // 0x0051699b    33ff
                         {disp8} lea        ebx, dword ptr [esp + 0x60]                   // 0x0051699d    8d5c2460
_jmp_addr_0x005169a1:    cmp.s              edi, ebp                                      // 0x005169a1    3bfd
                         mov.s              edx, ebx                                      // 0x005169a3    8bd3
                         mov                eax, dword ptr [edx]                          // 0x005169a5    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x005169a7    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x005169aa    8b5208
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x005169ad    89442414
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005169b1    8b442420
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005169b5    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x005169b9    8954241c
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x005169bd    89442418
                         {disp8} jbe        _jmp_addr_0x00516a31                          // 0x005169c1    766e
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x005169c3    8b4c2438
                         xor.s              esi, esi                                      // 0x005169c7    33f6
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x005169c9    894c2424
_jmp_addr_0x005169cd:    {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x005169cd    89742428
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x005169d1    896c242c
                         {disp8} fild       qword ptr [esp + 0x28]                        // 0x005169d5    df6c2428
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x005169d9    8b542424
                         push               ebp                                           // 0x005169dd    55
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x005169de    8d442414
                         fld                st(0)                                         // 0x005169e2    d9c0
                         push               eax                                           // 0x005169e4    50
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005169e5    d944241c
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                   // 0x005169e9    8d4c245c
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x005169ed    d95c245c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x005169f1    d9442420
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x005169f5    8954244c
                         fsub               st, st(1)                                     // 0x005169f9    d8e1
                         push               ecx                                           // 0x005169fb    51
                         {disp8} lea        edx, dword ptr [esp + 0x48]                   // 0x005169fc    8d542448
                         push               edx                                           // 0x00516a00    52
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x00516a01    d95c2468
                         fstp               st(0)                                         // 0x00516a05    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00516a07    d944242c
                         {disp8} fstp       dword ptr [esp + 0x6c]                        // 0x00516a0b    d95c246c
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00516a0f    d9442440
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00516a13    d95c244c
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00516a17    d9442444
                         fsub               st, st(1)                                     // 0x00516a1b    d8e1
                         {disp8} fstp       dword ptr [esp + 0x50]                        // 0x00516a1d    d95c2450
                         fstp               st(0)                                         // 0x00516a21    ddd8
                         call               _jmp_addr_0x008398a0                          // 0x00516a23    e8782e3200
                         add                esp, 0x10                                     // 0x00516a28    83c410
                         inc                esi                                           // 0x00516a2b    46
                         cmp                esi, 0x05                                     // 0x00516a2c    83fe05
                         .byte              0x72, 0x9c// {disp8} jb _jmp_addr_0x005169cd  // 0x00516a2f    729c
_jmp_addr_0x00516a31:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x00516a31    d9442414
                         push               ebp                                           // 0x00516a35    55
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00516a36    d95c244c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00516a3a    d944241c
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00516a3e    8d442414
                         {disp32} fsub      dword ptr [rdata_bytes + 0x26e4]              // 0x00516a42    d825e4b68a00
                         push               eax                                           // 0x00516a48    50
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x00516a49    8d4c2450
                         push               ecx                                           // 0x00516a4d    51
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x00516a4e    d95c2458
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00516a52    d9442428
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00516a56    8d542420
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x00516a5a    d95c245c
                         push               edx                                           // 0x00516a5e    52
                         call               _jmp_addr_0x008398a0                          // 0x00516a5f    e83c2e3200
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00516a64    8b442424
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00516a68    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00516a6c    8b54242c
                         add                esp, 0x10                                     // 0x00516a70    83c410
                         inc                edi                                           // 0x00516a73    47
                         add                ebx, 0x0c                                     // 0x00516a74    83c30c
                         cmp                edi, 0x28                                     // 0x00516a77    83ff28
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00516a7a    89442430
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00516a7e    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00516a82    89542438
                         {disp32} jbe       _jmp_addr_0x005169a1                          // 0x00516a86    0f8615ffffff
                         pop                edi                                           // 0x00516a8c    5f
                         pop                esi                                           // 0x00516a8d    5e
                         pop                ebp                                           // 0x00516a8e    5d
                         pop                ebx                                           // 0x00516a8f    5b
                         add                esp, 0x0000023c                               // 0x00516a90    81c43c020000
                         ret                                                              // 0x00516a96    c3
                         nop                                                              // 0x00516a97    90
                         nop                                                              // 0x00516a98    90
                         nop                                                              // 0x00516a99    90
                         nop                                                              // 0x00516a9a    90
                         nop                                                              // 0x00516a9b    90
                         nop                                                              // 0x00516a9c    90
                         nop                                                              // 0x00516a9d    90
                         nop                                                              // 0x00516a9e    90
                         nop                                                              // 0x00516a9f    90
?GetCell@LH3DIsland@@SAPAULandCell@@JJ@Z:
                              {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00516aa0    8b4c2404
                         test               ecx, ecx                                      // 0x00516aa4    85c9
                         push               esi                                           // 0x00516aa6    56
                         {disp8} jl         _jmp_addr_0x00516af9                          // 0x00516aa7    7c50
                         cmp                ecx, 0x000001ff                               // 0x00516aa9    81f9ff010000
                         {disp8} jg         _jmp_addr_0x00516af9                          // 0x00516aaf    7f48
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00516ab1    8b44240c
                         test               eax, eax                                      // 0x00516ab5    85c0
                         {disp8} jl         _jmp_addr_0x00516af9                          // 0x00516ab7    7c40
                         cmp                eax, 0x000001ff                               // 0x00516ab9    3dff010000
                         {disp8} jg         _jmp_addr_0x00516af9                          // 0x00516abe    7f39
                         mov.s              edx, ecx                                      // 0x00516ac0    8bd1
                         sar                edx, 4                                        // 0x00516ac2    c1fa04
                         push               ebx                                           // 0x00516ac5    53
                         xor.s              ebx, ebx                                      // 0x00516ac6    33db
                         shl                edx, 5                                        // 0x00516ac8    c1e205
                         mov.s              esi, eax                                      // 0x00516acb    8bf0
                         sar                esi, 4                                        // 0x00516acd    c1fe04
                         {disp32} mov       bl, byte ptr [edx + esi + ?g_index_block@LH3DIsland@@3PAY0CA@EA]   // 0x00516ad0    8a9c3264c9e900
                         mov.s              edx, ebx                                      // 0x00516ad7    8bd3
                         test               edx, edx                                      // 0x00516ad9    85d2
                         pop                ebx                                           // 0x00516adb    5b
                         {disp8} je         _jmp_addr_0x00516af9                          // 0x00516adc    741b
                         and                ecx, 0x0f                                     // 0x00516ade    83e10f
                         mov.s              esi, ecx                                      // 0x00516ae1    8bf1
                         shl                esi, 4                                        // 0x00516ae3    c1e604
                         and                eax, 0x0f                                     // 0x00516ae6    83e00f
                         add.s              esi, ecx                                      // 0x00516ae9    03f1
                         add.s              esi, eax                                      // 0x00516aeb    03f0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x00516aed    8b049564c5e900
                         lea                eax, dword ptr [eax + esi * 0x8]              // 0x00516af4    8d04f0
                         pop                esi                                           // 0x00516af7    5e
                         ret                                                              // 0x00516af8    c3
_jmp_addr_0x00516af9:    xor.s              eax, eax                                      // 0x00516af9    33c0
                         pop                esi                                           // 0x00516afb    5e
                         ret                                                              // 0x00516afc    c3
                         nop                                                              // 0x00516afd    90
                         nop                                                              // 0x00516afe    90
                         nop                                                              // 0x00516aff    90
_jmp_addr_0x00516b00:    push               ecx                                           // 0x00516b00    51
                         push               ebx                                           // 0x00516b01    53
                         push               ebp                                           // 0x00516b02    55
                         push               esi                                           // 0x00516b03    56
                         push               edi                                           // 0x00516b04    57
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00516b05    8b7c2418
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x00516b09    8b6c2424
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00516b0d    8b5c241c
                         mov.s              eax, edi                                      // 0x00516b11    8bc7
                         and                eax, 0x00ff0000                               // 0x00516b13    250000ff00
                         neg                eax                                           // 0x00516b18    f7d8
                         shl                eax, 7                                        // 0x00516b1a    c1e007
                         mov.s              esi, eax                                      // 0x00516b1d    8bf0
                         mov.s              edx, edi                                      // 0x00516b1f    8bd7
                         and                edx, 0x0000ff00                               // 0x00516b21    81e200ff0000
                         neg                edx                                           // 0x00516b27    f7da
                         shr                esi, 8                                        // 0x00516b29    c1ee08
                         shl                edx, 7                                        // 0x00516b2c    c1e207
                         mov.s              ecx, edi                                      // 0x00516b2f    8bcf
                         and                ecx, 0xffff0000                               // 0x00516b31    81e10000ffff
                         add.s              esi, ecx                                      // 0x00516b37    03f1
                         push               -0x1                                          // 0x00516b39    6aff
                         shr                edx, 8                                        // 0x00516b3b    c1ea08
                         mov.s              eax, edi                                      // 0x00516b3e    8bc7
                         and                eax, 0xffffff00                               // 0x00516b40    2500ffffff
                         push               -0x1                                          // 0x00516b45    6aff
                         add.s              edx, eax                                      // 0x00516b47    03d0
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00516b49    8b442428
                         mov.s              ecx, edi                                      // 0x00516b4d    8bcf
                         and                ecx, 0x000000ff                               // 0x00516b4f    81e1ff000000
                         neg                ecx                                           // 0x00516b55    f7d9
                         push               0x10                                          // 0x00516b57    6a10
                         and                esi, 0xffff0000                               // 0x00516b59    81e60000ffff
                         and                edx, 0x0000ff00                               // 0x00516b5f    81e200ff0000
                         or.s               esi, edx                                      // 0x00516b65    0bf2
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x00516b67    8b542434
                         shl                ecx, 7                                        // 0x00516b6b    c1e107
                         push               0x1                                           // 0x00516b6e    6a01
                         shr                ecx, 8                                        // 0x00516b70    c1e908
                         push               edx                                           // 0x00516b73    52
                         add.s              ecx, edi                                      // 0x00516b74    03cf
                         push               ebp                                           // 0x00516b76    55
                         and                ecx, 0x000000ff                               // 0x00516b77    81e1ff000000
                         push               eax                                           // 0x00516b7d    50
                         or.s               esi, ecx                                      // 0x00516b7e    0bf1
                         push               ebx                                           // 0x00516b80    53
                         or                 esi, 0xff000000                               // 0x00516b81    81ce000000ff
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x00516b87    e894d0efff
                         mov.s              edx, ebp                                      // 0x00516b8c    8bd5
                         sub.s              edx, ebx                                      // 0x00516b8e    2bd3
                         sub                edx, 0x06                                     // 0x00516b90    83ea06
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x00516b93    89542430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00516b97    db442430
                         {disp8} lea        ecx, dword ptr [ebx + 0x03]                   // 0x00516b9b    8d4b03
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00516b9e    894c2438
                         add                esp, 0x20                                     // 0x00516ba2    83c420
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x00516ba5    d84c242c
                         {disp8} fiadd      dword ptr [esp + 0x18]                        // 0x00516ba9    da442418
                         call               _jmp_addr_0x007a1400                          // 0x00516bad    e84ea82800
                         mov.s              ecx, eax                                      // 0x00516bb2    8bc8
                         cmp.s              ecx, ebx                                      // 0x00516bb4    3bcb
                         {disp8} jle        _jmp_addr_0x00516bc0                          // 0x00516bb6    7e08
                         cmp.s              ecx, ebp                                      // 0x00516bb8    3bcd
                         {disp8} jl         _jmp_addr_0x00516bc2                          // 0x00516bba    7c06
                         mov.s              ecx, ebp                                      // 0x00516bbc    8bcd
                         {disp8} jmp        _jmp_addr_0x00516bc2                          // 0x00516bbe    eb02
_jmp_addr_0x00516bc0:    mov.s              ecx, ebx                                      // 0x00516bc0    8bcb
_jmp_addr_0x00516bc2:    {disp8} mov        al, byte ptr [esp + 0x30]                     // 0x00516bc2    8a442430
                         test               al, al                                        // 0x00516bc6    84c0
                         {disp8} je         _jmp_addr_0x00516c2c                          // 0x00516bc8    7462
                         push               0x1                                           // 0x00516bca    6a01
                         push               0x0                                           // 0x00516bcc    6a00
                         lea                eax, dword ptr [ebx + ebp * 0x1]              // 0x00516bce    8d042b
                         cdq                                                              // 0x00516bd1    99
                         push               esi                                           // 0x00516bd2    56
                         sub.s              eax, edx                                      // 0x00516bd3    2bc2
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00516bd5    8b54242c
                         push               edi                                           // 0x00516bd9    57
                         mov.s              ebx, eax                                      // 0x00516bda    8bd8
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00516bdc    8b442438
                         push               edi                                           // 0x00516be0    57
                         push               esi                                           // 0x00516be1    56
                         add                eax, -0x03                                    // 0x00516be2    83c0fd
                         push               eax                                           // 0x00516be5    50
                         push               ecx                                           // 0x00516be6    51
                         {disp8} lea        ebp, dword ptr [edx + 0x03]                   // 0x00516be7    8d6a03
                         sar                ebx, 1                                        // 0x00516bea    d1fb
                         push               ebp                                           // 0x00516bec    55
                         push               ebx                                           // 0x00516bed    53
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x00516bee    89442458
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x00516bf2    e8c9c6efff
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x00516bf7    8b442458
                         push               0x1                                           // 0x00516bfb    6a01
                         push               0x0                                           // 0x00516bfd    6a00
                         push               0xff000000                                    // 0x00516bff    68000000ff
                         push               0xff000000                                    // 0x00516c04    68000000ff
                         push               0xff000000                                    // 0x00516c09    68000000ff
                         push               0xff000000                                    // 0x00516c0e    68000000ff
                         push               eax                                           // 0x00516c13    50
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                   // 0x00516c14    8d4b01
                         push               ecx                                           // 0x00516c17    51
                         push               ebp                                           // 0x00516c18    55
                         push               ebx                                           // 0x00516c19    53
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x00516c1a    e8a1c6efff
                         {disp8} mov        ebx, dword ptr [esp + 0x6c]                   // 0x00516c1f    8b5c246c
                         {disp8} mov        esi, dword ptr [esp + 0x68]                   // 0x00516c23    8b742468
                         add                esp, 0x50                                     // 0x00516c27    83c450
                         {disp8} jmp        _jmp_addr_0x00516c56                          // 0x00516c2a    eb2a
_jmp_addr_0x00516c2c:    {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00516c2c    8b542428
                         push               0x1                                           // 0x00516c30    6a01
                         push               0x0                                           // 0x00516c32    6a00
                         push               esi                                           // 0x00516c34    56
                         push               edi                                           // 0x00516c35    57
                         push               edi                                           // 0x00516c36    57
                         push               esi                                           // 0x00516c37    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00516c38    8b742430
                         {disp8} lea        eax, dword ptr [edx + -0x03]                  // 0x00516c3c    8d42fd
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x00516c3f    8b542438
                         push               eax                                           // 0x00516c43    50
                         push               ecx                                           // 0x00516c44    51
                         {disp8} lea        ebp, dword ptr [edx + 0x03]                   // 0x00516c45    8d6a03
                         push               ebp                                           // 0x00516c48    55
                         push               esi                                           // 0x00516c49    56
                         {disp8} mov        dword ptr [esp + 0x58], eax                   // 0x00516c4a    89442458
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x00516c4e    e86dc6efff
                         add                esp, 0x28                                     // 0x00516c53    83c428
_jmp_addr_0x00516c56:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00516c56    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00516c5a    8b4c2424
                         push               0x1                                           // 0x00516c5e    6a01
                         push               0x0                                           // 0x00516c60    6a00
                         push               0x0                                           // 0x00516c62    6a00
                         push               0x0                                           // 0x00516c64    6a00
                         push               0xff000000                                    // 0x00516c66    68000000ff
                         push               0xff000000                                    // 0x00516c6b    68000000ff
                         add                eax, 0x06                                     // 0x00516c70    83c006
                         push               eax                                           // 0x00516c73    50
                         add                ecx, -0x3                                     // 0x00516c74    83c1fd
                         push               ecx                                           // 0x00516c77    51
                         push               ebp                                           // 0x00516c78    55
                         push               esi                                           // 0x00516c79    56
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x00516c7a    e841c6efff
                         {disp8} mov        edx, dword ptr [esp + 0x58]                   // 0x00516c7f    8b542458
                         push               0x1                                           // 0x00516c83    6a01
                         push               0x0                                           // 0x00516c85    6a00
                         push               0xff000000                                    // 0x00516c87    68000000ff
                         push               0x0                                           // 0x00516c8c    6a00
                         push               0x0                                           // 0x00516c8e    6a00
                         push               0xff000000                                    // 0x00516c90    68000000ff
                         push               edx                                           // 0x00516c95    52
                         add                ebx, 0x06                                     // 0x00516c96    83c306
                         push               ebx                                           // 0x00516c99    53
                         push               ebp                                           // 0x00516c9a    55
                         push               esi                                           // 0x00516c9b    56
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x00516c9c    e81fc6efff
                         add                esp, 0x50                                     // 0x00516ca1    83c450
                         pop                edi                                           // 0x00516ca4    5f
                         pop                esi                                           // 0x00516ca5    5e
                         pop                ebp                                           // 0x00516ca6    5d
                         pop                ebx                                           // 0x00516ca7    5b
                         pop                ecx                                           // 0x00516ca8    59
                         ret                                                              // 0x00516ca9    c3
                         call               dword ptr [__imp___1DBInfo__QAE_XZ@4]         // 0x00516caa    ff1580958a00
_jmp_addr_0x00516cb0:    {disp32} mov       eax, dword ptr [_game]                        // 0x00516cb0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a28]             // 0x00516cb5    8b88285a2000
                         sub                esp, 0x44                                     // 0x00516cbb    83ec44
                         push               ebp                                           // 0x00516cbe    55
                         xor.s              ebp, ebp                                      // 0x00516cbf    33ed
                         cmp.s              ecx, ebp                                      // 0x00516cc1    3bcd
                         {disp32} jne       _jmp_addr_0x00517070                          // 0x00516cc3    0f85a7030000
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00516cc9    e80212efff
                         test               eax, eax                                      // 0x00516cce    85c0
                         {disp8} je         _jmp_addr_0x00516ce3                          // 0x00516cd0    7411
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00516cd2    e8f911efff
                         cmp                dword ptr [eax + 0x00000094], ebp             // 0x00516cd7    39a894000000
                         {disp32} jne       _jmp_addr_0x00517070                          // 0x00516cdd    0f858d030000
_jmp_addr_0x00516ce3:    {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x00516ce3    8b44244c
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x00516ce7    8b4c2454
                         {disp8} mov        edx, dword ptr [esp + 0x60]                   // 0x00516ceb    8b542460
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00516cef    89442428
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x00516cf3    8b44245c
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00516cf7    89442434
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x00516cfb    8b442464
                         cmp.s              eax, ebp                                      // 0x00516cff    3bc5
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00516d01    894c2438
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                   // 0x00516d05    8b4c2458
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x00516d09    8954243c
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x00516d0d    8b542450
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00516d11    894c242c
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x00516d15    89542430
                         {disp32} jle       _jmp_addr_0x00517070                          // 0x00516d19    0f8e51030000
                         cmp                eax, 0x000000ff                               // 0x00516d1f    3dff000000
                         {disp8} jl         _jmp_addr_0x00516d2d                          // 0x00516d24    7c07
                         mov                eax, 0x000000ff                               // 0x00516d26    b8ff000000
                         {disp8} jmp        _jmp_addr_0x00516d36                          // 0x00516d2b    eb09
_jmp_addr_0x00516d2d:    cmp                eax, 0x01                                     // 0x00516d2d    83f801
                         {disp32} jl        _jmp_addr_0x00517070                          // 0x00516d30    0f8c3a030000
_jmp_addr_0x00516d36:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2078]          // 0x00516d36    8b0d78809c00
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00516d3c    894c2424
                         xor.s              ecx, ecx                                      // 0x00516d40    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00516d42    668b0d5a50e800
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x00516d49    a378809c00
                         mov                eax, 0xea0ea0eb                               // 0x00516d4e    b8eba00eea
                         push               ebx                                           // 0x00516d53    53
                         push               esi                                           // 0x00516d54    56
                         push               edi                                           // 0x00516d55    57
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x00516d56    896c2410
                         imul               ecx                                           // 0x00516d5a    f7e9
                         add.s              edx, ecx                                      // 0x00516d5c    03d1
                         sar                edx, 6                                        // 0x00516d5e    c1fa06
                         mov.s              eax, edx                                      // 0x00516d61    8bc2
                         shr                eax, 0x1f                                     // 0x00516d63    c1e81f
                         add.s              edx, eax                                      // 0x00516d66    03d0
                         mov.s              esi, edx                                      // 0x00516d68    8bf2
                         mov.s              ecx, esi                                      // 0x00516d6a    8bce
                         shl                ecx, 5                                        // 0x00516d6c    c1e105
                         add.s              ecx, esi                                      // 0x00516d6f    03ce
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00516d71    8d442414
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00516d75    894c241c
                         push               eax                                           // 0x00516d79    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00516d7a    8d4c2414
                         lea                edx, dword ptr [esi + esi * 0x8]              // 0x00516d7e    8d14f6
                         push               ecx                                           // 0x00516d81    51
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00516d82    896c241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00516d86    89542420
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00516d8a    e8a1aeefff
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00516d8f    8d542420
                         push               edx                                           // 0x00516d93    52
                         fstp               st(0)                                         // 0x00516d94    ddd8
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00516d96    8d442428
                         push               eax                                           // 0x00516d9a    50
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00516d9b    e890aeefff
                         push               esi                                           // 0x00516da0    56
                         fstp               st(0)                                         // 0x00516da1    ddd8
                         call               _jmp_addr_0x00411fc0                          // 0x00516da3    e818b2efff
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00516da8    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00516dac    8b542430
                         push               0x1                                           // 0x00516db0    6a01
                         push               ebp                                           // 0x00516db2    55
                         push               ebp                                           // 0x00516db3    55
                         push               ebp                                           // 0x00516db4    55
                         push               ebp                                           // 0x00516db5    55
                         push               0x5f000000                                    // 0x00516db6    680000005f
                         push               ecx                                           // 0x00516dbb    51
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x00516dbc    8b4c2440
                         mov.s              esi, eax                                      // 0x00516dc0    8bf0
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x00516dc2    8b442444
                         push               edx                                           // 0x00516dc6    52
                         push               eax                                           // 0x00516dc7    50
                         push               ecx                                           // 0x00516dc8    51
                         {disp32} mov       dword ptr [esp + 0x0000009c], esi             // 0x00516dc9    89b4249c000000
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x00516dd0    e8ebc4efff
                         {disp32} fild      dword ptr [esp + 0x0000009c]                  // 0x00516dd5    db84249c000000
                         {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x00516ddc    8b442450
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x00516de0    8b54244c
                         lea                edi, dword ptr [eax + esi * 0x1]              // 0x00516de4    8d3c30
                         fld                st(0)                                         // 0x00516de7    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x00516de9    d80d502c8c00
                         lea                ebx, dword ptr [edx + esi * 0x1]              // 0x00516def    8d1c32
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x00516df2    8d04b6
                         lea                ecx, dword ptr [ebx + eax * 0x4]              // 0x00516df5    8d0c83
                         add.s              eax, ecx                                      // 0x00516df8    03c1
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x00516dfa    d95c2464
                         {disp32} mov       dword ptr [esp + 0x000000a4], eax             // 0x00516dfe    898424a4000000
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x00516e05    d80d4cb28a00
                         lea                edx, dword ptr [esi + esi * 0x2]              // 0x00516e0b    8d1476
                         lea                eax, dword ptr [esi + edx * 0x4]              // 0x00516e0e    8d0496
                         lea                ecx, dword ptr [ebx + eax * 0x2]              // 0x00516e11    8d0c43
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x00516e14    8d0476
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x00516e17    d95c2468
                         {disp32} fild      dword ptr [esp + 0x0000009c]                  // 0x00516e1b    db84249c000000
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00516e22    8d0480
                         add                esp, 0x3c                                     // 0x00516e25    83c43c
                         shl                eax, 1                                        // 0x00516e28    d1e0
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x00516e2a    895c2424
                         {disp8} mov        dword ptr [esp + 0x5c], edi                   // 0x00516e2e    897c245c
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00516e32    894c2420
                         {disp8} mov        dword ptr [esp + 0x70], eax                   // 0x00516e36    89442470
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2f728]             // 0x00516e3a    dc0d28878d00
                         {disp8} fstp       qword ptr [esp + 0x4c]                        // 0x00516e40    dd5c244c
                         {disp8} jmp        _jmp_addr_0x00516e4a                          // 0x00516e44    eb04
_jmp_addr_0x00516e46:    {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x00516e46    8b5c2424
_jmp_addr_0x00516e4a:    {disp8} fld        dword ptr [esp + ebp * 0x1 + 0x34]            // 0x00516e4a    d9442c34
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00516e4e    d81d98a38a00
                         fnstsw             ax                                            // 0x00516e54    dfe0
                         test               ah, 0x41                                      // 0x00516e56    f6c441
                         {disp8} jne        _jmp_addr_0x00516e7a                          // 0x00516e59    751f
                         {disp8} fld        dword ptr [esp + ebp * 0x1 + 0x34]            // 0x00516e5b    d9442c34
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00516e5f    d81d90a38a00
                         fnstsw             ax                                            // 0x00516e65    dfe0
                         test               ah, 0x01                                      // 0x00516e67    f6c401
                         {disp8} je         _jmp_addr_0x00516e72                          // 0x00516e6a    7406
                         {disp8} fld        dword ptr [esp + ebp * 0x1 + 0x34]            // 0x00516e6c    d9442c34
                         {disp8} jmp        _jmp_addr_0x00516e80                          // 0x00516e70    eb0e
_jmp_addr_0x00516e72:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00516e72    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00516e80                          // 0x00516e78    eb06
_jmp_addr_0x00516e7a:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00516e7a    d90598a38a00
_jmp_addr_0x00516e80:    {disp8} fst        dword ptr [esp + 0x60]                        // 0x00516e80    d9542460
                         {disp8} fstp       dword ptr [esp + ebp * 0x1 + 0x34]            // 0x00516e84    d95c2c34
                         {disp8} fld        dword ptr [esp + ebp * 0x1 + 0x3c]            // 0x00516e88    d9442c3c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00516e8c    d81d98a38a00
                         fnstsw             ax                                            // 0x00516e92    dfe0
                         test               ah, 0x41                                      // 0x00516e94    f6c441
                         {disp8} jne        _jmp_addr_0x00516ebe                          // 0x00516e97    7525
                         {disp8} fld        dword ptr [esp + ebp * 0x1 + 0x3c]            // 0x00516e99    d9442c3c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00516e9d    d81d90a38a00
                         fnstsw             ax                                            // 0x00516ea3    dfe0
                         test               ah, 0x01                                      // 0x00516ea5    f6c401
                         {disp8} je         _jmp_addr_0x00516eb4                          // 0x00516ea8    740a
                         {disp8} fld        dword ptr [esp + ebp * 0x1 + 0x3c]            // 0x00516eaa    d9442c3c
                         {disp8} fstp       dword ptr [esp + 0x6c]                        // 0x00516eae    d95c246c
                         {disp8} jmp        _jmp_addr_0x00516ec6                          // 0x00516eb2    eb12
_jmp_addr_0x00516eb4:    {disp8} mov        dword ptr [esp + 0x6c], 0x3f800000            // 0x00516eb4    c744246c0000803f
                         {disp8} jmp        _jmp_addr_0x00516ec6                          // 0x00516ebc    eb08
_jmp_addr_0x00516ebe:    {disp8} mov        dword ptr [esp + 0x6c], 0x00000000            // 0x00516ebe    c744246c00000000
_jmp_addr_0x00516ec6:    {disp8} fild       dword ptr [esp + 0x5c]                        // 0x00516ec6    db44245c
                         {disp8} mov        edx, dword ptr [esp + 0x6c]                   // 0x00516eca    8b54246c
                         mov.s              eax, edx                                      // 0x00516ece    8bc2
                         push               0x0                                           // 0x00516ed0    6a00
                         fld                st(0)                                         // 0x00516ed2    d9c0
                         {disp8} mov        dword ptr [esp + ebp * 0x1 + 0x40], edx       // 0x00516ed4    89542c40
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x00516ed8    d844242c
                         push               eax                                           // 0x00516edc    50
                         call               _jmp_addr_0x007a1400                          // 0x00516edd    e81ea52800
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00516ee2    d9442434
                         {disp8} mov        ecx, dword ptr [esp + 0x70]                   // 0x00516ee6    8b4c2470
                         fadd               st, st(1)                                     // 0x00516eea    d8c1
                         push               eax                                           // 0x00516eec    50
                         push               ecx                                           // 0x00516eed    51
                         call               _jmp_addr_0x007a1400                          // 0x00516eee    e80da52800
                         fstp               st(0)                                         // 0x00516ef3    ddd8
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x00516ef5    d944247c
                         push               eax                                           // 0x00516ef9    50
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x00516efa    d80d70b28a00
                         push               ebx                                           // 0x00516f00    53
                         call               _jmp_addr_0x007a1400                          // 0x00516f01    e8faa42800
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x00516f06    8d1440
                         shl                edx, 0x15                                     // 0x00516f09    c1e215
                         shr                edx, 8                                        // 0x00516f0c    c1ea08
                         add                edx, 0x00200000                               // 0x00516f0f    81c200002000
                         and                edx, 0xffff80ff                               // 0x00516f15    81e2ff80ffff
                         or                 edx, 0xff0080ff                               // 0x00516f1b    81caff8000ff
                         push               edx                                           // 0x00516f21    52
                         call               _jmp_addr_0x00516b00                          // 0x00516f22    e8d9fbffff
                         {disp8} fld        dword ptr [esp + 0x7c]                        // 0x00516f27    d944247c
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x00516f2b    d81db4a38a00
                         add                esp, 0x1c                                     // 0x00516f31    83c41c
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x00516f34    d9442460
                         fnstsw             ax                                            // 0x00516f38    dfe0
                         test               ah, 0x01                                      // 0x00516f3a    f6c401
                         {disp8} je         _jmp_addr_0x00516f65                          // 0x00516f3d    7426
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x00516f3f    d80df0998a00
                         call               _jmp_addr_0x007a1400                          // 0x00516f45    e8b6a42800
                         mov.s              ecx, eax                                      // 0x00516f4a    8bc8
                         shl                ecx, 8                                        // 0x00516f4c    c1e108
                         sub.s              ecx, eax                                      // 0x00516f4f    2bc8
                         shl                ecx, 8                                        // 0x00516f51    c1e108
                         mov.s              eax, ecx                                      // 0x00516f54    8bc1
                         shr                eax, 8                                        // 0x00516f56    c1e808
                         and                eax, 0xffffff00                               // 0x00516f59    2500ffffff
                         or                 eax, 0xffff0000                               // 0x00516f5e    0d0000ffff
                         {disp8} jmp        _jmp_addr_0x00516f94                          // 0x00516f63    eb2f
_jmp_addr_0x00516f65:    {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x00516f65    d825b4a38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2f724]             // 0x00516f6b    d80d24878d00
                         call               _jmp_addr_0x007a1400                          // 0x00516f71    e88aa42800
                         mov.s              edx, eax                                      // 0x00516f76    8bd0
                         shl                edx, 8                                        // 0x00516f78    c1e208
                         sub.s              edx, eax                                      // 0x00516f7b    2bd0
                         shl                edx, 0x10                                     // 0x00516f7d    c1e210
                         mov.s              eax, edx                                      // 0x00516f80    8bc2
                         shr                eax, 8                                        // 0x00516f82    c1e808
                         sub                eax, 0x00010000                               // 0x00516f85    2d00000100
                         and                eax, 0xffffff00                               // 0x00516f8a    2500ffffff
                         or                 eax, 0xff00ff00                               // 0x00516f8f    0d00ff00ff
_jmp_addr_0x00516f94:    {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x00516f94    8b4c2460
                         push               0x0                                           // 0x00516f98    6a00
                         push               ecx                                           // 0x00516f9a    51
                         {disp8} mov        ecx, dword ptr [esp + 0x70]                   // 0x00516f9b    8b4c2470
                         lea                edx, dword ptr [edi + esi * 0x2]              // 0x00516f9f    8d1477
                         push               edx                                           // 0x00516fa2    52
                         push               ecx                                           // 0x00516fa3    51
                         push               edi                                           // 0x00516fa4    57
                         push               ebx                                           // 0x00516fa5    53
                         push               eax                                           // 0x00516fa6    50
                         call               _jmp_addr_0x00516b00                          // 0x00516fa7    e854fbffff
                         {disp8} mov        ebx, dword ptr [esp + ebp * 0x1 + 0x60]       // 0x00516fac    8b5c2c60
                         push               0x0                                           // 0x00516fb0    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x78]                   // 0x00516fb2    8d542478
                         push               edx                                           // 0x00516fb6    52
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x00516fb7    8b542444
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x00516fbb    8d0476
                         push               eax                                           // 0x00516fbe    50
                         {disp32} mov       eax, dword ptr [esp + 0x00000098]             // 0x00516fbf    8b842498000000
                         push               ebx                                           // 0x00516fc6    53
                         push               0x0                                           // 0x00516fc7    6a00
                         push               eax                                           // 0x00516fc9    50
                         {disp8} lea        ecx, dword ptr [edi + 0x02]                   // 0x00516fca    8d4f02
                         push               ecx                                           // 0x00516fcd    51
                         {disp8} lea        eax, dword ptr [edx + 0x02]                   // 0x00516fce    8d4202
                         push               eax                                           // 0x00516fd1    50
                         {disp32} mov       byte ptr [esp + 0x00000094], 0x00             // 0x00516fd2    c684249400000000
                         {disp32} mov       byte ptr [esp + 0x00000095], 0x00             // 0x00516fda    c684249500000000
                         {disp32} mov       byte ptr [esp + 0x00000096], 0x00             // 0x00516fe2    c684249600000000
                         {disp32} mov       byte ptr [esp + 0x00000097], -0x01            // 0x00516fea    c6842497000000ff
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00516ff2    e8b9a9efff
                         fstp               st(0)                                         // 0x00516ff7    ddd8
                         {disp32} mov       ecx, dword ptr [esp + 0x000000ac]             // 0x00516ff9    8b8c24ac000000
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                   // 0x00517000    8b54245c
                         push               0x0                                           // 0x00517004    6a00
                         {disp32} lea       eax, dword ptr [esp + 0x000000a4]             // 0x00517006    8d8424a4000000
                         push               eax                                           // 0x0051700d    50
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x0051700e    8d0476
                         push               eax                                           // 0x00517011    50
                         push               ebx                                           // 0x00517012    53
                         push               0x0                                           // 0x00517013    6a00
                         push               ecx                                           // 0x00517015    51
                         push               edi                                           // 0x00517016    57
                         push               edx                                           // 0x00517017    52
                         {disp32} mov       byte ptr [esp + 0x000000c0], -0x01            // 0x00517018    c68424c0000000ff
                         {disp32} mov       byte ptr [esp + 0x000000c1], -0x01            // 0x00517020    c68424c1000000ff
                         {disp32} mov       byte ptr [esp + 0x000000c2], -0x01            // 0x00517028    c68424c2000000ff
                         {disp32} mov       byte ptr [esp + 0x000000c3], -0x01            // 0x00517030    c68424c3000000ff
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00517038    e873a9efff
                         fstp               st(0)                                         // 0x0051703d    ddd8
                         {disp32} fild      dword ptr [esp + 0x000000b8]                  // 0x0051703f    db8424b8000000
                         add                esp, 0x5c                                     // 0x00517046    83c45c
                         {disp8} fadd       qword ptr [esp + 0x4c]                        // 0x00517049    dc44244c
                         call               _jmp_addr_0x007a1400                          // 0x0051704d    e8aea32800
                         add                ebp, 0x04                                     // 0x00517052    83c504
                         cmp                ebp, 0x08                                     // 0x00517055    83fd08
                         mov.s              edi, eax                                      // 0x00517058    8bf8
                         {disp8} mov        dword ptr [esp + 0x5c], edi                   // 0x0051705a    897c245c
                         {disp32} jl        _jmp_addr_0x00516e46                          // 0x0051705e    0f8ce2fdffff
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00517064    8b442430
                         pop                edi                                           // 0x00517068    5f
                         pop                esi                                           // 0x00517069    5e
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x0051706a    a378809c00
                         pop                ebx                                           // 0x0051706f    5b
_jmp_addr_0x00517070:    pop                ebp                                           // 0x00517070    5d
                         add                esp, 0x44                                     // 0x00517071    83c444
                         ret                                                              // 0x00517074    c3
                         nop                                                              // 0x00517075    90
                         nop                                                              // 0x00517076    90
                         nop                                                              // 0x00517077    90
                         nop                                                              // 0x00517078    90
                         nop                                                              // 0x00517079    90
                         nop                                                              // 0x0051707a    90
                         nop                                                              // 0x0051707b    90
                         nop                                                              // 0x0051707c    90
                         nop                                                              // 0x0051707d    90
                         nop                                                              // 0x0051707e    90
                         nop                                                              // 0x0051707f    90
_jmp_addr_0x00517080:    {disp32} mov       eax, dword ptr [_game]                        // 0x00517080    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205a28]             // 0x00517085    8b88285a2000
                         sub                esp, 0x000000c0                               // 0x0051708b    81ecc0000000
                         test               ecx, ecx                                      // 0x00517091    85c9
                         {disp32} jne       _jmp_addr_0x005178b8                          // 0x00517093    0f851f080000
                         {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x00517099    8b805c002500
                         {disp32} mov       ecx, dword ptr [eax + 0x000045e8]             // 0x0051709f    8b88e8450000
                         test               ecx, ecx                                      // 0x005170a5    85c9
                         {disp8} je         _jmp_addr_0x005170b7                          // 0x005170a7    740e
                         {disp32} mov       ecx, dword ptr [eax + 0x000045ec]             // 0x005170a9    8b88ec450000
                         test               ecx, ecx                                      // 0x005170af    85c9
                         {disp32} jne       _jmp_addr_0x005178b8                          // 0x005170b1    0f8501080000
_jmp_addr_0x005170b7:    call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x005170b7    e8140eefff
                         test               eax, eax                                      // 0x005170bc    85c0
                         {disp8} je         _jmp_addr_0x005170d3                          // 0x005170be    7413
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x005170c0    e80b0eefff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000094]             // 0x005170c5    8b8894000000
                         test               ecx, ecx                                      // 0x005170cb    85c9
                         {disp32} jne       _jmp_addr_0x005178b8                          // 0x005170cd    0f85e5070000
_jmp_addr_0x005170d3:    {disp32} mov       ecx, dword ptr [esp + 0x000000d4]             // 0x005170d3    8b8c24d4000000
                         test               ecx, ecx                                      // 0x005170da    85c9
                         {disp32} jle       _jmp_addr_0x005178b8                          // 0x005170dc    0f8ed6070000
                         cmp                ecx, 0x000000ff                               // 0x005170e2    81f9ff000000
                         {disp8} jl         _jmp_addr_0x005170f1                          // 0x005170e8    7c07
                         mov                ecx, 0x000000ff                               // 0x005170ea    b9ff000000
                         {disp8} jmp        _jmp_addr_0x005170fa                          // 0x005170ef    eb09
_jmp_addr_0x005170f1:    cmp                ecx, 0x01                                     // 0x005170f1    83f901
                         {disp32} jl        _jmp_addr_0x005178b8                          // 0x005170f4    0f8cbe070000
_jmp_addr_0x005170fa:    {disp32} fld       dword ptr [esp + 0x000000c4]                  // 0x005170fa    d98424c4000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00517101    d81d98a38a00
                         fnstsw             ax                                            // 0x00517107    dfe0
                         test               ah, 0x41                                      // 0x00517109    f6c441
                         {disp8} jne        _jmp_addr_0x0051712f                          // 0x0051710c    7521
                         {disp32} fld       dword ptr [esp + 0x000000c4]                  // 0x0051710e    d98424c4000000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00517115    d81d90a38a00
                         fnstsw             ax                                            // 0x0051711b    dfe0
                         test               ah, 0x01                                      // 0x0051711d    f6c401
                         {disp8} jne        _jmp_addr_0x0051713a                          // 0x00517120    7518
                         {disp32} mov       dword ptr [esp + 0x000000c4], 0x3f800000      // 0x00517122    c78424c40000000000803f
                         {disp8} jmp        _jmp_addr_0x0051713a                          // 0x0051712d    eb0b
_jmp_addr_0x0051712f:    {disp32} mov       dword ptr [esp + 0x000000c4], 0x00000000      // 0x0051712f    c78424c400000000000000
_jmp_addr_0x0051713a:    {disp32} fld       dword ptr [esp + 0x000000c8]                  // 0x0051713a    d98424c8000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00517141    d81d98a38a00
                         fnstsw             ax                                            // 0x00517147    dfe0
                         test               ah, 0x41                                      // 0x00517149    f6c441
                         {disp8} jne        _jmp_addr_0x0051716f                          // 0x0051714c    7521
                         {disp32} fld       dword ptr [esp + 0x000000c8]                  // 0x0051714e    d98424c8000000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00517155    d81d90a38a00
                         fnstsw             ax                                            // 0x0051715b    dfe0
                         test               ah, 0x01                                      // 0x0051715d    f6c401
                         {disp8} jne        _jmp_addr_0x0051717a                          // 0x00517160    7518
                         {disp32} mov       dword ptr [esp + 0x000000c8], 0x3f800000      // 0x00517162    c78424c80000000000803f
                         {disp8} jmp        _jmp_addr_0x0051717a                          // 0x0051716d    eb0b
_jmp_addr_0x0051716f:    {disp32} mov       dword ptr [esp + 0x000000c8], 0x00000000      // 0x0051716f    c78424c800000000000000
_jmp_addr_0x0051717a:    {disp32} fld       dword ptr [esp + 0x000000cc]                  // 0x0051717a    d98424cc000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00517181    d81d98a38a00
                         fnstsw             ax                                            // 0x00517187    dfe0
                         test               ah, 0x41                                      // 0x00517189    f6c441
                         {disp8} jne        _jmp_addr_0x005171af                          // 0x0051718c    7521
                         {disp32} fld       dword ptr [esp + 0x000000cc]                  // 0x0051718e    d98424cc000000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00517195    d81d90a38a00
                         fnstsw             ax                                            // 0x0051719b    dfe0
                         test               ah, 0x01                                      // 0x0051719d    f6c401
                         {disp8} jne        _jmp_addr_0x005171ba                          // 0x005171a0    7518
                         {disp32} mov       dword ptr [esp + 0x000000cc], 0x3f800000      // 0x005171a2    c78424cc0000000000803f
                         {disp8} jmp        _jmp_addr_0x005171ba                          // 0x005171ad    eb0b
_jmp_addr_0x005171af:    {disp32} mov       dword ptr [esp + 0x000000cc], 0x00000000      // 0x005171af    c78424cc00000000000000
_jmp_addr_0x005171ba:    {disp32} fld       dword ptr [esp + 0x000000d0]                  // 0x005171ba    d98424d0000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x2678]              // 0x005171c1    d81d78b68a00
                         fnstsw             ax                                            // 0x005171c7    dfe0
                         test               ah, 0x41                                      // 0x005171c9    f6c441
                         {disp8} jne        _jmp_addr_0x005171ef                          // 0x005171cc    7521
                         {disp32} fld       dword ptr [esp + 0x000000d0]                  // 0x005171ce    d98424d0000000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x005171d5    d81d90a38a00
                         fnstsw             ax                                            // 0x005171db    dfe0
                         test               ah, 0x01                                      // 0x005171dd    f6c401
                         {disp8} jne        _jmp_addr_0x005171fa                          // 0x005171e0    7518
                         {disp32} mov       dword ptr [esp + 0x000000d0], 0x3f800000      // 0x005171e2    c78424d00000000000803f
                         {disp8} jmp        _jmp_addr_0x005171fa                          // 0x005171ed    eb0b
_jmp_addr_0x005171ef:    {disp32} mov       dword ptr [esp + 0x000000d0], 0xbf800000      // 0x005171ef    c78424d0000000000080bf
_jmp_addr_0x005171fa:    {disp32} mov       eax, dword ptr [data_bytes + 0x2078]          // 0x005171fa    a178809c00
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x005171ff    8944243c
                         {disp32} mov       dword ptr [data_bytes + 0x2078], ecx          // 0x00517203    890d78809c00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]        // 0x00517209    8b0d5850e800
                         and                ecx, 0x0000ffff                               // 0x0051720f    81e1ffff0000
                         mov                eax, 0x66666667                               // 0x00517215    b867666666
                         imul               ecx                                           // 0x0051721a    f7e9
                         push               ebx                                           // 0x0051721c    53
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x300310]        // 0x0051721d    8b1d1063cc00
                         sar                edx, 4                                        // 0x00517223    c1fa04
                         mov.s              eax, edx                                      // 0x00517226    8bc2
                         push               ebp                                           // 0x00517228    55
                         push               esi                                           // 0x00517229    56
                         shr                eax, 0x1f                                     // 0x0051722a    c1e81f
                         add.s              edx, eax                                      // 0x0051722d    03d0
                         push               edi                                           // 0x0051722f    57
                         xor.s              esi, esi                                      // 0x00517230    33f6
                         test               ebx, ebx                                      // 0x00517232    85db
                         {disp32} mov       si, word ptr [data_bytes + 0x4bf05a]          // 0x00517234    668b355a50e800
                         mov.s              edi, edx                                      // 0x0051723b    8bfa
                         {disp8} mov        dword ptr [esp + 0x38], edi                   // 0x0051723d    897c2438
                         {disp8} je         _jmp_addr_0x00517254                          // 0x00517241    7411
                         mov.s              eax, esi                                      // 0x00517243    8bc6
                         cdq                                                              // 0x00517245    99
                         and                edx, 0x03                                     // 0x00517246    83e203
                         add.s              eax, edx                                      // 0x00517249    03c2
                         sar                eax, 2                                        // 0x0051724b    c1f802
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0051724e    89442420
                         {disp8} jmp        _jmp_addr_0x00517269                          // 0x00517252    eb15
_jmp_addr_0x00517254:    mov                eax, 0x66666667                               // 0x00517254    b867666666
                         imul               esi                                           // 0x00517259    f7ee
                         sar                edx, 4                                        // 0x0051725b    c1fa04
                         mov.s              eax, edx                                      // 0x0051725e    8bc2
                         shr                eax, 0x1f                                     // 0x00517260    c1e81f
                         add.s              edx, eax                                      // 0x00517263    03d0
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00517265    89542420
_jmp_addr_0x00517269:    mov.s              eax, ecx                                      // 0x00517269    8bc1
                         cdq                                                              // 0x0051726b    99
                         and                edx, 0x03                                     // 0x0051726c    83e203
                         add.s              eax, edx                                      // 0x0051726f    03c2
                         sar                eax, 2                                        // 0x00517271    c1f802
                         add.s              eax, edi                                      // 0x00517274    03c7
                         test               ebx, ebx                                      // 0x00517276    85db
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00517278    8944241c
                         {disp8} je         _jmp_addr_0x00517286                          // 0x0051727c    7408
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0051727e    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x0051728c                          // 0x00517284    eb06
_jmp_addr_0x00517286:    {disp32} fld       dword ptr [__real@3f400000]                   // 0x00517286    d90574b28a00
_jmp_addr_0x0051728c:    mov                eax, 0x55555556                               // 0x0051728c    b856555555
                         imul               esi                                           // 0x00517291    f7ee
                         mov.s              ecx, edx                                      // 0x00517293    8bca
                         shr                ecx, 0x1f                                     // 0x00517295    c1e91f
                         add.s              edx, ecx                                      // 0x00517298    03d1
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0051729a    8954242c
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0051729e    db44242c
                         fmul               st, st(1)                                     // 0x005172a2    d8c9
                         {disp8} fiadd      dword ptr [esp + 0x20]                        // 0x005172a4    da442420
                         call               _jmp_addr_0x007a1400                          // 0x005172a8    e853a12800
                         fstp               st(0)                                         // 0x005172ad    ddd8
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x005172af    8d542420
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x005172b3    89442444
                         push               edx                                           // 0x005172b7    52
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x005172b8    8d44243c
                         push               eax                                           // 0x005172bc    50
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x005172bd    e86ea9efff
                         fstp               st(0)                                         // 0x005172c2    ddd8
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x005172c4    8d4c244c
                         push               ecx                                           // 0x005172c8    51
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x005172c9    8d542428
                         push               edx                                           // 0x005172cd    52
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x005172ce    e85da9efff
                         fstp               st(0)                                         // 0x005172d3    ddd8
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x005172d5    8b442454
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x005172d9    8b4c242c
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x005172dd    8b542430
                         push               0x1                                           // 0x005172e1    6a01
                         push               0x0                                           // 0x005172e3    6a00
                         push               0x5f000000                                    // 0x005172e5    680000005f
                         push               0x0                                           // 0x005172ea    6a00
                         push               0x0                                           // 0x005172ec    6a00
                         push               0x5f000000                                    // 0x005172ee    680000005f
                         push               eax                                           // 0x005172f3    50
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x005172f4    8b442464
                         push               ecx                                           // 0x005172f8    51
                         push               edx                                           // 0x005172f9    52
                         push               eax                                           // 0x005172fa    50
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x005172fb    e8c0bfefff
                         mov.s              eax, esi                                      // 0x00517300    8bc6
                         cdq                                                              // 0x00517302    99
                         and                edx, 0x0f                                     // 0x00517303    83e20f
                         add.s              eax, edx                                      // 0x00517306    03c2
                         sar                eax, 4                                        // 0x00517308    c1f804
                         push               eax                                           // 0x0051730b    50
                         call               _jmp_addr_0x00411fc0                          // 0x0051730c    e8afacefff
                         {disp32} fld       dword ptr [data_bytes + 0x300314]             // 0x00517311    d9051463cc00
                         mov.s              esi, eax                                      // 0x00517317    8bf0
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00517319    d81d98a38a00
                         lea                ecx, dword ptr [esi + esi * 0x1]              // 0x0051731f    8d0c36
                         mov                eax, 0x55555556                               // 0x00517322    b856555555
                         imul               ecx                                           // 0x00517327    f7e9
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x00517329    8b44245c
                         mov.s              ecx, edx                                      // 0x0051732d    8bca
                         shr                ecx, 0x1f                                     // 0x0051732f    c1e91f
                         add.s              edx, ecx                                      // 0x00517332    03d1
                         add.s              edx, eax                                      // 0x00517334    03d0
                         add                esp, 0x3c                                     // 0x00517336    83c43c
                         fnstsw             ax                                            // 0x00517339    dfe0
                         test               ah, 0x40                                      // 0x0051733b    f6c440
                         {disp8} mov        dword ptr [esp + 0x2c], esi                   // 0x0051733e    8974242c
                         mov.s              ebp, edx                                      // 0x00517342    8bea
                         {disp32} je        _jmp_addr_0x00517490                          // 0x00517344    0f8446010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a52 // 0x0051734a    813dac7cd100521a0000
                         {disp8} ja         _jmp_addr_0x0051735d                          // 0x00517354    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00517356    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00517369                          // 0x0051735b    eb0c
_jmp_addr_0x0051735d:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0051735d    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013bd8]             // 0x00517363    8d82d83b0100
_jmp_addr_0x00517369:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00517369    8b4808
                         mov.s              eax, esi                                      // 0x0051736c    8bc6
                         cdq                                                              // 0x0051736e    99
                         sub.s              eax, edx                                      // 0x0051736f    2bc2
                         sar                eax, 1                                        // 0x00517371    d1f8
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00517373    89442410
                         push               0x3f800000                                    // 0x00517377    680000803f
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x0051737c    db442414
                         push               0x0                                           // 0x00517380    6a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00517382    d95c241c
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00517386    8b7c241c
                         push               edi                                           // 0x0051738a    57
                         push               ecx                                           // 0x0051738b    51
                         call               ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z        // 0x0051738c    e88fa3efff
                         {disp32} fcom      dword ptr [data_bytes + 0x300314]             // 0x00517391    d8151463cc00
                         add                esp, 0x10                                     // 0x00517397    83c410
                         fnstsw             ax                                            // 0x0051739a    dfe0
                         test               ah, 0x41                                      // 0x0051739c    f6c441
                         {disp8} jne        _jmp_addr_0x005173a9                          // 0x0051739f    7508
                         {disp32} fstp      dword ptr [data_bytes + 0x300314]             // 0x005173a1    d91d1463cc00
                         {disp8} jmp        _jmp_addr_0x005173ab                          // 0x005173a7    eb02
_jmp_addr_0x005173a9:    fstp               st(0)                                         // 0x005173a9    ddd8
_jmp_addr_0x005173ab:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a66 // 0x005173ab    813dac7cd100661a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005173b5    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005173c1                          // 0x005173ba    7605
                         add                eax, 0x00013cc8                               // 0x005173bc    05c83c0100
_jmp_addr_0x005173c1:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005173c1    8b4008
                         push               0x3f800000                                    // 0x005173c4    680000803f
                         push               0x0                                           // 0x005173c9    6a00
                         push               edi                                           // 0x005173cb    57
                         push               eax                                           // 0x005173cc    50
                         call               ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z        // 0x005173cd    e84ea3efff
                         {disp32} fcom      dword ptr [data_bytes + 0x300314]             // 0x005173d2    d8151463cc00
                         add                esp, 0x10                                     // 0x005173d8    83c410
                         fnstsw             ax                                            // 0x005173db    dfe0
                         test               ah, 0x41                                      // 0x005173dd    f6c441
                         {disp8} jne        _jmp_addr_0x005173ea                          // 0x005173e0    7508
                         {disp32} fstp      dword ptr [data_bytes + 0x300314]             // 0x005173e2    d91d1463cc00
                         {disp8} jmp        _jmp_addr_0x005173ec                          // 0x005173e8    eb02
_jmp_addr_0x005173ea:    fstp               st(0)                                         // 0x005173ea    ddd8
_jmp_addr_0x005173ec:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001aab // 0x005173ec    813dac7cd100ab1a0000
                         {disp8} ja         _jmp_addr_0x005173ff                          // 0x005173f6    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005173f8    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0051740b                          // 0x005173fd    eb0c
_jmp_addr_0x005173ff:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005173ff    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00014004]             // 0x00517405    8d8104400100
_jmp_addr_0x0051740b:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0051740b    8b4008
                         push               0x3f800000                                    // 0x0051740e    680000803f
                         push               0x0                                           // 0x00517413    6a00
                         push               edi                                           // 0x00517415    57
                         push               eax                                           // 0x00517416    50
                         call               ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z        // 0x00517417    e804a3efff
                         {disp32} fcom      dword ptr [data_bytes + 0x300314]             // 0x0051741c    d8151463cc00
                         add                esp, 0x10                                     // 0x00517422    83c410
                         fnstsw             ax                                            // 0x00517425    dfe0
                         test               ah, 0x41                                      // 0x00517427    f6c441
                         {disp8} jne        _jmp_addr_0x00517434                          // 0x0051742a    7508
                         {disp32} fstp      dword ptr [data_bytes + 0x300314]             // 0x0051742c    d91d1463cc00
                         {disp8} jmp        _jmp_addr_0x00517436                          // 0x00517432    eb02
_jmp_addr_0x00517434:    fstp               st(0)                                         // 0x00517434    ddd8
_jmp_addr_0x00517436:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001a98 // 0x00517436    813dac7cd100981a0000
                         {disp8} ja         _jmp_addr_0x00517449                          // 0x00517440    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00517442    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00517455                          // 0x00517447    eb0c
_jmp_addr_0x00517449:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00517449    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013f20]             // 0x0051744f    8d82203f0100
_jmp_addr_0x00517455:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00517455    8b4008
                         push               0x3f800000                                    // 0x00517458    680000803f
                         push               0x0                                           // 0x0051745d    6a00
                         push               edi                                           // 0x0051745f    57
                         push               eax                                           // 0x00517460    50
                         call               ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z        // 0x00517461    e8baa2efff
                         {disp32} fcom      dword ptr [data_bytes + 0x300314]             // 0x00517466    d8151463cc00
                         add                esp, 0x10                                     // 0x0051746c    83c410
                         fnstsw             ax                                            // 0x0051746f    dfe0
                         test               ah, 0x41                                      // 0x00517471    f6c441
                         {disp8} jne        _jmp_addr_0x0051747e                          // 0x00517474    7508
                         {disp32} fstp      dword ptr [data_bytes + 0x300314]             // 0x00517476    d91d1463cc00
                         {disp8} jmp        _jmp_addr_0x00517480                          // 0x0051747c    eb02
_jmp_addr_0x0051747e:    fstp               st(0)                                         // 0x0051747e    ddd8
_jmp_addr_0x00517480:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x00517480    d9442414
                         {disp32} fadd      dword ptr [data_bytes + 0x300314]             // 0x00517484    d8051463cc00
                         {disp32} fstp      dword ptr [data_bytes + 0x300314]             // 0x0051748a    d91d1463cc00
_jmp_addr_0x00517490:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00517490    8b4c241c
                         sub                ecx, dword ptr [esp + 0x38]                   // 0x00517494    2b4c2438
                         mov                eax, 0x55555556                               // 0x00517498    b856555555
                         imul               ecx                                           // 0x0051749d    f7e9
                         mov.s              eax, edx                                      // 0x0051749f    8bc2
                         shr                eax, 0x1f                                     // 0x005174a1    c1e81f
                         add.s              edx, eax                                      // 0x005174a4    03d0
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x005174a6    89542410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x005174aa    db442410
                         {disp32} fsubr     dword ptr [data_bytes + 0x300314]             // 0x005174ae    d82d1463cc00
                         {disp8} fiadd      dword ptr [esp + 0x1c]                        // 0x005174b4    da44241c
                         call               _jmp_addr_0x007a1400                          // 0x005174b8    e8439f2800
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x300310]        // 0x005174bd    8b1d1063cc00
                         xor.s              edx, edx                                      // 0x005174c3    33d2
                         xor.s              ecx, ecx                                      // 0x005174c5    33c9
                         test               ebx, ebx                                      // 0x005174c7    85db
                         setne              dl                                            // 0x005174c9    0f95c2
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005174cc    8944241c
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x005174d0    894c2414
                         add                edx, 0x03                                     // 0x005174d4    83c203
                         test               edx, edx                                      // 0x005174d7    85d2
                         {disp32} jle       _jmp_addr_0x005178aa                          // 0x005174d9    0f8ecb030000
                         mov.s              eax, esi                                      // 0x005174df    8bc6
                         cdq                                                              // 0x005174e1    99
                         and                edx, 0x03                                     // 0x005174e2    83e203
                         add.s              eax, edx                                      // 0x005174e5    03c2
                         sar                eax, 2                                        // 0x005174e7    c1f802
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x005174ea    89442448
                         mov.s              eax, esi                                      // 0x005174ee    8bc6
                         cdq                                                              // 0x005174f0    99
                         sub.s              eax, edx                                      // 0x005174f1    2bc2
                         sar                eax, 1                                        // 0x005174f3    d1f8
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x005174f5    89442440
                         {disp8} jmp        _jmp_addr_0x00517503                          // 0x005174f9    eb08
_jmp_addr_0x005174fb:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x005174fb    8b4c2414
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x005174ff    8b74242c
_jmp_addr_0x00517503:    cmp                ecx, 0x03                                     // 0x00517503    83f903
                         {disp8} jne        _jmp_addr_0x00517518                          // 0x00517506    7510
                         mov                eax, 0x55555556                               // 0x00517508    b856555555
                         imul               esi                                           // 0x0051750d    f7ee
                         mov.s              eax, edx                                      // 0x0051750f    8bc2
                         shr                eax, 0x1f                                     // 0x00517511    c1e81f
                         add.s              edx, eax                                      // 0x00517514    03d0
                         add.s              ebp, edx                                      // 0x00517516    03ea
_jmp_addr_0x00517518:    cmp                ecx, 0x03                                     // 0x00517518    83f903
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0051751b    c744241800000000
                         {disp32} ja        _jmp_addr_0x0051772a                          // 0x00517523    0f8701020000
                         jmp                dword ptr [ecx*4 + 0x5178c0]                  // 0x00517529    ff248dc0785100
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a52 // 0x00517530    813dac7cd100521a0000
                         {disp8} ja         _jmp_addr_0x00517543                          // 0x0051753a    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0051753c    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0051754f                          // 0x00517541    eb0c
_jmp_addr_0x00517543:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00517543    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013bd8]             // 0x00517549    8d81d83b0100
_jmp_addr_0x0051754f:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0051754f    8b5008
                         {disp32} fld       dword ptr [esp + 0x000000d4]                  // 0x00517552    d98424d4000000
                         {disp32} mov       eax, dword ptr [esp + 0x000000d4]             // 0x00517559    8b8424d4000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x00517560    d80d1cb48a00
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00517566    89542424
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0051756a    89442418
                         call               _jmp_addr_0x007a1400                          // 0x0051756e    e88d9e2800
                         push               eax                                           // 0x00517573    50
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x00517574    8d4c2454
                         push               0x009c8228                                    // 0x00517578    6828829c00
                         push               ecx                                           // 0x0051757d    51
                         call               _swprintf                                     // 0x0051757e    e8fcee2a00
                         add                esp, 0x0c                                     // 0x00517583    83c40c
                         {disp32} jmp       _jmp_addr_0x0051772a                          // 0x00517586    e99f010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a66 // 0x0051758b    813dac7cd100661a0000
                         {disp8} ja         _jmp_addr_0x0051759e                          // 0x00517595    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00517597    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005175aa                          // 0x0051759c    eb0c
_jmp_addr_0x0051759e:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0051759e    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013cc8]             // 0x005175a4    8d82c83c0100
_jmp_addr_0x005175aa:    {disp32} fld       dword ptr [esp + 0x000000d8]                  // 0x005175aa    d98424d8000000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005175b1    8b4008
                         {disp32} mov       ecx, dword ptr [esp + 0x000000d8]             // 0x005175b4    8b8c24d8000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005175bb    d80d1cb48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x005175c1    89442424
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x005175c5    894c2418
                         call               _jmp_addr_0x007a1400                          // 0x005175c9    e8329e2800
                         push               eax                                           // 0x005175ce    50
                         push               0x009c8228                                    // 0x005175cf    6828829c00
_jmp_addr_0x005175d4:    {disp8} lea        edx, dword ptr [esp + 0x58]                   // 0x005175d4    8d542458
                         push               edx                                           // 0x005175d8    52
                         call               _swprintf                                     // 0x005175d9    e8a1ee2a00
                         add                esp, 0x0c                                     // 0x005175de    83c40c
                         {disp32} jmp       _jmp_addr_0x0051772a                          // 0x005175e1    e944010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aab // 0x005175e6    813dac7cd100ab1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005175f0    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005175fc                          // 0x005175f5    7605
                         add                eax, 0x00014004                               // 0x005175f7    0504400100
_jmp_addr_0x005175fc:    {disp32} fld       dword ptr [esp + 0x000000dc]                  // 0x005175fc    d98424dc000000
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00517603    8b4808
                         {disp32} mov       edx, dword ptr [esp + 0x000000dc]             // 0x00517606    8b9424dc000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x0051760d    d80d1cb48a00
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x00517613    894c2424
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00517617    89542418
                         call               _jmp_addr_0x007a1400                          // 0x0051761b    e8e09d2800
                         push               eax                                           // 0x00517620    50
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x00517621    8d442454
                         push               0x009c8228                                    // 0x00517625    6828829c00
                         push               eax                                           // 0x0051762a    50
                         call               _swprintf                                     // 0x0051762b    e84fee2a00
                         add                esp, 0x0c                                     // 0x00517630    83c40c
                         {disp32} jmp       _jmp_addr_0x0051772a                          // 0x00517633    e9f2000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x00517638    8b15ac7cd100
                         cmp                edx, 0x00001a98                               // 0x0051763e    81fa981a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00517644    8b0da87cd100
                         mov.s              eax, ecx                                      // 0x0051764a    8bc1
                         {disp8} jbe        _jmp_addr_0x00517654                          // 0x0051764c    7606
                         {disp32} lea       eax, dword ptr [ecx + 0x00013f20]             // 0x0051764e    8d81203f0100
_jmp_addr_0x00517654:    {disp32} fld       dword ptr [esp + 0x000000e0]                  // 0x00517654    d98424e0000000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0051765b    8b4008
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0051765e    d80db4a38a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00517664    89442424
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x00517668    d805b4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0051766e    d95c2418
                         {disp32} fld       dword ptr [esp + 0x000000e0]                  // 0x00517672    d98424e0000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x25fc4]             // 0x00517679    d81dc4ef8c00
                         fnstsw             ax                                            // 0x0051767f    dfe0
                         test               ah, 0x01                                      // 0x00517681    f6c401
                         {disp8} je         _jmp_addr_0x005176b2                          // 0x00517684    742c
                         cmp                edx, 0x00001a39                               // 0x00517686    81fa391a0000
                         mov.s              esi, ecx                                      // 0x0051768c    8bf1
                         {disp8} jbe        _jmp_addr_0x00517696                          // 0x0051768e    7606
                         {disp32} lea       esi, dword ptr [ecx + 0x00013aac]             // 0x00517690    8db1ac3a0100
_jmp_addr_0x00517696:    {disp32} fld       dword ptr [esp + 0x000000e0]                  // 0x00517696    d98424e0000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e66c]             // 0x0051769d    d80d6c768c00
                         call               _jmp_addr_0x007a1400                          // 0x005176a3    e8589d2800
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x005176a8    8b4e08
                         push               eax                                           // 0x005176ab    50
                         push               ecx                                           // 0x005176ac    51
                         {disp32} jmp       _jmp_addr_0x005175d4                          // 0x005176ad    e922ffffff
_jmp_addr_0x005176b2:    {disp32} fld       dword ptr [esp + 0x000000e0]                  // 0x005176b2    d98424e0000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x005176b9    d81d40588c00
                         fnstsw             ax                                            // 0x005176bf    dfe0
                         test               ah, 0x41                                      // 0x005176c1    f6c441
                         {disp8} jne        _jmp_addr_0x005176fc                          // 0x005176c4    7536
                         cmp                edx, 0x00001a63                               // 0x005176c6    81fa631a0000
                         mov.s              esi, ecx                                      // 0x005176cc    8bf1
                         {disp8} jbe        _jmp_addr_0x005176d6                          // 0x005176ce    7606
                         {disp32} lea       esi, dword ptr [ecx + 0x00013ca4]             // 0x005176d0    8db1a43c0100
_jmp_addr_0x005176d6:    {disp32} fld       dword ptr [esp + 0x000000e0]                  // 0x005176d6    d98424e0000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x005176dd    d80d1cb48a00
                         call               _jmp_addr_0x007a1400                          // 0x005176e3    e8189d2800
                         push               eax                                           // 0x005176e8    50
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x005176e9    8b4608
                         push               eax                                           // 0x005176ec    50
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x005176ed    8d4c2458
                         push               ecx                                           // 0x005176f1    51
                         call               _swprintf                                     // 0x005176f2    e888ed2a00
                         add                esp, 0x0c                                     // 0x005176f7    83c40c
                         {disp8} jmp        _jmp_addr_0x0051772a                          // 0x005176fa    eb2e
_jmp_addr_0x005176fc:    cmp                edx, 0x00001a85                               // 0x005176fc    81fa851a0000
                         {disp8} jbe        _jmp_addr_0x0051770a                          // 0x00517702    7606
                         add                ecx, 0x00013e3c                               // 0x00517704    81c13c3e0100
_jmp_addr_0x0051770a:    {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0051770a    8b5108
                         push               edx                                           // 0x0051770d    52
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0051770e    8d442454
                         push               eax                                           // 0x00517712    50
                         call               _wcscpy                                       // 0x00517713    e89ee82a00
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x00517718    8d4c2458
                         push               0x00be8ecc                                    // 0x0051771c    68cc8ebe00
                         push               ecx                                           // 0x00517721    51
                         call               _wcscat                                       // 0x00517722    e865e82a00
                         add                esp, 0x10                                     // 0x00517727    83c410
_jmp_addr_0x0051772a:    {disp8} fild       dword ptr [esp + 0x38]                        // 0x0051772a    db442438
                         {disp32} fadd      dword ptr [data_bytes + 0x300314]             // 0x0051772e    d8051463cc00
                         call               _jmp_addr_0x007a1400                          // 0x00517734    e8c79c2800
                         mov.s              esi, eax                                      // 0x00517739    8bf0
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x0051773b    89742410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x0051773f    db442410
                         {disp32} fadd      dword ptr [data_bytes + 0x300314]             // 0x00517743    d8051463cc00
                         call               _jmp_addr_0x007a1400                          // 0x00517749    e8b29c2800
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x0051774e    8b542448
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00517752    8b4c2424
                         push               0x0                                           // 0x00517756    6a00
                         sub.s              esi, edx                                      // 0x00517758    2bf2
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0051775a    8d542438
                         push               edx                                           // 0x0051775e    52
                         mov.s              edi, eax                                      // 0x0051775f    8bf8
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00517761    8b442448
                         push               eax                                           // 0x00517765    50
                         push               ecx                                           // 0x00517766    51
                         push               0x2                                           // 0x00517767    6a02
                         push               0x00000320                                    // 0x00517769    6820030000
                         {disp8} lea        ebx, dword ptr [ebp + 0x02]                   // 0x0051776e    8d5d02
                         {disp8} lea        edx, dword ptr [esi + 0x02]                   // 0x00517771    8d5602
                         push               ebx                                           // 0x00517774    53
                         push               edx                                           // 0x00517775    52
                         {disp8} mov        byte ptr [esp + 0x54], 0x00                   // 0x00517776    c644245400
                         {disp8} mov        byte ptr [esp + 0x55], 0x00                   // 0x0051777b    c644245500
                         {disp8} mov        byte ptr [esp + 0x56], 0x00                   // 0x00517780    c644245600
                         {disp8} mov        byte ptr [esp + 0x57], -0x01                  // 0x00517785    c6442457ff
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x0051778a    e821a2efff
                         fstp               st(0)                                         // 0x0051778f    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x00517791    8b4c2460
                         {disp8} mov        edx, dword ptr [esp + 0x44]                   // 0x00517795    8b542444
                         push               0x0                                           // 0x00517799    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x54]                   // 0x0051779b    8d442454
                         push               eax                                           // 0x0051779f    50
                         push               ecx                                           // 0x005177a0    51
                         push               edx                                           // 0x005177a1    52
                         push               0x2                                           // 0x005177a2    6a02
                         push               0x00000320                                    // 0x005177a4    6820030000
                         push               ebp                                           // 0x005177a9    55
                         push               esi                                           // 0x005177aa    56
                         {disp8} mov        byte ptr [esp + 0x70], -0x01                  // 0x005177ab    c6442470ff
                         {disp8} mov        byte ptr [esp + 0x71], -0x01                  // 0x005177b0    c6442471ff
                         {disp8} mov        byte ptr [esp + 0x72], -0x01                  // 0x005177b5    c6442472ff
                         {disp8} mov        byte ptr [esp + 0x73], -0x01                  // 0x005177ba    c6442473ff
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x005177bf    e8eca1efff
                         fstp               st(0)                                         // 0x005177c4    ddd8
                         {disp32} mov       esi, dword ptr [esp + 0x00000080]             // 0x005177c6    8bb42480000000
                         add                esp, 0x40                                     // 0x005177cd    83c440
                         push               0x0                                           // 0x005177d0    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x005177d2    8d442440
                         push               eax                                           // 0x005177d6    50
                         push               esi                                           // 0x005177d7    56
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                   // 0x005177d8    8d4c245c
                         push               ecx                                           // 0x005177dc    51
                         push               0x0                                           // 0x005177dd    6a00
                         push               0x00000320                                    // 0x005177df    6820030000
                         push               ebx                                           // 0x005177e4    53
                         {disp8} mov        ebx, dword ptr [esp + 0x64]                   // 0x005177e5    8b5c2464
                         {disp8} lea        edx, dword ptr [ebx + edi * 0x1 + 0x02]       // 0x005177e9    8d543b02
                         push               edx                                           // 0x005177ed    52
                         {disp8} mov        byte ptr [esp + 0x5c], 0x00                   // 0x005177ee    c644245c00
                         {disp8} mov        byte ptr [esp + 0x5d], 0x00                   // 0x005177f3    c644245d00
                         {disp8} mov        byte ptr [esp + 0x5e], 0x00                   // 0x005177f8    c644245e00
                         {disp8} mov        byte ptr [esp + 0x5f], -0x01                  // 0x005177fd    c644245fff
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00517802    e8a9a1efff
                         fstp               st(0)                                         // 0x00517807    ddd8
                         push               0x0                                           // 0x00517809    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x4c]                   // 0x0051780b    8d44244c
                         push               eax                                           // 0x0051780f    50
                         push               esi                                           // 0x00517810    56
                         {disp8} lea        ecx, dword ptr [esp + 0x7c]                   // 0x00517811    8d4c247c
                         push               ecx                                           // 0x00517815    51
                         push               0x0                                           // 0x00517816    6a00
                         push               0x00000320                                    // 0x00517818    6820030000
                         {disp8} mov        byte ptr [esp + 0x60], -0x01                  // 0x0051781d    c6442460ff
                         {disp8} mov        byte ptr [esp + 0x61], -0x01                  // 0x00517822    c6442461ff
                         {disp8} mov        byte ptr [esp + 0x62], -0x01                  // 0x00517827    c6442462ff
                         {disp8} mov        byte ptr [esp + 0x63], -0x01                  // 0x0051782c    c6442463ff
                         push               ebp                                           // 0x00517831    55
                         add.s              ebx, edi                                      // 0x00517832    03df
                         push               ebx                                           // 0x00517834    53
                         call               ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z                // 0x00517835    e876a1efff
                         fstp               st(0)                                         // 0x0051783a    ddd8
                         {disp8} mov        ebx, dword ptr [esp + 0x54]                   // 0x0051783c    8b5c2454
                         add                esp, 0x40                                     // 0x00517840    83c440
                         cmp                ebx, 0x03                                     // 0x00517843    83fb03
                         mov                eax, 0xffffff00                               // 0x00517846    b800ffffff
                         {disp8} jne        _jmp_addr_0x0051786b                          // 0x0051784b    751e
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0051784d    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x00517851    d81db4a38a00
                         fnstsw             ax                                            // 0x00517857    dfe0
                         test               ah, 0x01                                      // 0x00517859    f6c401
                         mov                eax, 0xffff0000                               // 0x0051785c    b80000ffff
                         {disp8} jne        _jmp_addr_0x00517868                          // 0x00517861    7505
                         mov                eax, 0xff00ff00                               // 0x00517863    b800ff00ff
_jmp_addr_0x00517868:    cmp                ebx, 0x03                                     // 0x00517868    83fb03
_jmp_addr_0x0051786b:    {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0051786b    8b4c2418
                         sete               dl                                            // 0x0051786f    0f94c2
                         add.s              esi, ebp                                      // 0x00517872    03f5
                         push               edx                                           // 0x00517874    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00517875    8b542414
                         push               ecx                                           // 0x00517879    51
                         push               esi                                           // 0x0051787a    56
                         push               edi                                           // 0x0051787b    57
                         push               ebp                                           // 0x0051787c    55
                         push               edx                                           // 0x0051787d    52
                         push               eax                                           // 0x0051787e    50
                         call               _jmp_addr_0x00516b00                          // 0x0051787f    e87cf2ffff
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00517884    8b442448
                         {disp32} mov       esi, dword ptr [data_bytes + 0x300310]        // 0x00517888    8b351063cc00
                         add.s              ebp, eax                                      // 0x0051788e    03e8
                         add                esp, 0x1c                                     // 0x00517890    83c41c
                         xor.s              eax, eax                                      // 0x00517893    33c0
                         inc                ebx                                           // 0x00517895    43
                         test               esi, esi                                      // 0x00517896    85f6
                         setne              al                                            // 0x00517898    0f95c0
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x0051789b    895c2414
                         add                eax, 0x03                                     // 0x0051789f    83c003
                         cmp.s              ebx, eax                                      // 0x005178a2    3bd8
                         {disp32} jl        _jmp_addr_0x005174fb                          // 0x005178a4    0f8c51fcffff
_jmp_addr_0x005178aa:    {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x005178aa    8b4c244c
                         pop                edi                                           // 0x005178ae    5f
                         pop                esi                                           // 0x005178af    5e
                         pop                ebp                                           // 0x005178b0    5d
                         {disp32} mov       dword ptr [data_bytes + 0x2078], ecx          // 0x005178b1    890d78809c00
                         pop                ebx                                           // 0x005178b7    5b
_jmp_addr_0x005178b8:    add                esp, 0x000000c0                               // 0x005178b8    81c4c0000000
                         ret                                                              // 0x005178be    c3

// Snippet: db, [0x005178bf, 0x005178c0)
.byte 0x90                        // 0x005178bf

// Snippet: jmptbl, [0x005178c0, 0x005178d0)
.byte 0x30, 0x75, 0x51, 0x00      // 0x005178c0
.byte 0x8b, 0x75, 0x51, 0x00      // 0x005178c4
.byte 0xe6, 0x75, 0x51, 0x00      // 0x005178c8
.byte 0x38, 0x76, 0x51, 0x00      // 0x005178cc

