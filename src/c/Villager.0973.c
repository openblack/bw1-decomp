#include "Villager.h"

__attribute__((XOR32rr_REV))
struct Villager* __fastcall __ct__8VillagerFRC9MapCoordsPC13GVillagerInfoUli(struct Villager* this, const void* edx, struct MapCoords* coords, struct GVillagerInfo* info, uint32_t age, bool skeleton)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x0074f950    8b442404
    asm("push               ebx");                                            // 0x0074f954    53
    asm("push               esi");                                            // 0x0074f955    56
    asm("push               edi");                                            // 0x0074f956    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                    // 0x0074f957    8b7c2414
    asm("push               edi");                                            // 0x0074f95b    57
    asm("mov.s              esi, ecx");                                       // 0x0074f95c    8bf1
    asm("push               eax");                                            // 0x0074f95e    50
    asm("call               @__ct__6LivingFRC9MapCoordsPC11GLivingInfo@16");  // 0x0074f95f    e85cc5e9ff
    asm("xor.s              ebx, ebx");                                       // 0x0074f964    33db
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], ebx");              // 0x0074f966    899ee4000000
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], ebx");              // 0x0074f96c    899efc000000
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], ebx");              // 0x0074f972    899e0c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], ebx");              // 0x0074f978    899e10010000
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], ebx");              // 0x0074f97e    899e0c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], ebx");              // 0x0074f984    899e10010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], ebx");              // 0x0074f98a    899e10010000
    asm("{disp32} mov       dword ptr [esi + 0x00000114], ebx");              // 0x0074f990    899e14010000
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], ebx");              // 0x0074f996    899e0c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], ebx");              // 0x0074f99c    899e10010000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], ebx");              // 0x0074f9a2    899e18010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], ebx");              // 0x0074f9a8    899e1c010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], ebx");              // 0x0074f9ae    899e1c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000120], ebx");              // 0x0074f9b4    899e20010000
    asm("{disp32} mov       dword ptr [esi + 0x00000118], ebx");              // 0x0074f9ba    899e18010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], ebx");              // 0x0074f9c0    899e1c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000120], ebx");              // 0x0074f9c6    899e20010000
    asm("{disp32} mov       dword ptr [esi + 0x00000124], ebx");              // 0x0074f9cc    899e24010000
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], ebx");              // 0x0074f9d2    899e1c010000
    asm("mov.s              ecx, esi");                                       // 0x0074f9d8    8bce
    asm("mov                dword ptr [esi], 0x008f7960");                    // 0x0074f9da    c70660798f00
    asm("call               ?SetToZero@Villager@@QAEXXZ");                    // 0x0074f9e0    e83b010000
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                    // 0x0074f9e5    8b442418
    asm("cmp                eax, dword ptr [edi + 0x00000138]");              // 0x0074f9e9    3b8738010000
    asm("{disp8} jae        _jmp_addr_0x0074f9f7");                           // 0x0074f9ef    7306
    asm("{disp32} mov       dword ptr [esi + 0x00000100], ebx");              // 0x0074f9f1    899e00010000
    asm("_jmp_addr_0x0074f9f7:");
    asm("push               eax");                                            // 0x0074f9f7    50
    asm("mov.s              ecx, esi");                                       // 0x0074f9f8    8bce
    asm("call               ?SetAge@Villager@@UAEXK@Z");                      // 0x0074f9fa    e8c12e0000
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x0074f9ff    8b7e28
    asm("{disp32} mov       byte ptr [esi + 0x000000f0], bl");                // 0x0074fa02    889ef0000000
    asm("cmp                dword ptr [edi + 0x000001f8], 0x01");             // 0x0074fa08    83bff801000001
    asm("{disp8} jne        _jmp_addr_0x0074fa18");                           // 0x0074fa0f    7507
    asm("{disp32} mov       word ptr [esi + 0x000000f8], bx");                // 0x0074fa11    66899ef8000000
    asm("_jmp_addr_0x0074fa18:");
    asm("push               0x7e");                                           // 0x0074fa18    6a7e
    asm("push               0x00c235dc");                                     // 0x0074fa1a    68dc35c200
    asm("push               0x3f19999a");                                     // 0x0074fa1f    689a99193f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                   // 0x0074fa24    e807ebf8ff
    asm("{disp32} fadd      dword ptr [edi + 0x000002c0]");                   // 0x0074fa29    d887c0020000
    asm("add                esp, 0x0c");                                      // 0x0074fa2f    83c40c
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                    // 0x0074fa32    d81d90a38a00
    asm("fnstsw             ax");                                             // 0x0074fa38    dfe0
    asm("test               ah, 0x01");                                       // 0x0074fa3a    f6c401
    asm("{disp8} je         _jmp_addr_0x0074fa5e");                           // 0x0074fa3d    741f
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x0074fa3f    8b7e28
    asm("push               0x7e");                                           // 0x0074fa42    6a7e
    asm("push               0x00c235dc");                                     // 0x0074fa44    68dc35c200
    asm("push               0x3f19999a");                                     // 0x0074fa49    689a99193f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                   // 0x0074fa4e    e8ddeaf8ff
    asm("{disp32} fadd      dword ptr [edi + 0x000002c0]");                   // 0x0074fa53    d887c0020000
    asm("add                esp, 0x0c");                                      // 0x0074fa59    83c40c
    asm("{disp8} jmp        _jmp_addr_0x0074fa64");                           // 0x0074fa5c    eb06
    asm("_jmp_addr_0x0074fa5e:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                    // 0x0074fa5e    d90590a38a00
    asm("_jmp_addr_0x0074fa64:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x0074fa64    8b4628
    asm("{disp32} fstp      dword ptr [esi + 0x000000e8]");                   // 0x0074fa67    d99ee8000000
    asm("{disp32} mov       edx, dword ptr [eax + 0x000002dc]");              // 0x0074fa6d    8b90dc020000
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x0074fa73    8b0d5c19d000
    asm("{disp32} mov       edi, dword ptr [ecx + 0x00205a40]");              // 0x0074fa79    8bb9405a2000
    asm("push               0x7f");                                           // 0x0074fa7f    6a7f
    asm("push               0x00c235dc");                                     // 0x0074fa81    68dc35c200
    asm("push               edx");                                            // 0x0074fa86    52
    asm("call               ?GameRand@GRand@@SAHJ@Z");                        // 0x0074fa87    e884eaf8ff
    asm("add                esp, 0x0c");                                      // 0x0074fa8c    83c40c
    asm("cmp.s              eax, edi");                                       // 0x0074fa8f    3bc7
    asm("{disp8} jae        _jmp_addr_0x0074faae");                           // 0x0074fa91    731b
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x0074fa93    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x000002dc]");              // 0x0074fa96    8b80dc020000
    asm("push               0x7f");                                           // 0x0074fa9c    6a7f
    asm("push               0x00c235dc");                                     // 0x0074fa9e    68dc35c200
    asm("push               eax");                                            // 0x0074faa3    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                        // 0x0074faa4    e867eaf8ff
    asm("add                esp, 0x0c");                                      // 0x0074faa9    83c40c
    asm("{disp8} jmp        _jmp_addr_0x0074fab0");                           // 0x0074faac    eb02
    asm("_jmp_addr_0x0074faae:");
    asm("mov.s              eax, edi");                                       // 0x0074faae    8bc7
    asm("_jmp_addr_0x0074fab0:");
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x0074fab0    8b0d5c19d000
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00205a40]");              // 0x0074fab6    8b91405a2000
    asm("push               0x00000080");                                     // 0x0074fabc    6880000000
    asm("sub.s              edx, eax");                                       // 0x0074fac1    2bd0
    asm("push               0x00c235dc");                                     // 0x0074fac3    68dc35c200
    asm("push               0x000001f4");                                     // 0x0074fac8    68f4010000
    asm("{disp32} mov       dword ptr [esi + 0x000000ec], edx");              // 0x0074facd    8996ec000000
    asm("call               ?GameRand@GRand@@SAHJ@Z");                        // 0x0074fad3    e838eaf8ff
    asm("add                esp, 0x0c");                                      // 0x0074fad8    83c40c
    asm("inc                eax");                                            // 0x0074fadb    40
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                    // 0x0074fadc    8d4e14
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                      // 0x0074fadf    66894658
    asm("call               ?IsWater@MapCoords@@QBEIXZ");                     // 0x0074fae3    e8c83aebff
    asm("test               eax, eax");                                       // 0x0074fae8    85c0
    asm("{disp8} je         _jmp_addr_0x0074faf0");                           // 0x0074faea    7404
    asm("push               0x10");                                           // 0x0074faec    6a10
    asm("{disp8} jmp        _jmp_addr_0x0074faf2");                           // 0x0074faee    eb02
    asm("_jmp_addr_0x0074faf0:");
    asm("push               0x55");                                           // 0x0074faf0    6a55
    asm("_jmp_addr_0x0074faf2:");
    asm("push               ebx");                                            // 0x0074faf2    53
    asm("mov.s              ecx, esi");                                       // 0x0074faf3    8bce
    asm("call               ?SetState@Villager@@UAEXKE@Z");                   // 0x0074faf5    e8963b0000
    asm("{disp32} mov       eax, dword ptr [_game]");                         // 0x0074fafa    a15c19d000
    asm("{disp32} inc       dword ptr [eax + 0x00205a54]");                   // 0x0074faff    ff80545a2000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                    // 0x0074fb05    8b44241c
    asm("push               eax");                                            // 0x0074fb09    50
    asm("mov.s              ecx, esi");                                       // 0x0074fb0a    8bce
    asm("call               ?SetSkeleton@Villager@@QAEXH@Z");                 // 0x0074fb0c    e8af670000
    asm("pop                edi");                                            // 0x0074fb11    5f
    asm("mov.s              eax, esi");                                       // 0x0074fb12    8bc6
    asm("pop                esi");                                            // 0x0074fb14    5e
    asm("pop                ebx");                                            // 0x0074fb15    5b
    asm("ret                0x0010");                                         // 0x0074fb16    c21000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetToZero__8VillagerFv(struct Villager* this)
{
    asm("xor.s              eax, eax");                                       // 0x0074fb20    33c0
    asm("{disp32} mov       word ptr [ecx + 0x000000e0], ax");                // 0x0074fb22    668981e0000000
    asm("{disp32} mov       dword ptr [ecx + 0x000000e8], eax");              // 0x0074fb29    8981e8000000
    asm("{disp32} mov       byte ptr [ecx + 0x000000f0], al");                // 0x0074fb2f    8881f0000000
    asm("{disp32} mov       word ptr [ecx + 0x000000f4], ax");                // 0x0074fb35    668981f4000000
    asm("{disp32} mov       word ptr [ecx + 0x000000f6], ax");                // 0x0074fb3c    668981f6000000
    asm("{disp32} mov       dword ptr [ecx + 0x000000fc], eax");              // 0x0074fb43    8981fc000000
    asm("{disp32} mov       dword ptr [ecx + 0x00000128], eax");              // 0x0074fb49    898128010000
    asm("{disp32} mov       byte ptr [ecx + 0x000000f2], al");                // 0x0074fb4f    8881f2000000
    asm("{disp32} mov       dword ptr [ecx + 0x0000012c], eax");              // 0x0074fb55    89812c010000
    asm("{disp32} mov       dword ptr [ecx + 0x000000ec], eax");              // 0x0074fb5b    8981ec000000
    asm("{disp32} mov       dword ptr [ecx + 0x00000100], eax");              // 0x0074fb61    898100010000
    asm("{disp32} mov       dword ptr [ecx + 0x00000104], eax");              // 0x0074fb67    898104010000
    asm("{disp32} mov       dword ptr [ecx + 0x00000108], eax");              // 0x0074fb6d    898108010000
    asm("ret");                                                               // 0x0074fb73    c3
    __builtin_unreachable();
}

void __fastcall InitialiseScale__8VillagerFUl(struct Villager* this, const void* edx, unsigned long param_1)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x0074fb80    8b4128
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x0074fb83    8b542404
    asm("push               esi");                                            // 0x0074fb87    56
    asm("cmp                edx, dword ptr [eax + 0x00000138]");              // 0x0074fb88    3b9038010000
    asm("{disp8} jae        _jmp_addr_0x0074fba4");                           // 0x0074fb8e    7314
    asm("{disp32} mov       eax, dword ptr [eax + edx * 0x4 + 0x000002e4]");  // 0x0074fb90    8b8490e4020000
    asm("mov                esi, dword ptr [ecx]");                           // 0x0074fb97    8b31
    asm("push               eax");                                            // 0x0074fb99    50
    asm("call               dword ptr [esi + 0x124]");                        // 0x0074fb9a    ff9624010000
    asm("pop                esi");                                            // 0x0074fba0    5e
    asm("ret                0x0004");                                         // 0x0074fba1    c20400
    asm("_jmp_addr_0x0074fba4:");
    asm("mov                edx, dword ptr [ecx]");                           // 0x0074fba4    8b11
    asm("push               0x3f666666");                                     // 0x0074fba6    686666663f
    asm("call               dword ptr [edx + 0x124]");                        // 0x0074fbab    ff9224010000
    asm("pop                esi");                                            // 0x0074fbb1    5e
    asm("ret                0x0004");                                         // 0x0074fbb2    c20400
    __builtin_unreachable();
}

void __fastcall __dt__8VillagerFv(struct Villager* this)
{
    asm("test               byte ptr [ecx + 0x000000e0], 0x40");              // 0x0074fbc0    f681e000000040
    asm("mov                dword ptr [ecx], 0x008f7960");                    // 0x0074fbc7    c70160798f00
    asm("{disp8} jne        _jmp_addr_0x0074fbda");                           // 0x0074fbcd    750b
    asm("{disp32} mov       eax, dword ptr [_game]");                         // 0x0074fbcf    a15c19d000
    asm("dec                dword ptr [eax + 0x00205a54]");                   // 0x0074fbd4    ff88545a2000
    asm("_jmp_addr_0x0074fbda:");
    asm("{disp32} jmp       _jmp_addr_0x0060db00");                           // 0x0074fbda    e921dfebff
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Villager* __cdecl Create__8VillagerFRC9MapCoordsPC13GVillagerInfoUli(struct MapCoords* coords, struct GVillagerInfo* info, uint32_t age, bool skeleton)
{
    asm("push               ebx");                                            // 0x0074fbe0    53
    asm("push               ebp");                                            // 0x0074fbe1    55
    asm("push               esi");                                            // 0x0074fbe2    56
    asm("push               edi");                                            // 0x0074fbe3    57
    asm("push               0x000000e7");                                     // 0x0074fbe4    68e7000000
    asm("push               0x00c235dc");                                     // 0x0074fbe9    68dc35c200
    asm("push               0xa");                                            // 0x0074fbee    6a0a
    asm("call               ?GameRand@GRand@@SAHJ@Z");                        // 0x0074fbf0    e81be9f8ff
    asm("{disp8} mov        esi, dword ptr [esp + 0x2c]");                    // 0x0074fbf5    8b74242c
    asm("{disp8} mov        ebx, dword ptr [esp + 0x28]");                    // 0x0074fbf9    8b5c2428
    asm("{disp8} mov        ebp, dword ptr [esp + 0x24]");                    // 0x0074fbfd    8b6c2424
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                    // 0x0074fc01    8b7c2420
    asm("add                esp, 0x0c");                                      // 0x0074fc05    83c40c
    asm("cmp                eax, 0x01");                                      // 0x0074fc08    83f801
    asm("{disp8} ja         _jmp_addr_0x0074fc25");                           // 0x0074fc0b    7718
    asm("push               0x0");                                            // 0x0074fc0d    6a00
    asm("push               esi");                                            // 0x0074fc0f    56
    asm("push               ebx");                                            // 0x0074fc10    53
    asm("push               ebp");                                            // 0x0074fc11    55
    asm("push               edi");                                            // 0x0074fc12    57
    asm("call               ?Create@SpecialVillager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KHPAVGSpecialVillagerInfo@@@Z");                // 0x0074fc13    e888f5fcff
    asm("add                esp, 0x14");                                      // 0x0074fc18    83c414
    asm("test               eax, eax");                                       // 0x0074fc1b    85c0
    asm("{disp8} je         _jmp_addr_0x0074fc25");                           // 0x0074fc1d    7406
    asm("test               byte ptr [eax + 0x0a], 0x01");                    // 0x0074fc1f    f6400a01
    asm("{disp8} je         _jmp_addr_0x0074fc5e");                           // 0x0074fc23    7439
    asm("_jmp_addr_0x0074fc25:");
    asm("push               0x000000f3");                                     // 0x0074fc25    68f3000000
    asm("push               0x00c235dc");                                     // 0x0074fc2a    68dc35c200
    asm("push               0x00000130");                                     // 0x0074fc2f    6830010000
    asm("call               ?__nw@Base@@SAPAXK@Z");                           // 0x0074fc34    e8b76aceff
    asm("add                esp, 0x0c");                                      // 0x0074fc39    83c40c
    asm("test               eax, eax");                                       // 0x0074fc3c    85c0
    asm("{disp8} je         _jmp_addr_0x0074fc63");                           // 0x0074fc3e    7423
    asm("push               esi");                                            // 0x0074fc40    56
    asm("push               ebx");                                            // 0x0074fc41    53
    asm("push               ebp");                                            // 0x0074fc42    55
    asm("push               edi");                                            // 0x0074fc43    57
    asm("mov.s              ecx, eax");                                       // 0x0074fc44    8bc8
    asm("call               ??0Villager@@QAE@ABUMapCoords@@PBVGVillagerInfo@@KH@Z");  // 0x0074fc46    e805fdffff
    asm("mov.s              esi, eax");                                       // 0x0074fc4b    8bf0
    asm("test               esi, esi");                                       // 0x0074fc4d    85f6
    asm("{disp8} je         _jmp_addr_0x0074fc5c");                           // 0x0074fc4f    740b
    asm("mov                eax, dword ptr [esi]");                           // 0x0074fc51    8b06
    asm("push               edi");                                            // 0x0074fc53    57
    asm("mov.s              ecx, esi");                                       // 0x0074fc54    8bce
    asm("call               dword ptr [eax + 0x658]");                        // 0x0074fc56    ff9058060000
    asm("_jmp_addr_0x0074fc5c:");
    asm("mov.s              eax, esi");                                       // 0x0074fc5c    8bc6
    asm("_jmp_addr_0x0074fc5e:");
    asm("pop                edi");                                            // 0x0074fc5e    5f
    asm("pop                esi");                                            // 0x0074fc5f    5e
    asm("pop                ebp");                                            // 0x0074fc60    5d
    asm("pop                ebx");                                            // 0x0074fc61    5b
    asm("ret");                                                               // 0x0074fc62    c3
    asm("_jmp_addr_0x0074fc63:");
    asm("pop                edi");                                            // 0x0074fc63    5f
    asm("pop                esi");                                            // 0x0074fc64    5e
    asm("pop                ebp");                                            // 0x0074fc65    5d
    asm("xor.s              eax, eax");                                       // 0x0074fc66    33c0
    asm("pop                ebx");                                            // 0x0074fc68    5b
    asm("ret");                                                               // 0x0074fc69    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall CallVirtualFunctionsForCreation__8VillagerFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1)
{
    asm("push               ebx");                                            // 0x0074fc70    53
    asm("push               esi");                                            // 0x0074fc71    56
    asm("mov.s              esi, ecx");                                       // 0x0074fc72    8bf1
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x3e0bd4]");           // 0x0074fc74    8a0dd46bda00
    asm("mov                al, 0x01");                                       // 0x0074fc7a    b001
    asm("test               al, cl");                                         // 0x0074fc7c    84c8
    asm("push               edi");                                            // 0x0074fc7e    57
    asm("{disp8} jne        _jmp_addr_0x0074fca7");                           // 0x0074fc7f    7526
    asm("mov.s              bl, cl");                                         // 0x0074fc81    8ad9
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");         // 0x0074fc83    8b0d34fee900
    asm("or.s               bl, al");                                         // 0x0074fc89    0ad8
    asm("{disp32} mov       byte ptr [data_bytes + 0x3e0bd4], bl");           // 0x0074fc8b    881dd46bda00
    asm("mov                edx, dword ptr [ecx]");                           // 0x0074fc91    8b11
    asm("mov                eax, 0x000001ff");                                // 0x0074fc93    b8ff010000
    asm("cmp.s              edx, eax");                                       // 0x0074fc98    3bd0
    asm("{disp8} jg         _jmp_addr_0x0074fc9e");                           // 0x0074fc9a    7f02
    asm("xor.s              eax, eax");                                       // 0x0074fc9c    33c0
    asm("_jmp_addr_0x0074fc9e:");
    asm("{disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]");        // 0x0074fc9e    8b448104
    asm("{disp32} mov       dword ptr [data_bytes + 0x3e0bd0], eax");         // 0x0074fca2    a3d06bda00
    asm("_jmp_addr_0x0074fca7:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                    // 0x0074fca7    8b4c2410
    asm("push               ecx");                                            // 0x0074fcab    51
    asm("mov.s              ecx, esi");                                       // 0x0074fcac    8bce
    asm("call               ?CallVirtualFunctionsForCreation@Living@@UAEXABUMapCoords@@@Z");                           // 0x0074fcae    e8fdcce9ff
    asm("mov                edx, dword ptr [esi]");                           // 0x0074fcb3    8b16
    asm("mov.s              ecx, esi");                                       // 0x0074fcb5    8bce
    asm("call               dword ptr [edx + 0x4a0]");                        // 0x0074fcb7    ff92a0040000
    asm("test               eax, eax");                                       // 0x0074fcbd    85c0
    asm("{disp8} je         _jmp_addr_0x0074fcd6");                           // 0x0074fcbf    7415
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x3e0bd0]");         // 0x0074fcc1    8b15d06bda00
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                    // 0x0074fcc7    8b4e40
    asm("mov                eax, dword ptr [ecx]");                           // 0x0074fcca    8b01
    asm("push               edx");                                            // 0x0074fccc    52
    asm("push               edx");                                            // 0x0074fccd    52
    asm("call               dword ptr [eax + 0xf4]");                         // 0x0074fcce    ff90f4000000
    asm("{disp8} jmp        _jmp_addr_0x0074fd37");                           // 0x0074fcd4    eb61
    asm("_jmp_addr_0x0074fcd6:");
    asm("mov                edx, dword ptr [esi]");                           // 0x0074fcd6    8b16
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x0074fcd8    8b7e28
    asm("mov.s              ecx, esi");                                       // 0x0074fcdb    8bce
    asm("call               dword ptr [edx + 0x8d0]");                        // 0x0074fcdd    ff92d0080000
    asm("cmp                eax, dword ptr [edi + 0x00000138]");              // 0x0074fce3    3b8738010000
    asm("{disp8} jae        _jmp_addr_0x0074fd37");                           // 0x0074fce9    734c
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x0074fceb    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000204]");              // 0x0074fcee    8b8004020000
    asm("{disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");         // 0x0074fcf4    8b1534fee900
    asm("mov.s              ecx, eax");                                       // 0x0074fcfa    8bc8
    asm("test               ecx, ecx");                                       // 0x0074fcfc    85c9
    asm("{disp8} jl         _jmp_addr_0x0074fd04");                           // 0x0074fcfe    7c04
    asm("cmp                ecx, dword ptr [edx]");                           // 0x0074fd00    3b0a
    asm("{disp8} jl         _jmp_addr_0x0074fd06");                           // 0x0074fd02    7c02
    asm("_jmp_addr_0x0074fd04:");
    asm("xor.s              ecx, ecx");                                       // 0x0074fd04    33c9
    asm("_jmp_addr_0x0074fd06:");
    asm("{disp8} mov        ebx, dword ptr [edx + ecx * 0x4 + 0x04]");        // 0x0074fd06    8b5c8a04
    asm("mov.s              ecx, eax");                                       // 0x0074fd0a    8bc8
    asm("test               ecx, ecx");                                       // 0x0074fd0c    85c9
    asm("{disp8} jl         _jmp_addr_0x0074fd14");                           // 0x0074fd0e    7c04
    asm("cmp                ecx, dword ptr [edx]");                           // 0x0074fd10    3b0a
    asm("{disp8} jl         _jmp_addr_0x0074fd16");                           // 0x0074fd12    7c02
    asm("_jmp_addr_0x0074fd14:");
    asm("xor.s              ecx, ecx");                                       // 0x0074fd14    33c9
    asm("_jmp_addr_0x0074fd16:");
    asm("test               eax, eax");                                       // 0x0074fd16    85c0
    asm("{disp8} mov        edi, dword ptr [edx + ecx * 0x4 + 0x04]");        // 0x0074fd18    8b7c8a04
    asm("{disp8} jl         _jmp_addr_0x0074fd22");                           // 0x0074fd1c    7c04
    asm("cmp                eax, dword ptr [edx]");                           // 0x0074fd1e    3b02
    asm("{disp8} jl         _jmp_addr_0x0074fd24");                           // 0x0074fd20    7c02
    asm("_jmp_addr_0x0074fd22:");
    asm("xor.s              eax, eax");                                       // 0x0074fd22    33c0
    asm("_jmp_addr_0x0074fd24:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                    // 0x0074fd24    8b4e40
    asm("{disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]");        // 0x0074fd27    8b548204
    asm("push               ebp");                                            // 0x0074fd2b    55
    asm("mov                ebp, dword ptr [ecx]");                           // 0x0074fd2c    8b29
    asm("push               ebx");                                            // 0x0074fd2e    53
    asm("push               edi");                                            // 0x0074fd2f    57
    asm("call               dword ptr [ebp + 0xf4]");                         // 0x0074fd30    ff95f4000000
    asm("pop                ebp");                                            // 0x0074fd36    5d
    asm("_jmp_addr_0x0074fd37:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                    // 0x0074fd37    8b4e40
    asm("mov                edx, dword ptr [ecx]");                           // 0x0074fd3a    8b11
    asm("call               dword ptr [edx + 0xb4]");                         // 0x0074fd3c    ff92b4000000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                    // 0x0074fd42    8b4e40
    asm("mov                eax, dword ptr [ecx]");                           // 0x0074fd45    8b01
    asm("mov                edx, 0x00000001");                                // 0x0074fd47    ba01000000
    asm("call               dword ptr [eax + 0xc4]");                         // 0x0074fd4c    ff90c4000000
    asm("pop                edi");                                            // 0x0074fd52    5f
    asm("pop                esi");                                            // 0x0074fd53    5e
    asm("pop                ebx");                                            // 0x0074fd54    5b
    asm("ret                0x0004");                                         // 0x0074fd55    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall DeleteDependancys__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                      // 0x0074fd60    83ec08
    asm("push               ebx");                                            // 0x0074fd63    53
    asm("push               ebp");                                            // 0x0074fd64    55
    asm("push               esi");                                            // 0x0074fd65    56
    asm("push               edi");                                            // 0x0074fd66    57
    asm("mov.s              esi, ecx");                                       // 0x0074fd67    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");            // 0x0074fd69    e8f2230000
    asm("mov.s              edi, eax");                                       // 0x0074fd6e    8bf8
    asm("mov                eax, dword ptr [esi]");                           // 0x0074fd70    8b06
    asm("mov.s              ecx, esi");                                       // 0x0074fd72    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                    // 0x0074fd74    897c2410
    asm("call               dword ptr [eax + 0x48]");                         // 0x0074fd78    ff5048
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                    // 0x0074fd7b    89442414
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");                // 0x0074fd7f    8a868c000000
    asm("cmp                al, 0x0d");                                       // 0x0074fd85    3c0d
    asm("{disp8} je         _jmp_addr_0x0074fd9d");                           // 0x0074fd87    7414
    asm("cmp                al, 0x0e");                                       // 0x0074fd89    3c0e
    asm("{disp8} je         _jmp_addr_0x0074fd9d");                           // 0x0074fd8b    7410
    asm("cmp                al, 0x0f");                                       // 0x0074fd8d    3c0f
    asm("{disp8} je         _jmp_addr_0x0074fd9d");                           // 0x0074fd8f    740c
    asm("mov                edx, dword ptr [esi]");                           // 0x0074fd91    8b16
    asm("push               0xd");                                            // 0x0074fd93    6a0d
    asm("mov.s              ecx, esi");                                       // 0x0074fd95    8bce
    asm("call               dword ptr [edx + 0x8e8]");                        // 0x0074fd97    ff92e8080000
    asm("_jmp_addr_0x0074fd9d:");
    asm("mov.s              ecx, esi");                                       // 0x0074fd9d    8bce
    asm("call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ");// 0x0074fd9f    e84c2aeaff
    asm("cmp                al, 0x1d");                                       // 0x0074fda4    3c1d
    asm("{disp8} je         _jmp_addr_0x0074fe01");                           // 0x0074fda6    7459
    asm("{disp32} mov       ebx, dword ptr [esi + 0x000000cc]");              // 0x0074fda8    8b9ecc000000
    asm("test               ebx, ebx");                                       // 0x0074fdae    85db
    asm("{disp8} je         _jmp_addr_0x0074fe01");                           // 0x0074fdb0    744f
    asm("{disp8} mov        eax, dword ptr [ebx + 0x28]");                    // 0x0074fdb2    8b4328
    asm("test               eax, eax");                                       // 0x0074fdb5    85c0
    asm("{disp8} je         _jmp_addr_0x0074fe01");                           // 0x0074fdb7    7448
    asm("_jmp_addr_0x0074fdb9:");
    asm("cmp                dword ptr [eax + 0x04], esi");                    // 0x0074fdb9    397004
    asm("{disp8} je         _jmp_addr_0x0074fdc6");                           // 0x0074fdbc    7408
    asm("mov                eax, dword ptr [eax]");                           // 0x0074fdbe    8b00
    asm("test               eax, eax");                                       // 0x0074fdc0    85c0
    asm("{disp8} jne        _jmp_addr_0x0074fdb9");                           // 0x0074fdc2    75f5
    asm("{disp8} jmp        _jmp_addr_0x0074fe01");                           // 0x0074fdc4    eb3b
    asm("_jmp_addr_0x0074fdc6:");
    asm("{disp8} mov        eax, dword ptr [ebx + 0x28]");                    // 0x0074fdc6    8b4328
    asm("xor.s              ebp, ebp");                                       // 0x0074fdc9    33ed
    asm("test               eax, eax");                                       // 0x0074fdcb    85c0
    asm("{disp8} je         _jmp_addr_0x0074fe01");                           // 0x0074fdcd    7432
    asm("_jmp_addr_0x0074fdcf:");
    asm("cmp                dword ptr [eax + 0x04], esi");                    // 0x0074fdcf    397004
    asm("mov                edi, dword ptr [eax]");                           // 0x0074fdd2    8b38
    asm("{disp8} jne        _jmp_addr_0x0074fdf5");                           // 0x0074fdd4    751f
    asm("cmp                eax, dword ptr [ebx + 0x28]");                    // 0x0074fdd6    3b4328
    asm("{disp8} jne        _jmp_addr_0x0074fde0");                           // 0x0074fdd9    7505
    asm("{disp8} mov        dword ptr [ebx + 0x28], edi");                    // 0x0074fddb    897b28
    asm("{disp8} jmp        _jmp_addr_0x0074fde3");                           // 0x0074fdde    eb03
    asm("_jmp_addr_0x0074fde0:");
    asm("{disp8} mov        dword ptr [ebp + 0x00], edi");                    // 0x0074fde0    897d00
    asm("_jmp_addr_0x0074fde3:");
    asm("{disp8} mov        edx, dword ptr [ebx + 0x2c]");                    // 0x0074fde3    8b532c
    asm("dec                edx");                                            // 0x0074fde6    4a
    asm("push               eax");                                            // 0x0074fde7    50
    asm("{disp8} mov        dword ptr [ebx + 0x2c], edx");                    // 0x0074fde8    89532c
    asm("call               ??3@YAXPAX@Z");                                   // 0x0074fdeb    e8a8f00500
    asm("add                esp, 0x04");                                      // 0x0074fdf0    83c404
    asm("{disp8} jmp        _jmp_addr_0x0074fdf7");                           // 0x0074fdf3    eb02
    asm("_jmp_addr_0x0074fdf5:");
    asm("mov.s              ebp, eax");                                       // 0x0074fdf5    8be8
    asm("_jmp_addr_0x0074fdf7:");
    asm("test               edi, edi");                                       // 0x0074fdf7    85ff
    asm("mov.s              eax, edi");                                       // 0x0074fdf9    8bc7
    asm("{disp8} jne        _jmp_addr_0x0074fdcf");                           // 0x0074fdfb    75d2
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                    // 0x0074fdfd    8b7c2410
    asm("_jmp_addr_0x0074fe01:");
    asm("xor.s              ebx, ebx");                                       // 0x0074fe01    33db
    asm("mov.s              ecx, esi");                                       // 0x0074fe03    8bce
    asm("{disp32} mov       dword ptr [esi + 0x000000cc], ebx");              // 0x0074fe05    899ecc000000
    asm("call               ?IsAMother@Villager@@QAE_NXZ");                   // 0x0074fe0b    e800130000
    asm("cmp                eax, 0x01");                                      // 0x0074fe10    83f801
    asm("{disp8} jne        _jmp_addr_0x0074fe1c");                           // 0x0074fe13    7507
    asm("mov.s              ecx, esi");                                       // 0x0074fe15    8bce
    asm("call               ?FindChildrenAndOrphanThem@Villager@@QAEXXZ");    // 0x0074fe17    e8c46d0000
    asm("_jmp_addr_0x0074fe1c:");
    asm("cmp.s              edi, ebx");                                       // 0x0074fe1c    3bfb
    asm("{disp8} je         _jmp_addr_0x0074fe30");                           // 0x0074fe1e    7410
    asm("push               esi");                                            // 0x0074fe20    56
    asm("mov.s              ecx, edi");                                       // 0x0074fe21    8bcf
    asm("call               ?RemoveDeletedVillagerFromAbode@Abode@@QAEXPAVVillager@@@Z");                           // 0x0074fe23    e8f843cbff
    asm("pop                edi");                                            // 0x0074fe28    5f
    asm("pop                esi");                                            // 0x0074fe29    5e
    asm("pop                ebp");                                            // 0x0074fe2a    5d
    asm("pop                ebx");                                            // 0x0074fe2b    5b
    asm("add                esp, 0x08");                                      // 0x0074fe2c    83c408
    asm("ret");                                                               // 0x0074fe2f    c3
    asm("_jmp_addr_0x0074fe30:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                    // 0x0074fe30    8b4c2414
    asm("cmp.s              ecx, ebx");                                       // 0x0074fe34    3bcb
    asm("{disp8} je         _jmp_addr_0x0074fe46");                           // 0x0074fe36    740e
    asm("push               esi");                                            // 0x0074fe38    56
    asm("call               ?RemoveVillager@Town@@QAEXPAVVillager@@@Z");      // 0x0074fe39    e8d2e3feff
    asm("pop                edi");                                            // 0x0074fe3e    5f
    asm("pop                esi");                                            // 0x0074fe3f    5e
    asm("pop                ebp");                                            // 0x0074fe40    5d
    asm("pop                ebx");                                            // 0x0074fe41    5b
    asm("add                esp, 0x08");                                      // 0x0074fe42    83c408
    asm("ret");                                                               // 0x0074fe45    c3
    asm("_jmp_addr_0x0074fe46:");
    asm("{disp32} mov       eax, dword ptr [_game]");                         // 0x0074fe46    a15c19d000
    asm("{disp32} lea       edx, dword ptr [eax + 0x00205bfc]");              // 0x0074fe4b    8d90fc5b2000
    asm("mov                eax, dword ptr [edx]");                           // 0x0074fe51    8b02
    asm("cmp.s              eax, ebx");                                       // 0x0074fe53    3bc3
    asm("{disp8} je         _jmp_addr_0x0074feb2");                           // 0x0074fe55    745b
    asm("_jmp_addr_0x0074fe57:");
    asm("cmp.s              eax, esi");                                       // 0x0074fe57    3bc6
    asm("{disp8} je         _jmp_addr_0x0074fe6d");                           // 0x0074fe59    7412
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");              // 0x0074fe5b    8b80e4000000
    asm("cmp.s              eax, ebx");                                       // 0x0074fe61    3bc3
    asm("{disp8} jne        _jmp_addr_0x0074fe57");                           // 0x0074fe63    75f2
    asm("pop                edi");                                            // 0x0074fe65    5f
    asm("pop                esi");                                            // 0x0074fe66    5e
    asm("pop                ebp");                                            // 0x0074fe67    5d
    asm("pop                ebx");                                            // 0x0074fe68    5b
    asm("add                esp, 0x08");                                      // 0x0074fe69    83c408
    asm("ret");                                                               // 0x0074fe6c    c3
    asm("_jmp_addr_0x0074fe6d:");
    asm("cmp.s              eax, ebx");                                       // 0x0074fe6d    3bc3
    asm("{disp8} je         _jmp_addr_0x0074feb2");                           // 0x0074fe6f    7441
    asm("mov                eax, dword ptr [edx]");                           // 0x0074fe71    8b02
    asm("cmp.s              eax, esi");                                       // 0x0074fe73    3bc6
    asm("{disp8} jne        _jmp_addr_0x0074fe81");                           // 0x0074fe75    750a
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");              // 0x0074fe77    8b8ee4000000
    asm("mov                dword ptr [edx], ecx");                           // 0x0074fe7d    890a
    asm("{disp8} jmp        _jmp_addr_0x0074fea9");                           // 0x0074fe7f    eb28
    asm("_jmp_addr_0x0074fe81:");
    asm("cmp.s              eax, ebx");                                       // 0x0074fe81    3bc3
    asm("{disp8} je         _jmp_addr_0x0074feb2");                           // 0x0074fe83    742d
    asm("_jmp_addr_0x0074fe85:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000000e4]");              // 0x0074fe85    8b88e4000000
    asm("cmp.s              ecx, esi");                                       // 0x0074fe8b    3bce
    asm("{disp8} je         _jmp_addr_0x0074fe9d");                           // 0x0074fe8d    740e
    asm("mov.s              eax, ecx");                                       // 0x0074fe8f    8bc1
    asm("cmp.s              eax, ebx");                                       // 0x0074fe91    3bc3
    asm("{disp8} jne        _jmp_addr_0x0074fe85");                           // 0x0074fe93    75f0
    asm("pop                edi");                                            // 0x0074fe95    5f
    asm("pop                esi");                                            // 0x0074fe96    5e
    asm("pop                ebp");                                            // 0x0074fe97    5d
    asm("pop                ebx");                                            // 0x0074fe98    5b
    asm("add                esp, 0x08");                                      // 0x0074fe99    83c408
    asm("ret");                                                               // 0x0074fe9c    c3
    asm("_jmp_addr_0x0074fe9d:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000e4]");              // 0x0074fe9d    8b8ee4000000
    asm("{disp32} mov       dword ptr [eax + 0x000000e4], ecx");              // 0x0074fea3    8988e4000000
    asm("_jmp_addr_0x0074fea9:");
    asm("dec                dword ptr [edx + 0x04]");                         // 0x0074fea9    ff4a04
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], ebx");              // 0x0074feac    899ee4000000
    asm("_jmp_addr_0x0074feb2:");
    asm("pop                edi");                                            // 0x0074feb2    5f
    asm("pop                esi");                                            // 0x0074feb3    5e
    asm("pop                ebp");                                            // 0x0074feb4    5d
    asm("pop                ebx");                                            // 0x0074feb5    5b
    asm("add                esp, 0x08");                                      // 0x0074feb6    83c408
    asm("ret");                                                               // 0x0074feb9    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall UnemployedJobs__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                      // 0x0074fec0    83ec08
    asm("push               esi");                                            // 0x0074fec3    56
    asm("mov.s              esi, ecx");                                       // 0x0074fec4    8bf1
    asm("mov                eax, dword ptr [esi]");                           // 0x0074fec6    8b06
    asm("push               edi");                                            // 0x0074fec8    57
    asm("call               dword ptr [eax + 0x48]");                         // 0x0074fec9    ff5048
    asm("test               eax, eax");                                       // 0x0074fecc    85c0
    asm("{disp8} je         _jmp_addr_0x0074ff4b");                           // 0x0074fece    747b
    asm("mov                edx, dword ptr [esi]");                           // 0x0074fed0    8b16
    asm("mov.s              ecx, esi");                                       // 0x0074fed2    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x0074fed4    ff5248
    asm("mov.s              ecx, eax");                                       // 0x0074fed7    8bc8
    asm("call               _jmp_addr_0x00747c70");                           // 0x0074fed9    e8927dffff
    asm("mov.s              edi, eax");                                       // 0x0074fede    8bf8
    asm("mov                eax, dword ptr [esi]");                           // 0x0074fee0    8b06
    asm("mov.s              ecx, esi");                                       // 0x0074fee2    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x0074fee4    ff5048
    asm("mov.s              ecx, eax");                                       // 0x0074fee7    8bc8
    asm("call               _jmp_addr_0x00747c60");                           // 0x0074fee9    e8727dffff
    asm("sub.s              edi, eax");                                       // 0x0074feee    2bf8
    asm("{disp8} mov        dword ptr [esp + 0x08], edi");                    // 0x0074fef0    897c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");             // 0x0074fef4    c744240c00000000
    asm("{disp8} fild       qword ptr [esp + 0x08]");                         // 0x0074fefc    df6c2408
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                    // 0x0074ff00    d81d98a38a00
    asm("fnstsw             ax");                                             // 0x0074ff06    dfe0
    asm("test               ah, 0x41");                                       // 0x0074ff08    f6c441
    asm("{disp8} jne        _jmp_addr_0x0074ff4b");                           // 0x0074ff0b    753e
    asm("mov                edx, dword ptr [esi]");                           // 0x0074ff0d    8b16
    asm("push               ebx");                                            // 0x0074ff0f    53
    asm("mov.s              ecx, esi");                                       // 0x0074ff10    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x0074ff12    ff5248
    asm("{disp8} mov        ebx, dword ptr [eax + 0x28]");                    // 0x0074ff15    8b5828
    asm("{disp32} mov       eax, dword ptr [_game]");                         // 0x0074ff18    a15c19d000
    asm("mov                edx, dword ptr [esi]");                           // 0x0074ff1d    8b16
    asm("mov.s              ecx, esi");                                       // 0x0074ff1f    8bce
    asm("{disp32} lea       edi, dword ptr [eax + 0x00205a40]");              // 0x0074ff21    8db8405a2000
    asm("call               dword ptr [edx + 0x48]");                         // 0x0074ff27    ff5248
    asm("{disp32} mov       edx, dword ptr [eax + 0x000006f0]");              // 0x0074ff2a    8b90f0060000
    asm("mov                ecx, dword ptr [edi]");                           // 0x0074ff30    8b0f
    asm("{disp8} mov        eax, dword ptr [ebx + 0x50]");                    // 0x0074ff32    8b4350
    asm("sub.s              ecx, edx");                                       // 0x0074ff35    2bca
    asm("cmp.s              ecx, eax");                                       // 0x0074ff37    3bc8
    asm("pop                ebx");                                            // 0x0074ff39    5b
    asm("{disp8} jbe        _jmp_addr_0x0074ff4b");                           // 0x0074ff3a    760f
    asm("mov                edx, dword ptr [esi]");                           // 0x0074ff3c    8b16
    asm("mov.s              ecx, esi");                                       // 0x0074ff3e    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x0074ff40    ff5248
    asm("mov                ecx, dword ptr [edi]");                           // 0x0074ff43    8b0f
    asm("{disp32} mov       dword ptr [eax + 0x000006f0], ecx");              // 0x0074ff45    8988f0060000
    asm("_jmp_addr_0x0074ff4b:");
    asm("pop                edi");                                            // 0x0074ff4b    5f
    asm("xor.s              eax, eax");                                       // 0x0074ff4c    33c0
    asm("pop                esi");                                            // 0x0074ff4e    5e
    asm("add                esp, 0x08");                                      // 0x0074ff4f    83c408
    asm("ret");                                                               // 0x0074ff52    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall SetupJobLocation__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ProcessState__8VillagerFv(struct Object* this)
{
    asm("sub                esp, 0x14");                                      // 0x0074ff70    83ec14
    asm("push               esi");                                            // 0x0074ff73    56
    asm("mov.s              esi, ecx");                                       // 0x0074ff74    8bf1
    asm("{disp32} inc       word ptr [esi + 0x00000090]");                    // 0x0074ff76    66ff8690000000
    asm("push               edi");                                            // 0x0074ff7d    57
    asm("call               ?ProcessFoodSpeedup@Villager@@QAEXXZ");           // 0x0074ff7e    e8ad340000
    asm("xor.s              eax, eax");                                       // 0x0074ff83    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");                // 0x0074ff85    8a868c000000
    asm("lea                eax, dword ptr [eax + eax * 0x8]");               // 0x0074ff8b    8d04c0
    asm("shl                eax, 4");                                         // 0x0074ff8e    c1e004
    asm("{disp32} lea       eax, dword ptr [eax + 0x00d09218]");              // 0x0074ff91    8d801892d000
    asm("mov.s              edx, eax");                                       // 0x0074ff97    8bd0
    asm("mov                ecx, dword ptr [edx]");                           // 0x0074ff99    8b0a
    asm("test               ecx, ecx");                                       // 0x0074ff9b    85c9
    asm("{disp8} mov        edi, dword ptr [edx + 0x04]");                    // 0x0074ff9d    8b7a04
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                    // 0x0074ffa0    897c2410
    asm("{disp8} mov        edi, dword ptr [edx + 0x08]");                    // 0x0074ffa4    8b7a08
    asm("{disp8} mov        edx, dword ptr [edx + 0x0c]");                    // 0x0074ffa7    8b520c
    asm("{disp8} mov        dword ptr [esp + 0x14], edi");                    // 0x0074ffaa    897c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                    // 0x0074ffae    89542418
    asm("{disp8} je         _jmp_addr_0x0074ffcb");                           // 0x0074ffb2    7417
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                    // 0x0074ffb4    8b4804
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                    // 0x0074ffb7    8b7808
    asm("mov                edx, dword ptr [eax]");                           // 0x0074ffba    8b10
    asm("{disp8} mov        eax, dword ptr [eax + 0x0c]");                    // 0x0074ffbc    8b400c
    asm("add.s              ecx, esi");                                       // 0x0074ffbf    03ce
    asm("{disp8} mov        dword ptr [esp + 0x14], edi");                    // 0x0074ffc1    897c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                    // 0x0074ffc5    89442418
    asm("call               edx");                                            // 0x0074ffc9    ffd2
    asm("_jmp_addr_0x0074ffcb:");
    asm("xor.s              eax, eax");                                       // 0x0074ffcb    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008d]");                // 0x0074ffcd    8a868d000000
    asm("lea                ecx, dword ptr [eax + eax * 0x8]");               // 0x0074ffd3    8d0cc0
    asm("shl                ecx, 4");                                         // 0x0074ffd6    c1e104
    asm("{disp32} lea       eax, dword ptr [ecx + 0x00d09218]");              // 0x0074ffd9    8d811892d000
    asm("mov.s              edx, eax");                                       // 0x0074ffdf    8bd0
    asm("mov                ecx, dword ptr [edx]");                           // 0x0074ffe1    8b0a
    asm("test               ecx, ecx");                                       // 0x0074ffe3    85c9
    asm("{disp8} mov        edi, dword ptr [edx + 0x04]");                    // 0x0074ffe5    8b7a04
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                    // 0x0074ffe8    897c2410
    asm("{disp8} mov        edi, dword ptr [edx + 0x08]");                    // 0x0074ffec    8b7a08
    asm("{disp8} mov        edx, dword ptr [edx + 0x0c]");                    // 0x0074ffef    8b520c
    asm("{disp8} mov        dword ptr [esp + 0x14], edi");                    // 0x0074fff2    897c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                    // 0x0074fff6    89542418
    asm("{disp8} je         _jmp_addr_0x00750013");                           // 0x0074fffa    7417
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                    // 0x0074fffc    8b4804
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                    // 0x0074ffff    8b7808
    asm("mov                edx, dword ptr [eax]");                           // 0x00750002    8b10
    asm("{disp8} mov        eax, dword ptr [eax + 0x0c]");                    // 0x00750004    8b400c
    asm("add.s              ecx, esi");                                       // 0x00750007    03ce
    asm("{disp8} mov        dword ptr [esp + 0x14], edi");                    // 0x00750009    897c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                    // 0x0075000d    89442418
    asm("call               edx");                                            // 0x00750011    ffd2
    asm("_jmp_addr_0x00750013:");
    asm("xor.s              ecx, ecx");                                       // 0x00750013    33c9
    asm("{disp32} mov       cx, word ptr [esi + 0x000000e0]");                // 0x00750015    668b8ee0000000
    asm("shr                ecx, 0xb");                                       // 0x0075001c    c1e90b
    asm("and                ecx, 0x01");                                      // 0x0075001f    83e101
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                    // 0x00750022    894c2408
    asm("{disp8} je         _jmp_addr_0x00750047");                           // 0x00750026    741f
    asm("push               0x1");                                            // 0x00750028    6a01
    asm("mov.s              ecx, esi");                                       // 0x0075002a    8bce
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");         // 0x0075002c    e82fc9e9ff
    asm("test               eax, eax");                                       // 0x00750031    85c0
    asm("{disp8} je         _jmp_addr_0x0075003c");                           // 0x00750033    7407
    asm("mov.s              ecx, esi");                                       // 0x00750035    8bce
    asm("call               ?FinishedIntoOutOfAnimation@Villager@@QAEXXZ");   // 0x00750037    e824000000
    asm("_jmp_addr_0x0075003c:");
    asm("pop                edi");                                            // 0x0075003c    5f
    asm("mov                eax, 0x00000001");                                // 0x0075003d    b801000000
    asm("pop                esi");                                            // 0x00750042    5e
    asm("add                esp, 0x14");                                      // 0x00750043    83c414
    asm("ret");                                                               // 0x00750046    c3
    asm("_jmp_addr_0x00750047:");
    asm("mov.s              ecx, esi");                                       // 0x00750047    8bce
    asm("call               ?CheckEveryTime@Villager@@QAEHXZ");               // 0x00750049    e8c2030000
    asm("mov.s              ecx, esi");                                       // 0x0075004e    8bce
    asm("call               ?CallState@Villager@@QAEIXZ");                    // 0x00750050    e87b210000
    asm("pop                edi");                                            // 0x00750055    5f
    asm("pop                esi");                                            // 0x00750056    5e
    asm("add                esp, 0x14");                                      // 0x00750057    83c414
    asm("ret");                                                               // 0x0075005a    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall FinishedIntoOutOfAnimation__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                      // 0x00750060    83ec14
    asm("push               esi");                                            // 0x00750063    56
    asm("xor.s              eax, eax");                                       // 0x00750064    33c0
    asm("mov.s              esi, ecx");                                       // 0x00750066    8bf1
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");                // 0x00750068    668b86e0000000
    asm("and                eax, 0x00001000");                                // 0x0075006f    2500100000
    asm("cmp                eax, 0x00001000");                                // 0x00750074    3d00100000
    asm("{disp8} jne        _jmp_addr_0x007500ed");                           // 0x00750079    7572
    asm("xor.s              ecx, ecx");                                       // 0x0075007b    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008c]");                // 0x0075007d    8a8e8c000000
    asm("push               ebx");                                            // 0x00750083    53
    asm("mov.s              eax, ecx");                                       // 0x00750084    8bc1
    asm("and                eax, 0x000000ff");                                // 0x00750086    25ff000000
    asm("lea                edx, dword ptr [eax + eax * 0x8]");               // 0x0075008b    8d14c0
    asm("shl                edx, 4");                                         // 0x0075008e    c1e204
    asm("add                edx, 0x00d09208");                                // 0x00750091    81c20892d000
    asm("mov                eax, dword ptr [edx]");                           // 0x00750097    8b02
    asm("test               eax, eax");                                       // 0x00750099    85c0
    asm("{disp8} mov        ebx, dword ptr [edx + 0x04]");                    // 0x0075009b    8b5a04
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                    // 0x0075009e    895c2410
    asm("{disp8} mov        ebx, dword ptr [edx + 0x08]");                    // 0x007500a2    8b5a08
    asm("{disp8} mov        edx, dword ptr [edx + 0x0c]");                    // 0x007500a5    8b520c
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                    // 0x007500a8    895c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                    // 0x007500ac    89542418
    asm("pop                ebx");                                            // 0x007500b0    5b
    asm("{disp8} je         _jmp_addr_0x007500ed");                           // 0x007500b1    743a
    asm("mov                eax, dword ptr [esi]");                           // 0x007500b3    8b06
    asm("{disp8} mov        byte ptr [esp + 0x04], cl");                      // 0x007500b5    884c2404
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                    // 0x007500b9    8b4c2404
    asm("push               ecx");                                            // 0x007500bd    51
    asm("mov.s              ecx, esi");                                       // 0x007500be    8bce
    asm("call               dword ptr [eax + 0x8e0]");                        // 0x007500c0    ff90e0080000
    asm("cmp                eax, -0x01");                                     // 0x007500c6    83f8ff
    asm("{disp8} je         _jmp_addr_0x007500ed");                           // 0x007500c9    7422
    asm("mov                edx, dword ptr [esi]");                           // 0x007500cb    8b16
    asm("push               eax");                                            // 0x007500cd    50
    asm("mov.s              ecx, esi");                                       // 0x007500ce    8bce
    asm("call               dword ptr [edx + 0x8fc]");                        // 0x007500d0    ff92fc080000
    asm("and                word ptr [esi + 0x000000e0], -0x1001");           // 0x007500d6    6681a6e0000000ffef
    asm("{disp32} mov       word ptr [esi + 0x00000090], 0x0000");            // 0x007500df    66c786900000000000
    asm("pop                esi");                                            // 0x007500e8    5e
    asm("add                esp, 0x14");                                      // 0x007500e9    83c414
    asm("ret");                                                               // 0x007500ec    c3
    asm("_jmp_addr_0x007500ed:");
    asm("mov.s              ecx, esi");                                       // 0x007500ed    8bce
    asm("call               ?SetStateAnim@Living@@QAEXXZ");                   // 0x007500ef    e81ccae9ff
    asm("and                word ptr [esi + 0x000000e0], -0x0801");           // 0x007500f4    6681a6e0000000fff7
    asm("{disp32} mov       word ptr [esi + 0x00000090], 0x0000");            // 0x007500fd    66c786900000000000
    asm("pop                esi");                                            // 0x00750106    5e
    asm("add                esp, 0x14");                                      // 0x00750107    83c414
    asm("ret");                                                               // 0x0075010a    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
enum ANIM_LIST __fastcall GetAnimId__8VillagerFv(struct Living* this)
{
    asm("sub                esp, 0x10");                                      // 0x00750110    83ec10
    asm("push               esi");                                            // 0x00750113    56
    asm("mov.s              esi, ecx");                                       // 0x00750114    8bf1
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");                // 0x00750116    8a868c000000
    asm("cmp                al, -0x01");                                      // 0x0075011c    3cff
    asm("push               edi");                                            // 0x0075011e    57
    asm("{disp8} jae        _jmp_addr_0x00750125");                           // 0x0075011f    7304
    asm("test               al, al");                                         // 0x00750121    84c0
    asm("{disp8} jne        _jmp_addr_0x00750130");                           // 0x00750123    750b
    asm("_jmp_addr_0x00750125:");
    asm("pop                edi");                                            // 0x00750125    5f
    asm("mov                eax, 0x00000181");                                // 0x00750126    b881010000
    asm("pop                esi");                                            // 0x0075012b    5e
    asm("add                esp, 0x10");                                      // 0x0075012c    83c410
    asm("ret");                                                               // 0x0075012f    c3
    asm("_jmp_addr_0x00750130:");
    asm("push               ebx");                                            // 0x00750130    53
    asm("mov.s              ecx, esi");                                       // 0x00750131    8bce
    asm("call               ?SetStateCarriedObject@Villager@@QAEXXZ");        // 0x00750133    e868000000
    asm("xor.s              ecx, ecx");                                       // 0x00750138    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008c]");                // 0x0075013a    8a8e8c000000
    asm("lea                eax, dword ptr [ecx + ecx * 0x8]");               // 0x00750140    8d04c9
    asm("shl                eax, 4");                                         // 0x00750143    c1e004
    asm("{disp32} lea       eax, dword ptr [eax + 0x00d091f8]");              // 0x00750146    8d80f891d000
    asm("mov.s              edi, eax");                                       // 0x0075014c    8bf8
    asm("mov                edx, dword ptr [edi]");                           // 0x0075014e    8b17
    asm("test               edx, edx");                                       // 0x00750150    85d2
    asm("{disp8} mov        ebx, dword ptr [edi + 0x04]");                    // 0x00750152    8b5f04
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                    // 0x00750155    895c2410
    asm("{disp8} mov        ebx, dword ptr [edi + 0x08]");                    // 0x00750159    8b5f08
    asm("{disp8} mov        edi, dword ptr [edi + 0x0c]");                    // 0x0075015c    8b7f0c
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                    // 0x0075015f    895c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edi");                    // 0x00750163    897c2418
    asm("pop                ebx");                                            // 0x00750167    5b
    asm("{disp8} je         _jmp_addr_0x00750187");                           // 0x00750168    741d
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                    // 0x0075016a    8b4804
    asm("{disp8} mov        edi, dword ptr [eax + 0x08]");                    // 0x0075016d    8b7808
    asm("mov                edx, dword ptr [eax]");                           // 0x00750170    8b10
    asm("{disp8} mov        eax, dword ptr [eax + 0x0c]");                    // 0x00750172    8b400c
    asm("add.s              ecx, esi");                                       // 0x00750175    03ce
    asm("{disp8} mov        dword ptr [esp + 0x10], edi");                    // 0x00750177    897c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                    // 0x0075017b    89442414
    asm("call               edx");                                            // 0x0075017f    ffd2
    asm("pop                edi");                                            // 0x00750181    5f
    asm("pop                esi");                                            // 0x00750182    5e
    asm("add                esp, 0x10");                                      // 0x00750183    83c410
    asm("ret");                                                               // 0x00750186    c3
    asm("_jmp_addr_0x00750187:");
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x00750187    8d0449
    asm("shl                eax, 3");                                         // 0x0075018a    c1e003
    asm("sub.s              eax, ecx");                                       // 0x0075018d    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");               // 0x0075018f    8d0c40
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9e78]");        // 0x00750192    8b048d789edb00
    asm("pop                edi");                                            // 0x00750199    5f
    asm("pop                esi");                                            // 0x0075019a    5e
    asm("add                esp, 0x10");                                      // 0x0075019b    83c410
    asm("ret");                                                               // 0x0075019e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetStateCarriedObject__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                            // 0x007501a0    56
    asm("mov.s              esi, ecx");                                       // 0x007501a1    8bf1
    asm("mov                eax, dword ptr [esi]");                           // 0x007501a3    8b06
    asm("call               dword ptr [eax + 0xb04]");                        // 0x007501a5    ff90040b0000
    asm("cmp                al, 0x04");                                       // 0x007501ab    3c04
    asm("{disp32} je        _jmp_addr_0x00750299");                           // 0x007501ad    0f84e6000000
    asm("cmp                byte ptr [esi + 0x0000008c], -0x38");             // 0x007501b3    80be8c000000c8
    asm("{disp32} je        _jmp_addr_0x00750299");                           // 0x007501ba    0f84d9000000
    asm("mov                edx, dword ptr [esi]");                           // 0x007501c0    8b16
    asm("push               edi");                                            // 0x007501c2    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x007501c3    8b7e28
    asm("mov.s              ecx, esi");                                       // 0x007501c6    8bce
    asm("{disp32} mov       byte ptr [esi + 0x000000f1], 0x01");              // 0x007501c8    c686f100000001
    asm("call               dword ptr [edx + 0x11c]");                        // 0x007501cf    ff921c010000
    asm("{disp32} fcomp     dword ptr [edi + 0x00000380]");                   // 0x007501d5    d89f80030000
    asm("pop                edi");                                            // 0x007501db    5f
    asm("fnstsw             ax");                                             // 0x007501dc    dfe0
    asm("test               ah, 0x41");                                       // 0x007501de    f6c441
    asm("{disp8} jne        _jmp_addr_0x00750225");                           // 0x007501e1    7542
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x007501e3    8b4628
    asm("movsx              ecx, word ptr [esi + 0x000000f6]");               // 0x007501e6    0fbf8ef6000000
    asm("cmp                ecx, dword ptr [eax + 0x0000026c]");              // 0x007501ed    3b886c020000
    asm("{disp8} jle        _jmp_addr_0x00750204");                           // 0x007501f3    7e0f
    asm("mov.s              ecx, esi");                                       // 0x007501f5    8bce
    asm("call               ?GetWoodCarriedObject@Villager@@QAEIXZ");         // 0x007501f7    e8a4000000
    asm("{disp32} mov       byte ptr [esi + 0x000000f1], al");                // 0x007501fc    8886f1000000
    asm("{disp8} jmp        _jmp_addr_0x00750225");                           // 0x00750202    eb21
    asm("_jmp_addr_0x00750204:");
    asm("movsx              edx, word ptr [esi + 0x000000f4]");               // 0x00750204    0fbf96f4000000
    asm("cmp                edx, dword ptr [eax + 0x00000270]");              // 0x0075020b    3b9070020000
    asm("{disp8} jle        _jmp_addr_0x00750225");                           // 0x00750211    7e12
    asm("mov.s              ecx, esi");                                       // 0x00750213    8bce
    asm("call               ?FUN_00753140@Villager@@QAEIXZ");                 // 0x00750215    e8262f0000
    asm("test               al, al");                                         // 0x0075021a    84c0
    asm("{disp8} jne        _jmp_addr_0x00750225");                           // 0x0075021c    7507
    asm("{disp32} mov       byte ptr [esi + 0x000000f1], 0x06");              // 0x0075021e    c686f100000006
    asm("_jmp_addr_0x00750225:");
    asm("mov                eax, dword ptr [esi]");                           // 0x00750225    8b06
    asm("mov.s              ecx, esi");                                       // 0x00750227    8bce
    asm("call               dword ptr [eax + 0xb04]");                        // 0x00750229    ff90040b0000
    asm("and                eax, 0x000000ff");                                // 0x0075022f    25ff000000
    asm("mov.s              ecx, eax");                                       // 0x00750234    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x00750236    8d0449
    asm("shl                eax, 3");                                         // 0x00750239    c1e003
    asm("sub.s              eax, ecx");                                       // 0x0075023c    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");               // 0x0075023e    8d0c40
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f54]");        // 0x00750241    8b048d549fdb00
    asm("test               eax, eax");                                       // 0x00750248    85c0
    asm("{disp8} je         _jmp_addr_0x00750275");                           // 0x0075024a    7429
    asm("mov                edx, dword ptr [esi]");                           // 0x0075024c    8b16
    asm("mov.s              ecx, esi");                                       // 0x0075024e    8bce
    asm("call               dword ptr [edx + 0xb04]");                        // 0x00750250    ff92040b0000
    asm("and                eax, 0x000000ff");                                // 0x00750256    25ff000000
    asm("mov.s              ecx, eax");                                       // 0x0075025b    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x0075025d    8d0449
    asm("shl                eax, 3");                                         // 0x00750260    c1e003
    asm("sub.s              eax, ecx");                                       // 0x00750263    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");               // 0x00750265    8d0440
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f54]");        // 0x00750268    8b0c85549fdb00
    asm("{disp32} mov       byte ptr [esi + 0x000000f1], cl");                // 0x0075026f    888ef1000000
    asm("_jmp_addr_0x00750275:");
    asm("xor.s              ecx, ecx");                                       // 0x00750275    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008c]");                // 0x00750277    8a8e8c000000
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x0075027d    8d0449
    asm("shl                eax, 3");                                         // 0x00750280    c1e003
    asm("sub.s              eax, ecx");                                       // 0x00750283    2bc1
    asm("lea                edx, dword ptr [eax + eax * 0x2]");               // 0x00750285    8d1440
    asm("{disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9f54]");        // 0x00750288    8b0495549fdb00
    asm("test               eax, eax");                                       // 0x0075028f    85c0
    asm("{disp8} je         _jmp_addr_0x00750299");                           // 0x00750291    7406
    asm("{disp32} mov       byte ptr [esi + 0x000000f1], al");                // 0x00750293    8886f1000000
    asm("_jmp_addr_0x00750299:");
    asm("pop                esi");                                            // 0x00750299    5e
    asm("ret");                                                               // 0x0075029a    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall GetWoodCarriedObject__8VillagerFv(struct Villager* this)
{
    asm("xor.s              eax, eax");                                       // 0x007502a0    33c0
    asm("{disp32} mov       ax, word ptr [ecx + 0x000000e0]");                // 0x007502a2    668b81e0000000
    asm("shr                eax, 0xe");                                       // 0x007502a9    c1e80e
    asm("dec                eax");                                            // 0x007502ac    48
    asm("{disp8} je         _jmp_addr_0x007502c7");                           // 0x007502ad    7418
    asm("dec                eax");                                            // 0x007502af    48
    asm("{disp8} je         _jmp_addr_0x007502c1");                           // 0x007502b0    740f
    asm("dec                eax");                                            // 0x007502b2    48
    asm("{disp8} je         _jmp_addr_0x007502bb");                           // 0x007502b3    7406
    asm("mov                eax, 0x0000000c");                                // 0x007502b5    b80c000000
    asm("ret");                                                               // 0x007502ba    c3
    asm("_jmp_addr_0x007502bb:");
    asm("mov                eax, 0x0000000f");                                // 0x007502bb    b80f000000
    asm("ret");                                                               // 0x007502c0    c3
    asm("_jmp_addr_0x007502c1:");
    asm("mov                eax, 0x0000000e");                                // 0x007502c1    b80e000000
    asm("ret");                                                               // 0x007502c6    c3
    asm("_jmp_addr_0x007502c7:");
    asm("mov                eax, 0x0000000d");                                // 0x007502c7    b80d000000
    asm("ret");                                                               // 0x007502cc    c3
    __builtin_unreachable();
}

uint32_t __fastcall DestroyedByEffect__8VillagerFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* param_1, float param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x007502d0    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x007502d4    8b542404
    asm("push               0x1");                                            // 0x007502d8    6a01
    asm("push               eax");                                            // 0x007502da    50
    asm("push               edx");                                            // 0x007502db    52
    asm("push               0x2");                                            // 0x007502dc    6a02
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                           // 0x007502de    e8dd030000
    asm("mov                eax, 0x00000001");                                // 0x007502e3    b801000000
    asm("ret                0x0008");                                         // 0x007502e8    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GPlayer* __fastcall GetPlayer__8VillagerFv(struct GameThing* this)
{
    asm("push               esi");                                            // 0x007502f0    56
    asm("mov.s              esi, ecx");                                       // 0x007502f1    8bf1
    asm("mov                eax, dword ptr [esi]");                           // 0x007502f3    8b06
    asm("call               dword ptr [eax + 0x48]");                         // 0x007502f5    ff5048
    asm("test               eax, eax");                                       // 0x007502f8    85c0
    asm("{disp8} je         _jmp_addr_0x0075030a");                           // 0x007502fa    740e
    asm("mov                edx, dword ptr [esi]");                           // 0x007502fc    8b16
    asm("mov.s              ecx, esi");                                       // 0x007502fe    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x00750300    ff5248
    asm("add                eax, 0x2c");                                      // 0x00750303    83c02c
    asm("mov                eax, dword ptr [eax]");                           // 0x00750306    8b00
    asm("pop                esi");                                            // 0x00750308    5e
    asm("ret");                                                               // 0x00750309    c3
    asm("_jmp_addr_0x0075030a:");
    asm("xor.s              eax, eax");                                       // 0x0075030a    33c0
    asm("pop                esi");                                            // 0x0075030c    5e
    asm("ret");                                                               // 0x0075030d    c3
    __builtin_unreachable();
}

enum HOLD_TYPE __fastcall GetHoldType__8VillagerFv(struct Object* this)
{
    return 7;
}

float __fastcall GetHoldLoweringMultiplier__8VillagerFv(struct Object* this)
{
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x3420]");               // 0x00750320    d90520c48a00
    asm("ret");                                                               // 0x00750326    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Villager* __fastcall GetSpouse__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                            // 0x00750330    56
    asm("mov.s              esi, ecx");                                       // 0x00750331    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");            // 0x00750333    e8281e0000
    asm("test               eax, eax");                                       // 0x00750338    85c0
    asm("{disp8} je         _jmp_addr_0x00750361");                           // 0x0075033a    7425
    asm("push               esi");                                            // 0x0075033c    56
    asm("mov.s              ecx, esi");                                       // 0x0075033d    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");            // 0x0075033f    e81c1e0000
    asm("mov.s              ecx, eax");                                       // 0x00750344    8bc8
    asm("call               ?GetSpouse@Abode@@QAEPAVVillager@@PAV2@@Z");      // 0x00750346    e8e542cbff
    asm("mov.s              esi, eax");                                       // 0x0075034b    8bf0
    asm("test               esi, esi");                                       // 0x0075034d    85f6
    asm("{disp8} je         _jmp_addr_0x00750361");                           // 0x0075034f    7410
    asm("mov                eax, dword ptr [esi]");                           // 0x00750351    8b06
    asm("mov.s              ecx, esi");                                       // 0x00750353    8bce
    asm("call               dword ptr [eax + 0x2c]");                         // 0x00750355    ff502c
    asm("cmp                eax, 0x01");                                      // 0x00750358    83f801
    asm("{disp8} jne        _jmp_addr_0x00750361");                           // 0x0075035b    7504
    asm("mov.s              eax, esi");                                       // 0x0075035d    8bc6
    asm("pop                esi");                                            // 0x0075035f    5e
    asm("ret");                                                               // 0x00750360    c3
    asm("_jmp_addr_0x00750361:");
    asm("xor.s              eax, eax");                                       // 0x00750361    33c0
    asm("pop                esi");                                            // 0x00750363    5e
    asm("ret");                                                               // 0x00750364    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Villager* __fastcall LookAroundForVillagerInState__8VillagerF15VILLAGER_STATESUl(struct Villager* this, const void* edx, enum VILLAGER_STATES param_1, unsigned long param_2)
{
    asm("sub                esp, 0x10");                                      // 0x00750370    83ec10
    asm("push               ebx");                                            // 0x00750373    53
    asm("push               esi");                                            // 0x00750374    56
    asm("mov.s              esi, ecx");                                       // 0x00750375    8bf1
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                    // 0x00750377    8d4614
    asm("mov                ecx, dword ptr [eax]");                           // 0x0075037a    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                    // 0x0075037c    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                    // 0x0075037f    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                    // 0x00750382    89442414
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                    // 0x00750386    8b442420
    asm("test               eax, eax");                                       // 0x0075038a    85c0
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                    // 0x0075038c    894c240c
    asm("mov                ecx, 0x00000001");                                // 0x00750390    b901000000
    asm("push               edi");                                            // 0x00750395    57
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                    // 0x00750396    89542414
    asm("mov.s              edi, eax");                                       // 0x0075039a    8bf8
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                    // 0x0075039c    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x24], ecx");                    // 0x007503a0    894c2424
    asm("{disp8} je         _jmp_addr_0x007503ff");                           // 0x007503a4    7459
    asm("{disp8} mov        ebx, dword ptr [esp + 0x20]");                    // 0x007503a6    8b5c2420
    asm("_jmp_addr_0x007503aa:");
    asm("push               0x0");                                            // 0x007503aa    6a00
    asm("push               0x009cafc8");                                     // 0x007503ac    68c8af9c00
    asm("push               0x009c7f50");                                     // 0x007503b1    68507f9c00
    asm("push               0x0");                                            // 0x007503b6    6a00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                    // 0x007503b8    8d4c2420
    asm("call               ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ");                           // 0x007503bc    e8cf30ebff
    asm("push               eax");                                            // 0x007503c1    50
    asm("call               ___RTDynamicCast");                               // 0x007503c2    e852560700
    asm("add                esp, 0x14");                                      // 0x007503c7    83c414
    asm("test               eax, eax");                                       // 0x007503ca    85c0
    asm("{disp8} je         _jmp_addr_0x007503de");                           // 0x007503cc    7410
    asm("cmp.s              eax, esi");                                       // 0x007503ce    3bc6
    asm("{disp8} je         _jmp_addr_0x007503de");                           // 0x007503d0    740c
    asm("xor.s              ecx, ecx");                                       // 0x007503d2    33c9
    asm("{disp32} mov       cl, byte ptr [eax + 0x0000008c]");                // 0x007503d4    8a888c000000
    asm("cmp.s              ecx, ebx");                                       // 0x007503da    3bcb
    asm("{disp8} je         _jmp_addr_0x00750401");                           // 0x007503dc    7423
    asm("_jmp_addr_0x007503de:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                    // 0x007503de    8d542424
    asm("push               edx");                                            // 0x007503e2    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                    // 0x007503e3    8d442410
    asm("push               eax");                                            // 0x007503e7    50
    asm("dec                edi");                                            // 0x007503e8    4f
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");         // 0x007503e9    e8f2d3ffff
    asm("add                esp, 0x08");                                      // 0x007503ee    83c408
    asm("push               eax");                                            // 0x007503f1    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                    // 0x007503f2    8d4c2414
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");             // 0x007503f6    e87550ebff
    asm("test               edi, edi");                                       // 0x007503fb    85ff
    asm("{disp8} jne        _jmp_addr_0x007503aa");                           // 0x007503fd    75ab
    asm("_jmp_addr_0x007503ff:");
    asm("xor.s              eax, eax");                                       // 0x007503ff    33c0
    asm("_jmp_addr_0x00750401:");
    asm("pop                edi");                                            // 0x00750401    5f
    asm("pop                esi");                                            // 0x00750402    5e
    asm("pop                ebx");                                            // 0x00750403    5b
    asm("add                esp, 0x10");                                      // 0x00750404    83c410
    asm("ret                0x0008");                                         // 0x00750407    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall CheckEveryTime__8VillagerFv(struct Villager* this)
{
    asm("push               ebx");                                            // 0x00750410    53
    asm("push               esi");                                            // 0x00750411    56
    asm("mov.s              esi, ecx");                                       // 0x00750412    8bf1
    asm("xor.s              ecx, ecx");                                       // 0x00750414    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008c]");                // 0x00750416    8a8e8c000000
    asm("push               edi");                                            // 0x0075041c    57
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x0075041d    8d0449
    asm("shl                eax, 3");                                         // 0x00750420    c1e003
    asm("sub.s              eax, ecx");                                       // 0x00750423    2bc1
    asm("test               byte ptr [esi + 0x25], 0x04");                    // 0x00750425    f6462504
    asm("lea                eax, dword ptr [eax + eax * 0x2]");               // 0x00750429    8d0440
    asm("{disp32} lea       edi, dword ptr [eax * 0x4 + _GVillagerStateTableInfo_ARRAY_00db9e68]");        // 0x0075042c    8d3c85689edb00
    asm("{disp32} jne       _jmp_addr_0x0075065c");                           // 0x00750433    0f8523020000
    asm("{disp8} mov        eax, dword ptr [edi + 0x24]");                    // 0x00750439    8b4724
    asm("test               eax, eax");                                       // 0x0075043c    85c0
    asm("mov                edx, dword ptr [esi]");                           // 0x0075043e    8b16
    asm("{disp8} je         _jmp_addr_0x00750471");                           // 0x00750440    742f
    asm("{disp32} mov       eax, dword ptr [edi + 0x00000108]");              // 0x00750442    8b8708010000
    asm("push               0x0");                                            // 0x00750448    6a00
    asm("push               eax");                                            // 0x0075044a    50
    asm("mov.s              ecx, esi");                                       // 0x0075044b    8bce
    asm("call               dword ptr [edx + 0x5b8]");                        // 0x0075044d    ff92b8050000
    asm("fstp               st(0)");                                          // 0x00750453    ddd8
    asm("xor.s              ecx, ecx");                                       // 0x00750455    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008d]");                // 0x00750457    8a8e8d000000
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x0075045d    8d0449
    asm("shl                eax, 3");                                         // 0x00750460    c1e003
    asm("sub.s              eax, ecx");                                       // 0x00750463    2bc1
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");               // 0x00750465    8d0c40
    asm("{disp32} lea       edi, dword ptr [ecx * 0x4 + _GVillagerStateTableInfo_ARRAY_00db9e68]");        // 0x00750468    8d3c8d689edb00
    asm("{disp8} jmp        _jmp_addr_0x007504a1");                           // 0x0075046f    eb30
    asm("_jmp_addr_0x00750471:");
    asm("mov.s              ecx, esi");                                       // 0x00750471    8bce
    asm("call               dword ptr [edx + 0xb04]");                        // 0x00750473    ff92040b0000
    asm("mov                edx, dword ptr [esi]");                           // 0x00750479    8b16
    asm("push               0x0");                                            // 0x0075047b    6a00
    asm("and                eax, 0x000000ff");                                // 0x0075047d    25ff000000
    asm("mov.s              ecx, eax");                                       // 0x00750482    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x00750484    8d0449
    asm("shl                eax, 3");                                         // 0x00750487    c1e003
    asm("sub.s              eax, ecx");                                       // 0x0075048a    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");               // 0x0075048c    8d0440
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f70]");        // 0x0075048f    8b0c85709fdb00
    asm("push               ecx");                                            // 0x00750496    51
    asm("mov.s              ecx, esi");                                       // 0x00750497    8bce
    asm("call               dword ptr [edx + 0x5b8]");                        // 0x00750499    ff92b8050000
    asm("fstp               st(0)");                                          // 0x0075049f    ddd8
    asm("_jmp_addr_0x007504a1:");
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000f4]");              // 0x007504a1    8b87f4000000
    asm("test               eax, eax");                                       // 0x007504a7    85c0
    asm("{disp32} je        _jmp_addr_0x007505fc");                           // 0x007504a9    0f844d010000
    asm("mov                edx, dword ptr [esi]");                           // 0x007504af    8b16
    asm("mov.s              ecx, esi");                                       // 0x007504b1    8bce
    asm("call               dword ptr [edx + 0x11c]");                        // 0x007504b3    ff921c010000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                    // 0x007504b9    d81d98a38a00
    asm("fnstsw             ax");                                             // 0x007504bf    dfe0
    asm("test               ah, 0x40");                                       // 0x007504c1    f6c440
    asm("{disp8} je         _jmp_addr_0x0075050c");                           // 0x007504c4    7446
    asm("mov                eax, dword ptr [esi]");                           // 0x007504c6    8b06
    asm("mov.s              ecx, esi");                                       // 0x007504c8    8bce
    asm("call               dword ptr [eax + 0xb04]");                        // 0x007504ca    ff90040b0000
    asm("cmp                al, -0x08");                                      // 0x007504d0    3cf8
    asm("{disp8} je         _jmp_addr_0x007504ea");                           // 0x007504d2    7416
    asm("cmp                al, -0x07");                                      // 0x007504d4    3cf9
    asm("{disp8} je         _jmp_addr_0x007504ea");                           // 0x007504d6    7412
    asm("cmp                al, -0x06");                                      // 0x007504d8    3cfa
    asm("{disp8} je         _jmp_addr_0x007504ea");                           // 0x007504da    740e
    asm("test               byte ptr [esi + 0x000000e0], 0x02");              // 0x007504dc    f686e000000002
    asm("mov                edi, 0x00000008");                                // 0x007504e3    bf08000000
    asm("{disp8} je         _jmp_addr_0x007504ef");                           // 0x007504e8    7405
    asm("_jmp_addr_0x007504ea:");
    asm("mov                edi, 0x00000004");                                // 0x007504ea    bf04000000
    asm("_jmp_addr_0x007504ef:");
    asm("mov                edx, dword ptr [esi]");                           // 0x007504ef    8b16
    asm("push               0x1");                                            // 0x007504f1    6a01
    asm("push               0x0");                                            // 0x007504f3    6a00
    asm("mov.s              ecx, esi");                                       // 0x007504f5    8bce
    asm("call               dword ptr [edx + 0x1c]");                         // 0x007504f7    ff521c
    asm("push               eax");                                            // 0x007504fa    50
    asm("push               edi");                                            // 0x007504fb    57
    asm("mov.s              ecx, esi");                                       // 0x007504fc    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                           // 0x007504fe    e8bd010000
    asm("pop                edi");                                            // 0x00750503    5f
    asm("pop                esi");                                            // 0x00750504    5e
    asm("mov                eax, 0x00000001");                                // 0x00750505    b801000000
    asm("pop                ebx");                                            // 0x0075050a    5b
    asm("ret");                                                               // 0x0075050b    c3
    asm("_jmp_addr_0x0075050c:");
    asm("mov.s              ecx, esi");                                       // 0x0075050c    8bce
    asm("call               ?GetGameTurnsSinceLastChecked@Villager@@QAEIXZ"); // 0x0075050e    e85d010000
    asm("mov.s              ebx, eax");                                       // 0x00750513    8bd8
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x00750515    8b4628
    asm("cmp                ebx, dword ptr [eax + 0x000002dc]");              // 0x00750518    3b98dc020000
    asm("{disp32} jbe       _jmp_addr_0x007505fc");                           // 0x0075051e    0f86d8000000
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x00750524    8b0d5c19d000
    asm("push               ebp");                                            // 0x0075052a    55
    asm("{disp32} mov       ebp, dword ptr [ecx + 0x00205a40]");              // 0x0075052b    8ba9405a2000
    asm("mov.s              ecx, esi");                                       // 0x00750531    8bce
    asm("call               _jmp_addr_0x00436a80");                           // 0x00750533    e84865ceff
    asm("add.s              eax, ebp");                                       // 0x00750538    03c5
    asm("xor.s              edx, edx");                                       // 0x0075053a    33d2
    asm("mov                ecx, 0x00000320");                                // 0x0075053c    b920030000
    asm("div                ecx");                                            // 0x00750541    f7f1
    asm("pop                ebp");                                            // 0x00750543    5d
    asm("cmp.s              edx, ebx");                                       // 0x00750544    3bd3
    asm("{disp8} jae        _jmp_addr_0x00750557");                           // 0x00750546    730f
    asm("mov.s              ecx, esi");                                       // 0x00750548    8bce
    asm("call               _jmp_addr_0x00760ca0");                           // 0x0075054a    e851070100
    asm("test               eax, eax");                                       // 0x0075054f    85c0
    asm("{disp32} jne       _jmp_addr_0x0075065c");                           // 0x00750551    0f8505010000
    asm("_jmp_addr_0x00750557:");
    asm("mov                edx, dword ptr [esi]");                           // 0x00750557    8b16
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                    // 0x00750559    8b5e28
    asm("mov.s              ecx, esi");                                       // 0x0075055c    8bce
    asm("call               dword ptr [edx + 0x11c]");                        // 0x0075055e    ff921c010000
    asm("{disp32} fcomp     dword ptr [ebx + 0x0000035c]");                   // 0x00750564    d89b5c030000
    asm("fnstsw             ax");                                             // 0x0075056a    dfe0
    asm("test               ah, 0x01");                                       // 0x0075056c    f6c401
    asm("{disp8} je         _jmp_addr_0x007505c9");                           // 0x0075056f    7458
    asm("test               byte ptr [esi + 0x000000e0], 0x04");              // 0x00750571    f686e000000004
    asm("{disp8} jne        _jmp_addr_0x007505c9");                           // 0x00750578    754f
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000f8]");              // 0x0075057a    8b87f8000000
    asm("test               eax, eax");                                       // 0x00750580    85c0
    asm("{disp8} je         _jmp_addr_0x007505c9");                           // 0x00750582    7445
    asm("test               byte ptr [esi + 0x000000b4], -0x80");             // 0x00750584    f686b400000080
    asm("{disp8} jne        _jmp_addr_0x007505c9");                           // 0x0075058b    753c
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000e8]");              // 0x0075058d    8b87e8000000
    asm("test               eax, eax");                                       // 0x00750593    85c0
    asm("{disp8} jne        _jmp_addr_0x007505c9");                           // 0x00750595    7532
    asm("cmp                edi, 0x00dbb2e4");                                // 0x00750597    81ffe4b2db00
    asm("{disp8} je         _jmp_addr_0x007505a7");                           // 0x0075059d    7408
    asm("cmp                edi, 0x00dbb3f8");                                // 0x0075059f    81fff8b3db00
    asm("{disp8} jne        _jmp_addr_0x007505bd");                           // 0x007505a5    7516
    asm("_jmp_addr_0x007505a7:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x007505a7    8b4628
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                   // 0x007505aa    d986e8000000
    asm("{disp32} fcomp     dword ptr [eax + 0x000002c0]");                   // 0x007505b0    d898c0020000
    asm("fnstsw             ax");                                             // 0x007505b6    dfe0
    asm("test               ah, 0x41");                                       // 0x007505b8    f6c441
    asm("{disp8} jne        _jmp_addr_0x007505c9");                           // 0x007505bb    750c
    asm("_jmp_addr_0x007505bd:");
    asm("mov                edx, dword ptr [esi]");                           // 0x007505bd    8b16
    asm("push               0x24");                                           // 0x007505bf    6a24
    asm("mov.s              ecx, esi");                                       // 0x007505c1    8bce
    asm("call               dword ptr [edx + 0x8e8]");                        // 0x007505c3    ff92e8080000
    asm("_jmp_addr_0x007505c9:");
    asm("mov                eax, dword ptr [esi]");                           // 0x007505c9    8b06
    asm("mov.s              ecx, esi");                                       // 0x007505cb    8bce
    asm("call               dword ptr [eax + 0xaf8]");                        // 0x007505cd    ff90f80a0000
    asm("test               eax, eax");                                       // 0x007505d3    85c0
    asm("{disp8} je         _jmp_addr_0x007505de");                           // 0x007505d5    7407
    asm("mov.s              ecx, esi");                                       // 0x007505d7    8bce
    asm("call               ?CheckChildGrownUp@Villager@@QAEHXZ");            // 0x007505d9    e8720a0000
    asm("_jmp_addr_0x007505de:");
    asm("mov.s              ecx, esi");                                       // 0x007505de    8bce
    asm("call               ?IsWoman@Villager@@QAE_NXZ");                     // 0x007505e0    e83b200000
    asm("cmp                eax, 0x01");                                      // 0x007505e5    83f801
    asm("{disp8} jne        _jmp_addr_0x007505f1");                           // 0x007505e8    7507
    asm("mov.s              ecx, esi");                                       // 0x007505ea    8bce
    asm("call               ?WomanSpecial@Villager@@QAEIXZ");                 // 0x007505ec    e84f1c0000
    asm("_jmp_addr_0x007505f1:");
    asm("mov.s              ecx, esi");                                       // 0x007505f1    8bce
    asm("call               ?CheckHungry@Villager@@QAE_NXZ");                 // 0x007505f3    e8c8b60000
    asm("pop                edi");                                            // 0x007505f8    5f
    asm("pop                esi");                                            // 0x007505f9    5e
    asm("pop                ebx");                                            // 0x007505fa    5b
    asm("ret");                                                               // 0x007505fb    c3
    asm("_jmp_addr_0x007505fc:");
    asm("xor.s              ecx, ecx");                                       // 0x007505fc    33c9
    asm("{disp32} mov       cx, word ptr [esi + 0x000000e0]");                // 0x007505fe    668b8ee0000000
    asm("shr                ecx, 9");                                         // 0x00750605    c1e909
    asm("test               cl, 0x01");                                       // 0x00750608    f6c101
    asm("{disp8} je         _jmp_addr_0x0075065c");                           // 0x0075060b    744f
    asm("xor.s              eax, eax");                                       // 0x0075060d    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");                // 0x0075060f    8a86f2000000
    asm("{disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]");        // 0x00750615    8d14c500000000
    asm("sub.s              edx, eax");                                       // 0x0075061c    2bd0
    asm("cmp                dword ptr [edx * 0x4 + 0x0099a204], 0x01");       // 0x0075061e    833c9504a2990001
    asm("{disp8} jne        _jmp_addr_0x0075065c");                           // 0x00750626    7534
    asm("cmp                byte ptr [esi + 0x0000008d], -0x23");             // 0x00750628    80be8d000000dd
    asm("{disp8} jne        _jmp_addr_0x0075065c");                           // 0x0075062f    752b
    asm("mov                eax, dword ptr [esi]");                           // 0x00750631    8b06
    asm("mov.s              ecx, esi");                                       // 0x00750633    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x00750635    ff5048
    asm("test               eax, eax");                                       // 0x00750638    85c0
    asm("{disp8} je         _jmp_addr_0x0075065c");                           // 0x0075063a    7420
    asm("mov                edx, dword ptr [esi]");                           // 0x0075063c    8b16
    asm("mov.s              ecx, esi");                                       // 0x0075063e    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x00750640    ff5248
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000005e8]");              // 0x00750643    8b88e8050000
    asm("test               ecx, ecx");                                       // 0x00750649    85c9
    asm("{disp8} je         _jmp_addr_0x0075065c");                           // 0x0075064b    740f
    asm("mov                eax, dword ptr [esi]");                           // 0x0075064d    8b06
    asm("push               0x000000a3");                                     // 0x0075064f    68a3000000
    asm("mov.s              ecx, esi");                                       // 0x00750654    8bce
    asm("call               dword ptr [eax + 0x8e8]");                        // 0x00750656    ff90e8080000
    asm("_jmp_addr_0x0075065c:");
    asm("pop                edi");                                            // 0x0075065c    5f
    asm("pop                esi");                                            // 0x0075065d    5e
    asm("mov                eax, 0x00000001");                                // 0x0075065e    b801000000
    asm("pop                ebx");                                            // 0x00750663    5b
    asm("ret");                                                               // 0x00750664    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetGameTurnsSinceLastChecked__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [_game]");                         // 0x00750670    a15c19d000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00205a40]");              // 0x00750675    8b80405a2000
    asm("sub                eax, dword ptr [ecx + 0x000000ec]");              // 0x0075067b    2b81ec000000
    asm("ret");                                                               // 0x00750681    c3
    __builtin_unreachable();
}

int __fastcall GetGameTurnLastChecked__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000ec]");              // 0x00750690    8b81ec000000
    asm("ret");                                                               // 0x00750696    c3
    __builtin_unreachable();
}

void __fastcall SetGameTurnLastChecked__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [_game]");                         // 0x007506a0    a15c19d000
    asm("{disp32} mov       edx, dword ptr [eax + 0x00205a40]");              // 0x007506a5    8b90405a2000
    asm("{disp32} mov       dword ptr [ecx + 0x000000ec], edx");              // 0x007506ab    8991ec000000
    asm("ret");                                                               // 0x007506b1    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall VillagerDead__8VillagerF12DEATH_REASONP7GPlayerfi(struct Villager* this, const void* edx, enum DEATH_REASON param_1, struct GPlayer* param_2, float param_3, int param_4)
{
    asm("push               esi");                                            // 0x007506c0    56
    asm("mov.s              esi, ecx");                                       // 0x007506c1    8bf1
    asm("test               byte ptr [esi + 0x24], 0x40");                    // 0x007506c3    f6462440
    asm("{disp32} jne       _jmp_addr_0x00750930");                           // 0x007506c7    0f8563020000
    asm("mov                eax, dword ptr [esi]");                           // 0x007506cd    8b06
    asm("call               dword ptr [eax + 0xaf4]");                        // 0x007506cf    ff90f40a0000
    asm("test               eax, eax");                                       // 0x007506d5    85c0
    asm("{disp32} jne       _jmp_addr_0x00750930");                           // 0x007506d7    0f8553020000
    asm("mov                edx, dword ptr [esi]");                           // 0x007506dd    8b16
    asm("push               ebx");                                            // 0x007506df    53
    asm("mov.s              ecx, esi");                                       // 0x007506e0    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x007506e2    ff5248
    asm("{disp8} mov        ebx, dword ptr [esp + 0x0c]");                    // 0x007506e5    8b5c240c
    asm("test               ebx, ebx");                                       // 0x007506e9    85db
    asm("{disp8} je         _jmp_addr_0x00750713");                           // 0x007506eb    7426
    asm("cmp                ebx, 0x01");                                      // 0x007506ed    83fb01
    asm("{disp8} je         _jmp_addr_0x00750713");                           // 0x007506f0    7421
    asm("cmp                ebx, 0x03");                                      // 0x007506f2    83fb03
    asm("{disp8} je         _jmp_addr_0x00750713");                           // 0x007506f5    741c
    asm("cmp                ebx, 0x04");                                      // 0x007506f7    83fb04
    asm("{disp8} je         _jmp_addr_0x00750713");                           // 0x007506fa    7417
    asm("cmp                ebx, 0x08");                                      // 0x007506fc    83fb08
    asm("{disp8} je         _jmp_addr_0x00750713");                           // 0x007506ff    7412
    asm("cmp                ebx, 0x09");                                      // 0x00750701    83fb09
    asm("{disp8} je         _jmp_addr_0x00750713");                           // 0x00750704    740d
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                    // 0x00750706    8b4c2410
    asm("push               0x1");                                            // 0x0075070a    6a01
    asm("push               0x0");                                            // 0x0075070c    6a00
    asm("call               _jmp_addr_0x0064da80");                           // 0x0075070e    e86dd3efff
    asm("_jmp_addr_0x00750713:");
    asm("mov                eax, dword ptr [esi]");                           // 0x00750713    8b06
    asm("push               ebp");                                            // 0x00750715    55
    asm("push               edi");                                            // 0x00750716    57
    asm("mov.s              ecx, esi");                                       // 0x00750717    8bce
    asm("call               dword ptr [eax + 0x1c]");                         // 0x00750719    ff501c
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x0075071c    8b0d5c19d000
    asm("mov.s              ebp, eax");                                       // 0x00750722    8be8
    asm("test               ebp, ebp");                                       // 0x00750724    85ed
    asm("{disp8} jne        _jmp_addr_0x00750740");                           // 0x00750726    7518
    asm("xor.s              eax, eax");                                       // 0x00750728    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x00205a5b]");                // 0x0075072a    8a815b5a2000
    asm("lea                edx, dword ptr [eax + eax * 0x4]");               // 0x00750730    8d1480
    asm("lea                edx, dword ptr [eax + edx * 0x8]");               // 0x00750733    8d14d0
    asm("lea                eax, dword ptr [eax + edx * 0x2]");               // 0x00750736    8d0450
    asm("shl                eax, 5");                                         // 0x00750739    c1e005
    asm("{disp8} lea        ebp, dword ptr [eax + ecx * 0x1 + 0x18]");        // 0x0075073c    8d6c0818
    asm("_jmp_addr_0x00750740:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                    // 0x00750740    8b442418
    asm("test               eax, eax");                                       // 0x00750744    85c0
    asm("{disp8} jne        _jmp_addr_0x00750764");                           // 0x00750746    751c
    asm("xor.s              eax, eax");                                       // 0x00750748    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x00205a5b]");                // 0x0075074a    8a815b5a2000
    asm("lea                edx, dword ptr [eax + eax * 0x4]");               // 0x00750750    8d1480
    asm("lea                edx, dword ptr [eax + edx * 0x8]");               // 0x00750753    8d14d0
    asm("lea                eax, dword ptr [eax + edx * 0x2]");               // 0x00750756    8d0450
    asm("shl                eax, 5");                                         // 0x00750759    c1e005
    asm("{disp8} lea        edx, dword ptr [eax + ecx * 0x1 + 0x18]");        // 0x0075075c    8d540818
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                    // 0x00750760    89542418
    asm("_jmp_addr_0x00750764:");
    asm("call               _jmp_addr_0x00555880");                           // 0x00750764    e81751e0ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                    // 0x00750769    8b4c2418
    asm("mov.s              edi, eax");                                       // 0x0075076d    8bf8
    asm("push               edi");                                            // 0x0075076f    57
    asm("call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");                           // 0x00750770    e8dbcfefff
    asm("test               eax, eax");                                       // 0x00750775    85c0
    asm("{disp8} je         _jmp_addr_0x00750792");                           // 0x00750777    7419
    asm("lea                eax, dword ptr [ebx + ebx * 0x2]");               // 0x00750779    8d045b
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x0099a368]");        // 0x0075077c    8b0c8568a39900
    asm("test               ecx, ecx");                                       // 0x00750783    85c9
    asm("{disp8} je         _jmp_addr_0x007507c0");                           // 0x00750785    7439
    asm("{disp8} mov        ecx, dword ptr [edi + 0x30]");                    // 0x00750787    8b4f30
    asm("push               esi");                                            // 0x0075078a    56
    asm("call               _jmp_addr_0x0071ce70");                           // 0x0075078b    e8e0c6fcff
    asm("{disp8} jmp        _jmp_addr_0x007507c0");                           // 0x00750790    eb2e
    asm("_jmp_addr_0x00750792:");
    asm("push               edi");                                            // 0x00750792    57
    asm("mov.s              ecx, ebp");                                       // 0x00750793    8bcd
    asm("call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");                           // 0x00750795    e8b6cfefff
    asm("test               eax, eax");                                       // 0x0075079a    85c0
    asm("{disp8} je         _jmp_addr_0x007507c0");                           // 0x0075079c    7422
    asm("lea                ecx, dword ptr [ebx + ebx * 0x2]");               // 0x0075079e    8d0c5b
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x0099a370]");        // 0x007507a1    8b048d70a39900
    asm("test               eax, eax");                                       // 0x007507a8    85c0
    asm("{disp8} je         _jmp_addr_0x007507c0");                           // 0x007507aa    7414
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x007507ac    8b0d5c19d000
    asm("call               _jmp_addr_0x00555880");                           // 0x007507b2    e8c950e0ff
    asm("push               eax");                                            // 0x007507b7    50
    asm("call               _jmp_addr_0x0071c810");                           // 0x007507b8    e853c0fcff
    asm("add                esp, 0x04");                                      // 0x007507bd    83c404
    asm("_jmp_addr_0x007507c0:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                    // 0x007507c0    8b442420
    asm("test               eax, eax");                                       // 0x007507c4    85c0
    asm("{disp8} je         _jmp_addr_0x007507d5");                           // 0x007507c6    740d
    asm("push               0x0");                                            // 0x007507c8    6a00
    asm("push               0x0");                                            // 0x007507ca    6a00
    asm("push               0x0");                                            // 0x007507cc    6a00
    asm("mov.s              ecx, esi");                                       // 0x007507ce    8bce
    asm("call               ?CreateDroppedResource@Villager@@QAEXPAULHPoint@@00@Z");                           // 0x007507d0    e86b010000
    asm("_jmp_addr_0x007507d5:");
    asm("push               0x0");                                            // 0x007507d5    6a00
    asm("mov.s              ecx, esi");                                       // 0x007507d7    8bce
    asm("call               ?DropWood@Villager@@QAEGG@Z");                    // 0x007507d9    e8620a0000
    asm("push               0x0");                                            // 0x007507de    6a00
    asm("mov.s              ecx, esi");                                       // 0x007507e0    8bce
    asm("call               ?DropFood@Villager@@QAEGG@Z");                    // 0x007507e2    e8f9090000
    asm("xor.s              edx, edx");                                       // 0x007507e7    33d2
    asm("{disp32} mov       dx, word ptr [esi + 0x000000e0]");                // 0x007507e9    668b96e0000000
    asm("shr                edx, 9");                                         // 0x007507f0    c1ea09
    asm("test               dl, 0x01");                                       // 0x007507f3    f6c201
    asm("{disp8} je         _jmp_addr_0x00750805");                           // 0x007507f6    740d
    asm("push               0x0");                                            // 0x007507f8    6a00
    asm("push               0x0");                                            // 0x007507fa    6a00
    asm("push               0x0");                                            // 0x007507fc    6a00
    asm("mov.s              ecx, esi");                                       // 0x007507fe    8bce
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                           // 0x00750800    e8fb570000
    asm("_jmp_addr_0x00750805:");
    asm("test               ebp, ebp");                                       // 0x00750805    85ed
    asm("{disp8} je         _jmp_addr_0x0075081d");                           // 0x00750807    7414
    asm("mov                eax, dword ptr [esi]");                           // 0x00750809    8b06
    asm("{disp8} mov        edi, dword ptr [ebp + 0x60]");                    // 0x0075080b    8b7d60
    asm("push               ebx");                                            // 0x0075080e    53
    asm("push               esi");                                            // 0x0075080f    56
    asm("mov.s              ecx, esi");                                       // 0x00750810    8bce
    asm("call               dword ptr [eax + 0x1c]");                         // 0x00750812    ff501c
    asm("push               eax");                                            // 0x00750815    50
    asm("mov.s              ecx, edi");                                       // 0x00750816    8bcf
    asm("call               _jmp_addr_0x004143b0");                           // 0x00750818    e8933bccff
    asm("_jmp_addr_0x0075081d:");
    asm("mov                edx, dword ptr [esi]");                           // 0x0075081d    8b16
    asm("mov.s              ecx, esi");                                       // 0x0075081f    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x00750821    ff5248
    asm("mov.s              edi, eax");                                       // 0x00750824    8bf8
    asm("test               edi, edi");                                       // 0x00750826    85ff
    asm("{disp32} je        _jmp_addr_0x007508f4");                           // 0x00750828    0f84c6000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                    // 0x0075082e    8b44241c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                    // 0x00750832    8b4c2418
    asm("push               eax");                                            // 0x00750836    50
    asm("push               ebx");                                            // 0x00750837    53
    asm("push               ecx");                                            // 0x00750838    51
    asm("mov.s              ecx, edi");                                       // 0x00750839    8bcf
    asm("call               _jmp_addr_0x0073e0a0");                           // 0x0075083b    e860d8feff
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                    // 0x00750840    8b54241c
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                    // 0x00750844    8b442418
    asm("push               edx");                                            // 0x00750848    52
    asm("push               eax");                                            // 0x00750849    50
    asm("push               ebx");                                            // 0x0075084a    53
    asm("push               esi");                                            // 0x0075084b    56
    asm("mov.s              ecx, edi");                                       // 0x0075084c    8bcf
    asm("call               _jmp_addr_0x0073e440");                           // 0x0075084e    e8eddbfeff
    asm("test               ebp, ebp");                                       // 0x00750853    85ed
    asm("{disp32} je        _jmp_addr_0x007508f4");                           // 0x00750855    0f8499000000
    asm("cmp                ebx, 0x04");                                      // 0x0075085b    83fb04
    asm("{disp8} jne        _jmp_addr_0x00750883");                           // 0x0075085e    7523
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x00750860    8b0d5c19d000
    asm("call               _jmp_addr_0x00555880");                           // 0x00750866    e81550e0ff
    asm("mov.s              edi, eax");                                       // 0x0075086b    8bf8
    asm("push               edi");                                            // 0x0075086d    57
    asm("mov.s              ecx, ebp");                                       // 0x0075086e    8bcd
    asm("call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");                           // 0x00750870    e8dbceefff
    asm("test               eax, eax");                                       // 0x00750875    85c0
    asm("{disp8} je         _jmp_addr_0x007508f4");                           // 0x00750877    747b
    asm("{disp8} mov        ecx, dword ptr [edi + 0x30]");                    // 0x00750879    8b4f30
    asm("call               _jmp_addr_0x0071cfe0");                           // 0x0075087c    e85fc7fcff
    asm("{disp8} jmp        _jmp_addr_0x007508f4");                           // 0x00750881    eb71
    asm("_jmp_addr_0x00750883:");
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                    // 0x00750883    8b4f28
    asm("{disp32} mov       edx, dword ptr [edi + 0x00000618]");              // 0x00750886    8b9718060000
    asm("cmp                edx, dword ptr [ecx + 0x00000150]");              // 0x0075088c    3b9150010000
    asm("{disp8} jbe        _jmp_addr_0x007508cc");                           // 0x00750892    7638
    asm("lea                eax, dword ptr [ebx + ebx * 0x2]");               // 0x00750894    8d045b
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x0099a36c]");        // 0x00750897    8b0c856ca39900
    asm("test               ecx, ecx");                                       // 0x0075089e    85c9
    asm("{disp8} je         _jmp_addr_0x007508f4");                           // 0x007508a0    7452
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x007508a2    8b0d5c19d000
    asm("call               _jmp_addr_0x00555880");                           // 0x007508a8    e8d34fe0ff
    asm("mov.s              edi, eax");                                       // 0x007508ad    8bf8
    asm("cmp                dword ptr [esp + 0x18], ebp");                    // 0x007508af    396c2418
    asm("{disp8} je         _jmp_addr_0x007508f4");                           // 0x007508b3    743f
    asm("push               edi");                                            // 0x007508b5    57
    asm("mov.s              ecx, ebp");                                       // 0x007508b6    8bcd
    asm("call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");                           // 0x007508b8    e893ceefff
    asm("test               eax, eax");                                       // 0x007508bd    85c0
    asm("{disp8} je         _jmp_addr_0x007508f4");                           // 0x007508bf    7433
    asm("{disp8} mov        ecx, dword ptr [edi + 0x30]");                    // 0x007508c1    8b4f30
    asm("push               esi");                                            // 0x007508c4    56
    asm("call               _jmp_addr_0x0071c990");                           // 0x007508c5    e8c6c0fcff
    asm("{disp8} jmp        _jmp_addr_0x007508f4");                           // 0x007508ca    eb28
    asm("_jmp_addr_0x007508cc:");
    asm("{disp32} mov       ecx, dword ptr [_game]");                         // 0x007508cc    8b0d5c19d000
    asm("call               _jmp_addr_0x00555880");                           // 0x007508d2    e8a94fe0ff
    asm("push               eax");                                            // 0x007508d7    50
    asm("mov.s              ecx, ebp");                                       // 0x007508d8    8bcd
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                    // 0x007508da    89442420
    asm("call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z");                           // 0x007508de    e86dceefff
    asm("test               eax, eax");                                       // 0x007508e3    85c0
    asm("{disp8} je         _jmp_addr_0x007508f4");                           // 0x007508e5    740d
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                    // 0x007508e7    8b4c241c
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x30]");                    // 0x007508eb    8b4930
    asm("push               edi");                                            // 0x007508ee    57
    asm("call               ?HelpSpritesLowOnPeople@GGuidance@@QAEXAAVTown@@@Z");                           // 0x007508ef    e8ecc2fcff
    asm("_jmp_addr_0x007508f4:");
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000b4]");                // 0x007508f4    8a96b4000000
    asm("and                dl, 0x01");                                       // 0x007508fa    80e201
    asm("cmp                dl, 0x01");                                       // 0x007508fd    80fa01
    asm("pop                edi");                                            // 0x00750900    5f
    asm("pop                ebp");                                            // 0x00750901    5d
    asm("{disp8} je         _jmp_addr_0x00750929");                           // 0x00750902    7425
    asm("mov                eax, dword ptr [esi]");                           // 0x00750904    8b06
    asm("mov.s              ecx, esi");                                       // 0x00750906    8bce
    asm("call               dword ptr [eax + 0x6a4]");                        // 0x00750908    ff90a4060000
    asm("cmp                ebx, 0x07");                                      // 0x0075090e    83fb07
    asm("{disp8} jne        _jmp_addr_0x00750929");                           // 0x00750911    7516
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                    // 0x00750913    8b4c2410
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000a44]");              // 0x00750917    8b81440a0000
    asm("{disp32} inc       dword ptr [eax + 0x00001124]");                   // 0x0075091d    ff8024110000
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                  // 0x00750923    66c746580000
    asm("_jmp_addr_0x00750929:");
    asm("{disp32} mov       byte ptr [esi + 0x00000118], bl");                // 0x00750929    889e18010000
    asm("pop                ebx");                                            // 0x0075092f    5b
    asm("_jmp_addr_0x00750930:");
    asm("pop                esi");                                            // 0x00750930    5e
    asm("ret                0x0010");                                         // 0x00750931    c21000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall CreateDroppedResource__8VillagerFP7LHPointP7LHPointP7LHPoint(struct Villager* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct LHPoint* param_3)
{
    asm("sub                esp, 0x24");                                      // 0x00750940    83ec24
    asm("push               esi");                                            // 0x00750943    56
    asm("push               edi");                                            // 0x00750944    57
    asm("mov.s              edi, ecx");                                       // 0x00750945    8bf9
    asm("{disp32} mov       cx, word ptr [edi + 0x000000f6]");                // 0x00750947    668b8ff6000000
    asm("xor.s              eax, eax");                                       // 0x0075094e    33c0
    asm("{disp32} mov       al, byte ptr [edi + 0x000000f1]");                // 0x00750950    8a87f1000000
    asm("cmp                eax, 0x01");                                      // 0x00750956    83f801
    asm("{disp32} jle       _jmp_addr_0x00750a9a");                           // 0x00750959    0f8e3b010000
    asm("cmp                eax, 0x10");                                      // 0x0075095f    83f810
    asm("{disp32} jge       _jmp_addr_0x00750a9a");                           // 0x00750962    0f8d32010000
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                    // 0x00750968    8b5728
    asm("{disp32} mov       esi, dword ptr [edx + 0x0000026c]");              // 0x0075096b    8bb26c020000
    asm("movsx              ecx, cx");                                        // 0x00750971    0fbfc9
    asm("cmp.s              ecx, esi");                                       // 0x00750974    3bce
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                    // 0x00750976    894c240c
    asm("{disp32} jle       _jmp_addr_0x00750a9a");                           // 0x0075097a    0f8e1a010000
    asm("{disp8} lea        ecx, dword ptr [edi + 0x14]");                    // 0x00750980    8d4f14
    asm("mov                edx, dword ptr [ecx]");                           // 0x00750983    8b11
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                    // 0x00750985    89542420
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                    // 0x00750989    8b5104
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                    // 0x0075098c    8b4908
    asm("{disp8} mov        dword ptr [esp + 0x28], ecx");                    // 0x0075098f    894c2428
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00c5e19c]");        // 0x00750993    8b0c859ce1c500
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                    // 0x0075099a    89542424
    asm("mov                edx, dword ptr [ecx]");                           // 0x0075099e    8b11
    asm("call               dword ptr [edx + 0xf8]");                         // 0x007509a0    ff92f8000000
    asm("push               eax");                                            // 0x007509a6    50
    asm("push               0x0");                                            // 0x007509a7    6a00
    asm("push               0x0");                                            // 0x007509a9    6a00
    asm("push               0x3fc90fdb");                                     // 0x007509ab    68db0fc93f
    asm("push               0x3f800000");                                     // 0x007509b0    680000803f
    asm("push               0x0");                                            // 0x007509b5    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x38]");                    // 0x007509b7    8d442438
    asm("push               0x00da49d8");                                     // 0x007509bb    68d849da00
    asm("push               eax");                                            // 0x007509c0    50
    asm("call               _jmp_addr_0x00510bb0");                           // 0x007509c1    e8ea01dcff
    asm("{disp8} fild       dword ptr [esp + 0x2c]");                         // 0x007509c6    db44242c
    asm("mov.s              esi, eax");                                       // 0x007509ca    8bf0
    asm("mov                edx, dword ptr [esi]");                           // 0x007509cc    8b16
    asm("add                esp, 0x20");                                      // 0x007509ce    83c420
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                         // 0x007509d1    d95c240c
    asm("mov.s              ecx, esi");                                       // 0x007509d5    8bce
    asm("call               dword ptr [edx + 0x664]");                        // 0x007509d7    ff9264060000
    asm("{disp8} fdivr      dword ptr [esp + 0x0c]");                         // 0x007509dd    d87c240c
    asm("{disp8} mov        eax, dword ptr [esp + 0x30]");                    // 0x007509e1    8b442430
    asm("test               eax, eax");                                       // 0x007509e5    85c0
    asm("{disp32} fstp      dword ptr [esi + 0x0000009c]");                   // 0x007509e7    d99e9c000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");             // 0x007509ed    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");             // 0x007509f5    c744241800000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");             // 0x007509fd    c744241c00000000
    asm("{disp8} je         _jmp_addr_0x00750a23");                           // 0x00750a05    741c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                    // 0x00750a07    8b4c2434
    asm("test               ecx, ecx");                                       // 0x00750a0b    85c9
    asm("{disp8} jne        _jmp_addr_0x00750a13");                           // 0x00750a0d    7504
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                    // 0x00750a0f    8d4c2414
    asm("_jmp_addr_0x00750a13:");
    asm("mov                edx, dword ptr [esi]");                           // 0x00750a13    8b16
    asm("push               0x0");                                            // 0x00750a15    6a00
    asm("push               0x1");                                            // 0x00750a17    6a01
    asm("push               0x0");                                            // 0x00750a19    6a00
    asm("push               ecx");                                            // 0x00750a1b    51
    asm("push               eax");                                            // 0x00750a1c    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                    // 0x00750a1d    8d442420
    asm("{disp8} jmp        _jmp_addr_0x00750a39");                           // 0x00750a21    eb16
    asm("_jmp_addr_0x00750a23:");
    asm("mov                edx, dword ptr [esi]");                           // 0x00750a23    8b16
    asm("push               0x0");                                            // 0x00750a25    6a00
    asm("push               0x1");                                            // 0x00750a27    6a01
    asm("push               0x0");                                            // 0x00750a29    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                    // 0x00750a2b    8d442420
    asm("push               eax");                                            // 0x00750a2f    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                    // 0x00750a30    8d4c2424
    asm("push               ecx");                                            // 0x00750a34    51
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                    // 0x00750a35    8d442420
    asm("_jmp_addr_0x00750a39:");
    asm("push               eax");                                            // 0x00750a39    50
    asm("mov.s              ecx, esi");                                       // 0x00750a3a    8bce
    asm("call               dword ptr [edx + 0x784]");                        // 0x00750a3c    ff9284070000
    asm("mov                eax, dword ptr [eax]");                           // 0x00750a42    8b00
    asm("test               eax, eax");                                       // 0x00750a44    85c0
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                    // 0x00750a46    89442408
    asm("{disp8} je         _jmp_addr_0x00750a91");                           // 0x00750a4a    7445
    asm("{disp8} mov        ecx, dword ptr [esp + 0x38]");                    // 0x00750a4c    8b4c2438
    asm("test               ecx, ecx");                                       // 0x00750a50    85c9
    asm("{disp8} je         _jmp_addr_0x00750a6d");                           // 0x00750a52    7419
    asm("mov                edx, dword ptr [ecx]");                           // 0x00750a54    8b11
    asm("add                eax, 0x00000090");                                // 0x00750a56    0590000000
    asm("mov                dword ptr [eax], edx");                           // 0x00750a5b    8910
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                    // 0x00750a5d    8b5104
    asm("{disp8} mov        dword ptr [eax + 0x04], edx");                    // 0x00750a60    895004
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                    // 0x00750a63    8b4908
    asm("{disp8} mov        dword ptr [eax + 0x08], ecx");                    // 0x00750a66    894808
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x00750a69    8b442408
    asm("_jmp_addr_0x00750a6d:");
    asm("or                 dword ptr [eax + 0x1d8], 0x10");                  // 0x00750a6d    8388d801000010
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                    // 0x00750a74    8b542408
    asm("push               0x1");                                            // 0x00750a78    6a01
    asm("push               0x0");                                            // 0x00750a7a    6a00
    asm("{disp8} lea        ecx, dword ptr [edx + 0x28]");                    // 0x00750a7c    8d4a28
    asm("call               _jmp_addr_0x007fcb80");                           // 0x00750a7f    e8fcc00a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                    // 0x00750a84    8d442408
    asm("push               eax");                                            // 0x00750a88    50
    asm("call               _jmp_addr_0x00644800");                           // 0x00750a89    e8723defff
    asm("add                esp, 0x04");                                      // 0x00750a8e    83c404
    asm("_jmp_addr_0x00750a91:");
    asm("push               0x0");                                            // 0x00750a91    6a00
    asm("mov.s              ecx, edi");                                       // 0x00750a93    8bcf
    asm("call               ?DropWood@Villager@@QAEGG@Z");                    // 0x00750a95    e8a6070000
    asm("_jmp_addr_0x00750a9a:");
    asm("pop                edi");                                            // 0x00750a9a    5f
    asm("pop                esi");                                            // 0x00750a9b    5e
    asm("add                esp, 0x24");                                      // 0x00750a9c    83c424
    asm("ret                0x000c");                                         // 0x00750a9f    c20c00
    __builtin_unreachable();
}

bool __fastcall HasSunk__8VillagerFv(struct Object* this)
{
    asm("push               esi");                                            // 0x00750ab0    56
    asm("mov.s              esi, ecx");                                       // 0x00750ab1    8bf1
    asm("mov                eax, dword ptr [esi]");                           // 0x00750ab3    8b06
    asm("call               dword ptr [eax + 0x2c]");                         // 0x00750ab5    ff502c
    asm("test               eax, eax");                                       // 0x00750ab8    85c0
    asm("{disp8} jne        _jmp_addr_0x00750abe");                           // 0x00750aba    7502
    asm("pop                esi");                                            // 0x00750abc    5e
    asm("ret");                                                               // 0x00750abd    c3
    asm("_jmp_addr_0x00750abe:");
    asm("push               edi");                                            // 0x00750abe    57
    asm("mov.s              ecx, esi");                                       // 0x00750abf    8bce
    asm("call               _jmp_addr_0x0063a710");                           // 0x00750ac1    e84a9ceeff
    asm("test               eax, eax");                                       // 0x00750ac6    85c0
    asm("{disp8} je         _jmp_addr_0x00750af2");                           // 0x00750ac8    7428
    asm("mov.s              ecx, esi");                                       // 0x00750aca    8bce
    asm("call               _jmp_addr_0x0063a710");                           // 0x00750acc    e83f9ceeff
    asm("mov                edx, dword ptr [eax]");                           // 0x00750ad1    8b10
    asm("mov.s              ecx, eax");                                       // 0x00750ad3    8bc8
    asm("call               dword ptr [edx + 0x1c]");                         // 0x00750ad5    ff521c
    asm("mov.s              edi, eax");                                       // 0x00750ad8    8bf8
    asm("test               edi, edi");                                       // 0x00750ada    85ff
    asm("{disp8} je         _jmp_addr_0x00750af2");                           // 0x00750adc    7414
    asm("push               0x0");                                            // 0x00750ade    6a00
    asm("push               esi");                                            // 0x00750ae0    56
    asm("push               0x15");                                           // 0x00750ae1    6a15
    asm("mov.s              ecx, esi");                                       // 0x00750ae3    8bce
    asm("call               _jmp_addr_0x0063a710");                           // 0x00750ae5    e8269ceeff
    asm("push               eax");                                            // 0x00750aea    50
    asm("mov.s              ecx, edi");                                       // 0x00750aeb    8bcf
    asm("call               _jmp_addr_0x004ea900");                           // 0x00750aed    e80e9ed9ff
    asm("_jmp_addr_0x00750af2:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x00750af2    8b4628
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000b4]");                // 0x00750af5    8a96b4000000
    asm("{disp32} mov       cx, word ptr [eax + 0x0000039a]");                // 0x00750afb    668b889a030000
    asm("mov                eax, dword ptr [esi]");                           // 0x00750b02    8b06
    asm("and                dl, 0x01");                                       // 0x00750b04    80e201
    asm("cmp                dl, 0x01");                                       // 0x00750b07    80fa01
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                      // 0x00750b0a    66894e58
    asm("pop                edi");                                            // 0x00750b0e    5f
    asm("{disp8} jne        _jmp_addr_0x00750b30");                           // 0x00750b0f    751f
    asm("push               0xe");                                            // 0x00750b11    6a0e
    asm("mov.s              ecx, esi");                                       // 0x00750b13    8bce
    asm("call               dword ptr [eax + 0x8e8]");                        // 0x00750b15    ff90e8080000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                    // 0x00750b1b    8b4e28
    asm("{disp32} mov       dx, word ptr [ecx + 0x00000290]");                // 0x00750b1e    668b9190020000
    asm("{disp8} mov        word ptr [esi + 0x58], dx");                      // 0x00750b25    66895658
    asm("mov                eax, 0x00000001");                                // 0x00750b29    b801000000
    asm("pop                esi");                                            // 0x00750b2e    5e
    asm("ret");                                                               // 0x00750b2f    c3
    asm("_jmp_addr_0x00750b30:");
    asm("push               0x10");                                           // 0x00750b30    6a10
    asm("mov.s              ecx, esi");                                       // 0x00750b32    8bce
    asm("call               dword ptr [eax + 0x8e8]");                        // 0x00750b34    ff90e8080000
    asm("mov                eax, 0x00000001");                                // 0x00750b3a    b801000000
    asm("pop                esi");                                            // 0x00750b3f    5e
    asm("ret");                                                               // 0x00750b40    c3
    __builtin_unreachable();
}

void __fastcall TownDeleted__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [_game]");                         // 0x00750b50    a15c19d000
    asm("push               esi");                                            // 0x00750b55    56
    asm("mov.s              esi, ecx");                                       // 0x00750b56    8bf1
    asm("{disp32} lea       ecx, dword ptr [eax + 0x00205bfc]");              // 0x00750b58    8d88fc5b2000
    asm("mov                eax, dword ptr [ecx]");                           // 0x00750b5e    8b01
    asm("test               eax, eax");                                       // 0x00750b60    85c0
    asm("{disp8} je         _jmp_addr_0x00750b78");                           // 0x00750b62    7414
    asm("_jmp_addr_0x00750b64:");
    asm("cmp.s              eax, esi");                                       // 0x00750b64    3bc6
    asm("{disp8} je         _jmp_addr_0x00750b74");                           // 0x00750b66    740c
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000e4]");              // 0x00750b68    8b80e4000000
    asm("test               eax, eax");                                       // 0x00750b6e    85c0
    asm("{disp8} jne        _jmp_addr_0x00750b64");                           // 0x00750b70    75f2
    asm("{disp8} jmp        _jmp_addr_0x00750b78");                           // 0x00750b72    eb04
    asm("_jmp_addr_0x00750b74:");
    asm("test               eax, eax");                                       // 0x00750b74    85c0
    asm("{disp8} jne        _jmp_addr_0x00750b89");                           // 0x00750b76    7511
    asm("_jmp_addr_0x00750b78:");
    asm("mov                edx, dword ptr [ecx]");                           // 0x00750b78    8b11
    asm("{disp32} mov       dword ptr [esi + 0x000000e4], edx");              // 0x00750b7a    8996e4000000
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                    // 0x00750b80    8b4104
    asm("inc                eax");                                            // 0x00750b83    40
    asm("mov                dword ptr [ecx], esi");                           // 0x00750b84    8931
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                    // 0x00750b86    894104
    asm("_jmp_addr_0x00750b89:");
    asm("mov                eax, dword ptr [esi]");                           // 0x00750b89    8b06
    asm("push               0x00000082");                                     // 0x00750b8b    6882000000
    asm("mov.s              ecx, esi");                                       // 0x00750b90    8bce
    asm("call               dword ptr [eax + 0x8e8]");                        // 0x00750b92    ff90e8080000
    asm("push               0x0");                                            // 0x00750b98    6a00
    asm("mov.s              ecx, esi");                                       // 0x00750b9a    8bce
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");             // 0x00750b9c    e88f590000
    asm("pop                esi");                                            // 0x00750ba1    5e
    asm("ret");                                                               // 0x00750ba2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall DebugText__8VillagerFi(struct Villager* this, const void* edx, int param_1)
{
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x30dc38]");         // 0x00750bb0    a1383ccd00
    asm("sub                esp, 0x000003d4");                                // 0x00750bb5    81ecd4030000
    asm("test               eax, eax");                                       // 0x00750bbb    85c0
    asm("push               esi");                                            // 0x00750bbd    56
    asm("mov.s              esi, ecx");                                       // 0x00750bbe    8bf1
    asm("{disp32} je        _jmp_addr_0x00750dcf");                           // 0x00750bc0    0f8409020000
    asm("{disp32} mov       eax, dword ptr [esp + 0x000003dc]");              // 0x00750bc6    8b8424dc030000
    asm("test               eax, eax");                                       // 0x00750bcd    85c0
    asm("{disp32} jne       _jmp_addr_0x00750dcf");                           // 0x00750bcf    0f85fa010000
    asm("mov                eax, dword ptr [esi]");                           // 0x00750bd5    8b06
    asm("call               dword ptr [eax + 0xb04]");                        // 0x00750bd7    ff90040b0000
    asm("cmp                al, -0x01");                                      // 0x00750bdd    3cff
    asm("{disp8} mov        byte ptr [esp + 0x04], al");                      // 0x00750bdf    88442404
    asm("{disp32} jae       _jmp_addr_0x00750c80");                           // 0x00750be3    0f8397000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x00750be9    8b442404
    asm("and                eax, 0x000000ff");                                // 0x00750bed    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");               // 0x00750bf2    8d0c40
    asm("shl                ecx, 3");                                         // 0x00750bf5    c1e103
    asm("sub.s              ecx, eax");                                       // 0x00750bf8    2bc8
    asm("lea                ecx, dword ptr [ecx + ecx * 0x2]");               // 0x00750bfa    8d0c49
    asm("{disp32} lea       edx, dword ptr [ecx * 0x4 + 0x00db9ea0]");        // 0x00750bfd    8d148da09edb00
    asm("push               edx");                                            // 0x00750c04    52
    asm("{disp32} lea       eax, dword ptr [esp + 0x00000214]");              // 0x00750c05    8d842414020000
    asm("push               0x009c8c40");                                     // 0x00750c0c    68408c9c00
    asm("push               eax");                                            // 0x00750c11    50
    asm("call               _sprintf");                                       // 0x00750c12    e8bb4b0700
    asm("mov                eax, dword ptr [esi]");                           // 0x00750c17    8b06
    asm("xor.s              ecx, ecx");                                       // 0x00750c19    33c9
    asm("{disp32} mov       cx, word ptr [esi + 0x000000f6]");                // 0x00750c1b    668b8ef6000000
    asm("xor.s              edx, edx");                                       // 0x00750c22    33d2
    asm("{disp32} mov       dx, word ptr [esi + 0x000000f4]");                // 0x00750c24    668b96f4000000
    asm("add                esp, 0x0c");                                      // 0x00750c2b    83c40c
    asm("push               esi");                                            // 0x00750c2e    56
    asm("push               ecx");                                            // 0x00750c2f    51
    asm("mov.s              ecx, esi");                                       // 0x00750c30    8bce
    asm("push               edx");                                            // 0x00750c32    52
    asm("call               dword ptr [eax + 0x8d0]");                        // 0x00750c33    ff90d0080000
    asm("movsx              ecx, word ptr [esi + 0x58]");                     // 0x00750c39    0fbf4e58
    asm("push               eax");                                            // 0x00750c3d    50
    asm("push               ecx");                                            // 0x00750c3e    51
    asm("{disp32} lea       edx, dword ptr [esp + 0x00000224]");              // 0x00750c3f    8d942424020000
    asm("push               edx");                                            // 0x00750c46    52
    asm("mov.s              ecx, esi");                                       // 0x00750c47    8bce
    asm("call               ?GetGameTurnLastChecked@Villager@@QAEHXZ");       // 0x00750c49    e842faffff
    asm("push               eax");                                            // 0x00750c4e    50
    asm("{disp32} fld       dword ptr [esi + 0x000000e8]");                   // 0x00750c4f    d986e8000000
    asm("mov                eax, dword ptr [esi]");                           // 0x00750c55    8b06
    asm("sub                esp, 0x08");                                      // 0x00750c57    83ec08
    asm("mov.s              ecx, esi");                                       // 0x00750c5a    8bce
    asm("fstp               qword ptr [esp]");                                // 0x00750c5c    dd1c24
    asm("call               dword ptr [eax + 0x11c]");                        // 0x00750c5f    ff901c010000
    asm("sub                esp, 0x08");                                      // 0x00750c65    83ec08
    asm("fstp               qword ptr [esp]");                                // 0x00750c68    dd1c24
    asm("{disp32} lea       ecx, dword ptr [esp + 0x00000174]");              // 0x00750c6b    8d8c2474010000
    asm("push               0x00c23644");                                     // 0x00750c72    684436c200
    asm("push               ecx");                                            // 0x00750c77    51
    asm("call               _sprintf");                                       // 0x00750c78    e8554b0700
    asm("add                esp, 0x34");                                      // 0x00750c7d    83c434
    asm("_jmp_addr_0x00750c80:");
    asm("{disp32} lea       edx, dword ptr [esp + 0x00000148]");              // 0x00750c80    8d942448010000
    asm("push               edx");                                            // 0x00750c87    52
    asm("push               0x00cd3b24");                                     // 0x00750c88    68243bcd00
    asm("call               _jmp_addr_0x00511d80");                           // 0x00750c8d    e8ee10dcff
    asm("mov                eax, dword ptr [esi]");                           // 0x00750c92    8b06
    asm("add                esp, 0x08");                                      // 0x00750c94    83c408
    asm("mov.s              ecx, esi");                                       // 0x00750c97    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x00750c99    ff5048
    asm("mov.s              edx, eax");                                       // 0x00750c9c    8bd0
    asm("test               edx, edx");                                       // 0x00750c9e    85d2
    asm("{disp32} je        _jmp_addr_0x00750dcf");                           // 0x00750ca0    0f8429010000
    asm("{disp32} mov       eax, dword ptr [edx + 0x00000974]");              // 0x00750ca6    8b8274090000
    asm("test               eax, eax");                                       // 0x00750cac    85c0
    asm("{disp32} jbe       _jmp_addr_0x00750dcf");                           // 0x00750cae    0f861b010000
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25d63c]");         // 0x00750cb4    8b0d3c36c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25d640]");         // 0x00750cba    a14036c200
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                    // 0x00750cbf    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                    // 0x00750cc3    8944240c
    asm("push               edi");                                            // 0x00750cc7    57
    asm("xor.s              eax, eax");                                       // 0x00750cc8    33c0
    asm("mov                ecx, 0x0000000e");                                // 0x00750cca    b90e000000
    asm("{disp8} lea        edi, dword ptr [esp + 0x14]");                    // 0x00750ccf    8d7c2414
    asm("rep stosd");                                                         // 0x00750cd3    f3ab
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25d634]");         // 0x00750cd5    8b0d3436c200
    asm("{disp32} mov       ax, word ptr [data_bytes + 0x25d638]");           // 0x00750cdb    66a13836c200
    asm("{disp8} mov        dword ptr [esp + 0x4c], ecx");                    // 0x00750ce1    894c244c
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x25d63a]");           // 0x00750ce5    8a0d3a36c200
    asm("{disp8} mov        word ptr [esp + 0x50], ax");                      // 0x00750ceb    6689442450
    asm("{disp8} mov        byte ptr [esp + 0x52], cl");                      // 0x00750cf0    884c2452
    asm("xor.s              eax, eax");                                       // 0x00750cf4    33c0
    asm("mov                ecx, 0x0000000e");                                // 0x00750cf6    b90e000000
    asm("{disp8} lea        edi, dword ptr [esp + 0x53]");                    // 0x00750cfb    8d7c2453
    asm("rep stosd");                                                         // 0x00750cff    f3ab
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25d62c]");         // 0x00750d01    8b0d2c36c200
    asm("stosb");                                                             // 0x00750d07    aa
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25d628]");         // 0x00750d08    a12836c200
    asm("{disp32} mov       dword ptr [esp + 0x0000008c], eax");              // 0x00750d0d    8984248c000000
    asm("{disp32} mov       ax, word ptr [data_bytes + 0x25d630]");           // 0x00750d14    66a13036c200
    asm("{disp32} mov       dword ptr [esp + 0x00000090], ecx");              // 0x00750d1a    898c2490000000
    asm("{disp32} mov       word ptr [esp + 0x00000094], ax");                // 0x00750d21    6689842494000000
    asm("xor.s              eax, eax");                                       // 0x00750d29    33c0
    asm("mov                ecx, 0x0000000d");                                // 0x00750d2b    b90d000000
    asm("{disp32} lea       edi, dword ptr [esp + 0x00000096]");              // 0x00750d30    8dbc2496000000
    asm("rep stosd");                                                         // 0x00750d37    f3ab
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25d620]");         // 0x00750d39    8b0d2036c200
    asm("stosw");                                                             // 0x00750d3f    66ab
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x25d624]");           // 0x00750d41    a02436c200
    asm("{disp32} mov       dword ptr [esp + 0x000000cc], ecx");              // 0x00750d46    898c24cc000000
    asm("{disp32} mov       byte ptr [esp + 0x000000d0], al");                // 0x00750d4d    888424d0000000
    asm("xor.s              eax, eax");                                       // 0x00750d54    33c0
    asm("mov                ecx, 0x0000000e");                                // 0x00750d56    b90e000000
    asm("{disp32} lea       edi, dword ptr [esp + 0x000000d1]");              // 0x00750d5b    8dbc24d1000000
    asm("rep stosd");                                                         // 0x00750d62    f3ab
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25d618]");         // 0x00750d64    8b0d1836c200
    asm("stosw");                                                             // 0x00750d6a    66ab
    asm("stosb");                                                             // 0x00750d6c    aa
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25d61c]");         // 0x00750d6d    a11c36c200
    asm("{disp32} mov       dword ptr [esp + 0x0000010c], ecx");              // 0x00750d72    898c240c010000
    asm("{disp32} mov       dword ptr [esp + 0x00000110], eax");              // 0x00750d79    89842410010000
    asm("xor.s              eax, eax");                                       // 0x00750d80    33c0
    asm("mov                ecx, 0x0000000e");                                // 0x00750d82    b90e000000
    asm("{disp32} lea       edi, dword ptr [esp + 0x00000114]");              // 0x00750d87    8dbc2414010000
    asm("rep stosd");                                                         // 0x00750d8e    f3ab
    asm("{disp32} mov       ecx, dword ptr [edx + 0x00000970]");              // 0x00750d90    8b8a70090000
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                    // 0x00750d96    8b5104
    asm("{disp8} mov        eax, dword ptr [edx + 0x14]");                    // 0x00750d99    8b4214
    asm("shl                eax, 6");                                         // 0x00750d9c    c1e006
    asm("{disp8} lea        ecx, dword ptr [esp + eax * 0x1 + 0x0c]");        // 0x00750d9f    8d4c040c
    asm("push               ecx");                                            // 0x00750da3    51
    asm("{disp32} lea       edx, dword ptr [esp + 0x000002e0]");              // 0x00750da4    8d9424e0020000
    asm("push               0x00c235fc");                                     // 0x00750dab    68fc35c200
    asm("push               edx");                                            // 0x00750db0    52
    asm("call               _sprintf");                                       // 0x00750db1    e81c4a0700
    asm("add                esp, 0x0c");                                      // 0x00750db6    83c40c
    asm("{disp32} lea       eax, dword ptr [esp + 0x000002dc]");              // 0x00750db9    8d8424dc020000
    asm("push               eax");                                            // 0x00750dc0    50
    asm("push               0x00cd3b24");                                     // 0x00750dc1    68243bcd00
    asm("call               _jmp_addr_0x00511d80");                           // 0x00750dc6    e8b50fdcff
    asm("add                esp, 0x08");                                      // 0x00750dcb    83c408
    asm("pop                edi");                                            // 0x00750dce    5f
    asm("_jmp_addr_0x00750dcf:");
    asm("pop                esi");                                            // 0x00750dcf    5e
    asm("add                esp, 0x000003d4");                                // 0x00750dd0    81c4d4030000
    asm("ret                0x0004");                                         // 0x00750dd6    c20400
    __builtin_unreachable();
}

void __fastcall SetAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Town* town)
{
    asm("push               esi");                                            // 0x00750de0    56
    asm("push               edi");                                            // 0x00750de1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                    // 0x00750de2    8b7c240c
    asm("mov.s              esi, ecx");                                       // 0x00750de6    8bf1
    asm("push               0x0");                                            // 0x00750de8    6a00
    asm("{disp32} mov       dword ptr [esi + 0x00000128], edi");              // 0x00750dea    89be28010000
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");             // 0x00750df0    e83b570000
    asm("test               edi, edi");                                       // 0x00750df5    85ff
    asm("{disp8} je         _jmp_addr_0x00750e08");                           // 0x00750df7    740f
    asm("mov                eax, dword ptr [edi]");                           // 0x00750df9    8b07
    asm("mov.s              ecx, edi");                                       // 0x00750dfb    8bcf
    asm("call               dword ptr [eax + 0x48]");                         // 0x00750dfd    ff5048
    asm("push               eax");                                            // 0x00750e00    50
    asm("mov.s              ecx, esi");                                       // 0x00750e01    8bce
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");             // 0x00750e03    e828570000
    asm("_jmp_addr_0x00750e08:");
    asm("pop                edi");                                            // 0x00750e08    5f
    asm("pop                esi");                                            // 0x00750e09    5e
    asm("ret                0x0004");                                         // 0x00750e0a    c20400
    __builtin_unreachable();
}

bool __fastcall GetRandomLookAhead__8VillagerFP9MapCoordsf(struct Villager* this, const void* edx, struct MapCoords* param_1, float param_2)
{
    asm("{disp8} fld        dword ptr [esp + 0x08]");                         // 0x00750e10    d9442408
    asm("push               ebx");                                            // 0x00750e14    53
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                    // 0x00750e15    d81d98a38a00
    asm("push               esi");                                            // 0x00750e1b    56
    asm("push               edi");                                            // 0x00750e1c    57
    asm("mov.s              esi, ecx");                                       // 0x00750e1d    8bf1
    asm("fnstsw             ax");                                             // 0x00750e1f    dfe0
    asm("test               ah, 0x40");                                       // 0x00750e21    f6c440
    asm("{disp8} je         _jmp_addr_0x00750e4c");                           // 0x00750e24    7426
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x00750e26    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x000002a4]");              // 0x00750e29    8b80a4020000
    asm("push               0x000003f1");                                     // 0x00750e2f    68f1030000
    asm("push               0x00c235dc");                                     // 0x00750e34    68dc35c200
    asm("push               eax");                                            // 0x00750e39    50
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                   // 0x00750e3a    e8f1d6f8ff
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                    // 0x00750e3f    d80590a38a00
    asm("add                esp, 0x0c");                                      // 0x00750e45    83c40c
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                         // 0x00750e48    d95c2414
    asm("_jmp_addr_0x00750e4c:");
    asm("{disp8} mov        di, word ptr [esi + 0x5c]");                      // 0x00750e4c    668b7e5c
    asm("push               0x000003f4");                                     // 0x00750e50    68f4030000
    asm("push               0x00c235dc");                                     // 0x00750e55    68dc35c200
    asm("push               0x00000200");                                     // 0x00750e5a    6800020000
    asm("call               ?GameRand@GRand@@SAHJ@Z");                        // 0x00750e5f    e8acd6f8ff
    asm("{disp8} mov        ebx, dword ptr [esp + 0x20]");                    // 0x00750e64    8b5c2420
    asm("add                esi, 0x14");                                      // 0x00750e68    83c614
    asm("{disp32} lea       edi, dword ptr [eax + edi * 0x1 + -0x00000100]"); // 0x00750e6b    8dbc3800ffffff
    asm("mov.s              ecx, esi");                                       // 0x00750e72    8bce
    asm("mov                eax, dword ptr [ecx]");                           // 0x00750e74    8b01
    asm("{disp8} mov        esi, dword ptr [esp + 0x1c]");                    // 0x00750e76    8b74241c
    asm("mov.s              edx, esi");                                       // 0x00750e7a    8bd6
    asm("mov                dword ptr [edx], eax");                           // 0x00750e7c    8902
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                    // 0x00750e7e    8b4104
    asm("{disp8} mov        dword ptr [edx + 0x04], eax");                    // 0x00750e81    894204
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                    // 0x00750e84    8b4908
    asm("and                edi, 0x000007ff");                                // 0x00750e87    81e7ff070000
    asm("push               ebx");                                            // 0x00750e8d    53
    asm("push               edi");                                            // 0x00750e8e    57
    asm("{disp8} mov        dword ptr [edx + 0x08], ecx");                    // 0x00750e8f    894a08
    asm("call               ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z");     // 0x00750e92    e889c5ffff
    asm("mov                edx, dword ptr [esi]");                           // 0x00750e97    8b16
    asm("add.s              edx, eax");                                       // 0x00750e99    03d0
    asm("push               ebx");                                            // 0x00750e9b    53
    asm("push               edi");                                            // 0x00750e9c    57
    asm("mov                dword ptr [esi], edx");                           // 0x00750e9d    8916
    asm("call               ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z");     // 0x00750e9f    e87cc5ffff
    asm("{disp8} mov        edi, dword ptr [esi + 0x04]");                    // 0x00750ea4    8b7e04
    asm("add.s              edi, eax");                                       // 0x00750ea7    03f8
    asm("add                esp, 0x1c");                                      // 0x00750ea9    83c41c
    asm("mov.s              ecx, esi");                                       // 0x00750eac    8bce
    asm("{disp8} mov        dword ptr [esi + 0x04], edi");                    // 0x00750eae    897e04
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                    // 0x00750eb1    e80a34ebff
    asm("neg                eax");                                            // 0x00750eb6    f7d8
    asm("pop                edi");                                            // 0x00750eb8    5f
    asm("sbb.s              eax, eax");                                       // 0x00750eb9    1bc0
    asm("pop                esi");                                            // 0x00750ebb    5e
    asm("neg                eax");                                            // 0x00750ebc    f7d8
    asm("pop                ebx");                                            // 0x00750ebe    5b
    asm("ret                0x0008");                                         // 0x00750ebf    c20800
    __builtin_unreachable();
}

void __fastcall SetSpeed__8VillagerFli(struct Villager* this, const void* edx, int base_speed, int scale_speed)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x00750ed0    8b442408
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                    // 0x00750ed4    d90590a38a00
    asm("sub                esp, 0x08");                                      // 0x00750eda    83ec08
    asm("test               eax, eax");                                       // 0x00750edd    85c0
    asm("push               esi");                                            // 0x00750edf    56
    asm("push               edi");                                            // 0x00750ee0    57
    asm("mov.s              esi, ecx");                                       // 0x00750ee1    8bf1
    asm("{disp32} je        _jmp_addr_0x00751014");                           // 0x00750ee3    0f842b010000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x3c]");                    // 0x00750ee9    8b4e3c
    asm("fstp               st(0)");                                          // 0x00750eec    ddd8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");               // 0x00750eee    8d0449
    asm("shl                eax, 4");                                         // 0x00750ef1    c1e004
    asm("sub.s              eax, ecx");                                       // 0x00750ef4    2bc1
    asm("cdq");                                                               // 0x00750ef6    99
    asm("mov                ecx, 0x0000001f");                                // 0x00750ef7    b91f000000
    asm("idiv               ecx");                                            // 0x00750efc    f7f9
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x00750efe    8b7e28
    asm("mov.s              ecx, esi");                                       // 0x00750f01    8bce
    asm("sub                edx, 0x10");                                      // 0x00750f03    83ea10
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                    // 0x00750f06    89542418
    asm("{disp8} fild       dword ptr [esp + 0x18]");                         // 0x00750f0a    db442418
    asm("mov                edx, dword ptr [esi]");                           // 0x00750f0e    8b16
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]");              // 0x00750f10    d80d104b8c00
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                    // 0x00750f16    d80590a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                         // 0x00750f1c    d95c2418
    asm("call               dword ptr [edx + 0x8d0]");                        // 0x00750f20    ff92d0080000
    asm("cmp                eax, dword ptr [edi + 0x00000138]");              // 0x00750f26    3b8738010000
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x00750f2c    8b7e28
    asm("{disp8} jae        _jmp_addr_0x00750f7d");                           // 0x00750f2f    734c
    asm("mov                eax, dword ptr [esi]");                           // 0x00750f31    8b06
    asm("mov.s              ecx, esi");                                       // 0x00750f33    8bce
    asm("call               dword ptr [eax + 0x8d0]");                        // 0x00750f35    ff90d0080000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00000138]");              // 0x00750f3b    8b8f38010000
    asm("sub.s              ecx, eax");                                       // 0x00750f41    2bc8
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                    // 0x00750f43    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");             // 0x00750f47    c744240c00000000
    asm("{disp8} fild       qword ptr [esp + 0x08]");                         // 0x00750f4f    df6c2408
    asm("{disp32} fmul      dword ptr [_rdata_float0p2]");                    // 0x00750f53    d80daca38a00
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");               // 0x00750f59    d80d04c48a00
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x1ea44]");              // 0x00750f5f    d815447a8c00
    asm("fnstsw             ax");                                             // 0x00750f65    dfe0
    asm("test               ah, 0x01");                                       // 0x00750f67    f6c401
    asm("{disp8} jne        _jmp_addr_0x00750f74");                           // 0x00750f6a    7508
    asm("fstp               st(0)");                                          // 0x00750f6c    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x1ea44]");              // 0x00750f6e    d905447a8c00
    asm("_jmp_addr_0x00750f74:");
    asm("{disp8} fsubr      dword ptr [esp + 0x18]");                         // 0x00750f74    d86c2418
    asm("{disp32} jmp       _jmp_addr_0x00751014");                           // 0x00750f78    e997000000
    asm("_jmp_addr_0x00750f7d:");
    asm("mov                edx, dword ptr [esi]");                           // 0x00750f7d    8b16
    asm("mov.s              ecx, esi");                                       // 0x00750f7f    8bce
    asm("call               dword ptr [edx + 0x8d0]");                        // 0x00750f81    ff92d0080000
    asm("cmp                eax, dword ptr [edi + 0x0000013c]");              // 0x00750f87    3b873c010000
    asm("{disp8} jbe        _jmp_addr_0x00750fd9");                           // 0x00750f8d    764a
    asm("mov                eax, dword ptr [esi]");                           // 0x00750f8f    8b06
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x00750f91    8b7e28
    asm("mov.s              ecx, esi");                                       // 0x00750f94    8bce
    asm("call               dword ptr [eax + 0x8d0]");                        // 0x00750f96    ff90d0080000
    asm("sub                eax, dword ptr [edi + 0x0000013c]");              // 0x00750f9c    2b873c010000
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                    // 0x00750fa2    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");             // 0x00750fa6    c744240c00000000
    asm("{disp8} fild       qword ptr [esp + 0x08]");                         // 0x00750fae    df6c2408
    asm("{disp32} fmul      dword ptr [_rdata_float0p2]");                    // 0x00750fb2    d80daca38a00
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");               // 0x00750fb8    d80d04c48a00
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x1ea44]");              // 0x00750fbe    d815447a8c00
    asm("fnstsw             ax");                                             // 0x00750fc4    dfe0
    asm("test               ah, 0x01");                                       // 0x00750fc6    f6c401
    asm("{disp8} jne        _jmp_addr_0x00750f74");                           // 0x00750fc9    75a9
    asm("fstp               st(0)");                                          // 0x00750fcb    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x1ea44]");              // 0x00750fcd    d905447a8c00
    asm("{disp8} fsubr      dword ptr [esp + 0x18]");                         // 0x00750fd3    d86c2418
    asm("{disp8} jmp        _jmp_addr_0x00751014");                           // 0x00750fd7    eb3b
    asm("_jmp_addr_0x00750fd9:");
    asm("mov.s              ecx, esi");                                       // 0x00750fd9    8bce
    asm("call               ?GetDesireForFood@Villager@@QAEMXZ");             // 0x00750fdb    e870ab0000
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");               // 0x00750fe0    d80d04c48a00
    asm("mov                edx, dword ptr [esi]");                           // 0x00750fe6    8b16
    asm("mov.s              ecx, esi");                                       // 0x00750fe8    8bce
    asm("{disp8} fsubr      dword ptr [esp + 0x18]");                         // 0x00750fea    d86c2418
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                         // 0x00750fee    d95c2418
    asm("call               dword ptr [edx + 0x11c]");                        // 0x00750ff2    ff921c010000
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x00750ff8    8b4628
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");               // 0x00750ffb    d80d04c48a00
    asm("cmp                dword ptr [eax + 0x000001f8], 0x01");             // 0x00751001    83b8f801000001
    asm("{disp8} fsubr      dword ptr [esp + 0x18]");                         // 0x00751008    d86c2418
    asm("{disp8} jne        _jmp_addr_0x00751014");                           // 0x0075100c    7506
    asm("{disp32} fsub      dword ptr [__real@3e4ccccd]");                    // 0x0075100e    d82544b28a00
    asm("_jmp_addr_0x00751014:");
    asm("{disp8} fild       dword ptr [esp + 0x14]");                         // 0x00751014    db442414
    asm("fmul               st, st(1)");                                      // 0x00751018    d8c9
    asm("call               _jmp_addr_0x007a1400");                           // 0x0075101a    e8e1030500
    asm("fstp               st(0)");                                          // 0x0075101f    ddd8
    asm("push               eax");                                            // 0x00751021    50
    asm("mov.s              ecx, esi");                                       // 0x00751022    8bce
    asm("call               ?SetSpeed@MobileWallHug@@UAEXH@Z");               // 0x00751024    e827ecebff
    asm("pop                edi");                                            // 0x00751029    5f
    asm("pop                esi");                                            // 0x0075102a    5e
    asm("add                esp, 0x08");                                      // 0x0075102b    83c408
    asm("ret                0x0008");                                         // 0x0075102e    c20800
    __builtin_unreachable();
}

void __fastcall Birthday__8VillagerFv(struct Living* this)
{
    return;
}

__attribute__((XOR32rr_REV))
int __fastcall CheckChildGrownUp__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                            // 0x00751050    56
    asm("mov.s              esi, ecx");                                       // 0x00751051    8bf1
    asm("mov                eax, dword ptr [esi]");                           // 0x00751053    8b06
    asm("push               edi");                                            // 0x00751055    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                    // 0x00751056    8b7e28
    asm("call               dword ptr [eax + 0x8d0]");                        // 0x00751059    ff90d0080000
    asm("cmp                eax, dword ptr [edi + 0x00000138]");              // 0x0075105f    3b8738010000
    asm(".byte              0x72, 0x6f");// {disp8} jb _jmp_addr_0x007510d6   // 0x00751065    726f
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xf7, 0xff");// and word ptr [esi + 0x000000e0], -0x0009 // 0x00751067    6681a6e0000000f7ff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                    // 0x00751070    8b4e28
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000138]");              // 0x00751073    8b8138010000
    asm("cmp                eax, 0x12");                                      // 0x00751079    83f812
    asm("{disp8} jae        _jmp_addr_0x00751083");                           // 0x0075107c    7305
    asm("mov                eax, 0x00000012");                                // 0x0075107e    b812000000
    asm("_jmp_addr_0x00751083:");
    asm("mov                edx, dword ptr [esi]");                           // 0x00751083    8b16
    asm("push               eax");                                            // 0x00751085    50
    asm("mov.s              ecx, esi");                                       // 0x00751086    8bce
    asm("call               dword ptr [edx + 0x8d4]");                        // 0x00751088    ff92d4080000
    asm("mov.s              ecx, esi");                                       // 0x0075108e    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");            // 0x00751090    e8cb100000
    asm("test               eax, eax");                                       // 0x00751095    85c0
    asm("{disp8} je         _jmp_addr_0x007510b2");                           // 0x00751097    7419
    asm("push               esi");                                            // 0x00751099    56
    asm("mov.s              ecx, esi");                                       // 0x0075109a    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");            // 0x0075109c    e8bf100000
    asm("mov.s              ecx, eax");                                       // 0x007510a1    8bc8
    asm("call               ?ChildToAdult@Abode@@QAEXPAVVillager@@@Z");       // 0x007510a3    e8183ccbff
    asm("mov.s              ecx, esi");                                       // 0x007510a8    8bce
    asm("call               ?ChildBecomesAdult@Villager@@QAE_NXZ");           // 0x007510aa    e8616e0000
    asm("pop                edi");                                            // 0x007510af    5f
    asm("pop                esi");                                            // 0x007510b0    5e
    asm("ret");                                                               // 0x007510b1    c3
    asm("_jmp_addr_0x007510b2:");
    asm("mov                eax, dword ptr [esi]");                           // 0x007510b2    8b06
    asm("mov.s              ecx, esi");                                       // 0x007510b4    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x007510b6    ff5048
    asm("test               eax, eax");                                       // 0x007510b9    85c0
    asm("{disp8} je         _jmp_addr_0x007510cc");                           // 0x007510bb    740f
    asm("mov                edx, dword ptr [esi]");                           // 0x007510bd    8b16
    asm("push               esi");                                            // 0x007510bf    56
    asm("mov.s              ecx, esi");                                       // 0x007510c0    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x007510c2    ff5248
    asm("mov.s              ecx, eax");                                       // 0x007510c5    8bc8
    asm("call               ?ChildToAdult@Town@@QAEXPAVVillager@@@Z");        // 0x007510c7    e8849efeff
    asm("_jmp_addr_0x007510cc:");
    asm("mov.s              ecx, esi");                                       // 0x007510cc    8bce
    asm("call               ?ChildBecomesAdult@Villager@@QAE_NXZ");           // 0x007510ce    e83d6e0000
    asm("pop                edi");                                            // 0x007510d3    5f
    asm("pop                esi");                                            // 0x007510d4    5e
    asm("ret");                                                               // 0x007510d5    c3
    asm("_jmp_addr_0x007510d6:");
    asm("{disp32} mov       edx, dword ptr [_game]");                         // 0x007510d6    8b155c19d000
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x33ba04]");         // 0x007510dc    8b0d041ad000
    asm("{disp32} mov       eax, dword ptr [edx + 0x00205a40]");              // 0x007510e2    8b82405a2000
    asm("shr                ecx, 2");                                         // 0x007510e8    c1e902
    asm("xor.s              edx, edx");                                       // 0x007510eb    33d2
    asm("div                ecx");                                            // 0x007510ed    f7f1
    asm("test               edx, edx");                                       // 0x007510ef    85d2
    asm("{disp8} jne        _jmp_addr_0x00751105");                           // 0x007510f1    7512
    asm("mov                eax, dword ptr [esi]");                           // 0x007510f3    8b06
    asm("mov.s              ecx, esi");                                       // 0x007510f5    8bce
    asm("call               dword ptr [eax + 0x8d0]");                        // 0x007510f7    ff90d0080000
    asm("push               eax");                                            // 0x007510fd    50
    asm("mov.s              ecx, esi");                                       // 0x007510fe    8bce
    asm("call               ?SetScaleForAge@Villager@@QAEXK@Z");              // 0x00751100    e88b190000
    asm("_jmp_addr_0x00751105:");
    asm("pop                edi");                                            // 0x00751105    5f
    asm("pop                esi");                                            // 0x00751106    5e
    asm("ret");                                                               // 0x00751107    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAMother__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x00751110    8b4128
    asm("{disp32} mov       edx, dword ptr [eax + 0x000001f8]");              // 0x00751113    8b90f8010000
    asm("xor.s              ecx, ecx");                                       // 0x00751119    33c9
    asm("cmp                edx, 0x01");                                      // 0x0075111b    83fa01
    asm("sete               cl");                                             // 0x0075111e    0f94c1
    asm("mov.s              eax, ecx");                                       // 0x00751121    8bc1
    asm("ret");                                                               // 0x00751123    c3
    asm("nop");                                                               // 0x00751124    90
    asm("nop");                                                               // 0x00751125    90
    asm("nop");                                                               // 0x00751126    90
    asm("nop");                                                               // 0x00751127    90
    asm("nop");                                                               // 0x00751128    90
    asm("nop");                                                               // 0x00751129    90
    asm("nop");                                                               // 0x0075112a    90
    asm("nop");                                                               // 0x0075112b    90
    asm("nop");                                                               // 0x0075112c    90
    asm("nop");                                                               // 0x0075112d    90
    asm("nop");                                                               // 0x0075112e    90
    asm("nop");                                                               // 0x0075112f    90
    asm("sub                esp, 0x14");                                      // 0x00751130    83ec14
    asm("xor.s              eax, eax");                                       // 0x00751133    33c0
    asm("xor.s              ecx, ecx");                                       // 0x00751135    33c9
    asm("{disp8} mov        dword ptr [esp + 0x00], ecx");                    // 0x00751137    894c2400
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                    // 0x0075113b    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                    // 0x0075113f    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                    // 0x00751143    894c240c
    asm("{disp8} mov        word ptr [esp + 0x10], cx");                      // 0x00751147    66894c2410
    asm("mov                ecx, 0x00da6ddc");                                // 0x0075114c    b9dc6dda00
    asm("_jmp_addr_0x00751151:");
    asm("mov                edx, dword ptr [ecx]");                           // 0x00751151    8b11
    asm("{disp8} inc        word ptr [esp + edx * 0x2 + 0x00]");              // 0x00751153    66ff445400
    asm("{disp8} lea        edx, dword ptr [esp + edx * 0x2 + 0x00]");        // 0x00751158    8d545400
    asm("add                ecx, 0x000003a4");                                // 0x0075115c    81c1a4030000
    asm("{disp32} lea       edx, dword ptr [ecx + -0x000001f4]");             // 0x00751162    8d910cfeffff
    asm("cmp                edx, 0x00db9db8");                                // 0x00751168    81fab89ddb00
    asm(".byte              0x72, 0xe1");// {disp8} jb _jmp_addr_0x00751151   // 0x0075116e    72e1
    asm("push               esi");                                            // 0x00751170    56
    asm("{disp8} lea        edx, dword ptr [esp + 0x04]");                    // 0x00751171    8d542404
    asm("mov                esi, 0x00000009");                                // 0x00751175    be09000000
    asm("_jmp_addr_0x0075117a:");
    asm("xor.s              ecx, ecx");                                       // 0x0075117a    33c9
    asm("mov                cx, word ptr [edx]");                             // 0x0075117c    668b0a
    asm("cmp.s              ecx, eax");                                       // 0x0075117f    3bc8
    asm("{disp8} jbe        _jmp_addr_0x00751185");                           // 0x00751181    7602
    asm("mov.s              eax, ecx");                                       // 0x00751183    8bc1
    asm("_jmp_addr_0x00751185:");
    asm("add                edx, 0x02");                                      // 0x00751185    83c202
    asm("dec                esi");                                            // 0x00751188    4e
    asm("{disp8} jne        _jmp_addr_0x0075117a");                           // 0x00751189    75ef
    asm("pop                esi");                                            // 0x0075118b    5e
    asm("add                esp, 0x14");                                      // 0x0075118c    83c414
    asm("ret");                                                               // 0x0075118f    c3
    __builtin_unreachable();
}

bool __fastcall StartMoveToObject__8VillagerFP6Object15VILLAGER_STATES(struct Villager* this, const void* edx, struct Object* param_1, enum VILLAGER_STATES param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x00751190    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x00751194    8b542404
    asm("push               eax");                                            // 0x00751198    50
    asm("push               edx");                                            // 0x00751199    52
    asm("call               ?SetupMoveToObject@Living@@QAE_NPAVObject@@E@Z"); // 0x0075119a    e86116eaff
    asm("mov                eax, 0x00000001");                                // 0x0075119f    b801000000
    asm("ret                0x0008");                                         // 0x007511a4    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint16_t __fastcall DropResource__8VillagerF13RESOURCE_TYPEUs(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, unsigned short param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x007511b0    8b442404
    asm("cmp                eax, 0x01");                                      // 0x007511b4    83f801
    asm("{disp8} jne        _jmp_addr_0x007511c6");                           // 0x007511b7    750d
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x007511b9    8b442408
    asm("push               eax");                                            // 0x007511bd    50
    asm("call               ?DropWood@Villager@@QAEGG@Z");                    // 0x007511be    e87d000000
    asm("ret                0x0008");                                         // 0x007511c3    c20800
    asm("_jmp_addr_0x007511c6:");
    asm("test               eax, eax");                                       // 0x007511c6    85c0
    asm("{disp8} jne        _jmp_addr_0x007511d7");                           // 0x007511c8    750d
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                    // 0x007511ca    8b542408
    asm("push               edx");                                            // 0x007511ce    52
    asm("call               ?DropFood@Villager@@QAEGG@Z");                    // 0x007511cf    e80c000000
    asm("ret                0x0008");                                         // 0x007511d4    c20800
    asm("_jmp_addr_0x007511d7:");
    asm("xor.s              ax, ax");                                         // 0x007511d7    6633c0
    asm("ret                0x0008");                                         // 0x007511da    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint16_t __fastcall DropFood__8VillagerFUs(struct Villager* this, const void* edx, unsigned short param_1)
{
    asm("push               esi");                                            // 0x007511e0    56
    asm("push               edi");                                            // 0x007511e1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                    // 0x007511e2    8b7c240c
    asm("test               di, di");                                         // 0x007511e6    6685ff
    asm("mov.s              esi, ecx");                                       // 0x007511e9    8bf1
    asm("{disp8} je         _jmp_addr_0x007511f9");                           // 0x007511eb    740c
    asm("{disp32} mov       ax, word ptr [esi + 0x000000f4]");                // 0x007511ed    668b86f4000000
    asm("cmp.s              di, ax");                                         // 0x007511f4    663bf8
    asm("{disp8} jbe        _jmp_addr_0x00751204");                           // 0x007511f7    760b
    asm("_jmp_addr_0x007511f9:");
    asm("xor.s              eax, eax");                                       // 0x007511f9    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000f4]");                // 0x007511fb    668b86f4000000
    asm("mov.s              edi, eax");                                       // 0x00751202    8bf8
    asm("_jmp_addr_0x00751204:");
    asm("sub.s              eax, edi");                                       // 0x00751204    2bc7
    asm("{disp32} mov       word ptr [esi + 0x000000f4], ax");                // 0x00751206    668986f4000000
    asm("mov                eax, dword ptr [esi]");                           // 0x0075120d    8b06
    asm("mov.s              ecx, esi");                                       // 0x0075120f    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x00751211    ff5048
    asm("test               eax, eax");                                       // 0x00751214    85c0
    asm("{disp8} je         _jmp_addr_0x00751238");                           // 0x00751216    7420
    asm("mov                edx, dword ptr [esi]");                           // 0x00751218    8b16
    asm("mov.s              ecx, esi");                                       // 0x0075121a    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x0075121c    ff5248
    asm("add                eax, 0x00000708");                                // 0x0075121f    0508070000
    asm("mov.s              ecx, edi");                                       // 0x00751224    8bcf
    asm("and                ecx, 0x0000ffff");                                // 0x00751226    81e1ffff0000
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                    // 0x0075122c    894c240c
    asm("{disp8} fild       dword ptr [esp + 0x0c]");                         // 0x00751230    db44240c
    asm("fsubr              dword ptr [eax]");                                // 0x00751234    d828
    asm("fstp               dword ptr [eax]");                                // 0x00751236    d918
    asm("_jmp_addr_0x00751238:");
    asm("mov.s              ax, di");                                         // 0x00751238    668bc7
    asm("pop                edi");                                            // 0x0075123b    5f
    asm("pop                esi");                                            // 0x0075123c    5e
    asm("ret                0x0004");                                         // 0x0075123d    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint16_t __fastcall DropWood__8VillagerFUs(struct Villager* this, const void* edx, unsigned short param_1)
{
    asm("push               esi");                                            // 0x00751240    56
    asm("push               edi");                                            // 0x00751241    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                    // 0x00751242    8b7c240c
    asm("test               di, di");                                         // 0x00751246    6685ff
    asm("mov.s              esi, ecx");                                       // 0x00751249    8bf1
    asm("{disp8} je         _jmp_addr_0x00751259");                           // 0x0075124b    740c
    asm("{disp32} mov       ax, word ptr [esi + 0x000000f6]");                // 0x0075124d    668b86f6000000
    asm("cmp.s              di, ax");                                         // 0x00751254    663bf8
    asm("{disp8} jbe        _jmp_addr_0x00751264");                           // 0x00751257    760b
    asm("_jmp_addr_0x00751259:");
    asm("xor.s              eax, eax");                                       // 0x00751259    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000f6]");                // 0x0075125b    668b86f6000000
    asm("mov.s              edi, eax");                                       // 0x00751262    8bf8
    asm("_jmp_addr_0x00751264:");
    asm("sub.s              eax, edi");                                       // 0x00751264    2bc7
    asm("{disp32} mov       word ptr [esi + 0x000000f6], ax");                // 0x00751266    668986f6000000
    asm("mov                eax, dword ptr [esi]");                           // 0x0075126d    8b06
    asm("mov.s              ecx, esi");                                       // 0x0075126f    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x00751271    ff5048
    asm("test               eax, eax");                                       // 0x00751274    85c0
    asm("{disp8} je         _jmp_addr_0x00751298");                           // 0x00751276    7420
    asm("mov                edx, dword ptr [esi]");                           // 0x00751278    8b16
    asm("mov.s              ecx, esi");                                       // 0x0075127a    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x0075127c    ff5248
    asm("add                eax, 0x0000070c");                                // 0x0075127f    050c070000
    asm("mov.s              ecx, edi");                                       // 0x00751284    8bcf
    asm("and                ecx, 0x0000ffff");                                // 0x00751286    81e1ffff0000
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                    // 0x0075128c    894c240c
    asm("{disp8} fild       dword ptr [esp + 0x0c]");                         // 0x00751290    db44240c
    asm("fsubr              dword ptr [eax]");                                // 0x00751294    d828
    asm("fstp               dword ptr [eax]");                                // 0x00751296    d918
    asm("_jmp_addr_0x00751298:");
    asm("mov.s              ax, di");                                         // 0x00751298    668bc7
    asm("pop                edi");                                            // 0x0075129b    5f
    asm("pop                esi");                                            // 0x0075129c    5e
    asm("ret                0x0004");                                         // 0x0075129d    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsEnoughFoodInStoragePitForDinner__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                            // 0x007512a0    56
    asm("mov.s              esi, ecx");                                       // 0x007512a1    8bf1
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");  // 0x007512a3    e8680c0000
    asm("test               eax, eax");                                       // 0x007512a8    85c0
    asm("{disp8} je         _jmp_addr_0x007512d5");                           // 0x007512aa    7429
    asm("push               edi");                                            // 0x007512ac    57
    asm("mov.s              ecx, esi");                                       // 0x007512ad    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");  // 0x007512af    e85c0c0000
    asm("mov                edx, dword ptr [eax]");                           // 0x007512b4    8b10
    asm("push               0x0");                                            // 0x007512b6    6a00
    asm("mov.s              ecx, eax");                                       // 0x007512b8    8bc8
    asm("call               dword ptr [edx + 0x98]");                         // 0x007512ba    ff9298000000
    asm("mov.s              ecx, esi");                                       // 0x007512c0    8bce
    asm("mov.s              edi, eax");                                       // 0x007512c2    8bf8
    asm("call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");                           // 0x007512c4    e837a90000
    asm("cmp.s              eax, edi");                                       // 0x007512c9    3bc7
    asm("pop                edi");                                            // 0x007512cb    5f
    asm("{disp8} ja         _jmp_addr_0x007512d5");                           // 0x007512cc    7707
    asm("mov                eax, 0x00000001");                                // 0x007512ce    b801000000
    asm("pop                esi");                                            // 0x007512d3    5e
    asm("ret");                                                               // 0x007512d4    c3
    asm("_jmp_addr_0x007512d5:");
    asm("xor.s              eax, eax");                                       // 0x007512d5    33c0
    asm("pop                esi");                                            // 0x007512d7    5e
    asm("ret");                                                               // 0x007512d8    c3
    __builtin_unreachable();
}

struct Pot* __fastcall FindPotAroundToGoto__8VillagerF13RESOURCE_TYPERUli(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, unsigned long* param_2, int param_3)
{
    asm("sub                esp, 0x18");                                      // 0x007512e0    83ec18
    asm("push               ebx");                                            // 0x007512e3    53
    asm("{disp8} lea        ebx, dword ptr [ecx + 0x14]");                    // 0x007512e4    8d5914
    asm("mov.s              eax, ebx");                                       // 0x007512e7    8bc3
    asm("mov                ecx, dword ptr [eax]");                           // 0x007512e9    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                    // 0x007512eb    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                    // 0x007512ee    8b4008
    asm("push               ebp");                                            // 0x007512f1    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x24]");                    // 0x007512f2    8b6c2424
    asm("push               esi");                                            // 0x007512f6    56
    asm("push               edi");                                            // 0x007512f7    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x30]");                    // 0x007512f8    8b7c2430
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                    // 0x007512fc    89442424
    asm("mov                eax, 0x00000001");                                // 0x00751300    b801000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                    // 0x00751305    894c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                    // 0x00751309    89542420
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");             // 0x0075130d    c744241000000000
    asm("mov                dword ptr [edi], 0xffffffff");                    // 0x00751315    c707ffffffff
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                    // 0x0075131b    89442418
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                    // 0x0075131f    89442414
    asm("{disp8} mov        dword ptr [esp + 0x30], 0x00000009");             // 0x00751323    c744243009000000
    asm("_jmp_addr_0x0075132b:");
    asm("push               0x0");                                            // 0x0075132b    6a00
    asm("push               0x009c8eb0");                                     // 0x0075132d    68b08e9c00
    asm("push               0x009c7f50");                                     // 0x00751332    68507f9c00
    asm("push               0x0");                                            // 0x00751337    6a00
    asm("push               0x0");                                            // 0x00751339    6a00
    asm("push               0x15");                                           // 0x0075133b    6a15
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                    // 0x0075133d    8d4c2434
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");// 0x00751341    e87a32ebff
    asm("push               eax");                                            // 0x00751346    50
    asm("call               ___RTDynamicCast");                               // 0x00751347    e8cd460700
    asm("mov.s              esi, eax");                                       // 0x0075134c    8bf0
    asm("add                esp, 0x14");                                      // 0x0075134e    83c414
    asm("test               esi, esi");                                       // 0x00751351    85f6
    asm("{disp8} je         _jmp_addr_0x007513ba");                           // 0x00751353    7465
    asm("_jmp_addr_0x00751355:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x00751355    8b4628
    asm("cmp                dword ptr [eax + 0x00000118], ebp");              // 0x00751358    39a818010000
    asm("{disp8} je         _jmp_addr_0x00751365");                           // 0x0075135e    7405
    asm("cmp                ebp, -0x02");                                     // 0x00751360    83fdfe
    asm("{disp8} jne        _jmp_addr_0x00751391");                           // 0x00751363    752c
    asm("_jmp_addr_0x00751365:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                    // 0x00751365    8b4c2434
    asm("test               ecx, ecx");                                       // 0x00751369    85c9
    asm("{disp8} je         _jmp_addr_0x00751378");                           // 0x0075136b    740b
    asm("{disp8} mov        ecx, dword ptr [esi + 0x70]");                    // 0x0075136d    8b4e70
    asm("cmp                ecx, dword ptr [eax + 0x0000011c]");              // 0x00751370    3b881c010000
    asm("{disp8} jae        _jmp_addr_0x00751391");                           // 0x00751376    7319
    asm("_jmp_addr_0x00751378:");
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                    // 0x00751378    8d5614
    asm("push               edx");                                            // 0x0075137b    52
    asm("push               ebx");                                            // 0x0075137c    53
    asm("call               ?FastDistance@GUtils@@SAHABUMapCoords@@0@Z");     // 0x0075137d    e88ebaffff
    asm("mov                ecx, dword ptr [edi]");                           // 0x00751382    8b0f
    asm("add                esp, 0x08");                                      // 0x00751384    83c408
    asm("cmp.s              eax, ecx");                                       // 0x00751387    3bc1
    asm("{disp8} jae        _jmp_addr_0x00751391");                           // 0x00751389    7306
    asm("mov                dword ptr [edi], eax");                           // 0x0075138b    8907
    asm("{disp8} mov        dword ptr [esp + 0x10], esi");                    // 0x0075138d    89742410
    asm("_jmp_addr_0x00751391:");
    asm("push               0x0");                                            // 0x00751391    6a00
    asm("push               0x009c8eb0");                                     // 0x00751393    68b08e9c00
    asm("push               0x009c7f50");                                     // 0x00751398    68507f9c00
    asm("push               0x0");                                            // 0x0075139d    6a00
    asm("push               esi");                                            // 0x0075139f    56
    asm("push               0x15");                                           // 0x007513a0    6a15
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                    // 0x007513a2    8d4c2434
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");// 0x007513a6    e81532ebff
    asm("push               eax");                                            // 0x007513ab    50
    asm("call               ___RTDynamicCast");                               // 0x007513ac    e868460700
    asm("mov.s              esi, eax");                                       // 0x007513b1    8bf0
    asm("add                esp, 0x14");                                      // 0x007513b3    83c414
    asm("test               esi, esi");                                       // 0x007513b6    85f6
    asm("{disp8} jne        _jmp_addr_0x00751355");                           // 0x007513b8    759b
    asm("_jmp_addr_0x007513ba:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                    // 0x007513ba    8d442414
    asm("push               eax");                                            // 0x007513be    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                    // 0x007513bf    8d4c241c
    asm("push               ecx");                                            // 0x007513c3    51
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");         // 0x007513c4    e817c4ffff
    asm("add                esp, 0x08");                                      // 0x007513c9    83c408
    asm("push               eax");                                            // 0x007513cc    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                    // 0x007513cd    8d4c2420
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");             // 0x007513d1    e89a40ebff
    asm("dec                dword ptr [esp + 0x30]");                         // 0x007513d6    ff4c2430
    asm("{disp32} jne       _jmp_addr_0x0075132b");                           // 0x007513da    0f854bffffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                    // 0x007513e0    8b442410
    asm("pop                edi");                                            // 0x007513e4    5f
    asm("pop                esi");                                            // 0x007513e5    5e
    asm("pop                ebp");                                            // 0x007513e6    5d
    asm("pop                ebx");                                            // 0x007513e7    5b
    asm("add                esp, 0x18");                                      // 0x007513e8    83c418
    asm("ret                0x000c");                                         // 0x007513eb    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall PickupResource__8VillagerF13RESOURCE_TYPEsUc(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, short param_2, unsigned char param_3)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x007513f0    8b442404
    asm("test               eax, eax");                                       // 0x007513f4    85c0
    asm("push               esi");                                            // 0x007513f6    56
    asm("push               edi");                                            // 0x007513f7    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                    // 0x007513f8    8b7c2410
    asm("mov.s              esi, ecx");                                       // 0x007513fc    8bf1
    asm("{disp8} jne        _jmp_addr_0x00751433");                           // 0x007513fe    7533
    asm("mov                eax, dword ptr [esi]");                           // 0x00751400    8b06
    asm("add                word ptr [esi + 0x000000f4], di");                // 0x00751402    6601bef4000000
    asm("call               dword ptr [eax + 0x48]");                         // 0x00751409    ff5048
    asm("test               eax, eax");                                       // 0x0075140c    85c0
    asm("{disp8} je         _jmp_addr_0x00751487");                           // 0x0075140e    7477
    asm("mov                edx, dword ptr [esi]");                           // 0x00751410    8b16
    asm("mov.s              ecx, esi");                                       // 0x00751412    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x00751414    ff5248
    asm("movsx              ecx, di");                                        // 0x00751417    0fbfcf
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                    // 0x0075141a    894c2414
    asm("add                eax, 0x00000708");                                // 0x0075141e    0508070000
    asm("{disp8} fild       dword ptr [esp + 0x14]");                         // 0x00751423    db442414
    asm("fadd               dword ptr [eax]");                                // 0x00751427    d800
    asm("fstp               dword ptr [eax]");                                // 0x00751429    d918
    asm("mov.s              ax, di");                                         // 0x0075142b    668bc7
    asm("pop                edi");                                            // 0x0075142e    5f
    asm("pop                esi");                                            // 0x0075142f    5e
    asm("ret                0x000c");                                         // 0x00751430    c20c00
    asm("_jmp_addr_0x00751433:");
    asm("mov                edx, dword ptr [esi]");                           // 0x00751433    8b16
    asm("add                word ptr [esi + 0x000000f6], di");                // 0x00751435    6601bef6000000
    asm("mov.s              ecx, esi");                                       // 0x0075143c    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x0075143e    ff5248
    asm("test               eax, eax");                                       // 0x00751441    85c0
    asm("{disp8} je         _jmp_addr_0x00751460");                           // 0x00751443    741b
    asm("mov                eax, dword ptr [esi]");                           // 0x00751445    8b06
    asm("mov.s              ecx, esi");                                       // 0x00751447    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x00751449    ff5048
    asm("movsx              ecx, di");                                        // 0x0075144c    0fbfcf
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                    // 0x0075144f    894c2410
    asm("add                eax, 0x0000070c");                                // 0x00751453    050c070000
    asm("{disp8} fild       dword ptr [esp + 0x10]");                         // 0x00751458    db442410
    asm("fadd               dword ptr [eax]");                                // 0x0075145c    d800
    asm("fstp               dword ptr [eax]");                                // 0x0075145e    d918
    asm("_jmp_addr_0x00751460:");
    asm("{disp8} mov        dl, byte ptr [esp + 0x14]");                      // 0x00751460    8a542414
    asm("and                dl, 0x03");                                       // 0x00751464    80e203
    asm("xor.s              ax, ax");                                         // 0x00751467    6633c0
    asm("xor.s              ecx, ecx");                                       // 0x0075146a    33c9
    asm("{disp32} mov       cx, word ptr [esi + 0x000000e0]");                // 0x0075146c    668b8ee0000000
    asm("mov.s              al, dl");                                         // 0x00751473    8ac2
    asm("and                ecx, 0x00003fff");                                // 0x00751475    81e1ff3f0000
    asm("shl                eax, 0xe");                                       // 0x0075147b    c1e00e
    asm("or.s               eax, ecx");                                       // 0x0075147e    0bc1
    asm("{disp32} mov       word ptr [esi + 0x000000e0], ax");                // 0x00751480    668986e0000000
    asm("_jmp_addr_0x00751487:");
    asm("mov.s              ax, di");                                         // 0x00751487    668bc7
    asm("pop                edi");                                            // 0x0075148a    5f
    asm("pop                esi");                                            // 0x0075148b    5e
    asm("ret                0x000c");                                         // 0x0075148c    c20c00
    __builtin_unreachable();
}

void __fastcall PickupFood__8VillagerFs(struct Villager* this, const void* edx, short param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x00751490    8b442404
    asm("push               0x0");                                            // 0x00751494    6a00
    asm("push               eax");                                            // 0x00751496    50
    asm("push               0x0");                                            // 0x00751497    6a00
    asm("call               ?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z");                           // 0x00751499    e852ffffff
    asm("ret                0x0004");                                         // 0x0075149e    c20400
    __builtin_unreachable();
}

void __fastcall PickupWood__8VillagerFsUc(struct Villager* this, const void* edx, short param_1, unsigned char param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                    // 0x007514b0    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x007514b4    8b542404
    asm("push               eax");                                            // 0x007514b8    50
    asm("push               edx");                                            // 0x007514b9    52
    asm("push               0x1");                                            // 0x007514ba    6a01
    asm("call               ?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z");                           // 0x007514bc    e82fffffff
    asm("ret                0x0008");                                         // 0x007514c1    c20800
    __builtin_unreachable();
}

int __fastcall GetFoodCapacity__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x007514d0    8b4128
    asm("{disp32} mov       cx, word ptr [ecx + 0x000000f4]");                // 0x007514d3    668b89f4000000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000264]");              // 0x007514da    8b8064020000
    asm("sub.s              eax, ecx");                                       // 0x007514e0    2bc1
    asm("ret");                                                               // 0x007514e2    c3
    __builtin_unreachable();
}

int __fastcall GetWoodCapacity__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x007514f0    8b4128
    asm("{disp32} mov       cx, word ptr [ecx + 0x000000f6]");                // 0x007514f3    668b89f6000000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000268]");              // 0x007514fa    8b8068020000
    asm("sub.s              eax, ecx");                                       // 0x00751500    2bc1
    asm("ret");                                                               // 0x00751502    c3
    __builtin_unreachable();
}

void __fastcall RemoveFromDance__8VillagerFi(struct Living* this, const void* edx, int param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                    // 0x00751510    8b442404
    asm("push               eax");                                            // 0x00751514    50
    asm("call               ?RemoveFromDance@Living@@UAEXH@Z");               // 0x00751515    e816e4e9ff
    asm("ret                0x0004");                                         // 0x0075151a    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsRandomlyLazy__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                      // 0x00751520    83ec08
    asm("push               esi");                                            // 0x00751523    56
    asm("{disp8} mov        esi, dword ptr [ecx + 0x28]");                    // 0x00751524    8b7128
    asm("push               0x00000566");                                     // 0x00751527    6866050000
    asm("push               0x00c235dc");                                     // 0x0075152c    68dc35c200
    asm("push               0x64");                                           // 0x00751531    6a64
    asm("call               ?GameRand@GRand@@SAHJ@Z");                        // 0x00751533    e8d8cff8ff
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                    // 0x00751538    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");             // 0x0075153c    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                         // 0x00751544    df6c2410
    asm("add                esp, 0x0c");                                      // 0x00751548    83c40c
    asm("{disp32} fld       dword ptr [esi + 0x00000288]");                   // 0x0075154b    d98688020000
    asm("pop                esi");                                            // 0x00751551    5e
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x241c]");               // 0x00751552    d80d1cb48a00
    asm("fcompp");                                                            // 0x00751558    ded9
    asm("fnstsw             ax");                                             // 0x0075155a    dfe0
    asm("test               ah, 0x01");                                       // 0x0075155c    f6c401
    asm("{disp8} jne        _jmp_addr_0x0075156a");                           // 0x0075155f    7509
    asm("mov                eax, 0x00000001");                                // 0x00751561    b801000000
    asm("add                esp, 0x08");                                      // 0x00751566    83c408
    asm("ret");                                                               // 0x00751569    c3
    asm("_jmp_addr_0x0075156a:");
    asm("xor.s              eax, eax");                                       // 0x0075156a    33c0
    asm("add                esp, 0x08");                                      // 0x0075156c    83c408
    asm("ret");                                                               // 0x0075156f    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall GetResourceHeld__8VillagerFR13RESOURCE_TYPE(struct Villager* this, const void* edx, enum RESOURCE_TYPE* param_1)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                    // 0x00751570    8b542404
    asm("mov                dword ptr [edx], 0xffffffff");                    // 0x00751574    c702ffffffff
    asm("{disp32} mov       ax, word ptr [ecx + 0x000000f6]");                // 0x0075157a    668b81f6000000
    asm("cmp                word ptr [ecx + 0x000000f4], ax");                // 0x00751581    663981f4000000
    asm("{disp8} jbe        _jmp_addr_0x0075159c");                           // 0x00751588    7612
    asm("xor.s              eax, eax");                                       // 0x0075158a    33c0
    asm("mov                dword ptr [edx], 0x00000000");                    // 0x0075158c    c70200000000
    asm("{disp32} mov       ax, word ptr [ecx + 0x000000f4]");                // 0x00751592    668b81f4000000
    asm("ret                0x0004");                                         // 0x00751599    c20400
    asm("_jmp_addr_0x0075159c:");
    asm("test               ax, ax");                                         // 0x0075159c    6685c0
    asm("{disp8} je         _jmp_addr_0x007515b3");                           // 0x0075159f    7412
    asm("xor.s              eax, eax");                                       // 0x007515a1    33c0
    asm("mov                dword ptr [edx], 0x00000001");                    // 0x007515a3    c70201000000
    asm("{disp32} mov       ax, word ptr [ecx + 0x000000f6]");                // 0x007515a9    668b81f6000000
    asm("ret                0x0004");                                         // 0x007515b0    c20400
    asm("_jmp_addr_0x007515b3:");
    asm("xor.s              eax, eax");                                       // 0x007515b3    33c0
    asm("ret                0x0004");                                         // 0x007515b5    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall DecideWhatToDo__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                            // 0x007515c0    56
    asm("mov.s              esi, ecx");                                       // 0x007515c1    8bf1
    asm("mov                eax, dword ptr [esi]");                           // 0x007515c3    8b06
    asm("call               dword ptr [eax + 0x48]");                         // 0x007515c5    ff5048
    asm("test               eax, eax");                                       // 0x007515c8    85c0
    asm("{disp8} je         _jmp_addr_0x007515f4");                           // 0x007515ca    7428
    asm("mov                edx, dword ptr [esi]");                           // 0x007515cc    8b16
    asm("mov.s              ecx, esi");                                       // 0x007515ce    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x007515d0    ff5248
    asm("mov.s              ecx, eax");                                       // 0x007515d3    8bc8
    asm("call               ?IsInStateOfEmergency@Town@@QAE_NXZ");            // 0x007515d5    e89663ffff
    asm("test               eax, eax");                                       // 0x007515da    85c0
    asm("{disp8} je         _jmp_addr_0x007515f4");                           // 0x007515dc    7416
    asm("mov                eax, dword ptr [esi]");                           // 0x007515de    8b06
    asm("push               0x000000f2");                                     // 0x007515e0    68f2000000
    asm("mov.s              ecx, esi");                                       // 0x007515e5    8bce
    asm("call               dword ptr [eax + 0x8e8]");                        // 0x007515e7    ff90e8080000
    asm("mov                eax, 0x00000001");                                // 0x007515ed    b801000000
    asm("pop                esi");                                            // 0x007515f2    5e
    asm("ret");                                                               // 0x007515f3    c3
    asm("_jmp_addr_0x007515f4:");
    asm("xor.s              eax, eax");                                       // 0x007515f4    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");                // 0x007515f6    668b86e0000000
    asm("mov.s              ecx, eax");                                       // 0x007515fd    8bc8
    asm("shr                ecx, 9");                                         // 0x007515ff    c1e909
    asm("test               cl, 0x01");                                       // 0x00751602    f6c101
    asm("{disp8} jne        _jmp_addr_0x0075160c");                           // 0x00751605    7505
    asm("test               ah, 0x04");                                       // 0x00751607    f6c404
    asm("{disp8} je         _jmp_addr_0x00751687");                           // 0x0075160a    747b
    asm("_jmp_addr_0x0075160c:");
    asm("mov.s              ecx, esi");                                       // 0x0075160c    8bce
    asm("call               ?DiscipleDecideWhatToDo@Villager@@QAE_NXZ");      // 0x0075160e    e80d010000
    asm("cmp                eax, 0x01");                                      // 0x00751613    83f801
    asm("{disp8} jne        _jmp_addr_0x00751666");                           // 0x00751616    754e
    asm("test               byte ptr [esi + 0x000000e1], 0x04");              // 0x00751618    f686e100000004
    asm("{disp8} je         _jmp_addr_0x0075162a");                           // 0x0075161f    7409
    asm("{disp32} mov       byte ptr [esi + 0x000000f2], 0x00");              // 0x00751621    c686f200000000
    asm("pop                esi");                                            // 0x00751628    5e
    asm("ret");                                                               // 0x00751629    c3
    asm("_jmp_addr_0x0075162a:");
    asm("xor.s              eax, eax");                                       // 0x0075162a    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");                // 0x0075162c    8a86f2000000
    asm("{disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]");        // 0x00751632    8d14c500000000
    asm("sub.s              edx, eax");                                       // 0x00751639    2bd0
    asm("{disp32} mov       eax, dword ptr [edx * 0x4 + 0x0099a1fc]");        // 0x0075163b    8b0495fca19900
    asm("test               eax, eax");                                       // 0x00751642    85c0
    asm("{disp32} je        _jmp_addr_0x007516d9");                           // 0x00751644    0f848f000000
    asm("mov                eax, dword ptr [esi]");                           // 0x0075164a    8b06
    asm("push               0x1");                                            // 0x0075164c    6a01
    asm("mov.s              ecx, esi");                                       // 0x0075164e    8bce
    asm("call               dword ptr [eax + 0x1c]");                         // 0x00751650    ff501c
    asm("push               eax");                                            // 0x00751653    50
    asm("push               0x18");                                           // 0x00751654    6a18
    asm("push               esi");                                            // 0x00751656    56
    asm("call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z");               // 0x00751657    e81427f9ff
    asm("add                esp, 0x10");                                      // 0x0075165c    83c410
    asm("mov                eax, 0x00000001");                                // 0x0075165f    b801000000
    asm("pop                esi");                                            // 0x00751664    5e
    asm("ret");                                                               // 0x00751665    c3
    asm("_jmp_addr_0x00751666:");
    asm("xor.s              eax, eax");                                       // 0x00751666    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");                // 0x00751668    668b86e0000000
    asm("test               ah, 0x04");                                       // 0x0075166f    f6c404
    asm("{disp8} je         _jmp_addr_0x00751687");                           // 0x00751672    7413
    asm("and                eax, 0x0000f9ff");                                // 0x00751674    25fff90000
    asm("{disp32} mov       byte ptr [esi + 0x000000f2], 0x00");              // 0x00751679    c686f200000000
    asm("{disp32} mov       word ptr [esi + 0x000000e0], ax");                // 0x00751680    668986e0000000
    asm("_jmp_addr_0x00751687:");
    asm("mov                edx, dword ptr [esi]");                           // 0x00751687    8b16
    asm("push               0x000000a3");                                     // 0x00751689    68a3000000
    asm("mov.s              ecx, esi");                                       // 0x0075168e    8bce
    asm("call               dword ptr [edx + 0x8e8]");                        // 0x00751690    ff92e8080000
    asm("mov                eax, dword ptr [esi]");                           // 0x00751696    8b06
    asm("mov.s              ecx, esi");                                       // 0x00751698    8bce
    asm("call               dword ptr [eax + 0xaf8]");                        // 0x0075169a    ff90f80a0000
    asm("test               eax, eax");                                       // 0x007516a0    85c0
    asm("mov.s              ecx, esi");                                       // 0x007516a2    8bce
    asm("{disp8} je         _jmp_addr_0x007516ad");                           // 0x007516a4    7407
    asm("call               ?ChildDecideWhatToDo@Villager@@QAE_NXZ");         // 0x007516a6    e815680000
    asm("pop                esi");                                            // 0x007516ab    5e
    asm("ret");                                                               // 0x007516ac    c3
    asm("_jmp_addr_0x007516ad:");
    asm("call               ?CheckNeededForSomething@Villager@@QAE_NXZ");     // 0x007516ad    e8cee80000
    asm("cmp                eax, 0x01");                                      // 0x007516b2    83f801
    asm("{disp8} je         _jmp_addr_0x007516d9");                           // 0x007516b5    7422
    asm("mov.s              ecx, esi");                                       // 0x007516b7    8bce
    asm("call               ?CheckTakeResourcesToStoragePit@Villager@@QAE_NXZ"); // 0x007516b9    e822000000
    asm("test               eax, eax");                                       // 0x007516be    85c0
    asm("{disp8} jne        _jmp_addr_0x007516d9");                           // 0x007516c0    7517
    asm("mov.s              ecx, esi");                                       // 0x007516c2    8bce
    asm("call               ?SetupNothingToDo@Villager@@QAEIXZ");             // 0x007516c4    e887240000
    asm("test               eax, eax");                                       // 0x007516c9    85c0
    asm("{disp8} jne        _jmp_addr_0x007516d9");                           // 0x007516cb    750c
    asm("mov                edx, dword ptr [esi]");                           // 0x007516cd    8b16
    asm("push               0x24");                                           // 0x007516cf    6a24
    asm("mov.s              ecx, esi");                                       // 0x007516d1    8bce
    asm("call               dword ptr [edx + 0x8e8]");                        // 0x007516d3    ff92e8080000
    asm("_jmp_addr_0x007516d9:");
    asm("mov                eax, 0x00000001");                                // 0x007516d9    b801000000
    asm("pop                esi");                                            // 0x007516de    5e
    asm("ret");                                                               // 0x007516df    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall CheckTakeResourcesToStoragePit__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                    // 0x007516e0    8b4128
    asm("movsx              edx, word ptr [ecx + 0x000000f6]");               // 0x007516e3    0fbf91f6000000
    asm("cmp                edx, dword ptr [eax + 0x0000026c]");              // 0x007516ea    3b906c020000
    asm("{disp8} jg         _jmp_addr_0x00751704");                           // 0x007516f0    7f12
    asm("movsx              edx, word ptr [ecx + 0x000000f4]");               // 0x007516f2    0fbf91f4000000
    asm("cmp                edx, dword ptr [eax + 0x00000270]");              // 0x007516f9    3b9070020000
    asm("{disp8} jg         _jmp_addr_0x00751704");                           // 0x007516ff    7f03
    asm("xor.s              eax, eax");                                       // 0x00751701    33c0
    asm("ret");                                                               // 0x00751703    c3
    asm("_jmp_addr_0x00751704:");
    asm("mov                eax, dword ptr [ecx]");                           // 0x00751704    8b01
    asm("push               0x1f");                                           // 0x00751706    6a1f
    asm("call               dword ptr [eax + 0x8e8]");                        // 0x00751708    ff90e8080000
    asm("mov                eax, 0x00000001");                                // 0x0075170e    b801000000
    asm("ret");                                                               // 0x00751713    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall DiscipleDecideWhatToDo__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                            // 0x00751720    51
    asm("push               esi");                                            // 0x00751721    56
    asm("xor.s              eax, eax");                                       // 0x00751722    33c0
    asm("mov.s              esi, ecx");                                       // 0x00751724    8bf1
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");                // 0x00751726    8a86f2000000
    asm("push               edi");                                            // 0x0075172c    57
    asm("{disp8} lea        ecx, dword ptr [eax + -0x01]");                   // 0x0075172d    8d48ff
    asm("cmp                ecx, 0x0b");                                      // 0x00751730    83f90b
    asm("{disp32} ja        _jmp_addr_0x007518e7");                           // 0x00751733    0f87ae010000
    asm("jmp                dword ptr [ecx*4 + 0x75193c]");                   // 0x00751739    ff248d3c197500
    asm("mov                eax, dword ptr [esi]");                           // 0x00751740    8b06
    asm("mov.s              ecx, esi");                                       // 0x00751742    8bce
    asm("call               dword ptr [eax + 0x48]");                         // 0x00751744    ff5048
    asm("test               eax, eax");                                       // 0x00751747    85c0
    asm("{disp32} je        _jmp_addr_0x007518e7");                           // 0x00751749    0f8498010000
    asm("mov                edx, dword ptr [esi]");                           // 0x0075174f    8b16
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                    // 0x00751751    8d4c2408
    asm("push               ecx");                                            // 0x00751755    51
    asm("push               esi");                                            // 0x00751756    56
    asm("mov.s              ecx, esi");                                       // 0x00751757    8bce
    asm("call               dword ptr [edx + 0x48]");                         // 0x00751759    ff5248
    asm("mov.s              ecx, eax");                                       // 0x0075175c    8bc8
    asm("call               _jmp_addr_0x0073e870");                           // 0x0075175e    e80dd1feff
    asm("mov.s              edi, eax");                                       // 0x00751763    8bf8
    asm("test               edi, edi");                                       // 0x00751765    85ff
    asm("{disp32} je        _jmp_addr_0x007518e7");                           // 0x00751767    0f847a010000
    asm("push               0x0");                                            // 0x0075176d    6a00
    asm("mov.s              ecx, edi");                                       // 0x0075176f    8bcf
    asm("call               _jmp_addr_0x00529350");                           // 0x00751771    e8da7bddff
    asm("cmp                eax, 0x02");                                      // 0x00751776    83f802
    asm("{disp8} jne        _jmp_addr_0x007517a3");                           // 0x00751779    7528
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                    // 0x0075177b    8b4628
    asm("{disp32} mov       cx, word ptr [esi + 0x000000f4]");                // 0x0075177e    668b8ef4000000
    asm("cmp                cx, word ptr [eax + 0x00000270]");                // 0x00751785    663b8870020000
    asm("{disp8} jle        _jmp_addr_0x007517a3");                           // 0x0075178c    7e15
    asm("mov                edx, dword ptr [esi]");                           // 0x0075178e    8b16
    asm("push               0x1f");                                           // 0x00751790    6a1f
    asm("mov.s              ecx, esi");                                       // 0x00751792    8bce
    asm("call               dword ptr [edx + 0x8e8]");                        // 0x00751794    ff92e8080000
    asm("pop                edi");                                            // 0x0075179a    5f
    asm("mov                eax, 0x00000001");                                // 0x0075179b    b801000000
    asm("pop                esi");                                            // 0x007517a0    5e
    asm("pop                ecx");                                            // 0x007517a1    59
    asm("ret");                                                               // 0x007517a2    c3
    asm("_jmp_addr_0x007517a3:");
    asm("push               edi");                                            // 0x007517a3    57
    asm("mov.s              ecx, esi");                                       // 0x007517a4    8bce
    asm("call               _jmp_addr_0x00759c00");                           // 0x007517a6    e855840000
    asm("cmp                eax, 0x01");                                      // 0x007517ab    83f801
    asm("{disp32} jne       _jmp_addr_0x007518e7");                           // 0x007517ae    0f8533010000
    asm("pop                edi");                                            // 0x007517b4    5f
    asm("pop                esi");                                            // 0x007517b5    5e
    asm("pop                ecx");                                            // 0x007517b6    59
    asm("ret");                                                               // 0x007517b7    c3
    asm("mov.s              ecx, esi");                                       // 0x007517b8    8bce
    asm("call               _jmp_addr_0x0075f4a0");                           // 0x007517ba    e8e1dc0000
    asm("cmp                eax, 0x01");                                      // 0x007517bf    83f801
    asm("{disp32} jne       _jmp_addr_0x007518e7");                           // 0x007517c2    0f851f010000
    asm("pop                edi");                                            // 0x007517c8    5f
    asm("pop                esi");                                            // 0x007517c9    5e
    asm("pop                ecx");                                            // 0x007517ca    59
    asm("ret");                                                               // 0x007517cb    c3
    asm("mov.s              ecx, esi");                                       // 0x007517cc    8bce
    asm("call               _jmp_addr_0x0075b4c0");                           // 0x007517ce    e8ed9c0000
    asm("cmp                eax, 0x01");                                      // 0x007517d3    83f801
    asm("{disp32} jne       _jmp_addr_0x007518e7");                           // 0x007517d6    0f850b010000
    asm("pop                edi");                                            // 0x007517dc    5f
    asm("pop                esi");                                            // 0x007517dd    5e
    asm("pop                ecx");                                            // 0x007517de    59
    asm("ret");                                                               // 0x007517df    c3
    asm("mov.s              ecx, esi");                                       // 0x007517e0    8bce
    asm("call               _jmp_addr_0x00758340");                           // 0x007517e2    e8596b0000
    asm("cmp                eax, 0x01");                                      // 0x007517e7    83f801
    asm("{disp32} jne       _jmp_addr_0x007518e7");                           // 0x007517ea    0f85f7000000
    asm("pop                edi");                                            // 0x007517f0    5f
    asm("pop                esi");                                            // 0x007517f1    5e
    asm("pop                ecx");                                            // 0x007517f2    59
    asm("ret");                                                               // 0x007517f3    c3
    asm("mov.s              ecx, esi");                                       // 0x007517f4    8bce
    asm("call               _jmp_addr_0x00769ee0");                           // 0x007517f6    e8e5860100
    asm("cmp                eax, 0x01");                                      // 0x007517fb    83f801
    asm("{disp32} jne       _jmp_addr_0x007518e7");                           // 0x007517fe    0f85e3000000
    asm("pop                edi");                                            // 0x00751804    5f
    asm("pop                esi");                                            // 0x00751805    5e
    asm("pop                ecx");                                            // 0x00751806    59
    asm("ret");                                                               // 0x00751807    c3
    asm("mov.s              ecx, esi");                                       // 0x00751808    8bce
    asm("call               _jmp_addr_0x007593a0");                           // 0x0075180a    e8917b0000
    asm("test               eax, eax");                                       // 0x0075180f    85c0
    asm("{disp32} je        _jmp_addr_0x007518e7");                           // 0x00751811    0f84d0000000
    asm("pop                edi");                                            // 0x00751817    5f
    asm("mov                eax, 0x00000001");                                // 0x00751818    b801000000
    asm("pop                esi");                                            // 0x0075181d    5e
    asm("pop                ecx");                                            // 0x0075181e    59
    asm("ret");                                                               // 0x0075181f    c3
    asm("mov.s              ecx, esi");                                       // 0x00751820    8bce
    asm("call               _jmp_addr_0x00769b80");                           // 0x00751822    e859830100
    asm("cmp                eax, 0x01");                                      // 0x00751827    83f801
    asm("{disp32} jne       _jmp_addr_0x007518e7");                           // 0x0075182a    0f85b7000000
    asm("pop                edi");                                            // 0x00751830    5f
    asm("pop                esi");                                            // 0x00751831    5e
    asm("pop                ecx");                                            // 0x00751832    59
    asm("ret");                                                               // 0x00751833    c3
    asm("mov                eax, dword ptr [esi]");                           // 0x00751834    8b06
    asm("mov.s              ecx, esi");                                       // 0x00751836    8bce
    asm("call               dword ptr [eax + 0x1c]");                         // 0x00751838    ff501c
    asm("push               0x0");                                            // 0x0075183b    6a00
    asm("push               0x0");                                            // 0x0075183d    6a00
    asm("push               esi");                                            // 0x0075183f    56
    asm("mov.s              ecx, esi");                                       // 0x00751840    8bce
    asm("mov.s              edi, eax");                                       // 0x00751842    8bf8
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                           // 0x00751844    e8b7470000
    asm("push               0x0");                                            // 0x00751849    6a00
    asm("push               0x0");                                            // 0x0075184b    6a00
    asm("push               0x0");                                            // 0x0075184d    6a00
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                    // 0x0075184f    8d4e14
    asm("push               -0x1");                                           // 0x00751852    6aff
    asm("push               ecx");                                            // 0x00751854    51
    asm("call               _jmp_addr_0x0074dd70");                           // 0x00751855    e816c5ffff
    asm("add                esp, 0x14");                                      // 0x0075185a    83c414
    asm("push               eax");                                            // 0x0075185d    50
    asm("mov.s              ecx, esi");                                       // 0x0075185e    8bce
    asm("call               _jmp_addr_0x00757180");                           // 0x00751860    e81b590000
    asm("cmp                eax, 0x01");                                      // 0x00751865    83f801
    asm("{disp8} jne        _jmp_addr_0x007518e7");                           // 0x00751868    757d
    asm("mov                edx, dword ptr [esi]");                           // 0x0075186a    8b16
    asm("push               0x000000ea");                                     // 0x0075186c    68ea000000
    asm("mov.s              ecx, esi");                                       // 0x00751871    8bce
    asm("call               dword ptr [edx + 0x8e8]");                        // 0x00751873    ff92e8080000
    asm("mov                eax, dword ptr [esi]");                           // 0x00751879    8b06
    asm("mov.s              ecx, esi");                                       // 0x0075187b    8bce
    asm("call               dword ptr [eax + 0x1c]");                         // 0x0075187d    ff501c
    asm("cmp.s              edi, eax");                                       // 0x00751880    3bf8
    asm("{disp8} je         _jmp_addr_0x00751896");                           // 0x00751882    7412
    asm("mov                edx, dword ptr [esi]");                           // 0x00751884    8b16
    asm("push               0x1");                                            // 0x00751886    6a01
    asm("push               0xd");                                            // 0x00751888    6a0d
    asm("mov.s              ecx, esi");                                       // 0x0075188a    8bce
    asm("call               dword ptr [edx + 0x1c]");                         // 0x0075188c    ff521c
    asm("mov.s              ecx, eax");                                       // 0x0075188f    8bc8
    asm("call               _jmp_addr_0x0064da80");                           // 0x00751891    e8eac1efff
    asm("_jmp_addr_0x00751896:");
    asm("pop                edi");                                            // 0x00751896    5f
    asm("mov                eax, 0x00000001");                                // 0x00751897    b801000000
    asm("pop                esi");                                            // 0x0075189c    5e
    asm("pop                ecx");                                            // 0x0075189d    59
    asm("ret");                                                               // 0x0075189e    c3
    asm("mov                eax, dword ptr [esi]");                           // 0x0075189f    8b06
    asm("push               0x3a");                                           // 0x007518a1    6a3a
    asm("mov.s              ecx, esi");                                       // 0x007518a3    8bce
    asm("call               dword ptr [eax + 0x8e8]");                        // 0x007518a5    ff90e8080000
    asm("pop                edi");                                            // 0x007518ab    5f
    asm("mov                eax, 0x00000001");                                // 0x007518ac    b801000000
    asm("pop                esi");                                            // 0x007518b1    5e
    asm("pop                ecx");                                            // 0x007518b2    59
    asm("ret");                                                               // 0x007518b3    c3
    asm("mov                edx, dword ptr [esi]");                           // 0x007518b4    8b16
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");        // 0x007518b6    8d0cc500000000
    asm("sub.s              ecx, eax");                                       // 0x007518bd    2bc8
    asm("xor.s              eax, eax");                                       // 0x007518bf    33c0
    asm("{disp32} mov       al, byte ptr [ecx * 0x4 + _DiscipleInfo_ARRAY_0099a1f8]");          // 0x007518c1    8a048df8a19900
    asm("mov.s              ecx, esi");                                       // 0x007518c8    8bce
    asm("push               eax");                                            // 0x007518ca    50
    asm("call               dword ptr [edx + 0x8e8]");                        // 0x007518cb    ff92e8080000
    asm("push               0x0");                                            // 0x007518d1    6a00
    asm("push               0x0");                                            // 0x007518d3    6a00
    asm("push               0x0");                                            // 0x007518d5    6a00
    asm("mov.s              ecx, esi");                                       // 0x007518d7    8bce
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                           // 0x007518d9    e822470000
    asm("pop                edi");                                            // 0x007518de    5f
    asm("mov                eax, 0x00000001");                                // 0x007518df    b801000000
    asm("pop                esi");                                            // 0x007518e4    5e
    asm("pop                ecx");                                            // 0x007518e5    59
    asm("ret");                                                               // 0x007518e6    c3
    asm("_jmp_addr_0x007518e7:");
    asm("mov                edx, dword ptr [esi]");                           // 0x007518e7    8b16
    asm("mov.s              ecx, esi");                                       // 0x007518e9    8bce
    asm("call               dword ptr [edx + 0xb04]");                        // 0x007518eb    ff92040b0000
    asm("cmp                al, -0x23");                                      // 0x007518f1    3cdd
    asm("{disp8} je         _jmp_addr_0x00751934");                           // 0x007518f3    743f
    asm("xor.s              eax, eax");                                       // 0x007518f5    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");                // 0x007518f7    668b86e0000000
    asm("shr                eax, 9");                                         // 0x007518fe    c1e809
    asm("test               al, 0x01");                                       // 0x00751901    a801
    asm("{disp8} je         _jmp_addr_0x00751934");                           // 0x00751903    742f
    asm("xor.s              eax, eax");                                       // 0x00751905    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");                // 0x00751907    8a86f2000000
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");        // 0x0075190d    8d0cc500000000
    asm("sub.s              ecx, eax");                                       // 0x00751914    2bc8
    asm("cmp                dword ptr [ecx * 0x4 + 0x0099a204], 0x01");       // 0x00751916    833c8d04a2990001
    asm("{disp8} jne        _jmp_addr_0x00751934");                           // 0x0075191e    7514
    asm("mov.s              ecx, esi");                                       // 0x00751920    8bce
    asm("call               ?SetDiscipleNothingToDo@Villager@@QAE_NXZ");      // 0x00751922    e849270000
    asm("test               eax, eax");                                       // 0x00751927    85c0
    asm("{disp8} je         _jmp_addr_0x00751934");                           // 0x00751929    7409
    asm("pop                edi");                                            // 0x0075192b    5f
    asm("mov                eax, 0x00000001");                                // 0x0075192c    b801000000
    asm("pop                esi");                                            // 0x00751931    5e
    asm("pop                ecx");                                            // 0x00751932    59
    asm("ret");                                                               // 0x00751933    c3
    asm("_jmp_addr_0x00751934:");
    asm("pop                edi");                                            // 0x00751934    5f
    asm("xor.s              eax, eax");                                       // 0x00751935    33c0
    asm("pop                esi");                                            // 0x00751937    5e
    asm("pop                ecx");                                            // 0x00751938    59
    asm("ret");                                                               // 0x00751939    c3
    // Snippet: db, [0x0075193a, 0x0075193c)
    asm(".byte 0x8b, 0xff");                  // 0x0075193a
    // Snippet: jmptbl, [0x0075193c, 0x0075196c)
    asm(".byte 0x40, 0x17, 0x75, 0x00");      // 0x0075193c
    asm(".byte 0xb8, 0x17, 0x75, 0x00");      // 0x00751940
    asm(".byte 0xcc, 0x17, 0x75, 0x00");      // 0x00751944
    asm(".byte 0xe0, 0x17, 0x75, 0x00");      // 0x00751948
    asm(".byte 0xf4, 0x17, 0x75, 0x00");      // 0x0075194c
    asm(".byte 0xe7, 0x18, 0x75, 0x00");      // 0x00751950
    asm(".byte 0x34, 0x19, 0x75, 0x00");      // 0x00751954
    asm(".byte 0x08, 0x18, 0x75, 0x00");      // 0x00751958
    asm(".byte 0x20, 0x18, 0x75, 0x00");      // 0x0075195c
    asm(".byte 0x34, 0x18, 0x75, 0x00");      // 0x00751960
    asm(".byte 0x9f, 0x18, 0x75, 0x00");      // 0x00751964
    asm(".byte 0xb4, 0x18, 0x75, 0x00");      // 0x00751968
    // Snippet: db, [0x0075196c, 0x00751970)
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall GetPrayerSite__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool __fastcall RestartDance__8VillagerF15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x00751980    83ec0c
    asm("xor.s              eax, eax");                                      // 0x00751983    33c0
    asm("push               esi");                                           // 0x00751985    56
    asm("mov.s              esi, ecx");                                      // 0x00751986    8bf1
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x00751988    89442404
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x0075198c    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x00751990    8944240c
    asm("mov                eax, dword ptr [esi]");                          // 0x00751994    8b06
    asm("call               dword ptr [eax + 0x978]");                       // 0x00751996    ff9078090000
    asm("test               eax, eax");                                      // 0x0075199c    85c0
    asm("{disp8} je         _jmp_addr_0x007519d6");                          // 0x0075199e    7436
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000d8]");             // 0x007519a0    8b96d8000000
    asm("{disp8} mov        eax, dword ptr [edx + 0x14]");                   // 0x007519a6    8b4214
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                   // 0x007519a9    8d4c2404
    asm("push               ecx");                                           // 0x007519ad    51
    asm("add                eax, 0x14");                                     // 0x007519ae    83c014
    asm("push               eax");                                           // 0x007519b1    50
    asm("mov.s              ecx, esi");                                      // 0x007519b2    8bce
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                          // 0x007519b4    e807e0e9ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x007519b9    8b4c2414
    asm("push               ecx");                                           // 0x007519bd    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x007519be    8d542408
    asm("push               edx");                                           // 0x007519c2    52
    asm("mov.s              ecx, esi");                                      // 0x007519c3    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x007519c5    e8361e0100
    asm("mov                eax, 0x00000001");                               // 0x007519ca    b801000000
    asm("pop                esi");                                           // 0x007519cf    5e
    asm("add                esp, 0x0c");                                     // 0x007519d0    83c40c
    asm("ret                0x0004");                                        // 0x007519d3    c20400
    asm("_jmp_addr_0x007519d6:");
    asm("xor.s              eax, eax");                                      // 0x007519d6    33c0
    asm("pop                esi");                                           // 0x007519d8    5e
    asm("add                esp, 0x0c");                                     // 0x007519d9    83c40c
    asm("ret                0x0004");                                        // 0x007519dc    c20400
    __builtin_unreachable();
}
