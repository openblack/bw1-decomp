#include "Villager.h"

const float villager_civic_float1000p0_0x0099a940 = 1000.0f;
const float villager_civic_float10p0_0x0099a944 = 10.0f;
const float villager_civic_num_days_in_year_0x0099a948 = 365.25f;
const float villager_civic_seconds_in_day_0x0099a94c = 86400.0f;

float villager_civic_float_0x00c23704 = 40.0f;
char s_VillagerCivic_cpp[] = "C:\\dev\\MP\\Black\\VillagerCivic.cpp";

struct MapCoords villager_civic_mapcoords_0x00db9dd8;
struct Living* villager_civic_living_0x00db9de4;
struct Object* villager_civic_object_0x00db9de8;
float villager_civic_float_0x00db9dec;
float villager_seconds_in_year_0x00db9df0;

void __cdecl globl_ct_0x00758120(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00758120    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00758126    b001
    asm("test               al, cl");                                        // 0x00758128    84c8
    asm("{disp8} jne        _jmp_addr_0x00758134");                          // 0x0075812a    7508
    asm("or.s               cl, al");                                        // 0x0075812c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075812e    880d34c9fa00
    asm("_jmp_addr_0x00758134:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00758140");   // 0x00758134    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00758140(void)
{
    asm("push               0x00407870");                                    // 0x00758140    6870784000
    asm("call               _atexit");                                       // 0x00758145    e847d60600
    asm("pop                ecx");                                           // 0x0075814a    59
}

void __cdecl globl_ct_0x00758150(void)
{
    asm("{disp32} jmp       _FUN_00758160__8VillagerFv");                    // 0x00758150    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00758160__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_civic_seconds_in_day_0x0099a94c]");   // 0x00758160    d9054ca99900
    asm("{disp32} fmul dword ptr [_villager_civic_num_days_in_year_0x0099a948]"); // 0x00758166    d80d48a99900
    asm("{disp32} fstp dword ptr [_villager_seconds_in_year_0x00db9df0]");         // 0x0075816c    d91df09ddb00
}

__attribute__((XOR32rr_REV))
float __fastcall CheckNeededForCivic__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00758180    56
    asm("mov.s              esi, ecx");                                      // 0x00758181    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00758183    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758185    ff5048
    asm("test               eax, eax");                                      // 0x00758188    85c0
    asm("{disp8} je         _jmp_addr_0x0075819a");                          // 0x0075818a    740e
    asm("mov.s              ecx, esi");                                      // 0x0075818c    8bce
    asm("call               ?CheckNeededForTownDesire@Villager@@QAEIXZ");    // 0x0075818e    e80d000000
    asm("cmp                eax, 0x01");                                     // 0x00758193    83f801
    asm("{disp8} jne        _jmp_addr_0x0075819a");                          // 0x00758196    7502
    asm("pop                esi");                                           // 0x00758198    5e
    asm("ret");                                                              // 0x00758199    c3
    asm("_jmp_addr_0x0075819a:");
    asm("xor.s              eax, eax");                                      // 0x0075819a    33c0
    asm("pop                esi");                                           // 0x0075819c    5e
    asm("ret");                                                              // 0x0075819d    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CheckNeededForTownDesire__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x007581a0    51
    asm("push               esi");                                           // 0x007581a1    56
    asm("mov.s              esi, ecx");                                      // 0x007581a2    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007581a4    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x007581a6    ff5048
    asm("test               eax, eax");                                      // 0x007581a9    85c0
    asm("{disp8} je         _jmp_addr_0x007581db");                          // 0x007581ab    742e
    asm("mov.s              ecx, esi");                                      // 0x007581ad    8bce
    asm("call               ?GetOwnDesiresTrigger@Villager@@QAEMXZ");        // 0x007581af    e82c000000
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x007581b4    d95c2404
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x007581b8    8b4c2404
    asm("mov                edx, dword ptr [esi]");                          // 0x007581bc    8b16
    asm("push               ecx");                                           // 0x007581be    51
    asm("push               esi");                                           // 0x007581bf    56
    asm("mov.s              ecx, esi");                                      // 0x007581c0    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x007581c2    ff5248
    asm("mov.s              ecx, eax");                                      // 0x007581c5    8bc8
    asm("add                ecx, 0x34");                                     // 0x007581c7    83c134
    asm("call               _jmp_addr_0x00745ff0");                          // 0x007581ca    e821defeff
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xfe, 0xff");// and word ptr [esi + 0x000000e0], -0x0002 // 0x007581cf    6681a6e0000000feff
    asm("pop                esi");                                           // 0x007581d8    5e
    asm("pop                ecx");                                           // 0x007581d9    59
    asm("ret");                                                              // 0x007581da    c3
    asm("_jmp_addr_0x007581db:");
    asm("xor.s              eax, eax");                                      // 0x007581db    33c0
    asm("pop                esi");                                           // 0x007581dd    5e
    asm("pop                ecx");                                           // 0x007581de    59
    asm("ret");                                                              // 0x007581df    c3
    __builtin_unreachable();
}

float __fastcall GetOwnDesiresTrigger__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x007581e0    83ec08
    asm("push               esi");                                           // 0x007581e3    56
    asm("mov.s              esi, ecx");                                      // 0x007581e4    8bf1
    asm("test               byte ptr [esi + 0x000000e0], 0x01");             // 0x007581e6    f686e000000001
    asm("{disp8} je         _jmp_addr_0x007581fa");                          // 0x007581ed    740b
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x007581ef    d90598a38a00
    asm("pop                esi");                                           // 0x007581f5    5e
    asm("add                esp, 0x08");                                     // 0x007581f6    83c408
    asm("ret");                                                              // 0x007581f9    c3
    asm("_jmp_addr_0x007581fa:");
    asm("mov.s              ecx, esi");                                      // 0x007581fa    8bce
    asm("call               ?IsHungry@Villager@@QAE_NXZ");                   // 0x007581fc    e8ffa3ffff
    asm("test               eax, eax");                                      // 0x00758201    85c0
    asm("{disp8} je         _jmp_addr_0x00758212");                          // 0x00758203    740d
    asm("mov.s              ecx, esi");                                      // 0x00758205    8bce
    asm("call               ?GetDesireForFood@Villager@@QAEMXZ");            // 0x00758207    e844390000
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x0075820c    d95c2404
    asm("{disp8} jmp        _jmp_addr_0x0075821a");                          // 0x00758210    eb08
    asm("_jmp_addr_0x00758212:");
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x00758212    c744240400000000
    asm("_jmp_addr_0x0075821a:");
    asm("push               edi");                                           // 0x0075821a    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x0075821b    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x0075821e    8bce
    asm("call               ?GetDesireForLife@Villager@@QAEXXZ");            // 0x00758220    e87b390000
    asm("{disp32} fsub      dword ptr [edi + 0x0000038c]");                  // 0x00758225    d8a78c030000
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075822b    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00758231    dfe0
    asm("test               ah, 0x41");                                      // 0x00758233    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075824e");                          // 0x00758236    7516
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00758238    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x0075823b    8bce
    asm("call               ?GetDesireForLife@Villager@@QAEXXZ");            // 0x0075823d    e85e390000
    asm("{disp32} fsub      dword ptr [edi + 0x0000038c]");                  // 0x00758242    d8a78c030000
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00758248    d95c240c
    asm("{disp8} jmp        _jmp_addr_0x00758256");                          // 0x0075824c    eb08
    asm("_jmp_addr_0x0075824e:");
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075824e    c744240c00000000
    asm("_jmp_addr_0x00758256:");
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00758256    d9442408
    asm("pop                edi");                                           // 0x0075825a    5f
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x0075825b    d85c2408
    asm("fnstsw             ax");                                            // 0x0075825f    dfe0
    asm("test               ah, 0x41");                                      // 0x00758261    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075826c");                          // 0x00758264    7506
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x00758266    d9442404
    asm("{disp8} jmp        _jmp_addr_0x00758270");                          // 0x0075826a    eb04
    asm("_jmp_addr_0x0075826c:");
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x0075826c    d9442408
    asm("_jmp_addr_0x00758270:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x00758270    d9442404
    asm("{disp8} fcomp      dword ptr [esp + 0x08]");                        // 0x00758274    d85c2408
    asm("fnstsw             ax");                                            // 0x00758278    dfe0
    asm("test               ah, 0x01");                                      // 0x0075827a    f6c401
    asm("{disp8} je         _jmp_addr_0x00758285");                          // 0x0075827d    7406
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x0075827f    d9442404
    asm("{disp8} jmp        _jmp_addr_0x00758289");                          // 0x00758283    eb04
    asm("_jmp_addr_0x00758285:");
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00758285    d9442408
    asm("_jmp_addr_0x00758289:");
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00758289    d80db4a38a00
    asm("mov                eax, dword ptr [esi]");                          // 0x0075828f    8b06
    asm("mov.s              ecx, esi");                                      // 0x00758291    8bce
    asm("fadd               st, st(1)");                                     // 0x00758293    d8c1
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00758295    d95c2408
    asm("fstp               st(0)");                                         // 0x00758299    ddd8
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x0075829b    ff90f80a0000
    asm("test               eax, eax");                                      // 0x007582a1    85c0
    asm("{disp8} je         _jmp_addr_0x007582c7");                          // 0x007582a3    7422
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x007582a5    d9442408
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x21280]");             // 0x007582a9    d81d80a28c00
    asm("fnstsw             ax");                                            // 0x007582af    dfe0
    asm("test               ah, 0x41");                                      // 0x007582b1    f6c441
    asm("{disp8} je         _jmp_addr_0x007582c7");                          // 0x007582b4    7411
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x3de147ae");            // 0x007582b6    c7442408ae47e13d
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x007582be    d9442408
    asm("pop                esi");                                           // 0x007582c2    5e
    asm("add                esp, 0x08");                                     // 0x007582c3    83c408
    asm("ret");                                                              // 0x007582c6    c3
    asm("_jmp_addr_0x007582c7:");
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x007582c7    d9442408
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x007582cb    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x007582d1    dfe0
    asm("test               ah, 0x01");                                      // 0x007582d3    f6c401
    asm("{disp8} je         _jmp_addr_0x007582e1");                          // 0x007582d6    7409
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x007582d8    d9442408
    asm("pop                esi");                                           // 0x007582dc    5e
    asm("add                esp, 0x08");                                     // 0x007582dd    83c408
    asm("ret");                                                              // 0x007582e0    c3
    asm("_jmp_addr_0x007582e1:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x007582e1    d90590a38a00
    asm("pop                esi");                                           // 0x007582e7    5e
    asm("add                esp, 0x08");                                     // 0x007582e8    83c408
    asm("ret");                                                              // 0x007582eb    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeededForHarvest__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007582f0    56
    asm("mov.s              esi, ecx");                                      // 0x007582f1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007582f3    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x007582f5    ff5048
    asm("mov.s              ecx, eax");                                      // 0x007582f8    8bc8
    asm("call               ?IsHarvestTime@Town@@QAE_NXZ");                  // 0x007582fa    e8d12ffeff
    asm("test               eax, eax");                                      // 0x007582ff    85c0
    asm("{disp8} je         _jmp_addr_0x0075832e");                          // 0x00758301    742b
    asm("mov                edx, dword ptr [esi]");                          // 0x00758303    8b16
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00758305    8d4e14
    asm("push               ecx");                                           // 0x00758308    51
    asm("mov.s              ecx, esi");                                      // 0x00758309    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075830b    ff5248
    asm("mov.s              ecx, eax");                                      // 0x0075830e    8bc8
    asm("call               ?FindClosesFieldToWithFood@Town@@QAEPAVField@@ABUMapCoords@@@Z");                          // 0x00758310    e8bb30feff
    asm("test               eax, eax");                                      // 0x00758315    85c0
    asm("{disp8} je         _jmp_addr_0x0075832e");                          // 0x00758317    7415
    asm("push               0x0");                                           // 0x00758319    6a00
    asm("push               eax");                                           // 0x0075831b    50
    asm("mov.s              ecx, esi");                                      // 0x0075831c    8bce
    asm("call               ?SetFarmerGotoField@Villager@@QAEIPAVField@@H@Z");                          // 0x0075831e    e81d190000
    asm("test               eax, eax");                                      // 0x00758323    85c0
    asm("{disp8} je         _jmp_addr_0x0075832e");                          // 0x00758325    7407
    asm("mov                eax, 0x00000001");                               // 0x00758327    b801000000
    asm("pop                esi");                                           // 0x0075832c    5e
    asm("ret");                                                              // 0x0075832d    c3
    asm("_jmp_addr_0x0075832e:");
    asm("xor.s              eax, eax");                                      // 0x0075832e    33c0
    asm("pop                esi");                                           // 0x00758330    5e
    asm("ret");                                                              // 0x00758331    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeededForBuilding__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00758340    56
    asm("mov.s              esi, ecx");                                      // 0x00758341    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00758343    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758345    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00758348    8bc8
    asm("call               _jmp_addr_0x0073e2f0");                          // 0x0075834a    e8a15ffeff
    asm("test               eax, eax");                                      // 0x0075834f    85c0
    asm("{disp8} je         _jmp_addr_0x00758387");                          // 0x00758351    7434
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000f2]");               // 0x00758353    8a96f2000000
    asm("xor.s              eax, eax");                                      // 0x00758359    33c0
    asm("cmp                dl, 0x04");                                      // 0x0075835b    80fa04
    asm("mov                edx, dword ptr [esi]");                          // 0x0075835e    8b16
    asm("sete               al");                                            // 0x00758360    0f94c0
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00758363    8d4e14
    asm("push               eax");                                           // 0x00758366    50
    asm("push               ecx");                                           // 0x00758367    51
    asm("mov.s              ecx, esi");                                      // 0x00758368    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075836a    ff5248
    asm("mov.s              ecx, eax");                                      // 0x0075836d    8bc8
    asm("call               ?GetBestBuildingSite@Town@@QAEIABUMapCoords@@H@Z");                          // 0x0075836f    e8ec4bfeff
    asm("test               eax, eax");                                      // 0x00758374    85c0
    asm("{disp8} je         _jmp_addr_0x00758387");                          // 0x00758376    740f
    asm("push               eax");                                           // 0x00758378    50
    asm("mov.s              ecx, esi");                                      // 0x00758379    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x0075837b    e830010000
    asm("cmp                eax, 0x01");                                     // 0x00758380    83f801
    asm("{disp8} jne        _jmp_addr_0x00758387");                          // 0x00758383    7502
    asm("pop                esi");                                           // 0x00758385    5e
    asm("ret");                                                              // 0x00758386    c3
    asm("_jmp_addr_0x00758387:");
    asm("xor.s              eax, eax");                                      // 0x00758387    33c0
    asm("pop                esi");                                           // 0x00758389    5e
    asm("ret");                                                              // 0x0075838a    c3
    __builtin_unreachable();
}

bool32_t __fastcall RunAwayFromObjectReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x00758390    83ec10
    asm("push               ebx");                                           // 0x00758393    53
    asm("push               ebp");                                           // 0x00758394    55
    asm("push               esi");                                           // 0x00758395    56
    asm("push               edi");                                           // 0x00758396    57
    asm("mov.s              edi, ecx");                                      // 0x00758397    8bf9
    asm("{disp32} mov       ebp, dword ptr [edi + 0x000000bc]");             // 0x00758399    8bafbc000000
    asm("test               ebp, ebp");                                      // 0x0075839f    85ed
    asm("{disp32} je        _jmp_addr_0x0075848e");                          // 0x007583a1    0f84e7000000
    asm("{disp8} mov        eax, dword ptr [ebp + 0x00]");                   // 0x007583a7    8b4500
    asm("mov.s              ecx, ebp");                                      // 0x007583aa    8bcd
    asm("call               dword ptr [eax + 0x2c]");                        // 0x007583ac    ff502c
    asm("test               eax, eax");                                      // 0x007583af    85c0
    asm("{disp32} je        _jmp_addr_0x0075848e");                          // 0x007583b1    0f84d7000000
    asm("{disp8} lea        esi, dword ptr [ebp + 0x14]");                   // 0x007583b7    8d7514
    asm("{disp8} lea        ebx, dword ptr [edi + 0x14]");                   // 0x007583ba    8d5f14
    asm("push               esi");                                           // 0x007583bd    56
    asm("push               ebx");                                           // 0x007583be    53
    asm("call               _jmp_addr_0x0074cd50");                          // 0x007583bf    e88c49ffff
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x007583c4    d95c2418
    asm("add                esp, 0x08");                                     // 0x007583c8    83c408
    asm("mov.s              ecx, edi");                                      // 0x007583cb    8bcf
    asm("call               ?GetReaction@Living@@QAEXXZ");                          // 0x007583cd    e88e46e9ff
    asm("mov.s              ecx, eax");                                      // 0x007583d2    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x007583d4    e827c3f8ff
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x007583d9    d9442410
    asm("{disp8} fcomp      dword ptr [eax + 0x44]");                        // 0x007583dd    d85844
    asm("fnstsw             ax");                                            // 0x007583e0    dfe0
    asm("test               ah, 0x01");                                      // 0x007583e2    f6c401
    asm("{disp32} je        _jmp_addr_0x0075848e");                          // 0x007583e5    0f84a3000000
    asm("mov                ecx, dword ptr [ebx]");                          // 0x007583eb    8b0b
    asm("cmp                ecx, dword ptr [esi]");                          // 0x007583ed    3b0e
    asm("{disp8} jne        _jmp_addr_0x007583ff");                          // 0x007583ef    750e
    asm("{disp8} mov        edx, dword ptr [edi + 0x18]");                   // 0x007583f1    8b5718
    asm("cmp                edx, dword ptr [ebp + 0x18]");                   // 0x007583f4    3b5518
    asm("{disp8} jne        _jmp_addr_0x007583ff");                          // 0x007583f7    7506
    asm("{disp8} mov        bx, word ptr [edi + 0x5c]");                     // 0x007583f9    668b5f5c
    asm("{disp8} jmp        _jmp_addr_0x0075840b");                          // 0x007583fd    eb0c
    asm("_jmp_addr_0x007583ff:");
    asm("push               ebx");                                           // 0x007583ff    53
    asm("push               esi");                                           // 0x00758400    56
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                               // 0x00758401    e83a4effff
    asm("add                esp, 0x08");                                     // 0x00758406    83c408
    asm("mov.s              ebx, eax");                                      // 0x00758409    8bd8
    asm("_jmp_addr_0x0075840b:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x04]");                   // 0x0075840b    8b4e04
    asm("mov                eax, dword ptr [esi]");                          // 0x0075840e    8b06
    asm("{disp8} mov        edx, dword ptr [esi + 0x08]");                   // 0x00758410    8b5608
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x00758413    894c2418
    asm("mov.s              ecx, edi");                                      // 0x00758417    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00758419    89442414
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x0075841d    8954241c
    asm("call               ?GetReaction@Living@@QAEXXZ");                          // 0x00758421    e83a46e9ff
    asm("mov.s              ecx, eax");                                      // 0x00758426    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00758428    e8d3c2f8ff
    asm("{disp8} mov        eax, dword ptr [eax + 0x44]");                   // 0x0075842d    8b4044
    asm("push               eax");                                           // 0x00758430    50
    asm("push               ebx");                                           // 0x00758431    53
    asm("call               ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z");    // 0x00758432    e8e94fffff
    asm("add                dword ptr [esp + 0x1c], eax");                   // 0x00758437    0144241c
    asm("add                esp, 0x08");                                     // 0x0075843b    83c408
    asm("mov.s              ecx, edi");                                      // 0x0075843e    8bcf
    asm("call               ?GetReaction@Living@@QAEXXZ");                          // 0x00758440    e81b46e9ff
    asm("mov.s              ecx, eax");                                      // 0x00758445    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00758447    e8b4c2f8ff
    asm("{disp8} mov        ecx, dword ptr [eax + 0x44]");                   // 0x0075844c    8b4844
    asm("push               ecx");                                           // 0x0075844f    51
    asm("push               ebx");                                           // 0x00758450    53
    asm("call               _jmp_addr_0x0074d450");                          // 0x00758451    e8fa4fffff
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                   // 0x00758456    8b542420
    asm("add.s              edx, eax");                                      // 0x0075845a    03d0
    asm("add                esp, 0x08");                                     // 0x0075845c    83c408
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x0075845f    8d4c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00758463    89542418
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                   // 0x00758467    e854beeaff
    asm("test               eax, eax");                                      // 0x0075846c    85c0
    asm("{disp8} je         _jmp_addr_0x0075848e");                          // 0x0075846e    741e
    asm("push               0x000000a6");                                    // 0x00758470    68a6000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x00758475    8d542418
    asm("push               edx");                                           // 0x00758479    52
    asm("mov.s              ecx, edi");                                      // 0x0075847a    8bcf
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075847c    e80fa4e9ff
    asm("pop                edi");                                           // 0x00758481    5f
    asm("pop                esi");                                           // 0x00758482    5e
    asm("pop                ebp");                                           // 0x00758483    5d
    asm("mov                eax, 0x00000001");                               // 0x00758484    b801000000
    asm("pop                ebx");                                           // 0x00758489    5b
    asm("add                esp, 0x10");                                     // 0x0075848a    83c410
    asm("ret");                                                              // 0x0075848d    c3
    asm("_jmp_addr_0x0075848e:");
    asm("mov                eax, dword ptr [edi]");                          // 0x0075848e    8b07
    asm("mov.s              ecx, edi");                                      // 0x00758490    8bcf
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00758492    ff909c090000
    asm("pop                edi");                                           // 0x00758498    5f
    asm("pop                esi");                                           // 0x00758499    5e
    asm("pop                ebp");                                           // 0x0075849a    5d
    asm("mov                eax, 0x00000001");                               // 0x0075849b    b801000000
    asm("pop                ebx");                                           // 0x007584a0    5b
    asm("add                esp, 0x10");                                     // 0x007584a1    83c410
    asm("ret");                                                              // 0x007584a4    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupBuildingObject__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    asm("push               ebx");                                           // 0x007584b0    53
    asm("push               esi");                                           // 0x007584b1    56
    asm("mov.s              ebx, ecx");                                      // 0x007584b2    8bd9
    asm("mov                eax, dword ptr [ebx]");                          // 0x007584b4    8b03
    asm("push               edi");                                           // 0x007584b6    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x007584b7    ff5048
    asm("test               eax, eax");                                      // 0x007584ba    85c0
    asm("{disp8} je         _jmp_addr_0x00758520");                          // 0x007584bc    7462
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x007584be    8b7c2410
    asm("mov.s              ecx, edi");                                      // 0x007584c2    8bcf
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x007584c4    e8a737ceff
    asm("mov.s              esi, eax");                                      // 0x007584c9    8bf0
    asm("test               esi, esi");                                      // 0x007584cb    85f6
    asm("{disp8} je         _jmp_addr_0x00758520");                          // 0x007584cd    7451
    asm("mov                edx, dword ptr [esi]");                          // 0x007584cf    8b16
    asm("mov.s              ecx, esi");                                      // 0x007584d1    8bce
    asm("call               dword ptr [edx + 0x890]");                       // 0x007584d3    ff9290080000
    asm("cmp                eax, 0x01");                                     // 0x007584d9    83f801
    asm("{disp8} jne        _jmp_addr_0x007584ec");                          // 0x007584dc    750e
    asm("mov                eax, dword ptr [esi]");                          // 0x007584de    8b06
    asm("mov.s              ecx, esi");                                      // 0x007584e0    8bce
    asm("call               dword ptr [eax + 0x88c]");                       // 0x007584e2    ff908c080000
    asm("test               eax, eax");                                      // 0x007584e8    85c0
    asm("{disp8} jne        _jmp_addr_0x00758520");                          // 0x007584ea    7534
    asm("_jmp_addr_0x007584ec:");
    asm("mov.s              ecx, edi");                                      // 0x007584ec    8bcf
    asm("call               ?GetClearAreaRadius@BuildingSite@@QAEMXZ");                          // 0x007584ee    e8ed38ceff
    asm("push               ecx");                                           // 0x007584f3    51
    asm("fstp               dword ptr [esp]");                               // 0x007584f4    d91c24
    asm("add                esi, 0x14");                                     // 0x007584f7    83c614
    asm("push               esi");                                           // 0x007584fa    56
    asm("mov.s              ecx, ebx");                                      // 0x007584fb    8bcb
    asm("call               ?CheckForClearArea@Villager@@QAEIABUMapCoords@@M@Z");                          // 0x007584fd    e89e0b0000
    asm("cmp                eax, 0x01");                                     // 0x00758502    83f801
    asm("{disp8} jne        _jmp_addr_0x0075850d");                          // 0x00758505    7506
    asm("pop                edi");                                           // 0x00758507    5f
    asm("pop                esi");                                           // 0x00758508    5e
    asm("pop                ebx");                                           // 0x00758509    5b
    asm("ret                0x0004");                                        // 0x0075850a    c20400
    asm("_jmp_addr_0x0075850d:");
    asm("push               edi");                                           // 0x0075850d    57
    asm("mov.s              ecx, ebx");                                      // 0x0075850e    8bcb
    asm("call               ?SetupGetBuildingSupplies@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00758510    e8cb010000
    asm("cmp                eax, 0x01");                                     // 0x00758515    83f801
    asm("{disp8} jne        _jmp_addr_0x00758520");                          // 0x00758518    7506
    asm("pop                edi");                                           // 0x0075851a    5f
    asm("pop                esi");                                           // 0x0075851b    5e
    asm("pop                ebx");                                           // 0x0075851c    5b
    asm("ret                0x0004");                                        // 0x0075851d    c20400
    asm("_jmp_addr_0x00758520:");
    asm("pop                edi");                                           // 0x00758520    5f
    asm("pop                esi");                                           // 0x00758521    5e
    asm("xor.s              eax, eax");                                      // 0x00758522    33c0
    asm("pop                ebx");                                           // 0x00758524    5b
    asm("ret                0x0004");                                        // 0x00758525    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupBuildingObject__8VillagerFP13MultiMapFixed(struct Villager* this, const void* edx, struct MultiMapFixed* param_1)
{
    asm("push               esi");                                           // 0x00758530    56
    asm("mov.s              esi, ecx");                                      // 0x00758531    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00758533    8b06
    asm("push               edi");                                           // 0x00758535    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758536    ff5048
    asm("test               eax, eax");                                      // 0x00758539    85c0
    asm("{disp8} jne        _jmp_addr_0x00758544");                          // 0x0075853b    7507
    asm("_jmp_addr_0x0075853d:");
    asm("pop                edi");                                           // 0x0075853d    5f
    asm("xor.s              eax, eax");                                      // 0x0075853e    33c0
    asm("pop                esi");                                           // 0x00758540    5e
    asm("ret                0x0004");                                        // 0x00758541    c20400
    asm("_jmp_addr_0x00758544:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00758544    8b7c240c
    asm("mov                edx, dword ptr [esi]");                          // 0x00758548    8b16
    asm("push               edi");                                           // 0x0075854a    57
    asm("mov.s              ecx, esi");                                      // 0x0075854b    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0075854d    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758550    8bc8
    asm("call               _jmp_addr_0x0073ce40");                          // 0x00758552    e8e948feff
    asm("test               eax, eax");                                      // 0x00758557    85c0
    asm("{disp8} jne        _jmp_addr_0x00758581");                          // 0x00758559    7526
    asm("_jmp_addr_0x0075855b:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075855b    8b06
    asm("push               edi");                                           // 0x0075855d    57
    asm("mov.s              ecx, esi");                                      // 0x0075855e    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758560    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00758563    8bc8
    asm("call               _jmp_addr_0x0073b8e0");                          // 0x00758565    e87633feff
    asm("test               eax, eax");                                      // 0x0075856a    85c0
    asm("{disp8} je         _jmp_addr_0x0075853d");                          // 0x0075856c    74cf
    asm("mov                edx, dword ptr [esi]");                          // 0x0075856e    8b16
    asm("push               edi");                                           // 0x00758570    57
    asm("mov.s              ecx, esi");                                      // 0x00758571    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758573    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758576    8bc8
    asm("call               _jmp_addr_0x0073ce40");                          // 0x00758578    e8c348feff
    asm("test               eax, eax");                                      // 0x0075857d    85c0
    asm("{disp8} je         _jmp_addr_0x0075855b");                          // 0x0075857f    74da
    asm("_jmp_addr_0x00758581:");
    asm("push               eax");                                           // 0x00758581    50
    asm("mov.s              ecx, esi");                                      // 0x00758582    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00758584    e827ffffff
    asm("dec                eax");                                           // 0x00758589    48
    asm("neg                eax");                                           // 0x0075858a    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075858c    1bc0
    asm("pop                edi");                                           // 0x0075858e    5f
    asm("inc                eax");                                           // 0x0075858f    40
    asm("pop                esi");                                           // 0x00758590    5e
    asm("ret                0x0004");                                        // 0x00758591    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SetupWaitForWood__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    asm("sub                esp, 0x3c");                                     // 0x007585a0    83ec3c
    asm("push               ebx");                                           // 0x007585a3    53
    asm("push               esi");                                           // 0x007585a4    56
    asm("push               edi");                                           // 0x007585a5    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                   // 0x007585a6    8d442430
    asm("mov.s              edi, ecx");                                      // 0x007585aa    8bf9
    asm("{disp8} mov        ecx, dword ptr [esp + 0x4c]");                   // 0x007585ac    8b4c244c
    asm("push               eax");                                           // 0x007585b0    50
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x007585b1    e8ba36ceff
    asm("mov.s              ecx, eax");                                      // 0x007585b6    8bc8
    asm("add                ecx, 0x14");                                     // 0x007585b8    83c114
    asm("call               _jmp_addr_0x006050d0");                          // 0x007585bb    e810cbeaff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x3c]");                   // 0x007585c0    8d4c243c
    asm("{disp8} lea        ebx, dword ptr [edi + 0x14]");                   // 0x007585c4    8d5f14
    asm("push               ecx");                                           // 0x007585c7    51
    asm("mov.s              ecx, ebx");                                      // 0x007585c8    8bcb
    asm("mov.s              esi, eax");                                      // 0x007585ca    8bf0
    asm("call               _jmp_addr_0x006050d0");                          // 0x007585cc    e8ffcaeaff
    asm("fld                dword ptr [eax]");                               // 0x007585d1    d900
    asm("fsub               dword ptr [esi]");                               // 0x007585d3    d826
    asm("push               0x000000ca");                                    // 0x007585d5    68ca000000
    asm("push               0x00c23708");                                    // 0x007585da    680837c200
    asm("push               0x40000000");                                    // 0x007585df    6800000040
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x007585e4    d95c2418
    asm("{disp8} fld        dword ptr [eax + 0x04]");                        // 0x007585e8    d94004
    asm("{disp8} fsub       dword ptr [esi + 0x04]");                        // 0x007585eb    d86604
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x007585ee    d95c241c
    asm("{disp8} fld        dword ptr [eax + 0x08]");                        // 0x007585f2    d94008
    asm("{disp8} fsub       dword ptr [esi + 0x08]");                        // 0x007585f5    d86608
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x007585f8    d95c2420
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007585fc    e82f5ff8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2478]");              // 0x00758601    d80578b48a00
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x00758607    d9442420
    asm("add                esp, 0x0c");                                     // 0x0075860b    83c40c
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                        // 0x0075860e    d84c2414
    asm("{disp8} lea        edx, dword ptr [esp + 0x3c]");                   // 0x00758612    8d54243c
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00758616    d9442410
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075861a    d84c2410
    asm("push               edx");                                           // 0x0075861e    52
    asm("mov.s              ecx, ebx");                                      // 0x0075861f    8bcb
    asm("faddp              st(1), st");                                     // 0x00758621    dec1
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00758623    d9442410
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00758627    d84c2410
    asm("faddp              st(1), st");                                     // 0x0075862b    dec1
    asm("fsqrt");                                                            // 0x0075862d    d9fa
    asm("{disp8} fst        dword ptr [esp + 0x50]");                        // 0x0075862f    d9542450
    asm("fdivp              st(1), st");                                     // 0x00758633    def9
    asm("fld                st(0)");                                         // 0x00758635    d9c0
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00758637    d84c2410
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075863b    d95c2410
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x0075863f    d9442414
    asm("fmul               st, st(1)");                                     // 0x00758643    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00758645    d95c2414
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00758649    d9442418
    asm("fmul               st, st(1)");                                     // 0x0075864d    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x0075864f    d95c2418
    asm("fstp               st(0)");                                         // 0x00758653    ddd8
    asm("call               _jmp_addr_0x006050d0");                          // 0x00758655    e876caeaff
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x0075865a    d9442414
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075865e    8d4c2424
    asm("{disp8} fadd       dword ptr [eax + 0x08]");                        // 0x00758662    d84008
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00758665    d9442410
    asm("{disp8} fadd       dword ptr [eax + 0x04]");                        // 0x00758669    d84004
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0075866c    d944240c
    asm("fadd               dword ptr [eax]");                               // 0x00758670    d800
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x00758672    8d442418
    asm("push               eax");                                           // 0x00758676    50
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00758677    d95c241c
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0075867b    d95c2420
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x0075867f    d95c2424
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x00758683    e8d8aaeaff
    asm("push               0x000000e8");                                    // 0x00758688    68e8000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                   // 0x0075868d    8d4c2428
    asm("push               ecx");                                           // 0x00758691    51
    asm("mov.s              ecx, edi");                                      // 0x00758692    8bcf
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00758694    e8f7a1e9ff
    asm("pop                edi");                                           // 0x00758699    5f
    asm("pop                esi");                                           // 0x0075869a    5e
    asm("pop                ebx");                                           // 0x0075869b    5b
    asm("add                esp, 0x3c");                                     // 0x0075869c    83c43c
    asm("ret                0x0004");                                        // 0x0075869f    c20400
    __builtin_unreachable();
}

bool32_t __fastcall WaitForWood__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007586b0    56
    asm("mov.s              esi, ecx");                                      // 0x007586b1    8bf1
    asm("push               0x1");                                           // 0x007586b3    6a01
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x007586b5    e8a642e9ff
    asm("test               eax, eax");                                      // 0x007586ba    85c0
    asm("{disp8} je         _jmp_addr_0x007586d7");                          // 0x007586bc    7419
    asm("cmp                word ptr [esi + 0x000000f6], 0x00");             // 0x007586be    6683bef600000000
    asm("{disp8} je         _jmp_addr_0x007586d7");                          // 0x007586c6    740f
    asm("mov                eax, dword ptr [esi]");                          // 0x007586c8    8b06
    asm("push               0x000000b8");                                    // 0x007586ca    68b8000000
    asm("mov.s              ecx, esi");                                      // 0x007586cf    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007586d1    ff90e8080000
    asm("_jmp_addr_0x007586d7:");
    asm("mov                eax, 0x00000001");                               // 0x007586d7    b801000000
    asm("pop                esi");                                           // 0x007586dc    5e
    asm("ret");                                                              // 0x007586dd    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupGetBuildingSupplies__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    asm("sub                esp, 0x14");                                     // 0x007586e0    83ec14
    asm("push               esi");                                           // 0x007586e3    56
    asm("mov.s              esi, ecx");                                      // 0x007586e4    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007586e6    8b06
    asm("push               edi");                                           // 0x007586e8    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x007586e9    ff5048
    asm("test               eax, eax");                                      // 0x007586ec    85c0
    asm("{disp8} jne        _jmp_addr_0x007586f8");                          // 0x007586ee    7508
    asm("pop                edi");                                           // 0x007586f0    5f
    asm("pop                esi");                                           // 0x007586f1    5e
    asm("add                esp, 0x14");                                     // 0x007586f2    83c414
    asm("ret                0x0004");                                        // 0x007586f5    c20400
    asm("_jmp_addr_0x007586f8:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x007586f8    8b7c2420
    asm("mov                edx, dword ptr [esi]");                          // 0x007586fc    8b16
    asm("push               edi");                                           // 0x007586fe    57
    asm("mov.s              ecx, esi");                                      // 0x007586ff    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758701    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758704    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00758706    e8f547feff
    asm("test               eax, eax");                                      // 0x0075870b    85c0
    asm("{disp8} jne        _jmp_addr_0x00758717");                          // 0x0075870d    7508
    asm("pop                edi");                                           // 0x0075870f    5f
    asm("pop                esi");                                           // 0x00758710    5e
    asm("add                esp, 0x14");                                     // 0x00758711    83c414
    asm("ret                0x0004");                                        // 0x00758714    c20400
    asm("_jmp_addr_0x00758717:");
    asm("push               esi");                                           // 0x00758717    56
    asm("mov.s              ecx, edi");                                      // 0x00758718    8bcf
    asm("call               ?ShouldIGetWood@BuildingSite@@QAEIPAVVillager@@@Z");                          // 0x0075871a    e8613fceff
    asm("test               eax, eax");                                      // 0x0075871f    85c0
    asm("{disp8} jne        _jmp_addr_0x00758733");                          // 0x00758721    7510
    asm("push               edi");                                           // 0x00758723    57
    asm("mov.s              ecx, esi");                                      // 0x00758724    8bce
    asm("call               ?GotoBuildingSite@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00758726    e8d5020000
    asm("pop                edi");                                           // 0x0075872b    5f
    asm("pop                esi");                                           // 0x0075872c    5e
    asm("add                esp, 0x14");                                     // 0x0075872d    83c414
    asm("ret                0x0004");                                        // 0x00758730    c20400
    asm("_jmp_addr_0x00758733:");
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x00758733    a15c19d000
    asm("test               dword ptr [eax + 0x14], 0x00040000");            // 0x00758738    f7401400000400
    asm("{disp8} je         _jmp_addr_0x00758749");                          // 0x0075873f    7408
    asm("push               edi");                                           // 0x00758741    57
    asm("mov.s              ecx, esi");                                      // 0x00758742    8bce
    asm("call               ?SetupWaitForWood@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00758744    e857feffff
    asm("_jmp_addr_0x00758749:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00758749    8d4c240c
    asm("push               ecx");                                           // 0x0075874d    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x0075874e    8d54240c
    asm("push               edx");                                           // 0x00758752    52
    asm("push               0x1");                                           // 0x00758753    6a01
    asm("mov.s              ecx, esi");                                      // 0x00758755    8bce
    asm("call               ?DecideHowToGetWood@Villager@@QAEIHPAPAVBigForest@@PAPAVForest@@@Z");                          // 0x00758757    e8b46d0000
    asm("dec                eax");                                           // 0x0075875c    48
    asm("{disp8} je         _jmp_addr_0x007587bc");                          // 0x0075875d    745d
    asm("dec                eax");                                           // 0x0075875f    48
    asm("{disp8} je         _jmp_addr_0x0075878b");                          // 0x00758760    7429
    asm("dec                eax");                                           // 0x00758762    48
    asm("{disp8} je         _jmp_addr_0x0075876f");                          // 0x00758763    740a
    asm("pop                edi");                                           // 0x00758765    5f
    asm("xor.s              eax, eax");                                      // 0x00758766    33c0
    asm("pop                esi");                                           // 0x00758768    5e
    asm("add                esp, 0x14");                                     // 0x00758769    83c414
    asm("ret                0x0004");                                        // 0x0075876c    c20400
    asm("_jmp_addr_0x0075876f:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x0075876f    8b44240c
    asm("push               0x31");                                          // 0x00758773    6a31
    asm("push               eax");                                           // 0x00758775    50
    asm("mov.s              ecx, esi");                                      // 0x00758776    8bce
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], edi");             // 0x00758778    89befc000000
    asm("call               ?VillagerGotoForest@Villager@@QAEIPAVForest@@W4VILLAGER_STATES@@@Z");                          // 0x0075877e    e89d6f0000
    asm("pop                edi");                                           // 0x00758783    5f
    asm("pop                esi");                                           // 0x00758784    5e
    asm("add                esp, 0x14");                                     // 0x00758785    83c414
    asm("ret                0x0004");                                        // 0x00758788    c20400
    asm("_jmp_addr_0x0075878b:");
    asm("push               0x35");                                          // 0x0075878b    6a35
    asm("push               esi");                                           // 0x0075878d    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x0075878e    8d4c2418
    asm("push               ecx");                                           // 0x00758792    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00758793    8b4c2414
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], edi");             // 0x00758797    89befc000000
    asm("call               _jmp_addr_0x00439360");                          // 0x0075879d    e8be0bceff
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x007587a2    8b54240c
    asm("push               eax");                                           // 0x007587a6    50
    asm("push               edx");                                           // 0x007587a7    52
    asm("mov.s              ecx, esi");                                      // 0x007587a8    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007587aa    e87155e9ff
    asm("pop                edi");                                           // 0x007587af    5f
    asm("mov                eax, 0x00000001");                               // 0x007587b0    b801000000
    asm("pop                esi");                                           // 0x007587b5    5e
    asm("add                esp, 0x14");                                     // 0x007587b6    83c414
    asm("ret                0x0004");                                        // 0x007587b9    c20400
    asm("_jmp_addr_0x007587bc:");
    asm("push               edi");                                           // 0x007587bc    57
    asm("mov.s              ecx, esi");                                      // 0x007587bd    8bce
    asm("call               ?GotoStoragePitForBuildingMaterials@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x007587bf    e80c000000
    asm("pop                edi");                                           // 0x007587c4    5f
    asm("pop                esi");                                           // 0x007587c5    5e
    asm("add                esp, 0x14");                                     // 0x007587c6    83c414
    asm("ret                0x0004");                                        // 0x007587c9    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotoStoragePitForBuildingMaterials__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x007587d0    83ec18
    asm("push               ebx");                                           // 0x007587d3    53
    asm("push               esi");                                           // 0x007587d4    56
    asm("mov.s              esi, ecx");                                      // 0x007587d5    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007587d7    8b06
    asm("push               edi");                                           // 0x007587d9    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x007587da    ff5048
    asm("test               eax, eax");                                      // 0x007587dd    85c0
    asm("{disp8} jne        _jmp_addr_0x007587ea");                          // 0x007587df    7509
    asm("pop                edi");                                           // 0x007587e1    5f
    asm("pop                esi");                                           // 0x007587e2    5e
    asm("pop                ebx");                                           // 0x007587e3    5b
    asm("add                esp, 0x18");                                     // 0x007587e4    83c418
    asm("ret                0x0004");                                        // 0x007587e7    c20400
    asm("_jmp_addr_0x007587ea:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x28]");                   // 0x007587ea    8b7c2428
    asm("mov                edx, dword ptr [esi]");                          // 0x007587ee    8b16
    asm("push               edi");                                           // 0x007587f0    57
    asm("mov.s              ecx, esi");                                      // 0x007587f1    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x007587f3    ff5248
    asm("mov.s              ecx, eax");                                      // 0x007587f6    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x007587f8    e80347feff
    asm("test               eax, eax");                                      // 0x007587fd    85c0
    asm("{disp8} jne        _jmp_addr_0x0075880a");                          // 0x007587ff    7509
    asm("pop                edi");                                           // 0x00758801    5f
    asm("pop                esi");                                           // 0x00758802    5e
    asm("pop                ebx");                                           // 0x00758803    5b
    asm("add                esp, 0x18");                                     // 0x00758804    83c418
    asm("ret                0x0004");                                        // 0x00758807    c20400
    asm("_jmp_addr_0x0075880a:");
    asm("mov.s              ecx, esi");                                      // 0x0075880a    8bce
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0075880c    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00758814    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x0075881c    c744241400000000
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x00758824    e8c78cffff
    asm("test               ax, ax");                                        // 0x00758829    6685c0
    asm("{disp8} jg         _jmp_addr_0x0075883f");                          // 0x0075882c    7f11
    asm("push               edi");                                           // 0x0075882e    57
    asm("mov.s              ecx, esi");                                      // 0x0075882f    8bce
    asm("call               ?GotoBuildingSite@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00758831    e8ca010000
    asm("pop                edi");                                           // 0x00758836    5f
    asm("pop                esi");                                           // 0x00758837    5e
    asm("pop                ebx");                                           // 0x00758838    5b
    asm("add                esp, 0x18");                                     // 0x00758839    83c418
    asm("ret                0x0004");                                        // 0x0075883c    c20400
    asm("_jmp_addr_0x0075883f:");
    asm("mov.s              ecx, esi");                                      // 0x0075883f    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x00758841    e8ca96ffff
    asm("mov.s              ebx, eax");                                      // 0x00758846    8bd8
    asm("test               ebx, ebx");                                      // 0x00758848    85db
    asm("{disp8} je         _jmp_addr_0x00758884");                          // 0x0075884a    7438
    asm("mov                eax, dword ptr [ebx]");                          // 0x0075884c    8b03
    asm("mov.s              ecx, ebx");                                      // 0x0075884e    8bcb
    asm("call               dword ptr [eax + 0xd4]");                        // 0x00758850    ff90d4000000
    asm("test               eax, eax");                                      // 0x00758856    85c0
    asm("{disp8} je         _jmp_addr_0x00758884");                          // 0x00758858    742a
    asm("mov                edx, dword ptr [ebx]");                          // 0x0075885a    8b13
    asm("push               0x0");                                           // 0x0075885c    6a00
    asm("push               esi");                                           // 0x0075885e    56
    asm("push               0x1");                                           // 0x0075885f    6a01
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x00758861    8d442424
    asm("push               eax");                                           // 0x00758865    50
    asm("mov.s              ecx, ebx");                                      // 0x00758866    8bcb
    asm("call               dword ptr [edx + 0x8d4]");                       // 0x00758868    ff92d4080000
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075886e    8b08
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00758870    894c240c
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00758874    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00758877    89542410
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075887b    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x0075887e    89442414
    asm("{disp8} jmp        _jmp_addr_0x007588a6");                          // 0x00758882    eb22
    asm("_jmp_addr_0x00758884:");
    asm("push               0x1");                                           // 0x00758884    6a01
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x00758886    8d4c241c
    asm("push               ecx");                                           // 0x0075888a    51
    asm("mov.s              ecx, esi");                                      // 0x0075888b    8bce
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                          // 0x0075888d    e88eb5ffff
    asm("mov                edx, dword ptr [eax]");                          // 0x00758892    8b10
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x00758894    8954240c
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x00758898    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075889b    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x0075889f    8b5008
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x007588a2    89542414
    asm("_jmp_addr_0x007588a6:");
    asm("{disp8} mov        eax, dword ptr [edi + 0x18]");                   // 0x007588a6    8b4718
    asm("test               eax, eax");                                      // 0x007588a9    85c0
    asm("{disp8} je         _jmp_addr_0x007588b8");                          // 0x007588ab    740b
    asm("_jmp_addr_0x007588ad:");
    asm("cmp                dword ptr [eax + 0x04], esi");                   // 0x007588ad    397004
    asm("{disp8} je         _jmp_addr_0x00758918");                          // 0x007588b0    7466
    asm("mov                eax, dword ptr [eax]");                          // 0x007588b2    8b00
    asm("test               eax, eax");                                      // 0x007588b4    85c0
    asm("{disp8} jne        _jmp_addr_0x007588ad");                          // 0x007588b6    75f5
    asm("_jmp_addr_0x007588b8:");
    asm("mov.s              ecx, edi");                                      // 0x007588b8    8bcf
    asm("call               _jmp_addr_0x0043bc60");                          // 0x007588ba    e8a133ceff
    asm("test               eax, eax");                                      // 0x007588bf    85c0
    asm("{disp8} jne        _jmp_addr_0x007588d7");                          // 0x007588c1    7514
    asm("cmp                byte ptr [esi + 0x000000f2], 0x04");             // 0x007588c3    80bef200000004
    asm("{disp8} je         _jmp_addr_0x007588d7");                          // 0x007588ca    740b
    asm("pop                edi");                                           // 0x007588cc    5f
    asm("pop                esi");                                           // 0x007588cd    5e
    asm("xor.s              eax, eax");                                      // 0x007588ce    33c0
    asm("pop                ebx");                                           // 0x007588d0    5b
    asm("add                esp, 0x18");                                     // 0x007588d1    83c418
    asm("ret                0x0004");                                        // 0x007588d4    c20400
    asm("_jmp_addr_0x007588d7:");
    asm("xor.s              eax, eax");                                      // 0x007588d7    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");               // 0x007588d9    8a868c000000
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x007588df    8d04c0
    asm("shl                eax, 4");                                        // 0x007588e2    c1e004
    asm("add                eax, 0x00d091b8");                               // 0x007588e5    05b891d000
    asm("mov.s              edi, eax");                                      // 0x007588ea    8bf8
    asm("mov                eax, dword ptr [edi]");                          // 0x007588ec    8b07
    asm("cmp                eax, 0x007597b0");                               // 0x007588ee    3db0977500
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                   // 0x007588f3    8b4f04
    asm("{disp8} mov        edx, dword ptr [edi + 0x08]");                   // 0x007588f6    8b5708
    asm("{disp8} mov        edi, dword ptr [edi + 0x0c]");                   // 0x007588f9    8b7f0c
    asm("{disp8} jne        _jmp_addr_0x0075890e");                          // 0x007588fc    7510
    asm("test               eax, eax");                                      // 0x007588fe    85c0
    asm("{disp8} je         _jmp_addr_0x00758918");                          // 0x00758900    7416
    asm("test               ecx, ecx");                                      // 0x00758902    85c9
    asm("{disp8} jne        _jmp_addr_0x0075890e");                          // 0x00758904    7508
    asm("test               edx, edx");                                      // 0x00758906    85d2
    asm("{disp8} jne        _jmp_addr_0x0075890e");                          // 0x00758908    7504
    asm("test               edi, edi");                                      // 0x0075890a    85ff
    asm("{disp8} je         _jmp_addr_0x00758918");                          // 0x0075890c    740a
    asm("_jmp_addr_0x0075890e:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x28]");                   // 0x0075890e    8b4c2428
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], ecx");             // 0x00758912    898efc000000
    asm("_jmp_addr_0x00758918:");
    asm("test               ebx, ebx");                                      // 0x00758918    85db
    asm("push               0x27");                                          // 0x0075891a    6a27
    asm("{disp8} je         _jmp_addr_0x00758939");                          // 0x0075891c    741b
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x0075891e    8d542410
    asm("push               edx");                                           // 0x00758922    52
    asm("push               ebx");                                           // 0x00758923    53
    asm("mov.s              ecx, esi");                                      // 0x00758924    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00758926    e8f553e9ff
    asm("pop                edi");                                           // 0x0075892b    5f
    asm("pop                esi");                                           // 0x0075892c    5e
    asm("mov                eax, 0x00000001");                               // 0x0075892d    b801000000
    asm("pop                ebx");                                           // 0x00758932    5b
    asm("add                esp, 0x18");                                     // 0x00758933    83c418
    asm("ret                0x0004");                                        // 0x00758936    c20400
    asm("_jmp_addr_0x00758939:");
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x00758939    8d442410
    asm("push               eax");                                           // 0x0075893d    50
    asm("mov.s              ecx, esi");                                      // 0x0075893e    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00758940    e84b9fe9ff
    asm("pop                edi");                                           // 0x00758945    5f
    asm("pop                esi");                                           // 0x00758946    5e
    asm("mov                eax, 0x00000001");                               // 0x00758947    b801000000
    asm("pop                ebx");                                           // 0x0075894c    5b
    asm("add                esp, 0x18");                                     // 0x0075894d    83c418
    asm("ret                0x0004");                                        // 0x00758950    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotoWorkshopForBuildingMaterials__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    asm("push               esi");                                           // 0x00758960    56
    asm("mov.s              esi, ecx");                                      // 0x00758961    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00758963    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758965    ff5048
    asm("test               eax, eax");                                      // 0x00758968    85c0
    asm("{disp8} je         _jmp_addr_0x0075897f");                          // 0x0075896a    7413
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075896c    8b4c2408
    asm("mov                edx, dword ptr [esi]");                          // 0x00758970    8b16
    asm("push               ecx");                                           // 0x00758972    51
    asm("mov.s              ecx, esi");                                      // 0x00758973    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758975    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758978    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x0075897a    e88145feff
    asm("_jmp_addr_0x0075897f:");
    asm("xor.s              eax, eax");                                      // 0x0075897f    33c0
    asm("pop                esi");                                           // 0x00758981    5e
    asm("ret                0x0004");                                        // 0x00758982    c20400
    asm("nop");                                                              // 0x00758985    90
    asm("nop");                                                              // 0x00758986    90
    asm("nop");                                                              // 0x00758987    90
    asm("nop");                                                              // 0x00758988    90
    asm("nop");                                                              // 0x00758989    90
    asm("nop");                                                              // 0x0075898a    90
    asm("nop");                                                              // 0x0075898b    90
    asm("nop");                                                              // 0x0075898c    90
    asm("nop");                                                              // 0x0075898d    90
    asm("nop");                                                              // 0x0075898e    90
    asm("nop");                                                              // 0x0075898f    90
    asm("push               esi");                                           // 0x00758990    56
    asm("mov.s              esi, ecx");                                      // 0x00758991    8bf1
    asm("push               edi");                                           // 0x00758993    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000fc]");             // 0x00758994    8bbefc000000
    asm("test               edi, edi");                                      // 0x0075899a    85ff
    asm("{disp8} je         _jmp_addr_0x007589e4");                          // 0x0075899c    7446
    asm("mov                eax, dword ptr [esi]");                          // 0x0075899e    8b06
    asm("push               edi");                                           // 0x007589a0    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x007589a1    ff5048
    asm("mov.s              ecx, eax");                                      // 0x007589a4    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x007589a6    e85545feff
    asm("test               eax, eax");                                      // 0x007589ab    85c0
    asm("{disp8} je         _jmp_addr_0x007589e4");                          // 0x007589ad    7435
    asm("mov.s              ecx, esi");                                      // 0x007589af    8bce
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x007589b1    e83a8bffff
    asm("movsx              eax, ax");                                       // 0x007589b6    0fbfc0
    asm("test               eax, eax");                                      // 0x007589b9    85c0
    asm("{disp8} jne        _jmp_addr_0x007589cd");                          // 0x007589bb    7510
    asm("push               edi");                                           // 0x007589bd    57
    asm("mov.s              ecx, esi");                                      // 0x007589be    8bce
    asm("call               ?GotoBuildingSite@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x007589c0    e83b000000
    asm("cmp                eax, 0x01");                                     // 0x007589c5    83f801
    asm("{disp8} jne        _jmp_addr_0x007589e4");                          // 0x007589c8    751a
    asm("pop                edi");                                           // 0x007589ca    5f
    asm("pop                esi");                                           // 0x007589cb    5e
    asm("ret");                                                              // 0x007589cc    c3
    asm("_jmp_addr_0x007589cd:");
    asm("push               0x000000a3");                                    // 0x007589cd    68a3000000
    asm("push               0x000000b8");                                    // 0x007589d2    68b8000000
    asm("push               eax");                                           // 0x007589d7    50
    asm("push               0x1");                                           // 0x007589d8    6a01
    asm("mov.s              ecx, esi");                                      // 0x007589da    8bce
    asm("call               ?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");                          // 0x007589dc    e8ef0e0100
    asm("pop                edi");                                           // 0x007589e1    5f
    asm("pop                esi");                                           // 0x007589e2    5e
    asm("ret");                                                              // 0x007589e3    c3
    asm("_jmp_addr_0x007589e4:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007589e4    8b16
    asm("push               0x000000a3");                                    // 0x007589e6    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x007589eb    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007589ed    ff92e8080000
    asm("pop                edi");                                           // 0x007589f3    5f
    asm("mov                eax, 0x00000001");                               // 0x007589f4    b801000000
    asm("pop                esi");                                           // 0x007589f9    5e
    asm("ret");                                                              // 0x007589fa    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GotoBuildingSite__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x00758a00    83ec0c
    asm("push               esi");                                           // 0x00758a03    56
    asm("mov.s              esi, ecx");                                      // 0x00758a04    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00758a06    8b06
    asm("push               edi");                                           // 0x00758a08    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758a09    ff5048
    asm("test               eax, eax");                                      // 0x00758a0c    85c0
    asm("{disp32} je        _jmp_addr_0x00758adf");                          // 0x00758a0e    0f84cb000000
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x00758a14    8b7c2418
    asm("mov                edx, dword ptr [esi]");                          // 0x00758a18    8b16
    asm("push               edi");                                           // 0x00758a1a    57
    asm("mov.s              ecx, esi");                                      // 0x00758a1b    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758a1d    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758a20    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00758a22    e8d944feff
    asm("test               eax, eax");                                      // 0x00758a27    85c0
    asm("{disp32} je        _jmp_addr_0x00758adf");                          // 0x00758a29    0f84b0000000
    asm("{disp8} mov        eax, dword ptr [edi + 0x18]");                   // 0x00758a2f    8b4718
    asm("test               eax, eax");                                      // 0x00758a32    85c0
    asm("{disp8} je         _jmp_addr_0x00758a41");                          // 0x00758a34    740b
    asm("_jmp_addr_0x00758a36:");
    asm("cmp                dword ptr [eax + 0x04], esi");                   // 0x00758a36    397004
    asm("{disp8} je         _jmp_addr_0x00758a59");                          // 0x00758a39    741e
    asm("mov                eax, dword ptr [eax]");                          // 0x00758a3b    8b00
    asm("test               eax, eax");                                      // 0x00758a3d    85c0
    asm("{disp8} jne        _jmp_addr_0x00758a36");                          // 0x00758a3f    75f5
    asm("_jmp_addr_0x00758a41:");
    asm("mov.s              ecx, edi");                                      // 0x00758a41    8bcf
    asm("call               _jmp_addr_0x0043bc60");                          // 0x00758a43    e81832ceff
    asm("test               eax, eax");                                      // 0x00758a48    85c0
    asm("{disp8} jne        _jmp_addr_0x00758a59");                          // 0x00758a4a    750d
    asm("cmp                byte ptr [esi + 0x000000f2], 0x04");             // 0x00758a4c    80bef200000004
    asm("{disp32} jne       _jmp_addr_0x00758adf");                          // 0x00758a53    0f8586000000
    asm("_jmp_addr_0x00758a59:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00758a59    8b06
    asm("push               0x000000a3");                                    // 0x00758a5b    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00758a60    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00758a62    ff90e8080000
    asm("{disp32} lea       eax, dword ptr [esi + 0x00000118]");             // 0x00758a68    8d8618010000
    asm("push               eax");                                           // 0x00758a6e    50
    asm("push               esi");                                           // 0x00758a6f    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00758a70    8d4c2410
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], edi");             // 0x00758a74    89befc000000
    asm("mov                edx, dword ptr [edi]");                          // 0x00758a7a    8b17
    asm("push               ecx");                                           // 0x00758a7c    51
    asm("mov.s              ecx, edi");                                      // 0x00758a7d    8bcf
    asm("call               dword ptr [edx + 0x128]");                       // 0x00758a7f    ff9228010000
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x00758a85    8d542408
    asm("push               edx");                                           // 0x00758a89    52
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x00758a8a    8d4614
    asm("push               eax");                                           // 0x00758a8d    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00758a8e    e8dd42ffff
    asm("{disp32} fcomp     dword ptr [data_bytes + 0x25d704]");             // 0x00758a93    d81d0437c200
    asm("add                esp, 0x08");                                     // 0x00758a99    83c408
    asm("push               0x28");                                          // 0x00758a9c    6a28
    asm("fnstsw             ax");                                            // 0x00758a9e    dfe0
    asm("test               ah, 0x41");                                      // 0x00758aa0    f6c441
    asm("{disp8} jne        _jmp_addr_0x00758ac6");                          // 0x00758aa3    7521
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00758aa5    8d4c240c
    asm("push               ecx");                                           // 0x00758aa9    51
    asm("mov.s              ecx, edi");                                      // 0x00758aaa    8bcf
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x00758aac    e8bf31ceff
    asm("push               eax");                                           // 0x00758ab1    50
    asm("mov.s              ecx, esi");                                      // 0x00758ab2    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00758ab4    e86752e9ff
    asm("pop                edi");                                           // 0x00758ab9    5f
    asm("mov                eax, 0x00000001");                               // 0x00758aba    b801000000
    asm("pop                esi");                                           // 0x00758abf    5e
    asm("add                esp, 0x0c");                                     // 0x00758ac0    83c40c
    asm("ret                0x0004");                                        // 0x00758ac3    c20400
    asm("_jmp_addr_0x00758ac6:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x00758ac6    8d54240c
    asm("push               edx");                                           // 0x00758aca    52
    asm("mov.s              ecx, esi");                                      // 0x00758acb    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00758acd    e8be9de9ff
    asm("pop                edi");                                           // 0x00758ad2    5f
    asm("mov                eax, 0x00000001");                               // 0x00758ad3    b801000000
    asm("pop                esi");                                           // 0x00758ad8    5e
    asm("add                esp, 0x0c");                                     // 0x00758ad9    83c40c
    asm("ret                0x0004");                                        // 0x00758adc    c20400
    asm("_jmp_addr_0x00758adf:");
    asm("pop                edi");                                           // 0x00758adf    5f
    asm("xor.s              eax, eax");                                      // 0x00758ae0    33c0
    asm("pop                esi");                                           // 0x00758ae2    5e
    asm("add                esp, 0x0c");                                     // 0x00758ae3    83c40c
    asm("ret                0x0004");                                        // 0x00758ae6    c20400
    asm("nop");                                                              // 0x00758ae9    90
    asm("nop");                                                              // 0x00758aea    90
    asm("nop");                                                              // 0x00758aeb    90
    asm("nop");                                                              // 0x00758aec    90
    asm("nop");                                                              // 0x00758aed    90
    asm("nop");                                                              // 0x00758aee    90
    asm("nop");                                                              // 0x00758aef    90
    asm("sub                esp, 0x0c");                                     // 0x00758af0    83ec0c
    asm("push               esi");                                           // 0x00758af3    56
    asm("mov.s              esi, ecx");                                      // 0x00758af4    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000fc]");             // 0x00758af6    8b86fc000000
    asm("push               edi");                                           // 0x00758afc    57
    asm("push               eax");                                           // 0x00758afd    50
    asm("mov                eax, dword ptr [esi]");                          // 0x00758afe    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758b00    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00758b03    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00758b05    e8f643feff
    asm("test               eax, eax");                                      // 0x00758b0a    85c0
    asm("{disp32} je        _jmp_addr_0x00758c25");                          // 0x00758b0c    0f8413010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");             // 0x00758b12    8b8618010000
    asm("test               eax, eax");                                      // 0x00758b18    85c0
    asm("{disp32} jl        _jmp_addr_0x00758c25");                          // 0x00758b1a    0f8c05010000
    asm("cmp                eax, 0x00000080");                               // 0x00758b20    3d80000000
    asm("{disp32} jge       _jmp_addr_0x00758c25");                          // 0x00758b25    0f8dfa000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000fc]");             // 0x00758b2b    8b8efc000000
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x00758b31    8d0440
    asm("{disp8} lea        edi, dword ptr [ecx + eax * 0x4 + 0x34]");       // 0x00758b34    8d7c8134
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x00758b38    c744240800000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x00758b40    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00758b48    c744241000000000
    asm("fld                dword ptr [edi]");                               // 0x00758b50    d907
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00758b52    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x00758b58    e8a3880400
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00758b5d    89442408
    asm("{disp8} fld        dword ptr [edi + 0x08]");                        // 0x00758b61    d94708
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00758b64    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x00758b6a    e891880400
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x00758b6f    8d542408
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x00758b73    8d7e14
    asm("push               edx");                                           // 0x00758b76    52
    asm("mov.s              ecx, edi");                                      // 0x00758b77    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00758b79    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00758b7d    c744241400000000
    asm("call               _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2");                          // 0x00758b85    e846d1eaff
    asm("{disp32} fcomp     dword ptr [__real@3e4ccccd]");                   // 0x00758b8a    d81d44b28a00
    asm("fnstsw             ax");                                            // 0x00758b90    dfe0
    asm("test               ah, 0x41");                                      // 0x00758b92    f6c441
    asm("{disp8} jne        _jmp_addr_0x00758bb0");                          // 0x00758b95    7519
    asm("push               0x28");                                          // 0x00758b97    6a28
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x00758b99    8d44240c
    asm("push               eax");                                           // 0x00758b9d    50
    asm("mov.s              ecx, esi");                                      // 0x00758b9e    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00758ba0    e8eb9ce9ff
    asm("pop                edi");                                           // 0x00758ba5    5f
    asm("mov                eax, 0x00000001");                               // 0x00758ba6    b801000000
    asm("pop                esi");                                           // 0x00758bab    5e
    asm("add                esp, 0x0c");                                     // 0x00758bac    83c40c
    asm("ret");                                                              // 0x00758baf    c3
    asm("_jmp_addr_0x00758bb0:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000fc]");             // 0x00758bb0    8b8efc000000
    asm("push               0x1");                                           // 0x00758bb6    6a01
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x00758bb8    e8b330ceff
    asm("push               eax");                                           // 0x00758bbd    50
    asm("mov.s              ecx, esi");                                      // 0x00758bbe    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00758bc0    e85b39e9ff
    asm("cmp                eax, 0x01");                                     // 0x00758bc5    83f801
    asm("{disp8} jne        _jmp_addr_0x00758c34");                          // 0x00758bc8    756a
    asm("{disp32} mov       ax, word ptr [esi + 0x000000f6]");               // 0x00758bca    668b86f6000000
    asm("test               ax, ax");                                        // 0x00758bd1    6685c0
    asm("{disp8} je         _jmp_addr_0x00758c01");                          // 0x00758bd4    742b
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000fc]");             // 0x00758bd6    8b8efc000000
    asm("mov                edx, dword ptr [ecx]");                          // 0x00758bdc    8b11
    asm("push               0x0");                                           // 0x00758bde    6a00
    asm("push               edi");                                           // 0x00758be0    57
    asm("push               0x0");                                           // 0x00758be1    6a00
    asm("movsx              eax, ax");                                       // 0x00758be3    0fbfc0
    asm("push               0x0");                                           // 0x00758be6    6a00
    asm("push               eax");                                           // 0x00758be8    50
    asm("push               0x1");                                           // 0x00758be9    6a01
    asm("call               dword ptr [edx + 0x9c]");                        // 0x00758beb    ff929c000000
    asm("push               0x0");                                           // 0x00758bf1    6a00
    asm("mov.s              ecx, esi");                                      // 0x00758bf3    8bce
    asm("call               ?DropWood@Villager@@QAEGG@Z");                   // 0x00758bf5    e84686ffff
    asm("mov.s              ecx, esi");                                      // 0x00758bfa    8bce
    asm("call               ?SetStateCarriedObject@Villager@@QAEXXZ");       // 0x00758bfc    e89f75ffff
    asm("_jmp_addr_0x00758c01:");
    asm("{disp32} mov       di, word ptr [esi + 0x00000090]");               // 0x00758c01    668bbe90000000
    asm("push               0x1");                                           // 0x00758c08    6a01
    asm("push               0x29");                                          // 0x00758c0a    6a29
    asm("mov.s              ecx, esi");                                      // 0x00758c0c    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x00758c0e    e8ad3ee9ff
    asm("{disp32} mov       word ptr [esi + 0x00000090], di");               // 0x00758c13    6689be90000000
    asm("pop                edi");                                           // 0x00758c1a    5f
    asm("mov                eax, 0x00000001");                               // 0x00758c1b    b801000000
    asm("pop                esi");                                           // 0x00758c20    5e
    asm("add                esp, 0x0c");                                     // 0x00758c21    83c40c
    asm("ret");                                                              // 0x00758c24    c3
    asm("_jmp_addr_0x00758c25:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00758c25    8b16
    asm("push               0x000000a3");                                    // 0x00758c27    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00758c2c    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00758c2e    ff92e8080000
    asm("_jmp_addr_0x00758c34:");
    asm("pop                edi");                                           // 0x00758c34    5f
    asm("mov                eax, 0x00000001");                               // 0x00758c35    b801000000
    asm("pop                esi");                                           // 0x00758c3a    5e
    asm("add                esp, 0x0c");                                     // 0x00758c3b    83c40c
    asm("ret");                                                              // 0x00758c3e    c3
    __builtin_unreachable();
}

bool32_t __fastcall Building__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00758c40    83ec0c
    asm("push               ebp");                                           // 0x00758c43    55
    asm("push               esi");                                           // 0x00758c44    56
    asm("push               edi");                                           // 0x00758c45    57
    asm("mov.s              edi, ecx");                                      // 0x00758c46    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x00758c48    8b07
    asm("{disp32} mov       esi, dword ptr [edi + 0x000000fc]");             // 0x00758c4a    8bb7fc000000
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758c50    ff5048
    asm("test               eax, eax");                                      // 0x00758c53    85c0
    asm("{disp8} jne        _jmp_addr_0x00758c5e");                          // 0x00758c55    7507
    asm("pop                edi");                                           // 0x00758c57    5f
    asm("pop                esi");                                           // 0x00758c58    5e
    asm("pop                ebp");                                           // 0x00758c59    5d
    asm("add                esp, 0x0c");                                     // 0x00758c5a    83c40c
    asm("ret");                                                              // 0x00758c5d    c3
    asm("_jmp_addr_0x00758c5e:");
    asm("push               0x1");                                           // 0x00758c5e    6a01
    asm("mov.s              ecx, edi");                                      // 0x00758c60    8bcf
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x00758c62    e8f93ce9ff
    asm("test               eax, eax");                                      // 0x00758c67    85c0
    asm("{disp32} je        _jmp_addr_0x00758e08");                          // 0x00758c69    0f8499010000
    asm("{disp32} mov       word ptr [edi + 0x00000090], 0x0000");           // 0x00758c6f    66c787900000000000
    asm("mov                edx, dword ptr [edi]");                          // 0x00758c78    8b17
    asm("push               esi");                                           // 0x00758c7a    56
    asm("mov.s              ecx, edi");                                      // 0x00758c7b    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758c7d    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758c80    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00758c82    e87942feff
    asm("test               eax, eax");                                      // 0x00758c87    85c0
    asm("{disp32} je        _jmp_addr_0x00758def");                          // 0x00758c89    0f8460010000
    asm("{disp8} lea        ecx, dword ptr [edi + 0x14]");                   // 0x00758c8f    8d4f14
    asm("call               _jmp_addr_0x006057b0");                          // 0x00758c92    e819cbeaff
    asm("{disp32} fmul      dword ptr [__real@3e4ccccd]");                   // 0x00758c97    d80d44b28a00
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x00758c9d    d82d90a38a00
    asm("{disp8} fst        dword ptr [esp + 0x0c]");                        // 0x00758ca3    d954240c
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00758ca7    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00758cad    dfe0
    asm("test               ah, 0x01");                                      // 0x00758caf    f6c401
    asm("{disp8} je         _jmp_addr_0x00758cbe");                          // 0x00758cb2    740a
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x3f800000");            // 0x00758cb4    c744240c0000803f
    asm("{disp8} jmp        _jmp_addr_0x00758cd7");                          // 0x00758cbc    eb19
    asm("_jmp_addr_0x00758cbe:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00758cbe    d944240c
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x1dc98]");             // 0x00758cc2    d81d986c8c00
    asm("fnstsw             ax");                                            // 0x00758cc8    dfe0
    asm("test               ah, 0x41");                                      // 0x00758cca    f6c441
    asm("{disp8} jne        _jmp_addr_0x00758cd7");                          // 0x00758ccd    7508
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x3f99999a");            // 0x00758ccf    c744240c9a99993f
    asm("_jmp_addr_0x00758cd7:");
    asm("push               ebx");                                           // 0x00758cd7    53
    asm("mov.s              ecx, edi");                                      // 0x00758cd8    8bcf
    asm("call               ?GetWoodUsedPerBuild@Villager@@QAEMXZ");         // 0x00758cda    e841010000
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00758cdf    d84c2410
    asm("call               _jmp_addr_0x007a1400");                          // 0x00758ce3    e818870400
    asm("mov.s              ebx, eax");                                      // 0x00758ce8    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x00758cea    8b06
    asm("push               0x1");                                           // 0x00758cec    6a01
    asm("mov.s              ecx, esi");                                      // 0x00758cee    8bce
    asm("call               dword ptr [eax + 0x98]");                        // 0x00758cf0    ff9098000000
    asm("cmp.s              eax, ebx");                                      // 0x00758cf6    3bc3
    asm("{disp8} jae        _jmp_addr_0x00758d08");                          // 0x00758cf8    730e
    asm("mov                edx, dword ptr [esi]");                          // 0x00758cfa    8b16
    asm("push               0x1");                                           // 0x00758cfc    6a01
    asm("mov.s              ecx, esi");                                      // 0x00758cfe    8bce
    asm("call               dword ptr [edx + 0x98]");                        // 0x00758d00    ff9298000000
    asm("{disp8} jmp        _jmp_addr_0x00758d18");                          // 0x00758d06    eb10
    asm("_jmp_addr_0x00758d08:");
    asm("mov.s              ecx, edi");                                      // 0x00758d08    8bcf
    asm("call               ?GetWoodUsedPerBuild@Villager@@QAEMXZ");         // 0x00758d0a    e811010000
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00758d0f    d84c2410
    asm("call               _jmp_addr_0x007a1400");                          // 0x00758d13    e8e8860400
    asm("_jmp_addr_0x00758d18:");
    asm("mov.s              ecx, esi");                                      // 0x00758d18    8bce
    asm("mov.s              ebx, eax");                                      // 0x00758d1a    8bd8
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x00758d1c    e84f2fceff
    asm("test               ebx, ebx");                                      // 0x00758d21    85db
    asm("mov.s              ebp, eax");                                      // 0x00758d23    8be8
    asm("{disp8} je         _jmp_addr_0x00758d76");                          // 0x00758d25    744f
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                   // 0x00758d27    895c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00758d2b    c744241400000000
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x00758d33    df6c2410
    asm("mov.s              ecx, esi");                                      // 0x00758d37    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00758d39    d95c2410
    asm("call               ?GetWoodValue@BuildingSite@@QAEMXZ");            // 0x00758d3d    e87e33ceff
    asm("{disp8} fdivr      dword ptr [esp + 0x10]");                        // 0x00758d42    d87c2410
    asm("mov                eax, dword ptr [esi]");                          // 0x00758d46    8b06
    asm("push               0x0");                                           // 0x00758d48    6a00
    asm("push               0x0");                                           // 0x00758d4a    6a00
    asm("push               ebx");                                           // 0x00758d4c    53
    asm("push               0x1");                                           // 0x00758d4d    6a01
    asm("mov.s              ecx, esi");                                      // 0x00758d4f    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00758d51    d95c2420
    asm("call               dword ptr [eax + 0xa0]");                        // 0x00758d55    ff90a0000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00758d5b    8b4c2410
    asm("push               ecx");                                           // 0x00758d5f    51
    asm("mov.s              ecx, esi");                                      // 0x00758d60    8bce
    asm("call               @BuildBy__12BuildingSiteFf@12");                 // 0x00758d62    e81943ceff
    asm("mov                edx, dword ptr [edi]");                          // 0x00758d67    8b17
    asm("push               ebx");                                           // 0x00758d69    53
    asm("mov.s              ecx, edi");                                      // 0x00758d6a    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758d6c    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758d6f    8bc8
    asm("call               _jmp_addr_0x0073b620");                          // 0x00758d71    e8aa28feff
    asm("_jmp_addr_0x00758d76:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00758d76    8b06
    asm("mov.s              ecx, esi");                                      // 0x00758d78    8bce
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00758d7a    ff502c
    asm("test               eax, eax");                                      // 0x00758d7d    85c0
    asm("pop                ebx");                                           // 0x00758d7f    5b
    asm("{disp8} je         _jmp_addr_0x00758def");                          // 0x00758d80    746d
    asm("{disp8} mov        edx, dword ptr [ebp + 0x00]");                   // 0x00758d82    8b5500
    asm("mov.s              ecx, ebp");                                      // 0x00758d85    8bcd
    asm("call               dword ptr [edx + 0x890]");                       // 0x00758d87    ff9290080000
    asm("test               eax, eax");                                      // 0x00758d8d    85c0
    asm("{disp8} je         _jmp_addr_0x00758da0");                          // 0x00758d8f    740f
    asm("{disp8} mov        eax, dword ptr [ebp + 0x00]");                   // 0x00758d91    8b4500
    asm("mov.s              ecx, ebp");                                      // 0x00758d94    8bcd
    asm("call               dword ptr [eax + 0x88c]");                       // 0x00758d96    ff908c080000
    asm("test               eax, eax");                                      // 0x00758d9c    85c0
    asm("{disp8} jne        _jmp_addr_0x00758def");                          // 0x00758d9e    754f
    asm("_jmp_addr_0x00758da0:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00758da0    8b16
    asm("push               0x1");                                           // 0x00758da2    6a01
    asm("mov.s              ecx, esi");                                      // 0x00758da4    8bce
    asm("call               dword ptr [edx + 0x98]");                        // 0x00758da6    ff9298000000
    asm("test               eax, eax");                                      // 0x00758dac    85c0
    asm("{disp8} je         _jmp_addr_0x00758de0");                          // 0x00758dae    7430
    asm("mov                eax, dword ptr [esi]");                          // 0x00758db0    8b06
    asm("{disp32} lea       ecx, dword ptr [edi + 0x00000118]");             // 0x00758db2    8d8f18010000
    asm("push               ecx");                                           // 0x00758db8    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00758db9    8d542410
    asm("push               edx");                                           // 0x00758dbd    52
    asm("mov.s              ecx, esi");                                      // 0x00758dbe    8bce
    asm("call               dword ptr [eax + 0x124]");                       // 0x00758dc0    ff9024010000
    asm("push               0x28");                                          // 0x00758dc6    6a28
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x00758dc8    8d442410
    asm("push               eax");                                           // 0x00758dcc    50
    asm("mov.s              ecx, edi");                                      // 0x00758dcd    8bcf
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00758dcf    e8bc9ae9ff
    asm("pop                edi");                                           // 0x00758dd4    5f
    asm("pop                esi");                                           // 0x00758dd5    5e
    asm("mov                eax, 0x00000001");                               // 0x00758dd6    b801000000
    asm("pop                ebp");                                           // 0x00758ddb    5d
    asm("add                esp, 0x0c");                                     // 0x00758ddc    83c40c
    asm("ret");                                                              // 0x00758ddf    c3
    asm("_jmp_addr_0x00758de0:");
    asm("push               esi");                                           // 0x00758de0    56
    asm("mov.s              ecx, edi");                                      // 0x00758de1    8bcf
    asm("call               ?SetupGetBuildingSupplies@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00758de3    e8f8f8ffff
    asm("pop                edi");                                           // 0x00758de8    5f
    asm("pop                esi");                                           // 0x00758de9    5e
    asm("pop                ebp");                                           // 0x00758dea    5d
    asm("add                esp, 0x0c");                                     // 0x00758deb    83c40c
    asm("ret");                                                              // 0x00758dee    c3
    asm("_jmp_addr_0x00758def:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00758def    8b17
    asm("push               0x000000a3");                                    // 0x00758df1    68a3000000
    asm("mov.s              ecx, edi");                                      // 0x00758df6    8bcf
    asm("{disp32} mov       dword ptr [edi + 0x000000fc], 0x00000000");      // 0x00758df8    c787fc00000000000000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00758e02    ff92e8080000
    asm("_jmp_addr_0x00758e08:");
    asm("pop                edi");                                           // 0x00758e08    5f
    asm("pop                esi");                                           // 0x00758e09    5e
    asm("mov                eax, 0x00000001");                               // 0x00758e0a    b801000000
    asm("pop                ebp");                                           // 0x00758e0f    5d
    asm("add                esp, 0x0c");                                     // 0x00758e10    83c40c
    asm("ret");                                                              // 0x00758e13    c3
    __builtin_unreachable();
}

float __fastcall GetWoodUsedPerBuild__8VillagerFv(struct Villager* this)
{
    asm("{disp8} mov        eax, dword ptr [ecx + 0x28]");                   // 0x00758e20    8b4128
    asm("{disp32} fld       dword ptr [eax + 0x0000027c]");                  // 0x00758e23    d9807c020000
    asm("ret");                                                              // 0x00758e29    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyAbodesDesire__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00758e30    56
    asm("mov.s              esi, ecx");                                      // 0x00758e31    8bf1
    asm("call               ?CheckNeededForBuilding@Villager@@QAEIXZ");      // 0x00758e33    e808f5ffff
    asm("cmp                eax, 0x01");                                     // 0x00758e38    83f801
    asm("{disp8} jne        _jmp_addr_0x00758e3f");                          // 0x00758e3b    7502
    asm("pop                esi");                                           // 0x00758e3d    5e
    asm("ret");                                                              // 0x00758e3e    c3
    asm("_jmp_addr_0x00758e3f:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00758e3f    8b06
    asm("mov.s              ecx, esi");                                      // 0x00758e41    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758e43    ff5048
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000005e4]");             // 0x00758e46    8b88e4050000
    asm("test               ecx, ecx");                                      // 0x00758e4c    85c9
    asm("{disp8} jne        _jmp_addr_0x00758e84");                          // 0x00758e4e    7534
    asm("mov                edx, dword ptr [esi]");                          // 0x00758e50    8b16
    asm("mov.s              ecx, esi");                                      // 0x00758e52    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758e54    ff5248
    asm("{disp32} mov       dword ptr [eax + 0x000005e4], 0x00000001");      // 0x00758e57    c780e405000001000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00758e61    8b06
    asm("push               0x2");                                           // 0x00758e63    6a02
    asm("mov.s              ecx, esi");                                      // 0x00758e65    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758e67    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00758e6a    8bc8
    asm("call               ?RequestANewAbode@Town@@QAEIW4ABODE_TYPE@@@Z");  // 0x00758e6c    e8bf24feff
    asm("cmp                eax, 0x01");                                     // 0x00758e71    83f801
    asm("{disp8} jne        _jmp_addr_0x00758e84");                          // 0x00758e74    750e
    asm("mov.s              ecx, esi");                                      // 0x00758e76    8bce
    asm("call               ?CheckNeededForBuilding@Villager@@QAEIXZ");      // 0x00758e78    e8c3f4ffff
    asm("cmp                eax, 0x01");                                     // 0x00758e7d    83f801
    asm("{disp8} jne        _jmp_addr_0x00758e84");                          // 0x00758e80    7502
    asm("pop                esi");                                           // 0x00758e82    5e
    asm("ret");                                                              // 0x00758e83    c3
    asm("_jmp_addr_0x00758e84:");
    asm("xor.s              eax, eax");                                      // 0x00758e84    33c0
    asm("pop                esi");                                           // 0x00758e86    5e
    asm("ret");                                                              // 0x00758e87    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyCivicBuildings__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00758e90    56
    asm("mov.s              esi, ecx");                                      // 0x00758e91    8bf1
    asm("call               ?CheckNeededForBuilding@Villager@@QAEIXZ");      // 0x00758e93    e8a8f4ffff
    asm("cmp                eax, 0x01");                                     // 0x00758e98    83f801
    asm("{disp8} jne        _jmp_addr_0x00758e9f");                          // 0x00758e9b    7502
    asm("pop                esi");                                           // 0x00758e9d    5e
    asm("ret");                                                              // 0x00758e9e    c3
    asm("_jmp_addr_0x00758e9f:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00758e9f    8b06
    asm("mov.s              ecx, esi");                                      // 0x00758ea1    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758ea3    ff5048
    asm("{disp32} mov       ecx, dword ptr [eax + 0x000005e4]");             // 0x00758ea6    8b88e4050000
    asm("test               ecx, ecx");                                      // 0x00758eac    85c9
    asm("{disp8} jne        _jmp_addr_0x00758ee2");                          // 0x00758eae    7532
    asm("mov                edx, dword ptr [esi]");                          // 0x00758eb0    8b16
    asm("mov.s              ecx, esi");                                      // 0x00758eb2    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758eb4    ff5248
    asm("{disp32} mov       dword ptr [eax + 0x000005e4], 0x00000001");      // 0x00758eb7    c780e405000001000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00758ec1    8b06
    asm("mov.s              ecx, esi");                                      // 0x00758ec3    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758ec5    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00758ec8    8bc8
    asm("call               ?RequestBestPlanned@Town@@QAEIXZ");              // 0x00758eca    e88117feff
    asm("cmp                eax, 0x01");                                     // 0x00758ecf    83f801
    asm("{disp8} jne        _jmp_addr_0x00758ee2");                          // 0x00758ed2    750e
    asm("mov.s              ecx, esi");                                      // 0x00758ed4    8bce
    asm("call               ?CheckNeededForBuilding@Villager@@QAEIXZ");      // 0x00758ed6    e865f4ffff
    asm("cmp                eax, 0x01");                                     // 0x00758edb    83f801
    asm("{disp8} jne        _jmp_addr_0x00758ee2");                          // 0x00758ede    7502
    asm("pop                esi");                                           // 0x00758ee0    5e
    asm("ret");                                                              // 0x00758ee1    c3
    asm("_jmp_addr_0x00758ee2:");
    asm("xor.s              eax, eax");                                      // 0x00758ee2    33c0
    asm("pop                esi");                                           // 0x00758ee4    5e
    asm("ret");                                                              // 0x00758ee5    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtRockForWood__8VillagerFv(struct Villager* this)
{
    return 1;
}

bool32_t __fastcall GotWoodFromRock__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00758f00    83ec0c
    asm("push               esi");                                           // 0x00758f03    56
    asm("mov.s              esi, ecx");                                      // 0x00758f04    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00758f06    8b06
    asm("push               edi");                                           // 0x00758f08    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000fc]");             // 0x00758f09    8bbefc000000
    asm("push               edi");                                           // 0x00758f0f    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758f10    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00758f13    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00758f15    e8e63ffeff
    asm("test               eax, eax");                                      // 0x00758f1a    85c0
    asm("{disp8} je         _jmp_addr_0x00758f4c");                          // 0x00758f1c    742e
    asm("mov.s              ecx, edi");                                      // 0x00758f1e    8bcf
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x00758f20    e84b2dceff
    asm("mov                edx, dword ptr [eax]");                          // 0x00758f25    8b10
    asm("push               esi");                                           // 0x00758f27    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00758f28    8d4c240c
    asm("push               ecx");                                           // 0x00758f2c    51
    asm("mov.s              ecx, eax");                                      // 0x00758f2d    8bc8
    asm("call               dword ptr [edx + 0x834]");                       // 0x00758f2f    ff9234080000
    asm("push               edi");                                           // 0x00758f35    57
    asm("mov.s              ecx, esi");                                      // 0x00758f36    8bce
    asm("call               ?GotoBuildingSite@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00758f38    e8c3faffff
    asm("test               eax, eax");                                      // 0x00758f3d    85c0
    asm("{disp8} je         _jmp_addr_0x00758f4c");                          // 0x00758f3f    740b
    asm("pop                edi");                                           // 0x00758f41    5f
    asm("mov                eax, 0x00000001");                               // 0x00758f42    b801000000
    asm("pop                esi");                                           // 0x00758f47    5e
    asm("add                esp, 0x0c");                                     // 0x00758f48    83c40c
    asm("ret");                                                              // 0x00758f4b    c3
    asm("_jmp_addr_0x00758f4c:");
    asm("mov.s              ecx, esi");                                      // 0x00758f4c    8bce
    asm("call               ?GotoStoragePitForDropOff@Villager@@QAEIXZ");    // 0x00758f4e    e8cd060100
    asm("pop                edi");                                           // 0x00758f53    5f
    asm("pop                esi");                                           // 0x00758f54    5e
    asm("add                esp, 0x0c");                                     // 0x00758f55    83c40c
    asm("ret");                                                              // 0x00758f58    c3
    __builtin_unreachable();
}

bool32_t __fastcall ReenterBuildingState__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00758f60    83ec0c
    asm("push               esi");                                           // 0x00758f63    56
    asm("mov.s              esi, ecx");                                      // 0x00758f64    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00758f66    8b06
    asm("push               edi");                                           // 0x00758f68    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000fc]");             // 0x00758f69    8bbefc000000
    asm("call               dword ptr [eax + 0x48]");                        // 0x00758f6f    ff5048
    asm("test               eax, eax");                                      // 0x00758f72    85c0
    asm("{disp32} je        _jmp_addr_0x0075904f");                          // 0x00758f74    0f84d5000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00758f7a    8b16
    asm("push               edi");                                           // 0x00758f7c    57
    asm("mov.s              ecx, esi");                                      // 0x00758f7d    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758f7f    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758f82    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00758f84    e8773ffeff
    asm("test               eax, eax");                                      // 0x00758f89    85c0
    asm("{disp32} je        _jmp_addr_0x0075904f");                          // 0x00758f8b    0f84be000000
    asm("push               esi");                                           // 0x00758f91    56
    asm("mov.s              ecx, edi");                                      // 0x00758f92    8bcf
    asm("call               ?ShouldIGetWood@BuildingSite@@QAEIPAVVillager@@@Z");                          // 0x00758f94    e8e736ceff
    asm("test               eax, eax");                                      // 0x00758f99    85c0
    asm("{disp32} jne       _jmp_addr_0x00759042");                          // 0x00758f9b    0f85a1000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00758fa1    8b07
    asm("push               ebx");                                           // 0x00758fa3    53
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000118]");             // 0x00758fa4    8d8e18010000
    asm("push               ecx");                                           // 0x00758faa    51
    asm("push               esi");                                           // 0x00758fab    56
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x00758fac    8d542414
    asm("push               edx");                                           // 0x00758fb0    52
    asm("mov.s              ecx, edi");                                      // 0x00758fb1    8bcf
    asm("call               dword ptr [eax + 0x128]");                       // 0x00758fb3    ff9028010000
    asm("mov                ebx, dword ptr [esi]");                          // 0x00758fb9    8b1e
    asm("push               0x3a83126f");                                    // 0x00758fbb    686f12833a
    asm("mov.s              ecx, edi");                                      // 0x00758fc0    8bcf
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x00758fc2    e8a92cceff
    asm("push               eax");                                           // 0x00758fc7    50
    asm("mov.s              ecx, esi");                                      // 0x00758fc8    8bce
    asm("call               dword ptr [ebx + 0x6b8]");                       // 0x00758fca    ff93b8060000
    asm("test               eax, eax");                                      // 0x00758fd0    85c0
    asm("pop                ebx");                                           // 0x00758fd2    5b
    asm("{disp8} je         _jmp_addr_0x00758fec");                          // 0x00758fd3    7417
    asm("mov                eax, dword ptr [esi]");                          // 0x00758fd5    8b06
    asm("push               0x28");                                          // 0x00758fd7    6a28
    asm("mov.s              ecx, esi");                                      // 0x00758fd9    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00758fdb    ff90e8080000
    asm("pop                edi");                                           // 0x00758fe1    5f
    asm("mov                eax, 0x00000001");                               // 0x00758fe2    b801000000
    asm("pop                esi");                                           // 0x00758fe7    5e
    asm("add                esp, 0x0c");                                     // 0x00758fe8    83c40c
    asm("ret");                                                              // 0x00758feb    c3
    asm("_jmp_addr_0x00758fec:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00758fec    8d4c2408
    asm("push               ecx");                                           // 0x00758ff0    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x00758ff1    8d5614
    asm("push               edx");                                           // 0x00758ff4    52
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00758ff5    e8763dffff
    asm("{disp32} fcomp     dword ptr [data_bytes + 0x25d704]");             // 0x00758ffa    d81d0437c200
    asm("add                esp, 0x08");                                     // 0x00759000    83c408
    asm("push               0x28");                                          // 0x00759003    6a28
    asm("fnstsw             ax");                                            // 0x00759005    dfe0
    asm("test               ah, 0x41");                                      // 0x00759007    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075902b");                          // 0x0075900a    751f
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x0075900c    8d44240c
    asm("push               eax");                                           // 0x00759010    50
    asm("mov.s              ecx, edi");                                      // 0x00759011    8bcf
    asm("call               ?GetBuilding@BuildingSite@@QAEPAVMultiMapFixed@@XZ");              // 0x00759013    e8582cceff
    asm("push               eax");                                           // 0x00759018    50
    asm("mov.s              ecx, esi");                                      // 0x00759019    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x0075901b    e8004de9ff
    asm("pop                edi");                                           // 0x00759020    5f
    asm("mov                eax, 0x00000001");                               // 0x00759021    b801000000
    asm("pop                esi");                                           // 0x00759026    5e
    asm("add                esp, 0x0c");                                     // 0x00759027    83c40c
    asm("ret");                                                              // 0x0075902a    c3
    asm("_jmp_addr_0x0075902b:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075902b    8d4c240c
    asm("push               ecx");                                           // 0x0075902f    51
    asm("mov.s              ecx, esi");                                      // 0x00759030    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00759032    e85998e9ff
    asm("pop                edi");                                           // 0x00759037    5f
    asm("mov                eax, 0x00000001");                               // 0x00759038    b801000000
    asm("pop                esi");                                           // 0x0075903d    5e
    asm("add                esp, 0x0c");                                     // 0x0075903e    83c40c
    asm("ret");                                                              // 0x00759041    c3
    asm("_jmp_addr_0x00759042:");
    asm("push               edi");                                           // 0x00759042    57
    asm("mov.s              ecx, esi");                                      // 0x00759043    8bce
    asm("call               ?SetupGetBuildingSupplies@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x00759045    e896f6ffff
    asm("cmp                eax, 0x01");                                     // 0x0075904a    83f801
    asm("{disp8} je         _jmp_addr_0x0075905e");                          // 0x0075904d    740f
    asm("_jmp_addr_0x0075904f:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075904f    8b16
    asm("push               0x000000a3");                                    // 0x00759051    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759056    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759058    ff92e8080000
    asm("_jmp_addr_0x0075905e:");
    asm("pop                edi");                                           // 0x0075905e    5f
    asm("mov                eax, 0x00000001");                               // 0x0075905f    b801000000
    asm("pop                esi");                                           // 0x00759064    5e
    asm("add                esp, 0x0c");                                     // 0x00759065    83c40c
    asm("ret");                                                              // 0x00759068    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00759070(void)
{
    asm("{disp32} jmp       _FUN_00759080__8VillagerFv");                    // 0x00759070    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00759080__8VillagerFv(void)
{
    asm("xor.s eax, eax");                                                   // 0x00759080    33c0
    asm("{disp32} mov dword ptr [_villager_civic_mapcoords_0x00db9dd8 + 0], eax"); // 0x00759082    a3d89ddb00
    asm("{disp32} mov dword ptr [_villager_civic_mapcoords_0x00db9dd8 + 4], eax"); // 0x00759087    a3dc9ddb00
    asm("{disp32} mov dword ptr [_villager_civic_mapcoords_0x00db9dd8 + 8], eax"); // 0x0075908c    a3e09ddb00
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckForClearArea__8VillagerFRC9MapCoordsf(struct Villager* this, const void* edx, const struct MapCoords* param_1, float param_2)
{
    asm("sub                esp, 0x0c");                                     // 0x007590a0    83ec0c
    asm("push               esi");                                           // 0x007590a3    56
    asm("mov.s              esi, ecx");                                      // 0x007590a4    8bf1
    asm("push               edi");                                           // 0x007590a6    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x007590a7    8b7c2418
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3dec], 0x47c34f80"); // 0x007590ab    c705ec9ddb00804fc347
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de8], 0x00000000"); // 0x007590b5    c705e89ddb0000000000
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de4], esi");        // 0x007590bf    8935e49ddb00
    asm("{disp8} mov        eax, dword ptr [edi + 0x08]");                   // 0x007590c5    8b4708
    asm("mov.s              ecx, edi");                                      // 0x007590c8    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x007590ca    89442418
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x007590ce    e8bd9f0a00
    asm("{disp8} fadd       dword ptr [esp + 0x18]");                        // 0x007590d3    d8442418
    asm("{disp32} mov       ecx, dword ptr [_villager_civic_float10p0_0x0099a944]");  // 0x007590d7    8b0d44a99900
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x007590dd    8b54241c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x007590e1    d95c240c
    asm("push               0x1");                                           // 0x007590e5    6a01
    asm("fild               dword ptr [edi]");                               // 0x007590e7    db07
    asm("push               ecx");                                           // 0x007590e9    51
    asm("push               0x007591e0");                                    // 0x007590ea    68e0917500
    asm("push               edx");                                           // 0x007590ef    52
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x007590f0    d80da4a38a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x007590f6    8d442418
    asm("push               eax");                                           // 0x007590fa    50
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x007590fb    d95c241c
    asm("{disp8} fild       dword ptr [edi + 0x04]");                        // 0x007590ff    db4704
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00759102    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00759108    d95c2424
    asm("call               _jmp_addr_0x0074e4c0");                          // 0x0075910c    e8af53ffff
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3de8]");        // 0x00759111    8b0de89ddb00
    asm("add                esp, 0x14");                                     // 0x00759117    83c414
    asm("test               ecx, ecx");                                      // 0x0075911a    85c9
    asm("{disp32} je        _jmp_addr_0x007591c7");                          // 0x0075911c    0f84a5000000
    asm("{disp32} fld       dword ptr [data_bytes + 0x3f3dec]");             // 0x00759122    d905ec9ddb00
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2478]");              // 0x00759128    d81d78b48a00
    asm("fnstsw             ax");                                            // 0x0075912e    dfe0
    asm("test               ah, 0x01");                                      // 0x00759130    f6c401
    asm("{disp8} je         _jmp_addr_0x00759193");                          // 0x00759133    745e
    asm("add                ecx, 0x14");                                     // 0x00759135    83c114
    asm("push               ecx");                                           // 0x00759138    51
    asm("push               edi");                                           // 0x00759139    57
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075913a    e83141ffff
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x0075913f    d95c2424
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x00759143    8b4c2424
    asm("push               ecx");                                           // 0x00759147    51
    asm("call               ?ConvertAngle3DToGame@GUtils@@SAIM@Z");          // 0x00759148    e8e34affff
    asm("add                esp, 0x0c");                                     // 0x0075914d    83c40c
    asm("push               eax");                                           // 0x00759150    50
    asm("mov.s              ecx, esi");                                      // 0x00759151    8bce
    asm("call               @SetGameAngle__13MobileWallHugFUs@10");          // 0x00759153    e83849ebff
    asm("mov                edx, dword ptr [esi]");                          // 0x00759158    8b16
    asm("push               0x000000b9");                                    // 0x0075915a    68b9000000
    asm("mov.s              ecx, esi");                                      // 0x0075915f    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759161    ff92e8080000
    asm("push               0x1");                                           // 0x00759167    6a01
    asm("push               0x000000b9");                                    // 0x00759169    68b9000000
    asm("mov.s              ecx, esi");                                      // 0x0075916e    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x00759170    e84b39e9ff
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x3f3de8]");        // 0x00759175    8b0de89ddb00
    asm("mov                eax, dword ptr [ecx]");                          // 0x0075917b    8b01
    asm("push               esi");                                           // 0x0075917d    56
    asm("call               dword ptr [eax + 0x81c]");                       // 0x0075917e    ff901c080000
    asm("fstp               st(0)");                                         // 0x00759184    ddd8
    asm("pop                edi");                                           // 0x00759186    5f
    asm("mov                eax, 0x00000001");                               // 0x00759187    b801000000
    asm("pop                esi");                                           // 0x0075918c    5e
    asm("add                esp, 0x0c");                                     // 0x0075918d    83c40c
    asm("ret                0x0008");                                        // 0x00759190    c20800
    asm("_jmp_addr_0x00759193:");
    asm("push               0x000000b9");                                    // 0x00759193    68b9000000
    asm("push               0x00db9dd8");                                    // 0x00759198    68d89ddb00
    asm("mov.s              ecx, esi");                                      // 0x0075919d    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x0075919f    e8ec96e9ff
    asm("push               edi");                                           // 0x007591a4    57
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000118]");             // 0x007591a5    8d8e18010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x007591ab    e85087e8ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x007591b0    8b4c241c
    asm("pop                edi");                                           // 0x007591b4    5f
    asm("{disp32} mov       dword ptr [esi + 0x00000120], ecx");             // 0x007591b5    898e20010000
    asm("mov                eax, 0x00000001");                               // 0x007591bb    b801000000
    asm("pop                esi");                                           // 0x007591c0    5e
    asm("add                esp, 0x0c");                                     // 0x007591c1    83c40c
    asm("ret                0x0008");                                        // 0x007591c4    c20800
    asm("_jmp_addr_0x007591c7:");
    asm("pop                edi");                                           // 0x007591c7    5f
    asm("xor.s              eax, eax");                                      // 0x007591c8    33c0
    asm("pop                esi");                                           // 0x007591ca    5e
    asm("add                esp, 0x0c");                                     // 0x007591cb    83c40c
    asm("ret                0x0008");                                        // 0x007591ce    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ProcessPoint__14ClearAreaPointFRC7LHPoint(struct ClearAreaPoint* this, const void* edx, const struct LHPoint* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x007591e0    83ec18
    asm("push               esi");                                           // 0x007591e3    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x20]");                   // 0x007591e4    8b742420
    asm("fld                dword ptr [esi]");                               // 0x007591e8    d906
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x007591ea    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x007591f0    e80b820400
    asm("{disp8} fld        dword ptr [esi + 0x08]");                        // 0x007591f5    d94608
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x007591f8    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x007591fe    89442404
    asm("call               _jmp_addr_0x007a1400");                          // 0x00759202    e8f9810400
    asm("push               0x0");                                           // 0x00759207    6a00
    asm("push               -0x1");                                          // 0x00759209    6aff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075920b    8d4c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075920f    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00759213    c744241400000000
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x0075921b    e8a0b3eaff
    asm("mov.s              esi, eax");                                      // 0x00759220    8bf0
    asm("test               esi, esi");                                      // 0x00759222    85f6
    asm("{disp32} je        _jmp_addr_0x007592d3");                          // 0x00759224    0f84a9000000
    asm("_jmp_addr_0x0075922a:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075922a    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075922c    8bce
    asm("call               dword ptr [eax + 0x814]");                       // 0x0075922e    ff9014080000
    asm("test               eax, eax");                                      // 0x00759234    85c0
    asm("{disp32} je        _jmp_addr_0x007592bd");                          // 0x00759236    0f8481000000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3de4]");        // 0x0075923c    a1e49ddb00
    asm("mov                edx, dword ptr [esi]");                          // 0x00759241    8b16
    asm("push               eax");                                           // 0x00759243    50
    asm("mov.s              ecx, esi");                                      // 0x00759244    8bce
    asm("call               dword ptr [edx + 0x810]");                       // 0x00759246    ff9210080000
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x33f4]");              // 0x0075924c    d81df4c38a00
    asm("fnstsw             ax");                                            // 0x00759252    dfe0
    asm("test               ah, 0x41");                                      // 0x00759254    f6c441
    asm("{disp8} jne        _jmp_addr_0x007592bd");                          // 0x00759257    7564
    asm("mov                edx, dword ptr [esi]");                          // 0x00759259    8b16
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x0075925b    8d442404
    asm("push               eax");                                           // 0x0075925f    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00759260    8d4c2414
    asm("push               ecx");                                           // 0x00759264    51
    asm("mov.s              ecx, esi");                                      // 0x00759265    8bce
    asm("call               dword ptr [edx + 0x83c]");                       // 0x00759267    ff923c080000
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x3f3de4]");        // 0x0075926d    a1e49ddb00
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00759272    8d542410
    asm("push               edx");                                           // 0x00759276    52
    asm("add                eax, 0x14");                                     // 0x00759277    83c014
    asm("push               eax");                                           // 0x0075927a    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075927b    e8f03affff
    asm("{disp32} fcom      dword ptr [data_bytes + 0x3f3dec]");             // 0x00759280    d815ec9ddb00
    asm("add                esp, 0x08");                                     // 0x00759286    83c408
    asm("fnstsw             ax");                                            // 0x00759289    dfe0
    asm("test               ah, 0x01");                                      // 0x0075928b    f6c401
    asm("{disp8} je         _jmp_addr_0x007592bb");                          // 0x0075928e    742b
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00759290    8b4c2410
    asm("{disp32} fstp      dword ptr [data_bytes + 0x3f3dec]");             // 0x00759294    d91dec9ddb00
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x0075929a    8b542414
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0075929e    8b442418
    asm("{disp32} mov       dword ptr [data_bytes + 0x3f3de8], esi");        // 0x007592a2    8935e89ddb00
    asm("{disp32} mov       dword ptr [_villager_civic_mapcoords_0x00db9dd8 + 0], ecx");        // 0x007592a8    890dd89ddb00
    asm("{disp32} mov       dword ptr [_villager_civic_mapcoords_0x00db9dd8 + 4], edx");        // 0x007592ae    8915dc9ddb00
    asm("{disp32} mov       dword ptr [_villager_civic_mapcoords_0x00db9dd8 + 8], eax");        // 0x007592b4    a3e09ddb00
    asm("{disp8} jmp        _jmp_addr_0x007592bd");                          // 0x007592b9    eb02
    asm("_jmp_addr_0x007592bb:");
    asm("fstp               st(0)");                                         // 0x007592bb    ddd8
    asm("_jmp_addr_0x007592bd:");
    asm("push               esi");                                           // 0x007592bd    56
    asm("push               -0x1");                                          // 0x007592be    6aff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x007592c0    8d4c240c
    asm("call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16");                          // 0x007592c4    e8f7b2eaff
    asm("mov.s              esi, eax");                                      // 0x007592c9    8bf0
    asm("test               esi, esi");                                      // 0x007592cb    85f6
    asm("{disp32} jne       _jmp_addr_0x0075922a");                          // 0x007592cd    0f8557ffffff
    asm("_jmp_addr_0x007592d3:");
    asm("mov                eax, 0x00000001");                               // 0x007592d3    b801000000
    asm("pop                esi");                                           // 0x007592d8    5e
    asm("add                esp, 0x18");                                     // 0x007592d9    83c418
    asm("ret");                                                              // 0x007592dc    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArriveAtPushObject__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x007592e0    83ec10
    asm("push               esi");                                           // 0x007592e3    56
    asm("mov.s              esi, ecx");                                      // 0x007592e4    8bf1
    asm("{disp32} lea       eax, dword ptr [esi + 0x00000118]");             // 0x007592e6    8d8618010000
    asm("push               eax");                                           // 0x007592ec    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x007592ed    8d4c240c
    asm("call               _jmp_addr_0x00603030");                          // 0x007592f1    e83a9deaff
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000120]");             // 0x007592f6    8b8e20010000
    asm("mov.s              edx, ecx");                                      // 0x007592fc    8bd1
    asm("push               edx");                                           // 0x007592fe    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x007592ff    8d44240c
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00759303    894c2408
    asm("push               eax");                                           // 0x00759307    50
    asm("mov.s              ecx, esi");                                      // 0x00759308    8bce
    asm("call               ?CheckForClearArea@Villager@@QAEIABUMapCoords@@M@Z");                          // 0x0075930a    e891fdffff
    asm("cmp                eax, 0x01");                                     // 0x0075930f    83f801
    asm("{disp8} jne        _jmp_addr_0x00759319");                          // 0x00759312    7505
    asm("pop                esi");                                           // 0x00759314    5e
    asm("add                esp, 0x10");                                     // 0x00759315    83c410
    asm("ret");                                                              // 0x00759318    c3
    asm("_jmp_addr_0x00759319:");
    asm("mov.s              ecx, esi");                                      // 0x00759319    8bce
    asm("call               ?ReenterBuildingState@Villager@@QAEIXZ");        // 0x0075931b    e840fcffff
    asm("pop                esi");                                           // 0x00759320    5e
    asm("add                esp, 0x10");                                     // 0x00759321    83c410
    asm("ret");                                                              // 0x00759324    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyToBuild__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00759330    56
    asm("mov.s              esi, ecx");                                      // 0x00759331    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759333    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00759335    ff5048
    asm("test               eax, eax");                                      // 0x00759338    85c0
    asm("{disp8} je         _jmp_addr_0x00759369");                          // 0x0075933a    742d
    asm("{disp32} mov       dl, byte ptr [esi + 0x000000f2]");               // 0x0075933c    8a96f2000000
    asm("xor.s              ecx, ecx");                                      // 0x00759342    33c9
    asm("cmp                dl, 0x04");                                      // 0x00759344    80fa04
    asm("sete               cl");                                            // 0x00759347    0f94c1
    asm("push               ecx");                                           // 0x0075934a    51
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075934b    8d4e14
    asm("push               ecx");                                           // 0x0075934e    51
    asm("mov.s              ecx, eax");                                      // 0x0075934f    8bc8
    asm("call               ?GetBestBuildingSite@Town@@QAEIABUMapCoords@@H@Z");                          // 0x00759351    e80a3cfeff
    asm("test               eax, eax");                                      // 0x00759356    85c0
    asm("{disp8} je         _jmp_addr_0x00759369");                          // 0x00759358    740f
    asm("push               eax");                                           // 0x0075935a    50
    asm("mov.s              ecx, esi");                                      // 0x0075935b    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x0075935d    e84ef1ffff
    asm("cmp                eax, 0x01");                                     // 0x00759362    83f801
    asm("{disp8} jne        _jmp_addr_0x00759369");                          // 0x00759365    7502
    asm("pop                esi");                                           // 0x00759367    5e
    asm("ret");                                                              // 0x00759368    c3
    asm("_jmp_addr_0x00759369:");
    asm("xor.s              eax, eax");                                      // 0x00759369    33c0
    asm("pop                esi");                                           // 0x0075936b    5e
    asm("ret");                                                              // 0x0075936c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfyToRepair__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00759370    56
    asm("mov.s              esi, ecx");                                      // 0x00759371    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759373    8b06
    asm("call               dword ptr [eax + 0x48]");                        // 0x00759375    ff5048
    asm("test               eax, eax");                                      // 0x00759378    85c0
    asm("{disp8} je         _jmp_addr_0x00759396");                          // 0x0075937a    741a
    asm("mov.s              ecx, eax");                                      // 0x0075937c    8bc8
    asm("call               ?GetBestRepairBuildingSite@Town@@QAEIXZ");       // 0x0075937e    e81debfeff
    asm("test               eax, eax");                                      // 0x00759383    85c0
    asm("{disp8} je         _jmp_addr_0x00759396");                          // 0x00759385    740f
    asm("push               eax");                                           // 0x00759387    50
    asm("mov.s              ecx, esi");                                      // 0x00759388    8bce
    asm("call               ?SetupBuildingObject@Villager@@QAEIPAVBuildingSite@@@Z");                          // 0x0075938a    e821f1ffff
    asm("cmp                eax, 0x01");                                     // 0x0075938f    83f801
    asm("{disp8} jne        _jmp_addr_0x00759396");                          // 0x00759392    7502
    asm("pop                esi");                                           // 0x00759394    5e
    asm("ret");                                                              // 0x00759395    c3
    asm("_jmp_addr_0x00759396:");
    asm("xor.s              eax, eax");                                      // 0x00759396    33c0
    asm("pop                esi");                                           // 0x00759398    5e
    asm("ret");                                                              // 0x00759399    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckSatisfySupplyWorkshop__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x007593a0    83ec0c
    asm("push               esi");                                           // 0x007593a3    56
    asm("mov.s              esi, ecx");                                      // 0x007593a4    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007593a6    8b06
    asm("push               edi");                                           // 0x007593a8    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x007593a9    ff5048
    asm("test               eax, eax");                                      // 0x007593ac    85c0
    asm("{disp32} je        _jmp_addr_0x00759440");                          // 0x007593ae    0f848c000000
    asm("push               0x1");                                           // 0x007593b4    6a01
    asm("push               0x1");                                           // 0x007593b6    6a01
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x007593b8    8d4e14
    asm("push               ecx");                                           // 0x007593bb    51
    asm("mov.s              ecx, eax");                                      // 0x007593bc    8bc8
    asm("call               ?GetBestWorkshop@Town@@QAEPAVWorkshop@@AAUMapCoords@@HH@Z");                          // 0x007593be    e88d6efeff
    asm("mov.s              edi, eax");                                      // 0x007593c3    8bf8
    asm("test               edi, edi");                                      // 0x007593c5    85ff
    asm("{disp8} je         _jmp_addr_0x00759440");                          // 0x007593c7    7477
    asm("cmp                word ptr [esi + 0x000000f6], 0x00");             // 0x007593c9    6683bef600000000
    asm("{disp8} je         _jmp_addr_0x007593fb");                          // 0x007593d1    7428
    asm("mov                edx, dword ptr [edi]");                          // 0x007593d3    8b17
    asm("push               0x000000d2");                                    // 0x007593d5    68d2000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x007593da    8d44240c
    asm("push               eax");                                           // 0x007593de    50
    asm("mov.s              ecx, edi");                                      // 0x007593df    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x007593e1    ff9204010000
    asm("push               eax");                                           // 0x007593e7    50
    asm("push               edi");                                           // 0x007593e8    57
    asm("mov.s              ecx, esi");                                      // 0x007593e9    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007593eb    e83049e9ff
    asm("pop                edi");                                           // 0x007593f0    5f
    asm("mov                eax, 0x00000001");                               // 0x007593f1    b801000000
    asm("pop                esi");                                           // 0x007593f6    5e
    asm("add                esp, 0x0c");                                     // 0x007593f7    83c40c
    asm("ret");                                                              // 0x007593fa    c3
    asm("_jmp_addr_0x007593fb:");
    asm("mov.s              ecx, esi");                                      // 0x007593fb    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x007593fd    e80e8bffff
    asm("mov.s              edi, eax");                                      // 0x00759402    8bf8
    asm("test               edi, edi");                                      // 0x00759404    85ff
    asm("{disp8} je         _jmp_addr_0x00759440");                          // 0x00759406    7438
    asm("mov                edx, dword ptr [edi]");                          // 0x00759408    8b17
    asm("push               0x1");                                           // 0x0075940a    6a01
    asm("mov.s              ecx, edi");                                      // 0x0075940c    8bcf
    asm("call               dword ptr [edx + 0x98]");                        // 0x0075940e    ff9298000000
    asm("test               eax, eax");                                      // 0x00759414    85c0
    asm("{disp8} jle        _jmp_addr_0x00759440");                          // 0x00759416    7e28
    asm("mov                eax, dword ptr [edi]");                          // 0x00759418    8b07
    asm("push               0x000000d3");                                    // 0x0075941a    68d3000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075941f    8d4c240c
    asm("push               ecx");                                           // 0x00759423    51
    asm("mov.s              ecx, edi");                                      // 0x00759424    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x00759426    ff9004010000
    asm("push               eax");                                           // 0x0075942c    50
    asm("push               edi");                                           // 0x0075942d    57
    asm("mov.s              ecx, esi");                                      // 0x0075942e    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00759430    e8eb48e9ff
    asm("pop                edi");                                           // 0x00759435    5f
    asm("mov                eax, 0x00000001");                               // 0x00759436    b801000000
    asm("pop                esi");                                           // 0x0075943b    5e
    asm("add                esp, 0x0c");                                     // 0x0075943c    83c40c
    asm("ret");                                                              // 0x0075943f    c3
    asm("_jmp_addr_0x00759440:");
    asm("pop                edi");                                           // 0x00759440    5f
    asm("xor.s              eax, eax");                                      // 0x00759441    33c0
    asm("pop                esi");                                           // 0x00759443    5e
    asm("add                esp, 0x0c");                                     // 0x00759444    83c40c
    asm("ret");                                                              // 0x00759447    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtStoragePitForWorkshopMaterials__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00759450    83ec0c
    asm("push               ebx");                                           // 0x00759453    53
    asm("push               esi");                                           // 0x00759454    56
    asm("mov.s              esi, ecx");                                      // 0x00759455    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759457    8b06
    asm("push               edi");                                           // 0x00759459    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075945a    ff5048
    asm("mov.s              ebx, eax");                                      // 0x0075945d    8bd8
    asm("test               ebx, ebx");                                      // 0x0075945f    85db
    asm("{disp8} jne        _jmp_addr_0x0075946a");                          // 0x00759461    7507
    asm("pop                edi");                                           // 0x00759463    5f
    asm("pop                esi");                                           // 0x00759464    5e
    asm("pop                ebx");                                           // 0x00759465    5b
    asm("add                esp, 0x0c");                                     // 0x00759466    83c40c
    asm("ret");                                                              // 0x00759469    c3
    asm("_jmp_addr_0x0075946a:");
    asm("mov.s              ecx, esi");                                      // 0x0075946a    8bce
    asm("call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ"); // 0x0075946c    e89f8affff
    asm("mov.s              edi, eax");                                      // 0x00759471    8bf8
    asm("test               edi, edi");                                      // 0x00759473    85ff
    asm("{disp32} je        _jmp_addr_0x00759500");                          // 0x00759475    0f8485000000
    asm("mov                edx, dword ptr [edi]");                          // 0x0075947b    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075947d    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x0075947f    ff92d4000000
    asm("test               eax, eax");                                      // 0x00759485    85c0
    asm("{disp8} je         _jmp_addr_0x00759500");                          // 0x00759487    7477
    asm("push               0x0");                                           // 0x00759489    6a00
    asm("mov.s              ecx, esi");                                      // 0x0075948b    8bce
    asm("call               @AreWeThere__13MobileWallHugFf@12");             // 0x0075948d    e8ae18ebff
    asm("test               eax, eax");                                      // 0x00759492    85c0
    asm("{disp8} je         _jmp_addr_0x007594d7");                          // 0x00759494    7441
    asm("push               0x1");                                           // 0x00759496    6a01
    asm("push               0x1");                                           // 0x00759498    6a01
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0075949a    8d4614
    asm("push               eax");                                           // 0x0075949d    50
    asm("mov.s              ecx, ebx");                                      // 0x0075949e    8bcb
    asm("call               ?GetBestWorkshop@Town@@QAEPAVWorkshop@@AAUMapCoords@@HH@Z");                          // 0x007594a0    e8ab6dfeff
    asm("test               eax, eax");                                      // 0x007594a5    85c0
    asm("{disp8} je         _jmp_addr_0x00759500");                          // 0x007594a7    7457
    asm("mov.s              ecx, esi");                                      // 0x007594a9    8bce
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x007594ab    e84080ffff
    asm("movsx              eax, ax");                                       // 0x007594b0    0fbfc0
    asm("test               eax, eax");                                      // 0x007594b3    85c0
    asm("{disp8} je         _jmp_addr_0x00759500");                          // 0x007594b5    7449
    asm("push               0x000000a3");                                    // 0x007594b7    68a3000000
    asm("push               0x000000d2");                                    // 0x007594bc    68d2000000
    asm("push               eax");                                           // 0x007594c1    50
    asm("push               0x1");                                           // 0x007594c2    6a01
    asm("mov.s              ecx, esi");                                      // 0x007594c4    8bce
    asm("call               ?ArrivesAtStoragePitForResource@Villager@@QAEIW4RESOURCE_TYPE@@KW4VILLAGER_STATES@@1@Z");                          // 0x007594c6    e805040100
    asm("pop                edi");                                           // 0x007594cb    5f
    asm("pop                esi");                                           // 0x007594cc    5e
    asm("mov                eax, 0x00000001");                               // 0x007594cd    b801000000
    asm("pop                ebx");                                           // 0x007594d2    5b
    asm("add                esp, 0x0c");                                     // 0x007594d3    83c40c
    asm("ret");                                                              // 0x007594d6    c3
    asm("_jmp_addr_0x007594d7:");
    asm("mov                edx, dword ptr [edi]");                          // 0x007594d7    8b17
    asm("push               0x000000d3");                                    // 0x007594d9    68d3000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x007594de    8d442410
    asm("push               eax");                                           // 0x007594e2    50
    asm("mov.s              ecx, edi");                                      // 0x007594e3    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x007594e5    ff9204010000
    asm("push               eax");                                           // 0x007594eb    50
    asm("push               edi");                                           // 0x007594ec    57
    asm("mov.s              ecx, esi");                                      // 0x007594ed    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007594ef    e82c48e9ff
    asm("pop                edi");                                           // 0x007594f4    5f
    asm("pop                esi");                                           // 0x007594f5    5e
    asm("mov                eax, 0x00000001");                               // 0x007594f6    b801000000
    asm("pop                ebx");                                           // 0x007594fb    5b
    asm("add                esp, 0x0c");                                     // 0x007594fc    83c40c
    asm("ret");                                                              // 0x007594ff    c3
    asm("_jmp_addr_0x00759500:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00759500    8b16
    asm("push               0x000000a3");                                    // 0x00759502    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759507    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00759509    ff92e8080000
    asm("pop                edi");                                           // 0x0075950f    5f
    asm("pop                esi");                                           // 0x00759510    5e
    asm("mov                eax, 0x00000001");                               // 0x00759511    b801000000
    asm("pop                ebx");                                           // 0x00759516    5b
    asm("add                esp, 0x0c");                                     // 0x00759517    83c40c
    asm("ret");                                                              // 0x0075951a    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtWorkshopForDropOff__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00759520    83ec0c
    asm("push               ebx");                                           // 0x00759523    53
    asm("push               esi");                                           // 0x00759524    56
    asm("mov.s              esi, ecx");                                      // 0x00759525    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759527    8b06
    asm("push               edi");                                           // 0x00759529    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075952a    ff5048
    asm("test               eax, eax");                                      // 0x0075952d    85c0
    asm("{disp8} jne        _jmp_addr_0x00759538");                          // 0x0075952f    7507
    asm("pop                edi");                                           // 0x00759531    5f
    asm("pop                esi");                                           // 0x00759532    5e
    asm("pop                ebx");                                           // 0x00759533    5b
    asm("add                esp, 0x0c");                                     // 0x00759534    83c40c
    asm("ret");                                                              // 0x00759537    c3
    asm("_jmp_addr_0x00759538:");
    asm("push               0x1");                                           // 0x00759538    6a01
    asm("push               0x1");                                           // 0x0075953a    6a01
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075953c    8d4e14
    asm("push               ecx");                                           // 0x0075953f    51
    asm("mov.s              ecx, eax");                                      // 0x00759540    8bc8
    asm("call               ?GetBestWorkshop@Town@@QAEPAVWorkshop@@AAUMapCoords@@HH@Z");                          // 0x00759542    e8096dfeff
    asm("mov.s              edi, eax");                                      // 0x00759547    8bf8
    asm("test               edi, edi");                                      // 0x00759549    85ff
    asm("{disp8} je         _jmp_addr_0x00759591");                          // 0x0075954b    7444
    asm("mov                edx, dword ptr [edi]");                          // 0x0075954d    8b17
    asm("mov                ebx, dword ptr [esi]");                          // 0x0075954f    8b1e
    asm("push               0x0");                                           // 0x00759551    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x00759553    8d442410
    asm("push               eax");                                           // 0x00759557    50
    asm("mov.s              ecx, edi");                                      // 0x00759558    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x0075955a    ff9204010000
    asm("push               eax");                                           // 0x00759560    50
    asm("mov.s              ecx, esi");                                      // 0x00759561    8bce
    asm("call               dword ptr [ebx + 0x85c]");                       // 0x00759563    ff935c080000
    asm("test               eax, eax");                                      // 0x00759569    85c0
    asm("{disp8} je         _jmp_addr_0x007595ac");                          // 0x0075956b    743f
    asm("movsx              ebx, word ptr [esi + 0x000000f6]");              // 0x0075956d    0fbf9ef6000000
    asm("push               ebx");                                           // 0x00759574    53
    asm("mov.s              ecx, esi");                                      // 0x00759575    8bce
    asm("call               ?DropWood@Villager@@QAEGG@Z");                   // 0x00759577    e8c47cffff
    asm("mov                edx, dword ptr [edi]");                          // 0x0075957c    8b17
    asm("push               0x0");                                           // 0x0075957e    6a00
    asm("push               0x0");                                           // 0x00759580    6a00
    asm("push               0x0");                                           // 0x00759582    6a00
    asm("push               0x0");                                           // 0x00759584    6a00
    asm("push               ebx");                                           // 0x00759586    53
    asm("push               0x1");                                           // 0x00759587    6a01
    asm("mov.s              ecx, edi");                                      // 0x00759589    8bcf
    asm("call               dword ptr [edx + 0x9c]");                        // 0x0075958b    ff929c000000
    asm("_jmp_addr_0x00759591:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00759591    8b16
    asm("push               0x000000a3");                                    // 0x00759593    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00759598    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0075959a    ff92e8080000
    asm("pop                edi");                                           // 0x007595a0    5f
    asm("pop                esi");                                           // 0x007595a1    5e
    asm("mov                eax, 0x00000001");                               // 0x007595a2    b801000000
    asm("pop                ebx");                                           // 0x007595a7    5b
    asm("add                esp, 0x0c");                                     // 0x007595a8    83c40c
    asm("ret");                                                              // 0x007595ab    c3
    asm("_jmp_addr_0x007595ac:");
    asm("mov                eax, dword ptr [edi]");                          // 0x007595ac    8b07
    asm("push               0x000000d2");                                    // 0x007595ae    68d2000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x007595b3    8d4c2410
    asm("push               ecx");                                           // 0x007595b7    51
    asm("mov.s              ecx, edi");                                      // 0x007595b8    8bcf
    asm("call               dword ptr [eax + 0x104]");                       // 0x007595ba    ff9004010000
    asm("push               eax");                                           // 0x007595c0    50
    asm("push               edi");                                           // 0x007595c1    57
    asm("mov.s              ecx, esi");                                      // 0x007595c2    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x007595c4    e85747e9ff
    asm("pop                edi");                                           // 0x007595c9    5f
    asm("pop                esi");                                           // 0x007595ca    5e
    asm("mov                eax, 0x00000001");                               // 0x007595cb    b801000000
    asm("pop                ebx");                                           // 0x007595d0    5b
    asm("add                esp, 0x0c");                                     // 0x007595d1    83c40c
    asm("ret");                                                              // 0x007595d4    c3
    __builtin_unreachable();
}

uint32_t __fastcall CheckForScaffoldForBuildingSite__8VillagerFP12BuildingSite(struct Villager* this, const void* edx, struct BuildingSite* param_1)
{
    return 0x2b;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScaffoldValid__8VillagerFv(struct Villager* this)
{
    asm("xor.s              al, al");                                        // 0x007595f0    32c0
    asm("ret");                                                              // 0x007595f2    c3
    __builtin_unreachable();
}

bool32_t __fastcall ExitBringScaffoldToBuildingSite__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    return 1;
}

struct MapCoords* __fastcall GetPosForPushObject__8VillagerFP6ObjectR9MapCoords(struct Villager* this, const void* edx, struct Object* param_1, struct MapCoords* param_2)
{
    asm("sub                esp, 0x28");                                     // 0x00759610    83ec28
    asm("push               esi");                                           // 0x00759613    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x38]");                   // 0x00759614    8b742438
    asm("{disp8} mov        eax, dword ptr [esi + 0x08]");                   // 0x00759618    8b4608
    asm("push               edi");                                           // 0x0075961b    57
    asm("mov.s              edi, ecx");                                      // 0x0075961c    8bf9
    asm("mov.s              ecx, esi");                                      // 0x0075961e    8bce
    asm("{disp8} mov        dword ptr [esp + 0x3c], eax");                   // 0x00759620    8944243c
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x00759624    e8679a0a00
    asm("{disp8} fadd       dword ptr [esp + 0x3c]");                        // 0x00759629    d844243c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x38]");                   // 0x0075962d    8b4c2438
    asm("mov                edx, dword ptr [ecx]");                          // 0x00759631    8b11
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00759633    d95c2428
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x00759637    8d442408
    asm("fild               dword ptr [esi]");                               // 0x0075963b    db06
    asm("push               eax");                                           // 0x0075963d    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x0075963e    8d44241c
    asm("push               eax");                                           // 0x00759642    50
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00759643    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x00759649    d95c242c
    asm("{disp8} fild       dword ptr [esi + 0x04]");                        // 0x0075964d    db4604
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00759650    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x34]");                        // 0x00759656    d95c2434
    asm("call               dword ptr [edx + 0x798]");                       // 0x0075965a    ff9298070000
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00759660    d9442418
    asm("mov                edx, dword ptr [edi]");                          // 0x00759664    8b17
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x00759666    d8642424
    asm("mov.s              ecx, edi");                                      // 0x0075966a    8bcf
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0075966c    d95c240c
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00759670    d944241c
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x00759674    d8642428
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00759678    d95c2410
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075967c    d9442420
    asm("{disp8} fsub       dword ptr [esp + 0x2c]");                        // 0x00759680    d864242c
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00759684    d95c2414
    asm("call               dword ptr [edx + 0x60]");                        // 0x00759688    ff5260
    asm("{disp8} fadd       dword ptr [esp + 0x08]");                        // 0x0075968b    d8442408
    asm("{disp8} fstp       dword ptr [esp + 0x3c]");                        // 0x0075968f    d95c243c
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00759693    d944240c
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x00759697    d81598a38a00
    asm("fnstsw             ax");                                            // 0x0075969d    dfe0
    asm("test               ah, 0x40");                                      // 0x0075969f    f6c440
    asm("{disp8} je         _jmp_addr_0x007596c6");                          // 0x007596a2    7422
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x007596a4    d9442410
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007596a8    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007596ae    dfe0
    asm("test               ah, 0x40");                                      // 0x007596b0    f6c440
    asm("{disp8} je         _jmp_addr_0x007596c6");                          // 0x007596b3    7411
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x007596b5    d9442414
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x007596b9    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x007596bf    dfe0
    asm("test               ah, 0x40");                                      // 0x007596c1    f6c440
    asm("{disp8} jne        _jmp_addr_0x007596f4");                          // 0x007596c4    752e
    asm("_jmp_addr_0x007596c6:");
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x007596c6    d9442414
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                        // 0x007596ca    d84c2414
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x007596ce    d9442410
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x007596d2    d84c2410
    asm("faddp              st(1), st");                                     // 0x007596d6    dec1
    asm("fld                st(1)");                                         // 0x007596d8    d9c1
    asm("fmul               st, st(2)");                                     // 0x007596da    d8ca
    asm("faddp              st(1), st");                                     // 0x007596dc    dec1
    asm("fsqrt");                                                            // 0x007596de    d9fa
    asm("{disp8} fdivr      dword ptr [esp + 0x3c]");                        // 0x007596e0    d87c243c
    asm("fld                st(0)");                                         // 0x007596e4    d9c0
    asm("fmulp              st(2), st");                                     // 0x007596e6    deca
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x007596e8    d9442414
    asm("fmul               st, st(1)");                                     // 0x007596ec    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x007596ee    d95c2414
    asm("fstp               st(0)");                                         // 0x007596f2    ddd8
    asm("_jmp_addr_0x007596f4:");
    asm("{disp8} fadd       dword ptr [esp + 0x18]");                        // 0x007596f4    d8442418
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x007596f8    d9442420
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x007596fc    d8442414
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00759700    d95c2420
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00759704    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075970a    e8f17c0400
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075970f    d9442420
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00759713    d80d00c48a00
    asm("mov.s              esi, eax");                                      // 0x00759719    8bf0
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075971b    e8e07c0400
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                   // 0x00759720    8b4c2434
    asm("mov.s              edx, ecx");                                      // 0x00759724    8bd1
    asm("mov                dword ptr [edx], esi");                          // 0x00759726    8932
    asm("{disp8} mov        dword ptr [edx + 0x04], eax");                   // 0x00759728    894204
    asm("{disp8} mov        dword ptr [esp + 0x2c], 0x00000000");            // 0x0075972b    c744242c00000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x2c]");                   // 0x00759733    8b44242c
    asm("pop                edi");                                           // 0x00759737    5f
    asm("{disp8} mov        dword ptr [edx + 0x08], eax");                   // 0x00759738    894208
    asm("mov.s              eax, ecx");                                      // 0x0075973b    8bc1
    asm("pop                esi");                                           // 0x0075973d    5e
    asm("add                esp, 0x28");                                     // 0x0075973e    83c428
    asm("ret                0x000c");                                        // 0x00759741    c20c00
    __builtin_unreachable();
}

bool32_t __fastcall EnterBuilding__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    asm("push               esi");                                           // 0x00759750    56
    asm("mov.s              esi, ecx");                                      // 0x00759751    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00759753    8b06
    asm("push               edi");                                           // 0x00759755    57
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000fc]");             // 0x00759756    8bbefc000000
    asm("push               edi");                                           // 0x0075975c    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x0075975d    ff5048
    asm("mov.s              ecx, eax");                                      // 0x00759760    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00759762    e89937feff
    asm("test               eax, eax");                                      // 0x00759767    85c0
    asm("{disp8} jne        _jmp_addr_0x00759770");                          // 0x00759769    7505
    asm("pop                edi");                                           // 0x0075976b    5f
    asm("pop                esi");                                           // 0x0075976c    5e
    asm("ret                0x0008");                                        // 0x0075976d    c20800
    asm("_jmp_addr_0x00759770:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00759770    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x00759774    8b54240c
    asm("and                ecx, 0x000000ff");                               // 0x00759778    81e1ff000000
    asm("push               ecx");                                           // 0x0075977e    51
    asm("and                edx, 0x000000ff");                               // 0x0075977f    81e2ff000000
    asm("push               edx");                                           // 0x00759785    52
    asm("mov.s              ecx, esi");                                      // 0x00759786    8bce
    asm("call               ?IsStateEntryFunctionSameAs@Villager@@QBE_NKK@Z");                          // 0x00759788    e8438dffff
    asm("test               eax, eax");                                      // 0x0075978d    85c0
    asm("{disp8} jne        _jmp_addr_0x00759799");                          // 0x0075978f    7508
    asm("push               esi");                                           // 0x00759791    56
    asm("mov.s              ecx, edi");                                      // 0x00759792    8bcf
    asm("call               _jmp_addr_0x0043be40");                          // 0x00759794    e8a726ceff
    asm("_jmp_addr_0x00759799:");
    asm("pop                edi");                                           // 0x00759799    5f
    asm("mov                eax, 0x00000001");                               // 0x0075979a    b801000000
    asm("pop                esi");                                           // 0x0075979f    5e
    asm("ret                0x0008");                                        // 0x007597a0    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ExitBuilding__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                           // 0x007597b0    56
    asm("mov.s              esi, ecx");                                      // 0x007597b1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x007597b3    8b4c2408
    asm("mov                eax, dword ptr [esi]");                          // 0x007597b7    8b06
    asm("and                ecx, 0x000000ff");                               // 0x007597b9    81e1ff000000
    asm("push               ecx");                                           // 0x007597bf    51
    asm("mov.s              ecx, esi");                                      // 0x007597c0    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x007597c2    ff906c090000
    asm("test               eax, eax");                                      // 0x007597c8    85c0
    asm("{disp8} jne        _jmp_addr_0x00759806");                          // 0x007597ca    753a
    asm("mov                edx, dword ptr [esi]");                          // 0x007597cc    8b16
    asm("mov.s              ecx, esi");                                      // 0x007597ce    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x007597d0    ff5248
    asm("test               eax, eax");                                      // 0x007597d3    85c0
    asm("{disp8} je         _jmp_addr_0x007597fc");                          // 0x007597d5    7425
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000fc]");             // 0x007597d7    8b86fc000000
    asm("push               eax");                                           // 0x007597dd    50
    asm("mov                eax, dword ptr [esi]");                          // 0x007597de    8b06
    asm("mov.s              ecx, esi");                                      // 0x007597e0    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007597e2    ff5048
    asm("mov.s              ecx, eax");                                      // 0x007597e5    8bc8
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x007597e7    e81437feff
    asm("test               eax, eax");                                      // 0x007597ec    85c0
    asm("{disp8} je         _jmp_addr_0x007597fc");                          // 0x007597ee    740c
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000fc]");             // 0x007597f0    8b8efc000000
    asm("push               esi");                                           // 0x007597f6    56
    asm("call               _jmp_addr_0x0043be90");                          // 0x007597f7    e89426ceff
    asm("_jmp_addr_0x007597fc:");
    asm("{disp32} mov       dword ptr [esi + 0x000000fc], 0x00000000");      // 0x007597fc    c786fc00000000000000
    asm("_jmp_addr_0x00759806:");
    asm("mov                eax, 0x00000001");                               // 0x00759806    b801000000
    asm("pop                esi");                                           // 0x0075980b    5e
    asm("ret                0x0004");                                        // 0x0075980c    c20400
    __builtin_unreachable();
}
