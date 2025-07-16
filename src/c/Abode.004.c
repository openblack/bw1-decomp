#include "Abode.h"

void __fastcall DeleteAbodeSurroundingObjects__5AbodeFv(struct Abode* this)
{
    asm("sub                esp, 0x18");                                     // 0x00403d20    83ec18
    asm("push               esi");                                           // 0x00403d23    56
    asm("push               edi");                                           // 0x00403d24    57
    asm("mov.s              edi, ecx");                                      // 0x00403d25    8bf9
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                   // 0x00403d27    8b4728
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000001c0]");             // 0x00403d2a    8b88c0010000
    asm("test               ecx, ecx");                                      // 0x00403d30    85c9
    asm("{disp8} je         _jmp_addr_0x00403d90");                          // 0x00403d32    745c
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00403d34    8d4c2408
    asm("push               ecx");                                           // 0x00403d38    51
    asm("push               0x1");                                           // 0x00403d39    6a01
    asm("mov.s              ecx, edi");                                      // 0x00403d3b    8bcf
    asm("call               ?GetNewEp@Abode@@QAE_NW4ABODE_EPP@@PAULHPoint@@@Z");       // 0x00403d3d    e84ef8ffff
    asm("test               eax, eax");                                      // 0x00403d42    85c0
    asm("{disp8} je         _jmp_addr_0x00403d90");                          // 0x00403d44    744a
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x00403d46    8d542408
    asm("push               edx");                                           // 0x00403d4a    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00403d4b    8d4c2418
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x00403d4f    e80cf41f00
    asm("push               0x0");                                           // 0x00403d54    6a00
    asm("push               0x23");                                          // 0x00403d56    6a23
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00403d58    8d4c241c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x00403d5c    e85f082000
    asm("mov.s              esi, eax");                                      // 0x00403d61    8bf0
    asm("test               esi, esi");                                      // 0x00403d63    85f6
    asm("{disp8} je         _jmp_addr_0x00403d90");                          // 0x00403d65    7429
    asm("_jmp_addr_0x00403d67:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00403d67    8b06
    asm("mov.s              ecx, esi");                                      // 0x00403d69    8bce
    asm("call               dword ptr [eax + 0x48c]");                       // 0x00403d6b    ff908c040000
    asm("test               eax, eax");                                      // 0x00403d71    85c0
    asm("{disp8} je         _jmp_addr_0x00403d7e");                          // 0x00403d73    7409
    asm("mov                edx, dword ptr [esi]");                          // 0x00403d75    8b16
    asm("push               0x0");                                           // 0x00403d77    6a00
    asm("mov.s              ecx, esi");                                      // 0x00403d79    8bce
    asm("call               dword ptr [edx + 0xc]");                         // 0x00403d7b    ff520c
    asm("_jmp_addr_0x00403d7e:");
    asm("push               esi");                                           // 0x00403d7e    56
    asm("push               0x23");                                          // 0x00403d7f    6a23
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00403d81    8d4c241c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x00403d85    e836082000
    asm("mov.s              esi, eax");                                      // 0x00403d8a    8bf0
    asm("test               esi, esi");                                      // 0x00403d8c    85f6
    asm("{disp8} jne        _jmp_addr_0x00403d67");                          // 0x00403d8e    75d7
    asm("_jmp_addr_0x00403d90:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x00403d90    8d442408
    asm("push               eax");                                           // 0x00403d94    50
    asm("push               0x0");                                           // 0x00403d95    6a00
    asm("mov.s              ecx, edi");                                      // 0x00403d97    8bcf
    asm("call               ?GetNewEp@Abode@@QAE_NW4ABODE_EPP@@PAULHPoint@@@Z");       // 0x00403d99    e8f2f7ffff
    asm("test               eax, eax");                                      // 0x00403d9e    85c0
    asm("{disp8} je         _jmp_addr_0x00403dec");                          // 0x00403da0    744a
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00403da2    8d4c2408
    asm("push               ecx");                                           // 0x00403da6    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00403da7    8d4c2418
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x00403dab    e8b0f31f00
    asm("push               0x0");                                           // 0x00403db0    6a00
    asm("push               0x1c");                                          // 0x00403db2    6a1c
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00403db4    8d4c241c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x00403db8    e803082000
    asm("mov.s              esi, eax");                                      // 0x00403dbd    8bf0
    asm("test               esi, esi");                                      // 0x00403dbf    85f6
    asm("{disp8} je         _jmp_addr_0x00403dec");                          // 0x00403dc1    7429
    asm("_jmp_addr_0x00403dc3:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00403dc3    8b16
    asm("mov.s              ecx, esi");                                      // 0x00403dc5    8bce
    asm("call               dword ptr [edx + 0x204]");                       // 0x00403dc7    ff9204020000
    asm("test               eax, eax");                                      // 0x00403dcd    85c0
    asm("{disp8} je         _jmp_addr_0x00403dda");                          // 0x00403dcf    7409
    asm("mov                eax, dword ptr [esi]");                          // 0x00403dd1    8b06
    asm("push               0x0");                                           // 0x00403dd3    6a00
    asm("mov.s              ecx, esi");                                      // 0x00403dd5    8bce
    asm("call               dword ptr [eax + 0xc]");                         // 0x00403dd7    ff500c
    asm("_jmp_addr_0x00403dda:");
    asm("push               esi");                                           // 0x00403dda    56
    asm("push               0x1c");                                          // 0x00403ddb    6a1c
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00403ddd    8d4c241c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x00403de1    e8da072000
    asm("mov.s              esi, eax");                                      // 0x00403de6    8bf0
    asm("test               esi, esi");                                      // 0x00403de8    85f6
    asm("{disp8} jne        _jmp_addr_0x00403dc3");                          // 0x00403dea    75d7
    asm("_jmp_addr_0x00403dec:");
    asm("pop                edi");                                           // 0x00403dec    5f
    asm("pop                esi");                                           // 0x00403ded    5e
    asm("add                esp, 0x18");                                     // 0x00403dee    83c418
    asm("ret");                                                              // 0x00403df1    c3
    __builtin_unreachable();
}

void __fastcall CreateAbodeSurroundingObjects__5AbodeFv(struct Abode* this)
{
    asm("sub                esp, 0x18");                                     // 0x00403e00    83ec18
    asm("push               esi");                                           // 0x00403e03    56
    asm("push               edi");                                           // 0x00403e04    57
    asm("mov.s              edi, ecx");                                      // 0x00403e05    8bf9
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                   // 0x00403e07    8b4728
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000001c0]");             // 0x00403e0a    8b88c0010000
    asm("test               ecx, ecx");                                      // 0x00403e10    85c9
    asm("{disp8} je         _jmp_addr_0x00403e79");                          // 0x00403e12    7465
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00403e14    8d4c2414
    asm("push               ecx");                                           // 0x00403e18    51
    asm("push               0x1");                                           // 0x00403e19    6a01
    asm("mov.s              ecx, edi");                                      // 0x00403e1b    8bcf
    asm("call               ?GetNewEp@Abode@@QAE_NW4ABODE_EPP@@PAULHPoint@@@Z");       // 0x00403e1d    e86ef7ffff
    asm("test               eax, eax");                                      // 0x00403e22    85c0
    asm("{disp8} je         _jmp_addr_0x00403e79");                          // 0x00403e24    7453
    asm("push               0x3f800000");                                    // 0x00403e26    680000803f
    asm("push               0x0");                                           // 0x00403e2b    6a00
    asm("push               0x0");                                           // 0x00403e2d    6a00
    asm("push               0x00d964a0");                                    // 0x00403e2f    68a064d900
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                   // 0x00403e34    8d542424
    asm("push               edx");                                           // 0x00403e38    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00403e39    8d4c241c
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x00403e3d    e81ef31f00
    asm("push               eax");                                           // 0x00403e42    50
    asm("call               _jmp_addr_0x00709a40");                          // 0x00403e43    e8f85b3000
    asm("mov.s              esi, eax");                                      // 0x00403e48    8bf0
    asm("add                esp, 0x14");                                     // 0x00403e4a    83c414
    asm("test               esi, esi");                                      // 0x00403e4d    85f6
    asm("{disp8} je         _jmp_addr_0x00403e79");                          // 0x00403e4f    7428
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                   // 0x00403e51    8b4728
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000001c4]");             // 0x00403e54    8b88c4010000
    asm("{disp32} mov       edx, dword ptr [eax + 0x000001c0]");             // 0x00403e5a    8b90c0010000
    asm("push               ecx");                                           // 0x00403e60    51
    asm("push               edx");                                           // 0x00403e61    52
    asm("mov.s              ecx, esi");                                      // 0x00403e62    8bce
    asm("call               _jmp_addr_0x00709a20");                          // 0x00403e64    e8b75b3000
    asm("push               0x0");                                           // 0x00403e69    6a00
    asm("mov.s              ecx, esi");                                      // 0x00403e6b    8bce
    asm("{disp8} mov        dword ptr [esi + 0x1c], 0x00000000");            // 0x00403e6d    c7461c00000000
    asm("call               _jmp_addr_0x00709c40");                          // 0x00403e74    e8c75d3000
    asm("_jmp_addr_0x00403e79:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x00403e79    8d442414
    asm("push               eax");                                           // 0x00403e7d    50
    asm("push               0x0");                                           // 0x00403e7e    6a00
    asm("mov.s              ecx, edi");                                      // 0x00403e80    8bcf
    asm("call               ?GetNewEp@Abode@@QAE_NW4ABODE_EPP@@PAULHPoint@@@Z");       // 0x00403e82    e809f7ffff
    asm("test               eax, eax");                                      // 0x00403e87    85c0
    asm("{disp8} je         _jmp_addr_0x00403ed9");                          // 0x00403e89    744e
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00403e8b    8d4c2414
    asm("push               ecx");                                           // 0x00403e8f    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00403e90    8d4c240c
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x00403e94    e8c7f21f00
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00403e99    8b442408
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x00403e9d    8b4c240c
    asm("push               0x42200000");                                    // 0x00403ea1    6800002042
    asm("sub                esp, 0x0c");                                     // 0x00403ea6    83ec0c
    asm("mov.s              edx, esp");                                      // 0x00403ea9    8bd4
    asm("mov                dword ptr [edx], eax");                          // 0x00403eab    8902
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x00403ead    8b442420
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x00403eb1    894a04
    asm("{disp8} mov        dword ptr [edx + 0x08], eax");                   // 0x00403eb4    894208
    asm("call               _jmp_addr_0x00734a30");                          // 0x00403eb7    e8740b3300
    asm("add                esp, 0x10");                                     // 0x00403ebc    83c410
    asm("test               eax, eax");                                      // 0x00403ebf    85c0
    asm("{disp8} jne        _jmp_addr_0x00403ed9");                          // 0x00403ec1    7516
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00403ec3    8d4c2408
    asm("push               0x00d3af0c");                                    // 0x00403ec7    680cafd300
    asm("push               ecx");                                           // 0x00403ecc    51
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00403ecd    89442418
    asm("call               _jmp_addr_0x007346e0");                          // 0x00403ed1    e80a083300
    asm("add                esp, 0x08");                                     // 0x00403ed6    83c408
    asm("_jmp_addr_0x00403ed9:");
    asm("pop                edi");                                           // 0x00403ed9    5f
    asm("pop                esi");                                           // 0x00403eda    5e
    asm("add                esp, 0x18");                                     // 0x00403edb    83c418
    asm("ret");                                                              // 0x00403ede    c3
    __builtin_unreachable();
}

void __fastcall InsertMapObject__5AbodeFv(struct Object* this)
{
    InsertMapObject__13MultiMapFixedFv(this);
}

__attribute__((XOR32rr_REV))
bool __fastcall ShouldFootpathsGoRound__5AbodeFv(struct Object* this)
{
    asm("{disp8} mov        al, byte ptr [ecx + 0x58]");                     // 0x00403ef0    8a4158
    asm("and                al, 0x02");                                      // 0x00403ef3    2402
    asm("xor.s              ecx, ecx");                                      // 0x00403ef5    33c9
    asm("cmp                al, 0x02");                                      // 0x00403ef7    3c02
    asm("setne              cl");                                            // 0x00403ef9    0f95c1
    asm("mov.s              eax, ecx");                                      // 0x00403efc    8bc1
    asm("ret");                                                              // 0x00403efe    c3
    __builtin_unreachable();
}

void __fastcall DeleteDependancys__5AbodeFv(struct Abode* this)
{
    RemoveAllVillagersFromAbode__5AbodeFv(this);
}

uint16_t __fastcall GetNumberOfInstanceForGlobalList__5AbodeFv(struct GameThing* this)
{
    asm("mov                ax, 0x0001");                                    // 0x00403f10    66b80100
    asm("ret");                                                              // 0x00403f14    c3
    asm("nop");                                                              // 0x00403f15    90
    asm("nop");                                                              // 0x00403f16    90
    asm("nop");                                                              // 0x00403f17    90
    asm("nop");                                                              // 0x00403f18    90
    asm("nop");                                                              // 0x00403f19    90
    asm("nop");                                                              // 0x00403f1a    90
    asm("nop");                                                              // 0x00403f1b    90
    asm("nop");                                                              // 0x00403f1c    90
    asm("nop");                                                              // 0x00403f1d    90
    asm("nop");                                                              // 0x00403f1e    90
    asm("nop");                                                              // 0x00403f1f    90
    asm("_jmp_addr_0x00403f20:");
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000090]");             // 0x00403f20    8b8190000000
    asm("test               eax, eax");                                      // 0x00403f26    85c0
    asm("{disp8} jne        _jmp_addr_0x00403f31");                          // 0x00403f28    7507
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x00403f2a    d90590a38a00
    asm("ret");                                                              // 0x00403f30    c3
    asm("_jmp_addr_0x00403f31:");
    asm("{disp8} fld        dword ptr [eax + 0x18]");                        // 0x00403f31    d94018
    asm("ret");                                                              // 0x00403f34    c3
    __builtin_unreachable();
}

void __fastcall RemoveDamage__5AbodeFv(struct MultiMapFixed* this)
{
    asm("push               ecx");                                           // 0x00403f40    51
    asm("push               esi");                                           // 0x00403f41    56
    asm("push               edi");                                           // 0x00403f42    57
    asm("mov.s              edi, ecx");                                      // 0x00403f43    8bf9
    asm("call               _jmp_addr_0x00403f20");                          // 0x00403f45    e8d6ffffff
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00403f4a    d95c2408
    asm("{disp32} mov       esi, dword ptr [edi + 0x00000090]");             // 0x00403f4e    8bb790000000
    asm("test               esi, esi");                                      // 0x00403f54    85f6
    asm("{disp8} je         _jmp_addr_0x00403f72");                          // 0x00403f56    741a
    asm("mov.s              ecx, esi");                                      // 0x00403f58    8bce
    asm("call               ??1FragMesh@@QAE@XZ");                           // 0x00403f5a    e881313f00
    asm("push               esi");                                           // 0x00403f5f    56
    asm("call                ___dl__FPv");                                   // 0x00403f60    e833af3a00
    asm("add                esp, 0x04");                                     // 0x00403f65    83c404
    asm("{disp32} mov       dword ptr [edi + 0x00000090], 0x00000000");      // 0x00403f68    c7879000000000000000
    asm("_jmp_addr_0x00403f72:");
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00403f72    d9442408
    asm("pop                edi");                                           // 0x00403f76    5f
    asm("pop                esi");                                           // 0x00403f77    5e
    asm("pop                ecx");                                           // 0x00403f78    59
    asm("ret");                                                              // 0x00403f79    c3
    asm("call               dword ptr [__imp__DirectXSetupGetVersion]");     // 0x00403f7a    ff153c908a00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall DestroyedByEffect__5AbodeFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* player, float param_2)
{
    asm("push               ebx");                                           // 0x00403f80    53
    asm("push               esi");                                           // 0x00403f81    56
    asm("mov.s              esi, ecx");                                      // 0x00403f82    8bf1
    asm("push               edi");                                           // 0x00403f84    57
    asm("push               esi");                                           // 0x00403f85    56
    asm("call               _jmp_addr_0x005e6540");                          // 0x00403f86    e8b5251e00
    asm("mov                eax, dword ptr [esi]");                          // 0x00403f8b    8b06
    asm("{disp8} mov        edi, dword ptr [esi + 0x74]");                   // 0x00403f8d    8b7e74
    asm("add                esp, 0x04");                                     // 0x00403f90    83c404
    asm("mov.s              ecx, esi");                                      // 0x00403f93    8bce
    asm("call               dword ptr [eax + 0x448]");                       // 0x00403f95    ff9048040000
    asm("test               eax, eax");                                      // 0x00403f9b    85c0
    asm("{disp8} je         _jmp_addr_0x00404001");                          // 0x00403f9d    7462
    asm("test               edi, edi");                                      // 0x00403f9f    85ff
    asm("{disp8} jne        _jmp_addr_0x00403fc3");                          // 0x00403fa1    7520
    asm("mov                edx, dword ptr [esi]");                          // 0x00403fa3    8b16
    asm("mov.s              ecx, esi");                                      // 0x00403fa5    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00403fa7    ff5248
    asm("test               eax, eax");                                      // 0x00403faa    85c0
    asm("{disp8} jne        _jmp_addr_0x00403fb4");                          // 0x00403fac    7506
    asm("pop                edi");                                           // 0x00403fae    5f
    asm("pop                esi");                                           // 0x00403faf    5e
    asm("pop                ebx");                                           // 0x00403fb0    5b
    asm("ret                0x0008");                                        // 0x00403fb1    c20800
    asm("_jmp_addr_0x00403fb4:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00403fb4    8b06
    asm("push               esi");                                           // 0x00403fb6    56
    asm("mov.s              ecx, esi");                                      // 0x00403fb7    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00403fb9    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00403fbc    8bc8
    asm("call               _jmp_addr_0x0073b8e0");                          // 0x00403fbe    e81d793300
    asm("_jmp_addr_0x00403fc3:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00403fc3    8b16
    asm("mov.s              ecx, esi");                                      // 0x00403fc5    8bce
    asm("call               dword ptr [edx + 0x890]");                       // 0x00403fc7    ff9290080000
    asm("cmp                eax, 0x01");                                     // 0x00403fcd    83f801
    asm("{disp8} je         _jmp_addr_0x00403fe1");                          // 0x00403fd0    740f
    asm("mov                eax, dword ptr [esi]");                          // 0x00403fd2    8b06
    asm("push               0x3f800000");                                    // 0x00403fd4    680000803f
    asm("mov.s              ecx, esi");                                      // 0x00403fd9    8bce
    asm("call               dword ptr [eax + 0x5b0]");                       // 0x00403fdb    ff90b0050000
    asm("_jmp_addr_0x00403fe1:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x44]");                   // 0x00403fe1    8b4e44
    asm("test               ecx, ecx");                                      // 0x00403fe4    85c9
    asm("{disp8} je         _jmp_addr_0x0040404a");                          // 0x00403fe6    7462
    asm("mov                edx, dword ptr [ecx]");                          // 0x00403fe8    8b11
    asm("push               0x0");                                           // 0x00403fea    6a00
    asm("call               dword ptr [edx + 0xc]");                         // 0x00403fec    ff520c
    asm("pop                edi");                                           // 0x00403fef    5f
    asm("{disp8} mov        dword ptr [esi + 0x44], 0x00000000");            // 0x00403ff0    c7464400000000
    asm("pop                esi");                                           // 0x00403ff7    5e
    asm("mov                eax, 0x00000001");                               // 0x00403ff8    b801000000
    asm("pop                ebx");                                           // 0x00403ffd    5b
    asm("ret                0x0008");                                        // 0x00403ffe    c20800
    asm("_jmp_addr_0x00404001:");
    asm("test               edi, edi");                                      // 0x00404001    85ff
    asm("{disp8} je         _jmp_addr_0x00404036");                          // 0x00404003    7431
    asm("{disp8} mov        eax, dword ptr [edi + 0x24]");                   // 0x00404005    8b4724
    asm("test               eax, eax");                                      // 0x00404008    85c0
    asm("{disp8} jbe        _jmp_addr_0x00404036");                          // 0x0040400a    762a
    asm("{disp8} mov        edi, dword ptr [edi + 0x20]");                   // 0x0040400c    8b7f20
    asm("test               edi, edi");                                      // 0x0040400f    85ff
    asm("{disp8} je         _jmp_addr_0x00404018");                          // 0x00404011    7405
    asm("{disp8} mov        edi, dword ptr [edi + 0x04]");                   // 0x00404013    8b7f04
    asm("{disp8} jmp        _jmp_addr_0x0040401a");                          // 0x00404016    eb02
    asm("_jmp_addr_0x00404018:");
    asm("xor.s              edi, edi");                                      // 0x00404018    33ff
    asm("_jmp_addr_0x0040401a:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0040401a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040401c    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x0040401e    ff501c
    asm("test               edi, edi");                                      // 0x00404021    85ff
    asm("mov.s              ebx, eax");                                      // 0x00404023    8bd8
    asm("{disp8} je         _jmp_addr_0x00404041");                          // 0x00404025    741a
    asm("mov.s              ecx, edi");                                      // 0x00404027    8bcf
    asm("call               _jmp_addr_0x006e9610");                          // 0x00404029    e8e2552e00
    asm("push               ebx");                                           // 0x0040402e    53
    asm("mov.s              ecx, edi");                                      // 0x0040402f    8bcf
    asm("call               _jmp_addr_0x006e8860");                          // 0x00404031    e82a482e00
    asm("_jmp_addr_0x00404036:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00404036    8b06
    asm("mov.s              ecx, esi");                                      // 0x00404038    8bce
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0040403a    ff502c
    asm("test               eax, eax");                                      // 0x0040403d    85c0
    asm("{disp8} je         _jmp_addr_0x0040404a");                          // 0x0040403f    7409
    asm("_jmp_addr_0x00404041:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00404041    8b16
    asm("push               0x0");                                           // 0x00404043    6a00
    asm("mov.s              ecx, esi");                                      // 0x00404045    8bce
    asm("call               dword ptr [edx + 0xc]");                         // 0x00404047    ff520c
    asm("_jmp_addr_0x0040404a:");
    asm("pop                edi");                                           // 0x0040404a    5f
    asm("pop                esi");                                           // 0x0040404b    5e
    asm("mov                eax, 0x00000001");                               // 0x0040404c    b801000000
    asm("pop                ebx");                                           // 0x00404051    5b
    asm("ret                0x0008");                                        // 0x00404052    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall AddVillagerToAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager)
{
    asm("push               ebx");                                           // 0x00404060    53
    asm("push               ebp");                                           // 0x00404061    55
    asm("push               esi");                                           // 0x00404062    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x10]");                   // 0x00404063    8b742410
    asm("mov                eax, dword ptr [esi]");                          // 0x00404067    8b06
    asm("push               edi");                                           // 0x00404069    57
    asm("mov.s              edi, ecx");                                      // 0x0040406a    8bf9
    asm("mov.s              ecx, esi");                                      // 0x0040406c    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040406e    ff5048
    asm("mov.s              ebx, eax");                                      // 0x00404071    8bd8
    asm("xor.s              ebp, ebp");                                      // 0x00404073    33ed
    asm("cmp.s              ebx, ebp");                                      // 0x00404075    3bdd
    asm("{disp8} je         _jmp_addr_0x004040de");                          // 0x00404077    7465
    asm("push               esi");                                           // 0x00404079    56
    asm("mov.s              ecx, ebx");                                      // 0x0040407a    8bcb
    asm("call               ?IsVillagerInHomelessList@Town@@QAE_NPAVVillager@@@Z");  // 0x0040407c    e8ff743300
    asm("test               eax, eax");                                      // 0x00404081    85c0
    asm("{disp8} je         _jmp_addr_0x004040de");                          // 0x00404083    7459
    asm("{disp32} mov       eax, dword ptr [ebx + 0x00000768]");             // 0x00404085    8b8368070000
    asm("cmp.s              eax, esi");                                      // 0x0040408b    3bc6
    asm("{disp8} jne        _jmp_addr_0x004040ad");                          // 0x0040408d    751e
    asm("{disp32} mov       eax, dword ptr [ebx + 0x0000076c]");             // 0x0040408f    8b836c070000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");             // 0x00404095    8b8ee4000000
    asm("dec                eax");                                           // 0x0040409b    48
    asm("{disp32} mov       dword ptr [ebx + 0x00000768], ecx");             // 0x0040409c    898b68070000
    asm("{disp32} mov       dword ptr [ebx + 0x0000076c], eax");             // 0x004040a2    89836c070000
    asm("{disp32} jmp       _jmp_addr_0x00404154");                          // 0x004040a8    e9a7000000
    asm("_jmp_addr_0x004040ad:");
    asm("cmp.s              eax, ebp");                                      // 0x004040ad    3bc5
    asm("{disp32} je        _jmp_addr_0x0040415a");                          // 0x004040af    0f84a5000000
    asm("_jmp_addr_0x004040b5:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000e4]");             // 0x004040b5    8b88e4000000
    asm("cmp.s              ecx, esi");                                      // 0x004040bb    3bce
    asm("{disp8} je         _jmp_addr_0x004040ca");                          // 0x004040bd    740b
    asm("mov.s              eax, ecx");                                      // 0x004040bf    8bc1
    asm("cmp.s              eax, ebp");                                      // 0x004040c1    3bc5
    asm("{disp8} jne        _jmp_addr_0x004040b5");                          // 0x004040c3    75f0
    asm("{disp32} jmp       _jmp_addr_0x0040415a");                          // 0x004040c5    e990000000
    asm("_jmp_addr_0x004040ca:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000e4]");             // 0x004040ca    8b96e4000000
    asm("{disp32} mov       dword ptr [eax + 0x000000e4], edx");             // 0x004040d0    8990e4000000
    asm("dec                dword ptr [ebx + 0x0000076c]");                  // 0x004040d6    ff8b6c070000
    asm("{disp8} jmp        _jmp_addr_0x00404154");                          // 0x004040dc    eb76
    asm("_jmp_addr_0x004040de:");
    asm("mov.s              ecx, esi");                                      // 0x004040de    8bce
    asm("call               @GetAbode__8VillagerFv@4");                      // 0x004040e0    e87be03400
    asm("test               eax, eax");                                      // 0x004040e5    85c0
    asm("{disp8} je         _jmp_addr_0x004040fa");                          // 0x004040e7    7411
    asm("push               esi");                                           // 0x004040e9    56
    asm("mov.s              ecx, esi");                                      // 0x004040ea    8bce
    asm("call               @GetAbode__8VillagerFv@4");                      // 0x004040ec    e86fe03400
    asm("mov.s              ecx, eax");                                      // 0x004040f1    8bc8
    asm("call               ?RemoveAliveVillagerFromAbode@Abode@@QAEXPAVVillager@@@Z");  // 0x004040f3    e848020000
    asm("{disp8} jmp        _jmp_addr_0x0040415a");                          // 0x004040f8    eb60
    asm("_jmp_addr_0x004040fa:");
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x004040fa    a15c19d000
    asm("{disp32} lea       edx, dword ptr [eax + 0x00205bfc]");             // 0x004040ff    8d90fc5b2000
    asm("mov                eax, dword ptr [edx]");                          // 0x00404105    8b02
    asm("cmp.s              eax, ebp");                                      // 0x00404107    3bc5
    asm("{disp8} je         _jmp_addr_0x0040415a");                          // 0x00404109    744f
    asm("_jmp_addr_0x0040410b:");
    asm("cmp.s              eax, esi");                                      // 0x0040410b    3bc6
    asm("{disp8} je         _jmp_addr_0x0040411b");                          // 0x0040410d    740c
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");             // 0x0040410f    8b80e4000000
    asm("cmp.s              eax, ebp");                                      // 0x00404115    3bc5
    asm("{disp8} jne        _jmp_addr_0x0040410b");                          // 0x00404117    75f2
    asm("{disp8} jmp        _jmp_addr_0x0040415a");                          // 0x00404119    eb3f
    asm("_jmp_addr_0x0040411b:");
    asm("cmp.s              eax, ebp");                                      // 0x0040411b    3bc5
    asm("{disp8} je         _jmp_addr_0x0040415a");                          // 0x0040411d    743b
    asm("mov                eax, dword ptr [edx]");                          // 0x0040411f    8b02
    asm("cmp.s              eax, esi");                                      // 0x00404121    3bc6
    asm("{disp8} jne        _jmp_addr_0x0040412f");                          // 0x00404123    750a
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");             // 0x00404125    8b8ee4000000
    asm("mov                dword ptr [edx], ecx");                          // 0x0040412b    890a
    asm("{disp8} jmp        _jmp_addr_0x00404151");                          // 0x0040412d    eb22
    asm("_jmp_addr_0x0040412f:");
    asm("cmp.s              eax, ebp");                                      // 0x0040412f    3bc5
    asm("{disp8} je         _jmp_addr_0x0040415a");                          // 0x00404131    7427
    asm("_jmp_addr_0x00404133:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000e4]");             // 0x00404133    8b88e4000000
    asm("cmp.s              ecx, esi");                                      // 0x00404139    3bce
    asm("{disp8} je         _jmp_addr_0x00404145");                          // 0x0040413b    7408
    asm("mov.s              eax, ecx");                                      // 0x0040413d    8bc1
    asm("cmp.s              eax, ebp");                                      // 0x0040413f    3bc5
    asm("{disp8} jne        _jmp_addr_0x00404133");                          // 0x00404141    75f0
    asm("{disp8} jmp        _jmp_addr_0x0040415a");                          // 0x00404143    eb15
    asm("_jmp_addr_0x00404145:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");             // 0x00404145    8b8ee4000000
    asm("{disp32} mov       dword ptr [eax + 0x000000e4], ecx");             // 0x0040414b    8988e4000000
    asm("_jmp_addr_0x00404151:");
    asm("dec                dword ptr [edx + 0x04]");                        // 0x00404151    ff4a04
    asm("_jmp_addr_0x00404154:");
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], ebp");             // 0x00404154    89aee4000000
    asm("_jmp_addr_0x0040415a:");
    asm("{disp32} mov       edx, dword ptr [edi + 0x000000a0]");             // 0x0040415a    8b97a0000000
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], edx");             // 0x00404160    8996e4000000
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000a4]");             // 0x00404166    8b87a4000000
    asm("inc                eax");                                           // 0x0040416c    40
    asm("push               edi");                                           // 0x0040416d    57
    asm("mov.s              ecx, esi");                                      // 0x0040416e    8bce
    asm("{disp32} mov       dword ptr [edi + 0x000000a0], esi");             // 0x00404170    89b7a0000000
    asm("{disp32} mov       dword ptr [edi + 0x000000a4], eax");             // 0x00404176    8987a4000000
    asm("call               ?SetAbode@Villager@@QAEXPAVAbode@@@Z");          // 0x0040417c    e85fcc3400
    asm("mov                eax, dword ptr [edi]");                          // 0x00404181    8b07
    asm("mov.s              ecx, edi");                                      // 0x00404183    8bcf
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404185    ff5048
    asm("test               eax, eax");                                      // 0x00404188    85c0
    asm("{disp8} je         _jmp_addr_0x004041bb");                          // 0x0040418a    742f
    asm("mov                edx, dword ptr [edi]");                          // 0x0040418c    8b17
    asm("mov.s              ecx, edi");                                      // 0x0040418e    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00404190    ff5248
    asm("cmp.s              ebx, eax");                                      // 0x00404193    3bd8
    asm("{disp8} je         _jmp_addr_0x004041a6");                          // 0x00404195    740f
    asm("mov                eax, dword ptr [edi]");                          // 0x00404197    8b07
    asm("push               esi");                                           // 0x00404199    56
    asm("mov.s              ecx, edi");                                      // 0x0040419a    8bcf
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040419c    ff5048
    asm("mov.s              ecx, eax");                                      // 0x0040419f    8bc8
    asm("call               ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z"); // 0x004041a1    e8ea5e3300
    asm("_jmp_addr_0x004041a6:");
    asm("mov                edx, dword ptr [edi]");                          // 0x004041a6    8b17
    asm("push               esi");                                           // 0x004041a8    56
    asm("mov.s              ecx, edi");                                      // 0x004041a9    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x004041ab    ff5248
    asm("mov.s              ecx, eax");                                      // 0x004041ae    8bc8
    asm("add                ecx, 0x00000610");                               // 0x004041b0    81c110060000
    asm("call               _jmp_addr_0x00749500");                          // 0x004041b6    e845533400
    asm("_jmp_addr_0x004041bb:");
    asm("mov                eax, dword ptr [esi]");                          // 0x004041bb    8b06
    asm("mov.s              ecx, esi");                                      // 0x004041bd    8bce
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x004041bf    ff90f80a0000
    asm("test               eax, eax");                                      // 0x004041c5    85c0
    asm("{disp8} jne        _jmp_addr_0x00404210");                          // 0x004041c7    7547
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x004041c9    8b4e28
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000001f8]");             // 0x004041cc    8b91f8010000
    asm("{disp32} mov       ecx, dword ptr [edi + edx * 0x4 + 0x000000a8]"); // 0x004041d2    8b8c97a8000000
    asm("cmp.s              ecx, ebp");                                      // 0x004041d9    3bcd
    asm("{disp32} lea       eax, dword ptr [edi + edx * 0x4 + 0x000000a8]"); // 0x004041db    8d8497a8000000
    asm("{disp8} jne        _jmp_addr_0x004041e6");                          // 0x004041e2    7502
    asm("mov                dword ptr [eax], esi");                          // 0x004041e4    8930
    asm("_jmp_addr_0x004041e6:");
    asm("{disp32} inc       byte ptr [edi + 0x000000b4]");                   // 0x004041e6    fe87b4000000
    asm("mov                eax, dword ptr [esi]");                          // 0x004041ec    8b06
    asm("mov.s              ecx, esi");                                      // 0x004041ee    8bce
    asm("call               dword ptr [eax + 0x44c]");                       // 0x004041f0    ff904c040000
    asm("test               eax, eax");                                      // 0x004041f6    85c0
    asm("{disp32} mov       al, byte ptr [edi + 0x000000b5]");               // 0x004041f8    8a87b5000000
    asm("setne              cl");                                            // 0x004041fe    0f95c1
    asm("add.s              al, cl");                                        // 0x00404201    02c1
    asm("{disp32} mov       byte ptr [edi + 0x000000b5], al");               // 0x00404203    8887b5000000
    asm("pop                edi");                                           // 0x00404209    5f
    asm("pop                esi");                                           // 0x0040420a    5e
    asm("pop                ebp");                                           // 0x0040420b    5d
    asm("pop                ebx");                                           // 0x0040420c    5b
    asm("ret                0x0004");                                        // 0x0040420d    c20400
    asm("_jmp_addr_0x00404210:");
    asm("{disp32} inc       byte ptr [edi + 0x000000b7]");                   // 0x00404210    fe87b7000000
    asm("pop                edi");                                           // 0x00404216    5f
    asm("pop                esi");                                           // 0x00404217    5e
    asm("pop                ebp");                                           // 0x00404218    5d
    asm("pop                ebx");                                           // 0x00404219    5b
    asm("ret                0x0004");                                        // 0x0040421a    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall RemoveDeletedVillagerFromAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager)
{
    asm("push               ebx");                                           // 0x00404220    53
    asm("push               esi");                                           // 0x00404221    56
    asm("push               edi");                                           // 0x00404222    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x00404223    8b7c2410
    asm("{disp8} mov        eax, dword ptr [edi + 0x28]");                   // 0x00404227    8b4728
    asm("{disp32} mov       eax, dword ptr [eax + 0x000001f8]");             // 0x0040422a    8b80f8010000
    asm("mov.s              esi, ecx");                                      // 0x00404230    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x000000a8]"); // 0x00404232    8b8c86a8000000
    asm("xor.s              ebx, ebx");                                      // 0x00404239    33db
    asm("cmp.s              ecx, edi");                                      // 0x0040423b    3bcf
    asm("{disp8} jne        _jmp_addr_0x00404254");                          // 0x0040423d    7515
    asm("xor.s              ecx, ecx");                                      // 0x0040423f    33c9
    asm("cmp.s              eax, ebx");                                      // 0x00404241    3bc3
    asm("sete               cl");                                            // 0x00404243    0f94c1
    asm("{disp32} mov       dword ptr [esi + ecx * 0x4 + 0x000000a8], ebx"); // 0x00404246    899c8ea8000000
    asm("{disp32} mov       dword ptr [esi + eax * 0x4 + 0x000000a8], ebx"); // 0x0040424d    899c86a8000000
    asm("_jmp_addr_0x00404254:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00404254    8b17
    asm("mov.s              ecx, edi");                                      // 0x00404256    8bcf
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x00404258    ff92f80a0000
    asm("cmp                eax, 0x01");                                     // 0x0040425e    83f801
    asm("{disp8} je         _jmp_addr_0x0040429c");                          // 0x00404261    7439
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b4]");               // 0x00404263    8a86b4000000
    asm("cmp.s              al, bl");                                        // 0x00404269    3ac3
    asm("{disp8} jbe        _jmp_addr_0x00404275");                          // 0x0040426b    7608
    asm("dec                al");                                            // 0x0040426d    fec8
    asm("{disp32} mov       byte ptr [esi + 0x000000b4], al");               // 0x0040426f    8886b4000000
    asm("_jmp_addr_0x00404275:");
    asm("cmp                byte ptr [esi + 0x000000b5], bl");               // 0x00404275    389eb5000000
    asm("{disp8} jbe        _jmp_addr_0x004042ae");                          // 0x0040427b    7631
    asm("mov                eax, dword ptr [edi]");                          // 0x0040427d    8b07
    asm("mov.s              ecx, edi");                                      // 0x0040427f    8bcf
    asm("call               dword ptr [eax + 0x44c]");                       // 0x00404281    ff904c040000
    asm("test               eax, eax");                                      // 0x00404287    85c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b5]");               // 0x00404289    8a86b5000000
    asm("setne              cl");                                            // 0x0040428f    0f95c1
    asm("sub.s              al, cl");                                        // 0x00404292    2ac1
    asm("{disp32} mov       byte ptr [esi + 0x000000b5], al");               // 0x00404294    8886b5000000
    asm("{disp8} jmp        _jmp_addr_0x004042ae");                          // 0x0040429a    eb12
    asm("_jmp_addr_0x0040429c:");
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b7]");               // 0x0040429c    8a86b7000000
    asm("cmp.s              al, bl");                                        // 0x004042a2    3ac3
    asm("{disp8} je         _jmp_addr_0x004042ae");                          // 0x004042a4    7408
    asm("dec                al");                                            // 0x004042a6    fec8
    asm("{disp32} mov       byte ptr [esi + 0x000000b7], al");               // 0x004042a8    8886b7000000
    asm("_jmp_addr_0x004042ae:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000a0]");             // 0x004042ae    8b86a0000000
    asm("cmp.s              eax, edi");                                      // 0x004042b4    3bc7
    asm("{disp8} jne        _jmp_addr_0x004042c6");                          // 0x004042b6    750e
    asm("{disp32} mov       edx, dword ptr [edi + 0x000000e4]");             // 0x004042b8    8b97e4000000
    asm("{disp32} mov       dword ptr [esi + 0x000000a0], edx");             // 0x004042be    8996a0000000
    asm("{disp8} jmp        _jmp_addr_0x004042e8");                          // 0x004042c4    eb22
    asm("_jmp_addr_0x004042c6:");
    asm("cmp.s              eax, ebx");                                      // 0x004042c6    3bc3
    asm("{disp8} je         _jmp_addr_0x004042f4");                          // 0x004042c8    742a
    asm("_jmp_addr_0x004042ca:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000e4]");             // 0x004042ca    8b88e4000000
    asm("cmp.s              ecx, edi");                                      // 0x004042d0    3bcf
    asm("{disp8} je         _jmp_addr_0x004042dc");                          // 0x004042d2    7408
    asm("mov.s              eax, ecx");                                      // 0x004042d4    8bc1
    asm("cmp.s              eax, ebx");                                      // 0x004042d6    3bc3
    asm("{disp8} jne        _jmp_addr_0x004042ca");                          // 0x004042d8    75f0
    asm("{disp8} jmp        _jmp_addr_0x004042f4");                          // 0x004042da    eb18
    asm("_jmp_addr_0x004042dc:");
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000e4]");             // 0x004042dc    8b8fe4000000
    asm("{disp32} mov       dword ptr [eax + 0x000000e4], ecx");             // 0x004042e2    8988e4000000
    asm("_jmp_addr_0x004042e8:");
    asm("dec                dword ptr [esi + 0x000000a4]");                  // 0x004042e8    ff8ea4000000
    asm("{disp32} mov       dword ptr [edi + 0x000000e4], ebx");             // 0x004042ee    899fe4000000
    asm("_jmp_addr_0x004042f4:");
    asm("push               ebx");                                           // 0x004042f4    53
    asm("mov.s              ecx, edi");                                      // 0x004042f5    8bcf
    asm("call               ?SetAbode@Villager@@QAEXPAVAbode@@@Z");          // 0x004042f7    e8e4ca3400
    asm("mov                edx, dword ptr [esi]");                          // 0x004042fc    8b16
    asm("mov.s              ecx, esi");                                      // 0x004042fe    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00404300    ff5248
    asm("test               eax, eax");                                      // 0x00404303    85c0
    asm("{disp8} je         _jmp_addr_0x0040432b");                          // 0x00404305    7424
    asm("mov                eax, dword ptr [esi]");                          // 0x00404307    8b06
    asm("push               edi");                                           // 0x00404309    57
    asm("mov.s              ecx, esi");                                      // 0x0040430a    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040430c    ff5048
    asm("mov.s              ecx, eax");                                      // 0x0040430f    8bc8
    asm("call               ?RemoveVillager@Town@@QAEXPAVVillager@@@Z");     // 0x00404311    e8fa9e3300
    asm("mov                edx, dword ptr [esi]");                          // 0x00404316    8b16
    asm("push               edi");                                           // 0x00404318    57
    asm("mov.s              ecx, esi");                                      // 0x00404319    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0040431b    ff5248
    asm("mov.s              ecx, eax");                                      // 0x0040431e    8bc8
    asm("add                ecx, 0x00000610");                               // 0x00404320    81c110060000
    asm("call               ?VillagerMoveOutOfAbode@TownStats@@QAEXPAVVillager@@@Z");  // 0x00404326    e895513400
    asm("_jmp_addr_0x0040432b:");
    asm("pop                edi");                                           // 0x0040432b    5f
    asm("pop                esi");                                           // 0x0040432c    5e
    asm("pop                ebx");                                           // 0x0040432d    5b
    asm("ret                0x0004");                                        // 0x0040432e    c20400
    __builtin_unreachable();
}
