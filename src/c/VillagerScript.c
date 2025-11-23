#include "Villager.h"

const float villager_script_num_days_in_year_0x0099a9f8 = 365.25f;
const float villager_script_seconds_in_day_0x0099a9fc = 86400.0f;
const float villager_script_float0p7_0x0099aa00 = 0.7f;

__attribute__((aligned(4))) char s_VillagerScript_cpp[] = "C:\\dev\\MP\\Black\\VillagerScript.cpp";

uint32_t villager_script_uint_0x00db9e44;
uint32_t villager_script_uint_0x00db9e48;
float villager_script_seconds_in_year_0x00db9e4c;

void __cdecl globl_ct_0x007685b0(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x007685b0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x007685b6    b001
    asm("test               al, cl");                                        // 0x007685b8    84c8
    asm("{disp8} jne        _jmp_addr_0x007685c4");                          // 0x007685ba    7508
    asm("or.s               cl, al");                                        // 0x007685bc    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x007685be    880d34c9fa00
    asm("_jmp_addr_0x007685c4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x007685d0");   // 0x007685c4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x007685d0(void)
{
    asm("push               0x00407870");                                    // 0x007685d0    6870784000
    asm("call               _atexit");                                       // 0x007685d5    e8b7d10500
    asm("pop                ecx");                                           // 0x007685da    59
}

void __cdecl globl_ct_0x007685e0(void)
{
    asm("{disp32} jmp       _FUN_007685f0__8VillagerFv");                    // 0x007685e0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007685f0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_script_seconds_in_day_0x0099a9fc]");   // 0x007685f0    d905fca99900
    asm("{disp32} fmul dword ptr [_villager_script_num_days_in_year_0x0099a9f8]"); // 0x007685f6    d80df8a99900
    asm("{disp32} fstp dword ptr [_villager_script_seconds_in_year_0x00db9e4c]");  // 0x007685fc    d91d4c9edb00
}

void __cdecl globl_ct_0x00768610(void)
{
    asm("{disp32} jmp       _FUN_00768620__8VillagerFv");                    // 0x00768610    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00768620__8VillagerFv(void)
{
    asm("{disp32} mov dword ptr [_villager_script_uint_0x00db9e48], 0xffffffff");  // 0x00768620    c705489edb00ffffffff
}

uint32_t __fastcall IsReadyForNewScriptAction__8VillagerFv(struct GameThingWithPos* this)
{
    asm("call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ"); // 0x00768630    e8bba1e8ff
    asm("sub                al, 0x04");                                        // 0x00768635    2c04
    asm("neg                al");                                              // 0x00768637    f6d8
    asm("sbb.s              eax, eax");                                        // 0x00768639    1bc0
    asm("inc                eax");                                             // 0x0076863b    40
    asm("ret");                                                                // 0x0076863c    c3
    __builtin_unreachable();
}

bool32_t __fastcall CannotExitState__6LivingFUc(struct Living* this, const void* edx, unsigned char param_1)
{
    asm("mov                eax, dword ptr [ecx]");                            // 0x00768640    8b01
    asm("push               ebx");                                             // 0x00768642    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                     // 0x00768643    8b5c2408
    asm("mov.s              edx, ebx");                                        // 0x00768647    8bd3
    asm("and                edx, 0x000000ff");                                 // 0x00768649    81e2ff000000
    asm("push               edx");                                             // 0x0076864f    52
    asm("call               dword ptr [eax + 0x96c]");                         // 0x00768650    ff906c090000
    asm("test               eax, eax");                                        // 0x00768656    85c0
    asm("{disp8} jne        _jmp_addr_0x00768668");                            // 0x00768658    750e
    asm("cmp                bl, 0x18");                                        // 0x0076865a    80fb18
    asm("{disp8} je         _jmp_addr_0x00768668");                            // 0x0076865d    7409
    asm("cmp                bl, 0x0a");                                        // 0x0076865f    80fb0a
    asm("{disp8} je         _jmp_addr_0x00768668");                            // 0x00768662    7404
    asm("pop                ebx");                                             // 0x00768664    5b
    asm("ret                0x0004");                                          // 0x00768665    c20400
    asm("_jmp_addr_0x00768668:");
    asm("mov                eax, 0x00000001");                                 // 0x00768668    b801000000
    asm("pop                ebx");                                             // 0x0076866d    5b
    asm("ret                0x0004");                                          // 0x0076866e    c20400
    __builtin_unreachable();
}

bool32_t __fastcall SetupScriptWanderToPos__8VillagerFRC9MapCoordsfUsUs(struct Villager* this, const void* edx, const struct MapCoords* param_1, float param_2, unsigned short param_3, unsigned short param_4)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                     // 0x00768680    8b442404
    asm("push               esi");                                             // 0x00768684    56
    asm("mov.s              esi, ecx");                                        // 0x00768685    8bf1
    asm("push               eax");                                             // 0x00768687    50
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000010c]");               // 0x00768688    8d8e0c010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                            // 0x0076868e    e86d92e7ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                     // 0x00768693    8b4c240c
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                     // 0x00768697    8b442414
    asm("{disp32} mov       dword ptr [esi + 0x00000118], ecx");               // 0x0076869b    898e18010000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                     // 0x007686a1    8b4c2410
    asm("and                ecx, 0x0000ffff");                                 // 0x007686a5    81e1ffff0000
    asm("{disp8} lea        edx, dword ptr [ecx + 0x01]");                     // 0x007686ab    8d5101
    asm("and                eax, 0x0000ffff");                                 // 0x007686ae    25ffff0000
    asm("cmp.s              edx, eax");                                        // 0x007686b3    3bd0
    asm("{disp8} jle        _jmp_addr_0x007686b9");                            // 0x007686b5    7e02
    asm("mov.s              eax, edx");                                        // 0x007686b7    8bc2
    asm("_jmp_addr_0x007686b9:");
    asm("{disp32} mov       dword ptr [esi + 0x0000011c], ecx");               // 0x007686b9    898e1c010000
    asm("mov.s              ecx, esi");                                        // 0x007686bf    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000120], eax");               // 0x007686c1    898620010000
    asm("call               ?SetupNewScriptWander@Villager@@QAEIXZ");          // 0x007686c7    e804000000
    asm("pop                esi");                                             // 0x007686cc    5e
    asm("ret                0x0010");                                          // 0x007686cd    c21000
    __builtin_unreachable();
}

bool32_t __fastcall SetupNewScriptWander__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                       // 0x007686d0    83ec18
    asm("push               esi");                                             // 0x007686d3    56
    asm("mov.s              esi, ecx");                                        // 0x007686d4    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000110]");               // 0x007686d6    8b8e10010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x0000010c]");               // 0x007686dc    8b860c010000
    asm("push               edi");                                             // 0x007686e2    57
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                     // 0x007686e3    8d54240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x007686e7    894c2410
    asm("push               edx");                                             // 0x007686eb    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x007686ec    8d4c2418
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x007686f0    89442410
    asm("call               _jmp_addr_0x00603070");                            // 0x007686f4    e877a9e9ff
    asm("push               0x3c");                                            // 0x007686f9    6a3c
    asm("push               0x00c245e0");                                      // 0x007686fb    68e045c200
    asm("push               0x40c90fdb");                                      // 0x00768700    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x00768705    e8265ef7ff
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000118]");               // 0x0076870a    8b8618010000
    asm("push               0x3d");                                            // 0x00768710    6a3d
    asm("mov.s              ecx, eax");                                        // 0x00768712    8bc8
    asm("push               0x00c245e0");                                      // 0x00768714    68e045c200
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                          // 0x00768719    d95c2420
    asm("push               ecx");                                             // 0x0076871d    51
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                     // 0x0076871e    89442420
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                    // 0x00768722    e8095ef7ff
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]");                     // 0x00768727    8b442424
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                          // 0x0076872b    d95c2420
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                     // 0x0076872f    8b542420
    asm("push               edx");                                             // 0x00768733    52
    asm("push               eax");                                             // 0x00768734    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                     // 0x00768735    8d4c2434
    asm("push               ecx");                                             // 0x00768739    51
    asm("call               _jmp_addr_0x0074d510");                            // 0x0076873a    e8d14dfeff
    asm("add                esp, 0x24");                                       // 0x0076873f    83c424
    asm("push               0x000000c7");                                      // 0x00768742    68c7000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                     // 0x00768747    8d542418
    asm("push               edx");                                             // 0x0076874b    52
    asm("mov.s              ecx, esi");                                        // 0x0076874c    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076874e    e83da1e8ff
    asm("{disp32} mov       edi, dword ptr [esi + 0x0000011c]");               // 0x00768753    8bbe1c010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000120]");               // 0x00768759    8b8620010000
    asm("push               0x41");                                            // 0x0076875f    6a41
    asm("sub.s              eax, edi");                                        // 0x00768761    2bc7
    asm("push               0x00c245e0");                                      // 0x00768763    68e045c200
    asm("push               eax");                                             // 0x00768768    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x00768769    e8a25df7ff
    asm("add                esp, 0x0c");                                       // 0x0076876e    83c40c
    asm("add.s              eax, edi");                                        // 0x00768771    03c7
    asm("pop                edi");                                             // 0x00768773    5f
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                       // 0x00768774    66894658
    asm("pop                esi");                                             // 0x00768778    5e
    asm("add                esp, 0x18");                                       // 0x00768779    83c418
    asm("ret");                                                                // 0x0076877c    c3
    __builtin_unreachable();
}

int __fastcall ExitNoChangeState__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("push               esi");                                             // 0x00768780    56
    asm("push               edi");                                             // 0x00768781    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                     // 0x00768782    8b7c240c
    asm("mov.s              esi, ecx");                                        // 0x00768786    8bf1
    asm("mov                eax, dword ptr [esi]");                            // 0x00768788    8b06
    asm("and                edi, 0x000000ff");                                 // 0x0076878a    81e7ff000000
    asm("push               edi");                                             // 0x00768790    57
    asm("call               dword ptr [eax + 0x964]");                         // 0x00768791    ff9064090000
    asm("test               eax, eax");                                        // 0x00768797    85c0
    asm("{disp8} jne        _jmp_addr_0x007687be");                            // 0x00768799    7523
    asm("mov                edx, dword ptr [esi]");                            // 0x0076879b    8b16
    asm("push               edi");                                             // 0x0076879d    57
    asm("mov.s              ecx, esi");                                        // 0x0076879e    8bce
    asm("call               dword ptr [edx + 0x968]");                         // 0x007687a0    ff9268090000
    asm("test               eax, eax");                                        // 0x007687a6    85c0
    asm("{disp8} jne        _jmp_addr_0x007687be");                            // 0x007687a8    7514
    asm("mov                eax, dword ptr [esi]");                            // 0x007687aa    8b06
    asm("push               edi");                                             // 0x007687ac    57
    asm("mov.s              ecx, esi");                                        // 0x007687ad    8bce
    asm("call               dword ptr [eax + 0x96c]");                         // 0x007687af    ff906c090000
    asm("test               eax, eax");                                        // 0x007687b5    85c0
    asm("{disp8} jne        _jmp_addr_0x007687be");                            // 0x007687b7    7505
    asm("pop                edi");                                             // 0x007687b9    5f
    asm("pop                esi");                                             // 0x007687ba    5e
    asm("ret                0x0004");                                          // 0x007687bb    c20400
    asm("_jmp_addr_0x007687be:");
    asm("pop                edi");                                             // 0x007687be    5f
    asm("mov                eax, 0x00000001");                                 // 0x007687bf    b801000000
    asm("pop                esi");                                             // 0x007687c4    5e
    asm("ret                0x0004");                                          // 0x007687c5    c20400
    __builtin_unreachable();
}

uint32_t __fastcall EnterScriptWander__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                     // 0x007687d0    8b542408
    asm("mov                eax, dword ptr [ecx]");                            // 0x007687d4    8b01
    asm("push               edx");                                             // 0x007687d6    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                     // 0x007687d7    8b542408
    asm("push               edx");                                             // 0x007687db    52
    asm("call               dword ptr [eax + 0x940]");                         // 0x007687dc    ff9040090000
    asm("ret                0x0008");                                          // 0x007687e2    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ScriptWanderAroundPos__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x007687f0    56
    asm("mov.s              esi, ecx");                                        // 0x007687f1    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b0]");               // 0x007687f3    8b86b0000000
    asm("test               eax, eax");                                        // 0x007687f9    85c0
    asm("{disp8} jne        _jmp_addr_0x00768808");                            // 0x007687fb    750b
    asm("call               ?Create@DataForScriptRemind@@SAPAV1@XZ");          // 0x007687fd    e88e69e8ff
    asm("{disp32} mov       dword ptr [esi + 0x000000b0], eax");               // 0x00768802    8986b0000000
    asm("_jmp_addr_0x00768808:");
    asm("xor.s              eax, eax");                                        // 0x00768808    33c0
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                       // 0x0076880a    668b4658
    asm("test               ax, ax");                                          // 0x0076880e    6685c0
    asm("{disp8} lea        ecx, dword ptr [eax + -0x01]");                    // 0x00768811    8d48ff
    asm("{disp8} mov        word ptr [esi + 0x58], cx");                       // 0x00768814    66894e58
    asm("{disp8} jg         _jmp_addr_0x00768821");                            // 0x00768818    7f07
    asm("mov.s              ecx, esi");                                        // 0x0076881a    8bce
    asm("call               ?SetupNewScriptWander@Villager@@QAEIXZ");          // 0x0076881c    e8affeffff
    asm("_jmp_addr_0x00768821:");
    asm("mov                eax, 0x00000001");                                 // 0x00768821    b801000000
    asm("pop                esi");                                             // 0x00768826    5e
    asm("ret");                                                                // 0x00768827    c3
    __builtin_unreachable();
}

int __fastcall ExitScriptWander__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                     // 0x00768830    8b542404
    asm("mov                eax, dword ptr [ecx]");                            // 0x00768834    8b01
    asm("push               edx");                                             // 0x00768836    52
    asm("call               dword ptr [eax + 0x914]");                         // 0x00768837    ff9014090000
    asm("ret                0x0004");                                          // 0x0076883d    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall EnterPlayAnim__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2)
{
    asm("sub                esp, 0x0c");                                       // 0x00768840    83ec0c
    asm("push               ebx");                                             // 0x00768843    53
    asm("push               ebp");                                             // 0x00768844    55
    asm("push               esi");                                             // 0x00768845    56
    asm("push               edi");                                             // 0x00768846    57
    asm("xor.s              ebp, ebp");                                        // 0x00768847    33ed
    asm("push               ebp");                                             // 0x00768849    55
    asm("push               0x009cafc8");                                      // 0x0076884a    68c8af9c00
    asm("push               0x009c8de8");                                      // 0x0076884f    68e88d9c00
    asm("mov.s              esi, ecx");                                        // 0x00768854    8bf1
    asm("push               ebp");                                             // 0x00768856    55
    asm("push               esi");                                             // 0x00768857    56
    asm("call               ___RTDynamicCast");                                // 0x00768858    e8bcd10500
    asm("mov.s              ebx, eax");                                        // 0x0076885d    8bd8
    asm("add                esp, 0x14");                                       // 0x0076885f    83c414
    asm("cmp.s              ebx, ebp");                                        // 0x00768862    3bdd
    asm("{disp32} je        _jmp_addr_0x0076895d");                            // 0x00768864    0f84f3000000
    asm("{disp8} mov        edi, dword ptr [esp + 0x24]");                     // 0x0076886a    8b7c2424
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                     // 0x0076886e    8b442420
    asm("and                edi, 0x000000ff");                                 // 0x00768872    81e7ff000000
    asm("push               edi");                                             // 0x00768878    57
    asm("and                eax, 0x000000ff");                                 // 0x00768879    25ff000000
    asm("push               eax");                                             // 0x0076887e    50
    asm("mov.s              ecx, ebx");                                        // 0x0076887f    8bcb
    asm("call               ?IsStateEntryFunctionSameAs@Villager@@QBE_NKK@Z"); // 0x00768881    e84a9cfeff
    asm("test               eax, eax");                                        // 0x00768886    85c0
    asm("{disp32} jne       _jmp_addr_0x0076895d");                            // 0x00768888    0f85cf000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000b0]");               // 0x0076888e    8b8eb0000000
    asm("cmp.s              ecx, ebp");                                        // 0x00768894    3bcd
    asm("{disp32} je        _jmp_addr_0x0076895d");                            // 0x00768896    0f84c1000000
    asm("cmp                dword ptr [ecx + 0x44], edi");                     // 0x0076889c    397944
    asm("{disp32} jne       _jmp_addr_0x0076895d");                            // 0x0076889f    0f85b8000000
    asm("push               esi");                                             // 0x007688a5    56
    asm("call               _jmp_addr_0x005ef2a0");                            // 0x007688a6    e8f569e8ff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x007688ab    8d4c2410
    asm("push               ecx");                                             // 0x007688af    51
    asm("{disp32} lea       ecx, dword ptr [ebx + 0x00000080]");               // 0x007688b0    8d8b80000000
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                     // 0x007688b6    896c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], ebp");                     // 0x007688ba    896c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebp");                     // 0x007688be    896c241c
    asm("call               ?__ne@MapCoords@@QBE_NABV1@@Z");                   // 0x007688c2    e8e9cde9ff
    asm("test               eax, eax");                                        // 0x007688c7    85c0
    asm("{disp8} je         _jmp_addr_0x0076890b");                            // 0x007688c9    7440
    asm("push               ebp");                                             // 0x007688cb    55
    asm("mov.s              ecx, esi");                                        // 0x007688cc    8bce
    asm("call               @AreWeThere__13MobileWallHugFf@12");               // 0x007688ce    e86d24eaff
    asm("test               eax, eax");                                        // 0x007688d3    85c0
    asm("{disp8} jne        _jmp_addr_0x0076890b");                            // 0x007688d5    7534
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000b0]");               // 0x007688d7    8b96b0000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                     // 0x007688dd    8b4c2424
    asm("{disp8} mov        dword ptr [edx + 0x24], ebp");                     // 0x007688e1    896a24
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b0]");               // 0x007688e4    8b86b0000000
    asm("push               ecx");                                             // 0x007688ea    51
    asm("{disp32} lea       edx, dword ptr [esi + 0x00000080]");               // 0x007688eb    8d9680000000
    asm("push               edx");                                             // 0x007688f1    52
    asm("mov.s              ecx, esi");                                        // 0x007688f2    8bce
    asm("{disp8} mov        dword ptr [eax + 0x44], ebp");                     // 0x007688f4    896844
    asm("call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13");      // 0x007688f7    e8349fe8ff
    asm("pop                edi");                                             // 0x007688fc    5f
    asm("pop                esi");                                             // 0x007688fd    5e
    asm("pop                ebp");                                             // 0x007688fe    5d
    asm("mov                eax, 0x00000023");                                 // 0x007688ff    b823000000
    asm("pop                ebx");                                             // 0x00768904    5b
    asm("add                esp, 0x0c");                                       // 0x00768905    83c40c
    asm("ret                0x0008");                                          // 0x00768908    c20800
    asm("_jmp_addr_0x0076890b:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b0]");               // 0x0076890b    8b86b0000000
    asm("{disp8} mov        dword ptr [eax + 0x44], ebp");                     // 0x00768911    896844
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000b0]");               // 0x00768914    8b8eb0000000
    asm("{disp8} mov        eax, dword ptr [ecx + 0x3c]");                     // 0x0076891a    8b413c
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x517508]");          // 0x0076891d    8b0d08d5ed00
    asm("cmp                eax, dword ptr [ecx]");                            // 0x00768923    3b01
    asm("{disp8} jge        _jmp_addr_0x00768931");                            // 0x00768925    7d0a
    asm("cmp.s              eax, ebp");                                        // 0x00768927    3bc5
    asm("{disp8} jl         _jmp_addr_0x00768931");                            // 0x00768929    7c06
    asm("{disp8} mov        edi, dword ptr [ecx + eax * 0x4 + 0x04]");         // 0x0076892b    8b7c8104
    asm("{disp8} jmp        _jmp_addr_0x00768934");                            // 0x0076892f    eb03
    asm("_jmp_addr_0x00768931:");
    asm("{disp8} mov        edi, dword ptr [ecx + 0x04]");                     // 0x00768931    8b7904
    asm("_jmp_addr_0x00768934:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                     // 0x00768934    8b4e40
    asm("mov                edx, dword ptr [ecx]");                            // 0x00768937    8b11
    asm("call               dword ptr [edx + 0x184]");                         // 0x00768939    ff9284010000
    asm("cmp.s              edi, eax");                                        // 0x0076893f    3bf8
    asm("{disp8} je         _jmp_addr_0x0076895d");                            // 0x00768941    741a
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                     // 0x00768943    8b4e40
    asm("mov                eax, dword ptr [ecx]");                            // 0x00768946    8b01
    asm("mov.s              edx, edi");                                        // 0x00768948    8bd7
    asm("call               dword ptr [eax + 0x180]");                         // 0x0076894a    ff9080010000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                     // 0x00768950    8b4e40
    asm("mov                eax, dword ptr [ecx]");                            // 0x00768953    8b01
    asm("xor.s              edx, edx");                                        // 0x00768955    33d2
    asm("call               dword ptr [eax + 0x188]");                         // 0x00768957    ff9088010000
    asm("_jmp_addr_0x0076895d:");
    asm("pop                edi");                                             // 0x0076895d    5f
    asm("pop                esi");                                             // 0x0076895e    5e
    asm("pop                ebp");                                             // 0x0076895f    5d
    asm("mov                eax, 0x00000001");                                 // 0x00768960    b801000000
    asm("pop                ebx");                                             // 0x00768965    5b
    asm("add                esp, 0x0c");                                       // 0x00768966    83c40c
    asm("ret                0x0008");                                          // 0x00768969    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ScriptPlayAnim__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00768970    56
    asm("mov.s              esi, ecx");                                        // 0x00768971    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000120]");               // 0x00768973    8b8620010000
    asm("test               eax, eax");                                        // 0x00768979    85c0
    asm("{disp8} jbe        _jmp_addr_0x007689af");                            // 0x0076897b    7632
    asm("dec                eax");                                             // 0x0076897d    48
    asm("test               eax, eax");                                        // 0x0076897e    85c0
    asm("{disp32} mov       dword ptr [esi + 0x00000120], eax");               // 0x00768980    898620010000
    asm("push               0x1");                                             // 0x00768986    6a01
    asm("{disp8} jbe        _jmp_addr_0x00768991");                            // 0x00768988    7607
    asm("push               0x000000c8");                                      // 0x0076898a    68c8000000
    asm("{disp8} jmp        _jmp_addr_0x00768993");                            // 0x0076898f    eb02
    asm("_jmp_addr_0x00768991:");
    asm("push               0x4");                                             // 0x00768991    6a04
    asm("_jmp_addr_0x00768993:");
    asm("mov.s              ecx, esi");                                        // 0x00768993    8bce
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");          // 0x00768995    e82641e8ff
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000b0]");               // 0x0076899a    8b86b0000000
    asm("test               eax, eax");                                        // 0x007689a0    85c0
    asm("{disp8} jne        _jmp_addr_0x007689af");                            // 0x007689a2    750b
    asm("call               ?Create@DataForScriptRemind@@SAPAV1@XZ");          // 0x007689a4    e8e767e8ff
    asm("{disp32} mov       dword ptr [esi + 0x000000b0], eax");               // 0x007689a9    8986b0000000
    asm("_jmp_addr_0x007689af:");
    asm("mov                eax, 0x00000001");                                 // 0x007689af    b801000000
    asm("pop                esi");                                             // 0x007689b4    5e
    asm("ret");                                                                // 0x007689b5    c3
    __builtin_unreachable();
}

int __fastcall ExitPlayAnim__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                     // 0x007689c0    8b542404
    asm("mov                eax, dword ptr [ecx]");                            // 0x007689c4    8b01
    asm("push               edx");                                             // 0x007689c6    52
    asm("call               dword ptr [eax + 0x914]");                         // 0x007689c7    ff9014090000
    asm("ret                0x0004");                                          // 0x007689cd    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsScriptAnimationComplete__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x007689d0    56
    asm("mov.s              esi, ecx");                                        // 0x007689d1    8bf1
    asm("call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ"); // 0x007689d3    e8189ee8ff
    asm("cmp                al, 0x17");                                        // 0x007689d8    3c17
    asm("{disp8} jne        _jmp_addr_0x007689e0");                            // 0x007689da    7504
    asm("xor.s              eax, eax");                                        // 0x007689dc    33c0
    asm("pop                esi");                                             // 0x007689de    5e
    asm("ret");                                                                // 0x007689df    c3
    asm("_jmp_addr_0x007689e0:");
    asm("cmp                al, -0x38");                                       // 0x007689e0    3cc8
    asm("{disp8} jne        _jmp_addr_0x007689f3");                            // 0x007689e2    750f
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000120]");               // 0x007689e4    8b8e20010000
    asm("xor.s              eax, eax");                                        // 0x007689ea    33c0
    asm("test               ecx, ecx");                                        // 0x007689ec    85c9
    asm("sete               al");                                              // 0x007689ee    0f94c0
    asm("pop                esi");                                             // 0x007689f1    5e
    asm("ret");                                                                // 0x007689f2    c3
    asm("_jmp_addr_0x007689f3:");
    asm("mov                eax, 0x00000001");                                 // 0x007689f3    b801000000
    asm("pop                esi");                                             // 0x007689f8    5e
    asm("ret");                                                                // 0x007689f9    c3
    __builtin_unreachable();
}

bool32_t __fastcall ScriptAnimation__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x0000011c]");               // 0x00768a00    8b811c010000
    asm("ret");                                                                // 0x00768a06    c3
    __builtin_unreachable();
}

bool32_t __fastcall WeakOnGround__8VillagerFv(struct Villager* this)
{
    return 1;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ScriptGoAndMoveAlongPath__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x24");                                       // 0x00768a20    83ec24
    asm("push               ebx");                                             // 0x00768a23    53
    asm("mov.s              ebx, ecx");                                        // 0x00768a24    8bd9
    asm("push               0x0");                                             // 0x00768a26    6a00
    asm("call               @AreWeThere__13MobileWallHugFf@12");               // 0x00768a28    e81323eaff
    asm("test               eax, eax");                                        // 0x00768a2d    85c0
    asm("{disp8} je         _jmp_addr_0x00768a67");                            // 0x00768a2f    7436
    asm("{disp32} mov       eax, dword ptr [ebx + 0x000000ac]");               // 0x00768a31    8b83ac000000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x20]");                     // 0x00768a37    8b4820
    asm("{disp8} mov        edx, dword ptr [eax + 0x1c]");                     // 0x00768a3a    8b501c
    asm("push               ecx");                                             // 0x00768a3d    51
    asm("push               edx");                                             // 0x00768a3e    52
    asm("mov.s              ecx, ebx");                                        // 0x00768a3f    8bcb
    asm("call               _jmp_addr_0x005ee520");                            // 0x00768a41    e8da5ae8ff
    asm("{disp32} mov       eax, dword ptr [ebx + 0x000000ac]");               // 0x00768a46    8b83ac000000
    asm("push               ecx");                                             // 0x00768a4c    51
    asm("{disp8} mov        ecx, dword ptr [eax + 0x18]");                     // 0x00768a4d    8b4818
    asm("fstp               dword ptr [esp]");                                 // 0x00768a50    d91c24
    asm("push               0x4");                                             // 0x00768a53    6a04
    asm("push               ecx");                                             // 0x00768a55    51
    asm("mov.s              ecx, ebx");                                        // 0x00768a56    8bcb
    asm("call               _jmp_addr_0x005ee100");                            // 0x00768a58    e8a356e8ff
    asm("mov                eax, 0x00000001");                                 // 0x00768a5d    b801000000
    asm("pop                ebx");                                             // 0x00768a62    5b
    asm("add                esp, 0x24");                                       // 0x00768a63    83c424
    asm("ret");                                                                // 0x00768a66    c3
    asm("_jmp_addr_0x00768a67:");
    asm("push               esi");                                             // 0x00768a67    56
    asm("{disp32} mov       esi, dword ptr [ebx + 0x000000ac]");               // 0x00768a68    8bb3ac000000
    asm("{disp8} mov        eax, dword ptr [esi + 0x20]");                     // 0x00768a6e    8b4620
    asm("test               eax, eax");                                        // 0x00768a71    85c0
    asm("push               edi");                                             // 0x00768a73    57
    asm("{disp8} je         _jmp_addr_0x00768ac8");                            // 0x00768a74    7452
    asm("{disp8} fld        dword ptr [esi + 0x24]");                          // 0x00768a76    d94624
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768a79    e882890300
    asm("test               eax, eax");                                        // 0x00768a7e    85c0
    asm("{disp8} mov        esi, dword ptr [esi + 0x14]");                     // 0x00768a80    8b7614
    asm("{disp8} jge        _jmp_addr_0x00768a89");                            // 0x00768a83    7d04
    asm("xor.s              eax, eax");                                        // 0x00768a85    33c0
    asm("{disp8} jmp        _jmp_addr_0x00768a9b");                            // 0x00768a87    eb12
    asm("_jmp_addr_0x00768a89:");
    asm("{disp8} mov        edx, dword ptr [esi + 0x04]");                     // 0x00768a89    8b5604
    asm("{disp32} mov       ecx, dword ptr [edx + 0x00000208]");               // 0x00768a8c    8b8a08020000
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x10]");                     // 0x00768a92    8b4910
    asm("cmp.s              eax, ecx");                                        // 0x00768a95    3bc1
    asm("{disp8} jl         _jmp_addr_0x00768a9b");                            // 0x00768a97    7c02
    asm("mov.s              eax, ecx");                                        // 0x00768a99    8bc1
    asm("_jmp_addr_0x00768a9b:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x04]");                     // 0x00768a9b    8b4e04
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                     // 0x00768a9e    8d542424
    asm("push               edx");                                             // 0x00768aa2    52
    asm("push               eax");                                             // 0x00768aa3    50
    asm("call               _jmp_addr_0x00844280");                            // 0x00768aa4    e8d7b70d00
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                     // 0x00768aa9    8d44240c
    asm("test               eax, eax");                                        // 0x00768aad    85c0
    asm("{disp8} je         _jmp_addr_0x00768b2f");                            // 0x00768aaf    747e
    asm("{disp8} mov        eax, dword ptr [esi + 0x04]");                     // 0x00768ab1    8b4604
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000204]");               // 0x00768ab4    8b9004020000
    asm("mov                eax, dword ptr [eax]");                            // 0x00768aba    8b00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x00768abc    8d4c240c
    asm("push               ecx");                                             // 0x00768ac0    51
    asm("{disp8} mov        ecx, dword ptr [esi + 0x08]");                     // 0x00768ac1    8b4e08
    asm("push               edx");                                             // 0x00768ac4    52
    asm("push               eax");                                             // 0x00768ac5    50
    asm("{disp8} jmp        _jmp_addr_0x00768b24");                            // 0x00768ac6    eb5c
    asm("_jmp_addr_0x00768ac8:");
    asm("{disp8} mov        edi, dword ptr [esi + 0x14]");                     // 0x00768ac8    8b7e14
    asm("{disp8} mov        edx, dword ptr [edi + 0x04]");                     // 0x00768acb    8b5704
    asm("{disp32} mov       eax, dword ptr [edx + 0x00000208]");               // 0x00768ace    8b8208020000
    asm("{disp8} fild       dword ptr [eax + 0x10]");                          // 0x00768ad4    db4010
    asm("{disp8} fsub       dword ptr [esi + 0x24]");                          // 0x00768ad7    d86624
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768ada    e821890300
    asm("test               eax, eax");                                        // 0x00768adf    85c0
    asm("{disp8} jge        _jmp_addr_0x00768ae7");                            // 0x00768ae1    7d04
    asm("xor.s              eax, eax");                                        // 0x00768ae3    33c0
    asm("{disp8} jmp        _jmp_addr_0x00768af9");                            // 0x00768ae5    eb12
    asm("_jmp_addr_0x00768ae7:");
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                     // 0x00768ae7    8b4f04
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00000208]");               // 0x00768aea    8b9108020000
    asm("{disp8} mov        ecx, dword ptr [edx + 0x10]");                     // 0x00768af0    8b4a10
    asm("cmp.s              eax, ecx");                                        // 0x00768af3    3bc1
    asm("{disp8} jl         _jmp_addr_0x00768af9");                            // 0x00768af5    7c02
    asm("mov.s              eax, ecx");                                        // 0x00768af7    8bc1
    asm("_jmp_addr_0x00768af9:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                     // 0x00768af9    8d4c2424
    asm("push               ecx");                                             // 0x00768afd    51
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                     // 0x00768afe    8b4f04
    asm("push               eax");                                             // 0x00768b01    50
    asm("call               _jmp_addr_0x00844280");                            // 0x00768b02    e879b70d00
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                     // 0x00768b07    8d54240c
    asm("test               edx, edx");                                        // 0x00768b0b    85d2
    asm("{disp8} je         _jmp_addr_0x00768b2f");                            // 0x00768b0d    7420
    asm("{disp8} mov        eax, dword ptr [edi + 0x04]");                     // 0x00768b0f    8b4704
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000204]");               // 0x00768b12    8b9004020000
    asm("mov                eax, dword ptr [eax]");                            // 0x00768b18    8b00
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                     // 0x00768b1a    8d4c240c
    asm("push               ecx");                                             // 0x00768b1e    51
    asm("{disp8} mov        ecx, dword ptr [edi + 0x08]");                     // 0x00768b1f    8b4f08
    asm("push               edx");                                             // 0x00768b22    52
    asm("push               eax");                                             // 0x00768b23    50
    asm("_jmp_addr_0x00768b24:");
    asm("{disp32} mov       ecx, dword ptr [ecx + 0x00000208]");               // 0x00768b24    8b8908020000
    asm("call               _jmp_addr_0x008439c0");                            // 0x00768b2a    e891ae0d00
    asm("_jmp_addr_0x00768b2f:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                          // 0x00768b2f    d944240c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x00768b33    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768b39    e8c2880300
    asm("{disp8} fld        dword ptr [esp + 0x14]");                          // 0x00768b3e    d9442414
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x00768b42    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x00768b48    89442418
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768b4c    e8af880300
    asm("push               0x000000f7");                                      // 0x00768b51    68f7000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                     // 0x00768b56    8d54241c
    asm("push               edx");                                             // 0x00768b5a    52
    asm("mov.s              ecx, ebx");                                        // 0x00768b5b    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                     // 0x00768b5d    89442424
    asm("{disp8} mov        dword ptr [esp + 0x28], 0x00000000");              // 0x00768b61    c744242800000000
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                            // 0x00768b69    e892acffff
    asm("pop                edi");                                             // 0x00768b6e    5f
    asm("pop                esi");                                             // 0x00768b6f    5e
    asm("mov                eax, 0x00000001");                                 // 0x00768b70    b801000000
    asm("pop                ebx");                                             // 0x00768b75    5b
    asm("add                esp, 0x24");                                       // 0x00768b76    83c424
    asm("ret");                                                                // 0x00768b79    c3
    __builtin_unreachable();
}
