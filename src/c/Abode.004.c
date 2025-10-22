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
    asm("{disp32} jmp       ?RemoveAllVillagersFromAbode@Abode@@QAEXXZ"); // 0x00403f00    e95b060000
    __builtin_unreachable();
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
    asm("call                ??3@YAXPAX@Z");                                   // 0x00403f60    e833af3a00
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
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");                      // 0x004040e0    e87be03400
    asm("test               eax, eax");                                      // 0x004040e5    85c0
    asm("{disp8} je         _jmp_addr_0x004040fa");                          // 0x004040e7    7411
    asm("push               esi");                                           // 0x004040e9    56
    asm("mov.s              ecx, esi");                                      // 0x004040ea    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");                      // 0x004040ec    e86fe03400
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

void __fastcall RemoveAliveVillagerFromAbode__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager)
{
    asm("push               esi");                                           // 0x00404340    56
    asm("push               edi");                                           // 0x00404341    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00404342    8b7c240c
    asm("test               byte ptr [edi + 0x000000e0], 0x04");             // 0x00404346    f687e000000004
    asm("mov.s              esi, ecx");                                      // 0x0040434d    8bf1
    asm("{disp8} je         _jmp_addr_0x00404360");                          // 0x0040434f    740f
    asm("mov                eax, dword ptr [edi]");                          // 0x00404351    8b07
    asm("push               0x000000a3");                                    // 0x00404353    68a3000000
    asm("mov.s              ecx, edi");                                      // 0x00404358    8bcf
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0040435a    ff90e8080000
    asm("_jmp_addr_0x00404360:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00404360    8b17
    asm("mov.s              ecx, edi");                                      // 0x00404362    8bcf
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x00404364    ff92f80a0000
    asm("cmp                eax, 0x01");                                     // 0x0040436a    83f801
    asm("{disp8} je         _jmp_addr_0x004043aa");                          // 0x0040436d    743b
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b4]");               // 0x0040436f    8a86b4000000
    asm("test               al, al");                                        // 0x00404375    84c0
    asm("{disp8} jbe        _jmp_addr_0x00404381");                          // 0x00404377    7608
    asm("dec                al");                                            // 0x00404379    fec8
    asm("{disp32} mov       byte ptr [esi + 0x000000b4], al");               // 0x0040437b    8886b4000000
    asm("_jmp_addr_0x00404381:");
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b5]");               // 0x00404381    8a86b5000000
    asm("test               al, al");                                        // 0x00404387    84c0
    asm("{disp8} jbe        _jmp_addr_0x004043bc");                          // 0x00404389    7631
    asm("mov                eax, dword ptr [edi]");                          // 0x0040438b    8b07
    asm("mov.s              ecx, edi");                                      // 0x0040438d    8bcf
    asm("call               dword ptr [eax + 0x44c]");                       // 0x0040438f    ff904c040000
    asm("test               eax, eax");                                      // 0x00404395    85c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b5]");               // 0x00404397    8a86b5000000
    asm("setne              cl");                                            // 0x0040439d    0f95c1
    asm("sub.s              al, cl");                                        // 0x004043a0    2ac1
    asm("{disp32} mov       byte ptr [esi + 0x000000b5], al");               // 0x004043a2    8886b5000000
    asm("{disp8} jmp        _jmp_addr_0x004043bc");                          // 0x004043a8    eb12
    asm("_jmp_addr_0x004043aa:");
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b7]");               // 0x004043aa    8a86b7000000
    asm("test               al, al");                                        // 0x004043b0    84c0
    asm("{disp8} je         _jmp_addr_0x004043bc");                          // 0x004043b2    7408
    asm("dec                al");                                            // 0x004043b4    fec8
    asm("{disp32} mov       byte ptr [esi + 0x000000b7], al");               // 0x004043b6    8886b7000000
    asm("_jmp_addr_0x004043bc:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000a0]");             // 0x004043bc    8b86a0000000
    asm("cmp.s              eax, edi");                                      // 0x004043c2    3bc7
    asm("{disp8} jne        _jmp_addr_0x004043d4");                          // 0x004043c4    750e
    asm("{disp32} mov       edx, dword ptr [edi + 0x000000e4]");             // 0x004043c6    8b97e4000000
    asm("{disp32} mov       dword ptr [esi + 0x000000a0], edx");             // 0x004043cc    8996a0000000
    asm("{disp8} jmp        _jmp_addr_0x004043f6");                          // 0x004043d2    eb22
    asm("_jmp_addr_0x004043d4:");
    asm("test               eax, eax");                                      // 0x004043d4    85c0
    asm("{disp8} je         _jmp_addr_0x00404406");                          // 0x004043d6    742e
    asm("_jmp_addr_0x004043d8:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000e4]");             // 0x004043d8    8b88e4000000
    asm("cmp.s              ecx, edi");                                      // 0x004043de    3bcf
    asm("{disp8} je         _jmp_addr_0x004043ea");                          // 0x004043e0    7408
    asm("mov.s              eax, ecx");                                      // 0x004043e2    8bc1
    asm("test               eax, eax");                                      // 0x004043e4    85c0
    asm("{disp8} jne        _jmp_addr_0x004043d8");                          // 0x004043e6    75f0
    asm("{disp8} jmp        _jmp_addr_0x00404406");                          // 0x004043e8    eb1c
    asm("_jmp_addr_0x004043ea:");
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000e4]");             // 0x004043ea    8b8fe4000000
    asm("{disp32} mov       dword ptr [eax + 0x000000e4], ecx");             // 0x004043f0    8988e4000000
    asm("_jmp_addr_0x004043f6:");
    asm("dec                dword ptr [esi + 0x000000a4]");                  // 0x004043f6    ff8ea4000000
    asm("{disp32} mov       dword ptr [edi + 0x000000e4], 0x00000000");      // 0x004043fc    c787e400000000000000
    asm("_jmp_addr_0x00404406:");
    asm("push               0x0");                                           // 0x00404406    6a00
    asm("mov.s              ecx, edi");                                      // 0x00404408    8bcf
    asm("call               ?SetAbode@Villager@@QAEXPAVAbode@@@Z");          // 0x0040440a    e8d1c93400
    asm("mov                edx, dword ptr [esi]");                          // 0x0040440f    8b16
    asm("mov.s              ecx, esi");                                      // 0x00404411    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00404413    ff5248
    asm("test               eax, eax");                                      // 0x00404416    85c0
    asm("{disp8} je         _jmp_addr_0x0040442f");                          // 0x00404418    7415
    asm("mov                eax, dword ptr [esi]");                          // 0x0040441a    8b06
    asm("push               edi");                                           // 0x0040441c    57
    asm("mov.s              ecx, esi");                                      // 0x0040441d    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040441f    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00404422    8bc8
    asm("add                ecx, 0x00000610");                               // 0x00404424    81c110060000
    asm("call               ?VillagerMoveOutOfAbode@TownStats@@QAEXPAVVillager@@@Z");  // 0x0040442a    e891503400
    asm("_jmp_addr_0x0040442f:");
    asm("pop                edi");                                           // 0x0040442f    5f
    asm("pop                esi");                                           // 0x00404430    5e
    asm("ret                0x0004");                                        // 0x00404431    c20400
    __builtin_unreachable();
}

uint32_t __fastcall Process__5AbodeFv(struct Object* this)
{
    asm("push               esi");                                           // 0x00404440    56
    asm("mov.s              esi, ecx");                                      // 0x00404441    8bf1
    asm("call               ?Process@MultiMapFixed@@UAEIXZ");                // 0x00404443    e8b8b21200
    asm("mov                eax, dword ptr [esi]");                          // 0x00404448    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040444a    8bce
    asm("call               dword ptr [eax + 0x89c]");                       // 0x0040444c    ff909c080000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00404452    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00404458    dfe0
    asm("test               ah, 0x40");                                      // 0x0040445a    f6c440
    asm("{disp32} je        _jmp_addr_0x00404503");                          // 0x0040445d    0f84a0000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00404463    8b16
    asm("mov.s              ecx, esi");                                      // 0x00404465    8bce
    asm("call               dword ptr [edx + 0x8a0]");                       // 0x00404467    ff92a0080000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0040446d    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00404473    dfe0
    asm("test               ah, 0x40");                                      // 0x00404475    f6c440
    asm("{disp32} je        _jmp_addr_0x00404503");                          // 0x00404478    0f8485000000
    asm("mov                eax, dword ptr [esi]");                          // 0x0040447e    8b06
    asm("mov.s              ecx, esi");                                      // 0x00404480    8bce
    asm("call               dword ptr [eax + 0x890]");                       // 0x00404482    ff9090080000
    asm("test               eax, eax");                                      // 0x00404488    85c0
    asm("{disp8} je         _jmp_addr_0x00404503");                          // 0x0040448a    7477
    asm("mov                edx, dword ptr [esi]");                          // 0x0040448c    8b16
    asm("mov.s              ecx, esi");                                      // 0x0040448e    8bce
    asm("call               dword ptr [edx + 0x448]");                       // 0x00404490    ff9248040000
    asm("test               eax, eax");                                      // 0x00404496    85c0
    asm("{disp8} jne        _jmp_addr_0x00404503");                          // 0x00404498    7569
    asm("mov                eax, dword ptr [esi]");                          // 0x0040449a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040449c    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040449e    ff5048
    asm("test               eax, eax");                                      // 0x004044a1    85c0
    asm("{disp8} je         _jmp_addr_0x004044b6");                          // 0x004044a3    7411
    asm("mov                edx, dword ptr [esi]");                          // 0x004044a5    8b16
    asm("mov.s              ecx, esi");                                      // 0x004044a7    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x004044a9    ff5248
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000005f4]");             // 0x004044ac    8b88f4050000
    asm("test               ecx, ecx");                                      // 0x004044b2    85c9
    asm("{disp8} jne        _jmp_addr_0x00404503");                          // 0x004044b4    754d
    asm("_jmp_addr_0x004044b6:");
    asm("{disp32} fld       dword ptr [esi + 0x000000b0]");                  // 0x004044b6    d986b0000000
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x004044bc    d805b0a38a00
    asm("{disp32} fst       dword ptr [esi + 0x000000b0]");                  // 0x004044c2    d996b0000000
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x004044c8    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x004044ce    dfe0
    asm("test               ah, 0x01");                                      // 0x004044d0    f6c401
    asm("{disp8} jne        _jmp_addr_0x00404503");                          // 0x004044d3    752e
    asm("{disp8} mov        al, byte ptr [esi + 0x7c]");                     // 0x004044d5    8a467c
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x004044d8    8b4e28
    asm("or                 al, 0x40");                                      // 0x004044db    0c40
    asm("{disp8} mov        byte ptr [esi + 0x7c], al");                     // 0x004044dd    88467c
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000001b0]");             // 0x004044e0    8b91b0010000
    asm("mov                eax, dword ptr [esi]");                          // 0x004044e6    8b06
    asm("push               0x0");                                           // 0x004044e8    6a00
    asm("push               edx");                                           // 0x004044ea    52
    asm("mov.s              ecx, esi");                                      // 0x004044eb    8bce
    asm("call               dword ptr [eax + 0x5b8]");                       // 0x004044ed    ff90b8050000
    asm("fstp               st(0)");                                         // 0x004044f3    ddd8
    asm("and                byte ptr [esi + 0x7c], -0x41");                  // 0x004044f5    80667cbf
    asm("{disp32} mov       dword ptr [esi + 0x000000b0], 0x00000000");      // 0x004044f9    c786b000000000000000
    asm("_jmp_addr_0x00404503:");
    asm("{disp32} mov       al, byte ptr [esi + 0x000000b9]");               // 0x00404503    8a86b9000000
    asm("cmp                al, -0x38");                                     // 0x00404509    3cc8
    asm("{disp8} jae        _jmp_addr_0x00404515");                          // 0x0040450b    7308
    asm("inc                al");                                            // 0x0040450d    fec0
    asm("{disp32} mov       byte ptr [esi + 0x000000b9], al");               // 0x0040450f    8886b9000000
    asm("_jmp_addr_0x00404515:");
    asm("mov                eax, 0x00000001");                               // 0x00404515    b801000000
    asm("pop                esi");                                           // 0x0040451a    5e
    asm("ret");                                                              // 0x0040451b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall MoveAbodeToPlannedAbodes__5AbodeFv(struct Abode* this)
{
    asm("push               esi");                                           // 0x00404520    56
    asm("mov.s              esi, ecx");                                      // 0x00404521    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00404523    8b06
    asm("push               edi");                                           // 0x00404525    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404526    ff5048
    asm("mov.s              edi, eax");                                      // 0x00404529    8bf8
    asm("test               edi, edi");                                      // 0x0040452b    85ff
    asm("{disp8} je         _jmp_addr_0x0040455a");                          // 0x0040452d    742b
    asm("mov                edx, dword ptr [esi]");                          // 0x0040452f    8b16
    asm("mov.s              ecx, esi");                                      // 0x00404531    8bce
    asm("call               dword ptr [edx + 0x8f8]");                       // 0x00404533    ff92f8080000
    asm("test               eax, eax");                                      // 0x00404539    85c0
    asm("{disp8} jne        _jmp_addr_0x00404552");                          // 0x0040453b    7515
    asm("push               esi");                                           // 0x0040453d    56
    asm("call               ?Create@PlannedAbode@@SAPAV1@PAVAbode@@@Z");     // 0x0040453e    e81d110000
    asm("add                esp, 0x04");                                     // 0x00404543    83c404
    asm("test               eax, eax");                                      // 0x00404546    85c0
    asm("{disp8} je         _jmp_addr_0x00404552");                          // 0x00404548    7408
    asm("pop                edi");                                           // 0x0040454a    5f
    asm("mov                eax, 0x00000001");                               // 0x0040454b    b801000000
    asm("pop                esi");                                           // 0x00404550    5e
    asm("ret");                                                              // 0x00404551    c3
    asm("_jmp_addr_0x00404552:");
    asm("push               esi");                                           // 0x00404552    56
    asm("mov.s              ecx, edi");                                      // 0x00404553    8bcf
    asm("call               ?RemoveBuildingSite@Town@@QAEIPAVMultiMapFixed@@@Z");// 0x00404555    e8c6743300
    asm("_jmp_addr_0x0040455a:");
    asm("pop                edi");                                           // 0x0040455a    5f
    asm("xor.s              eax, eax");                                      // 0x0040455b    33c0
    asm("pop                esi");                                           // 0x0040455d    5e
    asm("ret");                                                              // 0x0040455e    c3
    __builtin_unreachable();
}

__attribute__((noinline))
void __fastcall RemoveAllVillagersFromAbode__5AbodeFv(struct Abode* this)
{
    asm("{disp32} mov       ecx, dword ptr [ecx + 0x000000a0]");             // 0x00404560    8b89a0000000
    asm("test               ecx, ecx");                                      // 0x00404566    85c9
    asm("{disp8} je         _jmp_addr_0x0040457d");                          // 0x00404568    7413
    asm("push               esi");                                           // 0x0040456a    56
    asm("_jmp_addr_0x0040456b:");
    asm("{disp32} mov       esi, dword ptr [ecx + 0x000000e4]");             // 0x0040456b    8bb1e4000000
    asm("call               ?HomeDeleted@Villager@@QAEXXZ");                 // 0x00404571    e87acc3500
    asm("test               esi, esi");                                      // 0x00404576    85f6
    asm("mov.s              ecx, esi");                                      // 0x00404578    8bce
    asm("{disp8} jne        _jmp_addr_0x0040456b");                          // 0x0040457a    75ef
    asm("pop                esi");                                           // 0x0040457c    5e
    asm("_jmp_addr_0x0040457d:");
    asm("ret");                                                              // 0x0040457d    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall NumVillagersOfSex__5AbodeFv(struct Abode* this)
{
    asm("push               esi");                                           // 0x00404580    56
    asm("{disp32} mov       esi, dword ptr [ecx + 0x000000a0]");             // 0x00404581    8bb1a0000000
    asm("push               edi");                                           // 0x00404587    57
    asm("xor.s              edi, edi");                                      // 0x00404588    33ff
    asm("test               esi, esi");                                      // 0x0040458a    85f6
    asm("{disp8} je         _jmp_addr_0x004045bc");                          // 0x0040458c    742e
    asm("push               ebx");                                           // 0x0040458e    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x10]");                   // 0x0040458f    8b5c2410
    asm("_jmp_addr_0x00404593:");
    asm("mov.s              ecx, esi");                                      // 0x00404593    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");           // 0x00404595    e8f6dc3400
    asm("test               eax, eax");                                      // 0x0040459a    85c0
    asm("{disp8} je         _jmp_addr_0x004045aa");                          // 0x0040459c    740c
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x0040459e    8b4628
    asm("cmp                dword ptr [eax + 0x000001f8], ebx");             // 0x004045a1    3998f8010000
    asm("{disp8} jne        _jmp_addr_0x004045aa");                          // 0x004045a7    7501
    asm("inc                edi");                                           // 0x004045a9    47
    asm("_jmp_addr_0x004045aa:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x000000e4]");             // 0x004045aa    8bb6e4000000
    asm("test               esi, esi");                                      // 0x004045b0    85f6
    asm("{disp8} jne        _jmp_addr_0x00404593");                          // 0x004045b2    75df
    asm("pop                ebx");                                           // 0x004045b4    5b
    asm("mov.s              eax, edi");                                      // 0x004045b5    8bc7
    asm("pop                edi");                                           // 0x004045b7    5f
    asm("pop                esi");                                           // 0x004045b8    5e
    asm("ret                0x0004");                                        // 0x004045b9    c20400
    asm("_jmp_addr_0x004045bc:");
    asm("mov.s              eax, edi");                                      // 0x004045bc    8bc7
    asm("pop                edi");                                           // 0x004045be    5f
    asm("pop                esi");                                           // 0x004045bf    5e
    asm("ret                0x0004");                                        // 0x004045c0    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall CalculateFoodNeededForDinner__5AbodeFv(struct Abode* this)
{
    asm("{disp32} mov       ecx, dword ptr [ecx + 0x000000a0]");             // 0x004045d0    8b89a0000000
    asm("xor.s              eax, eax");                                      // 0x004045d6    33c0
    asm("test               ecx, ecx");                                      // 0x004045d8    85c9
    asm("{disp8} je         _jmp_addr_0x004045f3");                          // 0x004045da    7417
    asm("push               esi");                                           // 0x004045dc    56
    asm("_jmp_addr_0x004045dd:");
    asm("{disp8} mov        edx, dword ptr [ecx + 0x28]");                   // 0x004045dd    8b5128
    asm("{disp32} mov       esi, dword ptr [edx + 0x000002d8]");             // 0x004045e0    8bb2d8020000
    asm("{disp32} mov       ecx, dword ptr [ecx + 0x000000e4]");             // 0x004045e6    8b89e4000000
    asm("add.s              eax, esi");                                      // 0x004045ec    03c6
    asm("test               ecx, ecx");                                      // 0x004045ee    85c9
    asm("{disp8} jne        _jmp_addr_0x004045dd");                          // 0x004045f0    75eb
    asm("pop                esi");                                           // 0x004045f2    5e
    asm("_jmp_addr_0x004045f3:");
    asm("ret");                                                              // 0x004045f3    c3
    __builtin_unreachable();
}

bool __fastcall IsEnoughFoodForDinner__5AbodeFv(struct Abode* this)
{
    asm("push               esi");                                           // 0x00404600    56
    asm("push               edi");                                           // 0x00404601    57
    asm("mov.s              esi, ecx");                                      // 0x00404602    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00404604    8b06
    asm("push               0x0");                                           // 0x00404606    6a00
    asm("call               dword ptr [eax + 0x98]");                        // 0x00404608    ff9098000000
    asm("mov.s              ecx, esi");                                      // 0x0040460e    8bce
    asm("mov.s              edi, eax");                                      // 0x00404610    8bf8
    asm("call               ?CalculateFoodNeededForDinner@Abode@@QAEHXZ");   // 0x00404612    e8b9ffffff
    asm("and                eax, 0x0000ffff");                               // 0x00404617    25ffff0000
    asm("cmp.s              edi, eax");                                      // 0x0040461c    3bf8
    asm("sbb.s              eax, eax");                                      // 0x0040461e    1bc0
    asm("pop                edi");                                           // 0x00404620    5f
    asm("inc                eax");                                           // 0x00404621    40
    asm("pop                esi");                                           // 0x00404622    5e
    asm("ret");                                                              // 0x00404623    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Villager* __fastcall GetSpouse__5AbodeFP8Villager(struct Abode* this, const void* edx, struct Villager* villager)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00404630    8b542404
    asm("{disp8} mov        eax, dword ptr [edx + 0x28]");                   // 0x00404634    8b4228
    asm("{disp32} mov       eax, dword ptr [eax + 0x000001f8]");             // 0x00404637    8b80f8010000
    asm("cmp                dword ptr [ecx + eax * 0x4 + 0x000000a8], edx"); // 0x0040463d    399481a8000000
    asm("{disp8} jne        _jmp_addr_0x00404657");                          // 0x00404644    7511
    asm("xor.s              edx, edx");                                      // 0x00404646    33d2
    asm("test               eax, eax");                                      // 0x00404648    85c0
    asm("sete               dl");                                            // 0x0040464a    0f94c2
    asm("{disp32} mov       eax, dword ptr [ecx + edx * 0x4 + 0x000000a8]"); // 0x0040464d    8b8491a8000000
    asm("ret                0x0004");                                        // 0x00404654    c20400
    asm("_jmp_addr_0x00404657:");
    asm("xor.s              eax, eax");                                      // 0x00404657    33c0
    asm("ret                0x0004");                                        // 0x00404659    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall GetRoomLeftForAdults__5AbodeFv(struct Abode* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00404660    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000174]");             // 0x00404663    8b8074010000
    asm("xor.s              edx, edx");                                      // 0x00404669    33d2
    asm("{disp32} mov       dl, byte ptr [ecx + 0x000000b4]");               // 0x0040466b    8a91b4000000
    asm("sub.s              eax, edx");                                      // 0x00404671    2bc2
    asm("ret");                                                              // 0x00404673    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall GetRoomLeftForChildren__5AbodeFv(struct Abode* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00404680    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000178]");             // 0x00404683    8b8078010000
    asm("xor.s              edx, edx");                                      // 0x00404689    33d2
    asm("{disp32} mov       dl, byte ptr [ecx + 0x000000b7]");               // 0x0040468b    8a91b7000000
    asm("sub.s              eax, edx");                                      // 0x00404691    2bc2
    asm("ret");                                                              // 0x00404693    c3
    __builtin_unreachable();
}

void __fastcall FUN_004046a0__5AbodeFi(struct Abode* this, const void* edx, int param_1)
{
    return;
}

int __fastcall FUN_004046b0__5AbodeFv(struct Abode* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x004046b0    8b4128
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000110]");             // 0x004046b3    8b8010010000
    asm("ret");                                                              // 0x004046b9    c3
    asm("call               dword ptr [__imp__SetWindowTextA@4]");           // 0x004046ba    ff15c0978a00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsTooCrowded__5AbodeFv(struct Abode* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x004046c0    8b4128
    asm("sub                esp, 0x08");                                     // 0x004046c3    83ec08
    asm("push               esi");                                           // 0x004046c6    56
    asm("{disp32} mov       esi, dword ptr [eax + 0x00000174]");             // 0x004046c7    8bb074010000
    asm("test               esi, esi");                                      // 0x004046cd    85f6
    asm("{disp8} jne        _jmp_addr_0x004046db");                          // 0x004046cf    750a
    asm("mov                eax, 0x00000001");                               // 0x004046d1    b801000000
    asm("pop                esi");                                           // 0x004046d6    5e
    asm("add                esp, 0x08");                                     // 0x004046d7    83c408
    asm("ret");                                                              // 0x004046da    c3
    asm("_jmp_addr_0x004046db:");
    asm("xor.s              edx, edx");                                      // 0x004046db    33d2
    asm("{disp32} mov       dl, byte ptr [ecx + 0x000000b4]");               // 0x004046dd    8a91b4000000
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x004046e3    c744240800000000
    asm("{disp8} mov        dword ptr [esp + 0x04], edx");                   // 0x004046eb    89542404
    asm("{disp8} fild       dword ptr [esp + 0x04]");                        // 0x004046ef    db442404
    asm("{disp8} mov        dword ptr [esp + 0x04], esi");                   // 0x004046f3    89742404
    asm("{disp8} fidiv      dword ptr [esp + 0x04]");                        // 0x004046f7    da742404
    asm("{disp32} fcomp     dword ptr [eax + 0x000001a0]");                  // 0x004046fb    d898a0010000
    asm("fnstsw             ax");                                            // 0x00404701    dfe0
    asm("test               ah, 0x01");                                      // 0x00404703    f6c401
    asm("{disp8} jne        _jmp_addr_0x00404712");                          // 0x00404706    750a
    asm("mov                eax, 0x00000001");                               // 0x00404708    b801000000
    asm("pop                esi");                                           // 0x0040470d    5e
    asm("add                esp, 0x08");                                     // 0x0040470e    83c408
    asm("ret");                                                              // 0x00404711    c3
    asm("_jmp_addr_0x00404712:");
    asm("xor.s              eax, eax");                                      // 0x00404712    33c0
    asm("pop                esi");                                           // 0x00404714    5e
    asm("add                esp, 0x08");                                     // 0x00404715    83c408
    asm("ret");                                                              // 0x00404718    c3
    __builtin_unreachable();
}

bool __fastcall Built__5AbodeFv(struct MultiMapFixed* this)
{
    asm("push               esi");                                           // 0x00404720    56
    asm("mov.s              esi, ecx");                                      // 0x00404721    8bf1
    asm("call               ?Built@MultiMapFixed@@UAE_NXZ");                 // 0x00404723    e888a41200
    asm("mov                eax, dword ptr [esi]");                          // 0x00404728    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040472a    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0040472c    ff5048
    asm("test               eax, eax");                                      // 0x0040472f    85c0
    asm("{disp8} je         _jmp_addr_0x0040478a");                          // 0x00404731    7457
    asm("mov                edx, dword ptr [esi]");                          // 0x00404733    8b16
    asm("mov.s              ecx, esi");                                      // 0x00404735    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00404737    ff5248
    asm("mov                edx, dword ptr [eax]");                          // 0x0040473a    8b10
    asm("mov.s              ecx, eax");                                      // 0x0040473c    8bc8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0040473e    ff521c
    asm("test               eax, eax");                                      // 0x00404741    85c0
    asm("{disp8} je         _jmp_addr_0x0040478a");                          // 0x00404743    7445
    asm("mov                eax, dword ptr [esi]");                          // 0x00404745    8b06
    asm("mov.s              ecx, esi");                                      // 0x00404747    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404749    ff5048
    asm("mov                edx, dword ptr [eax]");                          // 0x0040474c    8b10
    asm("mov.s              ecx, eax");                                      // 0x0040474e    8bc8
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00404750    ff521c
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000a44]");             // 0x00404753    8b88440a0000
    asm("push               esi");                                           // 0x00404759    56
    asm("call               _jmp_addr_0x0056a3f0");                          // 0x0040475a    e8915c1600
    asm("mov                eax, dword ptr [esi]");                          // 0x0040475f    8b06
    asm("mov.s              ecx, esi");                                      // 0x00404761    8bce
    asm("call               dword ptr [eax + 0x490]");                       // 0x00404763    ff9090040000
    asm("test               eax, eax");                                      // 0x00404769    85c0
    asm("push               0x1");                                           // 0x0040476b    6a01
    asm("{disp8} je         _jmp_addr_0x0040477a");                          // 0x0040476d    740b
    asm("mov                edx, dword ptr [esi]");                          // 0x0040476f    8b16
    asm("push               0x4");                                           // 0x00404771    6a04
    asm("mov.s              ecx, esi");                                      // 0x00404773    8bce
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00404775    ff521c
    asm("{disp8} jmp        _jmp_addr_0x00404783");                          // 0x00404778    eb09
    asm("_jmp_addr_0x0040477a:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0040477a    8b06
    asm("push               0x3");                                           // 0x0040477c    6a03
    asm("mov.s              ecx, esi");                                      // 0x0040477e    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00404780    ff501c
    asm("_jmp_addr_0x00404783:");
    asm("mov.s              ecx, eax");                                      // 0x00404783    8bc8
    asm("call               _jmp_addr_0x0064da80");                          // 0x00404785    e8f6922400
    asm("_jmp_addr_0x0040478a:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0040478a    8b16
    asm("mov.s              ecx, esi");                                      // 0x0040478c    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0040478e    ff5248
    asm("test               eax, eax");                                      // 0x00404791    85c0
    asm("{disp8} je         _jmp_addr_0x0040479f");                          // 0x00404793    740a
    asm("mov                eax, dword ptr [esi]");                          // 0x00404795    8b06
    asm("mov.s              ecx, esi");                                      // 0x00404797    8bce
    asm("call               dword ptr [eax + 0x914]");                       // 0x00404799    ff9014090000
    asm("_jmp_addr_0x0040479f:");
    asm("mov                eax, 0x00000001");                               // 0x0040479f    b801000000
    asm("pop                esi");                                           // 0x004047a4    5e
    asm("ret");                                                              // 0x004047a5    c3
    __builtin_unreachable();
}

bool __fastcall Repaired__5AbodeFv(struct MultiMapFixed* this)
{
    asm("push               esi");                                           // 0x004047b0    56
    asm("mov.s              esi, ecx");                                      // 0x004047b1    8bf1
    asm("call               ?Repaired@MultiMapFixed@@UAE_NXZ");              // 0x004047b3    e8b8a41200
    asm("mov                eax, dword ptr [esi]");                          // 0x004047b8    8b06
    asm("mov.s              ecx, esi");                                      // 0x004047ba    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x004047bc    ff5048
    asm("test               eax, eax");                                      // 0x004047bf    85c0
    asm("{disp8} je         _jmp_addr_0x004047cd");                          // 0x004047c1    740a
    asm("mov                edx, dword ptr [esi]");                          // 0x004047c3    8b16
    asm("mov.s              ecx, esi");                                      // 0x004047c5    8bce
    asm("call               dword ptr [edx + 0x914]");                       // 0x004047c7    ff9214090000
    asm("_jmp_addr_0x004047cd:");
    asm("mov                eax, 0x00000001");                               // 0x004047cd    b801000000
    asm("pop                esi");                                           // 0x004047d2    5e
    asm("ret");                                                              // 0x004047d3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall MakeFunctional__5AbodeFv(struct Abode* this)
{
    asm("sub                esp, 0x18");                                     // 0x004047e0    83ec18
    asm("push               ebx");                                           // 0x004047e3    53
    asm("push               esi");                                           // 0x004047e4    56
    asm("mov.s              esi, ecx");                                      // 0x004047e5    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x004047e7    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x004047e9    ff5048
    asm("mov.s              ebx, eax");                                      // 0x004047ec    8bd8
    asm("test               ebx, ebx");                                      // 0x004047ee    85db
    asm("{disp32} je        _jmp_addr_0x00404955");                          // 0x004047f0    0f845f010000
    asm("mov                edx, dword ptr [esi]");                          // 0x004047f6    8b16
    asm("mov.s              ecx, esi");                                      // 0x004047f8    8bce
    asm("call               dword ptr [edx + 0x88c]");                       // 0x004047fa    ff928c080000
    asm("{disp8} mov        cl, byte ptr [esi + 0x58]");                     // 0x00404800    8a4e58
    asm("test               eax, eax");                                      // 0x00404803    85c0
    asm("sete               al");                                            // 0x00404805    0f94c0
    asm("and                al, 0x01");                                      // 0x00404808    2401
    asm("shl                al, 2");                                         // 0x0040480a    c0e002
    asm("and                cl, -0x05");                                     // 0x0040480d    80e1fb
    asm("or.s               al, cl");                                        // 0x00404810    0ac1
    asm("{disp8} mov        byte ptr [esi + 0x58], al");                     // 0x00404812    884658
    asm("{disp8} mov        al, byte ptr [esi + 0x7c]");                     // 0x00404815    8a467c
    asm("test               al, 0x02");                                      // 0x00404818    a802
    asm("{disp8} jne        _jmp_addr_0x00404829");                          // 0x0040481a    750d
    asm("or                 al, 2");                                         // 0x0040481c    0c02
    asm("push               esi");                                           // 0x0040481e    56
    asm("mov.s              ecx, ebx");                                      // 0x0040481f    8bcb
    asm("{disp8} mov        byte ptr [esi + 0x7c], al");                     // 0x00404821    88467c
    asm("call               ?AddAbodeToTownStats@Town@@QAEXPAVAbode@@@Z");   // 0x00404824    e8f7513300
    asm("_jmp_addr_0x00404829:");
    asm("mov.s              ecx, esi");                                      // 0x00404829    8bce
    asm("call               ?GetRoomLeftForAdults@Abode@@QAEHXZ");           // 0x0040482b    e830feffff
    asm("test               eax, eax");                                      // 0x00404830    85c0
    asm("{disp8} je         _jmp_addr_0x0040483b");                          // 0x00404832    7407
    asm("mov.s              ecx, ebx");                                      // 0x00404834    8bcb
    asm("call               ?AllVillagersCheckNeedNewAbode@Town@@QAEXXZ");   // 0x00404836    e815893300
    asm("_jmp_addr_0x0040483b:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0040483b    8b16
    asm("mov.s              ecx, esi");                                      // 0x0040483d    8bce
    asm("call               dword ptr [edx + 0x88c]");                       // 0x0040483f    ff928c080000
    asm("test               eax, eax");                                      // 0x00404845    85c0
    asm("{disp8} je         _jmp_addr_0x0040485f");                          // 0x00404847    7416
    asm("mov                eax, dword ptr [esi]");                          // 0x00404849    8b06
    asm("mov.s              ecx, esi");                                      // 0x0040484b    8bce
    asm("call               dword ptr [eax + 0x890]");                       // 0x0040484d    ff9090080000
    asm("test               eax, eax");                                      // 0x00404853    85c0
    asm("{disp8} je         _jmp_addr_0x0040485f");                          // 0x00404855    7408
    asm("push               esi");                                           // 0x00404857    56
    asm("mov.s              ecx, ebx");                                      // 0x00404858    8bcb
    asm("call               ?RemoveBuildingSite@Town@@QAEIPAVMultiMapFixed@@@Z");// 0x0040485a    e8c1713300
    asm("_jmp_addr_0x0040485f:");
    asm("push               edi");                                           // 0x0040485f    57
    asm("mov.s              ecx, ebx");                                      // 0x00404860    8bcb
    asm("call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ");     // 0x00404862    e8496d3300
    asm("test               eax, eax");                                      // 0x00404867    85c0
    asm("{disp32} je        _jmp_addr_0x0040494d");                          // 0x00404869    0f84de000000
    asm("mov.s              ecx, ebx");                                      // 0x0040486f    8bcb
    asm("call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ");     // 0x00404871    e83a6d3300
    asm("cmp.s              eax, esi");                                      // 0x00404876    3bc6
    asm("{disp32} je        _jmp_addr_0x0040494d");                          // 0x00404878    0f84cf000000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0040487e    8b0d5c19d000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00205a40]");             // 0x00404884    8b81405a2000
    asm("test               eax, eax");                                      // 0x0040488a    85c0
    asm("{disp32} jbe       _jmp_addr_0x0040494d");                          // 0x0040488c    0f86bb000000
    asm("push               0x000003fb");                                    // 0x00404892    68fb030000
    asm("push               0x009c7fbc");                                    // 0x00404897    68bc7f9c00
    asm("push               0x24");                                          // 0x0040489c    6a24
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x0040489e    e84d1e0300
    asm("add                esp, 0x0c");                                     // 0x004048a3    83c40c
    asm("test               eax, eax");                                      // 0x004048a6    85c0
    asm("{disp8} je         _jmp_addr_0x004048b9");                          // 0x004048a8    740f
    asm("push               0x0");                                           // 0x004048aa    6a00
    asm("push               0x0");                                           // 0x004048ac    6a00
    asm("mov.s              ecx, eax");                                      // 0x004048ae    8bc8
    asm("call               @__ct__9GFootpathFP16GameThingWithPosP16GameThingWithPos@16");                          // 0x004048b0    e8fb051300
    asm("mov.s              edi, eax");                                      // 0x004048b5    8bf8
    asm("{disp8} jmp        _jmp_addr_0x004048bb");                          // 0x004048b7    eb02
    asm("_jmp_addr_0x004048b9:");
    asm("xor.s              edi, edi");                                      // 0x004048b9    33ff
    asm("_jmp_addr_0x004048bb:");
    asm("mov                edx, dword ptr [esi]");                          // 0x004048bb    8b16
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x004048bd    8d44240c
    asm("push               eax");                                           // 0x004048c1    50
    asm("mov.s              ecx, esi");                                      // 0x004048c2    8bce
    asm("call               dword ptr [edx + 0x104]");                       // 0x004048c4    ff9204010000
    asm("mov.s              ecx, ebx");                                      // 0x004048ca    8bcb
    asm("call               ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ");     // 0x004048cc    e8df6c3300
    asm("mov.s              ebx, eax");                                      // 0x004048d1    8bd8
    asm("mov                edx, dword ptr [ebx]");                          // 0x004048d3    8b13
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x004048d5    8d442418
    asm("push               eax");                                           // 0x004048d9    50
    asm("mov.s              ecx, ebx");                                      // 0x004048da    8bcb
    asm("call               dword ptr [edx + 0x104]");                       // 0x004048dc    ff9204010000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x004048e2    8d4c240c
    asm("push               ecx");                                           // 0x004048e6    51
    asm("mov.s              ecx, edi");                                      // 0x004048e7    8bcf
    asm("call               @AddPos__9GFootpathFRC9MapCoords@12");           // 0x004048e9    e8d2061300
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x004048ee    8d542418
    asm("push               edx");                                           // 0x004048f2    52
    asm("mov.s              ecx, edi");                                      // 0x004048f3    8bcf
    asm("call               @AddPos__9GFootpathFRC9MapCoords@12");           // 0x004048f5    e8c6061300
    asm("{disp8} mov        edx, dword ptr [edi + 0x14]");                   // 0x004048fa    8b5714
    asm("mov.s              eax, edx");                                      // 0x004048fd    8bc2
    asm("test               eax, eax");                                      // 0x004048ff    85c0
    asm("{disp8} je         _jmp_addr_0x00404910");                          // 0x00404901    740d
    asm("_jmp_addr_0x00404903:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x24]");                   // 0x00404903    8b4824
    asm("test               ecx, ecx");                                      // 0x00404906    85c9
    asm("{disp8} je         _jmp_addr_0x00404910");                          // 0x00404908    7406
    asm("mov.s              eax, ecx");                                      // 0x0040490a    8bc1
    asm("test               eax, eax");                                      // 0x0040490c    85c0
    asm("{disp8} jne        _jmp_addr_0x00404903");                          // 0x0040490e    75f3
    asm("_jmp_addr_0x00404910:");
    asm("push               0x0");                                           // 0x00404910    6a00
    asm("push               eax");                                           // 0x00404912    50
    asm("push               edx");                                           // 0x00404913    52
    asm("call               ?AttemptRerenderFootpathWithCreatureRP@GFootpath@@SAIPAVGFootpathNode@@0ABUMapCoords@@@Z       ");                          // 0x00404914    e8b73e1300
    asm("add                esp, 0x0c");                                     // 0x00404919    83c40c
    asm("test               eax, eax");                                      // 0x0040491c    85c0
    asm("{disp8} jne        _jmp_addr_0x00404937");                          // 0x0040491e    7517
    asm("mov                eax, dword ptr [edi]");                          // 0x00404920    8b07
    asm("push               0x0");                                           // 0x00404922    6a00
    asm("mov.s              ecx, edi");                                      // 0x00404924    8bcf
    asm("call               dword ptr [eax + 0xc]");                         // 0x00404926    ff500c
    asm("mov.s              ecx, esi");                                      // 0x00404929    8bce
    asm("call               _jmp_addr_0x00404960");                          // 0x0040492b    e830000000
    asm("pop                edi");                                           // 0x00404930    5f
    asm("pop                esi");                                           // 0x00404931    5e
    asm("pop                ebx");                                           // 0x00404932    5b
    asm("add                esp, 0x18");                                     // 0x00404933    83c418
    asm("ret");                                                              // 0x00404936    c3
    asm("_jmp_addr_0x00404937:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00404937    8b16
    asm("push               edi");                                           // 0x00404939    57
    asm("mov.s              ecx, esi");                                      // 0x0040493a    8bce
    asm("call               dword ptr [edx + 0x84]");                        // 0x0040493c    ff9284000000
    asm("mov                eax, dword ptr [ebx]");                          // 0x00404942    8b03
    asm("push               edi");                                           // 0x00404944    57
    asm("mov.s              ecx, ebx");                                      // 0x00404945    8bcb
    asm("call               dword ptr [eax + 0x84]");                        // 0x00404947    ff9084000000
    asm("_jmp_addr_0x0040494d:");
    asm("mov.s              ecx, esi");                                      // 0x0040494d    8bce
    asm("call               _jmp_addr_0x00404960");                          // 0x0040494f    e80c000000
    asm("pop                edi");                                           // 0x00404954    5f
    asm("_jmp_addr_0x00404955:");
    asm("pop                esi");                                           // 0x00404955    5e
    asm("pop                ebx");                                           // 0x00404956    5b
    asm("add                esp, 0x18");                                     // 0x00404957    83c418
    asm("ret");                                                              // 0x0040495a    c3
    asm("call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9");                          // 0x0040495b    e819cfffff
    asm("_jmp_addr_0x00404960:");
    asm("sub                esp, 0x08");                                     // 0x00404960    83ec08
    asm("push               ebx");                                           // 0x00404963    53
    asm("push               ebp");                                           // 0x00404964    55
    asm("push               esi");                                           // 0x00404965    56
    asm("push               edi");                                           // 0x00404966    57
    asm("mov.s              edi, ecx");                                      // 0x00404967    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x00404969    8b07
    asm("xor.s              ebp, ebp");                                      // 0x0040496b    33ed
    asm("{disp8} mov        dword ptr [esp + 0x10], ebp");                   // 0x0040496d    896c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                   // 0x00404971    896c2414
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404975    ff5048
    asm("test               eax, eax");                                      // 0x00404978    85c0
    asm("{disp32} je        _jmp_addr_0x00404a8d");                          // 0x0040497a    0f840d010000
    asm("mov                edx, dword ptr [edi]");                          // 0x00404980    8b17
    asm("mov.s              ecx, edi");                                      // 0x00404982    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00404984    ff5248
    asm("cmp                dword ptr [eax + 0x000005fc], ebp");             // 0x00404987    39a8fc050000
    asm("{disp32} jne       _jmp_addr_0x00404a8d");                          // 0x0040498d    0f85fa000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00404993    8b07
    asm("mov.s              ecx, edi");                                      // 0x00404995    8bcf
    asm("call               dword ptr [eax + 0x48]");                        // 0x00404997    ff5048
    asm("mov.s              ebx, eax");                                      // 0x0040499a    8bd8
    asm("{disp32} mov       esi, dword ptr [ebx + 0x00000754]");             // 0x0040499c    8bb354070000
    asm("test               esi, esi");                                      // 0x004049a2    85f6
    asm("{disp8} je         _jmp_addr_0x00404a24");                          // 0x004049a4    747e
    asm("_jmp_addr_0x004049a6:");
    asm("cmp.s              esi, edi");                                      // 0x004049a6    3bf7
    asm("{disp8} je         _jmp_addr_0x004049fa");                          // 0x004049a8    7450
    asm("mov                edx, dword ptr [esi]");                          // 0x004049aa    8b16
    asm("mov.s              ecx, esi");                                      // 0x004049ac    8bce
    asm("call               dword ptr [edx + 0x880]");                       // 0x004049ae    ff9280080000
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x004049b4    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x004049ba    dfe0
    asm("test               ah, 0x01");                                      // 0x004049bc    f6c401
    asm("{disp8} jne        _jmp_addr_0x004049fa");                          // 0x004049bf    7539
    asm("mov                eax, dword ptr [esi]");                          // 0x004049c1    8b06
    asm("mov.s              ecx, esi");                                      // 0x004049c3    8bce
    asm("call               dword ptr [eax + 0x8c4]");                       // 0x004049c5    ff90c4080000
    asm("cmp                eax, 0x24");                                     // 0x004049cb    83f824
    asm("{disp8} jne        _jmp_addr_0x004049d6");                          // 0x004049ce    7506
    asm("{disp8} inc        dword ptr [esp + 0x10]");                        // 0x004049d0    ff442410
    asm("{disp8} jmp        _jmp_addr_0x004049fa");                          // 0x004049d4    eb24
    asm("_jmp_addr_0x004049d6:");
    asm("mov                edx, dword ptr [esi]");                          // 0x004049d6    8b16
    asm("mov.s              ecx, esi");                                      // 0x004049d8    8bce
    asm("call               dword ptr [edx + 0x1e0]");                       // 0x004049da    ff92e0010000
    asm("test               eax, eax");                                      // 0x004049e0    85c0
    asm("{disp8} je         _jmp_addr_0x004049e7");                          // 0x004049e2    7403
    asm("inc                ebp");                                           // 0x004049e4    45
    asm("{disp8} jmp        _jmp_addr_0x004049fa");                          // 0x004049e5    eb13
    asm("_jmp_addr_0x004049e7:");
    asm("mov                eax, dword ptr [esi]");                          // 0x004049e7    8b06
    asm("mov.s              ecx, esi");                                      // 0x004049e9    8bce
    asm("call               dword ptr [eax + 0x8c4]");                       // 0x004049eb    ff90c4080000
    asm("cmp                eax, 0x02");                                     // 0x004049f1    83f802
    asm("{disp8} jne        _jmp_addr_0x004049fa");                          // 0x004049f4    7504
    asm("{disp8} inc        dword ptr [esp + 0x14]");                        // 0x004049f6    ff442414
    asm("_jmp_addr_0x004049fa:");
    asm("test               esi, esi");                                      // 0x004049fa    85f6
    asm("{disp8} jne        _jmp_addr_0x00404a06");                          // 0x004049fc    7508
    asm("{disp32} mov       esi, dword ptr [ebx + 0x00000754]");             // 0x004049fe    8bb354070000
    asm("{disp8} jmp        _jmp_addr_0x00404a0c");                          // 0x00404a04    eb06
    asm("_jmp_addr_0x00404a06:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x0000009c]");             // 0x00404a06    8bb69c000000
    asm("_jmp_addr_0x00404a0c:");
    asm("test               esi, esi");                                      // 0x00404a0c    85f6
    asm("{disp8} jne        _jmp_addr_0x004049a6");                          // 0x00404a0e    7596
    asm("test               ebp, ebp");                                      // 0x00404a10    85ed
    asm("{disp8} je         _jmp_addr_0x00404a24");                          // 0x00404a12    7410
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00404a14    8b442410
    asm("test               eax, eax");                                      // 0x00404a18    85c0
    asm("{disp8} je         _jmp_addr_0x00404a24");                          // 0x00404a1a    7408
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00404a1c    8b442414
    asm("test               eax, eax");                                      // 0x00404a20    85c0
    asm("{disp8} jne        _jmp_addr_0x00404a8d");                          // 0x00404a22    7569
    asm("_jmp_addr_0x00404a24:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00404a24    8b17
    asm("mov.s              ecx, edi");                                      // 0x00404a26    8bcf
    asm("call               dword ptr [edx + 0x8c4]");                       // 0x00404a28    ff92c4080000
    asm("cmp                eax, 0x24");                                     // 0x00404a2e    83f824
    asm("{disp8} jne        _jmp_addr_0x00404a39");                          // 0x00404a31    7506
    asm("{disp8} inc        dword ptr [esp + 0x10]");                        // 0x00404a33    ff442410
    asm("{disp8} jmp        _jmp_addr_0x00404a5d");                          // 0x00404a37    eb24
    asm("_jmp_addr_0x00404a39:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00404a39    8b07
    asm("mov.s              ecx, edi");                                      // 0x00404a3b    8bcf
    asm("call               dword ptr [eax + 0x1e0]");                       // 0x00404a3d    ff90e0010000
    asm("test               eax, eax");                                      // 0x00404a43    85c0
    asm("{disp8} je         _jmp_addr_0x00404a4a");                          // 0x00404a45    7403
    asm("inc                ebp");                                           // 0x00404a47    45
    asm("{disp8} jmp        _jmp_addr_0x00404a5d");                          // 0x00404a48    eb13
    asm("_jmp_addr_0x00404a4a:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00404a4a    8b17
    asm("mov.s              ecx, edi");                                      // 0x00404a4c    8bcf
    asm("call               dword ptr [edx + 0x8c4]");                       // 0x00404a4e    ff92c4080000
    asm("cmp                eax, 0x02");                                     // 0x00404a54    83f802
    asm("{disp8} jne        _jmp_addr_0x00404a5d");                          // 0x00404a57    7504
    asm("{disp8} inc        dword ptr [esp + 0x14]");                        // 0x00404a59    ff442414
    asm("_jmp_addr_0x00404a5d:");
    asm("test               ebp, ebp");                                      // 0x00404a5d    85ed
    asm("{disp8} je         _jmp_addr_0x00404a8d");                          // 0x00404a5f    742c
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00404a61    8b442410
    asm("test               eax, eax");                                      // 0x00404a65    85c0
    asm("{disp8} je         _jmp_addr_0x00404a8d");                          // 0x00404a67    7424
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00404a69    8b442414
    asm("test               eax, eax");                                      // 0x00404a6d    85c0
    asm("{disp8} je         _jmp_addr_0x00404a8d");                          // 0x00404a6f    741c
    asm("push               0x1");                                           // 0x00404a71    6a01
    asm("{disp32} mov       dword ptr [ebx + 0x000005fc], 0x00000001");      // 0x00404a73    c783fc05000001000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00404a7d    8b07
    asm("push               0xc");                                           // 0x00404a7f    6a0c
    asm("mov.s              ecx, edi");                                      // 0x00404a81    8bcf
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00404a83    ff501c
    asm("mov.s              ecx, eax");                                      // 0x00404a86    8bc8
    asm("call               _jmp_addr_0x0064da80");                          // 0x00404a88    e8f38f2400
    asm("_jmp_addr_0x00404a8d:");
    asm("pop                edi");                                           // 0x00404a8d    5f
    asm("pop                esi");                                           // 0x00404a8e    5e
    asm("pop                ebp");                                           // 0x00404a8f    5d
    asm("pop                ebx");                                           // 0x00404a90    5b
    asm("add                esp, 0x08");                                     // 0x00404a91    83c408
    asm("ret");                                                              // 0x00404a94    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall GetMesh__5AbodeCFv(const struct Object* this)
{
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x28]");                   // 0x00404aa0    8b4928
    asm("mov                eax, dword ptr [ecx]");                          // 0x00404aa3    8b01
    asm("{disp8} jmp        dword ptr [eax + 0x2c]");                        // 0x00404aa5    ff602c
    asm("nop");                                                              // 0x00404aa8    90
    asm("nop");                                                              // 0x00404aa9    90
    asm("nop");                                                              // 0x00404aaa    90
    asm("nop");                                                              // 0x00404aab    90
    asm("nop");                                                              // 0x00404aac    90
    asm("nop");                                                              // 0x00404aad    90
    asm("nop");                                                              // 0x00404aae    90
    asm("nop");                                                              // 0x00404aaf    90
    asm("sub                esp, 0x14");                                     // 0x00404ab0    83ec14
    asm("xor.s              eax, eax");                                      // 0x00404ab3    33c0
    asm("xor.s              ecx, ecx");                                      // 0x00404ab5    33c9
    asm("{disp8} mov        dword ptr [esp + 0x00], ecx");                   // 0x00404ab7    894c2400
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x00404abb    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00404abf    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00404ac3    894c240c
    asm("{disp8} mov        word ptr [esp + 0x10], cx");                     // 0x00404ac7    66894c2410
    asm("mov                ecx, 0x00c3c7e8");                               // 0x00404acc    b9e8c7c300
    asm("_jmp_addr_0x00404ad1:");
    asm("mov                edx, dword ptr [ecx]");                          // 0x00404ad1    8b11
    asm("{disp8} inc        word ptr [esp + edx * 0x2 + 0x00]");             // 0x00404ad3    66ff445400
    asm("{disp8} lea        edx, dword ptr [esp + edx * 0x2 + 0x00]");       // 0x00404ad8    8d545400
    asm("add                ecx, 0x000001c8");                               // 0x00404adc    81c1c8010000
    asm("{disp32} lea       edx, dword ptr [ecx + -0x00000158]");            // 0x00404ae2    8d91a8feffff
    asm("cmp                edx, OFFSET _AbodeInfos + 0x93 * 0x1c8");        // 0x00404ae8    81fa68ccc400
    asm(".byte              0x72, 0xe1");// {disp8} jb _jmp_addr_0x00404ad1  // 0x00404aee    72e1
    asm("push               esi");                                           // 0x00404af0    56
    asm("{disp8} lea        edx, dword ptr [esp + 0x04]");                   // 0x00404af1    8d542404
    asm("mov                esi, 0x00000009");                               // 0x00404af5    be09000000
    asm("_jmp_addr_0x00404afa:");
    asm("xor.s              ecx, ecx");                                      // 0x00404afa    33c9
    asm("mov                cx, word ptr [edx]");                            // 0x00404afc    668b0a
    asm("cmp.s              ecx, eax");                                      // 0x00404aff    3bc8
    asm("{disp8} jbe        _jmp_addr_0x00404b05");                          // 0x00404b01    7602
    asm("mov.s              eax, ecx");                                      // 0x00404b03    8bc1
    asm("_jmp_addr_0x00404b05:");
    asm("add                edx, 0x02");                                     // 0x00404b05    83c202
    asm("dec                esi");                                           // 0x00404b08    4e
    asm("{disp8} jne        _jmp_addr_0x00404afa");                          // 0x00404b09    75ef
    asm("pop                esi");                                           // 0x00404b0b    5e
    asm("add                esp, 0x14");                                     // 0x00404b0c    83c414
    asm("ret");                                                              // 0x00404b0f    c3
    __builtin_unreachable();
}
