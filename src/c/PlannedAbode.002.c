#include "PlannedAbode.h"

const double rdata_double_1_25 asm("__real@3ff4000000000000") = 1.25;

struct PlannedAbode* __fastcall __ct__12PlannedAbodeFP5Abode(struct PlannedAbode* this, const void* edx, struct Abode* abode)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00405580    8b442404
    asm("push               esi");                                           // 0x00405584    56
    asm("mov.s              esi, ecx");                                      // 0x00405585    8bf1
    asm("push               eax");                                           // 0x00405587    50
    asm("call               _jmp_addr_0x00648820");                          // 0x00405588    e893322400
    asm("{disp8} mov        dword ptr [esi + 0x48], 0x00000000");            // 0x0040558d    c7464800000000
    asm("mov                dword ptr [esi], 0x008aa3bc");                   // 0x00405594    c706bca38a00
    asm("mov.s              eax, esi");                                      // 0x0040559a    8bc6
    asm("pop                esi");                                           // 0x0040559c    5e
    asm("ret                0x0004");                                        // 0x0040559d    c20400
    __builtin_unreachable();
}

void __fastcall Init__12PlannedAbodeFP4Town(struct PlannedAbode* this, const void* edx, struct Town* town)
{
    asm("mov.s              eax, ecx");                                      // 0x004055a0    8bc1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x004055a2    8b4c2404
    asm("test               ecx, ecx");                                      // 0x004055a6    85c9
    asm("{disp8} mov        dword ptr [eax + 0x48], ecx");                   // 0x004055a8    894848
    asm("{disp8} je         _jmp_addr_0x004055b3");                          // 0x004055ab    7406
    asm("push               eax");                                           // 0x004055ad    50
    asm("call               ?AddPlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z"); // 0x004055ae    e8cd7a3300
    asm("_jmp_addr_0x004055b3:");
    asm("ret                0x0004");                                        // 0x004055b3    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct PlannedAbode* __cdecl CreateNoInit__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct MapCoords* coords, struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5)
{
    asm("push               0x0000054f");                                    // 0x004055c0    684f050000
    asm("push               0x009c7fbc");                                    // 0x004055c5    68bc7f9c00
    asm("push               0x4c");                                          // 0x004055ca    6a4c
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x004055cc    e81f110300
    asm("add                esp, 0x0c");                                     // 0x004055d1    83c40c
    asm("test               eax, eax");                                      // 0x004055d4    85c0
    asm("{disp8} je         _jmp_addr_0x004055f9");                          // 0x004055d6    7421
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x004055d8    8b4c2414
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x004055dc    8b542410
    asm("push               ecx");                                           // 0x004055e0    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x004055e1    8b4c2410
    asm("push               edx");                                           // 0x004055e5    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                   // 0x004055e6    8b542410
    asm("push               ecx");                                           // 0x004055ea    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x004055eb    8b4c2410
    asm("push               edx");                                           // 0x004055ef    52
    asm("push               ecx");                                           // 0x004055f0    51
    asm("mov.s              ecx, eax");                                      // 0x004055f1    8bc8
    asm("call               ??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");  // 0x004055f3    e888faffff
    asm("ret");                                                              // 0x004055f8    c3
    asm("_jmp_addr_0x004055f9:");
    asm("xor.s              eax, eax");                                      // 0x004055f9    33c0
    asm("ret");                                                              // 0x004055fb    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct PlannedAbode* __cdecl Create__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct MapCoords* coords, struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5)
{
    asm("push               esi");                                           // 0x00405600    56
    asm("push               edi");                                           // 0x00405601    57
    asm("push               0x00000557");                                    // 0x00405602    6857050000
    asm("push               0x009c7fbc");                                    // 0x00405607    68bc7f9c00
    asm("push               0x4c");                                          // 0x0040560c    6a4c
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x0040560e    e8dd100300
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x00405613    8b7c2420
    asm("add                esp, 0x0c");                                     // 0x00405617    83c40c
    asm("test               eax, eax");                                      // 0x0040561a    85c0
    asm("{disp8} je         _jmp_addr_0x00405649");                          // 0x0040561c    742b
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x0040561e    8b4c241c
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                   // 0x00405622    8b542418
    asm("push               ecx");                                           // 0x00405626    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00405627    8b4c2414
    asm("push               edx");                                           // 0x0040562b    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x0040562c    8b542414
    asm("push               edi");                                           // 0x00405630    57
    asm("push               ecx");                                           // 0x00405631    51
    asm("push               edx");                                           // 0x00405632    52
    asm("mov.s              ecx, eax");                                      // 0x00405633    8bc8
    asm("call               ??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");  // 0x00405635    e846faffff
    asm("mov.s              esi, eax");                                      // 0x0040563a    8bf0
    asm("push               edi");                                           // 0x0040563c    57
    asm("mov.s              ecx, esi");                                      // 0x0040563d    8bce
    asm("call               ?Init@PlannedAbode@@QAEXPAVTown@@@Z");           // 0x0040563f    e85cffffff
    asm("pop                edi");                                           // 0x00405644    5f
    asm("mov.s              eax, esi");                                      // 0x00405645    8bc6
    asm("pop                esi");                                           // 0x00405647    5e
    asm("ret");                                                              // 0x00405648    c3
    asm("_jmp_addr_0x00405649:");
    asm("xor.s              esi, esi");                                      // 0x00405649    33f6
    asm("push               edi");                                           // 0x0040564b    57
    asm("mov.s              ecx, esi");                                      // 0x0040564c    8bce
    asm("call               ?Init@PlannedAbode@@QAEXPAVTown@@@Z");           // 0x0040564e    e84dffffff
    asm("pop                edi");                                           // 0x00405653    5f
    asm("mov.s              eax, esi");                                      // 0x00405654    8bc6
    asm("pop                esi");                                           // 0x00405656    5e
    asm("ret");                                                              // 0x00405657    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct PlannedAbode* __cdecl Create__12PlannedAbodeFP5Abode(struct Abode* abode)
{
    asm("push               esi");                                           // 0x00405660    56
    asm("push               edi");                                           // 0x00405661    57
    asm("push               0x00000560");                                    // 0x00405662    6860050000
    asm("push               0x009c7fbc");                                    // 0x00405667    68bc7f9c00
    asm("push               0x4c");                                          // 0x0040566c    6a4c
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x0040566e    e87d100300
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x00405673    8b7c2418
    asm("add                esp, 0x0c");                                     // 0x00405677    83c40c
    asm("test               eax, eax");                                      // 0x0040567a    85c0
    asm("{disp8} je         _jmp_addr_0x0040568a");                          // 0x0040567c    740c
    asm("push               edi");                                           // 0x0040567e    57
    asm("mov.s              ecx, eax");                                      // 0x0040567f    8bc8
    asm("call               ??0PlannedAbode@@QAE@PAVAbode@@@Z");             // 0x00405681    e8fafeffff
    asm("mov.s              esi, eax");                                      // 0x00405686    8bf0
    asm("{disp8} jmp        _jmp_addr_0x0040568c");                          // 0x00405688    eb02
    asm("_jmp_addr_0x0040568a:");
    asm("xor.s              esi, esi");                                      // 0x0040568a    33f6
    asm("_jmp_addr_0x0040568c:");
    asm("{disp8} mov        eax, dword ptr [edi + 0x64]");                   // 0x0040568c    8b4764
    asm("{disp8} mov        dword ptr [esi + 0x38], eax");                   // 0x0040568f    894638
    asm("mov                edx, dword ptr [edi]");                          // 0x00405692    8b17
    asm("mov.s              ecx, edi");                                      // 0x00405694    8bcf
    asm("{disp8} mov        dword ptr [edi + 0x64], 0x00000000");            // 0x00405696    c7476400000000
    asm("call               dword ptr [edx + 0x48]");                        // 0x0040569d    ff5248
    asm("push               eax");                                           // 0x004056a0    50
    asm("mov.s              ecx, esi");                                      // 0x004056a1    8bce
    asm("call               ?Init@PlannedAbode@@QAEXPAVTown@@@Z");           // 0x004056a3    e8f8feffff
    asm("pop                edi");                                           // 0x004056a8    5f
    asm("mov.s              eax, esi");                                      // 0x004056a9    8bc6
    asm("pop                esi");                                           // 0x004056ab    5e
    asm("ret");                                                              // 0x004056ac    c3
    __builtin_unreachable();
}

void __fastcall ToBeDeleted__12PlannedAbodeFi(struct Base* this, const void* edx, int param_1)
{
    asm("push               esi");                                           // 0x004056b0    56
    asm("mov.s              esi, ecx");                                      // 0x004056b1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x48]");                   // 0x004056b3    8b4e48
    asm("test               ecx, ecx");                                      // 0x004056b6    85c9
    asm("{disp8} je         _jmp_addr_0x004056c0");                          // 0x004056b8    7406
    asm("push               esi");                                           // 0x004056ba    56
    asm("call               ?RemovePlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z");  // 0x004056bb    e8107a3300
    asm("_jmp_addr_0x004056c0:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x004056c0    8b442408
    asm("push               eax");                                           // 0x004056c4    50
    asm("mov.s              ecx, esi");                                      // 0x004056c5    8bce
    asm("call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z");        // 0x004056c7    e834a71600
    asm("pop                esi");                                           // 0x004056cc    5e
    asm("ret                0x0004");                                        // 0x004056cd    c20400
    __builtin_unreachable();
}

struct GPlannedAbodeInfo* __cdecl GetInfo__12PlannedAbodeFv(void)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x40]");                   // 0x004056d0    8b4140
    asm("ret");                                                              // 0x004056d3    c3
    asm("nop");                                                              // 0x004056d4    90
    asm("nop");                                                              // 0x004056d5    90
    asm("nop");                                                              // 0x004056d6    90
    asm("nop");                                                              // 0x004056d7    90
    asm("nop");                                                              // 0x004056d8    90
    asm("nop");                                                              // 0x004056d9    90
    asm("nop");                                                              // 0x004056da    90
    asm("nop");                                                              // 0x004056db    90
    asm("nop");                                                              // 0x004056dc    90
    asm("nop");                                                              // 0x004056dd    90
    asm("nop");                                                              // 0x004056de    90
    asm("nop");                                                              // 0x004056df    90
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x004056e0    8b442404
    asm("{disp8} mov        dword ptr [ecx + 0x2c], eax");                   // 0x004056e4    89412c
    asm("ret                0x0004");                                        // 0x004056e7    c20400
    asm("call               dword ptr [__imp__CoFileTimeToDosDateTime@4]");  // 0x004056ea    ff1578998a00
    __builtin_unreachable();
}

bool32_t __fastcall FUN_004056f0__12PlannedAbodeFP4Town(struct PlannedAbode* this, const void* edx, int param_1)
{
    asm("call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");                          // 0x004056f0    e8dbffffff
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000120]");             // 0x004056f5    8b8020010000
    asm("and                eax, dword ptr [esp + 0x04]");                   // 0x004056fb    23442404
    asm("neg                eax");                                           // 0x004056ff    f7d8
    asm("sbb.s              eax, eax");                                      // 0x00405701    1bc0
    asm("neg                eax");                                           // 0x00405703    f7d8
    asm("ret                0x0004");                                        // 0x00405705    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct MultiMapFixed* __fastcall CreatePlanned__12PlannedAbodeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1)
{
    asm("push               ecx");                                           // 0x00405710    51
    asm("push               esi");                                           // 0x00405711    56
    asm("mov.s              esi, ecx");                                      // 0x00405712    8bf1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00405714    8b4e28
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00405717    8b4648
    asm("mov                edx, dword ptr [esi]");                          // 0x0040571a    8b16
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x0040571c    894c2404
    asm("push               eax");                                           // 0x00405720    50
    asm("mov.s              ecx, esi");                                      // 0x00405721    8bce
    asm("call               dword ptr [edx + 0x120]");                       // 0x00405723    ff9220010000
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00405729    8b442408
    asm("push               ecx");                                           // 0x0040572d    51
    asm("fstp               dword ptr [esp]");                               // 0x0040572e    d91c24
    asm("push               eax");                                           // 0x00405731    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00405732    8d4e14
    asm("push               ecx");                                           // 0x00405735    51
    asm("mov.s              ecx, esi");                                      // 0x00405736    8bce
    asm("call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");                          // 0x00405738    e893ffffff
    asm("mov.s              ecx, eax");                                      // 0x0040573d    8bc8
    asm("call               ?IsOkToCreateAtPos@GAbodeInfo@@QBE_NPBUMapCoords@@MMPAVTown@@@Z");  // 0x0040573f    e8ccf3ffff
    asm("test               eax, eax");                                      // 0x00405744    85c0
    asm("{disp8} je         _jmp_addr_0x0040575c");                          // 0x00405746    7414
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x00405748    8b44240c
    asm("mov                edx, dword ptr [esi]");                          // 0x0040574c    8b16
    asm("push               eax");                                           // 0x0040574e    50
    asm("mov.s              ecx, esi");                                      // 0x0040574f    8bce
    asm("call               dword ptr [edx + 0x504]");                       // 0x00405751    ff9204050000
    asm("pop                esi");                                           // 0x00405757    5e
    asm("pop                ecx");                                           // 0x00405758    59
    asm("ret                0x0004");                                        // 0x00405759    c20400
    asm("_jmp_addr_0x0040575c:");
    asm("xor.s              eax, eax");                                      // 0x0040575c    33c0
    asm("pop                esi");                                           // 0x0040575e    5e
    asm("pop                ecx");                                           // 0x0040575f    59
    asm("ret                0x0004");                                        // 0x00405760    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct MultiMapFixed* __fastcall CreatePlannedNoFixedCheck__12PlannedAbodeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1)
{
    asm("push               ecx");                                           // 0x00405770    51
    asm("push               esi");                                           // 0x00405771    56
    asm("push               edi");                                           // 0x00405772    57
    asm("mov.s              esi, ecx");                                      // 0x00405773    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00405775    8b4c2410
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00405779    8b4628
    asm("mov                edx, dword ptr [esi]");                          // 0x0040577c    8b16
    asm("{disp8} mov        edi, dword ptr [esi + 0x48]");                   // 0x0040577e    8b7e48
    asm("push               0x1");                                           // 0x00405781    6a01
    asm("push               0x1");                                           // 0x00405783    6a01
    asm("push               ecx");                                           // 0x00405785    51
    asm("push               0x0");                                           // 0x00405786    6a00
    asm("push               0x0");                                           // 0x00405788    6a00
    asm("mov.s              ecx, esi");                                      // 0x0040578a    8bce
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0040578c    8944241c
    asm("call               dword ptr [edx + 0x120]");                       // 0x00405790    ff9220010000
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00405796    8b44241c
    asm("push               ecx");                                           // 0x0040579a    51
    asm("fstp               dword ptr [esp]");                               // 0x0040579b    d91c24
    asm("push               eax");                                           // 0x0040579e    50
    asm("push               edi");                                           // 0x0040579f    57
    asm("mov.s              ecx, esi");                                      // 0x004057a0    8bce
    asm("call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");                          // 0x004057a2    e829ffffff
    asm("push               eax");                                           // 0x004057a7    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x004057a8    8d4e14
    asm("push               ecx");                                           // 0x004057ab    51
    asm("call               ?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z"); // 0x004057ac    e86fd6ffff
    asm("mov.s              edi, eax");                                      // 0x004057b1    8bf8
    asm("add                esp, 0x28");                                     // 0x004057b3    83c428
    asm("test               edi, edi");                                      // 0x004057b6    85ff
    asm("{disp8} je         _jmp_addr_0x004057e1");                          // 0x004057b8    7427
    asm("mov                edx, dword ptr [esi]");                          // 0x004057ba    8b16
    asm("push               edi");                                           // 0x004057bc    57
    asm("mov.s              ecx, esi");                                      // 0x004057bd    8bce
    asm("call               dword ptr [edx + 0x508]");                       // 0x004057bf    ff9208050000
    asm("{disp8} mov        eax, dword ptr [esi + 0x30]");                   // 0x004057c5    8b4630
    asm("test               eax, eax");                                      // 0x004057c8    85c0
    asm("{disp8} je         _jmp_addr_0x004057d0");                          // 0x004057ca    7404
    asm("or                 byte ptr [edi + 0x58], 4");                      // 0x004057cc    804f5804
    asm("_jmp_addr_0x004057d0:");
    asm("mov                eax, dword ptr [esi]");                          // 0x004057d0    8b06
    asm("push               0x0");                                           // 0x004057d2    6a00
    asm("mov.s              ecx, esi");                                      // 0x004057d4    8bce
    asm("call               dword ptr [eax + 0xc]");                         // 0x004057d6    ff500c
    asm("mov.s              eax, edi");                                      // 0x004057d9    8bc7
    asm("pop                edi");                                           // 0x004057db    5f
    asm("pop                esi");                                           // 0x004057dc    5e
    asm("pop                ecx");                                           // 0x004057dd    59
    asm("ret                0x0004");                                        // 0x004057de    c20400
    asm("_jmp_addr_0x004057e1:");
    asm("pop                edi");                                           // 0x004057e1    5f
    asm("xor.s              eax, eax");                                      // 0x004057e2    33c0
    asm("pop                esi");                                           // 0x004057e4    5e
    asm("pop                ecx");                                           // 0x004057e5    59
    asm("ret                0x0004");                                        // 0x004057e6    c20400
    __builtin_unreachable();
}

bool32_t __fastcall IsOkToBuild__12PlannedAbodeFv(struct PlannedAbode* this)
{
    asm("push               ecx");                                           // 0x004057f0    51
    asm("push               esi");                                           // 0x004057f1    56
    asm("mov.s              esi, ecx");                                      // 0x004057f2    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x004057f4    8b4628
    asm("push               edi");                                           // 0x004057f7    57
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x004057f8    89442408
    asm("call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ");                          // 0x004057fc    e8cffeffff
    asm("mov                edx, dword ptr [esi]");                          // 0x00405801    8b16
    asm("mov.s              ecx, esi");                                      // 0x00405803    8bce
    asm("mov.s              edi, eax");                                      // 0x00405805    8bf8
    asm("call               dword ptr [edx + 0x120]");                       // 0x00405807    ff9220010000
    asm("{disp32} fmul      qword ptr [__real@3ff4000000000000]");           // 0x0040580d    dc0dd8a88a00
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00405813    8b442408
    asm("mov                edx, dword ptr [edi]");                          // 0x00405817    8b17
    asm("push               ecx");                                           // 0x00405819    51
    asm("fstp               dword ptr [esp]");                               // 0x0040581a    d91c24
    asm("push               eax");                                           // 0x0040581d    50
    asm("mov.s              ecx, edi");                                      // 0x0040581e    8bcf
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00405820    ff522c
    asm("push               eax");                                           // 0x00405823    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00405824    8d4e14
    asm("call               ?IsSuitableForFixed@MapCoords@@QBEXW4MESH_LIST@@MM@Z");                          // 0x00405827    e804e31f00
    asm("pop                edi");                                           // 0x0040582c    5f
    asm("pop                esi");                                           // 0x0040582d    5e
    asm("pop                ecx");                                           // 0x0040582e    59
    asm("ret");                                                              // 0x0040582f    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Save__12PlannedAbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file)
{
    asm("push               esi");                                           // 0x00405830    56
    asm("push               edi");                                           // 0x00405831    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00405832    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x00405836    8bf1
    asm("push               edi");                                           // 0x00405838    57
    asm("call               ?Save@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z");  // 0x00405839    e852312400
    asm("test               eax, eax");                                      // 0x0040583e    85c0
    asm("{disp8} je         _jmp_addr_0x00405857");                          // 0x00405840    7415
    asm("{disp8} mov        eax, dword ptr [esi + 0x48]");                   // 0x00405842    8b4648
    asm("push               eax");                                           // 0x00405845    50
    asm("mov.s              ecx, edi");                                      // 0x00405846    8bcf
    asm("call               ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z");                          // 0x00405848    e8c3c51500
    asm("pop                edi");                                           // 0x0040584d    5f
    asm("mov                eax, 0x00000001");                               // 0x0040584e    b801000000
    asm("pop                esi");                                           // 0x00405853    5e
    asm("ret                0x0004");                                        // 0x00405854    c20400
    asm("_jmp_addr_0x00405857:");
    asm("pop                edi");                                           // 0x00405857    5f
    asm("xor.s              eax, eax");                                      // 0x00405858    33c0
    asm("pop                esi");                                           // 0x0040585a    5e
    asm("ret                0x0004");                                        // 0x0040585b    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall Load__12PlannedAbodeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file)
{
    asm("push               esi");                                           // 0x00405860    56
    asm("push               edi");                                           // 0x00405861    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00405862    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x00405866    8bf1
    asm("push               edi");                                           // 0x00405868    57
    asm("call               ?Load@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z");  // 0x00405869    e882322400
    asm("test               eax, eax");                                      // 0x0040586e    85c0
    asm("{disp8} je         _jmp_addr_0x00405887");                          // 0x00405870    7415
    asm("add                esi, 0x48");                                     // 0x00405872    83c648
    asm("push               esi");                                           // 0x00405875    56
    asm("mov.s              ecx, edi");                                      // 0x00405876    8bcf
    asm("call               @ReadPtr__10GameOSFileFPP9GameThing@12");        // 0x00405878    e803c91500
    asm("pop                edi");                                           // 0x0040587d    5f
    asm("mov                eax, 0x00000001");                               // 0x0040587e    b801000000
    asm("pop                esi");                                           // 0x00405883    5e
    asm("ret                0x0004");                                        // 0x00405884    c20400
    asm("_jmp_addr_0x00405887:");
    asm("pop                edi");                                           // 0x00405887    5f
    asm("xor.s              eax, eax");                                      // 0x00405888    33c0
    asm("pop                esi");                                           // 0x0040588a    5e
    asm("ret                0x0004");                                        // 0x0040588b    c20400
    __builtin_unreachable();
}
