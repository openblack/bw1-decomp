#include "VillagerNames.h"

char s_Villagernames_cpp[] = "C:\\dev\\MP\\Black\\villagernames.cpp";

struct VillagerNameBlock* CurrentVillagerNameBlock;
void* PTR_00db9e28;

void __cdecl globl_ct_0x007626f0(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x007626f0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x007626f6    b001
    asm("test               al, cl");                                        // 0x007626f8    84c8
    asm("{disp8} jne        _jmp_addr_0x00762704");                          // 0x007626fa    7508
    asm("or.s               cl, al");                                        // 0x007626fc    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x007626fe    880d34c9fa00
    asm("_jmp_addr_0x00762704:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00762710");   // 0x00762704    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00762710(void)
{
    asm("push               0x00407870");                                    // 0x00762710    6870784000
    asm("call               _atexit");                                       // 0x00762715    e877300600
    asm("pop                ecx");                                           // 0x0076271a    59
    asm("ret");                                                              // 0x0076271b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct VillagerName* __cdecl Alloc__17VillagerNameBlockFv(void)
{
    asm("{disp32} mov       ecx, dword ptr [_CurrentVillagerNameBlock]");    // 0x00762720    8b0d249edb00
    asm("test               ecx, ecx");                                      // 0x00762726    85c9
    asm("push               esi");                                           // 0x00762728    56
    asm("{disp8} je         _jmp_addr_0x0076273a");                          // 0x00762729    740f
    asm("_jmp_addr_0x0076272b:");
    asm("{disp8} mov        eax, dword ptr [ecx + 0x0c]");                   // 0x0076272b    8b410c
    asm("cmp                eax, dword ptr [ecx + 0x04]");                   // 0x0076272e    3b4104
    asm("{disp8} jl         _jmp_addr_0x0076275c");                          // 0x00762731    7c29
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x10]");                   // 0x00762733    8b4910
    asm("test               ecx, ecx");                                      // 0x00762736    85c9
    asm("{disp8} jne        _jmp_addr_0x0076272b");                          // 0x00762738    75f1
    asm("_jmp_addr_0x0076273a:");
    asm("push               0x16");                                          // 0x0076273a    6a16
    asm("push               0x00c24534");                                    // 0x0076273c    683445c200
    asm("push               0x14");                                          // 0x00762741    6a14
    asm("call               ___nw__FUl");                                    // 0x00762743    e848900700
    asm("add                esp, 0x0c");                                     // 0x00762748    83c40c
    asm("test               eax, eax");                                      // 0x0076274b    85c0
    asm("{disp8} je         _jmp_addr_0x0076275a");                          // 0x0076274d    740b
    asm("mov.s              ecx, eax");                                      // 0x0076274f    8bc8
    asm("call               ??0VillagerNameBlock@@QAE@XZ");                  // 0x00762751    e8ca000000
    asm("mov.s              ecx, eax");                                      // 0x00762756    8bc8
    asm("{disp8} jmp        _jmp_addr_0x0076275c");                          // 0x00762758    eb02
    asm("_jmp_addr_0x0076275a:");
    asm("xor.s              ecx, ecx");                                      // 0x0076275a    33c9
    asm("_jmp_addr_0x0076275c:");
    asm("{disp8} inc        dword ptr [ecx + 0x08]");                        // 0x0076275c    ff4108
    asm("{disp8} mov        edx, dword ptr [ecx + 0x0c]");                   // 0x0076275f    8b510c
    asm("mov                esi, dword ptr [ecx]");                          // 0x00762762    8b31
    asm("{disp32} lea       eax, dword ptr [edx * 0x8 + 0x00000000]");       // 0x00762764    8d04d500000000
    asm("sub.s              eax, edx");                                      // 0x0076276b    2bc2
    asm("lea                eax, dword ptr [eax + eax * 0x4]");              // 0x0076276d    8d0480
    asm("lea                eax, dword ptr [edx + eax * 0x8]");              // 0x00762770    8d04c2
    asm("inc                edx");                                           // 0x00762773    42
    asm("lea                eax, dword ptr [esi + eax * 0x4]");              // 0x00762774    8d0486
    asm("{disp8} mov        dword ptr [ecx + 0x0c], edx");                   // 0x00762777    89510c
    asm("pop                esi");                                           // 0x0076277a    5e
    asm("ret");                                                              // 0x0076277b    c3
    __builtin_unreachable();
}

void __cdecl Delete__17VillagerNameBlockFP12VillagerName(struct VillagerName* name)
{
    asm("push               esi");                                           // 0x00762780    56
    asm("{disp32} mov       esi, dword ptr [_CurrentVillagerNameBlock]");    // 0x00762781    8b35249edb00
    asm("test               esi, esi");                                      // 0x00762787    85f6
    asm("push               edi");                                           // 0x00762789    57
    asm("{disp8} je         _jmp_addr_0x007627da");                          // 0x0076278a    744e
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0076278c    8b7c240c
    asm("_jmp_addr_0x00762790:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00762790    8b16
    asm("cmp.s              edi, edx");                                      // 0x00762792    3bfa
    asm(".byte              0x72, 0x19");// {disp8} jb _jmp_addr_0x007627af  // 0x00762794    7219
    asm("{disp8} mov        ecx, dword ptr [esi + 0x04]");                   // 0x00762796    8b4e04
    asm("{disp32} lea       eax, dword ptr [ecx * 0x8 + 0x00000000]");       // 0x00762799    8d04cd00000000
    asm("sub.s              eax, ecx");                                      // 0x007627a0    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x4]");              // 0x007627a2    8d0480
    asm("lea                ecx, dword ptr [ecx + eax * 0x8]");              // 0x007627a5    8d0cc1
    asm("lea                edx, dword ptr [edx + ecx * 0x4]");              // 0x007627a8    8d148a
    asm("cmp.s              edi, edx");                                      // 0x007627ab    3bfa
    asm(".byte              0x72, 0xa");// {disp8} jb _jmp_addr_0x007627b9   // 0x007627ad    720a
    asm("_jmp_addr_0x007627af:");
    asm("{disp8} mov        esi, dword ptr [esi + 0x10]");                   // 0x007627af    8b7610
    asm("test               esi, esi");                                      // 0x007627b2    85f6
    asm("{disp8} jne        _jmp_addr_0x00762790");                          // 0x007627b4    75da
    asm("pop                edi");                                           // 0x007627b6    5f
    asm("pop                esi");                                           // 0x007627b7    5e
    asm("ret");                                                              // 0x007627b8    c3
    asm("_jmp_addr_0x007627b9:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x08]");                   // 0x007627b9    8b4e08
    asm("dec                ecx");                                           // 0x007627bc    49
    asm("mov.s              eax, ecx");                                      // 0x007627bd    8bc1
    asm("test               eax, eax");                                      // 0x007627bf    85c0
    asm("{disp8} mov        dword ptr [esi + 0x08], ecx");                   // 0x007627c1    894e08
    asm("{disp8} jg         _jmp_addr_0x007627da");                          // 0x007627c4    7f14
    asm("test               esi, esi");                                      // 0x007627c6    85f6
    asm("{disp8} je         _jmp_addr_0x007627da");                          // 0x007627c8    7410
    asm("mov.s              ecx, esi");                                      // 0x007627ca    8bce
    asm("call               ?FreeAll@VillagerNameBlock@@QAEXXZ");            // 0x007627cc    e89f010000
    asm("push               esi");                                           // 0x007627d1    56
    asm("call               ??3@YAXPAX@Z");                                  // 0x007627d2    e8c1c60400
    asm("add                esp, 0x04");                                     // 0x007627d7    83c404
    asm("_jmp_addr_0x007627da:");
    asm("pop                edi");                                           // 0x007627da    5f
    asm("pop                esi");                                           // 0x007627db    5e
    asm("ret");                                                              // 0x007627dc    c3
    __builtin_unreachable();
}

bool32_t __fastcall DeleteAll__17VillagerNameBlockFv(struct VillagerNameBlock* this)
{
    asm("push               esi");                                           // 0x007627e0    56
    asm("{disp32} mov       esi, dword ptr [_CurrentVillagerNameBlock]");    // 0x007627e1    8b35249edb00
    asm("test               esi, esi");                                      // 0x007627e7    85f6
    asm("{disp8} je         _jmp_addr_0x00762805");                          // 0x007627e9    741a
    asm("_jmp_addr_0x007627eb:");
    asm("mov.s              ecx, esi");                                      // 0x007627eb    8bce
    asm("call               ?FreeAll@VillagerNameBlock@@QAEXXZ");            // 0x007627ed    e87e010000
    asm("push               esi");                                           // 0x007627f2    56
    asm("call               ??3@YAXPAX@Z");                                  // 0x007627f3    e8a0c60400
    asm("{disp32} mov       esi, dword ptr [_CurrentVillagerNameBlock]");    // 0x007627f8    8b35249edb00
    asm("add                esp, 0x04");                                     // 0x007627fe    83c404
    asm("test               esi, esi");                                      // 0x00762801    85f6
    asm("{disp8} jne        _jmp_addr_0x007627eb");                          // 0x00762803    75e6
    asm("_jmp_addr_0x00762805:");
    asm("{disp32} mov       dword ptr [_PTR_00db9e28], 0x00000000");         // 0x00762805    c705289edb0000000000
    asm("pop                esi");                                           // 0x0076280f    5e
    asm("ret");                                                              // 0x00762810    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct VillagerNameBlock* __fastcall __ct__17VillagerNameBlockFv(struct VillagerNameBlock* this)
{
    asm("push               esi");                                           // 0x00762820    56
    asm("push               0x35");                                          // 0x00762821    6a35
    asm("mov.s              esi, ecx");                                      // 0x00762823    8bf1
    asm("push               0x00c24534");                                    // 0x00762825    683445c200
    asm("push               0x00011904");                                    // 0x0076282a    6804190100
    asm("{disp8} mov        dword ptr [esi + 0x04], 0x00000040");            // 0x0076282f    c7460440000000
    asm("{disp8} mov        dword ptr [esi + 0x08], 0x00000000");            // 0x00762836    c7460800000000
    asm("{disp8} mov        dword ptr [esi + 0x0c], 0x00000000");            // 0x0076283d    c7460c00000000
    asm("call               ___nw__FUl");                                    // 0x00762844    e8478f0700
    asm("add                esp, 0x0c");                                     // 0x00762849    83c40c
    asm("test               eax, eax");                                      // 0x0076284c    85c0
    asm("{disp8} je         _jmp_addr_0x00762882");                          // 0x0076284e    7432
    asm("{disp8} lea        edx, dword ptr [eax + 0x04]");                   // 0x00762850    8d5004
    asm("mov                dword ptr [eax], 0x00000040");                   // 0x00762853    c70040000000
    asm("mov.s              eax, edx");                                      // 0x00762859    8bc2
    asm("mov                ecx, 0x00000040");                               // 0x0076285b    b940000000
    asm("_jmp_addr_0x00762860:");
    asm("mov                dword ptr [eax], 0x0099a9bc");                   // 0x00762860    c700bca99900
    asm("add                eax, 0x00000464");                               // 0x00762866    0564040000
    asm("dec                ecx");                                           // 0x0076286b    49
    asm("{disp8} jne        _jmp_addr_0x00762860");                          // 0x0076286c    75f2
    asm("mov                dword ptr [esi], edx");                          // 0x0076286e    8916
    asm("{disp32} mov       eax, dword ptr [_CurrentVillagerNameBlock]");    // 0x00762870    a1249edb00
    asm("{disp8} mov        dword ptr [esi + 0x10], eax");                   // 0x00762875    894610
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3e24], esi");        // 0x00762878    8935249edb00
    asm("mov.s              eax, esi");                                      // 0x0076287e    8bc6
    asm("pop                esi");                                           // 0x00762880    5e
    asm("ret");                                                              // 0x00762881    c3
    asm("_jmp_addr_0x00762882:");
    asm("xor.s              edx, edx");                                      // 0x00762882    33d2
    asm("mov                dword ptr [esi], edx");                          // 0x00762884    8916
    asm("{disp32} mov       eax, dword ptr [_CurrentVillagerNameBlock]");    // 0x00762886    a1249edb00
    asm("{disp8} mov        dword ptr [esi + 0x10], eax");                   // 0x0076288b    894610
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3e24], esi");        // 0x0076288e    8935249edb00
    asm("mov.s              eax, esi");                                      // 0x00762894    8bc6
    asm("pop                esi");                                           // 0x00762896    5e
    asm("ret");                                                              // 0x00762897    c3
    __builtin_unreachable();
}

void __fastcall AddDrawing__12VillagerNameFv(struct VillagerName* this)
{
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x504644]");        // 0x007628a0    a144a6ec00
    asm("test               eax, eax");                                      // 0x007628a5    85c0
    asm("{disp8} je         _jmp_addr_0x007628fb");                          // 0x007628a7    7452
    asm("{disp32} fld       dword ptr [ecx + 0x0000045c]");                  // 0x007628a9    d9815c040000
    asm("push               0x0");                                           // 0x007628af    6a00
    asm("{disp32} fsub      dword ptr [data_bytes + 0x4dbdc0]");             // 0x007628b1    d825c01dea00
    asm("push               ecx");                                           // 0x007628b7    51
    asm("{disp32} fld       dword ptr [ecx + 0x00000458]");                  // 0x007628b8    d98158040000
    asm("mov.s              edx, ecx");                                      // 0x007628be    8bd1
    asm("{disp32} fsub      dword ptr [data_bytes + 0x4dbdbc]");             // 0x007628c0    d825bc1dea00
    asm("{disp32} fld       dword ptr [ecx + 0x00000454]");                  // 0x007628c6    d98154040000
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x504648]");        // 0x007628cc    8b0d48a6ec00
    asm("{disp32} fsub      dword ptr [data_bytes + 0x4dbdb8]");             // 0x007628d2    d825b81dea00
    asm("fld                st(0)");                                         // 0x007628d8    d9c0
    asm("fmul               st, st(1)");                                     // 0x007628da    d8c9
    asm("fld                st(2)");                                         // 0x007628dc    d9c2
    asm("fmul               st, st(3)");                                     // 0x007628de    d8cb
    asm("faddp              st(1), st");                                     // 0x007628e0    dec1
    asm("fld                st(3)");                                         // 0x007628e2    d9c3
    asm("fmul               st, st(4)");                                     // 0x007628e4    d8cc
    asm("faddp              st(1), st");                                     // 0x007628e6    dec1
    asm("fstp               dword ptr [esp]");                               // 0x007628e8    d91c24
    asm("push               0x00762dc0");                                    // 0x007628eb    68c02d7600
    asm("fstp               st(0)");                                         // 0x007628f0    ddd8
    asm("fstp               st(0)");                                         // 0x007628f2    ddd8
    asm("fstp               st(0)");                                         // 0x007628f4    ddd8
    asm("call               _jmp_addr_0x0083f310");                          // 0x007628f6    e815ca0d00
    asm("_jmp_addr_0x007628fb:");
    asm("ret");                                                              // 0x007628fb    c3
    __builtin_unreachable();
}

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12VillagerName = {
    .pTypeDescriptor = &__RTTITypeDescriptor__12VillagerName,
    .numContainedBases = 0x00000001,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__12VillagerName = {
    .arrayOfBaseClassDescriptors = {
        &__RTTIBaseClassDescriptor__12VillagerName,
        &__RTTIBaseClassDescriptor__13DrawingObject,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12VillagerName = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000002,
  .pBaseClassArray = &__RTTIBaseClassArray__12VillagerName,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12VillagerName = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__12VillagerName,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__12VillagerName,
};

const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__12VillagerName = &__RTTICompleteObjectLocator__12VillagerName;

const struct VillagerNameVftable __vt__12VillagerName = {
  AddDrawing__12VillagerNameFv,
};

struct RTTITypeDescriptor __RTTITypeDescriptor__12VillagerName = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AUVillagerName@@",
};

void __fastcall __dt__17VillagerNameBlockFv(struct VillagerNameBlock* this)
{
    asm("{disp8} mov        dl, byte ptr [esp + 0x04]");                     // 0x00762900    8a542404
    asm("test               dl, 0x02");                                      // 0x00762904    f6c202
    asm("push               esi");                                           // 0x00762907    56
    asm("mov.s              esi, ecx");                                      // 0x00762908    8bf1
    asm("{disp8} je         _jmp_addr_0x0076294d");                          // 0x0076290a    7441
    asm("{disp8} mov        eax, dword ptr [esi + -0x04]");                  // 0x0076290c    8b46fc
    asm("push               edi");                                           // 0x0076290f    57
    asm("{disp8} lea        edi, dword ptr [esi + -0x04]");                  // 0x00762910    8d7efc
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x00762913    8d0cc500000000
    asm("sub.s              ecx, eax");                                      // 0x0076291a    2bc8
    asm("lea                ecx, dword ptr [ecx + ecx * 0x4]");              // 0x0076291c    8d0c89
    asm("lea                ecx, dword ptr [eax + ecx * 0x8]");              // 0x0076291f    8d0cc8
    asm("dec                eax");                                           // 0x00762922    48
    asm("lea                ecx, dword ptr [esi + ecx * 0x4]");              // 0x00762923    8d0c8e
    asm("{disp8} js         _jmp_addr_0x00762938");                          // 0x00762926    7810
    asm("inc                eax");                                           // 0x00762928    40
    asm("_jmp_addr_0x00762929:");
    asm("sub                ecx, 0x00000464");                               // 0x00762929    81e964040000
    asm("dec                eax");                                           // 0x0076292f    48
    asm("mov                dword ptr [ecx], 0x0099a9bc");                   // 0x00762930    c701bca99900
    asm("{disp8} jne        _jmp_addr_0x00762929");                          // 0x00762936    75f1
    asm("_jmp_addr_0x00762938:");
    asm("test               dl, 0x01");                                      // 0x00762938    f6c201
    asm("{disp8} je         _jmp_addr_0x00762946");                          // 0x0076293b    7409
    asm("push               edi");                                           // 0x0076293d    57
    asm("call               ??3@YAXPAX@Z");                                  // 0x0076293e    e855c50400
    asm("add                esp, 0x04");                                     // 0x00762943    83c404
    asm("_jmp_addr_0x00762946:");
    asm("mov.s              eax, edi");                                      // 0x00762946    8bc7
    asm("pop                edi");                                           // 0x00762948    5f
    asm("pop                esi");                                           // 0x00762949    5e
    asm("ret                0x0004");                                        // 0x0076294a    c20400
    asm("_jmp_addr_0x0076294d:");
    asm("test               dl, 0x01");                                      // 0x0076294d    f6c201
    asm("mov                dword ptr [esi], 0x0099a9bc");                   // 0x00762950    c706bca99900
    asm("{disp8} je         _jmp_addr_0x00762961");                          // 0x00762956    7409
    asm("push               esi");                                           // 0x00762958    56
    asm("call               ??3@YAXPAX@Z");                                  // 0x00762959    e83ac50400
    asm("add                esp, 0x04");                                     // 0x0076295e    83c404
    asm("_jmp_addr_0x00762961:");
    asm("mov.s              eax, esi");                                      // 0x00762961    8bc6
    asm("pop                esi");                                           // 0x00762963    5e
    asm("ret                0x0004");                                        // 0x00762964    c20400
    __builtin_unreachable();
}

void __fastcall FreeAll__17VillagerNameBlockFv(struct VillagerNameBlock* this)
{
    asm("push               edi");                                           // 0x00762970    57
    asm("mov.s              edi, ecx");                                      // 0x00762971    8bf9
    asm("mov                edx, dword ptr [edi]");                          // 0x00762973    8b17
    asm("test               edx, edx");                                      // 0x00762975    85d2
    asm("{disp8} je         _jmp_addr_0x007629af");                          // 0x00762977    7436
    asm("{disp8} mov        eax, dword ptr [edx + -0x04]");                  // 0x00762979    8b42fc
    asm("push               esi");                                           // 0x0076297c    56
    asm("{disp8} lea        esi, dword ptr [edx + -0x04]");                  // 0x0076297d    8d72fc
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x00762980    8d0cc500000000
    asm("sub.s              ecx, eax");                                      // 0x00762987    2bc8
    asm("lea                ecx, dword ptr [ecx + ecx * 0x4]");              // 0x00762989    8d0c89
    asm("lea                ecx, dword ptr [eax + ecx * 0x8]");              // 0x0076298c    8d0cc8
    asm("dec                eax");                                           // 0x0076298f    48
    asm("lea                ecx, dword ptr [edx + ecx * 0x4]");              // 0x00762990    8d0c8a
    asm("{disp8} js         _jmp_addr_0x007629a5");                          // 0x00762993    7810
    asm("inc                eax");                                           // 0x00762995    40
    asm("_jmp_addr_0x00762996:");
    asm("sub                ecx, 0x00000464");                               // 0x00762996    81e964040000
    asm("dec                eax");                                           // 0x0076299c    48
    asm("mov                dword ptr [ecx], 0x0099a9bc");                   // 0x0076299d    c701bca99900
    asm("{disp8} jne        _jmp_addr_0x00762996");                          // 0x007629a3    75f1
    asm("_jmp_addr_0x007629a5:");
    asm("push               esi");                                           // 0x007629a5    56
    asm("call               ??3@YAXPAX@Z");                                  // 0x007629a6    e8edc40400
    asm("add                esp, 0x04");                                     // 0x007629ab    83c404
    asm("pop                esi");                                           // 0x007629ae    5e
    asm("_jmp_addr_0x007629af:");
    asm("{disp32} mov       eax, dword ptr [_CurrentVillagerNameBlock]");    // 0x007629af    a1249edb00
    asm("cmp.s              eax, edi");                                      // 0x007629b4    3bc7
    asm("{disp8} jne        _jmp_addr_0x007629c3");                          // 0x007629b6    750b
    asm("{disp8} mov        edx, dword ptr [edi + 0x10]");                   // 0x007629b8    8b5710
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3e24], edx");        // 0x007629bb    8915249edb00
    asm("pop                edi");                                           // 0x007629c1    5f
    asm("ret");                                                              // 0x007629c2    c3
    asm("_jmp_addr_0x007629c3:");
    asm("test               eax, eax");                                      // 0x007629c3    85c0
    asm("{disp8} je         _jmp_addr_0x007629dc");                          // 0x007629c5    7415
    asm("_jmp_addr_0x007629c7:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x10]");                   // 0x007629c7    8b4810
    asm("cmp.s              ecx, edi");                                      // 0x007629ca    3bcf
    asm("{disp8} je         _jmp_addr_0x007629d6");                          // 0x007629cc    7408
    asm("mov.s              eax, ecx");                                      // 0x007629ce    8bc1
    asm("test               eax, eax");                                      // 0x007629d0    85c0
    asm("{disp8} jne        _jmp_addr_0x007629c7");                          // 0x007629d2    75f3
    asm("pop                edi");                                           // 0x007629d4    5f
    asm("ret");                                                              // 0x007629d5    c3
    asm("_jmp_addr_0x007629d6:");
    asm("{disp8} mov        ecx, dword ptr [edi + 0x10]");                   // 0x007629d6    8b4f10
    asm("{disp8} mov        dword ptr [eax + 0x10], ecx");                   // 0x007629d9    894810
    asm("_jmp_addr_0x007629dc:");
    asm("pop                edi");                                           // 0x007629dc    5f
    asm("ret");                                                              // 0x007629dd    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct VillagerName* __cdecl Add__12VillagerNameFf7LHPointPwR9LH3DColor(float text_size, struct LHPoint point, const char16_t* text, const struct LH3DColor* p_color)
{
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x007629e0    a15c19d000
    asm("{disp32} mov       eax, dword ptr [eax + 0x0025005c]");             // 0x007629e5    8b805c002500
    asm("sub                esp, 0x10");                                     // 0x007629eb    83ec10
    asm("push               ebx");                                           // 0x007629ee    53
    asm("xor.s              ebx, ebx");                                      // 0x007629ef    33db
    asm("cmp.s              eax, ebx");                                      // 0x007629f1    3bc3
    asm("push               esi");                                           // 0x007629f3    56
    asm("{disp8} je         _jmp_addr_0x00762a06");                          // 0x007629f4    7410
    asm("cmp                dword ptr [eax + 0x000045e8], ebx");             // 0x007629f6    3998e8450000
    asm("{disp8} je         _jmp_addr_0x00762a06");                          // 0x007629fc    7408
    asm("pop                esi");                                           // 0x007629fe    5e
    asm("xor.s              eax, eax");                                      // 0x007629ff    33c0
    asm("pop                ebx");                                           // 0x00762a01    5b
    asm("add                esp, 0x10");                                     // 0x00762a02    83c410
    asm("ret");                                                              // 0x00762a05    c3
    asm("_jmp_addr_0x00762a06:");
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00762a06    d944241c
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]");             // 0x00762a0a    d81d40588c00
    asm("fnstsw             ax");                                            // 0x00762a10    dfe0
    asm("test               ah, 0x01");                                      // 0x00762a12    f6c401
    asm("{disp8} je         _jmp_addr_0x00762a1f");                          // 0x00762a15    7408
    asm("pop                esi");                                           // 0x00762a17    5e
    asm("xor.s              eax, eax");                                      // 0x00762a18    33c0
    asm("pop                ebx");                                           // 0x00762a1a    5b
    asm("add                esp, 0x10");                                     // 0x00762a1b    83c410
    asm("ret");                                                              // 0x00762a1e    c3
    asm("_jmp_addr_0x00762a1f:");
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00762a1f    d944241c
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00762a23    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00762a29    dfe0
    asm("test               ah, 0x41");                                      // 0x00762a2b    f6c441
    asm("{disp8} jne        _jmp_addr_0x00762a38");                          // 0x00762a2e    7508
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x3f800000");            // 0x00762a30    c744241c0000803f
    asm("_jmp_addr_0x00762a38:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00762a38    8d4c2410
    asm("push               ecx");                                           // 0x00762a3c    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00762a3d    8d542410
    asm("push               edx");                                           // 0x00762a41    52
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00762a42    8d542410
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                   // 0x00762a46    8d4c2428
    asm("xor.s              esi, esi");                                      // 0x00762a4a    33f6
    asm("call               ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z");   // 0x00762a4c    e83f690b00
    asm("cmp                eax, 0x02");                                     // 0x00762a51    83f802
    asm("{disp32} jne       _jmp_addr_0x00762db1");                          // 0x00762a54    0f8557030000
    asm("call               ?Alloc@VillagerNameBlock@@SAPAUVillagerName@@XZ");                 // 0x00762a5a    e8c1fcffff
    asm("mov.s              esi, eax");                                      // 0x00762a5f    8bf0
    asm("{disp8} mov        dword ptr [esi + 0x28], 0x00000001");            // 0x00762a61    c7462801000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x00762a68    8b4c2420
    asm("{disp32} lea       eax, dword ptr [esi + 0x00000454]");             // 0x00762a6c    8d8654040000
    asm("mov                dword ptr [eax], ecx");                          // 0x00762a72    8908
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x00762a74    8b542424
    asm("{disp8} mov        dword ptr [eax + 0x04], edx");                   // 0x00762a78    895004
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x00762a7b    8b54241c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");                   // 0x00762a7f    8b4c2428
    asm("{disp8} mov        dword ptr [esi + 0x24], edx");                   // 0x00762a83    895624
    asm("{disp8} mov        edx, dword ptr [esp + 0x30]");                   // 0x00762a86    8b542430
    asm("{disp8} mov        dword ptr [eax + 0x08], ecx");                   // 0x00762a8a    894808
    asm("cmp                byte ptr [edx + 0x02], 0x0a");                   // 0x00762a8d    807a020a
    asm("{disp8} jae        _jmp_addr_0x00762aa4");                          // 0x00762a91    7311
    asm("cmp                byte ptr [edx + 0x01], 0x0a");                   // 0x00762a93    807a010a
    asm("{disp8} jae        _jmp_addr_0x00762aa4");                          // 0x00762a97    730b
    asm("cmp                byte ptr [edx], 0x0a");                          // 0x00762a99    803a0a
    asm("{disp8} jae        _jmp_addr_0x00762aa4");                          // 0x00762a9c    7306
    asm("mov                dword ptr [edx], 0x00ffffff");                   // 0x00762a9e    c702ffffff00
    asm("_jmp_addr_0x00762aa4:");
    asm("mov                ecx, dword ptr [edx]");                          // 0x00762aa4    8b0a
    asm("push               ebp");                                           // 0x00762aa6    55
    asm("push               edi");                                           // 0x00762aa7    57
    asm("mov.s              eax, ecx");                                      // 0x00762aa8    8bc1
    asm("and                eax, 0x00ff0000");                               // 0x00762aaa    250000ff00
    asm("shl                eax, 7");                                        // 0x00762aaf    c1e007
    asm("mov.s              edi, eax");                                      // 0x00762ab2    8bf8
    asm("mov                eax, 0x7f800000");                               // 0x00762ab4    b80000807f
    asm("sub.s              eax, edi");                                      // 0x00762ab9    2bc7
    asm("shr                eax, 8");                                        // 0x00762abb    c1e808
    asm("mov.s              edi, ecx");                                      // 0x00762abe    8bf9
    asm("and                edi, 0xffff0000");                               // 0x00762ac0    81e70000ffff
    asm("add.s              eax, edi");                                      // 0x00762ac6    03c7
    asm("mov.s              edi, ecx");                                      // 0x00762ac8    8bf9
    asm("and                edi, 0x0000ff00");                               // 0x00762aca    81e700ff0000
    asm("shl                edi, 7");                                        // 0x00762ad0    c1e707
    asm("mov                ebp, 0x007f8000");                               // 0x00762ad3    bd00807f00
    asm("sub.s              ebp, edi");                                      // 0x00762ad8    2bef
    asm("shr                ebp, 8");                                        // 0x00762ada    c1ed08
    asm("mov.s              edi, ecx");                                      // 0x00762add    8bf9
    asm("and                edi, 0xffffff00");                               // 0x00762adf    81e700ffffff
    asm("add.s              ebp, edi");                                      // 0x00762ae5    03ef
    asm("and                ebp, 0x0000ff00");                               // 0x00762ae7    81e500ff0000
    asm("and                eax, 0xffff0000");                               // 0x00762aed    250000ffff
    asm("or.s               eax, ebp");                                      // 0x00762af2    0bc5
    asm("mov.s              edi, ecx");                                      // 0x00762af4    8bf9
    asm("and                edi, 0x000000ff");                               // 0x00762af6    81e7ff000000
    asm("shl                edi, 7");                                        // 0x00762afc    c1e707
    asm("mov                ebp, 0x00007f80");                               // 0x00762aff    bd807f0000
    asm("sub.s              ebp, edi");                                      // 0x00762b04    2bef
    asm("shr                ebp, 8");                                        // 0x00762b06    c1ed08
    asm("add.s              ebp, ecx");                                      // 0x00762b09    03e9
    asm("and                ebp, 0x000000ff");                               // 0x00762b0b    81e5ff000000
    asm("or.s               eax, ebp");                                      // 0x00762b11    0bc5
    asm("{disp8} mov        ebp, dword ptr [esp + 0x34]");                   // 0x00762b13    8b6c2434
    asm("or                 eax, 0xff000000");                               // 0x00762b17    0d000000ff
    asm("mov                dword ptr [edx], eax");                          // 0x00762b1c    8902
    asm("push               0x000000ff");                                    // 0x00762b1e    68ff000000
    asm("{disp32} mov       dword ptr [esi + 0x00000450], eax");             // 0x00762b23    898650040000
    asm("{disp8} lea        eax, dword ptr [esi + 0x30]");                   // 0x00762b29    8d4630
    asm("push               ebp");                                           // 0x00762b2c    55
    asm("{disp32} lea       edi, dword ptr [esi + 0x00000430]");             // 0x00762b2d    8dbe30040000
    asm("push               eax");                                           // 0x00762b33    50
    asm("mov                dword ptr [edi], eax");                          // 0x00762b34    8907
    asm("call               _wcsncpy");                                      // 0x00762b36    e8ea380600
    asm("add                esp, 0x0c");                                     // 0x00762b3b    83c40c
    asm("{disp32} mov       word ptr [esi + 0x0000022e], bx");               // 0x00762b3e    66899e2e020000
    asm("xor.s              ecx, ecx");                                      // 0x00762b45    33c9
    asm("{disp8} lea        eax, dword ptr [esi + 0x32]");                   // 0x00762b47    8d4632
    asm("_jmp_addr_0x00762b4a:");
    asm("{disp8} mov        dx, word ptr [ebp + 0x00]");                     // 0x00762b4a    668b5500
    asm("cmp.s              dx, bx");                                        // 0x00762b4e    663bd3
    asm("{disp8} je         _jmp_addr_0x00762b82");                          // 0x00762b51    742f
    asm("cmp                dx, 0x0a");                                      // 0x00762b53    6683fa0a
    asm("{disp8} jne        _jmp_addr_0x00762b73");                          // 0x00762b57    751a
    asm("{disp8} mov        word ptr [eax + -0x02], bx");                    // 0x00762b59    668958fe
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                   // 0x00762b5d    8b5628
    asm("{disp32} mov       dword ptr [esi + edx * 0x4 + 0x00000430], eax"); // 0x00762b60    89849630040000
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                   // 0x00762b67    8b5628
    asm("inc                edx");                                           // 0x00762b6a    42
    asm("cmp                edx, 0x08");                                     // 0x00762b6b    83fa08
    asm("{disp8} mov        dword ptr [esi + 0x28], edx");                   // 0x00762b6e    895628
    asm("{disp8} je         _jmp_addr_0x00762b82");                          // 0x00762b71    740f
    asm("_jmp_addr_0x00762b73:");
    asm("inc                ecx");                                           // 0x00762b73    41
    asm("add                ebp, 0x02");                                     // 0x00762b74    83c502
    asm("add                eax, 0x02");                                     // 0x00762b77    83c002
    asm("cmp                ecx, 0x000000ff");                               // 0x00762b7a    81f9ff000000
    asm("{disp8} jl         _jmp_addr_0x00762b4a");                          // 0x00762b80    7cc8
    asm("_jmp_addr_0x00762b82:");
    asm("{disp8} fild       dword ptr [esp + 0x10]");                        // 0x00762b82    db442410
    asm("xor.s              ebp, ebp");                                      // 0x00762b86    33ed
    asm("{disp8} mov        dword ptr [esp + 0x38], 0x00000000");            // 0x00762b88    c744243800000000
    asm("{disp8} fstp       dword ptr [esi + 0x14]");                        // 0x00762b90    d95e14
    asm("{disp8} fild       dword ptr [esp + 0x14]");                        // 0x00762b93    db442414
    asm("{disp8} fstp       dword ptr [esi + 0x18]");                        // 0x00762b97    d95e18
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00762b9a    8b442418
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00762b9e    d9442424
    asm("{disp8} mov        dword ptr [esi + 0x1c], eax");                   // 0x00762ba2    89461c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x26e8]");              // 0x00762ba5    d80de8b68a00
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00762bab    8b4628
    asm("test               eax, eax");                                      // 0x00762bae    85c0
    asm("{disp8} fstp       dword ptr [esi + 0x20]");                        // 0x00762bb0    d95e20
    asm("{disp32} mov       ebx, dword ptr [data_bytes + 0x506d08]");        // 0x00762bb3    8b1d08cdec00
    asm("{disp8} jle        _jmp_addr_0x00762c0d");                          // 0x00762bb9    7e52
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00762bbb    d9442424
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x235c]");              // 0x00762bbf    d80d5cb38a00
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00762bc5    d95c241c
    asm("_jmp_addr_0x00762bc9:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00762bc9    8b17
    asm("{disp8} mov        ecx, dword ptr [esi + 0x20]");                   // 0x00762bcb    8b4e20
    asm("push               edx");                                           // 0x00762bce    52
    asm("{disp8} mov        dword ptr [esp + 0x38], ecx");                   // 0x00762bcf    894c2438
    asm("call               _wcslen");                                       // 0x00762bd3    e88a380600
    asm("{disp8} mov        edx, dword ptr [esp + 0x38]");                   // 0x00762bd8    8b542438
    asm("mov                ecx, dword ptr [edi]");                          // 0x00762bdc    8b0f
    asm("add                esp, 0x04");                                     // 0x00762bde    83c404
    asm("push               edx");                                           // 0x00762be1    52
    asm("push               eax");                                           // 0x00762be2    50
    asm("push               ecx");                                           // 0x00762be3    51
    asm("mov.s              ecx, ebx");                                      // 0x00762be4    8bcb
    asm("call               @GetStringWidth__13GatheringTextFPwif@20");      // 0x00762be6    e845e50c00
    asm("{disp8} fadd       dword ptr [esp + 0x1c]");                        // 0x00762beb    d844241c
    asm("{disp8} fcom       dword ptr [esp + 0x38]");                        // 0x00762bef    d8542438
    asm("fnstsw             ax");                                            // 0x00762bf3    dfe0
    asm("test               ah, 0x41");                                      // 0x00762bf5    f6c441
    asm("{disp8} jne        _jmp_addr_0x00762c00");                          // 0x00762bf8    7506
    asm("{disp8} fstp       dword ptr [esp + 0x38]");                        // 0x00762bfa    d95c2438
    asm("{disp8} jmp        _jmp_addr_0x00762c02");                          // 0x00762bfe    eb02
    asm("_jmp_addr_0x00762c00:");
    asm("fstp               st(0)");                                         // 0x00762c00    ddd8
    asm("_jmp_addr_0x00762c02:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00762c02    8b4628
    asm("inc                ebp");                                           // 0x00762c05    45
    asm("add                edi, 0x04");                                     // 0x00762c06    83c704
    asm("cmp.s              ebp, eax");                                      // 0x00762c09    3be8
    asm("{disp8} jl         _jmp_addr_0x00762bc9");                          // 0x00762c0b    7cbc
    asm("_jmp_addr_0x00762c0d:");
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]");        // 0x00762c0d    8b0d5850e800
    asm("mov.s              eax, ecx");                                      // 0x00762c13    8bc1
    asm("and                eax, 0x0000ffff");                               // 0x00762c15    25ffff0000
    asm("{disp8} mov        dword ptr [esp + 0x34], eax");                   // 0x00762c1a    89442434
    asm("{disp8} fild       dword ptr [esp + 0x34]");                        // 0x00762c1e    db442434
    asm("pop                edi");                                           // 0x00762c22    5f
    asm("pop                ebp");                                           // 0x00762c23    5d
    asm("{disp8} fcomp      dword ptr [esp + 0x30]");                        // 0x00762c24    d85c2430
    asm("fnstsw             ax");                                            // 0x00762c28    dfe0
    asm("test               ah, 0x01");                                      // 0x00762c2a    f6c401
    asm("{disp8} je         _jmp_addr_0x00762c44");                          // 0x00762c2d    7415
    asm("shr                cx, 1");                                         // 0x00762c2f    66d1e9
    asm("and                ecx, 0x0000ffff");                               // 0x00762c32    81e1ffff0000
    asm("{disp8} mov        dword ptr [esp + 0x30], ecx");                   // 0x00762c38    894c2430
    asm("{disp8} fild       dword ptr [esp + 0x30]");                        // 0x00762c3c    db442430
    asm("{disp8} fstp       dword ptr [esp + 0x30]");                        // 0x00762c40    d95c2430
    asm("_jmp_addr_0x00762c44:");
    asm("{disp8} fild       dword ptr [esp + 0x08]");                        // 0x00762c44    db442408
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x00762c48    d9442430
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00762c4c    d80db4a38a00
    asm("fsubp              st(1), st");                                     // 0x00762c52    dee9
    asm("{disp8} fst        dword ptr [esi + 0x04]");                        // 0x00762c54    d95604
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00762c57    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00762c5d    dfe0
    asm("test               ah, 0x01");                                      // 0x00762c5f    f6c401
    asm("{disp8} je         _jmp_addr_0x00762c6b");                          // 0x00762c62    7407
    asm("{disp8} mov        dword ptr [esi + 0x04], 0x00000000");            // 0x00762c64    c7460400000000
    asm("_jmp_addr_0x00762c6b:");
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x00762c6b    d9442430
    asm("{disp8} fadd       dword ptr [esi + 0x04]");                        // 0x00762c6f    d84604
    asm("{disp8} fst        dword ptr [esi + 0x0c]");                        // 0x00762c72    d9560c
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]");        // 0x00762c75    8b0d5850e800
    asm("and                ecx, 0x0000ffff");                               // 0x00762c7b    81e1ffff0000
    asm("{disp8} mov        dword ptr [esp + 0x2c], ecx");                   // 0x00762c81    894c242c
    asm("{disp8} fild       dword ptr [esp + 0x2c]");                        // 0x00762c85    db44242c
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x00762c89    d95c242c
    asm("{disp8} fcomp      dword ptr [esp + 0x2c]");                        // 0x00762c8d    d85c242c
    asm("fnstsw             ax");                                            // 0x00762c91    dfe0
    asm("test               ah, 0x41");                                      // 0x00762c93    f6c441
    asm("{disp8} jne        _jmp_addr_0x00762caa");                          // 0x00762c96    7512
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x00762c98    d944242c
    asm("{disp8} mov        edx, dword ptr [esp + 0x2c]");                   // 0x00762c9c    8b54242c
    asm("{disp8} fsub       dword ptr [esp + 0x30]");                        // 0x00762ca0    d8642430
    asm("{disp8} mov        dword ptr [esi + 0x0c], edx");                   // 0x00762ca4    89560c
    asm("{disp8} fstp       dword ptr [esi + 0x04]");                        // 0x00762ca7    d95e04
    asm("_jmp_addr_0x00762caa:");
    asm("{disp8} fld        dword ptr [esi + 0x18]");                        // 0x00762caa    d94618
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dca4]");             // 0x00762cad    d825a46c8c00
    asm("{disp8} fst        dword ptr [esi + 0x10]");                        // 0x00762cb3    d95610
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00762cb6    d944241c
    asm("fadd.s             st(0), st(0)");                                  // 0x00762cba    dcc0
    asm("{disp8} fstp       dword ptr [esi + 0x2c]");                        // 0x00762cbc    d95e2c
    asm("{disp8} fild       dword ptr [esi + 0x28]");                        // 0x00762cbf    db4628
    asm("{disp8} fmul       dword ptr [esi + 0x20]");                        // 0x00762cc2    d84e20
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00762cc5    d944241c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2418]");              // 0x00762cc9    d80d18b48a00
    asm("faddp              st(1), st");                                     // 0x00762ccf    dec1
    asm("fsubr              st, st(1)");                                     // 0x00762cd1    d8e9
    asm("{disp8} fstp       dword ptr [esi + 0x08]");                        // 0x00762cd3    d95e08
    asm("{disp32} mov       ecx, dword ptr [_PTR_00db9e28]");                // 0x00762cd6    8b0d289edb00
    asm("test               ecx, ecx");                                      // 0x00762cdc    85c9
    asm("fstp               st(0)");                                         // 0x00762cde    ddd8
    asm("{disp8} je         _jmp_addr_0x00762d5e");                          // 0x00762ce0    747c
    asm("_jmp_addr_0x00762ce2:");
    asm("{disp8} fld        dword ptr [ecx + 0x04]");                        // 0x00762ce2    d94104
    asm("{disp8} fcomp      dword ptr [esi + 0x0c]");                        // 0x00762ce5    d85e0c
    asm("fnstsw             ax");                                            // 0x00762ce8    dfe0
    asm("test               ah, 0x01");                                      // 0x00762cea    f6c401
    asm("{disp8} je         _jmp_addr_0x00762d5e");                          // 0x00762ced    746f
    asm("_jmp_addr_0x00762cef:");
    asm("{disp8} fld        dword ptr [ecx + 0x0c]");                        // 0x00762cef    d9410c
    asm("{disp8} fcomp      dword ptr [esi + 0x04]");                        // 0x00762cf2    d85e04
    asm("fnstsw             ax");                                            // 0x00762cf5    dfe0
    asm("test               ah, 0x41");                                      // 0x00762cf7    f6c441
    asm("{disp8} jne        _jmp_addr_0x00762d54");                          // 0x00762cfa    7558
    asm("{disp8} fld        dword ptr [ecx + 0x08]");                        // 0x00762cfc    d94108
    asm("{disp8} fcomp      dword ptr [esi + 0x10]");                        // 0x00762cff    d85e10
    asm("fnstsw             ax");                                            // 0x00762d02    dfe0
    asm("test               ah, 0x41");                                      // 0x00762d04    f6c441
    asm("{disp8} je         _jmp_addr_0x00762d54");                          // 0x00762d07    744b
    asm("{disp8} fld        dword ptr [ecx + 0x10]");                        // 0x00762d09    d94110
    asm("{disp8} fcomp      dword ptr [esi + 0x08]");                        // 0x00762d0c    d85e08
    asm("fnstsw             ax");                                            // 0x00762d0f    dfe0
    asm("test               ah, 0x01");                                      // 0x00762d11    f6c401
    asm("{disp8} jne        _jmp_addr_0x00762d54");                          // 0x00762d14    753e
    asm("{disp8} fld        dword ptr [esi + 0x08]");                        // 0x00762d16    d94608
    asm("{disp8} fsub       dword ptr [esi + 0x10]");                        // 0x00762d19    d86610
    asm("{disp8} fstp       dword ptr [esi + 0x08]");                        // 0x00762d1c    d95e08
    asm("{disp8} fld        dword ptr [ecx + 0x08]");                        // 0x00762d1f    d94108
    asm("{disp32} fsub      dword ptr [_rdata_float1p0]");                   // 0x00762d22    d82590a38a00
    asm("{disp8} fst        dword ptr [esi + 0x10]");                        // 0x00762d28    d95610
    asm("{disp8} fadd       dword ptr [esi + 0x08]");                        // 0x00762d2b    d84608
    asm("{disp8} fstp       dword ptr [esi + 0x08]");                        // 0x00762d2e    d95e08
    asm("{disp8} fld        dword ptr [ecx + 0x08]");                        // 0x00762d31    d94108
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00762d34    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00762d3a    dfe0
    asm("test               ah, 0x01");                                      // 0x00762d3c    f6c401
    asm("{disp8} jne        _jmp_addr_0x00762d5e");                          // 0x00762d3f    751d
    asm("{disp32} mov       ecx, dword ptr [_PTR_00db9e28]");                // 0x00762d41    8b0d289edb00
    asm("{disp8} fld        dword ptr [ecx + 0x04]");                        // 0x00762d47    d94104
    asm("{disp8} fcomp      dword ptr [esi + 0x0c]");                        // 0x00762d4a    d85e0c
    asm("fnstsw             ax");                                            // 0x00762d4d    dfe0
    asm("test               ah, 0x01");                                      // 0x00762d4f    f6c401
    asm("{disp8} jne        _jmp_addr_0x00762cef");                          // 0x00762d52    759b
    asm("_jmp_addr_0x00762d54:");
    asm("{disp32} mov       ecx, dword ptr [ecx + 0x00000460]");             // 0x00762d54    8b8960040000
    asm("test               ecx, ecx");                                      // 0x00762d5a    85c9
    asm("{disp8} jne        _jmp_addr_0x00762ce2");                          // 0x00762d5c    7584
    asm("_jmp_addr_0x00762d5e:");
    asm("{disp8} fld        dword ptr [esi + 0x08]");                        // 0x00762d5e    d94608
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00762d61    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00762d67    dfe0
    asm("test               ah, 0x01");                                      // 0x00762d69    f6c401
    asm("{disp8} je         _jmp_addr_0x00762d7f");                          // 0x00762d6c    7411
    asm("push               esi");                                           // 0x00762d6e    56
    asm("call               ?Delete@VillagerNameBlock@@SAXPAUVillagerName@@@Z");  // 0x00762d6f    e80cfaffff
    asm("add                esp, 0x04");                                     // 0x00762d74    83c404
    asm("pop                esi");                                           // 0x00762d77    5e
    asm("xor.s              eax, eax");                                      // 0x00762d78    33c0
    asm("pop                ebx");                                           // 0x00762d7a    5b
    asm("add                esp, 0x10");                                     // 0x00762d7b    83c410
    asm("ret");                                                              // 0x00762d7e    c3
    asm("_jmp_addr_0x00762d7f:");
    asm("{disp32} mov       ecx, dword ptr [_PTR_00db9e28]");                // 0x00762d7f    8b0d289edb00
    asm("test               ecx, ecx");                                      // 0x00762d85    85c9
    asm("mov                edx, OFFSET _PTR_00db9e28");                     // 0x00762d87    ba289edb00
    asm("{disp8} je         _jmp_addr_0x00762da7");                          // 0x00762d8c    7419
    asm("_jmp_addr_0x00762d8e:");
    asm("{disp8} fld        dword ptr [ecx + 0x04]");                        // 0x00762d8e    d94104
    asm("{disp8} fcomp      dword ptr [esi + 0x04]");                        // 0x00762d91    d85e04
    asm("fnstsw             ax");                                            // 0x00762d94    dfe0
    asm("test               ah, 0x01");                                      // 0x00762d96    f6c401
    asm("{disp8} je         _jmp_addr_0x00762da7");                          // 0x00762d99    740c
    asm("{disp32} lea       edx, dword ptr [ecx + 0x00000460]");             // 0x00762d9b    8d9160040000
    asm("mov                ecx, dword ptr [edx]");                          // 0x00762da1    8b0a
    asm("test               ecx, ecx");                                      // 0x00762da3    85c9
    asm("{disp8} jne        _jmp_addr_0x00762d8e");                          // 0x00762da5    75e7
    asm("_jmp_addr_0x00762da7:");
    asm("mov                eax, dword ptr [edx]");                          // 0x00762da7    8b02
    asm("{disp32} mov       dword ptr [esi + 0x00000460], eax");             // 0x00762da9    898660040000
    asm("mov                dword ptr [edx], esi");                          // 0x00762daf    8932
    asm("_jmp_addr_0x00762db1:");
    asm("mov.s              eax, esi");                                      // 0x00762db1    8bc6
    asm("pop                esi");                                           // 0x00762db3    5e
    asm("pop                ebx");                                           // 0x00762db4    5b
    asm("add                esp, 0x10");                                     // 0x00762db5    83c410
    asm("ret");                                                              // 0x00762db8    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall Draw__12VillagerNameFv(struct VillagerName* this)
{
    asm("sub                esp, 0x10");                                     // 0x00762dc0    83ec10
    asm("push               esi");                                           // 0x00762dc3    56
    asm("mov.s              esi, ecx");                                      // 0x00762dc4    8bf1
    asm("{disp8} fld        dword ptr [esi + 0x24]");                        // 0x00762dc6    d94624
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00762dc9    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00762dcf    dfe0
    asm("test               ah, 0x41");                                      // 0x00762dd1    f6c441
    asm("{disp8} jne        _jmp_addr_0x00762df3");                          // 0x00762dd4    751d
    asm("{disp8} fld        dword ptr [esi + 0x24]");                        // 0x00762dd6    d94624
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00762dd9    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00762ddf    dfe0
    asm("test               ah, 0x01");                                      // 0x00762de1    f6c401
    asm("{disp8} je         _jmp_addr_0x00762deb");                          // 0x00762de4    7405
    asm("{disp8} fld        dword ptr [esi + 0x24]");                        // 0x00762de6    d94624
    asm("{disp8} jmp        _jmp_addr_0x00762df9");                          // 0x00762de9    eb0e
    asm("_jmp_addr_0x00762deb:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x00762deb    d90590a38a00
    asm("{disp8} jmp        _jmp_addr_0x00762df9");                          // 0x00762df1    eb06
    asm("_jmp_addr_0x00762df3:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00762df3    d90598a38a00
    asm("_jmp_addr_0x00762df9:");
    asm("push               ebx");                                           // 0x00762df9    53
    asm("{disp8} fst        dword ptr [esi + 0x24]");                        // 0x00762dfa    d95624
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x26338]");             // 0x00762dfd    d80d38f38c00
    asm("push               ebp");                                           // 0x00762e03    55
    asm("push               edi");                                           // 0x00762e04    57
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762e05    e8f6e50300
    asm("mov.s              edi, eax");                                      // 0x00762e0a    8bf8
    asm("{disp8} mov        eax, dword ptr [esi + 0x1c]");                   // 0x00762e0c    8b461c
    asm("push               eax");                                           // 0x00762e0f    50
    asm("call               _jmp_addr_0x005766e0");                          // 0x00762e10    e8cb38e1ff
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00762e15    d95c241c
    asm("{disp8} mov        ecx, dword ptr [esi + 0x10]");                   // 0x00762e19    8b4e10
    asm("{disp8} mov        edx, dword ptr [esi + 0x08]");                   // 0x00762e1c    8b5608
    asm("{disp8} mov        ebx, dword ptr [esp + 0x1c]");                   // 0x00762e1f    8b5c241c
    asm("add                esp, 0x04");                                     // 0x00762e23    83c404
    asm("push               edi");                                           // 0x00762e26    57
    asm("push               edi");                                           // 0x00762e27    57
    asm("push               0x0");                                           // 0x00762e28    6a00
    asm("push               0xff000000");                                    // 0x00762e2a    68000000ff
    asm("{disp8} mov        dword ptr [esp + 0x20], ecx");                   // 0x00762e2f    894c2420
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x00762e33    d9442420
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                   // 0x00762e37    89542424
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x00762e3b    d8642424
    asm("push               0x0");                                           // 0x00762e3f    6a00
    asm("push               0x0");                                           // 0x00762e41    6a00
    asm("push               ecx");                                           // 0x00762e43    51
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x23d4]");              // 0x00762e44    d80dd4b38a00
    asm("mov.s              eax, ecx");                                      // 0x00762e4a    8bc1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x0c]");                   // 0x00762e4c    8b4e0c
    asm("fstp               dword ptr [esp]");                               // 0x00762e4f    d91c24
    asm("push               ebx");                                           // 0x00762e52    53
    asm("push               eax");                                           // 0x00762e53    50
    asm("{disp8} mov        eax, dword ptr [esi + 0x04]");                   // 0x00762e54    8b4604
    asm("push               ecx");                                           // 0x00762e57    51
    asm("push               edx");                                           // 0x00762e58    52
    asm("push               eax");                                           // 0x00762e59    50
    asm("call               _jmp_addr_0x008334c0");                          // 0x00762e5a    e861060d00
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x5132dc]");        // 0x00762e5f    a1dc92ed00
    asm("add                esp, 0x30");                                     // 0x00762e64    83c430
    asm("test               eax, eax");                                      // 0x00762e67    85c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x2078], edi");          // 0x00762e69    893d78809c00
    asm("{disp32} je        _jmp_addr_0x00762f71");                          // 0x00762e6f    0f84fc000000
    asm("{disp8} fld        dword ptr [esi + 0x18]");                        // 0x00762e75    d94618
    asm("push               ebx");                                           // 0x00762e78    53
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x26e8]");              // 0x00762e79    d825e8b68a00
    asm("xor.s              ecx, ecx");                                      // 0x00762e7f    33c9
    asm("{disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]");          // 0x00762e81    668b0d5a50e800
    asm("push               0x1");                                           // 0x00762e88    6a01
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x00762e8a    8d542418
    asm("{disp8} mov        byte ptr [esp + 0x18], 0x00");                   // 0x00762e8e    c644241800
    asm("{disp8} mov        byte ptr [esp + 0x19], 0x00");                   // 0x00762e93    c644241900
    asm("{disp8} mov        byte ptr [esp + 0x1a], 0x00");                   // 0x00762e98    c644241a00
    asm("{disp8} mov        byte ptr [esp + 0x1b], -0x01");                  // 0x00762e9d    c644241bff
    asm("push               ecx");                                           // 0x00762ea2    51
    asm("push               0x0");                                           // 0x00762ea3    6a00
    asm("push               0x0");                                           // 0x00762ea5    6a00
    asm("push               edx");                                           // 0x00762ea7    52
    asm("push               eax");                                           // 0x00762ea8    50
    asm("push               0x3d4ccccd");                                    // 0x00762ea9    68cdcc4c3d
    asm("push               0x3f180000");                                    // 0x00762eae    680000183f
    asm("push               0x3d4ccccd");                                    // 0x00762eb3    68cdcc4c3d
    asm("push               0x3f080000");                                    // 0x00762eb8    680000083f
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762ebd    e83ee50300
    asm("{disp8} fld        dword ptr [esi + 0x14]");                        // 0x00762ec2    d94614
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x19c50]");             // 0x00762ec5    d805502c8c00
    asm("push               eax");                                           // 0x00762ecb    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762ecc    e82fe50300
    asm("{disp8} fld        dword ptr [esi + 0x10]");                        // 0x00762ed1    d94610
    asm("push               eax");                                           // 0x00762ed4    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762ed5    e826e50300
    asm("{disp8} fld        dword ptr [esi + 0x14]");                        // 0x00762eda    d94614
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x19c50]");             // 0x00762edd    d825502c8c00
    asm("push               eax");                                           // 0x00762ee3    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762ee4    e817e50300
    asm("push               eax");                                           // 0x00762ee9    50
    asm("call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z");                 // 0x00762eea    e891facaff
    asm("{disp8} fld        dword ptr [esi + 0x18]");                        // 0x00762eef    d94618
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x5132dc]");        // 0x00762ef2    8b15dc92ed00
    asm("push               ebx");                                           // 0x00762ef8    53
    asm("xor.s              eax, eax");                                      // 0x00762ef9    33c0
    asm("{disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]");          // 0x00762efb    66a15a50e800
    asm("push               0x1");                                           // 0x00762f01    6a01
    asm("{disp8} lea        ecx, dword ptr [esp + 0x54]");                   // 0x00762f03    8d4c2454
    asm("{disp8} mov        byte ptr [esp + 0x54], 0x00");                   // 0x00762f07    c644245400
    asm("{disp8} mov        byte ptr [esp + 0x55], 0x00");                   // 0x00762f0c    c644245500
    asm("{disp8} mov        byte ptr [esp + 0x56], 0x00");                   // 0x00762f11    c644245600
    asm("{disp8} mov        byte ptr [esp + 0x57], -0x01");                  // 0x00762f16    c6442457ff
    asm("push               eax");                                           // 0x00762f1b    50
    asm("push               0x0");                                           // 0x00762f1c    6a00
    asm("push               0x0");                                           // 0x00762f1e    6a00
    asm("push               ecx");                                           // 0x00762f20    51
    asm("push               edx");                                           // 0x00762f21    52
    asm("push               0x3e000000");                                    // 0x00762f22    680000003e
    asm("push               0x3f200000");                                    // 0x00762f27    680000203f
    asm("push               0x3d4ccccd");                                    // 0x00762f2c    68cdcc4c3d
    asm("push               0x3f000000");                                    // 0x00762f31    680000003f
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762f36    e8c5e40300
    asm("{disp8} fld        dword ptr [esi + 0x14]");                        // 0x00762f3b    d94614
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x235c]");              // 0x00762f3e    d8055cb38a00
    asm("push               eax");                                           // 0x00762f44    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762f45    e8b6e40300
    asm("{disp8} fld        dword ptr [esi + 0x18]");                        // 0x00762f4a    d94618
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x26e8]");              // 0x00762f4d    d825e8b68a00
    asm("push               eax");                                           // 0x00762f53    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762f54    e8a7e40300
    asm("{disp8} fld        dword ptr [esi + 0x14]");                        // 0x00762f59    d94614
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x235c]");              // 0x00762f5c    d8255cb38a00
    asm("push               eax");                                           // 0x00762f62    50
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762f63    e898e40300
    asm("push               eax");                                           // 0x00762f68    50
    asm("call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z");                 // 0x00762f69    e812facaff
    asm("add                esp, 0x78");                                     // 0x00762f6e    83c478
    asm("_jmp_addr_0x00762f71:");
    asm("{disp8} fld        dword ptr [esi + 0x24]");                        // 0x00762f71    d94624
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x506d08]");        // 0x00762f74    a108cdec00
    asm("{disp32} fmul      dword ptr [__real@437f0000]");                   // 0x00762f79    d80d70b28a00
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x00762f7f    8944241c
    asm("call               _jmp_addr_0x007a1400");                          // 0x00762f83    e878e40300
    asm("{disp32} mov       byte ptr [esi + 0x00000453], al");               // 0x00762f88    888653040000
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00762f8e    8b4628
    asm("xor.s              ebp, ebp");                                      // 0x00762f91    33ed
    asm("test               eax, eax");                                      // 0x00762f93    85c0
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                   // 0x00762f95    896c2414
    asm("{disp8} jle        _jmp_addr_0x00763017");                          // 0x00762f99    7e7c
    asm("{disp32} lea       edi, dword ptr [esi + 0x00000430]");             // 0x00762f9b    8dbe30040000
    asm("_jmp_addr_0x00762fa1:");
    asm("{disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]");          // 0x00762fa1    668b0d5a50e800
    asm("{disp8} mov        word ptr [esp + 0x18], cx");                     // 0x00762fa8    66894c2418
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                   // 0x00762fad    8b542418
    asm("and                edx, 0x0000ffff");                               // 0x00762fb1    81e2ffff0000
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00762fb7    89542410
    asm("{disp8} fild       dword ptr [esp + 0x10]");                        // 0x00762fbb    db442410
    asm("{disp32} lea       eax, dword ptr [esi + 0x00000450]");             // 0x00762fbf    8d8650040000
    asm("push               ecx");                                           // 0x00762fc5    51
    asm("fstp               dword ptr [esp]");                               // 0x00762fc6    d91c24
    asm("push               0x0");                                           // 0x00762fc9    6a00
    asm("{disp8} fild       dword ptr [esp + 0x1c]");                        // 0x00762fcb    db44241c
    asm("push               0x0");                                           // 0x00762fcf    6a00
    asm("push               0x1");                                           // 0x00762fd1    6a01
    asm("push               eax");                                           // 0x00762fd3    50
    asm("{disp8} fmul       dword ptr [esi + 0x20]");                        // 0x00762fd4    d84e20
    asm("{disp8} mov        eax, dword ptr [esi + 0x20]");                   // 0x00762fd7    8b4620
    asm("push               eax");                                           // 0x00762fda    50
    asm("push               ebx");                                           // 0x00762fdb    53
    asm("{disp8} fadd       dword ptr [esi + 0x2c]");                        // 0x00762fdc    d8462c
    asm("push               ecx");                                           // 0x00762fdf    51
    asm("{disp8} fadd       dword ptr [esi + 0x08]");                        // 0x00762fe0    d84608
    asm("fstp               dword ptr [esp]");                               // 0x00762fe3    d91c24
    asm("push               ecx");                                           // 0x00762fe6    51
    asm("{disp8} fld        dword ptr [esi + 0x04]");                        // 0x00762fe7    d94604
    asm("mov                ecx, dword ptr [edi]");                          // 0x00762fea    8b0f
    asm("{disp8} fadd       dword ptr [esi + 0x2c]");                        // 0x00762fec    d8462c
    asm("fstp               dword ptr [esp]");                               // 0x00762fef    d91c24
    asm("push               ecx");                                           // 0x00762ff2    51
    asm("call               _wcslen");                                       // 0x00762ff3    e86a340600
    asm("mov                edx, dword ptr [edi]");                          // 0x00762ff8    8b17
    asm("{disp8} mov        ecx, dword ptr [esp + 0x44]");                   // 0x00762ffa    8b4c2444
    asm("add                esp, 0x04");                                     // 0x00762ffe    83c404
    asm("push               eax");                                           // 0x00763001    50
    asm("push               edx");                                           // 0x00763002    52
    asm("call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52");                          // 0x00763003    e858fc0c00
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00763008    8b4628
    asm("inc                ebp");                                           // 0x0076300b    45
    asm("add                edi, 0x04");                                     // 0x0076300c    83c704
    asm("cmp.s              ebp, eax");                                      // 0x0076300f    3be8
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                   // 0x00763011    896c2414
    asm("{disp8} jl         _jmp_addr_0x00762fa1");                          // 0x00763015    7c8a
    asm("_jmp_addr_0x00763017:");
    asm("{disp32} mov       eax, dword ptr [_PTR_00db9e28]");                // 0x00763017    a1289edb00
    asm("cmp.s              esi, eax");                                      // 0x0076301c    3bf0
    asm("pop                edi");                                           // 0x0076301e    5f
    asm("pop                ebp");                                           // 0x0076301f    5d
    asm("pop                ebx");                                           // 0x00763020    5b
    asm("{disp8} jne        _jmp_addr_0x0076303c");                          // 0x00763021    7519
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000460]");             // 0x00763023    8b8660040000
    asm("push               esi");                                           // 0x00763029    56
    asm("{disp32} mov       dword ptr [_PTR_00db9e28], eax");                // 0x0076302a    a3289edb00
    asm("call               ?Delete@VillagerNameBlock@@SAXPAUVillagerName@@@Z");  // 0x0076302f    e84cf7ffff
    asm("add                esp, 0x04");                                     // 0x00763034    83c404
    asm("pop                esi");                                           // 0x00763037    5e
    asm("add                esp, 0x10");                                     // 0x00763038    83c410
    asm("ret");                                                              // 0x0076303b    c3
    asm("_jmp_addr_0x0076303c:");
    asm("test               eax, eax");                                      // 0x0076303c    85c0
    asm("{disp8} je         _jmp_addr_0x0076306e");                          // 0x0076303e    742e
    asm("_jmp_addr_0x00763040:");
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000460]");             // 0x00763040    8b8860040000
    asm("test               ecx, ecx");                                      // 0x00763046    85c9
    asm("{disp8} je         _jmp_addr_0x0076306e");                          // 0x00763048    7424
    asm("cmp.s              ecx, esi");                                      // 0x0076304a    3bce
    asm("{disp8} je         _jmp_addr_0x00763062");                          // 0x0076304c    7414
    asm("mov.s              eax, ecx");                                      // 0x0076304e    8bc1
    asm("test               eax, eax");                                      // 0x00763050    85c0
    asm("{disp8} jne        _jmp_addr_0x00763040");                          // 0x00763052    75ec
    asm("push               esi");                                           // 0x00763054    56
    asm("call               ?Delete@VillagerNameBlock@@SAXPAUVillagerName@@@Z");  // 0x00763055    e826f7ffff
    asm("add                esp, 0x04");                                     // 0x0076305a    83c404
    asm("pop                esi");                                           // 0x0076305d    5e
    asm("add                esp, 0x10");                                     // 0x0076305e    83c410
    asm("ret");                                                              // 0x00763061    c3
    asm("_jmp_addr_0x00763062:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000460]");             // 0x00763062    8b8e60040000
    asm("{disp32} mov       dword ptr [eax + 0x00000460], ecx");             // 0x00763068    898860040000
    asm("_jmp_addr_0x0076306e:");
    asm("push               esi");                                           // 0x0076306e    56
    asm("call               ?Delete@VillagerNameBlock@@SAXPAUVillagerName@@@Z");  // 0x0076306f    e80cf7ffff
    asm("add                esp, 0x04");                                     // 0x00763074    83c404
    asm("pop                esi");                                           // 0x00763077    5e
    asm("add                esp, 0x10");                                     // 0x00763078    83c410
    asm("ret");                                                              // 0x0076307b    c3
    __builtin_unreachable();
}
