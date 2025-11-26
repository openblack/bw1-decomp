#include "Villager.h"
#include "VillagerStateTableInfo.h"
#include <float.h>

const float villager_states_float_max_0x0099aa0c = FLT_MAX;
const float villager_states_float10p0_0x0099aa10 = 10.0f;
const float villager_states_float_pi_0x0099aa14 = 3.1415927f;
const float villager_states_num_days_in_year_0x0099aa18 = 365.25f;
const float villager_states_seconds_in_day_0x0099aa1c = 86400.0f;

__attribute__((aligned(8))) struct RTTITypeDescriptor __RTTITypeDescriptor__23GVillagerStateTableInfo = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVGVillagerStateTableInfo@@",
};
__attribute__((aligned(4))) char s_VillagerStates_cpp[] = "C:\\dev\\MP\\Black\\VillagerStates.cpp";

uint32_t villager_states_uint_0x00db9e58;
float villager_states_seconds_in_year_0x00db9e5c;
uint8_t villager_states_byte_0x00db9e60;
uint32_t villager_states_uint_0x00db9e64;
struct GVillagerStateTableInfo GVillagerStateTableInfos[VILLAGER_STATE_LAST_STATE];
float villager_states_float_0x00dcb154;
uint8_t villager_states_byte_0x00db9e58;
float villager_states_half_pi_0x00dcb15c;

void __cdecl globl_ct_0x00769470(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00769470    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00769476    b001
    asm("test               al, cl");                                        // 0x00769478    84c8
    asm("{disp8} jne        _jmp_addr_0x00769484");                          // 0x0076947a    7508
    asm("or.s               cl, al");                                        // 0x0076947c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0076947e    880d34c9fa00
    asm("_jmp_addr_0x00769484:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00769490");   // 0x00769484    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00769490(void)
{
    asm("push               0x00407870");                                    // 0x00769490    6870784000
    asm("call               _atexit");                                       // 0x00769495    e8f7c20500
    asm("pop                ecx");                                           // 0x0076949a    59
}

void __cdecl globl_ct_0x007694a0(void)
{
    asm("{disp32} jmp       _FUN_007694b0__8VillagerFv");                    // 0x007694a0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007694b0__8VillagerFv(void)
{
    asm("{disp32} mov dword ptr [_villager_states_float_0x00dcb154], 0x3e000000");  // 0x007694b0    c70554b1dc000000003e
}

void __cdecl globl_ct_0x007694c0(void)
{
    asm("{disp32} jmp       _FUN_007694d0__8VillagerFv");                    // 0x007694c0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007694d0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_states_float_pi_0x0099aa14]"); // 0x007694d0    d90514aa9900
    asm("{disp32} fmul dword ptr [_rdata_float0p5]");                      // 0x007694d6    d80db4a38a00
    asm("{disp32} fstp dword ptr [_villager_states_half_pi_0x00dcb15c]");  // 0x007694dc    d91d5cb1dc00
}

void __cdecl globl_ct_0x007694f0(void)
{
    asm("{disp32} jmp       _FUN_00769500__8VillagerFv");                    // 0x007694f0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00769500__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_states_seconds_in_day_0x0099aa1c]");   // 0x00769500    d9051caa9900
    asm("{disp32} fmul dword ptr [_villager_states_num_days_in_year_0x0099aa18]"); // 0x00769506    d80d18aa9900
    asm("{disp32} fstp dword ptr [_villager_states_seconds_in_year_0x00db9e5c]");  // 0x0076950c    d91d5c9edb00
}

void __cdecl globl_ct_0x00769520(void)
{
    asm("{disp32} jmp       _FUN_00769530__8VillagerFv");                    // 0x00769530    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00769530__8VillagerFv(void)
{
    asm("{disp32} mov dword ptr [_villager_states_uint_0x00db9e64], 0xffffffff");  // 0x00769530    c705649edb00ffffffff
}

void __cdecl globl_ct_0x00769540(void)
{
    asm("call               _FUN_00769550__8VillagerFv");                    // 0x00769540    e80b000000
    asm("{disp32} jmp       _FUN_007695a0__8VillagerFv");                    // 0x00769545    e956000000
    __builtin_unreachable();
}

void __cdecl FUN_00769550__8VillagerFv(void)
{
    asm("mov                eax, OFFSET _GVillagerStateTableInfos");         // 0x00769550    b8689edb00
    asm("mov                ecx, 0x000000ff");                               // 0x00769555    b9ff000000
    asm("xor.s              edx, edx");                                      // 0x0076955a    33d2
    asm("_jmp_addr_0x0076955c:");
    asm(".byte 0xc7, 0x00, 0x44, 0x9a\n.byte 0x8a, 0x00");                   // 0x0076955c    c700449a8a00 (movl               $??_7Base@@6B@, (%eax))
    asm("{disp8} mov        dword ptr [eax + 0x04], edx");                   // 0x00769562    895004
    asm("{disp8} mov        dword ptr [eax + 0x08], edx");                   // 0x00769565    895008
    asm("mov                dword ptr [eax], 0x0099aa24");                   // 0x00769568    c70024aa9900
    asm("add                eax, 0x00000114");                               // 0x0076956e    0514010000
    asm("dec                ecx");                                           // 0x00769573    49
    asm("{disp8} jne        _jmp_addr_0x0076955c");                          // 0x00769574    75e6
}

struct GBaseInfo* __fastcall GetBaseInfo__23GVillagerStateTableInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                     // 0x00769580    8b442404
    asm("mov                dword ptr [eax], 0x000000ff");                     // 0x00769584    c700ff000000
    asm("mov                eax, OFFSET _GVillagerStateTableInfos");           // 0x0076958a    b8689edb00
    asm("ret                0x0004");                                          // 0x0076958f    c20400
    __builtin_unreachable();
}

void __cdecl FUN_007695a0__8VillagerFv(void)
{
    asm("push               0x007695b0"); /* FUN_007695b0__8VillagerFv */    // 0x007695a0    68b0957600
    asm("call               _atexit");                                       // 0x007695a5    e8e7c10500
    asm("pop                ecx");                                           // 0x007695aa    59
    asm("ret");                                                              // 0x007695ab    c3
    __builtin_unreachable();
}

void __cdecl FUN_007695b0__8VillagerFv(void)
{
    asm("{disp32} mov       cl, byte ptr [_villager_states_byte_0x00db9e60]"); // 0x007695b0    8a0d609edb00
    asm("mov                al, 0x01");                                      // 0x007695b6    b001
    asm("test               al, cl");                                        // 0x007695b8    84c8
    asm("{disp8} jne        _jmp_addr_0x007695e2");                          // 0x007695ba    7526
    asm("push               esi");                                           // 0x007695bc    56
    asm("or.s               cl, al");                                        // 0x007695bd    0ac8
    asm("push               edi");                                           // 0x007695bf    57
    asm("{disp32} mov       byte ptr [_villager_states_byte_0x00db9e60], cl"); // 0x007695c0    880d609edb00
    asm("mov                esi, 0x00dcb154");                               // 0x007695c6    be54b1dc00
    asm("mov                edi, 0x000000ff");                               // 0x007695cb    bfff000000
    asm("_jmp_addr_0x007695d0:");
    asm("sub                esi, 0x00000114");                               // 0x007695d0    81ee14010000
    asm("mov.s              ecx, esi");                                      // 0x007695d6    8bce
    asm("call               _jmp_addr_0x00436960");                          // 0x007695d8    e883d3ccff
    asm("dec                edi");                                           // 0x007695dd    4f
    asm("{disp8} jne        _jmp_addr_0x007695d0");                          // 0x007695de    75f0
    asm("pop                edi");                                           // 0x007695e0    5f
    asm("pop                esi");                                           // 0x007695e1    5e
    asm("_jmp_addr_0x007695e2:");
}

void __fastcall __dt__23GVillagerStateTableInfoFv(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push               esi");                                             // 0x007695f0    56
    asm("mov.s              esi, ecx");                                        // 0x007695f1    8bf1
    asm("call               _jmp_addr_0x00436960");                            // 0x007695f3    e868d3ccff
    asm("test               byte ptr [esp + 0x08], 0x01");                     // 0x007695f8    f644240801
    asm("{disp8} je         _jmp_addr_0x0076960d");                            // 0x007695fd    740e
    asm("push               0x00000114");                                      // 0x007695ff    6814010000
    asm("push               esi");                                             // 0x00769604    56
    asm("call               ??3Base@@SAXPAXK@Z");                              // 0x00769605    e866d3ccff
    asm("add                esp, 0x08");                                       // 0x0076960a    83c408
    asm("_jmp_addr_0x0076960d:");
    asm("mov.s              eax, esi");                                        // 0x0076960d    8bc6
    asm("pop                esi");                                             // 0x0076960f    5e
    asm("ret                0x0004");                                          // 0x00769610    c20400
    __builtin_unreachable();
}

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23GVillagerStateTableInfo = {
    .pTypeDescriptor = &__RTTITypeDescriptor__23GVillagerStateTableInfo,
    .numContainedBases = 0x00000002,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__23GVillagerStateTableInfo = {
    .arrayOfBaseClassDescriptors = {
        &__RTTIBaseClassDescriptor__23GVillagerStateTableInfo,
        &__RTTIBaseClassDescriptor__9GBaseInfo,
        &__RTTIBaseClassDescriptor__4Base,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23GVillagerStateTableInfo = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000003,
  .pBaseClassArray = &__RTTIBaseClassArray__23GVillagerStateTableInfo,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__23GVillagerStateTableInfo = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__23GVillagerStateTableInfo,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__23GVillagerStateTableInfo,
};

const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__23GVillagerStateTableInfo = &__RTTICompleteObjectLocator__23GVillagerStateTableInfo;

const struct GBaseInfoVftable __vt__23GVillagerStateTableInfo = {
  Serialise__4BaseFR7Archive,
  __dt__23GVillagerStateTableInfoFv,
  Delete__4BaseFv,
  ToBeDeleted__4BaseFi,
  Get3DSoundPos__4BaseFP7LHPoint,
  CleanUpForSerialisation__4BaseFv,
  Dump__4BaseFv,
  GetDebugText__9GBaseInfoCFv,
  GetDebugColor__9GBaseInfoCFv,
  GetBaseInfo__23GVillagerStateTableInfoFRUl,
  UpdateValue__9GBaseInfoFfUlUl,
};

__attribute__((XOR32rr_REV))
uint32_t __fastcall GotoStoragePitForDropOff__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                       // 0x00769620    83ec10
    asm("push               esi");                                             // 0x00769623    56
    asm("mov.s              esi, ecx");                                        // 0x00769624    8bf1
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769626    e8e588feff
    asm("test               eax, eax");                                        // 0x0076962b    85c0
    asm("{disp8} je         _jmp_addr_0x0076967a");                            // 0x0076962d    744b
    asm("mov.s              ecx, esi");                                        // 0x0076962f    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769631    e8da88feff
    asm("mov                edx, dword ptr [eax]");                            // 0x00769636    8b10
    asm("mov.s              ecx, eax");                                        // 0x00769638    8bc8
    asm("call               dword ptr [edx + 0xd4]");                          // 0x0076963a    ff92d4000000
    asm("test               eax, eax");                                        // 0x00769640    85c0
    asm("{disp8} je         _jmp_addr_0x0076967a");                            // 0x00769642    7436
    asm("mov.s              ecx, esi");                                        // 0x00769644    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769646    e8c588feff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076964b    8b10
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                     // 0x0076964d    8d4c2408
    asm("push               ecx");                                             // 0x00769651    51
    asm("mov.s              ecx, eax");                                        // 0x00769652    8bc8
    asm("call               dword ptr [edx + 0x104]");                         // 0x00769654    ff9204010000
    asm("push               0x20");                                            // 0x0076965a    6a20
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                     // 0x0076965c    8d54240c
    asm("push               edx");                                             // 0x00769660    52
    asm("mov.s              ecx, esi");                                        // 0x00769661    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769663    e8a888feff
    asm("push               eax");                                             // 0x00769668    50
    asm("mov.s              ecx, esi");                                        // 0x00769669    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076966b    e8b046e8ff
    asm("mov                eax, 0x00000001");                                 // 0x00769670    b801000000
    asm("pop                esi");                                             // 0x00769675    5e
    asm("add                esp, 0x10");                                       // 0x00769676    83c410
    asm("ret");                                                                // 0x00769679    c3
    asm("_jmp_addr_0x0076967a:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                     // 0x0076967a    8d442404
    asm("push               eax");                                             // 0x0076967e    50
    asm("mov.s              ecx, esi");                                        // 0x0076967f    8bce
    asm("call               ?GetResourceHeld@Villager@@QAE_NAAW4RESOURCE_TYPE@@@Z");                            // 0x00769681    e8ea7efeff
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                     // 0x00769686    8b442404
    asm("test               eax, eax");                                        // 0x0076968a    85c0
    asm("{disp8} je         _jmp_addr_0x007696a9");                            // 0x0076968c    741b
    asm("cmp                eax, 0x01");                                       // 0x0076968e    83f801
    asm("{disp8} je         _jmp_addr_0x007696a9");                            // 0x00769691    7416
    asm("mov                edx, dword ptr [esi]");                            // 0x00769693    8b16
    asm("push               0x000000a3");                                      // 0x00769695    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076969a    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076969c    ff92e8080000
    asm("xor.s              eax, eax");                                        // 0x007696a2    33c0
    asm("pop                esi");                                             // 0x007696a4    5e
    asm("add                esp, 0x10");                                       // 0x007696a5    83c410
    asm("ret");                                                                // 0x007696a8    c3
    asm("_jmp_addr_0x007696a9:");
    asm("push               eax");                                             // 0x007696a9    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x007696aa    8d44240c
    asm("push               eax");                                             // 0x007696ae    50
    asm("mov.s              ecx, esi");                                        // 0x007696af    8bce
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                            // 0x007696b1    e86aa7feff
    asm("push               0x20");                                            // 0x007696b6    6a20
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x007696b8    8d4c240c
    asm("push               ecx");                                             // 0x007696bc    51
    asm("mov.s              ecx, esi");                                        // 0x007696bd    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x007696bf    e8cc91e8ff
    asm("mov                eax, 0x00000001");                                 // 0x007696c4    b801000000
    asm("pop                esi");                                             // 0x007696c9    5e
    asm("add                esp, 0x10");                                       // 0x007696ca    83c410
    asm("ret");                                                                // 0x007696cd    c3
    __builtin_unreachable();
}

uint32_t __fastcall ArrivesAtStoragePitForDropOff__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                       // 0x007696d0    83ec14
    asm("push               esi");                                             // 0x007696d3    56
    asm("push               edi");                                             // 0x007696d4    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                     // 0x007696d5    8d442408
    asm("mov.s              esi, ecx");                                        // 0x007696d9    8bf1
    asm("push               eax");                                             // 0x007696db    50
    asm("call               ?GetResourceHeld@Villager@@QAE_NAAW4RESOURCE_TYPE@@@Z");                            // 0x007696dc    e88f7efeff
    asm("test               eax, eax");                                        // 0x007696e1    85c0
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                     // 0x007696e3    8944240c
    asm("{disp32} je        _jmp_addr_0x007697d7");                            // 0x007696e7    0f84ea000000
    asm("mov.s              ecx, esi");                                        // 0x007696ed    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x007696ef    e81c88feff
    asm("mov.s              edi, eax");                                        // 0x007696f4    8bf8
    asm("test               edi, edi");                                        // 0x007696f6    85ff
    asm("{disp8} je         _jmp_addr_0x0076974d");                            // 0x007696f8    7453
    asm("mov                edx, dword ptr [edi]");                            // 0x007696fa    8b17
    asm("mov.s              ecx, edi");                                        // 0x007696fc    8bcf
    asm("call               dword ptr [edx + 0xd4]");                          // 0x007696fe    ff92d4000000
    asm("test               eax, eax");                                        // 0x00769704    85c0
    asm("{disp8} je         _jmp_addr_0x0076974d");                            // 0x00769706    7445
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                     // 0x00769708    8b4c2408
    asm("push               0x0");                                             // 0x0076970c    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                     // 0x0076970e    8d442410
    asm("push               eax");                                             // 0x00769712    50
    asm("push               ecx");                                             // 0x00769713    51
    asm("push               edi");                                             // 0x00769714    57
    asm("mov.s              ecx, esi");                                        // 0x00769715    8bce
    asm("call               ?AtStructureAddResource@Villager@@QAEIPAVMultiMapFixed@@W4RESOURCE_TYPE@@AAK_N@Z");                            // 0x00769717    e8940c0000
    asm("cmp                eax, 0x24");                                       // 0x0076971c    83f824
    asm("{disp32} je        _jmp_addr_0x007697e6");                            // 0x0076971f    0f84c1000000
    asm("mov                edx, dword ptr [edi]");                            // 0x00769725    8b17
    asm("push               0x000000a3");                                      // 0x00769727    68a3000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x0076972c    8d442414
    asm("push               eax");                                             // 0x00769730    50
    asm("mov.s              ecx, edi");                                        // 0x00769731    8bcf
    asm("call               dword ptr [edx + 0x104]");                         // 0x00769733    ff9204010000
    asm("push               eax");                                             // 0x00769739    50
    asm("push               edi");                                             // 0x0076973a    57
    asm("mov.s              ecx, esi");                                        // 0x0076973b    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076973d    e8de45e8ff
    asm("pop                edi");                                             // 0x00769742    5f
    asm("mov                eax, 0x00000001");                                 // 0x00769743    b801000000
    asm("pop                esi");                                             // 0x00769748    5e
    asm("add                esp, 0x14");                                       // 0x00769749    83c414
    asm("ret");                                                                // 0x0076974c    c3
    asm("_jmp_addr_0x0076974d:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076974d    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076974f    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x00769751    ff5248
    asm("test               eax, eax");                                        // 0x00769754    85c0
    asm("{disp8} je         _jmp_addr_0x007697d7");                            // 0x00769756    747f
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                     // 0x00769758    8b442408
    asm("push               eax");                                             // 0x0076975c    50
    asm("mov                eax, dword ptr [esi]");                            // 0x0076975d    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076975f    8d4c2414
    asm("push               ecx");                                             // 0x00769763    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                     // 0x00769764    8d5614
    asm("push               edx");                                             // 0x00769767    52
    asm("mov.s              ecx, esi");                                        // 0x00769768    8bce
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");              // 0x0076976a    c744241c00000000
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");              // 0x00769772    c744242000000000
    asm("{disp8} mov        dword ptr [esp + 0x24], 0x00000000");              // 0x0076977a    c744242400000000
    asm("call               dword ptr [eax + 0x48]");                          // 0x00769782    ff5048
    asm("mov.s              ecx, eax");                                        // 0x00769785    8bc8
    asm("call               ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z");                            // 0x00769787    e87451fdff
    asm("mov.s              edi, eax");                                        // 0x0076978c    8bf8
    asm("test               edi, edi");                                        // 0x0076978e    85ff
    asm("{disp8} je         _jmp_addr_0x007697d7");                            // 0x00769790    7445
    asm("mov                edx, dword ptr [esi]");                            // 0x00769792    8b16
    asm("push               0x0");                                             // 0x00769794    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x00769796    8d442414
    asm("push               eax");                                             // 0x0076979a    50
    asm("mov.s              ecx, esi");                                        // 0x0076979b    8bce
    asm("call               dword ptr [edx + 0x85c]");                         // 0x0076979d    ff925c080000
    asm("test               eax, eax");                                        // 0x007697a3    85c0
    asm("{disp8} je         _jmp_addr_0x007697ff");                            // 0x007697a5    7458
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                     // 0x007697a7    8b44240c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                     // 0x007697ab    8b4c2408
    asm("mov                edx, dword ptr [edi]");                            // 0x007697af    8b17
    asm("push               0x0");                                             // 0x007697b1    6a00
    asm("push               0x0");                                             // 0x007697b3    6a00
    asm("push               0x0");                                             // 0x007697b5    6a00
    asm("push               0x0");                                             // 0x007697b7    6a00
    asm("push               eax");                                             // 0x007697b9    50
    asm("push               ecx");                                             // 0x007697ba    51
    asm("mov.s              ecx, edi");                                        // 0x007697bb    8bcf
    asm("call               dword ptr [edx + 0x9c]");                          // 0x007697bd    ff929c000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                     // 0x007697c3    8b442408
    asm("test               eax, eax");                                        // 0x007697c7    85c0
    asm("{disp8} jne        _jmp_addr_0x007697f1");                            // 0x007697c9    7526
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                     // 0x007697cb    8b54240c
    asm("push               edx");                                             // 0x007697cf    52
    asm("mov.s              ecx, esi");                                        // 0x007697d0    8bce
    asm("call               ?DropFood@Villager@@QAEGG@Z");                     // 0x007697d2    e8097afeff
    asm("_jmp_addr_0x007697d7:");
    asm("mov                edx, dword ptr [esi]");                            // 0x007697d7    8b16
    asm("push               0x000000a3");                                      // 0x007697d9    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x007697de    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x007697e0    ff92e8080000
    asm("_jmp_addr_0x007697e6:");
    asm("pop                edi");                                             // 0x007697e6    5f
    asm("mov                eax, 0x00000001");                                 // 0x007697e7    b801000000
    asm("pop                esi");                                             // 0x007697ec    5e
    asm("add                esp, 0x14");                                       // 0x007697ed    83c414
    asm("ret");                                                                // 0x007697f0    c3
    asm("_jmp_addr_0x007697f1:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                     // 0x007697f1    8b44240c
    asm("push               eax");                                             // 0x007697f5    50
    asm("mov.s              ecx, esi");                                        // 0x007697f6    8bce
    asm("call               ?DropWood@Villager@@QAEGG@Z");                     // 0x007697f8    e8437afeff
    asm("{disp8} jmp        _jmp_addr_0x007697d7");                            // 0x007697fd    ebd8
    asm("_jmp_addr_0x007697ff:");
    asm("mov                edx, dword ptr [esi]");                            // 0x007697ff    8b16
    asm("mov.s              ecx, esi");                                        // 0x00769801    8bce
    asm("call               dword ptr [edx + 0xb04]");                         // 0x00769803    ff92040b0000
    asm("mov.s              ecx, esi");                                        // 0x00769809    8bce
    asm("push               eax");                                             // 0x0076980b    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x0076980c    8d442414
    asm("push               eax");                                             // 0x00769810    50
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x00769811    e87a90e8ff
    asm("pop                edi");                                             // 0x00769816    5f
    asm("mov                eax, 0x00000001");                                 // 0x00769817    b801000000
    asm("pop                esi");                                             // 0x0076981c    5e
    asm("add                esp, 0x14");                                       // 0x0076981d    83c414
    asm("ret");                                                                // 0x00769820    c3
    __builtin_unreachable();
}

bool32_t __fastcall GotoStoragePitForFood__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x00769830    83ec0c
    asm("push               esi");                                             // 0x00769833    56
    asm("mov.s              esi, ecx");                                        // 0x00769834    8bf1
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769836    e8d586feff
    asm("test               eax, eax");                                        // 0x0076983b    85c0
    asm("{disp8} je         _jmp_addr_0x0076988a");                            // 0x0076983d    744b
    asm("mov.s              ecx, esi");                                        // 0x0076983f    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769841    e8ca86feff
    asm("mov                edx, dword ptr [eax]");                            // 0x00769846    8b10
    asm("mov.s              ecx, eax");                                        // 0x00769848    8bc8
    asm("call               dword ptr [edx + 0xd4]");                          // 0x0076984a    ff92d4000000
    asm("test               eax, eax");                                        // 0x00769850    85c0
    asm("{disp8} je         _jmp_addr_0x0076988a");                            // 0x00769852    7436
    asm("mov.s              ecx, esi");                                        // 0x00769854    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769856    e8b586feff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076985b    8b10
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                     // 0x0076985d    8d4c2404
    asm("push               ecx");                                             // 0x00769861    51
    asm("mov.s              ecx, eax");                                        // 0x00769862    8bc8
    asm("call               dword ptr [edx + 0x104]");                         // 0x00769864    ff9204010000
    asm("push               0x22");                                            // 0x0076986a    6a22
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                     // 0x0076986c    8d542408
    asm("push               edx");                                             // 0x00769870    52
    asm("mov.s              ecx, esi");                                        // 0x00769871    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769873    e89886feff
    asm("push               eax");                                             // 0x00769878    50
    asm("mov.s              ecx, esi");                                        // 0x00769879    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076987b    e8a044e8ff
    asm("mov                eax, 0x00000001");                                 // 0x00769880    b801000000
    asm("pop                esi");                                             // 0x00769885    5e
    asm("add                esp, 0x0c");                                       // 0x00769886    83c40c
    asm("ret");                                                                // 0x00769889    c3
    asm("_jmp_addr_0x0076988a:");
    asm("push               0x0");                                             // 0x0076988a    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                     // 0x0076988c    8d442408
    asm("push               eax");                                             // 0x00769890    50
    asm("mov.s              ecx, esi");                                        // 0x00769891    8bce
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                            // 0x00769893    e888a5feff
    asm("push               0x22");                                            // 0x00769898    6a22
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                     // 0x0076989a    8d4c2408
    asm("push               ecx");                                             // 0x0076989e    51
    asm("mov.s              ecx, esi");                                        // 0x0076989f    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x007698a1    e8ea8fe8ff
    asm("mov                eax, 0x00000001");                                 // 0x007698a6    b801000000
    asm("pop                esi");                                             // 0x007698ab    5e
    asm("add                esp, 0x0c");                                       // 0x007698ac    83c40c
    asm("ret");                                                                // 0x007698af    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtStoragePitForFood__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x007698b0    56
    asm("push               0x000000a3");                                      // 0x007698b1    68a3000000
    asm("mov.s              esi, ecx");                                        // 0x007698b6    8bf1
    asm("push               0x000000a3");                                      // 0x007698b8    68a3000000
    asm("call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ");// 0x007698bd    e83e23ffff
    asm("push               eax");                                             // 0x007698c2    50
    asm("push               0x0");                                             // 0x007698c3    6a00
    asm("mov.s              ecx, esi");                                        // 0x007698c5    8bce
    asm("call               ?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");                            // 0x007698c7    e804000000
    asm("pop                esi");                                             // 0x007698cc    5e
    asm("ret");                                                                // 0x007698cd    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ArrivesAtStoragePitForResource__8VillagerF13RESOURCE_TYPEUl15VILLAGER_STATES15VILLAGER_STATES(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1, unsigned long param_2, enum VILLAGER_STATES param_3, enum VILLAGER_STATES param_4)
{
    asm("sub                esp, 0x24");                                       // 0x007698d0    83ec24
    asm("push               ebx");                                             // 0x007698d3    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x30]");                     // 0x007698d4    8b5c2430
    asm("push               ebp");                                             // 0x007698d8    55
    asm("push               esi");                                             // 0x007698d9    56
    asm("xor.s              ebp, ebp");                                        // 0x007698da    33ed
    asm("cmp.s              ebx, ebp");                                        // 0x007698dc    3bdd
    asm("push               edi");                                             // 0x007698de    57
    asm("mov.s              esi, ecx");                                        // 0x007698df    8bf1
    asm("{disp32} jbe       _jmp_addr_0x00769b0a");                            // 0x007698e1    0f8623020000
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x007698e7    e82486feff
    asm("test               eax, eax");                                        // 0x007698ec    85c0
    asm("{disp32} je        _jmp_addr_0x007699be");                            // 0x007698ee    0f84ca000000
    asm("mov.s              ecx, esi");                                        // 0x007698f4    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x007698f6    e81586feff
    asm("mov                edx, dword ptr [eax]");                            // 0x007698fb    8b10
    asm("mov.s              ecx, eax");                                        // 0x007698fd    8bc8
    asm("call               dword ptr [edx + 0xd4]");                          // 0x007698ff    ff92d4000000
    asm("test               eax, eax");                                        // 0x00769905    85c0
    asm("{disp32} je        _jmp_addr_0x007699be");                            // 0x00769907    0f84b1000000
    asm("mov.s              ecx, esi");                                        // 0x0076990d    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076990f    e8fc85feff
    asm("{disp8} mov        edi, dword ptr [esp + 0x38]");                     // 0x00769914    8b7c2438
    asm("mov                edx, dword ptr [eax]");                            // 0x00769918    8b10
    asm("push               edi");                                             // 0x0076991a    57
    asm("mov.s              ecx, eax");                                        // 0x0076991b    8bc8
    asm("call               dword ptr [edx + 0x98]");                          // 0x0076991d    ff9298000000
    asm("cmp.s              ebx, eax");                                        // 0x00769923    3bd8
    asm(".byte              0x72, 0x14");// {disp8} jb _jmp_addr_0x0076993b    // 0x00769925    7214
    asm("mov.s              ecx, esi");                                        // 0x00769927    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769929    e8e285feff
    asm("mov                edx, dword ptr [eax]");                            // 0x0076992e    8b10
    asm("push               edi");                                             // 0x00769930    57
    asm("mov.s              ecx, eax");                                        // 0x00769931    8bc8
    asm("call               dword ptr [edx + 0x98]");                          // 0x00769933    ff9298000000
    asm("mov.s              ebx, eax");                                        // 0x00769939    8bd8
    asm("_jmp_addr_0x0076993b:");
    asm("cmp.s              ebx, ebp");                                        // 0x0076993b    3bdd
    asm("{disp8} jbe        _jmp_addr_0x007699a3");                            // 0x0076993d    7664
    asm("push               ebp");                                             // 0x0076993f    55
    asm("push               ebx");                                             // 0x00769940    53
    asm("push               edi");                                             // 0x00769941    57
    asm("mov.s              ecx, esi");                                        // 0x00769942    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769944    e8c785feff
    asm("push               eax");                                             // 0x00769949    50
    asm("mov.s              ecx, esi");                                        // 0x0076994a    8bce
    asm("call               ?AtStructureRemoveResource@Villager@@QAEIPAVMultiMapFixed@@W4RESOURCE_TYPE@@KPA_N@Z");                            // 0x0076994c    e89f090000
    asm("cmp                eax, 0x24");                                       // 0x00769951    83f824
    asm("{disp8} jne        _jmp_addr_0x00769960");                            // 0x00769954    750a
    asm("pop                edi");                                             // 0x00769956    5f
    asm("pop                esi");                                             // 0x00769957    5e
    asm("pop                ebp");                                             // 0x00769958    5d
    asm("pop                ebx");                                             // 0x00769959    5b
    asm("add                esp, 0x24");                                       // 0x0076995a    83c424
    asm("ret                0x0010");                                          // 0x0076995d    c21000
    asm("_jmp_addr_0x00769960:");
    asm("cmp                eax, 0x01");                                       // 0x00769960    83f801
    asm("{disp8} jne        _jmp_addr_0x007699a3");                            // 0x00769963    753e
    asm("{disp8} mov        edi, dword ptr [esp + 0x40]");                     // 0x00769965    8b7c2440
    asm("cmp.s              edi, ebp");                                        // 0x00769969    3bfd
    asm("{disp8} je         _jmp_addr_0x007699a3");                            // 0x0076996b    7436
    asm("mov.s              ecx, esi");                                        // 0x0076996d    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x0076996f    e89c85feff
    asm("mov                edx, dword ptr [eax]");                            // 0x00769974    8b10
    asm("push               edi");                                             // 0x00769976    57
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                     // 0x00769977    8d4c242c
    asm("push               ecx");                                             // 0x0076997b    51
    asm("mov.s              ecx, eax");                                        // 0x0076997c    8bc8
    asm("call               dword ptr [edx + 0x104]");                         // 0x0076997e    ff9204010000
    asm("push               eax");                                             // 0x00769984    50
    asm("mov.s              ecx, esi");                                        // 0x00769985    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ");   // 0x00769987    e88485feff
    asm("push               eax");                                             // 0x0076998c    50
    asm("mov.s              ecx, esi");                                        // 0x0076998d    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076998f    e88c43e8ff
    asm("pop                edi");                                             // 0x00769994    5f
    asm("pop                esi");                                             // 0x00769995    5e
    asm("pop                ebp");                                             // 0x00769996    5d
    asm("mov                eax, 0x00000001");                                 // 0x00769997    b801000000
    asm("pop                ebx");                                             // 0x0076999c    5b
    asm("add                esp, 0x24");                                       // 0x0076999d    83c424
    asm("ret                0x0010");                                          // 0x007699a0    c21000
    asm("_jmp_addr_0x007699a3:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                     // 0x007699a3    8b442444
    asm("mov                edx, dword ptr [esi]");                            // 0x007699a7    8b16
    asm("push               eax");                                             // 0x007699a9    50
    asm("mov.s              ecx, esi");                                        // 0x007699aa    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x007699ac    ff92e8080000
    asm("pop                edi");                                             // 0x007699b2    5f
    asm("pop                esi");                                             // 0x007699b3    5e
    asm("pop                ebp");                                             // 0x007699b4    5d
    asm("xor.s              eax, eax");                                        // 0x007699b5    33c0
    asm("pop                ebx");                                             // 0x007699b7    5b
    asm("add                esp, 0x24");                                       // 0x007699b8    83c424
    asm("ret                0x0010");                                          // 0x007699bb    c21000
    asm("_jmp_addr_0x007699be:");
    asm("mov                edx, dword ptr [esi]");                            // 0x007699be    8b16
    asm("mov.s              ecx, esi");                                        // 0x007699c0    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x007699c2    ff5248
    asm("test               eax, eax");                                        // 0x007699c5    85c0
    asm("{disp32} je        _jmp_addr_0x00769b0a");                            // 0x007699c7    0f843d010000
    asm("mov                edx, dword ptr [esi]");                            // 0x007699cd    8b16
    asm("{disp8} mov        dword ptr [esp + 0x10], ebp");                     // 0x007699cf    896c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                     // 0x007699d3    896c2414
    asm("{disp8} mov        ebp, dword ptr [esp + 0x38]");                     // 0x007699d7    8b6c2438
    asm("push               ebp");                                             // 0x007699db    55
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x007699dc    8d442414
    asm("push               eax");                                             // 0x007699e0    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x007699e1    8d4e14
    asm("push               ecx");                                             // 0x007699e4    51
    asm("mov.s              ecx, esi");                                        // 0x007699e5    8bce
    asm("{disp8} mov        dword ptr [esp + 0x24], 0x00000000");              // 0x007699e7    c744242400000000
    asm("call               dword ptr [edx + 0x48]");                          // 0x007699ef    ff5248
    asm("mov.s              ecx, eax");                                        // 0x007699f2    8bc8
    asm("call               ?GetTemporaryResourceStorePotOrPos@Town@@QAEPAXABUMapCoords@@AAU2@W4RESOURCE_TYPE@@@Z");                            // 0x007699f4    e8074ffdff
    asm("mov.s              edi, eax");                                        // 0x007699f9    8bf8
    asm("test               edi, edi");                                        // 0x007699fb    85ff
    asm("{disp32} je        _jmp_addr_0x00769b0a");                            // 0x007699fd    0f8407010000
    asm("mov                eax, dword ptr [edi]");                            // 0x00769a03    8b07
    asm("push               esi");                                             // 0x00769a05    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                     // 0x00769a06    8d4c2420
    asm("push               ecx");                                             // 0x00769a0a    51
    asm("mov.s              ecx, edi");                                        // 0x00769a0b    8bcf
    asm("call               dword ptr [eax + 0x834]");                         // 0x00769a0d    ff9034080000
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                          // 0x00769a13    d944241c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x00769a17    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00769a1d    e8de790300
    asm("{disp8} fld        dword ptr [esp + 0x24]");                          // 0x00769a22    d9442424
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x00769a26    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00769a2c    89442410
    asm("call               _jmp_addr_0x007a1400");                            // 0x00769a30    e8cb790300
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                          // 0x00769a35    d944241c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x00769a39    d80d08c48a00
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                     // 0x00769a3f    89442414
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");                // 0x00769a43    d80d04c48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00769a49    e8b2790300
    asm("{disp8} fld        dword ptr [esp + 0x24]");                          // 0x00769a4e    d9442424
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x00769a52    d80d08c48a00
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                     // 0x00769a58    89442428
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");                // 0x00769a5c    d80d04c48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00769a62    e899790300
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                     // 0x00769a67    8d4c2428
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                     // 0x00769a6b    8944242c
    asm("{disp8} mov        dword ptr [esp + 0x30], 0x00000000");              // 0x00769a6f    c744243000000000
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x00769a77    e814960900
    asm("{disp8} fsubr      dword ptr [esp + 0x20]");                          // 0x00769a7c    d86c2420
    asm("mov                edx, dword ptr [esi]");                            // 0x00769a80    8b16
    asm("push               0x0");                                             // 0x00769a82    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x00769a84    8d442414
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                          // 0x00769a88    d95c241c
    asm("push               eax");                                             // 0x00769a8c    50
    asm("mov.s              ecx, esi");                                        // 0x00769a8d    8bce
    asm("call               dword ptr [edx + 0x85c]");                         // 0x00769a8f    ff925c080000
    asm("test               eax, eax");                                        // 0x00769a95    85c0
    asm("{disp8} je         _jmp_addr_0x00769ae4");                            // 0x00769a97    744b
    asm("mov                edx, dword ptr [edi]");                            // 0x00769a99    8b17
    asm("push               0x0");                                             // 0x00769a9b    6a00
    asm("push               0x0");                                             // 0x00769a9d    6a00
    asm("push               ebx");                                             // 0x00769a9f    53
    asm("push               ebp");                                             // 0x00769aa0    55
    asm("mov.s              ecx, edi");                                        // 0x00769aa1    8bcf
    asm("call               dword ptr [edx + 0xa0]");                          // 0x00769aa3    ff92a0000000
    asm("mov                eax, dword ptr [edi]");                            // 0x00769aa9    8b07
    asm("mov.s              ecx, edi");                                        // 0x00769aab    8bcf
    asm("call               dword ptr [eax + 0x820]");                         // 0x00769aad    ff9020080000
    asm("push               eax");                                             // 0x00769ab3    50
    asm("push               ebx");                                             // 0x00769ab4    53
    asm("push               ebp");                                             // 0x00769ab5    55
    asm("mov.s              ecx, esi");                                        // 0x00769ab6    8bce
    asm("call               ?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z");                            // 0x00769ab8    e83379feff
    asm("{disp8} mov        eax, dword ptr [esp + 0x40]");                     // 0x00769abd    8b442440
    asm("test               eax, eax");                                        // 0x00769ac1    85c0
    asm("{disp8} je         _jmp_addr_0x00769ac9");                            // 0x00769ac3    7404
    asm("mov                edx, dword ptr [esi]");                            // 0x00769ac5    8b16
    asm("{disp8} jmp        _jmp_addr_0x00769b10");                            // 0x00769ac7    eb47
    asm("_jmp_addr_0x00769ac9:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x44]");                     // 0x00769ac9    8b4c2444
    asm("mov                eax, dword ptr [esi]");                            // 0x00769acd    8b06
    asm("push               ecx");                                             // 0x00769acf    51
    asm("mov.s              ecx, esi");                                        // 0x00769ad0    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x00769ad2    ff90e8080000
    asm("pop                edi");                                             // 0x00769ad8    5f
    asm("pop                esi");                                             // 0x00769ad9    5e
    asm("pop                ebp");                                             // 0x00769ada    5d
    asm("xor.s              eax, eax");                                        // 0x00769adb    33c0
    asm("pop                ebx");                                             // 0x00769add    5b
    asm("add                esp, 0x24");                                       // 0x00769ade    83c424
    asm("ret                0x0010");                                          // 0x00769ae1    c21000
    asm("_jmp_addr_0x00769ae4:");
    asm("mov                edx, dword ptr [esi]");                            // 0x00769ae4    8b16
    asm("mov.s              ecx, esi");                                        // 0x00769ae6    8bce
    asm("call               dword ptr [edx + 0xb04]");                         // 0x00769ae8    ff92040b0000
    asm("mov.s              ecx, esi");                                        // 0x00769aee    8bce
    asm("push               eax");                                             // 0x00769af0    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x00769af1    8d442414
    asm("push               eax");                                             // 0x00769af5    50
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x00769af6    e8958de8ff
    asm("pop                edi");                                             // 0x00769afb    5f
    asm("pop                esi");                                             // 0x00769afc    5e
    asm("pop                ebp");                                             // 0x00769afd    5d
    asm("mov                eax, 0x00000024");                                 // 0x00769afe    b824000000
    asm("pop                ebx");                                             // 0x00769b03    5b
    asm("add                esp, 0x24");                                       // 0x00769b04    83c424
    asm("ret                0x0010");                                          // 0x00769b07    c21000
    asm("_jmp_addr_0x00769b0a:");
    asm("mov                edx, dword ptr [esi]");                            // 0x00769b0a    8b16
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                     // 0x00769b0c    8b442444
    asm("_jmp_addr_0x00769b10:");
    asm("push               eax");                                             // 0x00769b10    50
    asm("mov.s              ecx, esi");                                        // 0x00769b11    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00769b13    ff92e8080000
    asm("pop                edi");                                             // 0x00769b19    5f
    asm("pop                esi");                                             // 0x00769b1a    5e
    asm("pop                ebp");                                             // 0x00769b1b    5d
    asm("mov                eax, 0x00000001");                                 // 0x00769b1c    b801000000
    asm("pop                ebx");                                             // 0x00769b21    5b
    asm("add                esp, 0x24");                                       // 0x00769b22    83c424
    asm("ret                0x0010");                                          // 0x00769b25    c21000
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtHomeWithFood__8VillagerFv(struct Villager* this)
{
    asm("push               edi");                                             // 0x00769b30    57
    asm("mov.s              edi, ecx");                                        // 0x00769b31    8bf9
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");             // 0x00769b33    e82886feff
    asm("test               eax, eax");                                        // 0x00769b38    85c0
    asm("{disp8} je         _jmp_addr_0x00769b6a");                            // 0x00769b3a    742e
    asm("push               ebx");                                             // 0x00769b3c    53
    asm("push               esi");                                             // 0x00769b3d    56
    asm("mov.s              ecx, edi");                                        // 0x00769b3e    8bcf
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");             // 0x00769b40    e81b86feff
    asm("push               0x0");                                             // 0x00769b45    6a00
    asm("push               0x0");                                             // 0x00769b47    6a00
    asm("push               0x0");                                             // 0x00769b49    6a00
    asm("push               0x0");                                             // 0x00769b4b    6a00
    asm("mov.s              esi, eax");                                        // 0x00769b4d    8bf0
    asm("mov                ebx, dword ptr [esi]");                            // 0x00769b4f    8b1e
    asm("push               0x0");                                             // 0x00769b51    6a00
    asm("mov.s              ecx, edi");                                        // 0x00769b53    8bcf
    asm("call               ?DropFood@Villager@@QAEGG@Z");                     // 0x00769b55    e88676feff
    asm("movsx              eax, ax");                                         // 0x00769b5a    0fbfc0
    asm("push               eax");                                             // 0x00769b5d    50
    asm("push               0x0");                                             // 0x00769b5e    6a00
    asm("mov.s              ecx, esi");                                        // 0x00769b60    8bce
    asm("call               dword ptr [ebx + 0x9c]");                          // 0x00769b62    ff939c000000
    asm("pop                esi");                                             // 0x00769b68    5e
    asm("pop                ebx");                                             // 0x00769b69    5b
    asm("_jmp_addr_0x00769b6a:");
    asm("mov.s              ecx, edi");                                        // 0x00769b6a    8bcf
    asm("call               ?ArrivesHome@Villager@@QAEIXZ");                   // 0x00769b6c    e8bf6dffff
    asm("pop                edi");                                             // 0x00769b71    5f
    asm("ret");                                                                // 0x00769b72    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckTrader__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00769b80    56
    asm("mov.s              esi, ecx");                                        // 0x00769b81    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x0000011c]");               // 0x00769b83    8b861c010000
    asm("test               eax, eax");                                        // 0x00769b89    85c0
    asm("{disp8} jne        _jmp_addr_0x00769b8f");                            // 0x00769b8b    7502
    asm("pop                esi");                                             // 0x00769b8d    5e
    asm("ret");                                                                // 0x00769b8e    c3
    asm("_jmp_addr_0x00769b8f:");
    asm("{disp32} fld       dword ptr [eax + 0x000001a0]");                    // 0x00769b8f    d980a0010000
    asm("{disp32} fadd      dword ptr [eax + 0x0000010c]");                    // 0x00769b95    d8800c010000
    asm("{disp32} fadd      dword ptr [eax + 0x000000c8]");                    // 0x00769b9b    d880c8000000
    asm("{disp32} fld       dword ptr [eax + 0x0000019c]");                    // 0x00769ba1    d9809c010000
    asm("{disp32} fadd      dword ptr [eax + 0x00000108]");                    // 0x00769ba7    d88008010000
    asm("{disp32} fadd      dword ptr [eax + 0x000000c4]");                    // 0x00769bad    d880c4000000
    asm("fcomp              st(1)");                                           // 0x00769bb3    d8d9
    asm("fnstsw             ax");                                              // 0x00769bb5    dfe0
    asm("test               ah, 0x41");                                        // 0x00769bb7    f6c441
    asm("{disp8} jne        _jmp_addr_0x00769bcc");                            // 0x00769bba    7510
    asm("fstp               st(0)");                                           // 0x00769bbc    ddd8
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000000");        // 0x00769bbe    c7861801000000000000
    asm("push               0x0");                                             // 0x00769bc8    6a00
    asm("{disp8} jmp        _jmp_addr_0x00769be5");                            // 0x00769bca    eb19
    asm("_jmp_addr_0x00769bcc:");
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                     // 0x00769bcc    d81d98a38a00
    asm("fnstsw             ax");                                              // 0x00769bd2    dfe0
    asm("test               ah, 0x40");                                        // 0x00769bd4    f6c440
    asm("{disp8} jne        _jmp_addr_0x00769bfe");                            // 0x00769bd7    7525
    asm("{disp32} mov       dword ptr [esi + 0x00000118], 0x00000001");        // 0x00769bd9    c7861801000001000000
    asm("push               0x1");                                             // 0x00769be3    6a01
    asm("_jmp_addr_0x00769be5:");
    asm("mov.s              ecx, esi");                                        // 0x00769be5    8bce
    asm("call               ?CheckTraderPickUpOrDropOff@Villager@@QAEIW4RESOURCE_TYPE@@@Z");                            // 0x00769be7    e834000000
    asm("mov                edx, dword ptr [esi]");                            // 0x00769bec    8b16
    asm("push               eax");                                             // 0x00769bee    50
    asm("mov.s              ecx, esi");                                        // 0x00769bef    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00769bf1    ff92e8080000
    asm("mov                eax, 0x00000001");                                 // 0x00769bf7    b801000000
    asm("pop                esi");                                             // 0x00769bfc    5e
    asm("ret");                                                                // 0x00769bfd    c3
    asm("_jmp_addr_0x00769bfe:");
    asm("mov.s              ecx, esi");                                        // 0x00769bfe    8bce
    asm("call               ?SetTraderNothingToDo@Villager@@QAEIXZ");          // 0x00769c00    e89b020000
    asm("pop                esi");                                             // 0x00769c05    5e
    asm("ret");                                                                // 0x00769c06    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckMissionary__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckTraderPickUpOrDropOff__8VillagerF13RESOURCE_TYPE(struct Villager* this, const void* edx, enum RESOURCE_TYPE param_1)
{
    asm("sub                esp, 0x24");                                       // 0x00769c20    83ec24
    asm("{disp8} mov        eax, dword ptr [esp + 0x28]");                     // 0x00769c23    8b442428
    asm("push               esi");                                             // 0x00769c27    56
    asm("push               edi");                                             // 0x00769c28    57
    asm("mov.s              esi, ecx");                                        // 0x00769c29    8bf1
    asm("push               eax");                                             // 0x00769c2b    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                     // 0x00769c2c    8d4c2424
    asm("push               ecx");                                             // 0x00769c30    51
    asm("mov.s              ecx, esi");                                        // 0x00769c31    8bce
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                            // 0x00769c33    e8e8a1feff
    asm("mov                edx, dword ptr [esi]");                            // 0x00769c38    8b16
    asm("mov.s              ecx, esi");                                        // 0x00769c3a    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x00769c3c    ff5248
    asm("mov.s              edi, eax");                                        // 0x00769c3f    8bf8
    asm("{disp32} mov       eax, dword ptr [esi + 0x0000011c]");               // 0x00769c41    8b861c010000
    asm("push               eax");                                             // 0x00769c47    50
    asm("mov.s              ecx, esi");                                        // 0x00769c48    8bce
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");              // 0x00769c4a    e8e1c8feff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x30]");                     // 0x00769c4f    8b4c2430
    asm("push               ecx");                                             // 0x00769c53    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                     // 0x00769c54    8d542418
    asm("push               edx");                                             // 0x00769c58    52
    asm("mov.s              ecx, esi");                                        // 0x00769c59    8bce
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                            // 0x00769c5b    e8c0a1feff
    asm("push               edi");                                             // 0x00769c60    57
    asm("mov.s              ecx, esi");                                        // 0x00769c61    8bce
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");              // 0x00769c63    e8c8c8feff
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                     // 0x00769c68    8b7e28
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                     // 0x00769c6b    8d442430
    asm("push               eax");                                             // 0x00769c6f    50
    asm("mov.s              ecx, esi");                                        // 0x00769c70    8bce
    asm("call               ?GetResourceHeld@Villager@@QAE_NAAW4RESOURCE_TYPE@@@Z");                            // 0x00769c72    e8f978feff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00000274]");               // 0x00769c77    8b8f74020000
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                     // 0x00769c7d    8944240c
    asm("xor.s              eax, eax");                                        // 0x00769c81    33c0
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00769c83    89442410
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                          // 0x00769c87    df6c240c
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                     // 0x00769c8b    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00769c8f    89442410
    asm("push               0x459c4000");                                      // 0x00769c93    6800409c45
    asm("{disp8} fidiv      dword ptr [esp + 0x10]");                          // 0x00769c98    da742410
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                     // 0x00769c9c    8d542418
    asm("push               edx");                                             // 0x00769ca0    52
    asm("add                esi, 0x14");                                       // 0x00769ca1    83c614
    asm("push               esi");                                             // 0x00769ca4    56
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                          // 0x00769ca5    d95c2414
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                     // 0x00769ca9    d90590a38a00
    asm("{disp8} fsub       dword ptr [esp + 0x14]");                          // 0x00769caf    d8642414
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                          // 0x00769cb3    d95c2418
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x00769cb7    e8b430feff
    asm("add                esp, 0x04");                                       // 0x00769cbc    83c404
    asm("fstp               dword ptr [esp]");                                 // 0x00769cbf    d91c24
    asm("call               _GetDistanceModifier__6GUtilsFff@8");              // 0x00769cc2    e8c955feff
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                          // 0x00769cc7    d84c2410
    asm("add                esp, 0x08");                                       // 0x00769ccb    83c408
    asm("push               0x459c4000");                                      // 0x00769cce    6800409c45
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                     // 0x00769cd3    8d442424
    asm("push               eax");                                             // 0x00769cd7    50
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                          // 0x00769cd8    d95c2410
    asm("push               esi");                                             // 0x00769cdc    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x00769cdd    e88e30feff
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                          // 0x00769ce2    d95c2404
    asm("add                esp, 0x04");                                       // 0x00769ce6    83c404
    asm("call               _GetDistanceModifier__6GUtilsFff@8");              // 0x00769ce9    e8a255feff
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                          // 0x00769cee    d84c2414
    asm("add                esp, 0x08");                                       // 0x00769cf2    83c408
    asm("pop                edi");                                             // 0x00769cf5    5f
    asm("{disp8} fcomp      dword ptr [esp + 0x04]");                          // 0x00769cf6    d85c2404
    asm("pop                esi");                                             // 0x00769cfa    5e
    asm("fnstsw             ax");                                              // 0x00769cfb    dfe0
    asm("test               ah, 0x41");                                        // 0x00769cfd    f6c441
    asm("mov                eax, 0x000000df");                                 // 0x00769d00    b8df000000
    asm("{disp8} je         _jmp_addr_0x00769d0c");                            // 0x00769d05    7405
    asm("mov                eax, 0x000000e0");                                 // 0x00769d07    b8e0000000
    asm("_jmp_addr_0x00769d0c:");
    asm("add                esp, 0x24");                                       // 0x00769d0c    83c424
    asm("ret                0x0004");                                          // 0x00769d0f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ArrivesAtStoragePitForTraderPickUp__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                       // 0x00769d20    83ec14
    asm("push               esi");                                             // 0x00769d23    56
    asm("mov.s              esi, ecx");                                        // 0x00769d24    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");               // 0x00769d26    8b8618010000
    asm("test               eax, eax");                                        // 0x00769d2c    85c0
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                     // 0x00769d2e    89442404
    asm("{disp8} je         _jmp_addr_0x00769d40");                            // 0x00769d32    740c
    asm("cmp                eax, 0x01");                                       // 0x00769d34    83f801
    asm("{disp8} je         _jmp_addr_0x00769d4b");                            // 0x00769d37    7412
    asm("xor.s              eax, eax");                                        // 0x00769d39    33c0
    asm("pop                esi");                                             // 0x00769d3b    5e
    asm("add                esp, 0x14");                                       // 0x00769d3c    83c414
    asm("ret");                                                                // 0x00769d3f    c3
    asm("_jmp_addr_0x00769d40:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                     // 0x00769d40    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000274]");               // 0x00769d43    8b8074020000
    asm("{disp8} jmp        _jmp_addr_0x00769d54");                            // 0x00769d49    eb09
    asm("_jmp_addr_0x00769d4b:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x00769d4b    8b4e28
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000278]");               // 0x00769d4e    8b8178020000
    asm("_jmp_addr_0x00769d54:");
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                     // 0x00769d54    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");              // 0x00769d58    c744240c00000000
    asm("{disp8} fild       qword ptr [esp + 0x08]");                          // 0x00769d60    df6c2408
    asm("{disp8} lea        edx, dword ptr [esp + 0x04]");                     // 0x00769d64    8d542404
    asm("push               edx");                                             // 0x00769d68    52
    asm("mov.s              ecx, esi");                                        // 0x00769d69    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                          // 0x00769d6b    d95c240c
    asm("call               ?GetResourceHeld@Villager@@QAE_NAAW4RESOURCE_TYPE@@@Z");                            // 0x00769d6f    e8fc77feff
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00769d74    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x00769d78    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                          // 0x00769d80    df6c2410
    asm("push               0x000000a3");                                      // 0x00769d84    68a3000000
    asm("push               0x000000a3");                                      // 0x00769d89    68a3000000
    asm("{disp8} fsubr      dword ptr [esp + 0x10]");                          // 0x00769d8e    d86c2410
    asm("call               _jmp_addr_0x007a1400");                            // 0x00769d92    e869760300
    asm("push               eax");                                             // 0x00769d97    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                     // 0x00769d98    8b442410
    asm("push               eax");                                             // 0x00769d9c    50
    asm("mov.s              ecx, esi");                                        // 0x00769d9d    8bce
    asm("call               ?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");                            // 0x00769d9f    e82cfbffff
    asm("test               eax, eax");                                        // 0x00769da4    85c0
    asm("{disp8} jne        _jmp_addr_0x00769daf");                            // 0x00769da6    7507
    asm("mov.s              ecx, esi");                                        // 0x00769da8    8bce
    asm("call               ?SetTraderNothingToDo@Villager@@QAEIXZ");          // 0x00769daa    e8f1000000
    asm("_jmp_addr_0x00769daf:");
    asm("pop                esi");                                             // 0x00769daf    5e
    asm("add                esp, 0x14");                                       // 0x00769db0    83c414
    asm("ret");                                                                // 0x00769db3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ArrivesAtStoragePitForTraderDropOff__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x00769dc0    83ec0c
    asm("push               ebx");                                             // 0x00769dc3    53
    asm("push               ebp");                                             // 0x00769dc4    55
    asm("push               esi");                                             // 0x00769dc5    56
    asm("mov.s              esi, ecx");                                        // 0x00769dc6    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x00769dc8    8b06
    asm("push               edi");                                             // 0x00769dca    57
    asm("call               dword ptr [eax + 0x48]");                          // 0x00769dcb    ff5048
    asm("{disp32} mov       ebx, dword ptr [esi + 0x0000011c]");               // 0x00769dce    8b9e1c010000
    asm("push               ebx");                                             // 0x00769dd4    53
    asm("mov.s              ecx, esi");                                        // 0x00769dd5    8bce
    asm("mov.s              edi, eax");                                        // 0x00769dd7    8bf8
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");              // 0x00769dd9    e852c7feff
    asm("xor.s              ecx, ecx");                                        // 0x00769dde    33c9
    asm("{disp32} mov       cx, word ptr [esi + 0x000000f6]");                 // 0x00769de0    668b8ef6000000
    asm("xor.s              edx, edx");                                        // 0x00769de7    33d2
    asm("{disp32} mov       dx, word ptr [esi + 0x000000f4]");                 // 0x00769de9    668b96f4000000
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                     // 0x00769df0    894c2418
    asm("mov.s              ecx, esi");                                        // 0x00769df4    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                     // 0x00769df6    89542410
    asm("call               ?ArrivesAtStoragePitForDropOff@Villager@@QAEIXZ"); // 0x00769dfa    e8d1f8ffff
    asm("{disp8} mov        bp, word ptr [esp + 0x18]");                       // 0x00769dff    668b6c2418
    asm("sub                bp, word ptr [esi + 0x000000f6]");                 // 0x00769e04    662baef6000000
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                     // 0x00769e0b    89442414
    asm("{disp32} mov       ax, word ptr [esi + 0x000000f4]");                 // 0x00769e0f    668b86f4000000
    asm("sub                word ptr [esp + 0x10], ax");                       // 0x00769e16    6629442410
    asm("push               edi");                                             // 0x00769e1b    57
    asm("mov.s              ecx, esi");                                        // 0x00769e1c    8bce
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");              // 0x00769e1e    e80dc7feff
    asm("test               edi, edi");                                        // 0x00769e23    85ff
    asm("{disp8} je         _jmp_addr_0x00769e57");                            // 0x00769e25    7430
    asm("movsx              edx, word ptr [esp + 0x10]");                      // 0x00769e27    0fbf542410
    asm("movsx              ecx, bp");                                         // 0x00769e2c    0fbfcd
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                     // 0x00769e2f    894c2418
    asm("{disp8} fild       dword ptr [esp + 0x18]");                          // 0x00769e33    db442418
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                     // 0x00769e37    89542418
    asm("{disp32} fsubr     dword ptr [edi + 0x0000070c]");                    // 0x00769e3b    d8af0c070000
    asm("{disp32} fstp      dword ptr [edi + 0x0000070c]");                    // 0x00769e41    d99f0c070000
    asm("{disp8} fild       dword ptr [esp + 0x18]");                          // 0x00769e47    db442418
    asm("{disp32} fsubr     dword ptr [edi + 0x00000708]");                    // 0x00769e4b    d8af08070000
    asm("{disp32} fstp      dword ptr [edi + 0x00000708]");                    // 0x00769e51    d99f08070000
    asm("_jmp_addr_0x00769e57:");
    asm("test               ebx, ebx");                                        // 0x00769e57    85db
    asm("{disp8} je         _jmp_addr_0x00769e8b");                            // 0x00769e59    7430
    asm("movsx              ecx, word ptr [esp + 0x10]");                      // 0x00769e5b    0fbf4c2410
    asm("movsx              eax, bp");                                         // 0x00769e60    0fbfc5
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x00769e63    89442418
    asm("{disp8} fild       dword ptr [esp + 0x18]");                          // 0x00769e67    db442418
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                     // 0x00769e6b    894c2418
    asm("{disp32} fadd      dword ptr [ebx + 0x0000070c]");                    // 0x00769e6f    d8830c070000
    asm("{disp32} fstp      dword ptr [ebx + 0x0000070c]");                    // 0x00769e75    d99b0c070000
    asm("{disp8} fild       dword ptr [esp + 0x18]");                          // 0x00769e7b    db442418
    asm("{disp32} fadd      dword ptr [ebx + 0x00000708]");                    // 0x00769e7f    d88308070000
    asm("{disp32} fstp      dword ptr [ebx + 0x00000708]");                    // 0x00769e85    d99b08070000
    asm("_jmp_addr_0x00769e8b:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                     // 0x00769e8b    8b442414
    asm("pop                edi");                                             // 0x00769e8f    5f
    asm("pop                esi");                                             // 0x00769e90    5e
    asm("pop                ebp");                                             // 0x00769e91    5d
    asm("pop                ebx");                                             // 0x00769e92    5b
    asm("add                esp, 0x0c");                                       // 0x00769e93    83c40c
    asm("ret");                                                                // 0x00769e96    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetTraderNothingToDo__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00769ea0    56
    asm("mov.s              esi, ecx");                                        // 0x00769ea1    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x00769ea3    8b06
    asm("push               edi");                                             // 0x00769ea5    57
    asm("call               dword ptr [eax + 0x48]");                          // 0x00769ea6    ff5048
    asm("{disp32} mov       ecx, dword ptr [esi + 0x0000011c]");               // 0x00769ea9    8b8e1c010000
    asm("push               ecx");                                             // 0x00769eaf    51
    asm("mov.s              ecx, esi");                                        // 0x00769eb0    8bce
    asm("mov.s              edi, eax");                                        // 0x00769eb2    8bf8
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");              // 0x00769eb4    e877c6feff
    asm("mov.s              ecx, esi");                                        // 0x00769eb9    8bce
    asm("call               ?SetDiscipleNothingToDo@Villager@@QAE_NXZ");       // 0x00769ebb    e8b0a1feff
    asm("test               eax, eax");                                        // 0x00769ec0    85c0
    asm("push               edi");                                             // 0x00769ec2    57
    asm("mov.s              ecx, esi");                                        // 0x00769ec3    8bce
    asm("{disp8} jne        _jmp_addr_0x00769ed1");                            // 0x00769ec5    750a
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");              // 0x00769ec7    e864c6feff
    asm("pop                edi");                                             // 0x00769ecc    5f
    asm("xor.s              eax, eax");                                        // 0x00769ecd    33c0
    asm("pop                esi");                                             // 0x00769ecf    5e
    asm("ret");                                                                // 0x00769ed0    c3
    asm("_jmp_addr_0x00769ed1:");
    asm("call               ?SetTown@Villager@@QAEXPAVTown@@@Z");              // 0x00769ed1    e85ac6feff
    asm("pop                edi");                                             // 0x00769ed6    5f
    asm("mov                eax, 0x00000001");                                 // 0x00769ed7    b801000000
    asm("pop                esi");                                             // 0x00769edc    5e
    asm("ret");                                                                // 0x00769edd    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupBreederDisciple__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x2c");                                       // 0x00769ee0    83ec2c
    asm("push               ebx");                                             // 0x00769ee3    53
    asm("push               ebp");                                             // 0x00769ee4    55
    asm("push               esi");                                             // 0x00769ee5    56
    asm("mov.s              ebx, ecx");                                        // 0x00769ee6    8bd9
    asm("call               ?IsPregnant@Villager@@QAE_NXZ");                   // 0x00769ee8    e82383feff
    asm("test               eax, eax");                                        // 0x00769eed    85c0
    asm("{disp8} je         _jmp_addr_0x00769f09");                            // 0x00769eef    7418
    asm("mov                eax, dword ptr [ebx]");                            // 0x00769ef1    8b03
    asm("push               0x24");                                            // 0x00769ef3    6a24
    asm("mov.s              ecx, ebx");                                        // 0x00769ef5    8bcb
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x00769ef7    ff90e8080000
    asm("pop                esi");                                             // 0x00769efd    5e
    asm("pop                ebp");                                             // 0x00769efe    5d
    asm("mov                eax, 0x00000001");                                 // 0x00769eff    b801000000
    asm("pop                ebx");                                             // 0x00769f04    5b
    asm("add                esp, 0x2c");                                       // 0x00769f05    83c42c
    asm("ret");                                                                // 0x00769f08    c3
    asm("_jmp_addr_0x00769f09:");
    asm("mov                edx, dword ptr [ebx]");                            // 0x00769f09    8b13
    asm("mov.s              ecx, ebx");                                        // 0x00769f0b    8bcb
    asm("call               dword ptr [edx + 0x48]");                          // 0x00769f0d    ff5248
    asm("mov.s              ecx, eax");                                        // 0x00769f10    8bc8
    asm("xor.s              ebp, ebp");                                        // 0x00769f12    33ed
    asm("cmp.s              ecx, ebp");                                        // 0x00769f14    3bcd
    asm("{disp32} je        _jmp_addr_0x0076a19d");                            // 0x00769f16    0f8481020000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x0000061c]");               // 0x00769f1c    8b811c060000
    asm("{disp32} mov       esi, dword ptr [ecx + 0x00000650]");               // 0x00769f22    8bb150060000
    asm("{disp8} mov        edx, dword ptr [ecx + 0x28]");                     // 0x00769f28    8b5128
    asm("sub.s              eax, esi");                                        // 0x00769f2b    2bc6
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00769f2d    89442410
    asm("{disp8} fild       dword ptr [esp + 0x10]");                          // 0x00769f31    db442410
    asm("{disp32} fcomp     dword ptr [edx + 0x0000014c]");                    // 0x00769f35    d89a4c010000
    asm("fnstsw             ax");                                              // 0x00769f3b    dfe0
    asm("test               ah, 0x01");                                        // 0x00769f3d    f6c401
    asm("{disp32} je        _jmp_addr_0x0076a19d");                            // 0x00769f40    0f8457020000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000618]");               // 0x00769f46    8b8118060000
    asm("sub                eax, dword ptr [ecx + 0x00000644]");               // 0x00769f4c    2b8144060000
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00769f52    89442410
    asm("{disp8} fild       dword ptr [esp + 0x10]");                          // 0x00769f56    db442410
    asm("{disp32} fld       dword ptr [edx + 0x0000014c]");                    // 0x00769f5a    d9824c010000
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2418]");                // 0x00769f60    d80d18b48a00
    asm("fcompp");                                                             // 0x00769f66    ded9
    asm("fnstsw             ax");                                              // 0x00769f68    dfe0
    asm("test               ah, 0x41");                                        // 0x00769f6a    f6c441
    asm("{disp32} jne       _jmp_addr_0x0076a19d");                            // 0x00769f6d    0f852a020000
    asm("push               edi");                                             // 0x00769f73    57
    asm("{disp32} mov       edi, dword ptr [ecx + 0x00000754]");               // 0x00769f74    8bb954070000
    asm("xor.s              esi, esi");                                        // 0x00769f7a    33f6
    asm("cmp.s              edi, ebp");                                        // 0x00769f7c    3bfd
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x43960000");              // 0x00769f7e    c744241000009643
    asm("{disp8} je         _jmp_addr_0x00769fb9");                            // 0x00769f86    7431
    asm("{disp8} lea        ebp, dword ptr [ebx + 0x14]");                     // 0x00769f88    8d6b14
    asm("_jmp_addr_0x00769f8b:");
    asm("{disp8} lea        ecx, dword ptr [edi + 0x14]");                     // 0x00769f8b    8d4f14
    asm("push               ecx");                                             // 0x00769f8e    51
    asm("push               ebp");                                             // 0x00769f8f    55
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x00769f90    e8db2dfeff
    asm("{disp8} fcom       dword ptr [esp + 0x18]");                          // 0x00769f95    d8542418
    asm("add                esp, 0x08");                                       // 0x00769f99    83c408
    asm("fnstsw             ax");                                              // 0x00769f9c    dfe0
    asm("test               ah, 0x01");                                        // 0x00769f9e    f6c401
    asm("{disp8} je         _jmp_addr_0x00769fab");                            // 0x00769fa1    7408
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                          // 0x00769fa3    d95c2410
    asm("mov.s              esi, edi");                                        // 0x00769fa7    8bf7
    asm("{disp8} jmp        _jmp_addr_0x00769fad");                            // 0x00769fa9    eb02
    asm("_jmp_addr_0x00769fab:");
    asm("fstp               st(0)");                                           // 0x00769fab    ddd8
    asm("_jmp_addr_0x00769fad:");
    asm("{disp32} mov       edi, dword ptr [edi + 0x0000009c]");               // 0x00769fad    8bbf9c000000
    asm("test               edi, edi");                                        // 0x00769fb3    85ff
    asm("{disp8} jne        _jmp_addr_0x00769f8b");                            // 0x00769fb5    75d4
    asm("xor.s              ebp, ebp");                                        // 0x00769fb7    33ed
    asm("_jmp_addr_0x00769fb9:");
    asm("cmp.s              esi, ebp");                                        // 0x00769fb9    3bf5
    asm("{disp8} mov        dword ptr [esp + 0x18], ebp");                     // 0x00769fbb    896c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebp");                     // 0x00769fbf    896c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");              // 0x00769fc3    c744242000000000
    asm("pop                edi");                                             // 0x00769fcb    5f
    asm("{disp32} jne       _jmp_addr_0x0076a073");                            // 0x00769fcc    0f85a1000000
    asm("push               ebp");                                             // 0x00769fd2    55
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                     // 0x00769fd3    8d542424
    asm("push               edx");                                             // 0x00769fd7    52
    asm("mov.s              ecx, ebx");                                        // 0x00769fd8    8bcb
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                            // 0x00769fda    e8419efeff
    asm("mov                ecx, dword ptr [eax]");                            // 0x00769fdf    8b08
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x00769fe1    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x00769fe5    8b5004
    asm("push               0x00000159");                                      // 0x00769fe8    6859010000
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                     // 0x00769fed    8954241c
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x00769ff1    8b4008
    asm("push               0x00c24630");                                      // 0x00769ff4    683046c200
    asm("push               0x40000000");                                      // 0x00769ff9    6800000040
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                     // 0x00769ffe    89442428
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a002    e82945f7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x19c50]");               // 0x0076a007    d805502c8c00
    asm("add                esp, 0x08");                                       // 0x0076a00d    83c408
    asm("fstp               dword ptr [esp]");                                 // 0x0076a010    d91c24
    asm("push               0x00000159");                                      // 0x0076a013    6859010000
    asm("push               0x00c24630");                                      // 0x0076a018    683046c200
    asm("push               0x40c90fdb");                                      // 0x0076a01d    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a022    e80945f7ff
    asm("add                esp, 0x08");                                       // 0x0076a027    83c408
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                     // 0x0076a02a    8d4c2428
    asm("fstp               dword ptr [esp]");                                 // 0x0076a02e    d91c24
    asm("push               ecx");                                             // 0x0076a031    51
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076a032    e84935feff
    asm("add                esp, 0x0c");                                       // 0x0076a037    83c40c
    asm("push               eax");                                             // 0x0076a03a    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x30]");                     // 0x0076a03b    8d542430
    asm("push               edx");                                             // 0x0076a03f    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x0076a040    8d4c241c
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");              // 0x0076a044    e8d7b4e9ff
    asm("mov                ecx, dword ptr [eax]");                            // 0x0076a049    8b08
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x0076a04b    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x0076a04f    8b5004
    asm("push               0x000000e1");                                      // 0x0076a052    68e1000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x0076a057    8d4c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                     // 0x0076a05b    8954241c
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x0076a05f    8b4008
    asm("push               ecx");                                             // 0x0076a062    51
    asm("mov.s              ecx, ebx");                                        // 0x0076a063    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                     // 0x0076a065    89442424
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                            // 0x0076a069    e89297ffff
    asm("{disp32} jmp       _jmp_addr_0x0076a17b");                            // 0x0076a06e    e908010000
    asm("_jmp_addr_0x0076a073:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a073    8b16
    asm("{disp8} lea        eax, dword ptr [esp + 0x2c]");                     // 0x0076a075    8d44242c
    asm("push               eax");                                             // 0x0076a079    50
    asm("mov.s              ecx, esi");                                        // 0x0076a07a    8bce
    asm("call               dword ptr [edx + 0x104]");                         // 0x0076a07c    ff9204010000
    asm("mov                ecx, dword ptr [eax]");                            // 0x0076a082    8b08
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x0076a084    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x0076a088    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                     // 0x0076a08b    89542418
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x0076a08f    8b4008
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076a092    8d4c2414
    asm("push               ecx");                                             // 0x0076a096    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                     // 0x0076a097    8d5614
    asm("push               edx");                                             // 0x0076a09a    52
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                     // 0x0076a09b    89442424
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x0076a09f    e8cc31feff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                          // 0x0076a0a4    d95c2414
    asm("push               0x00000160");                                      // 0x0076a0a8    6860010000
    asm("push               0x00c24630");                                      // 0x0076a0ad    683046c200
    asm("push               0x2");                                             // 0x0076a0b2    6a02
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x0076a0b4    e85744f7ff
    asm("add                esp, 0x14");                                       // 0x0076a0b9    83c414
    asm("test               eax, eax");                                        // 0x0076a0bc    85c0
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x3f800000");              // 0x0076a0be    c74424100000803f
    asm("{disp8} jne        _jmp_addr_0x0076a0d0");                            // 0x0076a0c6    7508
    asm("{disp8} mov        dword ptr [esp + 0x10], 0xbf800000");              // 0x0076a0c8    c7442410000080bf
    asm("_jmp_addr_0x0076a0d0:");
    asm("push               0x00000160");                                      // 0x0076a0d0    6860010000
    asm("push               0x00c24630");                                      // 0x0076a0d5    683046c200
    asm("push               0x3f490fdb");                                      // 0x0076a0da    68db0f493f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a0df    e84c44f7ff
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a0e4    8b06
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                          // 0x0076a0e6    d84c241c
    asm("add                esp, 0x0c");                                       // 0x0076a0ea    83c40c
    asm("push               0x00000161");                                      // 0x0076a0ed    6861010000
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                          // 0x0076a0f2    d8442410
    asm("push               0x00c24630");                                      // 0x0076a0f6    683046c200
    asm("mov.s              ecx, esi");                                        // 0x0076a0fb    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                          // 0x0076a0fd    d95c2414
    asm("call               dword ptr [eax + 0x64]");                          // 0x0076a101    ff5064
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                     // 0x0076a104    d80db4a38a00
    asm("push               ecx");                                             // 0x0076a10a    51
    asm("fstp               dword ptr [esp]");                                 // 0x0076a10b    d91c24
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a10e    e81d44f7ff
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a113    8b16
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                          // 0x0076a115    d95c241c
    asm("add                esp, 0x0c");                                       // 0x0076a119    83c40c
    asm("mov.s              ecx, esi");                                        // 0x0076a11c    8bce
    asm("call               dword ptr [edx + 0x64]");                          // 0x0076a11e    ff5264
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                     // 0x0076a121    d80db4a38a00
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                     // 0x0076a127    8b4c240c
    asm("{disp8} lea        edx, dword ptr [esp + 0x2c]");                     // 0x0076a12b    8d54242c
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                          // 0x0076a12f    d8442410
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                          // 0x0076a133    d95c2410
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                     // 0x0076a137    8b442410
    asm("push               eax");                                             // 0x0076a13b    50
    asm("push               ecx");                                             // 0x0076a13c    51
    asm("push               edx");                                             // 0x0076a13d    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076a13e    e83d34feff
    asm("add                esp, 0x0c");                                       // 0x0076a143    83c40c
    asm("push               eax");                                             // 0x0076a146    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                     // 0x0076a147    8d442424
    asm("push               eax");                                             // 0x0076a14b    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x0076a14c    8d4c241c
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");              // 0x0076a150    e8cbb3e9ff
    asm("mov                ecx, dword ptr [eax]");                            // 0x0076a155    8b08
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x0076a157    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x0076a15b    8b5004
    asm("push               0x000000e1");                                      // 0x0076a15e    68e1000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x0076a163    8d4c2418
    asm("push               ecx");                                             // 0x0076a167    51
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                     // 0x0076a168    89542420
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x0076a16c    8b4008
    asm("push               esi");                                             // 0x0076a16f    56
    asm("mov.s              ecx, ebx");                                        // 0x0076a170    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                     // 0x0076a172    89442428
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                            // 0x0076a176    e8a53be8ff
    asm("_jmp_addr_0x0076a17b:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                     // 0x0076a17b    8d542414
    asm("push               edx");                                             // 0x0076a17f    52
    asm("{disp32} lea       ecx, dword ptr [ebx + 0x0000011c]");               // 0x0076a180    8d8b1c010000
    asm("{disp32} mov       dword ptr [ebx + 0x00000118], ebp");               // 0x0076a186    89ab18010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");      // 0x0076a18c    e86f77e7ff
    asm("pop                esi");                                             // 0x0076a191    5e
    asm("pop                ebp");                                             // 0x0076a192    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076a193    b801000000
    asm("pop                ebx");                                             // 0x0076a198    5b
    asm("add                esp, 0x2c");                                       // 0x0076a199    83c42c
    asm("ret");                                                                // 0x0076a19c    c3
    asm("_jmp_addr_0x0076a19d:");
    asm("pop                esi");                                             // 0x0076a19d    5e
    asm("pop                ebp");                                             // 0x0076a19e    5d
    asm("xor.s              eax, eax");                                        // 0x0076a19f    33c0
    asm("pop                ebx");                                             // 0x0076a1a1    5b
    asm("add                esp, 0x2c");                                       // 0x0076a1a2    83c42c
    asm("ret");                                                                // 0x0076a1a5    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall BreederDisciple__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076a1b0    56
    asm("mov.s              esi, ecx");                                        // 0x0076a1b1    8bf1
    asm("call               ?IsPregnant@Villager@@QAE_NXZ");                   // 0x0076a1b3    e85880feff
    asm("test               eax, eax");                                        // 0x0076a1b8    85c0
    asm("{disp8} jne        _jmp_addr_0x0076a200");                            // 0x0076a1ba    7544
    asm("push               eax");                                             // 0x0076a1bc    50
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a1bd    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076a1bf    8bce
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076a1c1    ff5048
    asm("mov.s              ecx, eax");                                        // 0x0076a1c4    8bc8
    asm("add                ecx, 0x34");                                       // 0x0076a1c6    83c134
    asm("call               _jmp_addr_0x007465d0");                            // 0x0076a1c9    e802c4fdff
    asm("cmp                dword ptr [eax + 0x08], 0x10");                    // 0x0076a1ce    83780810
    asm("{disp8} je         _jmp_addr_0x0076a200");                            // 0x0076a1d2    742c
    asm("xor.s              eax, eax");                                        // 0x0076a1d4    33c0
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                       // 0x0076a1d6    668b4658
    asm("test               ax, ax");                                          // 0x0076a1da    6685c0
    asm("{disp8} lea        ecx, dword ptr [eax + -0x01]");                    // 0x0076a1dd    8d48ff
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                       // 0x0076a1e0    66894e58
    asm("{disp8} jg         _jmp_addr_0x0076a20c");                            // 0x0076a1e4    7f26
    asm("push               0x000000e1");                                      // 0x0076a1e6    68e1000000
    asm("{disp32} lea       edx, dword ptr [esi + 0x0000011c]");               // 0x0076a1eb    8d961c010000
    asm("push               edx");                                             // 0x0076a1f1    52
    asm("mov.s              ecx, esi");                                        // 0x0076a1f2    8bce
    asm("call               ?SetupWander@Villager@@QAEIAAUJustWholeMapXZ@@W4VILLAGER_STATES@@@Z");                            // 0x0076a1f4    e8f70a0000
    asm("mov                eax, 0x00000001");                                 // 0x0076a1f9    b801000000
    asm("pop                esi");                                             // 0x0076a1fe    5e
    asm("ret");                                                                // 0x0076a1ff    c3
    asm("_jmp_addr_0x0076a200:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a200    8b06
    asm("push               0x24");                                            // 0x0076a202    6a24
    asm("mov.s              ecx, esi");                                        // 0x0076a204    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076a206    ff90e8080000
    asm("_jmp_addr_0x0076a20c:");
    asm("mov                eax, 0x00000001");                                 // 0x0076a20c    b801000000
    asm("pop                esi");                                             // 0x0076a211    5e
    asm("ret");                                                                // 0x0076a212    c3
    __builtin_unreachable();
}

bool32_t __fastcall MissionaryDisciple__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076a220    56
    asm("push               edi");                                             // 0x0076a221    57
    asm("push               0x0");                                             // 0x0076a222    6a00
    asm("push               0x0");                                             // 0x0076a224    6a00
    asm("mov.s              esi, ecx");                                        // 0x0076a226    8bf1
    asm("push               0x0");                                             // 0x0076a228    6a00
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                     // 0x0076a22a    8d4614
    asm("push               -0x1");                                            // 0x0076a22d    6aff
    asm("push               eax");                                             // 0x0076a22f    50
    asm("call               _jmp_addr_0x0074dd70");                            // 0x0076a230    e83b3bfeff
    asm("mov.s              edi, eax");                                        // 0x0076a235    8bf8
    asm("add                esp, 0x14");                                       // 0x0076a237    83c414
    asm("test               edi, edi");                                        // 0x0076a23a    85ff
    asm("{disp8} je         _jmp_addr_0x0076a27b");                            // 0x0076a23c    743d
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a23e    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076a240    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076a242    ff5248
    asm("mov                edx, dword ptr [eax]");                            // 0x0076a245    8b10
    asm("mov.s              ecx, eax");                                        // 0x0076a247    8bc8
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076a249    ff521c
    asm("push               eax");                                             // 0x0076a24c    50
    asm("mov                eax, dword ptr [edi]");                            // 0x0076a24d    8b07
    asm("push               esi");                                             // 0x0076a24f    56
    asm("mov.s              ecx, edi");                                        // 0x0076a250    8bcf
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076a252    ff5048
    asm("mov.s              ecx, eax");                                        // 0x0076a255    8bc8
    asm("call               _jmp_addr_0x00740fd0");                            // 0x0076a257    e8746dfdff
    asm("push               edi");                                             // 0x0076a25c    57
    asm("mov.s              ecx, esi");                                        // 0x0076a25d    8bce
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x0076a25f    e8dcbffeff
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a264    8b16
    asm("push               0x000000ea");                                      // 0x0076a266    68ea000000
    asm("mov.s              ecx, esi");                                        // 0x0076a26b    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076a26d    ff92e8080000
    asm("pop                edi");                                             // 0x0076a273    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076a274    b801000000
    asm("pop                esi");                                             // 0x0076a279    5e
    asm("ret");                                                                // 0x0076a27a    c3
    asm("_jmp_addr_0x0076a27b:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a27b    8b06
    asm("push               0x000000a3");                                      // 0x0076a27d    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076a282    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076a284    ff90e8080000
    asm("pop                edi");                                             // 0x0076a28a    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076a28b    b801000000
    asm("pop                esi");                                             // 0x0076a290    5e
    asm("ret");                                                                // 0x0076a291    c3
    __builtin_unreachable();
}

bool32_t __fastcall EnterBreeder__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("{disp32} mov       eax, dword ptr [_game]");                          // 0x0076a2a0    a15c19d000
    asm("push               esi");                                             // 0x0076a2a5    56
    asm("mov.s              esi, ecx");                                        // 0x0076a2a6    8bf1
    asm("{disp8} mov        ecx, dword ptr [eax + 0x14]");                     // 0x0076a2a8    8b4814
    asm("test               ch, -0x80");                                       // 0x0076a2ab    f6c580
    asm("{disp8} jne        _jmp_addr_0x0076a2c5");                            // 0x0076a2ae    7515
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a2b0    8b16
    asm("push               0x1");                                             // 0x0076a2b2    6a01
    asm("mov.s              ecx, esi");                                        // 0x0076a2b4    8bce
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076a2b6    ff521c
    asm("push               eax");                                             // 0x0076a2b9    50
    asm("push               0x1e");                                            // 0x0076a2ba    6a1e
    asm("push               esi");                                             // 0x0076a2bc    56
    asm("call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z");                // 0x0076a2bd    e8ae9af7ff
    asm("add                esp, 0x10");                                       // 0x0076a2c2    83c410
    asm("_jmp_addr_0x0076a2c5:");
    asm("mov                eax, 0x00000001");                                 // 0x0076a2c5    b801000000
    asm("pop                esi");                                             // 0x0076a2ca    5e
    asm("ret                0x0008");                                          // 0x0076a2cb    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitBreeder__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               0x1e");                                            // 0x0076a2d0    6a1e
    asm("push               ecx");                                             // 0x0076a2d2    51
    asm("call               _jmp_addr_0x006e4780");                            // 0x0076a2d3    e8a8a4f7ff
    asm("add                esp, 0x08");                                       // 0x0076a2d8    83c408
    asm("mov                eax, 0x00000001");                                 // 0x0076a2db    b801000000
    asm("ret                0x0004");                                          // 0x0076a2e0    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall AtStructureRemoveResource__8VillagerFP13MultiMapFixed13RESOURCE_TYPEUlPb(struct Villager* this, const void* edx, struct MultiMapFixed* param_1, enum RESOURCE_TYPE param_2, unsigned long param_3, bool* param_4)
{
    asm("sub                esp, 0x18");                                       // 0x0076a2f0    83ec18
    asm("push               ebx");                                             // 0x0076a2f3    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x24]");                     // 0x0076a2f4    8b5c2424
    asm("push               ebp");                                             // 0x0076a2f8    55
    asm("push               esi");                                             // 0x0076a2f9    56
    asm("push               edi");                                             // 0x0076a2fa    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x2c]");                     // 0x0076a2fb    8b7c242c
    asm("mov.s              esi, ecx");                                        // 0x0076a2ff    8bf1
    asm("push               0x1");                                             // 0x0076a301    6a01
    asm("xor.s              eax, eax");                                        // 0x0076a303    33c0
    asm("push               esi");                                             // 0x0076a305    56
    asm("push               ebx");                                             // 0x0076a306    53
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                     // 0x0076a307    8d4c2428
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                     // 0x0076a30b    8944241c
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                     // 0x0076a30f    89442420
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                     // 0x0076a313    89442424
    asm("mov                eax, dword ptr [edi]");                            // 0x0076a317    8b07
    asm("push               ecx");                                             // 0x0076a319    51
    asm("mov.s              ecx, edi");                                        // 0x0076a31a    8bcf
    asm("call               dword ptr [eax + 0x8d4]");                         // 0x0076a31c    ff90d4080000
    asm("mov                edx, dword ptr [eax]");                            // 0x0076a322    8b10
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                     // 0x0076a324    89542410
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076a328    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x0076a32b    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                     // 0x0076a32f    8b5008
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a332    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076a334    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                     // 0x0076a336    89542418
    asm("call               dword ptr [eax + 0x60]");                          // 0x0076a33a    ff5060
    asm("push               ecx");                                             // 0x0076a33d    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076a33e    8d4c2414
    asm("fstp               dword ptr [esp]");                                 // 0x0076a342    d91c24
    asm("push               ecx");                                             // 0x0076a345    51
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x0076a346    8d4e14
    asm("call               @IsCloseToEqual__9MapCoordsCFRC9MapCoordsf@16");   // 0x0076a349    e872b0e9ff
    asm("cmp                eax, 0x01");                                       // 0x0076a34e    83f801
    asm("{disp8} jne        _jmp_addr_0x0076a384");                            // 0x0076a351    7531
    asm("{disp8} mov        ebp, dword ptr [esp + 0x34]");                     // 0x0076a353    8b6c2434
    asm("push               ebp");                                             // 0x0076a357    55
    asm("push               ebx");                                             // 0x0076a358    53
    asm("push               edi");                                             // 0x0076a359    57
    asm("mov.s              ecx, esi");                                        // 0x0076a35a    8bce
    asm("call               ?GetResourceFrom@Villager@@QAEIPAVObject@@W4RESOURCE_TYPE@@F@Z");                            // 0x0076a35c    e82f90feff
    asm("movsx              eax, ax");                                         // 0x0076a361    0fbfc0
    asm("test               eax, eax");                                        // 0x0076a364    85c0
    asm("{disp8} jne        _jmp_addr_0x0076a372");                            // 0x0076a366    750a
    asm("pop                edi");                                             // 0x0076a368    5f
    asm("pop                esi");                                             // 0x0076a369    5e
    asm("pop                ebp");                                             // 0x0076a36a    5d
    asm("pop                ebx");                                             // 0x0076a36b    5b
    asm("add                esp, 0x18");                                       // 0x0076a36c    83c418
    asm("ret                0x0010");                                          // 0x0076a36f    c21000
    asm("_jmp_addr_0x0076a372:");
    asm("cmp.s              eax, ebp");                                        // 0x0076a372    3bc5
    asm("pop                edi");                                             // 0x0076a374    5f
    asm("sbb.s              eax, eax");                                        // 0x0076a375    1bc0
    asm("pop                esi");                                             // 0x0076a377    5e
    asm("and                eax, 0x23");                                       // 0x0076a378    83e023
    asm("pop                ebp");                                             // 0x0076a37b    5d
    asm("inc                eax");                                             // 0x0076a37c    40
    asm("pop                ebx");                                             // 0x0076a37d    5b
    asm("add                esp, 0x18");                                       // 0x0076a37e    83c418
    asm("ret                0x0010");                                          // 0x0076a381    c21000
    asm("_jmp_addr_0x0076a384:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a384    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076a386    8bce
    asm("call               dword ptr [edx + 0xb04]");                         // 0x0076a388    ff92040b0000
    asm("mov.s              ecx, esi");                                        // 0x0076a38e    8bce
    asm("push               eax");                                             // 0x0076a390    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x0076a391    8d442414
    asm("push               eax");                                             // 0x0076a395    50
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076a396    e8f584e8ff
    asm("pop                edi");                                             // 0x0076a39b    5f
    asm("pop                esi");                                             // 0x0076a39c    5e
    asm("pop                ebp");                                             // 0x0076a39d    5d
    asm("mov                eax, 0x00000024");                                 // 0x0076a39e    b824000000
    asm("pop                ebx");                                             // 0x0076a3a3    5b
    asm("add                esp, 0x18");                                       // 0x0076a3a4    83c418
    asm("ret                0x0010");                                          // 0x0076a3a7    c21000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall AtStructureAddResource__8VillagerFP13MultiMapFixed13RESOURCE_TYPERUlb(struct Villager* this, const void* edx, struct MultiMapFixed* param_1, enum RESOURCE_TYPE param_2, unsigned long* param_3, bool param_4)
{
    asm("sub                esp, 0x18");                                       // 0x0076a3b0    83ec18
    asm("push               ebx");                                             // 0x0076a3b3    53
    asm("push               ebp");                                             // 0x0076a3b4    55
    asm("push               esi");                                             // 0x0076a3b5    56
    asm("mov.s              esi, ecx");                                        // 0x0076a3b6    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a3b8    8b06
    asm("xor.s              ebp, ebp");                                        // 0x0076a3ba    33ed
    asm("push               edi");                                             // 0x0076a3bc    57
    asm("{disp8} mov        dword ptr [esp + 0x10], ebp");                     // 0x0076a3bd    896c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                     // 0x0076a3c1    896c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], ebp");                     // 0x0076a3c5    896c2418
    asm("call               dword ptr [eax + 0x1c]");                          // 0x0076a3c9    ff501c
    asm("{disp8} mov        edi, dword ptr [esp + 0x2c]");                     // 0x0076a3cc    8b7c242c
    asm("mov                edx, dword ptr [edi]");                            // 0x0076a3d0    8b17
    asm("mov.s              ecx, edi");                                        // 0x0076a3d2    8bcf
    asm("mov.s              ebx, eax");                                        // 0x0076a3d4    8bd8
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076a3d6    ff521c
    asm("cmp.s              ebx, eax");                                        // 0x0076a3d9    3bd8
    asm("{disp8} jne        _jmp_addr_0x0076a3df");                            // 0x0076a3db    7502
    asm("xor.s              ebx, ebx");                                        // 0x0076a3dd    33db
    asm("_jmp_addr_0x0076a3df:");
    asm("test               ebx, ebx");                                        // 0x0076a3df    85db
    asm("{disp8} je         _jmp_addr_0x0076a3ec");                            // 0x0076a3e1    7409
    asm("mov.s              ecx, ebx");                                        // 0x0076a3e3    8bcb
    asm("call               _jmp_addr_0x0064a9c0");                            // 0x0076a3e5    e8d605eeff
    asm("mov.s              ebp, eax");                                        // 0x0076a3ea    8be8
    asm("_jmp_addr_0x0076a3ec:");
    asm("{disp8} mov        ebx, dword ptr [esp + 0x30]");                     // 0x0076a3ec    8b5c2430
    asm("mov                eax, dword ptr [edi]");                            // 0x0076a3f0    8b07
    asm("push               0x0");                                             // 0x0076a3f2    6a00
    asm("push               esi");                                             // 0x0076a3f4    56
    asm("push               ebx");                                             // 0x0076a3f5    53
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                     // 0x0076a3f6    8d4c2428
    asm("push               ecx");                                             // 0x0076a3fa    51
    asm("mov.s              ecx, edi");                                        // 0x0076a3fb    8bcf
    asm("call               dword ptr [eax + 0x8d4]");                         // 0x0076a3fd    ff90d4080000
    asm("mov                edx, dword ptr [eax]");                            // 0x0076a403    8b10
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                     // 0x0076a405    89542410
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076a409    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x0076a40c    894c2414
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                     // 0x0076a410    8b5008
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a413    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076a415    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                     // 0x0076a417    89542418
    asm("call               dword ptr [eax + 0x130]");                         // 0x0076a41b    ff9030010000
    asm("push               ecx");                                             // 0x0076a421    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076a422    8d4c2414
    asm("fstp               dword ptr [esp]");                                 // 0x0076a426    d91c24
    asm("push               ecx");                                             // 0x0076a429    51
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x0076a42a    8d4e14
    asm("call               @IsCloseToEqual__9MapCoordsCFRC9MapCoordsf@16");   // 0x0076a42d    e88eafe9ff
    asm("cmp                eax, 0x01");                                       // 0x0076a432    83f801
    asm("{disp8} jne        _jmp_addr_0x0076a484");                            // 0x0076a435    754d
    asm("mov                edx, dword ptr [edi]");                            // 0x0076a437    8b17
    asm("xor.s              eax, eax");                                        // 0x0076a439    33c0
    asm("test               ebp, ebp");                                        // 0x0076a43b    85ed
    asm("setne              al");                                              // 0x0076a43d    0f95c0
    asm("push               eax");                                             // 0x0076a440    50
    asm("push               0x0");                                             // 0x0076a441    6a00
    asm("push               0x0");                                             // 0x0076a443    6a00
    asm("push               ebp");                                             // 0x0076a445    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x44]");                     // 0x0076a446    8b6c2444
    asm("{disp8} mov        ecx, dword ptr [ebp + 0x00]");                     // 0x0076a44a    8b4d00
    asm("push               ecx");                                             // 0x0076a44d    51
    asm("push               ebx");                                             // 0x0076a44e    53
    asm("mov.s              ecx, edi");                                        // 0x0076a44f    8bcf
    asm("call               dword ptr [edx + 0x9c]");                          // 0x0076a451    ff929c000000
    asm("mov.s              edi, eax");                                        // 0x0076a457    8bf8
    asm("test               edi, edi");                                        // 0x0076a459    85ff
    asm("{disp8} je         _jmp_addr_0x0076a478");                            // 0x0076a45b    741b
    asm("push               edi");                                             // 0x0076a45d    57
    asm("push               ebx");                                             // 0x0076a45e    53
    asm("mov.s              ecx, esi");                                        // 0x0076a45f    8bce
    asm("call               ?DropResource@Villager@@QAEGW4RESOURCE_TYPE@@G@Z");// 0x0076a461    e84a6dfeff
    asm("{disp8} mov        dword ptr [ebp + 0x00], edi");                     // 0x0076a466    897d00
    asm("pop                edi");                                             // 0x0076a469    5f
    asm("pop                esi");                                             // 0x0076a46a    5e
    asm("pop                ebp");                                             // 0x0076a46b    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076a46c    b801000000
    asm("pop                ebx");                                             // 0x0076a471    5b
    asm("add                esp, 0x18");                                       // 0x0076a472    83c418
    asm("ret                0x0010");                                          // 0x0076a475    c21000
    asm("_jmp_addr_0x0076a478:");
    asm("pop                edi");                                             // 0x0076a478    5f
    asm("pop                esi");                                             // 0x0076a479    5e
    asm("pop                ebp");                                             // 0x0076a47a    5d
    asm("xor.s              eax, eax");                                        // 0x0076a47b    33c0
    asm("pop                ebx");                                             // 0x0076a47d    5b
    asm("add                esp, 0x18");                                       // 0x0076a47e    83c418
    asm("ret                0x0010");                                          // 0x0076a481    c21000
    asm("_jmp_addr_0x0076a484:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a484    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076a486    8bce
    asm("call               dword ptr [edx + 0xb04]");                         // 0x0076a488    ff92040b0000
    asm("mov.s              ecx, esi");                                        // 0x0076a48e    8bce
    asm("push               eax");                                             // 0x0076a490    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x0076a491    8d442414
    asm("push               eax");                                             // 0x0076a495    50
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076a496    e8f583e8ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                     // 0x0076a49b    8b4c2434
    asm("pop                edi");                                             // 0x0076a49f    5f
    asm("pop                esi");                                             // 0x0076a4a0    5e
    asm("pop                ebp");                                             // 0x0076a4a1    5d
    asm("mov                dword ptr [ecx], 0x00000000");                     // 0x0076a4a2    c70100000000
    asm("mov                eax, 0x00000024");                                 // 0x0076a4a8    b824000000
    asm("pop                ebx");                                             // 0x0076a4ad    5b
    asm("add                esp, 0x18");                                       // 0x0076a4ae    83c418
    asm("ret                0x0010");                                          // 0x0076a4b1    c21000
    __builtin_unreachable();
}

bool __fastcall SetDying__8VillagerFv(struct Object* this)
{
    asm("push               esi");                                             // 0x0076a4c0    56
    asm("mov.s              esi, ecx");                                        // 0x0076a4c1    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a4c3    8b06
    asm("push               edi");                                             // 0x0076a4c5    57
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076a4c6    ff5048
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000b4]");                 // 0x0076a4c9    8a8eb4000000
    asm("and                cl, 0x01");                                        // 0x0076a4cf    80e101
    asm("cmp                cl, 0x01");                                        // 0x0076a4d2    80f901
    asm("mov.s              edi, eax");                                        // 0x0076a4d5    8bf8
    asm("{disp8} je         _jmp_addr_0x0076a506");                            // 0x0076a4d7    742d
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a4d9    8b16
    asm("push               0x0");                                             // 0x0076a4db    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076a4dd    8bce
    asm("call               dword ptr [edx + 0x5b0]");                         // 0x0076a4df    ff92b0050000
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a4e5    8b06
    asm("push               0xe");                                             // 0x0076a4e7    6a0e
    asm("mov.s              ecx, esi");                                        // 0x0076a4e9    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076a4eb    ff90e8080000
    asm("or                 byte ptr [esi + 0xb4], 1");                        // 0x0076a4f1    808eb400000001
    asm("mov.s              ecx, esi");                                        // 0x0076a4f8    8bce
    asm("call               ?DeleteDependancys@Villager@@QAEXXZ");             // 0x0076a4fa    e86158feff
    asm("or                 byte ptr [esi + 0xb4], 0x30");                     // 0x0076a4ff    808eb400000030
    asm("_jmp_addr_0x0076a506:");
    asm("test               edi, edi");                                        // 0x0076a506    85ff
    asm("{disp8} je         _jmp_addr_0x0076a530");                            // 0x0076a508    7426
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00000748]");               // 0x0076a50a    8b8f48070000
    asm("test               ecx, ecx");                                        // 0x0076a510    85c9
    asm("{disp8} je         _jmp_addr_0x0076a530");                            // 0x0076a512    741c
    asm("mov                edx, dword ptr [ecx]");                            // 0x0076a514    8b11
    asm("call               dword ptr [edx + 0xd4]");                          // 0x0076a516    ff92d4000000
    asm("test               eax, eax");                                        // 0x0076a51c    85c0
    asm("{disp8} je         _jmp_addr_0x0076a530");                            // 0x0076a51e    7410
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                     // 0x0076a520    8b4628
    asm("{disp32} mov       cx, word ptr [eax + 0x00000294]");                 // 0x0076a523    668b8894020000
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                       // 0x0076a52a    66894e58
    asm("{disp8} jmp        _jmp_addr_0x0076a53e");                            // 0x0076a52e    eb0e
    asm("_jmp_addr_0x0076a530:");
    asm("{disp8} mov        edx, dword ptr [esi + 0x28]");                     // 0x0076a530    8b5628
    asm("{disp32} mov       ax, word ptr [edx + 0x00000290]");                 // 0x0076a533    668b8290020000
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                       // 0x0076a53a    66894658
    asm("_jmp_addr_0x0076a53e:");
    asm("{disp32} mov       al, byte ptr [esi + 0x000000e0]");                 // 0x0076a53e    8a86e0000000
    asm("mov                ecx, 0x00000040");                                 // 0x0076a544    b940000000
    asm("test               cl, al");                                          // 0x0076a549    84c1
    asm("{disp8} jne        _jmp_addr_0x0076a55f");                            // 0x0076a54b    7512
    asm("{disp32} mov       eax, dword ptr [_game]");                          // 0x0076a54d    a15c19d000
    asm("dec                dword ptr [eax + 0x00205a54]");                    // 0x0076a552    ff88545a2000
    asm("or                 word ptr [esi + 0xe0], cx");                       // 0x0076a558    66098ee0000000
    asm("_jmp_addr_0x0076a55f:");
    asm("pop                edi");                                             // 0x0076a55f    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076a560    b801000000
    asm("pop                esi");                                             // 0x0076a565    5e
    asm("ret");                                                                // 0x0076a566    c3
    __builtin_unreachable();
}

bool __fastcall Dying__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                             // 0x0076a570    56
    asm("mov.s              esi, ecx");                                        // 0x0076a571    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a573    8b06
    asm("call               dword ptr [eax + 0x444]");                         // 0x0076a575    ff9044040000
    asm("cmp                eax, 0x07");                                       // 0x0076a57b    83f807
    asm("{disp8} je         _jmp_addr_0x0076a58d");                            // 0x0076a57e    740d
    asm("push               0x1");                                             // 0x0076a580    6a01
    asm("push               0xf");                                             // 0x0076a582    6a0f
    asm("mov.s              ecx, esi");                                        // 0x0076a584    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076a586    e83525e8ff
    asm("{disp8} jmp        _jmp_addr_0x0076a599");                            // 0x0076a58b    eb0c
    asm("_jmp_addr_0x0076a58d:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a58d    8b16
    asm("push               0xf");                                             // 0x0076a58f    6a0f
    asm("mov.s              ecx, esi");                                        // 0x0076a591    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076a593    ff92e8080000
    asm("_jmp_addr_0x0076a599:");
    asm("test               byte ptr [esi + 0x000000e0], 0x04");               // 0x0076a599    f686e000000004
    asm("{disp8} jne        _jmp_addr_0x0076a5cd");                            // 0x0076a5a0    752b
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a5a2    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076a5a4    8bce
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076a5a6    ff5048
    asm("test               eax, eax");                                        // 0x0076a5a9    85c0
    asm("{disp8} je         _jmp_addr_0x0076a5be");                            // 0x0076a5ab    7411
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a5ad    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076a5af    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076a5b1    ff5248
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000748]");               // 0x0076a5b4    8b8848070000
    asm("test               ecx, ecx");                                        // 0x0076a5ba    85c9
    asm("{disp8} jne        _jmp_addr_0x0076a5cd");                            // 0x0076a5bc    750f
    asm("_jmp_addr_0x0076a5be:");
    asm("push               0x0");                                             // 0x0076a5be    6a00
    asm("push               0x0");                                             // 0x0076a5c0    6a00
    asm("push               0x17");                                            // 0x0076a5c2    6a17
    asm("push               esi");                                             // 0x0076a5c4    56
    asm("call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z");                // 0x0076a5c5    e8a697f7ff
    asm("add                esp, 0x10");                                       // 0x0076a5ca    83c410
    asm("_jmp_addr_0x0076a5cd:");
    asm("mov                eax, 0x00000001");                                 // 0x0076a5cd    b801000000
    asm("pop                esi");                                             // 0x0076a5d2    5e
    asm("ret");                                                                // 0x0076a5d3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall Dead__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                             // 0x0076a5e0    56
    asm("mov.s              esi, ecx");                                        // 0x0076a5e1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esi + 0x44]");                     // 0x0076a5e3    8b4e44
    asm("test               ecx, ecx");                                        // 0x0076a5e6    85c9
    asm("push               edi");                                             // 0x0076a5e8    57
    asm("{disp8} je         _jmp_addr_0x0076a5f9");                            // 0x0076a5e9    740e
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076a5eb    8b01
    asm("push               0x0");                                             // 0x0076a5ed    6a00
    asm("call               dword ptr [eax + 0xc]");                           // 0x0076a5ef    ff500c
    asm("{disp8} mov        dword ptr [esi + 0x44], 0x00000000");              // 0x0076a5f2    c7464400000000
    asm("_jmp_addr_0x0076a5f9:");
    asm("{disp32} mov       al, byte ptr [_villager_states_byte_0x00db9e58]"); // 0x0076a5f9    a058b1dc00
    asm("test               al, 0x01");                                        // 0x0076a5fe    a801
    asm("{disp8} jne        _jmp_addr_0x0076a626");                            // 0x0076a600    7524
    asm("{disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");          // 0x0076a602    8b0d34fee900
    asm("or                 al, 1");                                           // 0x0076a608    0c01
    asm("{disp32} mov       byte ptr [_villager_states_byte_0x00db9e58], al"); // 0x0076a60a    a258b1dc00
    asm("mov                edx, dword ptr [ecx]");                            // 0x0076a60f    8b11
    asm("mov                eax, 0x000001ff");                                 // 0x0076a611    b8ff010000
    asm("cmp.s              edx, eax");                                        // 0x0076a616    3bd0
    asm("{disp8} jg         _jmp_addr_0x0076a61c");                            // 0x0076a618    7f02
    asm("xor.s              eax, eax");                                        // 0x0076a61a    33c0
    asm("_jmp_addr_0x0076a61c:");
    asm("{disp8} mov        ecx, dword ptr [ecx + eax * 0x4 + 0x04]");         // 0x0076a61c    8b4c8104
    asm("{disp32} mov       dword ptr [data_bytes + 0x405164], ecx");          // 0x0076a620    890d64b1dc00
    asm("_jmp_addr_0x0076a626:");
    asm("test               byte ptr [esi + 0x25], 0x04");                     // 0x0076a626    f6462504
    asm("{disp32} jne       _jmp_addr_0x0076a770");                            // 0x0076a62a    0f8540010000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                     // 0x0076a630    8b4e40
    asm("mov                edx, dword ptr [ecx]");                            // 0x0076a633    8b11
    asm("call               dword ptr [edx + 0xf8]");                          // 0x0076a635    ff92f8000000
    asm("cmp                eax, dword ptr [data_bytes + 0x405164]");          // 0x0076a63b    3b0564b1dc00
    asm("{disp32} je        _jmp_addr_0x0076a750");                            // 0x0076a641    0f8409010000
    asm("push               ecx");                                             // 0x0076a647    51
    asm("mov.s              eax, esp");                                        // 0x0076a648    8bc4
    asm("push               0x3f800000");                                      // 0x0076a64a    680000803f
    asm("push               0x0");                                             // 0x0076a64f    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076a651    8bce
    asm("mov                dword ptr [eax], 0xffffffff");                     // 0x0076a653    c700ffffffff
    asm("call               ?CreateSmokyStuff@Object@@QAEIJMULH3DColor@@@Z");  // 0x0076a659    e8b201edff
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x0076a65e    8d4e14
    asm("call               ?IsWater@MapCoords@@QBEIXZ");                      // 0x0076a661    e84a8fe9ff
    asm("test               eax, eax");                                        // 0x0076a666    85c0
    asm("{disp32} jne       _jmp_addr_0x0076a750");                            // 0x0076a668    0f85e2000000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x4f3a80]");          // 0x0076a66e    a1809aeb00
    asm("test               eax, eax");                                        // 0x0076a673    85c0
    asm("{disp8} jne        _jmp_addr_0x0076a6df");                            // 0x0076a675    7568
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x517508]");          // 0x0076a677    a108d5ed00
    asm("cmp                dword ptr [eax], 0x000000f4");                     // 0x0076a67c    8138f4000000
    asm("{disp8} jle        _jmp_addr_0x0076a68c");                            // 0x0076a682    7e08
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000003d4]");               // 0x0076a684    8b88d4030000
    asm("{disp8} jmp        _jmp_addr_0x0076a68f");                            // 0x0076a68a    eb03
    asm("_jmp_addr_0x0076a68c:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076a68c    8b4804
    asm("_jmp_addr_0x0076a68f:");
    asm("{disp32} mov       dword ptr [data_bytes + 0x4f3a80], ecx");          // 0x0076a68f    890d809aeb00
    asm("cmp                dword ptr [eax], 0x000000f7");                     // 0x0076a695    8138f7000000
    asm("{disp8} jle        _jmp_addr_0x0076a6a5");                            // 0x0076a69b    7e08
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000003e0]");               // 0x0076a69d    8b88e0030000
    asm("{disp8} jmp        _jmp_addr_0x0076a6a8");                            // 0x0076a6a3    eb03
    asm("_jmp_addr_0x0076a6a5:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076a6a5    8b4804
    asm("_jmp_addr_0x0076a6a8:");
    asm("{disp32} mov       dword ptr [data_bytes + 0x4f3a84], ecx");          // 0x0076a6a8    890d849aeb00
    asm("cmp                dword ptr [eax], 0x000000f5");                     // 0x0076a6ae    8138f5000000
    asm("{disp8} jle        _jmp_addr_0x0076a6be");                            // 0x0076a6b4    7e08
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000003d8]");               // 0x0076a6b6    8b88d8030000
    asm("{disp8} jmp        _jmp_addr_0x0076a6c1");                            // 0x0076a6bc    eb03
    asm("_jmp_addr_0x0076a6be:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076a6be    8b4804
    asm("_jmp_addr_0x0076a6c1:");
    asm("{disp32} mov       dword ptr [data_bytes + 0x4f3a88], ecx");          // 0x0076a6c1    890d889aeb00
    asm("cmp                dword ptr [eax], 0x000000f8");                     // 0x0076a6c7    8138f8000000
    asm("{disp8} jle        _jmp_addr_0x0076a6d7");                            // 0x0076a6cd    7e08
    asm("{disp32} mov       eax, dword ptr [eax + 0x000003e4]");               // 0x0076a6cf    8b80e4030000
    asm("{disp8} jmp        _jmp_addr_0x0076a6da");                            // 0x0076a6d5    eb03
    asm("_jmp_addr_0x0076a6d7:");
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                     // 0x0076a6d7    8b4004
    asm("_jmp_addr_0x0076a6da:");
    asm("{disp32} mov       dword ptr [data_bytes + 0x4f3a8c], eax");          // 0x0076a6da    a38c9aeb00
    asm("_jmp_addr_0x0076a6df:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a6df    8b06
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                     // 0x0076a6e1    8b7e28
    asm("mov.s              ecx, esi");                                        // 0x0076a6e4    8bce
    asm("call               dword ptr [eax + 0x8d0]");                         // 0x0076a6e6    ff90d0080000
    asm("cmp                eax, dword ptr [edi + 0x00000138]");               // 0x0076a6ec    3b8738010000
    asm("{disp8} jae        _jmp_addr_0x0076a720");                            // 0x0076a6f2    732c
    asm("push               0x00000238");                                      // 0x0076a6f4    6838020000
    asm("push               0x00c24630");                                      // 0x0076a6f9    683046c200
    asm("push               0xc");                                             // 0x0076a6fe    6a0c
    asm("call               ___nw__FUl");                                      // 0x0076a700    e88b100700
    asm("add                esp, 0x0c");                                       // 0x0076a705    83c40c
    asm("test               eax, eax");                                        // 0x0076a708    85c0
    asm("{disp8} je         _jmp_addr_0x0076a750");                            // 0x0076a70a    7444
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x0076a70c    8b4e28
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00000204]");               // 0x0076a70f    8b9104020000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                     // 0x0076a715    8b4e40
    asm("push               0x1");                                             // 0x0076a718    6a01
    asm("push               edx");                                             // 0x0076a71a    52
    asm("push               ecx");                                             // 0x0076a71b    51
    asm("mov.s              ecx, eax");                                        // 0x0076a71c    8bc8
    asm("{disp8} jmp        _jmp_addr_0x0076a74b");                            // 0x0076a71e    eb2b
    asm("_jmp_addr_0x0076a720:");
    asm("push               0x0000023b");                                      // 0x0076a720    683b020000
    asm("push               0x00c24630");                                      // 0x0076a725    683046c200
    asm("push               0xc");                                             // 0x0076a72a    6a0c
    asm("call               ___nw__FUl");                                      // 0x0076a72c    e85f100700
    asm("mov.s              edi, eax");                                        // 0x0076a731    8bf8
    asm("add                esp, 0x0c");                                       // 0x0076a733    83c40c
    asm("test               edi, edi");                                        // 0x0076a736    85ff
    asm("{disp8} je         _jmp_addr_0x0076a750");                            // 0x0076a738    7416
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x0076a73a    8b4e28
    asm("mov                edx, dword ptr [ecx]");                            // 0x0076a73d    8b11
    asm("push               0x0");                                             // 0x0076a73f    6a00
    asm("call               dword ptr [edx + 0x2c]");                          // 0x0076a741    ff522c
    asm("push               eax");                                             // 0x0076a744    50
    asm("{disp8} mov        eax, dword ptr [esi + 0x40]");                     // 0x0076a745    8b4640
    asm("push               eax");                                             // 0x0076a748    50
    asm("mov.s              ecx, edi");                                        // 0x0076a749    8bcf
    asm("_jmp_addr_0x0076a74b:");
    asm("call               _jmp_addr_0x00828790");                            // 0x0076a74b    e840e00b00
    asm("_jmp_addr_0x0076a750:");
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x405164]");          // 0x0076a750    8b1564b1dc00
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                     // 0x0076a756    8b4e40
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076a759    8b01
    asm("push               edx");                                             // 0x0076a75b    52
    asm("push               edx");                                             // 0x0076a75c    52
    asm("call               dword ptr [eax + 0xf4]");                          // 0x0076a75d    ff90f4000000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                     // 0x0076a763    8b4e40
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076a766    8b01
    asm("xor.s              edx, edx");                                        // 0x0076a768    33d2
    asm("call               dword ptr [eax + 0xc4]");                          // 0x0076a76a    ff90c4000000
    asm("_jmp_addr_0x0076a770:");
    asm("mov.s              ecx, esi");                                        // 0x0076a770    8bce
    asm("call               ?Dead@PuzzleHorse@@UAE_NXZ");                      // 0x0076a772    e8891ce8ff
    asm("pop                edi");                                             // 0x0076a777    5f
    asm("pop                esi");                                             // 0x0076a778    5e
    asm("ret");                                                                // 0x0076a779    c3
    __builtin_unreachable();
}

bool32_t __fastcall Drowning__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076a780    56
    asm("mov.s              esi, ecx");                                        // 0x0076a781    8bf1
    asm("test               byte ptr [esi + 0x25], 0x40");                     // 0x0076a783    f6462540
    asm("{disp8} je         _jmp_addr_0x0076a78f");                            // 0x0076a787    7406
    asm("{disp8} mov        word ptr [esi + 0x58], 0x000a");                   // 0x0076a789    66c746580a00
    asm("_jmp_addr_0x0076a78f:");
    asm("dec                word ptr [esi + 0x58]");                           // 0x0076a78f    66ff4e58
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                       // 0x0076a793    668b4658
    asm("test               ax, ax");                                          // 0x0076a797    6685c0
    asm("{disp8} jne        _jmp_addr_0x0076a7d0");                            // 0x0076a79a    7534
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a79c    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076a79e    8bce
    asm("call               dword ptr [eax + 0x6c]");                          // 0x0076a7a0    ff506c
    asm("test               eax, eax");                                        // 0x0076a7a3    85c0
    asm("{disp8} je         _jmp_addr_0x0076a7b9");                            // 0x0076a7a5    7412
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a7a7    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076a7a9    8bce
    asm("call               dword ptr [edx + 0x6c]");                          // 0x0076a7ab    ff526c
    asm("mov                edx, dword ptr [eax]");                            // 0x0076a7ae    8b10
    asm("mov.s              ecx, eax");                                        // 0x0076a7b0    8bc8
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076a7b2    ff521c
    asm("test               eax, eax");                                        // 0x0076a7b5    85c0
    asm("{disp8} jne        _jmp_addr_0x0076a7bf");                            // 0x0076a7b7    7506
    asm("_jmp_addr_0x0076a7b9:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000104]");               // 0x0076a7b9    8b8604010000
    asm("_jmp_addr_0x0076a7bf:");
    asm("push               0x1");                                             // 0x0076a7bf    6a01
    asm("push               0x3c23d70a");                                      // 0x0076a7c1    680ad7233c
    asm("push               eax");                                             // 0x0076a7c6    50
    asm("push               0x6");                                             // 0x0076a7c7    6a06
    asm("mov.s              ecx, esi");                                        // 0x0076a7c9    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                            // 0x0076a7cb    e8f05efeff
    asm("_jmp_addr_0x0076a7d0:");
    asm("mov                eax, 0x00000001");                                 // 0x0076a7d0    b801000000
    asm("pop                esi");                                             // 0x0076a7d5    5e
    asm("ret");                                                                // 0x0076a7d6    c3
    __builtin_unreachable();
}

bool32_t __fastcall MakeScaredStiff__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                       // 0x0076a7e0    83ec08
    asm("push               esi");                                             // 0x0076a7e3    56
    asm("mov.s              esi, ecx");                                        // 0x0076a7e4    8bf1
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                     // 0x0076a7e6    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x000002a8]");               // 0x0076a7e9    8b80a8020000
    asm("push               0x0000025c");                                      // 0x0076a7ef    685c020000
    asm("push               0x00c24630");                                      // 0x0076a7f4    683046c200
    asm("push               eax");                                             // 0x0076a7f9    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x0076a7fa    e8113df7ff
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x0076a7ff    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x0076a803    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                          // 0x0076a80b    df6c2410
    asm("push               0x0000025c");                                      // 0x0076a80f    685c020000
    asm("push               0x00c24630");                                      // 0x0076a814    683046c200
    asm("push               0x40a00000");                                      // 0x0076a819    680000a040
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                          // 0x0076a81e    d95c241c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a822    e8093df7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2414]");                // 0x0076a827    d80514b48a00
    asm("{disp8} fcomp      dword ptr [esp + 0x1c]");                          // 0x0076a82d    d85c241c
    asm("add                esp, 0x18");                                       // 0x0076a831    83c418
    asm("fnstsw             ax");                                              // 0x0076a834    dfe0
    asm("test               ah, 0x01");                                        // 0x0076a836    f6c401
    asm("{disp8} je         _jmp_addr_0x0076a869");                            // 0x0076a839    742e
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                     // 0x0076a83b    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000002a8]");               // 0x0076a83e    8b88a8020000
    asm("push               0x0000025c");                                      // 0x0076a844    685c020000
    asm("push               0x00c24630");                                      // 0x0076a849    683046c200
    asm("push               ecx");                                             // 0x0076a84e    51
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x0076a84f    e8bc3cf7ff
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x0076a854    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x0076a858    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                          // 0x0076a860    df6c2410
    asm("add                esp, 0x0c");                                       // 0x0076a864    83c40c
    asm("{disp8} jmp        _jmp_addr_0x0076a886");                            // 0x0076a867    eb1d
    asm("_jmp_addr_0x0076a869:");
    asm("push               0x0000025c");                                      // 0x0076a869    685c020000
    asm("push               0x00c24630");                                      // 0x0076a86e    683046c200
    asm("push               0x40a00000");                                      // 0x0076a873    680000a040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a878    e8b33cf7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2414]");                // 0x0076a87d    d80514b48a00
    asm("add                esp, 0x0c");                                       // 0x0076a883    83c40c
    asm("_jmp_addr_0x0076a886:");
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076a886    e8756b0300
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a88b    8b16
    asm("push               0x59");                                            // 0x0076a88d    6a59
    asm("mov.s              ecx, esi");                                        // 0x0076a88f    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                       // 0x0076a891    66894658
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076a895    ff92e8080000
    asm("mov.s              ecx, esi");                                        // 0x0076a89b    8bce
    asm("call               ?ScaredStiff@Villager@@QAEIXZ");                   // 0x0076a89d    e80e000000
    asm("mov                eax, 0x00000001");                                 // 0x0076a8a2    b801000000
    asm("pop                esi");                                             // 0x0076a8a7    5e
    asm("add                esp, 0x08");                                       // 0x0076a8a8    83c408
    asm("ret");                                                                // 0x0076a8ab    c3
    __builtin_unreachable();
}

bool32_t __fastcall ScaredStiff__8VillagerFv(struct Villager* this)
{
    asm("dec                word ptr [ecx + 0x58]");                           // 0x0076a8b0    66ff4958
    asm("cmp                word ptr [ecx + 0x58], 0x00");                     // 0x0076a8b4    6683795800
    asm("{disp8} jne        _jmp_addr_0x0076a8c0");                            // 0x0076a8b9    7505
    asm("call               ?GoHome@Villager@@QAE_NXZ");                       // 0x0076a8bb    e8b059ffff
    asm("_jmp_addr_0x0076a8c0:");
    asm("mov                eax, 0x00000001");                                 // 0x0076a8c0    b801000000
    asm("ret");                                                                // 0x0076a8c5    c3
    __builtin_unreachable();
}

bool32_t __fastcall VagrantStart__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x28");                                       // 0x0076a8d0    83ec28
    asm("push               ebx");                                             // 0x0076a8d3    53
    asm("push               esi");                                             // 0x0076a8d4    56
    asm("mov.s              esi, ecx");                                        // 0x0076a8d5    8bf1
    asm("push               edi");                                             // 0x0076a8d7    57
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                     // 0x0076a8d8    8d7e14
    asm("push               0x43480000");                                      // 0x0076a8db    6800004843
    asm("mov.s              ecx, edi");                                        // 0x0076a8e0    8bcf
    asm("call               @GetNearestTown__9MapCoordsCFf@12");               // 0x0076a8e2    e8f977e9ff
    asm("mov.s              ebx, eax");                                        // 0x0076a8e7    8bd8
    asm("test               ebx, ebx");                                        // 0x0076a8e9    85db
    asm("{disp8} je         _jmp_addr_0x0076a92a");                            // 0x0076a8eb    743d
    asm("push               ebp");                                             // 0x0076a8ed    55
    asm("mov.s              ecx, ebx");                                        // 0x0076a8ee    8bcb
    asm("call               ?GetTribe@Town@@QBEPAVGTribeInfo@@XZ");            // 0x0076a8f0    e84b1ffdff
    asm("mov.s              ecx, esi");                                        // 0x0076a8f5    8bce
    asm("mov.s              ebp, eax");                                        // 0x0076a8f7    8be8
    asm("call               ?GetTribe@Villager@@QAEPAVGTribeInfo@@XZ");        // 0x0076a8f9    e8e275feff
    asm("cmp.s              ebp, eax");                                        // 0x0076a8fe    3be8
    asm("pop                ebp");                                             // 0x0076a900    5d
    asm("{disp8} jne        _jmp_addr_0x0076a92a");                            // 0x0076a901    7527
    asm("push               esi");                                             // 0x0076a903    56
    asm("mov.s              ecx, ebx");                                        // 0x0076a904    8bcb
    asm("call               ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z");   // 0x0076a906    e885f7fcff
    asm("test               eax, eax");                                        // 0x0076a90b    85c0
    asm("{disp8} je         _jmp_addr_0x0076a92a");                            // 0x0076a90d    741b
    asm("mov                eax, dword ptr [esi]");                            // 0x0076a90f    8b06
    asm("push               0x000000a3");                                      // 0x0076a911    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076a916    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076a918    ff90e8080000
    asm("pop                edi");                                             // 0x0076a91e    5f
    asm("pop                esi");                                             // 0x0076a91f    5e
    asm("mov                eax, 0x00000001");                                 // 0x0076a920    b801000000
    asm("pop                ebx");                                             // 0x0076a925    5b
    asm("add                esp, 0x28");                                       // 0x0076a926    83c428
    asm("ret");                                                                // 0x0076a929    c3
    asm("_jmp_addr_0x0076a92a:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a92a    8b16
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                     // 0x0076a92c    8b5e28
    asm("mov.s              ecx, esi");                                        // 0x0076a92f    8bce
    asm("call               dword ptr [edx + 0x11c]");                         // 0x0076a931    ff921c010000
    asm("{disp32} fcomp     dword ptr [ebx + 0x0000035c]");                    // 0x0076a937    d89b5c030000
    asm("fnstsw             ax");                                              // 0x0076a93d    dfe0
    asm("test               ah, 0x01");                                        // 0x0076a93f    f6c401
    asm("{disp8} je         _jmp_addr_0x0076a9c3");                            // 0x0076a942    747f
    asm("push               0x0000027f");                                      // 0x0076a944    687f020000
    asm("push               0x00c24630");                                      // 0x0076a949    683046c200
    asm("push               0x40a00000");                                      // 0x0076a94e    680000a040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a953    e8d83bf7ff
    asm("add                esp, 0x08");                                       // 0x0076a958    83c408
    asm("fstp               dword ptr [esp]");                                 // 0x0076a95b    d91c24
    asm("push               0x0000027f");                                      // 0x0076a95e    687f020000
    asm("push               0x00c24630");                                      // 0x0076a963    683046c200
    asm("push               0x40c90fdb");                                      // 0x0076a968    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a96d    e8be3bf7ff
    asm("add                esp, 0x08");                                       // 0x0076a972    83c408
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                     // 0x0076a975    8d442430
    asm("fstp               dword ptr [esp]");                                 // 0x0076a979    d91c24
    asm("push               eax");                                             // 0x0076a97c    50
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076a97d    e8fe2bfeff
    asm("add                esp, 0x0c");                                       // 0x0076a982    83c40c
    asm("push               eax");                                             // 0x0076a985    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076a986    8d4c2414
    asm("push               ecx");                                             // 0x0076a98a    51
    asm("mov.s              ecx, edi");                                        // 0x0076a98b    8bcf
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");              // 0x0076a98d    e88eabe9ff
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                     // 0x0076a992    8d542410
    asm("push               edx");                                             // 0x0076a996    52
    asm("mov.s              ecx, esi");                                        // 0x0076a997    8bce
    asm("call               ?GetTentPos@Villager@@QAEPAVTown@@AAUMapCoords@@@Z"); // 0x0076a999    e8525bffff
    asm("test               eax, eax");                                        // 0x0076a99e    85c0
    asm("{disp32} je        _jmp_addr_0x0076aa53");                            // 0x0076a9a0    0f84ad000000
    asm("push               0x000000ee");                                      // 0x0076a9a6    68ee000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x0076a9ab    8d442414
    asm("push               eax");                                             // 0x0076a9af    50
    asm("mov.s              ecx, esi");                                        // 0x0076a9b0    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076a9b2    e8d97ee8ff
    asm("pop                edi");                                             // 0x0076a9b7    5f
    asm("pop                esi");                                             // 0x0076a9b8    5e
    asm("mov                eax, 0x00000001");                                 // 0x0076a9b9    b801000000
    asm("pop                ebx");                                             // 0x0076a9be    5b
    asm("add                esp, 0x28");                                       // 0x0076a9bf    83c428
    asm("ret");                                                                // 0x0076a9c2    c3
    asm("_jmp_addr_0x0076a9c3:");
    asm("push               0x00000287");                                      // 0x0076a9c3    6887020000
    asm("push               0x00c24630");                                      // 0x0076a9c8    683046c200
    asm("push               0x3f490fdb");                                      // 0x0076a9cd    68db0f493f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076a9d2    e8593bf7ff
    asm("mov                edx, dword ptr [esi]");                            // 0x0076a9d7    8b16
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dca0]");               // 0x0076a9d9    d825a06c8c00
    asm("add                esp, 0x0c");                                       // 0x0076a9df    83c40c
    asm("mov.s              ecx, esi");                                        // 0x0076a9e2    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                          // 0x0076a9e4    d95c240c
    asm("call               dword ptr [edx + 0x508]");                         // 0x0076a9e8    ff9208050000
    asm("{disp8} fadd       dword ptr [esp + 0x0c]");                          // 0x0076a9ee    d844240c
    asm("push               0x00000288");                                      // 0x0076a9f2    6888020000
    asm("push               0x00c24630");                                      // 0x0076a9f7    683046c200
    asm("push               0x41a00000");                                      // 0x0076a9fc    680000a041
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                          // 0x0076aa01    d95c2418
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076aa05    e8263bf7ff
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                     // 0x0076aa0a    8b442418
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2414]");                // 0x0076aa0e    d80514b48a00
    asm("add                esp, 0x08");                                       // 0x0076aa14    83c408
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                     // 0x0076aa17    8d4c242c
    asm("fstp               dword ptr [esp]");                                 // 0x0076aa1b    d91c24
    asm("push               eax");                                             // 0x0076aa1e    50
    asm("push               ecx");                                             // 0x0076aa1f    51
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076aa20    e85b2bfeff
    asm("add                esp, 0x0c");                                       // 0x0076aa25    83c40c
    asm("push               eax");                                             // 0x0076aa28    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x20]");                     // 0x0076aa29    8d542420
    asm("push               edx");                                             // 0x0076aa2d    52
    asm("mov.s              ecx, edi");                                        // 0x0076aa2e    8bcf
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");              // 0x0076aa30    e8ebaae9ff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x0076aa35    8d4c241c
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                     // 0x0076aa39    e88298e9ff
    asm("test               eax, eax");                                        // 0x0076aa3e    85c0
    asm("{disp8} je         _jmp_addr_0x0076aa53");                            // 0x0076aa40    7411
    asm("push               0x00000082");                                      // 0x0076aa42    6882000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                     // 0x0076aa47    8d442420
    asm("push               eax");                                             // 0x0076aa4b    50
    asm("mov.s              ecx, esi");                                        // 0x0076aa4c    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076aa4e    e83d7ee8ff
    asm("_jmp_addr_0x0076aa53:");
    asm("pop                edi");                                             // 0x0076aa53    5f
    asm("pop                esi");                                             // 0x0076aa54    5e
    asm("mov                eax, 0x00000001");                                 // 0x0076aa55    b801000000
    asm("pop                ebx");                                             // 0x0076aa5a    5b
    asm("add                esp, 0x28");                                       // 0x0076aa5b    83c428
    asm("ret");                                                                // 0x0076aa5e    c3
    __builtin_unreachable();
}

bool32_t __fastcall MornDeath__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?GoHome@Villager@@QAE_NXZ");                       // 0x0076aa60    e90b58ffff
    __builtin_unreachable();
}

bool32_t __fastcall EatOutside__8VillagerFv(struct Villager* this)
{
    return 1;
}

float __fastcall GetImportance__8VillagerFv(struct Object* this)
{
    asm("sub                esp, 0x08");                                       // 0x0076aa80    83ec08
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076aa83    8b01
    asm("call               dword ptr [eax + 0x8d0]");                         // 0x0076aa85    ff90d0080000
    asm("{disp8} mov        dword ptr [esp + 0x00], eax");                     // 0x0076aa8b    89442400
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");              // 0x0076aa8f    c744240400000000
    asm("{disp8} fild       qword ptr [esp + 0x00]");                          // 0x0076aa97    df6c2400
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3418]");                // 0x0076aa9b    d80d18c48a00
    asm("add                esp, 0x08");                                       // 0x0076aaa1    83c408
    asm("ret");                                                                // 0x0076aaa4    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupInspectObject__8VillagerFP6Object(struct Villager* this, const void* edx, struct Object* param_1)
{
    asm("sub                esp, 0x3c");                                       // 0x0076aab0    83ec3c
    asm("push               ebx");                                             // 0x0076aab3    53
    asm("push               esi");                                             // 0x0076aab4    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x48]");                     // 0x0076aab5    8b742448
    asm("push               edi");                                             // 0x0076aab9    57
    asm("mov.s              edi, ecx");                                        // 0x0076aaba    8bf9
    asm("xor.s              eax, eax");                                        // 0x0076aabc    33c0
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x0076aabe    8d4c240c
    asm("push               ecx");                                             // 0x0076aac2    51
    asm("{disp32} mov       dword ptr [edi + 0x00000118], esi");               // 0x0076aac3    89b718010000
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x0076aac9    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                     // 0x0076aacd    89442414
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x0076aad1    89442418
    asm("mov                eax, dword ptr [esi]");                            // 0x0076aad5    8b06
    asm("push               edi");                                             // 0x0076aad7    57
    asm("mov.s              ecx, esi");                                        // 0x0076aad8    8bce
    asm("call               dword ptr [eax + 0x7f0]");                         // 0x0076aada    ff90f0070000
    asm("cmp                eax, 0x01");                                       // 0x0076aae0    83f801
    asm("{disp8} je         _jmp_addr_0x0076aafc");                            // 0x0076aae3    7417
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                     // 0x0076aae5    8d5614
    asm("mov                eax, dword ptr [edx]");                            // 0x0076aae8    8b02
    asm("{disp8} mov        ecx, dword ptr [edx + 0x04]");                     // 0x0076aaea    8b4a04
    asm("{disp8} mov        edx, dword ptr [edx + 0x08]");                     // 0x0076aaed    8b5208
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                     // 0x0076aaf0    8944240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x0076aaf4    894c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                     // 0x0076aaf8    89542414
    asm("_jmp_addr_0x0076aafc:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x0076aafc    8d44240c
    asm("push               eax");                                             // 0x0076ab00    50
    asm("{disp8} lea        ebx, dword ptr [edi + 0x14]");                     // 0x0076ab01    8d5f14
    asm("push               ebx");                                             // 0x0076ab04    53
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x0076ab05    e86622feff
    asm("{disp8} fstp       dword ptr [esp + 0x54]");                          // 0x0076ab0a    d95c2454
    asm("mov                edx, dword ptr [esi]");                            // 0x0076ab0e    8b16
    asm("add                esp, 0x08");                                       // 0x0076ab10    83c408
    asm("mov.s              ecx, esi");                                        // 0x0076ab13    8bce
    asm("call               dword ptr [edx + 0x64]");                          // 0x0076ab15    ff5264
    asm("{disp8} fsubr      dword ptr [esp + 0x4c]");                          // 0x0076ab18    d86c244c
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]");                // 0x0076ab1c    d81de4b68a00
    asm("fnstsw             ax");                                              // 0x0076ab22    dfe0
    asm("test               ah, 0x41");                                        // 0x0076ab24    f6c441
    asm("{disp32} jne       _jmp_addr_0x0076ac1f");                            // 0x0076ab27    0f85f2000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x0076ab2d    8d44240c
    asm("push               ebx");                                             // 0x0076ab31    53
    asm("push               eax");                                             // 0x0076ab32    50
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                                 // 0x0076ab33    e80827feff
    asm("mov                edx, dword ptr [esi]");                            // 0x0076ab38    8b16
    asm("{disp8} mov        dword ptr [esp + 0x54], eax");                     // 0x0076ab3a    89442454
    asm("{disp8} fild       dword ptr [esp + 0x54]");                          // 0x0076ab3e    db442454
    asm("add                esp, 0x08");                                       // 0x0076ab42    83c408
    asm("mov.s              ecx, esi");                                        // 0x0076ab45    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x4c]");                          // 0x0076ab47    d95c244c
    asm("call               dword ptr [edx + 0x64]");                          // 0x0076ab4b    ff5264
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x26e4]");                // 0x0076ab4e    d805e4b68a00
    asm("{disp8} mov        eax, dword ptr [esp + 0x4c]");                     // 0x0076ab54    8b44244c
    asm("push               ecx");                                             // 0x0076ab58    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                     // 0x0076ab59    8d4c2434
    asm("fstp               dword ptr [esp]");                                 // 0x0076ab5d    d91c24
    asm("push               eax");                                             // 0x0076ab60    50
    asm("push               ecx");                                             // 0x0076ab61    51
    asm("call               _jmp_addr_0x0074d620");                            // 0x0076ab62    e8b92afeff
    asm("add                esp, 0x0c");                                       // 0x0076ab67    83c40c
    asm("{disp8} lea        edx, dword ptr [esp + 0x3c]");                     // 0x0076ab6a    8d54243c
    asm("push               edx");                                             // 0x0076ab6e    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x0076ab6f    8d4c2410
    asm("mov.s              esi, eax");                                        // 0x0076ab73    8bf0
    asm("call               _jmp_addr_0x006050d0");                            // 0x0076ab75    e856a5e9ff
    asm("fld                dword ptr [eax]");                                 // 0x0076ab7a    d900
    asm("fadd               dword ptr [esi]");                                 // 0x0076ab7c    d806
    asm("{disp8} fld        dword ptr [eax + 0x04]");                          // 0x0076ab7e    d94004
    asm("{disp8} fadd       dword ptr [esi + 0x04]");                          // 0x0076ab81    d84604
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                          // 0x0076ab84    d95c241c
    asm("{disp8} fld        dword ptr [eax + 0x08]");                          // 0x0076ab88    d94008
    asm("{disp8} fadd       dword ptr [esi + 0x08]");                          // 0x0076ab8b    d84608
    asm("{disp8} mov        dword ptr [esp + 0x2c], 0x00000000");              // 0x0076ab8e    c744242c00000000
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                          // 0x0076ab96    d95c2420
    asm("fld                st(0)");                                           // 0x0076ab9a    d9c0
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x0076ab9c    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076aba2    e859680300
    asm("{disp8} fld        dword ptr [esp + 0x20]");                          // 0x0076aba7    d9442420
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x0076abab    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                     // 0x0076abb1    89442424
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076abb5    e846680300
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x0076abba    d80d08c48a00
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                     // 0x0076abc0    89442428
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");                // 0x0076abc4    d80d04c48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076abca    e831680300
    asm("{disp8} fld        dword ptr [esp + 0x20]");                          // 0x0076abcf    d9442420
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x0076abd3    d80d08c48a00
    asm("{disp8} mov        dword ptr [esp + 0x30], eax");                     // 0x0076abd9    89442430
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");                // 0x0076abdd    d80d04c48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076abe3    e818680300
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                     // 0x0076abe8    8d4c2430
    asm("{disp8} mov        dword ptr [esp + 0x34], eax");                     // 0x0076abec    89442434
    asm("{disp8} mov        dword ptr [esp + 0x38], 0x00000000");              // 0x0076abf0    c744243800000000
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x0076abf8    e893840900
    asm("{disp8} fsubr      dword ptr [esp + 0x1c]");                          // 0x0076abfd    d86c241c
    asm("push               0x000000e9");                                      // 0x0076ac01    68e9000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x28]");                     // 0x0076ac06    8d442428
    asm("{disp8} fstp       dword ptr [esp + 0x30]");                          // 0x0076ac0a    d95c2430
    asm("push               eax");                                             // 0x0076ac0e    50
    asm("mov.s              ecx, edi");                                        // 0x0076ac0f    8bcf
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076ac11    e87a7ce8ff
    asm("pop                edi");                                             // 0x0076ac16    5f
    asm("pop                esi");                                             // 0x0076ac17    5e
    asm("pop                ebx");                                             // 0x0076ac18    5b
    asm("add                esp, 0x3c");                                       // 0x0076ac19    83c43c
    asm("ret                0x0004");                                          // 0x0076ac1c    c20400
    asm("_jmp_addr_0x0076ac1f:");
    asm("mov                edx, dword ptr [edi]");                            // 0x0076ac1f    8b17
    asm("push               0x000000e9");                                      // 0x0076ac21    68e9000000
    asm("mov.s              ecx, edi");                                        // 0x0076ac26    8bcf
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076ac28    ff92e8080000
    asm("pop                edi");                                             // 0x0076ac2e    5f
    asm("pop                esi");                                             // 0x0076ac2f    5e
    asm("pop                ebx");                                             // 0x0076ac30    5b
    asm("add                esp, 0x3c");                                       // 0x0076ac31    83c43c
    asm("ret                0x0004");                                          // 0x0076ac34    c20400
    __builtin_unreachable();
}

bool32_t __fastcall InspectObject__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076ac40    56
    asm("mov.s              esi, ecx");                                        // 0x0076ac41    8bf1
    asm("push               edi");                                             // 0x0076ac43    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000118]");               // 0x0076ac44    8bbe18010000
    asm("test               edi, edi");                                        // 0x0076ac4a    85ff
    asm("{disp8} je         _jmp_addr_0x0076ac5a");                            // 0x0076ac4c    740c
    asm("push               0x1");                                             // 0x0076ac4e    6a01
    asm("push               edi");                                             // 0x0076ac50    57
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                            // 0x0076ac51    e8ca18e8ff
    asm("test               eax, eax");                                        // 0x0076ac56    85c0
    asm("{disp8} je         _jmp_addr_0x0076aca3");                            // 0x0076ac58    7449
    asm("_jmp_addr_0x0076ac5a:");
    asm("push               0x1");                                             // 0x0076ac5a    6a01
    asm("mov.s              ecx, esi");                                        // 0x0076ac5c    8bce
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");          // 0x0076ac5e    e8fd1ce8ff
    asm("test               eax, eax");                                        // 0x0076ac63    85c0
    asm("{disp8} je         _jmp_addr_0x0076aca3");                            // 0x0076ac65    743c
    asm("cmp                byte ptr [esi + 0x000000f2], 0x04");               // 0x0076ac67    80bef200000004
    asm("{disp8} jne        _jmp_addr_0x0076ac94");                            // 0x0076ac6e    7524
    asm("test               edi, edi");                                        // 0x0076ac70    85ff
    asm("{disp8} je         _jmp_addr_0x0076ac94");                            // 0x0076ac72    7420
    asm("test               byte ptr [edi + 0x24], 0x02");                     // 0x0076ac74    f6472402
    asm("{disp8} je         _jmp_addr_0x0076ac94");                            // 0x0076ac78    741a
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");               // 0x0076ac7a    8b8618010000
    asm("test               eax, eax");                                        // 0x0076ac80    85c0
    asm("{disp8} jne        _jmp_addr_0x0076ac87");                            // 0x0076ac82    7503
    asm("pop                edi");                                             // 0x0076ac84    5f
    asm("pop                esi");                                             // 0x0076ac85    5e
    asm("ret");                                                                // 0x0076ac86    c3
    asm("_jmp_addr_0x0076ac87:");
    asm("push               eax");                                             // 0x0076ac87    50
    asm("mov.s              ecx, esi");                                        // 0x0076ac88    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVMultiMapFixed@@@Z");                            // 0x0076ac8a    e8a1d8feff
    asm("cmp                eax, 0x01");                                       // 0x0076ac8f    83f801
    asm("{disp8} je         _jmp_addr_0x0076aca3");                            // 0x0076ac92    740f
    asm("_jmp_addr_0x0076ac94:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076ac94    8b06
    asm("push               0x000000a3");                                      // 0x0076ac96    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076ac9b    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076ac9d    ff90e8080000
    asm("_jmp_addr_0x0076aca3:");
    asm("pop                edi");                                             // 0x0076aca3    5f
    asm("mov                eax, 0x00000001");                                 // 0x0076aca4    b801000000
    asm("pop                esi");                                             // 0x0076aca9    5e
    asm("ret");                                                                // 0x0076acaa    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __fastcall ExitInFlying__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("{disp8} mov        al, byte ptr [esp + 0x04]");                       // 0x0076acb0    8a442404
    asm("cmp                al, 0x18");                                        // 0x0076acb4    3c18
    asm("{disp8} je         _jmp_addr_0x0076accd");                            // 0x0076acb6    7415
    asm("cmp                al, 0x0b");                                        // 0x0076acb8    3c0b
    asm("{disp8} je         _jmp_addr_0x0076accd");                            // 0x0076acba    7411
    asm("cmp                al, 0x0e");                                        // 0x0076acbc    3c0e
    asm("{disp8} je         _jmp_addr_0x0076accd");                            // 0x0076acbe    740d
    asm("cmp                al, 0x0f");                                        // 0x0076acc0    3c0f
    asm("{disp8} je         _jmp_addr_0x0076accd");                            // 0x0076acc2    7409
    asm("cmp                al, 0x10");                                        // 0x0076acc4    3c10
    asm("{disp8} je         _jmp_addr_0x0076accd");                            // 0x0076acc6    7405
    asm("xor.s              eax, eax");                                        // 0x0076acc8    33c0
    asm("ret                0x0004");                                          // 0x0076acca    c20400
    asm("_jmp_addr_0x0076accd:");
    asm("mov                eax, 0x00000001");                                 // 0x0076accd    b801000000
    asm("ret                0x0004");                                          // 0x0076acd2    c20400
    __builtin_unreachable();
}

bool32_t __fastcall EnterSex__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    return 1;
}

bool32_t __fastcall SetupWander__8VillagerFR14JustWholeMapXZ15VILLAGER_STATES(struct Villager* this, const void* edx, struct JustWholeMapXZ* param_1, enum VILLAGER_STATES param_2)
{
    asm("sub                esp, 0x10");                                       // 0x0076acf0    83ec10
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                     // 0x0076acf3    8b442414
    asm("push               esi");                                             // 0x0076acf7    56
    asm("mov.s              esi, ecx");                                        // 0x0076acf8    8bf1
    asm("push               eax");                                             // 0x0076acfa    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x0076acfb    8d4c240c
    asm("call               _jmp_addr_0x00603070");                            // 0x0076acff    e86c83e9ff
    asm("push               0x000002f4");                                      // 0x0076ad04    68f4020000
    asm("push               0x00c24630");                                      // 0x0076ad09    683046c200
    asm("push               0x40c90fdb");                                      // 0x0076ad0e    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076ad13    e81838f7ff
    asm("push               0x000002f5");                                      // 0x0076ad18    68f5020000
    asm("push               0x00c24630");                                      // 0x0076ad1d    683046c200
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                          // 0x0076ad22    d95c2418
    asm("push               0x41000000");                                      // 0x0076ad26    6800000041
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076ad2b    e80038f7ff
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                     // 0x0076ad30    8b54241c
    asm("{disp8} fstp       dword ptr [esp + 0x30]");                          // 0x0076ad34    d95c2430
    asm("{disp8} mov        ecx, dword ptr [esp + 0x30]");                     // 0x0076ad38    8b4c2430
    asm("push               ecx");                                             // 0x0076ad3c    51
    asm("push               edx");                                             // 0x0076ad3d    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x28]");                     // 0x0076ad3e    8d442428
    asm("push               eax");                                             // 0x0076ad42    50
    asm("call               _jmp_addr_0x0074d510");                            // 0x0076ad43    e8c827feff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                     // 0x0076ad48    8b4c2440
    asm("add                esp, 0x24");                                       // 0x0076ad4c    83c424
    asm("push               ecx");                                             // 0x0076ad4f    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                     // 0x0076ad50    8d54240c
    asm("push               edx");                                             // 0x0076ad54    52
    asm("mov.s              ecx, esi");                                        // 0x0076ad55    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076ad57    e8347be8ff
    asm("push               0x000002f9");                                      // 0x0076ad5c    68f9020000
    asm("push               0x00c24630");                                      // 0x0076ad61    683046c200
    asm("push               0x28");                                            // 0x0076ad66    6a28
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x0076ad68    e8a337f7ff
    asm("add                esp, 0x0c");                                       // 0x0076ad6d    83c40c
    asm("add                eax, 0x1e");                                       // 0x0076ad70    83c01e
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                       // 0x0076ad73    66894658
    asm("pop                esi");                                             // 0x0076ad77    5e
    asm("add                esp, 0x10");                                       // 0x0076ad78    83c410
    asm("ret                0x0008");                                          // 0x0076ad7b    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitSex__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                             // 0x0076ad80    56
    asm("mov.s              esi, ecx");                                        // 0x0076ad81    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                     // 0x0076ad83    8b4c2408
    asm("mov                eax, dword ptr [esi]");                            // 0x0076ad87    8b06
    asm("and                ecx, 0x000000ff");                                 // 0x0076ad89    81e1ff000000
    asm("push               ecx");                                             // 0x0076ad8f    51
    asm("mov.s              ecx, esi");                                        // 0x0076ad90    8bce
    asm("call               dword ptr [eax + 0x96c]");                         // 0x0076ad92    ff906c090000
    asm("test               eax, eax");                                        // 0x0076ad98    85c0
    asm("{disp8} jne        _jmp_addr_0x0076add2");                            // 0x0076ad9a    7536
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000118]");               // 0x0076ad9c    8b8e18010000
    asm("cmp.s              ecx, eax");                                        // 0x0076ada2    3bc8
    asm("{disp32} mov       dword ptr [esi + 0x00000118], eax");               // 0x0076ada4    898618010000
    asm("{disp8} je         _jmp_addr_0x0076add2");                            // 0x0076adaa    7426
    asm("cmp                ecx, dword ptr [data_bytes + 0x30db1c]");          // 0x0076adac    3b0d1c3bcd00
    asm("{disp8} jbe        _jmp_addr_0x0076add2");                            // 0x0076adb2    761e
    asm("{disp32} mov       dl, byte ptr [ecx + 0x0000008c]");                 // 0x0076adb4    8a918c000000
    asm("cmp                dl, byte ptr [esi + 0x0000008c]");                 // 0x0076adba    3a968c000000
    asm("{disp8} jne        _jmp_addr_0x0076add2");                            // 0x0076adc0    7510
    asm("{disp32} mov       dword ptr [ecx + 0x00000118], eax");               // 0x0076adc2    898118010000
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076adc8    8b01
    asm("push               0x7c");                                            // 0x0076adca    6a7c
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076adcc    ff90e8080000
    asm("_jmp_addr_0x0076add2:");
    asm("mov                eax, 0x00000001");                                 // 0x0076add2    b801000000
    asm("pop                esi");                                             // 0x0076add7    5e
    asm("ret                0x0004");                                          // 0x0076add8    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall InHand__8VillagerFv(struct Living* this)
{
    asm("sub                esp, 0x08");                                       // 0x0076ade0    83ec08
    asm("push               ebx");                                             // 0x0076ade3    53
    asm("push               ebp");                                             // 0x0076ade4    55
    asm("push               esi");                                             // 0x0076ade5    56
    asm("push               edi");                                             // 0x0076ade6    57
    asm("mov.s              esi, ecx");                                        // 0x0076ade7    8bf1
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");             // 0x0076ade9    e87273feff
    asm("test               eax, eax");                                        // 0x0076adee    85c0
    asm("{disp8} je         _jmp_addr_0x0076adfd");                            // 0x0076adf0    740b
    asm("mov.s              ecx, esi");                                        // 0x0076adf2    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");             // 0x0076adf4    e86773feff
    asm("or                 byte ptr [eax + 0x7c], 0x10");                     // 0x0076adf9    80487c10
    asm("_jmp_addr_0x0076adfd:");
    asm("mov.s              ecx, esi");                                        // 0x0076adfd    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");              // 0x0076adff    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x0076ae07    c744241400000000
    asm("call               ?IsInACreaturesHand@Villager@@QAEIXZ");            // 0x0076ae0f    e81c020000
    asm("test               eax, eax");                                        // 0x0076ae14    85c0
    asm("{disp32} jne       _jmp_addr_0x0076af79");                            // 0x0076ae16    0f855d010000
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                     // 0x0076ae1c    8d4614
    asm("push               eax");                                             // 0x0076ae1f    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076ae20    8d4c2414
    asm("push               ecx");                                             // 0x0076ae24    51
    asm("mov.s              ecx, esi");                                        // 0x0076ae25    8bce
    asm("call               @FindCloseObjectsForInteract__8VillagerFP35LHOrderedLinkedList_12SortedObject_RC9MapCoords@16");                            // 0x0076ae27    e854c0feff
    asm("test               eax, eax");                                        // 0x0076ae2c    85c0
    asm("{disp32} je        _jmp_addr_0x0076af67");                            // 0x0076ae2e    0f8433010000
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                     // 0x0076ae34    8b442410
    asm("test               eax, eax");                                        // 0x0076ae38    85c0
    asm("mov.s              ebx, eax");                                        // 0x0076ae3a    8bd8
    asm("{disp32} je        _jmp_addr_0x0076af67");                            // 0x0076ae3c    0f8425010000
    asm("_jmp_addr_0x0076ae42:");
    asm("mov                edi, dword ptr [ebx]");                            // 0x0076ae42    8b3b
    asm("mov.s              ecx, esi");                                        // 0x0076ae44    8bce
    asm("call               _jmp_addr_0x0063a1b0");                            // 0x0076ae46    e865f3ecff
    asm("mov.s              ebp, eax");                                        // 0x0076ae4b    8be8
    asm("test               ebp, ebp");                                        // 0x0076ae4d    85ed
    asm("{disp32} je        _jmp_addr_0x0076aedc");                            // 0x0076ae4f    0f8487000000
    asm("mov                edx, dword ptr [edi]");                            // 0x0076ae55    8b17
    asm("push               ebp");                                             // 0x0076ae57    55
    asm("push               esi");                                             // 0x0076ae58    56
    asm("mov.s              ecx, edi");                                        // 0x0076ae59    8bcf
    asm("call               dword ptr [edx + 0x7f4]");                         // 0x0076ae5b    ff92f4070000
    asm("mov                eax, dword ptr [edi]");                            // 0x0076ae61    8b07
    asm("push               esi");                                             // 0x0076ae63    56
    asm("push               ebp");                                             // 0x0076ae64    55
    asm("mov.s              ecx, edi");                                        // 0x0076ae65    8bcf
    asm("call               dword ptr [eax + 0x644]");                         // 0x0076ae67    ff9044060000
    asm("xor.s              ecx, ecx");                                        // 0x0076ae6d    33c9
    asm("{disp8} mov        cx, word ptr [esi + 0x24]");                       // 0x0076ae6f    668b4e24
    asm("not                cx");                                              // 0x0076ae73    66f7d1
    asm("mov.s              ebp, eax");                                        // 0x0076ae76    8be8
    asm("shr                ecx, 0xa");                                        // 0x0076ae78    c1e90a
    asm("test               cl, 0x01");                                        // 0x0076ae7b    f6c101
    asm("{disp8} je         _jmp_addr_0x0076aebe");                            // 0x0076ae7e    743e
    asm("mov                edx, dword ptr [esi]");                            // 0x0076ae80    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076ae82    8bce
    asm("call               dword ptr [edx + 0x2c]");                          // 0x0076ae84    ff522c
    asm("test               eax, eax");                                        // 0x0076ae87    85c0
    asm("{disp8} je         _jmp_addr_0x0076aebe");                            // 0x0076ae89    7433
    asm("mov                eax, dword ptr [esi]");                            // 0x0076ae8b    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076ae8d    8bce
    asm("call               dword ptr [eax + 0xaf8]");                         // 0x0076ae8f    ff90f80a0000
    asm("test               eax, eax");                                        // 0x0076ae95    85c0
    asm("{disp8} jne        _jmp_addr_0x0076aebe");                            // 0x0076ae97    7525
    asm("mov                edx, dword ptr [esi]");                            // 0x0076ae99    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076ae9b    8bce
    asm("call               dword ptr [edx + 0x4a0]");                         // 0x0076ae9d    ff92a0040000
    asm("test               eax, eax");                                        // 0x0076aea3    85c0
    asm("{disp8} jne        _jmp_addr_0x0076aebe");                            // 0x0076aea5    7517
    asm("mov                eax, dword ptr [esi]");                            // 0x0076aea7    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076aea9    8bce
    asm("call               dword ptr [eax + 0xaf4]");                         // 0x0076aeab    ff90f40a0000
    asm("test               eax, eax");                                        // 0x0076aeb1    85c0
    asm("{disp8} jne        _jmp_addr_0x0076aebe");                            // 0x0076aeb3    7509
    asm("test               byte ptr [esi + 0x000000e0], -0x80");              // 0x0076aeb5    f686e000000080
    asm("{disp8} je         _jmp_addr_0x0076aed3");                            // 0x0076aebc    7415
    asm("_jmp_addr_0x0076aebe:");
    asm("cmp                ebp, 0x0b");                                       // 0x0076aebe    83fd0b
    asm("{disp8} jne        _jmp_addr_0x0076aedc");                            // 0x0076aec1    7519
    asm("mov                edx, dword ptr [esi]");                            // 0x0076aec3    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076aec5    8bce
    asm("call               dword ptr [edx + 0xaf8]");                         // 0x0076aec7    ff92f80a0000
    asm("test               eax, eax");                                        // 0x0076aecd    85c0
    asm("{disp8} jne        _jmp_addr_0x0076aef9");                            // 0x0076aecf    7528
    asm("{disp8} jmp        _jmp_addr_0x0076aedc");                            // 0x0076aed1    eb09
    asm("_jmp_addr_0x0076aed3:");
    asm("cmp                ebp, 0x09");                                       // 0x0076aed3    83fd09
    asm("{disp8} je         _jmp_addr_0x0076aeec");                            // 0x0076aed6    7414
    asm("test               ebp, ebp");                                        // 0x0076aed8    85ed
    asm("{disp8} jne        _jmp_addr_0x0076aef9");                            // 0x0076aeda    751d
    asm("_jmp_addr_0x0076aedc:");
    asm("{disp8} mov        ebx, dword ptr [ebx + 0x04]");                     // 0x0076aedc    8b5b04
    asm("test               ebx, ebx");                                        // 0x0076aedf    85db
    asm("{disp32} je        _jmp_addr_0x0076af67");                            // 0x0076aee1    0f8480000000
    asm("{disp32} jmp       _jmp_addr_0x0076ae42");                            // 0x0076aee7    e956ffffff
    asm("_jmp_addr_0x0076aeec:");
    asm("mov                eax, dword ptr [edi]");                            // 0x0076aeec    8b07
    asm("mov.s              ecx, edi");                                        // 0x0076aeee    8bcf
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076aef0    ff5048
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], eax");               // 0x0076aef3    89861c010000
    asm("_jmp_addr_0x0076aef9:");
    asm("push               0x0");                                             // 0x0076aef9    6a00
    asm("push               ebp");                                             // 0x0076aefb    55
    asm("push               edi");                                             // 0x0076aefc    57
    asm("mov.s              ecx, esi");                                        // 0x0076aefd    8bce
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                            // 0x0076aeff    e8fcb0feff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                     // 0x0076af04    8b4c2410
    asm("test               ecx, ecx");                                        // 0x0076af08    85c9
    asm("{disp32} je        _jmp_addr_0x0076afc7");                            // 0x0076af0a    0f84b7000000
    asm("_jmp_addr_0x0076af10:");
    asm("mov                esi, dword ptr [ecx]");                            // 0x0076af10    8b31
    asm("xor.s              edx, edx");                                        // 0x0076af12    33d2
    asm("test               ecx, ecx");                                        // 0x0076af14    85c9
    asm("mov.s              eax, ecx");                                        // 0x0076af16    8bc1
    asm("{disp32} je        _jmp_addr_0x0076afc7");                            // 0x0076af18    0f84a9000000
    asm("_jmp_addr_0x0076af1e:");
    asm("cmp                dword ptr [eax], esi");                            // 0x0076af1e    3930
    asm("{disp8} je         _jmp_addr_0x0076af2d");                            // 0x0076af20    740b
    asm("mov.s              edx, eax");                                        // 0x0076af22    8bd0
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                     // 0x0076af24    8b4004
    asm("test               eax, eax");                                        // 0x0076af27    85c0
    asm("{disp8} jne        _jmp_addr_0x0076af1e");                            // 0x0076af29    75f3
    asm("{disp8} jmp        _jmp_addr_0x0076af56");                            // 0x0076af2b    eb29
    asm("_jmp_addr_0x0076af2d:");
    asm("test               edx, edx");                                        // 0x0076af2d    85d2
    asm("{disp8} jne        _jmp_addr_0x0076af3a");                            // 0x0076af2f    7509
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x04]");                     // 0x0076af31    8b4904
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x0076af34    894c2410
    asm("{disp8} jmp        _jmp_addr_0x0076af40");                            // 0x0076af38    eb06
    asm("_jmp_addr_0x0076af3a:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076af3a    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                     // 0x0076af3d    894a04
    asm("_jmp_addr_0x0076af40:");
    asm("push               eax");                                             // 0x0076af40    50
    asm("call               ??3@YAXPAX@Z");                                    // 0x0076af41    e8523f0400
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                     // 0x0076af46    8b442418
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                     // 0x0076af4a    8b4c2414
    asm("add                esp, 0x04");                                       // 0x0076af4e    83c404
    asm("dec                eax");                                             // 0x0076af51    48
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                     // 0x0076af52    89442414
    asm("_jmp_addr_0x0076af56:");
    asm("test               ecx, ecx");                                        // 0x0076af56    85c9
    asm("{disp8} jne        _jmp_addr_0x0076af10");                            // 0x0076af58    75b6
    asm("pop                edi");                                             // 0x0076af5a    5f
    asm("pop                esi");                                             // 0x0076af5b    5e
    asm("pop                ebp");                                             // 0x0076af5c    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076af5d    b801000000
    asm("pop                ebx");                                             // 0x0076af62    5b
    asm("add                esp, 0x08");                                       // 0x0076af63    83c408
    asm("ret");                                                                // 0x0076af66    c3
    asm("_jmp_addr_0x0076af67:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x0000010c]");               // 0x0076af67    8b960c010000
    asm("push               0x0");                                             // 0x0076af6d    6a00
    asm("push               edx");                                             // 0x0076af6f    52
    asm("push               0x0");                                             // 0x0076af70    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076af72    8bce
    asm("call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z");                            // 0x0076af74    e887b0feff
    asm("_jmp_addr_0x0076af79:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                     // 0x0076af79    8b4c2410
    asm("test               ecx, ecx");                                        // 0x0076af7d    85c9
    asm("{disp8} je         _jmp_addr_0x0076afc7");                            // 0x0076af7f    7446
    asm("_jmp_addr_0x0076af81:");
    asm("mov                esi, dword ptr [ecx]");                            // 0x0076af81    8b31
    asm("xor.s              edx, edx");                                        // 0x0076af83    33d2
    asm("test               ecx, ecx");                                        // 0x0076af85    85c9
    asm("mov.s              eax, ecx");                                        // 0x0076af87    8bc1
    asm("{disp8} je         _jmp_addr_0x0076afc7");                            // 0x0076af89    743c
    asm("_jmp_addr_0x0076af8b:");
    asm("cmp                dword ptr [eax], esi");                            // 0x0076af8b    3930
    asm("{disp8} je         _jmp_addr_0x0076af9a");                            // 0x0076af8d    740b
    asm("mov.s              edx, eax");                                        // 0x0076af8f    8bd0
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                     // 0x0076af91    8b4004
    asm("test               eax, eax");                                        // 0x0076af94    85c0
    asm("{disp8} jne        _jmp_addr_0x0076af8b");                            // 0x0076af96    75f3
    asm("{disp8} jmp        _jmp_addr_0x0076afc3");                            // 0x0076af98    eb29
    asm("_jmp_addr_0x0076af9a:");
    asm("test               edx, edx");                                        // 0x0076af9a    85d2
    asm("{disp8} jne        _jmp_addr_0x0076afa7");                            // 0x0076af9c    7509
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x04]");                     // 0x0076af9e    8b4904
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x0076afa1    894c2410
    asm("{disp8} jmp        _jmp_addr_0x0076afad");                            // 0x0076afa5    eb06
    asm("_jmp_addr_0x0076afa7:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                     // 0x0076afa7    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                     // 0x0076afaa    894a04
    asm("_jmp_addr_0x0076afad:");
    asm("push               eax");                                             // 0x0076afad    50
    asm("call               ??3@YAXPAX@Z");                                    // 0x0076afae    e8e53e0400
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                     // 0x0076afb3    8b442418
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                     // 0x0076afb7    8b4c2414
    asm("add                esp, 0x04");                                       // 0x0076afbb    83c404
    asm("dec                eax");                                             // 0x0076afbe    48
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                     // 0x0076afbf    89442414
    asm("_jmp_addr_0x0076afc3:");
    asm("test               ecx, ecx");                                        // 0x0076afc3    85c9
    asm("{disp8} jne        _jmp_addr_0x0076af81");                            // 0x0076afc5    75ba
    asm("_jmp_addr_0x0076afc7:");
    asm("pop                edi");                                             // 0x0076afc7    5f
    asm("pop                esi");                                             // 0x0076afc8    5e
    asm("pop                ebp");                                             // 0x0076afc9    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076afca    b801000000
    asm("pop                ebx");                                             // 0x0076afcf    5b
    asm("add                esp, 0x08");                                       // 0x0076afd0    83c408
    asm("ret");                                                                // 0x0076afd3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall EnterInHand__8VillagerF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2)
{
    asm("xor.s              eax, eax");                                        // 0x0076afe0    33c0
    asm("{disp32} mov       al, byte ptr [ecx + 0x000000f2]");                 // 0x0076afe2    8a81f2000000
    asm("cmp                eax, 0x07");                                       // 0x0076afe8    83f807
    asm("{disp8} jne        _jmp_addr_0x0076afef");                            // 0x0076afeb    7502
    asm("xor.s              eax, eax");                                        // 0x0076afed    33c0
    asm("_jmp_addr_0x0076afef:");
    asm("{disp32} mov       dword ptr [ecx + 0x0000010c], eax");               // 0x0076afef    89810c010000
    asm("mov                eax, 0x00000001");                                 // 0x0076aff5    b801000000
    asm("ret                0x0008");                                          // 0x0076affa    c20800
    __builtin_unreachable();
}

int __fastcall ExitInHand__8VillagerF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                     // 0x0076b000    8b442404
    asm("push               esi");                                             // 0x0076b004    56
    asm("push               edi");                                             // 0x0076b005    57
    asm("mov.s              edi, ecx");                                        // 0x0076b006    8bf9
    asm("push               eax");                                             // 0x0076b008    50
    asm("call               ?ExitInHand@Living@@UAEHW4VILLAGER_STATES@@@Z");   // 0x0076b009    e8f224e8ff
    asm("mov.s              esi, eax");                                        // 0x0076b00e    8bf0
    asm("cmp                esi, 0x01");                                       // 0x0076b010    83fe01
    asm("{disp8} jne        _jmp_addr_0x0076b024");                            // 0x0076b013    750f
    asm("mov.s              ecx, edi");                                        // 0x0076b015    8bcf
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");             // 0x0076b017    e84471feff
    asm("test               eax, eax");                                        // 0x0076b01c    85c0
    asm("{disp8} je         _jmp_addr_0x0076b024");                            // 0x0076b01e    7404
    asm("and                byte ptr [eax + 0x7c], -0x11");                    // 0x0076b020    80607cef
    asm("_jmp_addr_0x0076b024:");
    asm("pop                edi");                                             // 0x0076b024    5f
    asm("mov.s              eax, esi");                                        // 0x0076b025    8bc6
    asm("pop                esi");                                             // 0x0076b027    5e
    asm("ret                0x0004");                                          // 0x0076b028    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsInACreaturesHand__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [_CreatureList]");                  // 0x0076b030    a1f8fcc500
    asm("test               eax, eax");                                        // 0x0076b035    85c0
    asm("{disp8} je         _jmp_addr_0x0076b04d");                            // 0x0076b037    7414
    asm("_jmp_addr_0x0076b039:");
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x0076b039    8b5004
    asm("{disp32} mov       edx, dword ptr [edx + 0x00000160]");               // 0x0076b03c    8b9260010000
    asm("cmp                dword ptr [edx + 0x28], ecx");                     // 0x0076b042    394a28
    asm("{disp8} je         _jmp_addr_0x0076b050");                            // 0x0076b045    7409
    asm("mov                eax, dword ptr [eax]");                            // 0x0076b047    8b00
    asm("test               eax, eax");                                        // 0x0076b049    85c0
    asm("{disp8} jne        _jmp_addr_0x0076b039");                            // 0x0076b04b    75ec
    asm("_jmp_addr_0x0076b04d:");
    asm("xor.s              eax, eax");                                        // 0x0076b04d    33c0
    asm("ret");                                                                // 0x0076b04f    c3
    asm("_jmp_addr_0x0076b050:");
    asm("mov                eax, 0x00000001");                                 // 0x0076b050    b801000000
    asm("ret");                                                                // 0x0076b055    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupWaitForCounter__8VillagerFUs15VILLAGER_STATES(struct Villager* this, const void* edx, unsigned short param_1, enum VILLAGER_STATES param_2)
{
    asm("push               esi");                                             // 0x0076b060    56
    asm("mov.s              esi, ecx");                                        // 0x0076b061    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                     // 0x0076b063    8b4c240c
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b067    8b06
    asm("push               ecx");                                             // 0x0076b069    51
    asm("push               0x39");                                            // 0x0076b06a    6a39
    asm("mov.s              ecx, esi");                                        // 0x0076b06c    8bce
    asm("call               dword ptr [eax + 0x8dc]");                         // 0x0076b06e    ff90dc080000
    asm("cmp                eax, 0x01");                                       // 0x0076b074    83f801
    asm("{disp8} jne        _jmp_addr_0x0076b086");                            // 0x0076b077    750d
    asm("{disp8} mov        dx, word ptr [esp + 0x08]");                       // 0x0076b079    668b542408
    asm("{disp8} mov        word ptr [esi + 0x58], dx");                       // 0x0076b07e    66895658
    asm("pop                esi");                                             // 0x0076b082    5e
    asm("ret                0x0008");                                          // 0x0076b083    c20800
    asm("_jmp_addr_0x0076b086:");
    asm("xor.s              eax, eax");                                        // 0x0076b086    33c0
    asm("pop                esi");                                             // 0x0076b088    5e
    asm("ret                0x0008");                                          // 0x0076b089    c20800
    __builtin_unreachable();
}

uint32_t __fastcall SetupPauseForASecond__8VillagerF15VILLAGER_STATES(struct Villager* this, const void* edx, enum VILLAGER_STATES state)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                     // 0x0076b090    8b542404
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076b094    8b01
    asm("push               edx");                                             // 0x0076b096    52
    asm("push               0x000000ef");                                      // 0x0076b097    68ef000000
    asm("call               dword ptr [eax + 0x8dc]");                         // 0x0076b09c    ff90dc080000
    asm("dec                eax");                                             // 0x0076b0a2    48
    asm("neg                eax");                                             // 0x0076b0a3    f7d8
    asm("sbb.s              eax, eax");                                        // 0x0076b0a5    1bc0
    asm("inc                eax");                                             // 0x0076b0a7    40
    asm("ret                0x0004");                                          // 0x0076b0a8    c20400
    __builtin_unreachable();
}

bool32_t __fastcall PauseForASecond__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076b0b0    56
    asm("mov.s              esi, ecx");                                        // 0x0076b0b1    8bf1
    asm("push               0x1");                                             // 0x0076b0b3    6a01
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");          // 0x0076b0b5    e8a618e8ff
    asm("test               eax, eax");                                        // 0x0076b0ba    85c0
    asm("{disp8} je         _jmp_addr_0x0076b0c5");                            // 0x0076b0bc    7407
    asm("mov.s              ecx, esi");                                        // 0x0076b0be    8bce
    asm("call               ?SetTopStateToFinal@Living@@QAEXXZ");              // 0x0076b0c0    e8bb19e8ff
    asm("_jmp_addr_0x0076b0c5:");
    asm("mov                eax, 0x00000001");                                 // 0x0076b0c5    b801000000
    asm("pop                esi");                                             // 0x0076b0ca    5e
    asm("ret");                                                                // 0x0076b0cb    c3
    __builtin_unreachable();
}

bool32_t __fastcall SetupPanicReaction__8VillagerFP8ReactionR9MapCoords(struct Villager* this, const void* edx, struct Reaction* param_1, struct MapCoords* param_2)
{
    asm("sub                esp, 0x18");                                       // 0x0076b0d0    83ec18
    asm("push               edi");                                             // 0x0076b0d3    57
    asm("mov.s              edi, ecx");                                        // 0x0076b0d4    8bf9
    asm("push               0x0");                                             // 0x0076b0d6    6a00
    asm("call               ?SetupGoAndHideInNearbyBuilding@Villager@@QAEIPAVGameThingWithPos@@@Z");                            // 0x0076b0d8    e8d38bffff
    asm("cmp                eax, 0x01");                                       // 0x0076b0dd    83f801
    asm("{disp32} je        _jmp_addr_0x0076b1ad");                            // 0x0076b0e0    0f84c7000000
    asm("push               ebx");                                             // 0x0076b0e6    53
    asm("push               ebp");                                             // 0x0076b0e7    55
    asm("push               esi");                                             // 0x0076b0e8    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x30]");                     // 0x0076b0e9    8b742430
    asm("push               esi");                                             // 0x0076b0ed    56
    asm("{disp32} lea       ecx, dword ptr [edi + 0x0000010c]");               // 0x0076b0ee    8d8f0c010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");      // 0x0076b0f4    e80768e7ff
    asm("{disp8} lea        ebx, dword ptr [edi + 0x14]");                     // 0x0076b0f9    8d5f14
    asm("push               ebx");                                             // 0x0076b0fc    53
    asm("push               esi");                                             // 0x0076b0fd    56
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x0076b0fe    e86d21feff
    asm("{disp8} fstp       dword ptr [esp + 0x38]");                          // 0x0076b103    d95c2438
    asm("push               0x0000038a");                                      // 0x0076b107    688a030000
    asm("push               0x00c24630");                                      // 0x0076b10c    683046c200
    asm("push               0x3f490fdb");                                      // 0x0076b111    68db0f493f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076b116    e81534f7ff
    asm("{disp8} mov        esi, dword ptr [esp + 0x40]");                     // 0x0076b11b    8b742440
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dca0]");               // 0x0076b11f    d825a06c8c00
    asm("add                esp, 0x14");                                       // 0x0076b125    83c414
    asm("push               0x0000038b");                                      // 0x0076b128    688b030000
    asm("{disp8} fadd       dword ptr [esp + 0x34]");                          // 0x0076b12d    d8442434
    asm("push               0x00c24630");                                      // 0x0076b131    683046c200
    asm("mov.s              ecx, esi");                                        // 0x0076b136    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x38]");                          // 0x0076b138    d95c2438
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");       // 0x0076b13c    e8bf95f7ff
    asm("mov.s              ecx, esi");                                        // 0x0076b141    8bce
    asm("mov.s              ebp, eax");                                        // 0x0076b143    8be8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");       // 0x0076b145    e8b695f7ff
    asm("{disp8} fld        dword ptr [ebp + 0x44]");                          // 0x0076b14a    d94544
    asm("{disp8} fsub       dword ptr [eax + 0x40]");                          // 0x0076b14d    d86040
    asm("push               ecx");                                             // 0x0076b150    51
    asm("fstp               dword ptr [esp]");                                 // 0x0076b151    d91c24
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076b154    e8d733f7ff
    asm("add                esp, 0x0c");                                       // 0x0076b159    83c40c
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                          // 0x0076b15c    d95c242c
    asm("mov.s              ecx, esi");                                        // 0x0076b160    8bce
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");       // 0x0076b162    e89995f7ff
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                          // 0x0076b167    d944242c
    asm("{disp8} fadd       dword ptr [eax + 0x40]");                          // 0x0076b16b    d84040
    asm("{disp8} mov        ecx, dword ptr [esp + 0x30]");                     // 0x0076b16e    8b4c2430
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                     // 0x0076b172    8d54241c
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                          // 0x0076b176    d95c242c
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                     // 0x0076b17a    8b44242c
    asm("push               eax");                                             // 0x0076b17e    50
    asm("push               ecx");                                             // 0x0076b17f    51
    asm("push               edx");                                             // 0x0076b180    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076b181    e8fa23feff
    asm("add                esp, 0x0c");                                       // 0x0076b186    83c40c
    asm("push               eax");                                             // 0x0076b189    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x0076b18a    8d442414
    asm("push               eax");                                             // 0x0076b18e    50
    asm("mov.s              ecx, ebx");                                        // 0x0076b18f    8bcb
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");              // 0x0076b191    e88aa3e9ff
    asm("push               0x1");                                             // 0x0076b196    6a01
    asm("push               0x000000f0");                                      // 0x0076b198    68f0000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x0076b19d    8d4c2418
    asm("push               ecx");                                             // 0x0076b1a1    51
    asm("push               esi");                                             // 0x0076b1a2    56
    asm("mov.s              ecx, edi");                                        // 0x0076b1a3    8bcf
    asm("call               _jmp_addr_0x005f10b0");                            // 0x0076b1a5    e8065fe8ff
    asm("pop                esi");                                             // 0x0076b1aa    5e
    asm("pop                ebp");                                             // 0x0076b1ab    5d
    asm("pop                ebx");                                             // 0x0076b1ac    5b
    asm("_jmp_addr_0x0076b1ad:");
    asm("pop                edi");                                             // 0x0076b1ad    5f
    asm("add                esp, 0x18");                                       // 0x0076b1ae    83c418
    asm("ret                0x0008");                                          // 0x0076b1b1    c20800
    __builtin_unreachable();
}

bool32_t __fastcall PanicReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076b1c0    83ec0c
    asm("push               esi");                                             // 0x0076b1c3    56
    asm("mov.s              esi, ecx");                                        // 0x0076b1c4    8bf1
    asm("push               0x2");                                             // 0x0076b1c6    6a02
    asm("{disp32} lea       eax, dword ptr [esi + 0x0000010c]");               // 0x0076b1c8    8d860c010000
    asm("push               eax");                                             // 0x0076b1ce    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x0076b1cf    8d4c240c
    asm("call               _jmp_addr_0x00603030");                            // 0x0076b1d3    e8587ee9ff
    asm("push               eax");                                             // 0x0076b1d8    50
    asm("mov.s              ecx, esi");                                        // 0x0076b1d9    8bce
    asm("call               @LookAtPos__6LivingFRC9MapCoordsUl@16");           // 0x0076b1db    e87013e8ff
    asm("test               eax, eax");                                        // 0x0076b1e0    85c0
    asm("{disp8} je         _jmp_addr_0x0076b1f2");                            // 0x0076b1e2    740e
    asm("push               0x1");                                             // 0x0076b1e4    6a01
    asm("push               0x000000a3");                                      // 0x0076b1e6    68a3000000
    asm("mov.s              ecx, esi");                                        // 0x0076b1eb    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076b1ed    e8ce18e8ff
    asm("_jmp_addr_0x0076b1f2:");
    asm("mov                eax, 0x00000001");                                 // 0x0076b1f2    b801000000
    asm("pop                esi");                                             // 0x0076b1f7    5e
    asm("add                esp, 0x0c");                                       // 0x0076b1f8    83c40c
    asm("ret");                                                                // 0x0076b1fb    c3
    __builtin_unreachable();
}

bool32_t __fastcall GotoCongregateInTownAfterEmergency__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                       // 0x0076b200    83ec18
    asm("push               esi");                                             // 0x0076b203    56
    asm("mov.s              esi, ecx");                                        // 0x0076b204    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b206    8b06
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076b208    ff5048
    asm("test               eax, eax");                                        // 0x0076b20b    85c0
    asm("{disp8} jne        _jmp_addr_0x0076b214");                            // 0x0076b20d    7505
    asm("pop                esi");                                             // 0x0076b20f    5e
    asm("add                esp, 0x18");                                       // 0x0076b210    83c418
    asm("ret");                                                                // 0x0076b213    c3
    asm("_jmp_addr_0x0076b214:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b214    8b16
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x0076b216    8d4c2410
    asm("push               ecx");                                             // 0x0076b21a    51
    asm("mov.s              ecx, esi");                                        // 0x0076b21b    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076b21d    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076b220    8bc8
    asm("call               ?GetCongregationPos@Town@@QAEPAUMapCoords@@PAU2@@Z");  // 0x0076b222    e88956fdff
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b227    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076b229    8bce
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076b22b    ff5048
    asm("{disp32} mov       ecx, dword ptr [eax + 0x0000061c]");               // 0x0076b22e    8b881c060000
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000618]");               // 0x0076b234    8b9018060000
    asm("add                eax, 0x00000610");                                 // 0x0076b23a    0510060000
    asm("add.s              ecx, edx");                                        // 0x0076b23f    03ca
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                     // 0x0076b241    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");              // 0x0076b245    c744240800000000
    asm("{disp8} fild       qword ptr [esp + 0x04]");                          // 0x0076b24d    df6c2404
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2850c]");               // 0x0076b251    d80d0c158d00
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                     // 0x0076b257    d81d90a38a00
    asm("fnstsw             ax");                                              // 0x0076b25d    dfe0
    asm("test               ah, 0x01");                                        // 0x0076b25f    f6c401
    asm("{disp8} je         _jmp_addr_0x0076b296");                            // 0x0076b262    7432
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b264    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076b266    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076b268    ff5248
    asm("{disp32} mov       ecx, dword ptr [eax + 0x0000061c]");               // 0x0076b26b    8b881c060000
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000618]");               // 0x0076b271    8b9018060000
    asm("add                eax, 0x00000610");                                 // 0x0076b277    0510060000
    asm("add.s              ecx, edx");                                        // 0x0076b27c    03ca
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                     // 0x0076b27e    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");              // 0x0076b282    c744240800000000
    asm("{disp8} fild       qword ptr [esp + 0x04]");                          // 0x0076b28a    df6c2404
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2850c]");               // 0x0076b28e    d80d0c158d00
    asm("{disp8} jmp        _jmp_addr_0x0076b29c");                            // 0x0076b294    eb06
    asm("_jmp_addr_0x0076b296:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                     // 0x0076b296    d90590a38a00
    asm("_jmp_addr_0x0076b29c:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1e658]");               // 0x0076b29c    d80d58768c00
    asm("push               ecx");                                             // 0x0076b2a2    51
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2414]");                // 0x0076b2a3    d80514b48a00
    asm("fstp               dword ptr [esp]");                                 // 0x0076b2a9    d91c24
    asm("push               0x000003a1");                                      // 0x0076b2ac    68a1030000
    asm("push               0x00c24630");                                      // 0x0076b2b1    683046c200
    asm("push               0x40c90fdb");                                      // 0x0076b2b6    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x0076b2bb    e87032f7ff
    asm("add                esp, 0x08");                                       // 0x0076b2c0    83c408
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                     // 0x0076b2c3    8d54240c
    asm("fstp               dword ptr [esp]");                                 // 0x0076b2c7    d91c24
    asm("push               edx");                                             // 0x0076b2ca    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076b2cb    e8b022feff
    asm("add                esp, 0x0c");                                       // 0x0076b2d0    83c40c
    asm("push               eax");                                             // 0x0076b2d3    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                     // 0x0076b2d4    8d4c2414
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");              // 0x0076b2d8    e833a1e9ff
    asm("push               0x000000f3");                                      // 0x0076b2dd    68f3000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                     // 0x0076b2e2    8d442414
    asm("push               eax");                                             // 0x0076b2e6    50
    asm("mov.s              ecx, esi");                                        // 0x0076b2e7    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076b2e9    e8a275e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076b2ee    b801000000
    asm("pop                esi");                                             // 0x0076b2f3    5e
    asm("add                esp, 0x18");                                       // 0x0076b2f4    83c418
    asm("ret");                                                                // 0x0076b2f7    c3
    __builtin_unreachable();
}

bool32_t __fastcall CongregateInTownAfterEmergency__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076b300    56
    asm("mov.s              esi, ecx");                                        // 0x0076b301    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b303    8b06
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076b305    ff5048
    asm("test               eax, eax");                                        // 0x0076b308    85c0
    asm("{disp8} je         _jmp_addr_0x0076b34f");                            // 0x0076b30a    7443
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b30c    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076b30e    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076b310    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076b313    8bc8
    asm("call               ?IsInStateOfEmergency@Town@@QAE_NXZ");             // 0x0076b315    e856c6fdff
    asm("test               eax, eax");                                        // 0x0076b31a    85c0
    asm("{disp8} je         _jmp_addr_0x0076b34f");                            // 0x0076b31c    7431
    asm("push               0x000003b0");                                      // 0x0076b31e    68b0030000
    asm("push               0x00c24630");                                      // 0x0076b323    683046c200
    asm("push               0xc");                                             // 0x0076b328    6a0c
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x0076b32a    e8e131f7ff
    asm("add                esp, 0x0c");                                       // 0x0076b32f    83c40c
    asm("neg                eax");                                             // 0x0076b332    f7d8
    asm("sbb.s              eax, eax");                                        // 0x0076b334    1bc0
    asm("and                eax, 0x000000ce");                                 // 0x0076b336    25ce000000
    asm("add                eax, 0x24");                                       // 0x0076b33b    83c024
    asm("push               0x1");                                             // 0x0076b33e    6a01
    asm("push               eax");                                             // 0x0076b340    50
    asm("mov.s              ecx, esi");                                        // 0x0076b341    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076b343    e87817e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076b348    b801000000
    asm("pop                esi");                                             // 0x0076b34d    5e
    asm("ret");                                                                // 0x0076b34e    c3
    asm("_jmp_addr_0x0076b34f:");
    asm("push               0x000003ac");                                      // 0x0076b34f    68ac030000
    asm("push               0x00c24630");                                      // 0x0076b354    683046c200
    asm("push               0x5");                                             // 0x0076b359    6a05
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x0076b35b    e8b031f7ff
    asm("add                esp, 0x0c");                                       // 0x0076b360    83c40c
    asm("neg                eax");                                             // 0x0076b363    f7d8
    asm("sbb.s              eax, eax");                                        // 0x0076b365    1bc0
    asm("and                eax, 0x4f");                                       // 0x0076b367    83e04f
    asm("add                eax, 0x000000a3");                                 // 0x0076b36a    05a3000000
    asm("push               0x1");                                             // 0x0076b36f    6a01
    asm("push               eax");                                             // 0x0076b371    50
    asm("mov.s              ecx, esi");                                        // 0x0076b372    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076b374    e84717e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076b379    b801000000
    asm("pop                esi");                                             // 0x0076b37e    5e
    asm("ret");                                                                // 0x0076b37f    c3
    __builtin_unreachable();
}

bool __fastcall BeingEaten__8VillagerFv(struct Living* this)
{
    asm("push               ecx");                                             // 0x0076b380    51
    asm("push               esi");                                             // 0x0076b381    56
    asm("mov.s              esi, ecx");                                        // 0x0076b382    8bf1
    asm("dec                word ptr [esi + 0x58]");                           // 0x0076b384    66ff4e58
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                       // 0x0076b388    668b4658
    asm("test               ax, ax");                                          // 0x0076b38c    6685c0
    asm("{disp8} jne        _jmp_addr_0x0076b3e0");                            // 0x0076b38f    754f
    asm("test               byte ptr [esi + 0x25], 0x40");                     // 0x0076b391    f6462540
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0032");                   // 0x0076b395    66c746583200
    asm("{disp8} je         _jmp_addr_0x0076b3ae");                            // 0x0076b39b    7411
    asm("push               0x1");                                             // 0x0076b39d    6a01
    asm("push               0xb");                                             // 0x0076b39f    6a0b
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x0076b3a1    e81a17e8ff
    asm("mov                eax, 0x00000001");                                 // 0x0076b3a6    b801000000
    asm("pop                esi");                                             // 0x0076b3ab    5e
    asm("pop                ecx");                                             // 0x0076b3ac    59
    asm("ret");                                                                // 0x0076b3ad    c3
    asm("_jmp_addr_0x0076b3ae:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b3ae    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076b3b0    8bce
    asm("call               dword ptr [eax + 0x11c]");                         // 0x0076b3b2    ff901c010000
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                          // 0x0076b3b8    d95c2404
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b3bc    8b16
    asm("push               0x0");                                             // 0x0076b3be    6a00
    asm("mov.s              ecx, esi");                                        // 0x0076b3c0    8bce
    asm("call               dword ptr [edx + 0x5b0]");                         // 0x0076b3c2    ff92b0050000
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                     // 0x0076b3c8    8b442404
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b3cc    8b16
    asm("push               0x1");                                             // 0x0076b3ce    6a01
    asm("push               eax");                                             // 0x0076b3d0    50
    asm("mov.s              ecx, esi");                                        // 0x0076b3d1    8bce
    asm("call               dword ptr [edx + 0x1c]");                          // 0x0076b3d3    ff521c
    asm("push               eax");                                             // 0x0076b3d6    50
    asm("push               0x3");                                             // 0x0076b3d7    6a03
    asm("mov.s              ecx, esi");                                        // 0x0076b3d9    8bce
    asm("call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z");                            // 0x0076b3db    e8e052feff
    asm("_jmp_addr_0x0076b3e0:");
    asm("mov                eax, 0x00000001");                                 // 0x0076b3e0    b801000000
    asm("pop                esi");                                             // 0x0076b3e5    5e
    asm("pop                ecx");                                             // 0x0076b3e6    59
    asm("ret");                                                                // 0x0076b3e7    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GoAndChilloutOutsideHome__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x28");                                       // 0x0076b3f0    83ec28
    asm("push               ebx");                                             // 0x0076b3f3    53
    asm("push               esi");                                             // 0x0076b3f4    56
    asm("push               edi");                                             // 0x0076b3f5    57
    asm("mov.s              edi, ecx");                                        // 0x0076b3f6    8bf9
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");             // 0x0076b3f8    e8636dfeff
    asm("mov.s              esi, eax");                                        // 0x0076b3fd    8bf0
    asm("test               esi, esi");                                        // 0x0076b3ff    85f6
    asm("{disp32} je        _jmp_addr_0x0076b4c1");                            // 0x0076b401    0f84ba000000
    asm("mov                eax, dword ptr [edi]");                            // 0x0076b407    8b07
    asm("mov.s              ecx, edi");                                        // 0x0076b409    8bcf
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076b40b    ff5048
    asm("test               eax, eax");                                        // 0x0076b40e    85c0
    asm("{disp32} je        _jmp_addr_0x0076b4c1");                            // 0x0076b410    0f84ab000000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x28]");                     // 0x0076b416    8b4828
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00000144]");               // 0x0076b419    8b9144010000
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b41f    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x0076b421    8d4c2410
    asm("push               ecx");                                             // 0x0076b425    51
    asm("mov.s              ecx, esi");                                        // 0x0076b426    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                     // 0x0076b428    89542410
    asm("call               dword ptr [eax + 0x104]");                         // 0x0076b42c    ff9004010000
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                          // 0x0076b432    d944240c
    asm("{disp8} mov        edx, dword ptr [esp + 0x10]");                     // 0x0076b436    8b542410
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2414]");                // 0x0076b43a    d80d14b48a00
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                     // 0x0076b440    8b4c2418
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                     // 0x0076b444    8b442414
    asm("push               ecx");                                             // 0x0076b448    51
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                     // 0x0076b449    89542420
    asm("fstp               dword ptr [esp]");                                 // 0x0076b44d    d91c24
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                     // 0x0076b450    8d542414
    asm("push               edx");                                             // 0x0076b454    52
    asm("add                esi, 0x14");                                       // 0x0076b455    83c614
    asm("push               esi");                                             // 0x0076b458    56
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                     // 0x0076b459    8944242c
    asm("{disp8} mov        dword ptr [esp + 0x30], ecx");                     // 0x0076b45d    894c2430
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x0076b461    e80a1efeff
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                          // 0x0076b466    d95c2404
    asm("add                esp, 0x04");                                       // 0x0076b46a    83c404
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                     // 0x0076b46d    8d442430
    asm("push               eax");                                             // 0x0076b471    50
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076b472    e80921feff
    asm("add                esp, 0x0c");                                       // 0x0076b477    83c40c
    asm("push               eax");                                             // 0x0076b47a    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                     // 0x0076b47b    8d4c2420
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");              // 0x0076b47f    e88c9fe9ff
    asm("{disp8} lea        ebx, dword ptr [esp + 0x1c]");                     // 0x0076b484    8d5c241c
    asm("push               ebx");                                             // 0x0076b488    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x10]");                     // 0x0076b489    8b5c2410
    asm("push               ebx");                                             // 0x0076b48d    53
    asm("{disp8} lea        ebx, dword ptr [esp + 0x18]");                     // 0x0076b48e    8d5c2418
    asm("push               ebx");                                             // 0x0076b492    53
    asm("sub                esp, 0x10");                                       // 0x0076b493    83ec10
    asm("mov                eax, 0x00753d50");                                 // 0x0076b496    b8503d7500
    asm("mov.s              ebx, esp");                                        // 0x0076b49b    8bdc
    asm("mov                dword ptr [ebx], eax");                            // 0x0076b49d    8903
    asm("xor.s              ecx, ecx");                                        // 0x0076b49f    33c9
    asm("{disp8} mov        dword ptr [ebx + 0x04], ecx");                     // 0x0076b4a1    894b04
    asm("xor.s              edx, edx");                                        // 0x0076b4a4    33d2
    asm("xor.s              esi, esi");                                        // 0x0076b4a6    33f6
    asm("{disp8} mov        dword ptr [ebx + 0x08], edx");                     // 0x0076b4a8    895308
    asm("mov.s              ecx, edi");                                        // 0x0076b4ab    8bcf
    asm("{disp8} mov        dword ptr [ebx + 0x0c], esi");                     // 0x0076b4ad    89730c
    asm("call               ?GetMeToMyChillOutPos@Villager@@QAEXP81@AEHPBXPAXAAUMapCoords@@@Z2MABU2@@Z"); // 0x0076b4b0    e85b010000
    asm("mov                eax, 0x00000001");                                 // 0x0076b4b5    b801000000
    asm("pop                edi");                                             // 0x0076b4ba    5f
    asm("pop                esi");                                             // 0x0076b4bb    5e
    asm("pop                ebx");                                             // 0x0076b4bc    5b
    asm("add                esp, 0x28");                                       // 0x0076b4bd    83c428
    asm("ret");                                                                // 0x0076b4c0    c3
    asm("_jmp_addr_0x0076b4c1:");
    asm("mov                edx, dword ptr [edi]");                            // 0x0076b4c1    8b17
    asm("push               0x000000a3");                                      // 0x0076b4c3    68a3000000
    asm("mov.s              ecx, edi");                                        // 0x0076b4c8    8bcf
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076b4ca    ff92e8080000
    asm("pop                edi");                                             // 0x0076b4d0    5f
    asm("pop                esi");                                             // 0x0076b4d1    5e
    asm("mov                eax, 0x00000001");                                 // 0x0076b4d2    b801000000
    asm("pop                ebx");                                             // 0x0076b4d7    5b
    asm("add                esp, 0x28");                                       // 0x0076b4d8    83c428
    asm("ret");                                                                // 0x0076b4db    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SitAndChillout__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x0076b4e0    56
    asm("mov.s              esi, ecx");                                        // 0x0076b4e1    8bf1
    asm("xor.s              eax, eax");                                        // 0x0076b4e3    33c0
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                       // 0x0076b4e5    668b4658
    asm("test               ax, ax");                                          // 0x0076b4e9    6685c0
    asm("{disp8} lea        ecx, dword ptr [eax + -0x01]");                    // 0x0076b4ec    8d48ff
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                       // 0x0076b4ef    66894e58
    asm("{disp8} jg         _jmp_addr_0x0076b566");                            // 0x0076b4f3    7f71
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b4f5    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076b4f7    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                   // 0x0076b4f9    66c746580000
    asm("call               dword ptr [edx + 0x48]");                          // 0x0076b4ff    ff5248
    asm("test               eax, eax");                                        // 0x0076b502    85c0
    asm("{disp8} je         _jmp_addr_0x0076b527");                            // 0x0076b504    7421
    asm("mov.s              ecx, eax");                                        // 0x0076b506    8bc8
    asm("call               ?IsInStateOfEmergency@Town@@QAE_NXZ");             // 0x0076b508    e863c4fdff
    asm("test               eax, eax");                                        // 0x0076b50d    85c0
    asm("{disp8} je         _jmp_addr_0x0076b527");                            // 0x0076b50f    7416
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b511    8b06
    asm("push               0x000000f2");                                      // 0x0076b513    68f2000000
    asm("mov.s              ecx, esi");                                        // 0x0076b518    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076b51a    ff90e8080000
    asm("mov                eax, 0x00000001");                                 // 0x0076b520    b801000000
    asm("pop                esi");                                             // 0x0076b525    5e
    asm("ret");                                                                // 0x0076b526    c3
    asm("_jmp_addr_0x0076b527:");
    asm("mov.s              ecx, esi");                                        // 0x0076b527    8bce
    asm("call               ?CheckNeededForSomething@Villager@@QAE_NXZ");      // 0x0076b529    e8524affff
    asm("test               eax, eax");                                        // 0x0076b52e    85c0
    asm("{disp8} jne        _jmp_addr_0x0076b566");                            // 0x0076b530    7534
    asm("push               0x000003ff");                                      // 0x0076b532    68ff030000
    asm("push               0x00c24630");                                      // 0x0076b537    683046c200
    asm("push               0xa");                                             // 0x0076b53c    6a0a
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x0076b53e    e8cd2ff7ff
    asm("add                esp, 0x0c");                                       // 0x0076b543    83c40c
    asm("test               eax, eax");                                        // 0x0076b546    85c0
    asm("{disp8} jne        _jmp_addr_0x0076b558");                            // 0x0076b548    750e
    asm("mov.s              ecx, esi");                                        // 0x0076b54a    8bce
    asm("call               ?SetupNothingToDo@Villager@@QAEIXZ");              // 0x0076b54c    e8ff85feff
    asm("mov                eax, 0x00000001");                                 // 0x0076b551    b801000000
    asm("pop                esi");                                             // 0x0076b556    5e
    asm("ret");                                                                // 0x0076b557    c3
    asm("_jmp_addr_0x0076b558:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x0076b558    8b4e28
    asm("{disp32} mov       dx, word ptr [ecx + 0x00000396]");                 // 0x0076b55b    668b9196030000
    asm("{disp8} mov        word ptr [esi + 0x58], dx");                       // 0x0076b562    66895658
    asm("_jmp_addr_0x0076b566:");
    asm("mov                eax, 0x00000001");                                 // 0x0076b566    b801000000
    asm("pop                esi");                                             // 0x0076b56b    5e
    asm("ret");                                                                // 0x0076b56c    c3
    __builtin_unreachable();
}

bool32_t __fastcall EnterSitAndChillOut__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                     // 0x0076b570    8b4128
    asm("{disp32} mov       dx, word ptr [eax + 0x00000394]");                 // 0x0076b573    668b9094030000
    asm("{disp8} mov        word ptr [ecx + 0x58], dx");                       // 0x0076b57a    66895158
    asm("mov                eax, 0x00000001");                                 // 0x0076b57e    b801000000
    asm("ret                0x0008");                                          // 0x0076b583    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GoAndChilloutInTown__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                       // 0x0076b590    83ec0c
    asm("push               ebx");                                             // 0x0076b593    53
    asm("push               ebp");                                             // 0x0076b594    55
    asm("push               esi");                                             // 0x0076b595    56
    asm("push               edi");                                             // 0x0076b596    57
    asm("mov.s              edi, ecx");                                        // 0x0076b597    8bf9
    asm("mov                eax, dword ptr [edi]");                            // 0x0076b599    8b07
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076b59b    ff5048
    asm("mov.s              esi, eax");                                        // 0x0076b59e    8bf0
    asm("test               esi, esi");                                        // 0x0076b5a0    85f6
    asm("{disp8} je         _jmp_addr_0x0076b5f3");                            // 0x0076b5a2    744f
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x0076b5a4    8d4c2410
    asm("push               ecx");                                             // 0x0076b5a8    51
    asm("mov.s              ecx, esi");                                        // 0x0076b5a9    8bce
    asm("call               ?GetCongregationPos@Town@@QAEPAUMapCoords@@PAU2@@Z");  // 0x0076b5ab    e80053fdff
    asm("{disp8} mov        esi, dword ptr [esi + 0x28]");                     // 0x0076b5b0    8b7628
    asm("{disp32} mov       esi, dword ptr [esi + 0x00000140]");               // 0x0076b5b3    8bb640010000
    asm("{disp8} lea        ebp, dword ptr [esp + 0x10]");                     // 0x0076b5b9    8d6c2410
    asm("push               ebp");                                             // 0x0076b5bd    55
    asm("push               esi");                                             // 0x0076b5be    56
    asm("{disp8} lea        esi, dword ptr [esp + 0x18]");                     // 0x0076b5bf    8d742418
    asm("push               esi");                                             // 0x0076b5c3    56
    asm("sub                esp, 0x10");                                       // 0x0076b5c4    83ec10
    asm("mov                eax, 0x00753c70");                                 // 0x0076b5c7    b8703c7500
    asm("mov.s              esi, esp");                                        // 0x0076b5cc    8bf4
    asm("mov                dword ptr [esi], eax");                            // 0x0076b5ce    8906
    asm("xor.s              ecx, ecx");                                        // 0x0076b5d0    33c9
    asm("{disp8} mov        dword ptr [esi + 0x04], ecx");                     // 0x0076b5d2    894e04
    asm("xor.s              edx, edx");                                        // 0x0076b5d5    33d2
    asm("xor.s              ebx, ebx");                                        // 0x0076b5d7    33db
    asm("{disp8} mov        dword ptr [esi + 0x08], edx");                     // 0x0076b5d9    895608
    asm("mov.s              ecx, edi");                                        // 0x0076b5dc    8bcf
    asm("{disp8} mov        dword ptr [esi + 0x0c], ebx");                     // 0x0076b5de    895e0c
    asm("call               ?GetMeToMyChillOutPos@Villager@@QAEXP81@AEHPBXPAXAAUMapCoords@@@Z2MABU2@@Z"); // 0x0076b5e1    e82a000000
    asm("mov                eax, 0x00000001");                                 // 0x0076b5e6    b801000000
    asm("pop                edi");                                             // 0x0076b5eb    5f
    asm("pop                esi");                                             // 0x0076b5ec    5e
    asm("pop                ebp");                                             // 0x0076b5ed    5d
    asm("pop                ebx");                                             // 0x0076b5ee    5b
    asm("add                esp, 0x0c");                                       // 0x0076b5ef    83c40c
    asm("ret");                                                                // 0x0076b5f2    c3
    asm("_jmp_addr_0x0076b5f3:");
    asm("mov                edx, dword ptr [edi]");                            // 0x0076b5f3    8b17
    asm("push               0x000000a3");                                      // 0x0076b5f5    68a3000000
    asm("mov.s              ecx, edi");                                        // 0x0076b5fa    8bcf
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076b5fc    ff92e8080000
    asm("pop                edi");                                             // 0x0076b602    5f
    asm("pop                esi");                                             // 0x0076b603    5e
    asm("pop                ebp");                                             // 0x0076b604    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076b605    b801000000
    asm("pop                ebx");                                             // 0x0076b60a    5b
    asm("add                esp, 0x0c");                                       // 0x0076b60b    83c40c
    asm("ret");                                                                // 0x0076b60e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall GetMeToMyChillOutPos__8VillagerFM8VillagerFPCvPvR9MapCoords_iR9MapCoordsfRC9MapCoords(struct Villager* this, const void* edx, int (__fastcall* callback)(const struct Villager * param_1, const void * param_2, struct MapCoords * param_3), const void* unused_1, const void* unused_2, const void* unused_3, struct MapCoords* param_5, float param_6, struct MapCoords* param_7)
{
    asm("sub                esp, 0x20");                                       // 0x0076b610    83ec20
    asm("push               ebx");                                             // 0x0076b613    53
    asm("push               ebp");                                             // 0x0076b614    55
    asm("push               esi");                                             // 0x0076b615    56
    asm("mov.s              esi, ecx");                                        // 0x0076b616    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                     // 0x0076b618    8b4c2440
    asm("push               edi");                                             // 0x0076b61c    57
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                     // 0x0076b61d    8d7e14
    asm("push               edi");                                             // 0x0076b620    57
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                            // 0x0076b621    e8aaa6e9ff
    asm("{disp8} fst        dword ptr [esp + 0x14]");                          // 0x0076b626    d9542414
    asm("{disp8} fcomp      dword ptr [esp + 0x48]");                          // 0x0076b62a    d85c2448
    asm("fnstsw             ax");                                              // 0x0076b62e    dfe0
    asm("test               ah, 0x41");                                        // 0x0076b630    f6c441
    asm("{disp8} jne        _jmp_addr_0x0076b67b");                            // 0x0076b633    7546
    asm("{disp8} mov        ecx, dword ptr [esp + 0x38]");                     // 0x0076b635    8b4c2438
    asm("xor.s              edi, edi");                                        // 0x0076b639    33ff
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                     // 0x0076b63b    8d442418
    asm("push               eax");                                             // 0x0076b63f    50
    asm("add.s              ecx, esi");                                        // 0x0076b640    03ce
    asm("{disp8} mov        dword ptr [esp + 0x1c], edi");                     // 0x0076b642    897c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], edi");                     // 0x0076b646    897c2420
    asm("{disp8} mov        dword ptr [esp + 0x24], edi");                     // 0x0076b64a    897c2424
    asm("call               dword ptr [esp + 0x38]");                          // 0x0076b64e    ff542438
    asm("test               eax, eax");                                        // 0x0076b652    85c0
    asm("{disp32} je        _jmp_addr_0x0076b7ce");                            // 0x0076b654    0f8474010000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b65a    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076b65c    8bce
    asm("call               dword ptr [edx + 0xb04]");                         // 0x0076b65e    ff92040b0000
    asm("mov.s              ecx, esi");                                        // 0x0076b664    8bce
    asm("push               eax");                                             // 0x0076b666    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                     // 0x0076b667    8d44241c
    asm("push               eax");                                             // 0x0076b66b    50
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076b66c    e81f72e8ff
    asm("pop                edi");                                             // 0x0076b671    5f
    asm("pop                esi");                                             // 0x0076b672    5e
    asm("pop                ebp");                                             // 0x0076b673    5d
    asm("pop                ebx");                                             // 0x0076b674    5b
    asm("add                esp, 0x20");                                       // 0x0076b675    83c420
    asm("ret                0x001c");                                          // 0x0076b678    c21c00
    asm("_jmp_addr_0x0076b67b:");
    asm("mov                ecx, dword ptr [edi]");                            // 0x0076b67b    8b0f
    asm("{disp8} mov        edx, dword ptr [edi + 0x04]");                     // 0x0076b67d    8b5704
    asm("{disp8} mov        eax, dword ptr [edi + 0x08]");                     // 0x0076b680    8b4708
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                     // 0x0076b683    894c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                     // 0x0076b687    8954241c
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b68b    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076b68d    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                     // 0x0076b68f    89442420
    asm("call               dword ptr [edx + 0x64]");                          // 0x0076b693    ff5264
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]");               // 0x0076b696    d80d986c8c00
    asm("push               esi");                                             // 0x0076b69c    56
    asm("sub                esp, 0x10");                                       // 0x0076b69d    83ec10
    asm("mov.s              ebx, esp");                                        // 0x0076b6a0    8bdc
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                          // 0x0076b6a2    d95c2424
    asm("mov                eax, 0x00761bb0");                                 // 0x0076b6a6    b8b01b7600
    asm("mov                dword ptr [ebx], eax");                            // 0x0076b6ab    8903
    asm("xor.s              ecx, ecx");                                        // 0x0076b6ad    33c9
    asm("{disp8} mov        dword ptr [ebx + 0x04], ecx");                     // 0x0076b6af    894b04
    asm("xor.s              edx, edx");                                        // 0x0076b6b2    33d2
    asm("{disp8} mov        dword ptr [ebx + 0x08], edx");                     // 0x0076b6b4    895308
    asm("xor.s              edi, edi");                                        // 0x0076b6b7    33ff
    asm("{disp8} mov        dword ptr [ebx + 0x0c], edi");                     // 0x0076b6b9    897b0c
    asm("{disp8} mov        ebx, dword ptr [esp + 0x24]");                     // 0x0076b6bc    8b5c2424
    asm("{disp8} lea        eax, dword ptr [esp + 0x2c]");                     // 0x0076b6c0    8d44242c
    asm("push               ebx");                                             // 0x0076b6c4    53
    asm("push               eax");                                             // 0x0076b6c5    50
    asm("call               ?CheckForClearArea@Town@@SA_NAAUMapCoords@@MP8Object@@AEHPBX1@ZPAV3@@Z");                     // 0x0076b6c6    e8055dfdff
    asm("add                esp, 0x1c");                                       // 0x0076b6cb    83c41c
    asm("test               eax, eax");                                        // 0x0076b6ce    85c0
    asm("{disp8} je         _jmp_addr_0x0076b6fd");                            // 0x0076b6d0    742b
    asm("{disp8} mov        eax, dword ptr [esp + 0x4c]");                     // 0x0076b6d2    8b44244c
    asm("cmp.s              eax, edi");                                        // 0x0076b6d6    3bc7
    asm("{disp8} je         _jmp_addr_0x0076b6e4");                            // 0x0076b6d8    740a
    asm("push               0x2");                                             // 0x0076b6da    6a02
    asm("push               eax");                                             // 0x0076b6dc    50
    asm("mov.s              ecx, esi");                                        // 0x0076b6dd    8bce
    asm("call               @LookAtPos__6LivingFRC9MapCoordsUl@16");           // 0x0076b6df    e86c0ee8ff
    asm("_jmp_addr_0x0076b6e4:");
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b6e4    8b16
    asm("push               0x000000f6");                                      // 0x0076b6e6    68f6000000
    asm("mov.s              ecx, esi");                                        // 0x0076b6eb    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x0076b6ed    ff92e8080000
    asm("pop                edi");                                             // 0x0076b6f3    5f
    asm("pop                esi");                                             // 0x0076b6f4    5e
    asm("pop                ebp");                                             // 0x0076b6f5    5d
    asm("pop                ebx");                                             // 0x0076b6f6    5b
    asm("add                esp, 0x20");                                       // 0x0076b6f7    83c420
    asm("ret                0x001c");                                          // 0x0076b6fa    c21c00
    asm("_jmp_addr_0x0076b6fd:");
    asm("{disp8} fld        dword ptr [esp + 0x48]");                          // 0x0076b6fd    d9442448
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x26e4]");                // 0x0076b701    d805e4b68a00
    asm("{disp8} fcomp      dword ptr [esp + 0x14]");                          // 0x0076b707    d85c2414
    asm("fnstsw             ax");                                              // 0x0076b70b    dfe0
    asm("test               ah, 0x01");                                        // 0x0076b70d    f6c401
    asm("{disp8} je         _jmp_addr_0x0076b746");                            // 0x0076b710    7434
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                     // 0x0076b712    8b442444
    asm("push               eax");                                             // 0x0076b716    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x0076b717    8d4c241c
    asm("push               ecx");                                             // 0x0076b71b    51
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x0076b71c    e84f1bfeff
    asm("{disp8} fstp       dword ptr [esp + 0x50]");                          // 0x0076b721    d95c2450
    asm("{disp8} mov        edx, dword ptr [esp + 0x50]");                     // 0x0076b725    8b542450
    asm("push               0x40a00000");                                      // 0x0076b729    680000a040
    asm("push               edx");                                             // 0x0076b72e    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x34]");                     // 0x0076b72f    8d442434
    asm("push               eax");                                             // 0x0076b733    50
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");   // 0x0076b734    e8471efeff
    asm("add                esp, 0x14");                                       // 0x0076b739    83c414
    asm("push               eax");                                             // 0x0076b73c    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x0076b73d    8d4c241c
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");              // 0x0076b741    e8ca9ce9ff
    asm("_jmp_addr_0x0076b746:");
    asm("push               esi");                                             // 0x0076b746    56
    asm("sub                esp, 0x10");                                       // 0x0076b747    83ec10
    asm("mov.s              ebp, esp");                                        // 0x0076b74a    8bec
    asm("push               ebx");                                             // 0x0076b74c    53
    asm("mov                eax, 0x00761bb0");                                 // 0x0076b74d    b8b01b7600
    asm("{disp8} mov        dword ptr [ebp + 0x00], eax");                     // 0x0076b752    894500
    asm("xor.s              ecx, ecx");                                        // 0x0076b755    33c9
    asm("{disp8} mov        dword ptr [ebp + 0x04], ecx");                     // 0x0076b757    894d04
    asm("push               0x3f800000");                                      // 0x0076b75a    680000803f
    asm("xor.s              edx, edx");                                        // 0x0076b75f    33d2
    asm("{disp8} mov        dword ptr [ebp + 0x08], edx");                     // 0x0076b761    895508
    asm("push               0x40a00000");                                      // 0x0076b764    680000a040
    asm("{disp8} lea        ecx, dword ptr [esp + 0x38]");                     // 0x0076b769    8d4c2438
    asm("push               ecx");                                             // 0x0076b76d    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x3c]");                     // 0x0076b76e    8d54243c
    asm("push               edx");                                             // 0x0076b772    52
    asm("{disp8} mov        dword ptr [ebp + 0x0c], edi");                     // 0x0076b773    897d0c
    asm("call               ?FindClearArea@Town@@SA_NAAUMapCoords@@0MMMP8Object@@AEHPBX1@ZPAV3@@Z");                               // 0x0076b776    e8755bfdff
    asm("add                esp, 0x28");                                       // 0x0076b77b    83c428
    asm("test               eax, eax");                                        // 0x0076b77e    85c0
    asm("{disp8} je         _jmp_addr_0x0076b7a3");                            // 0x0076b780    7421
    asm("mov                eax, dword ptr [esi]");                            // 0x0076b782    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076b784    8bce
    asm("call               dword ptr [eax + 0xb04]");                         // 0x0076b786    ff90040b0000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x0076b78c    8d4c2418
    asm("push               eax");                                             // 0x0076b790    50
    asm("push               ecx");                                             // 0x0076b791    51
    asm("mov.s              ecx, esi");                                        // 0x0076b792    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076b794    e8f770e8ff
    asm("pop                edi");                                             // 0x0076b799    5f
    asm("pop                esi");                                             // 0x0076b79a    5e
    asm("pop                ebp");                                             // 0x0076b79b    5d
    asm("pop                ebx");                                             // 0x0076b79c    5b
    asm("add                esp, 0x20");                                       // 0x0076b79d    83c420
    asm("ret                0x001c");                                          // 0x0076b7a0    c21c00
    asm("_jmp_addr_0x0076b7a3:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x38]");                     // 0x0076b7a3    8b442438
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                     // 0x0076b7a7    8d542418
    asm("push               edx");                                             // 0x0076b7ab    52
    asm("lea                ecx, dword ptr [eax + esi * 0x1]");                // 0x0076b7ac    8d0c30
    asm("call               dword ptr [esp + 0x38]");                          // 0x0076b7af    ff542438
    asm("test               eax, eax");                                        // 0x0076b7b3    85c0
    asm("{disp8} je         _jmp_addr_0x0076b7ce");                            // 0x0076b7b5    7417
    asm("mov                edx, dword ptr [esi]");                            // 0x0076b7b7    8b16
    asm("mov.s              ecx, esi");                                        // 0x0076b7b9    8bce
    asm("call               dword ptr [edx + 0xb04]");                         // 0x0076b7bb    ff92040b0000
    asm("mov.s              ecx, esi");                                        // 0x0076b7c1    8bce
    asm("push               eax");                                             // 0x0076b7c3    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                     // 0x0076b7c4    8d44241c
    asm("push               eax");                                             // 0x0076b7c8    50
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076b7c9    e8c270e8ff
    asm("_jmp_addr_0x0076b7ce:");
    asm("pop                edi");                                             // 0x0076b7ce    5f
    asm("pop                esi");                                             // 0x0076b7cf    5e
    asm("pop                ebp");                                             // 0x0076b7d0    5d
    asm("pop                ebx");                                             // 0x0076b7d1    5b
    asm("add                esp, 0x20");                                       // 0x0076b7d2    83c420
    asm("ret                0x001c");                                          // 0x0076b7d5    c21c00
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesHomeFromWorship__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?ArrivesHome@Villager@@QAEIXZ");                   // 0x0076b7e0    e94b51ffff
    __builtin_unreachable();
}

bool32_t __fastcall SleepInTentFromWorship__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?SleepInTent@Villager@@QAEIXZ");                   // 0x0076b7f0    e9eb62ffff
    __builtin_unreachable();
}

bool32_t __fastcall BreederJustLanded__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x20");                                       // 0x0076b800    83ec20
    asm("push               ebx");                                             // 0x0076b803    53
    asm("mov.s              ebx, ecx");                                        // 0x0076b804    8bd9
    asm("push               ebp");                                             // 0x0076b806    55
    asm("{disp8} lea        ebp, dword ptr [ebx + 0x14]");                     // 0x0076b807    8d6b14
    asm("mov.s              eax, ebp");                                        // 0x0076b80a    8bc5
    asm("mov                ecx, dword ptr [eax]");                            // 0x0076b80c    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x0076b80e    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x0076b811    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                     // 0x0076b814    894c241c
    asm("{disp32} mov       ecx, dword ptr [_villager_states_float_max_0x0099aa0c]"); // 0x0076b818    8b0d0caa9900
    asm("push               esi");                                             // 0x0076b81e    56
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                     // 0x0076b81f    89542424
    asm("mov                edx, dword ptr [ebx]");                            // 0x0076b823    8b13
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                     // 0x0076b825    894c240c
    asm("push               edi");                                             // 0x0076b829    57
    asm("mov.s              ecx, ebx");                                        // 0x0076b82a    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                     // 0x0076b82c    8944242c
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");              // 0x0076b830    c744241800000000
    asm("call               dword ptr [edx + 0x450]");                         // 0x0076b838    ff9250040000
    asm("mov.s              edi, eax");                                        // 0x0076b83e    8bf8
    asm("neg                edi");                                             // 0x0076b840    f7df
    asm("mov                eax, 0x00000001");                                 // 0x0076b842    b801000000
    asm("sbb.s              edi, edi");                                        // 0x0076b847    1bff
    asm("inc                edi");                                             // 0x0076b849    47
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                     // 0x0076b84a    89442420
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                     // 0x0076b84e    8944241c
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000009");              // 0x0076b852    c744241409000000
    asm("_jmp_addr_0x0076b85a:");
    asm("push               0x0");                                             // 0x0076b85a    6a00
    asm("push               0x009cafc8");                                      // 0x0076b85c    68c8af9c00
    asm("push               0x009c7f50");                                      // 0x0076b861    68507f9c00
    asm("push               0x0");                                             // 0x0076b866    6a00
    asm("push               0x0");                                             // 0x0076b868    6a00
    asm("push               0x2");                                             // 0x0076b86a    6a02
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                     // 0x0076b86c    8d4c243c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16"); // 0x0076b870    e84b8de9ff
    asm("push               eax");                                             // 0x0076b875    50
    asm("call               ___RTDynamicCast");                                // 0x0076b876    e89ea10500
    asm("mov.s              esi, eax");                                        // 0x0076b87b    8bf0
    asm("add                esp, 0x14");                                       // 0x0076b87d    83c414
    asm("test               esi, esi");                                        // 0x0076b880    85f6
    asm("{disp8} je         _jmp_addr_0x0076b8ba");                            // 0x0076b882    7436
    asm("mov.s              ecx, esi");                                        // 0x0076b884    8bce
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");              // 0x0076b886    e80558ffff
    asm("test               eax, eax");                                        // 0x0076b88b    85c0
    asm("{disp8} je         _jmp_addr_0x0076b8ba");                            // 0x0076b88d    742b
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                     // 0x0076b88f    8b4628
    asm("cmp                dword ptr [eax + 0x000001f8], edi");               // 0x0076b892    39b8f8010000
    asm("{disp8} jne        _jmp_addr_0x0076b8ba");                            // 0x0076b898    7520
    asm("push               ebp");                                             // 0x0076b89a    55
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x0076b89b    8d4e14
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                            // 0x0076b89e    e82da4e9ff
    asm("{disp8} fcom       dword ptr [esp + 0x10]");                          // 0x0076b8a3    d8542410
    asm("fnstsw             ax");                                              // 0x0076b8a7    dfe0
    asm("test               ah, 0x01");                                        // 0x0076b8a9    f6c401
    asm("{disp8} je         _jmp_addr_0x0076b8b8");                            // 0x0076b8ac    740a
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                          // 0x0076b8ae    d95c2410
    asm("{disp8} mov        dword ptr [esp + 0x18], esi");                     // 0x0076b8b2    89742418
    asm("{disp8} jmp        _jmp_addr_0x0076b8ba");                            // 0x0076b8b6    eb02
    asm("_jmp_addr_0x0076b8b8:");
    asm("fstp               st(0)");                                           // 0x0076b8b8    ddd8
    asm("_jmp_addr_0x0076b8ba:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x0076b8ba    8d4c241c
    asm("push               ecx");                                             // 0x0076b8be    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                     // 0x0076b8bf    8d542424
    asm("push               edx");                                             // 0x0076b8c3    52
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");          // 0x0076b8c4    e8171ffeff
    asm("add                esp, 0x08");                                       // 0x0076b8c9    83c408
    asm("push               eax");                                             // 0x0076b8cc    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                     // 0x0076b8cd    8d4c2428
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");              // 0x0076b8d1    e89a9be9ff
    asm("dec                dword ptr [esp + 0x14]");                          // 0x0076b8d6    ff4c2414
    asm("{disp32} jne       _jmp_addr_0x0076b85a");                            // 0x0076b8da    0f857affffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                     // 0x0076b8e0    8b442418
    asm("test               eax, eax");                                        // 0x0076b8e4    85c0
    asm("{disp8} je         _jmp_addr_0x0076b8fd");                            // 0x0076b8e6    7415
    asm("push               eax");                                             // 0x0076b8e8    50
    asm("mov.s              ecx, ebx");                                        // 0x0076b8e9    8bcb
    asm("call               ?GoAndHaveSexWith@Villager@@QAEIPAV1@@Z");         // 0x0076b8eb    e8d0b9ffff
    asm("pop                edi");                                             // 0x0076b8f0    5f
    asm("pop                esi");                                             // 0x0076b8f1    5e
    asm("pop                ebp");                                             // 0x0076b8f2    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076b8f3    b801000000
    asm("pop                ebx");                                             // 0x0076b8f8    5b
    asm("add                esp, 0x20");                                       // 0x0076b8f9    83c420
    asm("ret");                                                                // 0x0076b8fc    c3
    asm("_jmp_addr_0x0076b8fd:");
    asm("mov                eax, dword ptr [ebx]");                            // 0x0076b8fd    8b03
    asm("push               0x000000a3");                                      // 0x0076b8ff    68a3000000
    asm("mov.s              ecx, ebx");                                        // 0x0076b904    8bcb
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x0076b906    ff90e8080000
    asm("pop                edi");                                             // 0x0076b90c    5f
    asm("pop                esi");                                             // 0x0076b90d    5e
    asm("pop                ebp");                                             // 0x0076b90e    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076b90f    b801000000
    asm("pop                ebx");                                             // 0x0076b914    5b
    asm("add                esp, 0x20");                                       // 0x0076b915    83c420
    asm("ret");                                                                // 0x0076b918    c3
    __builtin_unreachable();
}
