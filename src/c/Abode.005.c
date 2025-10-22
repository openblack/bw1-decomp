#include "Abode.h"

__attribute__((XOR32rr_REV))
float __fastcall CalculateScoreForAddingVillagerToAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager)
{
    asm("sub                esp, 0x10");                                     // 0x00404b40    83ec10
    asm("push               esi");                                           // 0x00404b43    56
    asm("push               edi");                                           // 0x00404b44    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x1c]");                   // 0x00404b45    8b7c241c
    asm("mov                eax, dword ptr [edi]");                          // 0x00404b49    8b07
    asm("mov.s              esi, ecx");                                      // 0x00404b4b    8bf1
    asm("mov.s              ecx, edi");                                      // 0x00404b4d    8bcf
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x00404b4f    ff90f80a0000
    asm("test               eax, eax");                                      // 0x00404b55    85c0
    asm("{disp8} je         _jmp_addr_0x00404ba1");                          // 0x00404b57    7448
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00404b59    8b4e28
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000178]");             // 0x00404b5c    8b8178010000
    asm("xor.s              edx, edx");                                      // 0x00404b62    33d2
    asm("cmp.s              eax, edx");                                      // 0x00404b64    3bc2
    asm("{disp8} jne        _jmp_addr_0x00404b76");                          // 0x00404b66    750e
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00404b68    d90598a38a00
    asm("pop                edi");                                           // 0x00404b6e    5f
    asm("pop                esi");                                           // 0x00404b6f    5e
    asm("add                esp, 0x10");                                     // 0x00404b70    83c410
    asm("ret                0x0004");                                        // 0x00404b73    c20400
    asm("_jmp_addr_0x00404b76:");
    asm("xor.s              ecx, ecx");                                      // 0x00404b76    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000b7]");               // 0x00404b78    8a8eb7000000
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00404b7e    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x00404b82    8954240c
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x00404b86    894c241c
    asm("{disp8} fild       dword ptr [esp + 0x1c]");                        // 0x00404b8a    db44241c
    asm("{disp8} fidiv      dword ptr [esp + 0x08]");                        // 0x00404b8e    da742408
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x00404b92    d81590a38a00
    asm("fnstsw             ax");                                            // 0x00404b98    dfe0
    asm("test               ah, 0x01");                                      // 0x00404b9a    f6c401
    asm("{disp8} jne        _jmp_addr_0x00404bef");                          // 0x00404b9d    7550
    asm("{disp8} jmp        _jmp_addr_0x00404be7");                          // 0x00404b9f    eb46
    asm("_jmp_addr_0x00404ba1:");
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                   // 0x00404ba1    8b5628
    asm("{disp32} mov       eax, dword ptr [edx + 0x00000174]");             // 0x00404ba4    8b8274010000
    asm("xor.s              edx, edx");                                      // 0x00404baa    33d2
    asm("cmp.s              eax, edx");                                      // 0x00404bac    3bc2
    asm("{disp8} jne        _jmp_addr_0x00404bbe");                          // 0x00404bae    750e
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00404bb0    d90598a38a00
    asm("pop                edi");                                           // 0x00404bb6    5f
    asm("pop                esi");                                           // 0x00404bb7    5e
    asm("add                esp, 0x10");                                     // 0x00404bb8    83c410
    asm("ret                0x0004");                                        // 0x00404bbb    c20400
    asm("_jmp_addr_0x00404bbe:");
    asm("xor.s              ecx, ecx");                                      // 0x00404bbe    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000b4]");               // 0x00404bc0    8a8eb4000000
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00404bc6    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x00404bca    8954240c
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x00404bce    894c241c
    asm("{disp8} fild       dword ptr [esp + 0x1c]");                        // 0x00404bd2    db44241c
    asm("{disp8} fidiv      dword ptr [esp + 0x08]");                        // 0x00404bd6    da742408
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x00404bda    d81590a38a00
    asm("fnstsw             ax");                                            // 0x00404be0    dfe0
    asm("test               ah, 0x01");                                      // 0x00404be2    f6c401
    asm("{disp8} jne        _jmp_addr_0x00404bef");                          // 0x00404be5    7508
    asm("_jmp_addr_0x00404be7:");
    asm("fstp               st(0)");                                         // 0x00404be7    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x00404be9    d90590a38a00
    asm("_jmp_addr_0x00404bef:");
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x00404bef    d82d90a38a00
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x00404bf5    d81598a38a00
    asm("{disp8} fst        dword ptr [esp + 0x08]");                        // 0x00404bfb    d9542408
    asm("fnstsw             ax");                                            // 0x00404bff    dfe0
    asm("test               ah, 0x41");                                      // 0x00404c01    f6c441
    asm("{disp32} jne       _jmp_addr_0x00404cab");                          // 0x00404c04    0f85a1000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000a0]");             // 0x00404c0a    8b86a0000000
    asm("fstp               st(0)");                                         // 0x00404c10    ddd8
    asm("cmp.s              eax, edx");                                      // 0x00404c12    3bc2
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00404c14    d90598a38a00
    asm("{disp8} je         _jmp_addr_0x00404c42");                          // 0x00404c1a    7426
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x00404c1c    8b4f28
    asm("{disp32} mov       ecx, dword ptr [ecx + 0x000001f8]");             // 0x00404c1f    8b89f8010000
    asm("push               ebx");                                           // 0x00404c25    53
    asm("_jmp_addr_0x00404c26:");
    asm("{disp8} mov        ebx, dword ptr [eax + 0x28]");                   // 0x00404c26    8b5828
    asm("cmp                dword ptr [ebx + 0x000001f8], ecx");             // 0x00404c29    398bf8010000
    asm("{disp8} jne        _jmp_addr_0x00404c37");                          // 0x00404c2f    7506
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00404c31    d80590a38a00
    asm("_jmp_addr_0x00404c37:");
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");             // 0x00404c37    8b80e4000000
    asm("cmp.s              eax, edx");                                      // 0x00404c3d    3bc2
    asm("{disp8} jne        _jmp_addr_0x00404c26");                          // 0x00404c3f    75e5
    asm("pop                ebx");                                           // 0x00404c41    5b
    asm("_jmp_addr_0x00404c42:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000a4]");             // 0x00404c42    8b86a4000000
    asm("cmp.s              eax, edx");                                      // 0x00404c48    3bc2
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x3f800000");            // 0x00404c4a    c744241c0000803f
    asm("{disp8} je         _jmp_addr_0x00404c78");                          // 0x00404c52    7424
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00404c54    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00404c58    89542414
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x00404c5c    df6c2410
    asm("fdivr              st, st(1)");                                     // 0x00404c60    d8f9
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x00404c62    d82d90a38a00
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00404c68    d80590a38a00
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00404c6e    d80db4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00404c74    d95c241c
    asm("_jmp_addr_0x00404c78:");
    asm("push               0x43fa0000");                                    // 0x00404c78    680000fa43
    asm("fstp               st(0)");                                         // 0x00404c7d    ddd8
    asm("add                edi, 0x14");                                     // 0x00404c7f    83c714
    asm("push               edi");                                           // 0x00404c82    57
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00404c83    8d4e14
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x00404c86    e845102000
    asm("push               ecx");                                           // 0x00404c8b    51
    asm("fstp               dword ptr [esp]");                               // 0x00404c8c    d91c24
    asm("call               _GetDistanceModifier__6GUtilsFff@8");            // 0x00404c8f    e8fca53400
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x00404c94    d80590a38a00
    asm("add                esp, 0x08");                                     // 0x00404c9a    83c408
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00404c9d    d80db4a38a00
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                        // 0x00404ca3    d84c241c
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x00404ca7    d84c2408
    asm("_jmp_addr_0x00404cab:");
    asm("pop                edi");                                           // 0x00404cab    5f
    asm("pop                esi");                                           // 0x00404cac    5e
    asm("add                esp, 0x10");                                     // 0x00404cad    83c410
    asm("ret                0x0004");                                        // 0x00404cb0    c20400
    __builtin_unreachable();
}

void __fastcall ChildToAdult__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager)
{
    asm("push               esi");                                           // 0x00404cc0    56
    asm("mov.s              esi, ecx");                                      // 0x00404cc1    8bf1
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b7]");               // 0x00404cc3    8a86b7000000
    asm("test               al, al");                                        // 0x00404cc9    84c0
    asm("push               edi");                                           // 0x00404ccb    57
    asm("{disp8} je         _jmp_addr_0x00404cd6");                          // 0x00404ccc    7408
    asm("dec                al");                                            // 0x00404cce    fec8
    asm("{disp32} mov       byte ptr [esi + 0x000000b7], al");               // 0x00404cd0    8886b7000000
    asm("_jmp_addr_0x00404cd6:");
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000b4]");               // 0x00404cd6    8a96b4000000
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00404cdc    8b7c240c
    asm("inc                dl");                                            // 0x00404ce0    fec2
    asm("{disp32} mov       byte ptr [esi + 0x000000b4], dl");               // 0x00404ce2    8896b4000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00404ce8    8b07
    asm("mov.s              ecx, edi");                                      // 0x00404cea    8bcf
    asm("call               dword ptr [eax + 0x44c]");                       // 0x00404cec    ff904c040000
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000b5]");               // 0x00404cf2    8a96b5000000
    asm("test               eax, eax");                                      // 0x00404cf8    85c0
    asm("setne              cl");                                            // 0x00404cfa    0f95c1
    asm("add.s              dl, cl");                                        // 0x00404cfd    02d1
    asm("{disp32} mov       byte ptr [esi + 0x000000b5], dl");               // 0x00404cff    8896b5000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00404d05    8b16
    asm("mov.s              ecx, esi");                                      // 0x00404d07    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00404d09    ff5248
    asm("test               eax, eax");                                      // 0x00404d0c    85c0
    asm("{disp8} je         _jmp_addr_0x00404d1f");                          // 0x00404d0e    740f
    asm("mov                eax, dword ptr [esi]");                          // 0x00404d10    8b06
    asm("push               edi");                                           // 0x00404d12    57
    asm("mov.s              ecx, esi");                                      // 0x00404d13    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404d15    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00404d18    8bc8
    asm("call               ?ChildToAdult@Town@@QAEXPAVVillager@@@Z");                          // 0x00404d1a    e831623300
    asm("_jmp_addr_0x00404d1f:");
    asm("pop                edi");                                           // 0x00404d1f    5f
    asm("pop                esi");                                           // 0x00404d20    5e
    asm("ret                0x0004");                                        // 0x00404d21    c20400
    __builtin_unreachable();
}

uint32_t __fastcall GetResource__5AbodeF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00404d30    8b442404
    asm("{disp32} mov       eax, dword ptr [ecx + eax * 0x4 + 0x000000bc]"); // 0x00404d34    8b8481bc000000
    asm("ret                0x0004");                                        // 0x00404d3b    c20400
    __builtin_unreachable();
}

uint32_t __fastcall JustAddResource__5AbodeF13RESOURCE_TYPEUlb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00404d40    8b542404
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00404d44    8b442408
    asm("add                dword ptr [ecx + edx * 0x4 + 0x000000bc], eax"); // 0x00404d48    018491bc000000
    asm("ret                0x000c");                                        // 0x00404d4f    c20c00
    __builtin_unreachable();
}

uint32_t __fastcall JustRemoveResource__5AbodeF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00404d60    8b442408
    asm("push               esi");                                           // 0x00404d64    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                   // 0x00404d65    8b742408
    asm("{disp32} mov       edx, dword ptr [ecx + esi * 0x4 + 0x000000bc]"); // 0x00404d69    8b94b1bc000000
    asm("cmp.s              edx, eax");                                      // 0x00404d70    3bd0
    asm("{disp8} jae        _jmp_addr_0x00404d76");                          // 0x00404d72    7302
    asm("mov.s              eax, edx");                                      // 0x00404d74    8bc2
    asm("_jmp_addr_0x00404d76:");
    asm("sub.s              edx, eax");                                      // 0x00404d76    2bd0
    asm("{disp32} mov       dword ptr [ecx + esi * 0x4 + 0x000000bc], edx"); // 0x00404d78    8994b1bc000000
    asm("pop                esi");                                           // 0x00404d7f    5e
    asm("ret                0x000c");                                        // 0x00404d80    c20c00
    __builtin_unreachable();
}

uint32_t __fastcall AddResource__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x74]");                   // 0x00404d90    8b4174
    asm("test               eax, eax");                                      // 0x00404d93    85c0
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00404d95    8b542404
    asm("push               esi");                                           // 0x00404d99    56
    asm("{disp8} je         _jmp_addr_0x00404dc8");                          // 0x00404d9a    742c
    asm("cmp                edx, 0x01");                                     // 0x00404d9c    83fa01
    asm("{disp8} je         _jmp_addr_0x00404da6");                          // 0x00404d9f    7405
    asm("cmp                edx, -0x02");                                    // 0x00404da1    83fafe
    asm("{disp8} jne        _jmp_addr_0x00404dc8");                          // 0x00404da4    7522
    asm("_jmp_addr_0x00404da6:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00404da6    8b4c2414
    asm("mov                esi, dword ptr [eax]");                          // 0x00404daa    8b30
    asm("push               0x0");                                           // 0x00404dac    6a00
    asm("push               0x0");                                           // 0x00404dae    6a00
    asm("push               ecx");                                           // 0x00404db0    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x00404db1    8b4c241c
    asm("push               ecx");                                           // 0x00404db5    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x00404db6    8b4c241c
    asm("push               ecx");                                           // 0x00404dba    51
    asm("push               edx");                                           // 0x00404dbb    52
    asm("mov.s              ecx, eax");                                      // 0x00404dbc    8bc8
    asm("call               dword ptr [esi + 0x9c]");                        // 0x00404dbe    ff969c000000
    asm("pop                esi");                                           // 0x00404dc4    5e
    asm("ret                0x0018");                                        // 0x00404dc5    c21800
    asm("_jmp_addr_0x00404dc8:");
    asm("{disp8} mov        esi, dword ptr [esp + 0x1c]");                   // 0x00404dc8    8b74241c
    asm("mov                eax, dword ptr [ecx]");                          // 0x00404dcc    8b01
    asm("push               esi");                                           // 0x00404dce    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x1c]");                   // 0x00404dcf    8b74241c
    asm("push               esi");                                           // 0x00404dd3    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x1c]");                   // 0x00404dd4    8b74241c
    asm("push               esi");                                           // 0x00404dd8    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x1c]");                   // 0x00404dd9    8b74241c
    asm("push               esi");                                           // 0x00404ddd    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x1c]");                   // 0x00404dde    8b74241c
    asm("push               esi");                                           // 0x00404de2    56
    asm("push               edx");                                           // 0x00404de3    52
    asm("call               dword ptr [eax + 0x8e4]");                       // 0x00404de4    ff90e4080000
    asm("pop                esi");                                           // 0x00404dea    5e
    asm("ret                0x0018");                                        // 0x00404deb    c21800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall DoResourceAdding__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, struct GInterfaceStatus* iface, bool param_3, struct MapCoords* param_4, int param_5)
{
    asm("push               esi");                                           // 0x00404df0    56
    asm("mov.s              esi, ecx");                                      // 0x00404df1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00404df3    8b06
    asm("push               edi");                                           // 0x00404df5    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404df6    ff5048
    asm("mov.s              edi, eax");                                      // 0x00404df9    8bf8
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00404dfb    8b442414
    asm("test               eax, eax");                                      // 0x00404dff    85c0
    asm("{disp32} je        _jmp_addr_0x00404ee3");                          // 0x00404e01    0f84dc000000
    asm("test               edi, edi");                                      // 0x00404e07    85ff
    asm("{disp32} je        _jmp_addr_0x00404ee3");                          // 0x00404e09    0f84d4000000
    asm("push               ebx");                                           // 0x00404e0f    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x10]");                   // 0x00404e10    8b5c2410
    asm("xor.s              ecx, ecx");                                      // 0x00404e14    33c9
    asm("test               ebx, ebx");                                      // 0x00404e16    85db
    asm("setne              cl");                                            // 0x00404e18    0f95c1
    asm("push               ebp");                                           // 0x00404e1b    55
    asm("mov.s              ebp, ecx");                                      // 0x00404e1c    8be9
    asm("{disp8} lea        ecx, dword ptr [edi + 0x34]");                   // 0x00404e1e    8d4f34
    asm("push               ebp");                                           // 0x00404e21    55
    asm("call               _jmp_addr_0x00745d80");                          // 0x00404e22    e8590f3400
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00404e27    d95c2414
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x00404e2b    8b442420
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00404e2f    8b4c2418
    asm("mov                edx, dword ptr [esi]");                          // 0x00404e33    8b16
    asm("push               eax");                                           // 0x00404e35    50
    asm("push               ecx");                                           // 0x00404e36    51
    asm("push               ebx");                                           // 0x00404e37    53
    asm("mov.s              ecx, esi");                                      // 0x00404e38    8bce
    asm("call               dword ptr [edx + 0x8c]");                        // 0x00404e3a    ff928c000000
    asm("push               ebp");                                           // 0x00404e40    55
    asm("{disp8} lea        ecx, dword ptr [edi + 0x34]");                   // 0x00404e41    8d4f34
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                   // 0x00404e44    89442424
    asm("call               _jmp_addr_0x00745d80");                          // 0x00404e48    e8330f3400
    asm("{disp8} fsubr      dword ptr [esp + 0x14]");                        // 0x00404e4d    d86c2414
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x00404e51    8b4c241c
    asm("mov                edx, dword ptr [ecx]");                          // 0x00404e55    8b11
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00404e57    d95c2414
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00404e5b    ff521c
    asm("mov.s              ebp, eax");                                      // 0x00404e5e    8be8
    asm("push               ebx");                                           // 0x00404e60    53
    asm("mov.s              ecx, ebp");                                      // 0x00404e61    8bcd
    asm("call               ?GetPlayerNumber@GPlayer@@QBEEXZ");               // 0x00404e63    e828592400
    asm("push               eax");                                           // 0x00404e68    50
    asm("mov.s              ecx, edi");                                      // 0x00404e69    8bcf
    asm("call               _jmp_addr_0x00740030");                          // 0x00404e6b    e8c0b13300
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                        // 0x00404e70    d84c2414
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00404e74    8b4c2418
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00404e78    d95c2414
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00404e7c    8b442414
    asm("push               eax");                                           // 0x00404e80    50
    asm("push               ecx");                                           // 0x00404e81    51
    asm("{disp8} mov        ecx, dword ptr [ebp + 0x60]");                   // 0x00404e82    8b4d60
    asm("push               ebx");                                           // 0x00404e85    53
    asm("push               esi");                                           // 0x00404e86    56
    asm("call               _jmp_addr_0x00414520");                          // 0x00404e87    e894f60000
    asm("mov                edx, dword ptr [edi]");                          // 0x00404e8c    8b17
    asm("mov.s              ecx, edi");                                      // 0x00404e8e    8bcf
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00404e90    ff521c
    asm("cmp.s              ebp, eax");                                      // 0x00404e93    3be8
    asm("{disp8} je         _jmp_addr_0x00404ea6");                          // 0x00404e95    740f
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                   // 0x00404e97    8b4728
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x00404e9a    d9442414
    asm("{disp32} fmul      dword ptr [eax + 0x000000fc]");                  // 0x00404e9e    d888fc000000
    asm("{disp8} jmp        _jmp_addr_0x00404eaa");                          // 0x00404ea4    eb04
    asm("_jmp_addr_0x00404ea6:");
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x00404ea6    d9442414
    asm("_jmp_addr_0x00404eaa:");
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x00404eaa    8b4f28
    asm("{disp32} fmul      dword ptr [ecx + 0x000000f8]");                  // 0x00404ead    d889f8000000
    asm("push               0x1");                                           // 0x00404eb3    6a01
    asm("push               0x1");                                           // 0x00404eb5    6a01
    asm("push               esi");                                           // 0x00404eb7    56
    asm("push               ecx");                                           // 0x00404eb8    51
    asm("fstp               dword ptr [esp]");                               // 0x00404eb9    d91c24
    asm("push               ebp");                                           // 0x00404ebc    55
    asm("{disp32} lea       ecx, dword ptr [edi + 0x00000798]");             // 0x00404ebd    8d8f98070000
    asm("call               _jmp_addr_0x00437eb0");                          // 0x00404ec3    e8e82f0300
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00404ec8    8b44241c
    asm("mov                edx, dword ptr [esi]");                          // 0x00404ecc    8b16
    asm("push               eax");                                           // 0x00404ece    50
    asm("push               ebx");                                           // 0x00404ecf    53
    asm("mov.s              ecx, esi");                                      // 0x00404ed0    8bce
    asm("call               dword ptr [edx + 0x68c]");                       // 0x00404ed2    ff928c060000
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x00404ed8    8b442420
    asm("pop                ebp");                                           // 0x00404edc    5d
    asm("pop                ebx");                                           // 0x00404edd    5b
    asm("pop                edi");                                           // 0x00404ede    5f
    asm("pop                esi");                                           // 0x00404edf    5e
    asm("ret                0x0018");                                        // 0x00404ee0    c21800
    asm("_jmp_addr_0x00404ee3:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00404ee3    8b442418
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00404ee7    8b4c2410
    asm("mov                edx, dword ptr [esi]");                          // 0x00404eeb    8b16
    asm("push               eax");                                           // 0x00404eed    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00404eee    8b442410
    asm("push               ecx");                                           // 0x00404ef2    51
    asm("push               eax");                                           // 0x00404ef3    50
    asm("mov.s              ecx, esi");                                      // 0x00404ef4    8bce
    asm("call               dword ptr [edx + 0x8c]");                        // 0x00404ef6    ff928c000000
    asm("pop                edi");                                           // 0x00404efc    5f
    asm("pop                esi");                                           // 0x00404efd    5e
    asm("ret                0x0018");                                        // 0x00404efe    c21800
    __builtin_unreachable();
}

uint32_t __fastcall RemoveResource__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x74]");                   // 0x00404f10    8b4174
    asm("test               eax, eax");                                      // 0x00404f13    85c0
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00404f15    8b542404
    asm("push               esi");                                           // 0x00404f19    56
    asm("{disp8} je         _jmp_addr_0x00404f44");                          // 0x00404f1a    7428
    asm("cmp                edx, 0x01");                                     // 0x00404f1c    83fa01
    asm("{disp8} je         _jmp_addr_0x00404f26");                          // 0x00404f1f    7405
    asm("cmp                edx, -0x02");                                    // 0x00404f21    83fafe
    asm("{disp8} jne        _jmp_addr_0x00404f44");                          // 0x00404f24    751e
    asm("_jmp_addr_0x00404f26:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00404f26    8b4c2414
    asm("mov                esi, dword ptr [eax]");                          // 0x00404f2a    8b30
    asm("push               ecx");                                           // 0x00404f2c    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00404f2d    8b4c2414
    asm("push               ecx");                                           // 0x00404f31    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00404f32    8b4c2414
    asm("push               ecx");                                           // 0x00404f36    51
    asm("push               edx");                                           // 0x00404f37    52
    asm("mov.s              ecx, eax");                                      // 0x00404f38    8bc8
    asm("call               dword ptr [esi + 0xa0]");                        // 0x00404f3a    ff96a0000000
    asm("pop                esi");                                           // 0x00404f40    5e
    asm("ret                0x0010");                                        // 0x00404f41    c21000
    asm("_jmp_addr_0x00404f44:");
    asm("{disp8} mov        esi, dword ptr [esp + 0x14]");                   // 0x00404f44    8b742414
    asm("mov                eax, dword ptr [ecx]");                          // 0x00404f48    8b01
    asm("push               esi");                                           // 0x00404f4a    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x14]");                   // 0x00404f4b    8b742414
    asm("push               esi");                                           // 0x00404f4f    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x14]");                   // 0x00404f50    8b742414
    asm("push               esi");                                           // 0x00404f54    56
    asm("push               edx");                                           // 0x00404f55    52
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00404f56    ff90e8080000
    asm("pop                esi");                                           // 0x00404f5c    5e
    asm("ret                0x0010");                                        // 0x00404f5d    c21000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall DoResourceRemoving__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* iface, bool param_4)
{
    asm("push               ecx");                                           // 0x00404f60    51
    asm("push               ebx");                                           // 0x00404f61    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x0c]");                   // 0x00404f62    8b5c240c
    asm("push               ebp");                                           // 0x00404f66    55
    asm("push               esi");                                           // 0x00404f67    56
    asm("push               edi");                                           // 0x00404f68    57
    asm("mov.s              esi, ecx");                                      // 0x00404f69    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00404f6b    8b06
    asm("push               ebx");                                           // 0x00404f6d    53
    asm("call               dword ptr [eax + 0x98]");                        // 0x00404f6e    ff9098000000
    asm("{disp8} mov        ebp, dword ptr [esp + 0x1c]");                   // 0x00404f74    8b6c241c
    asm("cmp.s              ebp, eax");                                      // 0x00404f78    3be8
    asm(".byte              0x72, 0xc");// {disp8} jb _jmp_addr_0x00404f88   // 0x00404f7a    720c
    asm("mov                edx, dword ptr [esi]");                          // 0x00404f7c    8b16
    asm("push               0x0");                                           // 0x00404f7e    6a00
    asm("mov.s              ecx, esi");                                      // 0x00404f80    8bce
    asm("call               dword ptr [edx + 0x69c]");                       // 0x00404f82    ff929c060000
    asm("_jmp_addr_0x00404f88:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00404f88    8b06
    asm("mov.s              ecx, esi");                                      // 0x00404f8a    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404f8c    ff5048
    asm("mov.s              edi, eax");                                      // 0x00404f8f    8bf8
    asm("xor.s              eax, eax");                                      // 0x00404f91    33c0
    asm("test               ebx, ebx");                                      // 0x00404f93    85db
    asm("setne              al");                                            // 0x00404f95    0f95c0
    asm("{disp8} lea        ecx, dword ptr [edi + 0x34]");                   // 0x00404f98    8d4f34
    asm("push               eax");                                           // 0x00404f9b    50
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x00404f9c    89442420
    asm("call               _jmp_addr_0x00745d80");                          // 0x00404fa0    e8db0d3400
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00404fa5    d95c2418
    asm("mov                edx, dword ptr [esi]");                          // 0x00404fa9    8b16
    asm("push               0x0");                                           // 0x00404fab    6a00
    asm("push               ebp");                                           // 0x00404fad    55
    asm("push               ebx");                                           // 0x00404fae    53
    asm("mov.s              ecx, esi");                                      // 0x00404faf    8bce
    asm("call               dword ptr [edx + 0x90]");                        // 0x00404fb1    ff9290000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x00404fb7    8b4c2420
    asm("test               ecx, ecx");                                      // 0x00404fbb    85c9
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00404fbd    89442410
    asm("{disp8} je         _jmp_addr_0x0040500e");                          // 0x00404fc1    744b
    asm("test               edi, edi");                                      // 0x00404fc3    85ff
    asm("{disp8} je         _jmp_addr_0x0040500e");                          // 0x00404fc5    7447
    asm("mov                eax, dword ptr [ecx]");                          // 0x00404fc7    8b01
    asm("push               ebx");                                           // 0x00404fc9    53
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00404fca    ff501c
    asm("mov.s              ecx, eax");                                      // 0x00404fcd    8bc8
    asm("call               ?GetPlayerNumber@GPlayer@@QBEEXZ");               // 0x00404fcf    e8bc572400
    asm("push               eax");                                           // 0x00404fd4    50
    asm("mov.s              ecx, edi");                                      // 0x00404fd5    8bcf
    asm("call               _jmp_addr_0x007400d0");                          // 0x00404fd7    e8f4b03300
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x00404fdc    8b4c241c
    asm("push               ecx");                                           // 0x00404fe0    51
    asm("{disp8} lea        ecx, dword ptr [edi + 0x34]");                   // 0x00404fe1    8d4f34
    asm("call               _jmp_addr_0x00745d80");                          // 0x00404fe4    e8970d3400
    asm("{disp8} fsubr      dword ptr [esp + 0x18]");                        // 0x00404fe9    d86c2418
    asm("mov                edx, dword ptr [edi]");                          // 0x00404fed    8b17
    asm("mov.s              ecx, edi");                                      // 0x00404fef    8bcf
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00404ff1    d95c2418
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00404ff5    ff521c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00404ff8    8b4c2418
    asm("push               ecx");                                           // 0x00404ffc    51
    asm("{disp8} mov        ecx, dword ptr [eax + 0x60]");                   // 0x00404ffd    8b4860
    asm("neg                ebp");                                           // 0x00405000    f7dd
    asm("push               ebp");                                           // 0x00405002    55
    asm("push               ebx");                                           // 0x00405003    53
    asm("push               esi");                                           // 0x00405004    56
    asm("call               _jmp_addr_0x00414520");                          // 0x00405005    e816f50000
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x0040500a    8b442410
    asm("_jmp_addr_0x0040500e:");
    asm("pop                edi");                                           // 0x0040500e    5f
    asm("pop                esi");                                           // 0x0040500f    5e
    asm("pop                ebp");                                           // 0x00405010    5d
    asm("pop                ebx");                                           // 0x00405011    5b
    asm("pop                ecx");                                           // 0x00405012    59
    asm("ret                0x0010");                                        // 0x00405013    c21000
    asm("nop");                                                              // 0x00405016    90
    asm("nop");                                                              // 0x00405017    90
    asm("nop");                                                              // 0x00405018    90
    asm("nop");                                                              // 0x00405019    90
    asm("nop");                                                              // 0x0040501a    90
    asm("nop");                                                              // 0x0040501b    90
    asm("nop");                                                              // 0x0040501c    90
    asm("nop");                                                              // 0x0040501d    90
    asm("nop");                                                              // 0x0040501e    90
    asm("nop");                                                              // 0x0040501f    90
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00405020    8b442404
    asm("push               eax");                                           // 0x00405024    50
    asm("call               _jmp_addr_0x00405040");                          // 0x00405025    e816000000
    asm("add                esp, 0x04");                                     // 0x0040502a    83c404
    asm("neg                eax");                                           // 0x0040502d    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0040502f    1bc0
    asm("neg                eax");                                           // 0x00405031    f7d8
    asm("ret");                                                              // 0x00405033    c3
    asm("nop");                                                              // 0x00405034    90
    asm("nop");                                                              // 0x00405035    90
    asm("nop");                                                              // 0x00405036    90
    asm("nop");                                                              // 0x00405037    90
    asm("nop");                                                              // 0x00405038    90
    asm("nop");                                                              // 0x00405039    90
    asm("nop");                                                              // 0x0040503a    90
    asm("nop");                                                              // 0x0040503b    90
    asm("nop");                                                              // 0x0040503c    90
    asm("nop");                                                              // 0x0040503d    90
    asm("nop");                                                              // 0x0040503e    90
    asm("nop");                                                              // 0x0040503f    90
    asm("_jmp_addr_0x00405040:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x00405040    8b4c2404
    asm("push               0x0");                                           // 0x00405044    6a00
    asm("push               0x0");                                           // 0x00405046    6a00
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x00405048    e873f51f00
    asm("ret");                                                              // 0x0040504d    c3
    __builtin_unreachable();
}

struct PlannedMultiMapFixed * __fastcall ConvertToPlanned__5AbodeFv(struct MultiMapFixed* this)
{
    asm("push               esi");                                           // 0x00405050    56
    asm("mov.s              esi, ecx");                                      // 0x00405051    8bf1
    asm("push               edi");                                           // 0x00405053    57
    asm("push               esi");                                           // 0x00405054    56
    asm("call               ?Create@PlannedAbode@@SAPAV1@PAVAbode@@@Z");     // 0x00405055    e806060000
    asm("mov.s              edi, eax");                                      // 0x0040505a    8bf8
    asm("add                esp, 0x04");                                     // 0x0040505c    83c404
    asm("test               edi, edi");                                      // 0x0040505f    85ff
    asm("{disp8} je         _jmp_addr_0x0040506c");                          // 0x00405061    7409
    asm("mov                eax, dword ptr [esi]");                          // 0x00405063    8b06
    asm("push               0x0");                                           // 0x00405065    6a00
    asm("mov.s              ecx, esi");                                      // 0x00405067    8bce
    asm("call               dword ptr [eax + 0xc]");                         // 0x00405069    ff500c
    asm("_jmp_addr_0x0040506c:");
    asm("mov.s              eax, edi");                                      // 0x0040506c    8bc7
    asm("pop                edi");                                           // 0x0040506e    5f
    asm("pop                esi");                                           // 0x0040506f    5e
    asm("ret");                                                              // 0x00405070    c3
    __builtin_unreachable();
}
