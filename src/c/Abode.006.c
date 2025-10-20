#include "Abode.h"

const float rdata_float_1000_0 asm("__real@447a0000") = 1000.0f;
const float rdata_float_0_1 asm("__real@3dcccccd") = 0.1f;
const float rdata_float_1_1 asm("__real@3f8ccccd") = 1.1f;
const float rdata_float_300_0 asm("__real@43960000") = 300.0f;

char* __fastcall GetAbodeText__5AbodeFPc(struct Abode* this, const void* edx, char* buff)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00405b70    8b01
    asm("push               esi");                                           // 0x00405b72    56
    asm("{disp8} mov        esi, dword ptr [ecx + 0x28]");                   // 0x00405b73    8b7128
    asm("push               edi");                                           // 0x00405b76    57
    asm("call               dword ptr [eax + 0x928]");                       // 0x00405b77    ff9028090000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x10]");                   // 0x00405b7d    8b4810
    asm("{disp32} mov       edi, dword ptr [ecx * 0x4 + 0x00c22fdc]");       // 0x00405b80    8b3c8ddc2fc200
    asm("mov.s              ecx, esi");                                      // 0x00405b87    8bce
    asm("call               ?GetDescription@GAbodeInfo@@QAEPBDXZ");          // 0x00405b89    e8d2feffff
    asm("{disp8} mov        esi, dword ptr [esp + 0x0c]");                   // 0x00405b8e    8b74240c
    asm("push               eax");                                           // 0x00405b92    50
    asm("push               edi");                                           // 0x00405b93    57
    asm("push               0x009c8054");                                    // 0x00405b94    6854809c00
    asm("push               esi");                                           // 0x00405b99    56
    asm("call               _sprintf");                                      // 0x00405b9a    e833fc3b00
    asm("add                esp, 0x10");                                     // 0x00405b9f    83c410
    asm("pop                edi");                                           // 0x00405ba2    5f
    asm("mov.s              eax, esi");                                      // 0x00405ba3    8bc6
    asm("pop                esi");                                           // 0x00405ba5    5e
    asm("ret                0x0004");                                        // 0x00405ba6    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
size_t __fastcall SaveObject__5AbodeFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2)
{
    asm("sub                esp, 0x00000278");                               // 0x00405bb0    81ec78020000
    asm("push               ebp");                                           // 0x00405bb6    55
    asm("push               esi");                                           // 0x00405bb7    56
    asm("mov.s              esi, ecx");                                      // 0x00405bb8    8bf1
    asm("call               ?CheckAndSetSaved@GameThing@@QAE_NXZ");                          // 0x00405bba    e831a31600
    asm("mov.s              ebp, eax");                                      // 0x00405bbf    8be8
    asm("test               ebp, ebp");                                      // 0x00405bc1    85ed
    asm("{disp32} je        _jmp_addr_0x00405d68");                          // 0x00405bc3    0f849f010000
    asm("push               ebx");                                           // 0x00405bc9    53
    asm("{disp32} mov       ebx, dword ptr [esp + 0x0000028c]");             // 0x00405bca    8b9c248c020000
    asm("test               ebx, ebx");                                      // 0x00405bd1    85db
    asm("push               edi");                                           // 0x00405bd3    57
    asm("{disp8} je         _jmp_addr_0x00405be6");                          // 0x00405bd4    7410
    asm("push               ebx");                                           // 0x00405bd6    53
    asm("{disp8} lea        eax, dword ptr [esp + 0x28]");                   // 0x00405bd7    8d442428
    asm("push               eax");                                           // 0x00405bdb    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00405bdc    8d4e14
    asm("call               _jmp_addr_0x006055c0");                          // 0x00405bdf    e8dcf91f00
    asm("{disp8} jmp        _jmp_addr_0x00405be9");                          // 0x00405be4    eb03
    asm("_jmp_addr_0x00405be6:");
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x00405be6    8d4614
    asm("_jmp_addr_0x00405be9:");
    asm("mov                ecx, dword ptr [eax]");                          // 0x00405be9    8b08
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x00405beb    894c2418
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00405bef    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x00405bf2    8954241c
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00405bf6    8b4008
    asm("mov                edx, dword ptr [esi]");                          // 0x00405bf9    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405bfb    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x00405bfd    89442420
    asm("call               dword ptr [edx + 0x48]");                        // 0x00405c01    ff5248
    asm("test               eax, eax");                                      // 0x00405c04    85c0
    asm("{disp8} je         _jmp_addr_0x00405c1b");                          // 0x00405c06    7413
    asm("test               ebx, ebx");                                      // 0x00405c08    85db
    asm("{disp8} jne        _jmp_addr_0x00405c1b");                          // 0x00405c0a    750f
    asm("mov                eax, dword ptr [esi]");                          // 0x00405c0c    8b06
    asm("mov.s              ecx, esi");                                      // 0x00405c0e    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00405c10    ff5048
    asm("{disp32} mov       edi, dword ptr [eax + 0x000005b4]");             // 0x00405c13    8bb8b4050000
    asm("{disp8} jmp        _jmp_addr_0x00405c1e");                          // 0x00405c19    eb03
    asm("_jmp_addr_0x00405c1b:");
    asm("or                 edi, 0xffffffff");                               // 0x00405c1b    83cfff
    asm("_jmp_addr_0x00405c1e:");
    asm("test               byte ptr [esi + 0x58], 0x02");                   // 0x00405c1e    f6465802
    asm("mov                edx, dword ptr [esi]");                          // 0x00405c22    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405c24    8bce
    asm("{disp8} je         _jmp_addr_0x00405ca1");                          // 0x00405c26    7479
    asm("call               dword ptr [edx + 0x120]");                       // 0x00405c28    ff9220010000
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00405c2e    d95c2414
    asm("mov                eax, dword ptr [esi]");                          // 0x00405c32    8b06
    asm("mov.s              ecx, esi");                                      // 0x00405c34    8bce
    asm("call               dword ptr [eax + 0x508]");                       // 0x00405c36    ff9008050000
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00405c3c    d95c2410
    asm("mov                edx, dword ptr [esi]");                          // 0x00405c40    8b16
    asm("push               0x1");                                           // 0x00405c42    6a01
    asm("mov.s              ecx, esi");                                      // 0x00405c44    8bce
    asm("call               dword ptr [edx + 0x98]");                        // 0x00405c46    ff9298000000
    asm("push               eax");                                           // 0x00405c4c    50
    asm("mov                eax, dword ptr [esi]");                          // 0x00405c4d    8b06
    asm("push               0x0");                                           // 0x00405c4f    6a00
    asm("mov.s              ecx, esi");                                      // 0x00405c51    8bce
    asm("call               dword ptr [eax + 0x98]");                        // 0x00405c53    ff9098000000
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00405c59    d9442418
    asm("{disp32} fmul      dword ptr [__real@447a0000]");                   // 0x00405c5d    d80d28b28a00
    asm("push               eax");                                           // 0x00405c63    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00405c64    e897b73900
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00405c69    d9442418
    asm("{disp32} fmul      dword ptr [__real@447a0000]");                   // 0x00405c6d    d80d28b28a00
    asm("push               eax");                                           // 0x00405c73    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00405c74    e887b73900
    asm("push               eax");                                           // 0x00405c79    50
    asm("{disp32} lea       ecx, dword ptr [esp + 0x00000108]");             // 0x00405c7a    8d8c2408010000
    asm("push               ecx");                                           // 0x00405c81    51
    asm("mov.s              ecx, esi");                                      // 0x00405c82    8bce
    asm("call               ?GetAbodeText@Abode@@QAEPADPAD@Z");              // 0x00405c84    e8e7feffff
    asm("push               eax");                                           // 0x00405c89    50
    asm("{disp32} lea       edx, dword ptr [esp + 0x000001d4]");             // 0x00405c8a    8d9424d4010000
    asm("push               edx");                                           // 0x00405c91    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                   // 0x00405c92    8d4c2430
    asm("call               ?ConvertToText@MapCoords@@QAEPADPAD@Z");         // 0x00405c96    e8e5cb1f00
    asm("push               eax");                                           // 0x00405c9b    50
    asm("push               edi");                                           // 0x00405c9c    57
    asm("push               0x8");                                           // 0x00405c9d    6a08
    asm("{disp8} jmp        _jmp_addr_0x00405d18");                          // 0x00405c9f    eb77
    asm("_jmp_addr_0x00405ca1:");
    asm("call               dword ptr [edx + 0x120]");                       // 0x00405ca1    ff9220010000
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00405ca7    d95c2410
    asm("mov                eax, dword ptr [esi]");                          // 0x00405cab    8b06
    asm("mov.s              ecx, esi");                                      // 0x00405cad    8bce
    asm("call               dword ptr [eax + 0x508]");                       // 0x00405caf    ff9008050000
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00405cb5    d95c2414
    asm("mov                edx, dword ptr [esi]");                          // 0x00405cb9    8b16
    asm("push               0x1");                                           // 0x00405cbb    6a01
    asm("mov.s              ecx, esi");                                      // 0x00405cbd    8bce
    asm("call               dword ptr [edx + 0x98]");                        // 0x00405cbf    ff9298000000
    asm("push               eax");                                           // 0x00405cc5    50
    asm("mov                eax, dword ptr [esi]");                          // 0x00405cc6    8b06
    asm("push               0x0");                                           // 0x00405cc8    6a00
    asm("mov.s              ecx, esi");                                      // 0x00405cca    8bce
    asm("call               dword ptr [eax + 0x98]");                        // 0x00405ccc    ff9098000000
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x00405cd2    d9442414
    asm("{disp32} fmul      dword ptr [__real@447a0000]");                   // 0x00405cd6    d80d28b28a00
    asm("push               eax");                                           // 0x00405cdc    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00405cdd    e81eb73900
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00405ce2    d944241c
    asm("{disp32} fmul      dword ptr [__real@447a0000]");                   // 0x00405ce6    d80d28b28a00
    asm("push               eax");                                           // 0x00405cec    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00405ced    e80eb73900
    asm("push               eax");                                           // 0x00405cf2    50
    asm("{disp32} lea       ecx, dword ptr [esp + 0x00000108]");             // 0x00405cf3    8d8c2408010000
    asm("push               ecx");                                           // 0x00405cfa    51
    asm("mov.s              ecx, esi");                                      // 0x00405cfb    8bce
    asm("call               ?GetAbodeText@Abode@@QAEPADPAD@Z");              // 0x00405cfd    e86efeffff
    asm("push               eax");                                           // 0x00405d02    50
    asm("{disp32} lea       edx, dword ptr [esp + 0x000001d4]");             // 0x00405d03    8d9424d4010000
    asm("push               edx");                                           // 0x00405d0a    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                   // 0x00405d0b    8d4c2430
    asm("call               ?ConvertToText@MapCoords@@QAEPADPAD@Z");         // 0x00405d0f    e86ccb1f00
    asm("push               eax");                                           // 0x00405d14    50
    asm("push               edi");                                           // 0x00405d15    57
    asm("push               0x7");                                           // 0x00405d16    6a07
    asm("_jmp_addr_0x00405d18:");
    asm("call               ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z");                          // 0x00405d18    e813f43000
    asm("add                esp, 0x04");                                     // 0x00405d1d    83c404
    asm("push               eax");                                           // 0x00405d20    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x50]");                   // 0x00405d21    8d442450
    asm("push               eax");                                           // 0x00405d25    50
    asm("call               _sprintf");                                      // 0x00405d26    e8a7fa3b00
    asm("or                 ecx, 0xffffffff");                               // 0x00405d2b    83c9ff
    asm("xor.s              eax, eax");                                      // 0x00405d2e    33c0
    asm("{disp8} lea        edi, dword ptr [esp + 0x54]");                   // 0x00405d30    8d7c2454
    asm("repne scasb");                                                      // 0x00405d34    f2ae
    asm("{disp32} mov       edi, dword ptr [esp + 0x000002b0]");             // 0x00405d36    8bbc24b0020000
    asm("not                ecx");                                           // 0x00405d3d    f7d1
    asm("dec                ecx");                                           // 0x00405d3f    49
    asm("push               ecx");                                           // 0x00405d40    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x58]");                   // 0x00405d41    8d4c2458
    asm("push               ecx");                                           // 0x00405d45    51
    asm("push               edi");                                           // 0x00405d46    57
    asm("push               esi");                                           // 0x00405d47    56
    asm("call               ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z");                          // 0x00405d48    e8c3383100
    asm("add                esp, 0x34");                                     // 0x00405d4d    83c434
    asm("push               ebx");                                           // 0x00405d50    53
    asm("push               edi");                                           // 0x00405d51    57
    asm("mov.s              ecx, esi");                                      // 0x00405d52    8bce
    asm("call               ?SaveObject@MultiMapFixed@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z");                          // 0x00405d54    e8b7911200
    asm("pop                edi");                                           // 0x00405d59    5f
    asm("pop                ebx");                                           // 0x00405d5a    5b
    asm("pop                esi");                                           // 0x00405d5b    5e
    asm("mov.s              eax, ebp");                                      // 0x00405d5c    8bc5
    asm("pop                ebp");                                           // 0x00405d5e    5d
    asm("add                esp, 0x00000278");                               // 0x00405d5f    81c478020000
    asm("ret                0x0008");                                        // 0x00405d65    c20800
    asm("_jmp_addr_0x00405d68:");
    asm("pop                esi");                                           // 0x00405d68    5e
    asm("mov.s              eax, ebp");                                      // 0x00405d69    8bc5
    asm("pop                ebp");                                           // 0x00405d6b    5d
    asm("add                esp, 0x00000278");                               // 0x00405d6c    81c478020000
    asm("ret                0x0008");                                        // 0x00405d72    c20800
    __builtin_unreachable();
}

int __fastcall FUN_00405d80__5AbodeFv(struct Abode* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
void __fastcall ReduceLife__5AbodeFfP7GPlayer(struct Object* this, const void* edx, float value, struct GPlayer* player)
{
    asm("push               ecx");                                           // 0x00405d90    51
    asm("push               ebx");                                           // 0x00405d91    53
    asm("push               ebp");                                           // 0x00405d92    55
    asm("push               esi");                                           // 0x00405d93    56
    asm("mov.s              esi, ecx");                                      // 0x00405d94    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00405d96    8b06
    asm("call               dword ptr [eax + 0x11c]");                       // 0x00405d98    ff901c010000
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00405d9e    d95c240c
    asm("mov                edx, dword ptr [esi]");                          // 0x00405da2    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405da4    8bce
    asm("call               dword ptr [edx + 0x894]");                       // 0x00405da6    ff9294080000
    asm("{disp8} fcomp      dword ptr [esp + 0x0c]");                        // 0x00405dac    d85c240c
    asm("fnstsw             ax");                                            // 0x00405db0    dfe0
    asm("test               ah, 0x01");                                      // 0x00405db2    f6c401
    asm("{disp8} je         _jmp_addr_0x00405dbe");                          // 0x00405db5    7407
    asm("mov                ebp, 0x00000001");                               // 0x00405db7    bd01000000
    asm("{disp8} jmp        _jmp_addr_0x00405dc0");                          // 0x00405dbc    eb02
    asm("_jmp_addr_0x00405dbe:");
    asm("xor.s              ebp, ebp");                                      // 0x00405dbe    33ed
    asm("_jmp_addr_0x00405dc0:");
    asm("{disp8} mov        ebx, dword ptr [esp + 0x18]");                   // 0x00405dc0    8b5c2418
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00405dc4    8b442414
    asm("push               ebx");                                           // 0x00405dc8    53
    asm("push               eax");                                           // 0x00405dc9    50
    asm("mov.s              ecx, esi");                                      // 0x00405dca    8bce
    asm("call               ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z");// 0x00405dcc    e80f981200
    asm("{disp8} fst        dword ptr [esp + 0x18]");                        // 0x00405dd1    d9542418
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00405dd5    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00405ddb    dfe0
    asm("test               ah, 0x01");                                      // 0x00405ddd    f6c401
    asm("{disp32} je        _jmp_addr_0x00405ec5");                          // 0x00405de0    0f84df000000
    asm("push               edi");                                           // 0x00405de6    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000a0]");             // 0x00405de7    8bbea0000000
    asm("test               edi, edi");                                      // 0x00405ded    85ff
    asm("{disp8} je         _jmp_addr_0x00405e02");                          // 0x00405def    7411
    asm("_jmp_addr_0x00405df1:");
    asm("mov.s              ecx, edi");                                      // 0x00405df1    8bcf
    asm("call               ?SetStateWhenTappedOnAbode@Villager@@QAE_NXZ");                          // 0x00405df3    e888cd3400
    asm("{disp32} mov       edi, dword ptr [edi + 0x000000e4]");             // 0x00405df8    8bbfe4000000
    asm("test               edi, edi");                                      // 0x00405dfe    85ff
    asm("{disp8} jne        _jmp_addr_0x00405df1");                          // 0x00405e00    75ef
    asm("_jmp_addr_0x00405e02:");
    asm("test               ebp, ebp");                                      // 0x00405e02    85ed
    asm("pop                edi");                                           // 0x00405e04    5f
    asm("{disp8} je         _jmp_addr_0x00405e45");                          // 0x00405e05    743e
    asm("mov                edx, dword ptr [esi]");                          // 0x00405e07    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405e09    8bce
    asm("call               dword ptr [edx + 0x894]");                       // 0x00405e0b    ff9294080000
    asm("{disp8} fcomp      dword ptr [esp + 0x18]");                        // 0x00405e11    d85c2418
    asm("fnstsw             ax");                                            // 0x00405e15    dfe0
    asm("test               ah, 0x01");                                      // 0x00405e17    f6c401
    asm("{disp8} jne        _jmp_addr_0x00405e45");                          // 0x00405e1a    7529
    asm("mov                eax, dword ptr [esi]");                          // 0x00405e1c    8b06
    asm("push               ebx");                                           // 0x00405e1e    53
    asm("mov.s              ecx, esi");                                      // 0x00405e1f    8bce
    asm("call               dword ptr [eax + 0x918]");                       // 0x00405e21    ff9018090000
    asm("mov                edx, dword ptr [esi]");                          // 0x00405e27    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405e29    8bce
    asm("call               dword ptr [edx + 0x920]");                       // 0x00405e2b    ff9220090000
    asm("test               eax, eax");                                      // 0x00405e31    85c0
    asm("{disp8} je         _jmp_addr_0x00405e5e");                          // 0x00405e33    7429
    asm("mov                eax, dword ptr [esi]");                          // 0x00405e35    8b06
    asm("mov.s              ecx, esi");                                      // 0x00405e37    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00405e39    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00405e3c    8bc8
    asm("call               ?SetInStateOfEmergency@Town@@QAEXXZ");           // 0x00405e3e    e85d1b3400
    asm("{disp8} jmp        _jmp_addr_0x00405e5e");                          // 0x00405e43    eb19
    asm("_jmp_addr_0x00405e45:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00405e45    d944240c
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00405e49    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00405e4f    dfe0
    asm("test               ah, 0x01");                                      // 0x00405e51    f6c401
    asm("{disp8} jne        _jmp_addr_0x00405e5e");                          // 0x00405e54    7508
    asm("push               ebx");                                           // 0x00405e56    53
    asm("mov.s              ecx, esi");                                      // 0x00405e57    8bce
    asm("call               ?FUN_004073f0@Abode@@UAEXPAVGPlayer@@@Z");       // 0x00405e59    e892150000
    asm("_jmp_addr_0x00405e5e:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x74]");                   // 0x00405e5e    8b4674
    asm("test               eax, eax");                                      // 0x00405e61    85c0
    asm("{disp8} jne        _jmp_addr_0x00405e86");                          // 0x00405e63    7521
    asm("mov                edx, dword ptr [esi]");                          // 0x00405e65    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405e67    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00405e69    ff5248
    asm("test               eax, eax");                                      // 0x00405e6c    85c0
    asm("{disp8} je         _jmp_addr_0x00405e7f");                          // 0x00405e6e    740f
    asm("mov                eax, dword ptr [esi]");                          // 0x00405e70    8b06
    asm("push               esi");                                           // 0x00405e72    56
    asm("mov.s              ecx, esi");                                      // 0x00405e73    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00405e75    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00405e78    8bc8
    asm("call               _jmp_addr_0x0073b8e0");                          // 0x00405e7a    e8615a3300
    asm("_jmp_addr_0x00405e7f:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x74]");                   // 0x00405e7f    8b4674
    asm("test               eax, eax");                                      // 0x00405e82    85c0
    asm("{disp8} je         _jmp_addr_0x00405ead");                          // 0x00405e84    7427
    asm("_jmp_addr_0x00405e86:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00405e86    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405e88    8bce
    asm("call               dword ptr [edx + 0x890]");                       // 0x00405e8a    ff9290080000
    asm("test               eax, eax");                                      // 0x00405e90    85c0
    asm("{disp8} je         _jmp_addr_0x00405ead");                          // 0x00405e92    7419
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00405e94    d9442418
    asm("{disp8} mov        eax, dword ptr [esi + 0x74]");                   // 0x00405e98    8b4674
    asm("{disp32} fmul      dword ptr [__real@3f8ccccd]");                   // 0x00405e9b    d80d30b28a00
    asm("{disp32} fsub      dword ptr [__real@3dcccccd]");                   // 0x00405ea1    d8252cb28a00
    asm("{disp32} fstp      dword ptr [eax + 0x00000640]");                  // 0x00405ea7    d99840060000
    asm("_jmp_addr_0x00405ead:");
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00405ead    d9442418
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00405eb1    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00405eb7    dfe0
    asm("test               ah, 0x40");                                      // 0x00405eb9    f6c440
    asm("{disp8} je         _jmp_addr_0x00405ec5");                          // 0x00405ebc    7407
    asm("mov.s              ecx, esi");                                      // 0x00405ebe    8bce
    asm("call               ?FUN_00405d80@Abode@@QAEHXZ");                   // 0x00405ec0    e8bbfeffff
    asm("_jmp_addr_0x00405ec5:");
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00405ec5    d9442418
    asm("pop                esi");                                           // 0x00405ec9    5e
    asm("pop                ebp");                                           // 0x00405eca    5d
    asm("pop                ebx");                                           // 0x00405ecb    5b
    asm("pop                ecx");                                           // 0x00405ecc    59
    asm("ret                0x0008");                                        // 0x00405ecd    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall IncreaseLife__5AbodeFf(struct Object* this, const void* edx, float value)
{
    asm("push               ecx");                                           // 0x00405ed0    51
    asm("push               esi");                                           // 0x00405ed1    56
    asm("mov.s              esi, ecx");                                      // 0x00405ed2    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00405ed4    8b06
    asm("push               edi");                                           // 0x00405ed6    57
    asm("call               dword ptr [eax + 0x11c]");                       // 0x00405ed7    ff901c010000
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00405edd    d95c2408
    asm("mov                edx, dword ptr [esi]");                          // 0x00405ee1    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405ee3    8bce
    asm("call               dword ptr [edx + 0x894]");                       // 0x00405ee5    ff9294080000
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x00405eeb    d85c2408
    asm("fnstsw             ax");                                            // 0x00405eef    dfe0
    asm("test               ah, 0x01");                                      // 0x00405ef1    f6c401
    asm("{disp8} jne        _jmp_addr_0x00405efd");                          // 0x00405ef4    7507
    asm("mov                edi, 0x00000001");                               // 0x00405ef6    bf01000000
    asm("{disp8} jmp        _jmp_addr_0x00405eff");                          // 0x00405efb    eb02
    asm("_jmp_addr_0x00405efd:");
    asm("xor.s              edi, edi");                                      // 0x00405efd    33ff
    asm("_jmp_addr_0x00405eff:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00405eff    8b442410
    asm("push               eax");                                           // 0x00405f03    50
    asm("mov.s              ecx, esi");                                      // 0x00405f04    8bce
    asm("call               ?IncreaseLife@Object@@UAEXM@Z");                 // 0x00405f06    e865192300
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00405f0b    d95c2410
    asm("test               edi, edi");                                      // 0x00405f0f    85ff
    asm("{disp8} je         _jmp_addr_0x00405f32");                          // 0x00405f11    741f
    asm("mov                edx, dword ptr [esi]");                          // 0x00405f13    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405f15    8bce
    asm("call               dword ptr [edx + 0x894]");                       // 0x00405f17    ff9294080000
    asm("{disp8} fcomp      dword ptr [esp + 0x10]");                        // 0x00405f1d    d85c2410
    asm("fnstsw             ax");                                            // 0x00405f21    dfe0
    asm("test               ah, 0x01");                                      // 0x00405f23    f6c401
    asm("{disp8} je         _jmp_addr_0x00405f32");                          // 0x00405f26    740a
    asm("mov                eax, dword ptr [esi]");                          // 0x00405f28    8b06
    asm("mov.s              ecx, esi");                                      // 0x00405f2a    8bce
    asm("call               dword ptr [eax + 0x91c]");                       // 0x00405f2c    ff901c090000
    asm("_jmp_addr_0x00405f32:");
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00405f32    d9442410
    asm("pop                edi");                                           // 0x00405f36    5f
    asm("pop                esi");                                           // 0x00405f37    5e
    asm("pop                ecx");                                           // 0x00405f38    59
    asm("ret                0x0004");                                        // 0x00405f39    c20400
    __builtin_unreachable();
}

enum TRIBE_TYPE __fastcall GetTribeType__5AbodeCFv(struct Abode* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000098]");             // 0x00405f40    8b8198000000
    asm("{disp32} mov       eax, dword ptr [eax + 0x000005b8]");             // 0x00405f46    8b80b8050000
    asm("ret");                                                              // 0x00405f4c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GTribeInfo* __fastcall GetTribe__5AbodeFv(struct Abode* this)
{
    asm("push               esi");                                           // 0x00405f50    56
    asm("mov.s              esi, ecx");                                      // 0x00405f51    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00405f53    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00405f55    ff5048
    asm("test               eax, eax");                                      // 0x00405f58    85c0
    asm("{disp8} je         _jmp_addr_0x00405f6c");                          // 0x00405f5a    7410
    asm("mov                edx, dword ptr [esi]");                          // 0x00405f5c    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405f5e    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00405f60    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00405f63    8bc8
    asm("call               ?GetTribe@Town@@QBEPAVGTribeInfo@@XZ");          // 0x00405f65    e8d6683300
    asm("pop                esi");                                           // 0x00405f6a    5e
    asm("ret");                                                              // 0x00405f6b    c3
    asm("_jmp_addr_0x00405f6c:");
    asm("xor.s              eax, eax");                                      // 0x00405f6c    33c0
    asm("pop                esi");                                           // 0x00405f6e    5e
    asm("ret");                                                              // 0x00405f6f    c3
    __builtin_unreachable();
}

struct GPlayer* __fastcall GetPlayer__5AbodeFv(struct GameThing* this)
{
    asm("push               esi");                                           // 0x00405f70    56
    asm("mov.s              esi, ecx");                                      // 0x00405f71    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00405f73    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00405f75    ff5048
    asm("test               eax, eax");                                      // 0x00405f78    85c0
    asm("{disp8} je         _jmp_addr_0x00405f8c");                          // 0x00405f7a    7410
    asm("mov                edx, dword ptr [esi]");                          // 0x00405f7c    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405f7e    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00405f80    ff5248
    asm("mov                edx, dword ptr [eax]");                          // 0x00405f83    8b10
    asm("mov.s              ecx, eax");                                      // 0x00405f85    8bc8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00405f87    ff521c
    asm("pop                esi");                                           // 0x00405f8a    5e
    asm("ret");                                                              // 0x00405f8b    c3
    asm("_jmp_addr_0x00405f8c:");
    asm("mov.s              ecx, esi");                                      // 0x00405f8c    8bce
    asm("call               ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ");       // 0x00405f8e    e89da11600
    asm("pop                esi");                                           // 0x00405f93    5e
    asm("ret");                                                              // 0x00405f94    c3
    __builtin_unreachable();
}

void __fastcall ArriveHome__5AbodeFv(struct Abode* this)
{
    asm("{disp32} inc       byte ptr [ecx + 0x000000b6]");                   // 0x00405fa0    fe81b6000000
    asm("ret");                                                              // 0x00405fa6    c3
    __builtin_unreachable();
}

void __fastcall LeaveHome__5AbodeFv(struct Abode* this)
{
    asm("dec                byte ptr [ecx + 0x000000b6]");                   // 0x00405fb0    fe89b6000000
    asm("ret");                                                              // 0x00405fb6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool GetNearestWaterPos__5AbodeFR9MapCoords(struct Abode* this, const void* edx, struct MapCoords* coords)
{
    asm("{disp8} mov        dl, byte ptr [ecx + 0x7c]");                     // 0x00405fc0    8a517c
    asm("mov                eax, 0x00000001");                               // 0x00405fc3    b801000000
    asm("test               al, dl");                                        // 0x00405fc8    84d0
    asm("{disp8} je         _jmp_addr_0x00405feb");                          // 0x00405fca    741f
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00405fcc    8b542404
    asm("add                ecx, 0x00000080");                               // 0x00405fd0    81c180000000
    asm("push               esi");                                           // 0x00405fd6    56
    asm("mov                esi, dword ptr [ecx]");                          // 0x00405fd7    8b31
    asm("mov                dword ptr [edx], esi");                          // 0x00405fd9    8932
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");                   // 0x00405fdb    8b7104
    asm("{disp8} mov        dword ptr [edx + 0x04], esi");                   // 0x00405fde    897204
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x00405fe1    8b4908
    asm("{disp8} mov        dword ptr [edx + 0x08], ecx");                   // 0x00405fe4    894a08
    asm("pop                esi");                                           // 0x00405fe7    5e
    asm("ret                0x0004");                                        // 0x00405fe8    c20400
    asm("_jmp_addr_0x00405feb:");
    asm("xor.s              eax, eax");                                      // 0x00405feb    33c0
    asm("ret                0x0004");                                        // 0x00405fed    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsCivic__5AbodeFv(struct MultiMapFixed* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00405ff0    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000120]");             // 0x00405ff3    8b8020010000
    asm("cmp                eax, 0x00000100");                               // 0x00405ff9    3d00010000
    asm("{disp8} jg         _jmp_addr_0x00406019");                          // 0x00405ffe    7f19
    asm("{disp8} je         _jmp_addr_0x0040603d");                          // 0x00406000    743b
    asm("add                eax, -0x14");                                    // 0x00406002    83c0ec
    asm("cmp                eax, 0x70");                                     // 0x00406005    83f870
    asm("{disp8} ja         _jmp_addr_0x0040603a");                          // 0x00406008    7730
    asm("xor.s              ecx, ecx");                                      // 0x0040600a    33c9
    asm("{disp32} mov       cl, byte ptr [eax + 0x0040604c]");               // 0x0040600c    8a884c604000
    asm("jmp                dword ptr [ecx*4 + 0x406044]");                  // 0x00406012    ff248d44604000
    asm("_jmp_addr_0x00406019:");
    asm("cmp                eax, 0x00001004");                               // 0x00406019    3d04100000
    asm("{disp8} jg         _jmp_addr_0x00406033");                          // 0x0040601e    7f13
    asm("{disp8} je         _jmp_addr_0x0040603d");                          // 0x00406020    741b
    asm("cmp                eax, 0x00000204");                               // 0x00406022    3d04020000
    asm("{disp8} je         _jmp_addr_0x0040603d");                          // 0x00406027    7414
    asm("cmp                eax, 0x00000404");                               // 0x00406029    3d04040000
    asm("{disp8} je         _jmp_addr_0x0040603d");                          // 0x0040602e    740d
    asm("xor.s              eax, eax");                                      // 0x00406030    33c0
    asm("ret");                                                              // 0x00406032    c3
    asm("_jmp_addr_0x00406033:");
    asm("cmp                eax, 0x00002004");                               // 0x00406033    3d04200000
    asm("{disp8} je         _jmp_addr_0x0040603d");                          // 0x00406038    7403
    asm("_jmp_addr_0x0040603a:");
    asm("xor.s              eax, eax");                                      // 0x0040603a    33c0
    asm("ret");                                                              // 0x0040603c    c3
    asm("_jmp_addr_0x0040603d:");
    asm("mov                eax, 0x00000001");                               // 0x0040603d    b801000000
    asm("ret");                                                              // 0x00406042    c3
    asm("nop");                                                              // 0x00406043    90
    // Snippet: jmptbl, [0x00406044, 0x0040604c)
    asm(".byte 0x3d, 0x60, 0x40, 0x00");      // 0x00406044
    asm(".byte 0x3a, 0x60, 0x40, 0x00");      // 0x00406048
    // Snippet: ijmptbl, [0x0040604c, 0x004060bd)
    asm(".byte 0x00, 0x01, 0x01, 0x01");      // 0x0040604c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406050
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406054
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406058
    asm(".byte 0x00, 0x01, 0x01, 0x01");      // 0x0040605c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406060
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406064
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406068
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040606c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406070
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406074
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406078
    asm(".byte 0x00, 0x01, 0x01, 0x01");      // 0x0040607c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406080
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406084
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406088
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040608c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406090
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406094
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x00406098
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x0040609c
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x004060a0
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x004060a4
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x004060a8
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x004060ac
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x004060b0
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x004060b4
    asm(".byte 0x01, 0x01, 0x01, 0x01");      // 0x004060b8
    asm(".byte 0x00");                        // 0x004060bc
    __builtin_unreachable();
}
