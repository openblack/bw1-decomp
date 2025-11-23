#include "Villager.h"
#include "Town.h"
#include <float.h>

const float villager_reaction_float_max_0x0099a9cc = FLT_MAX;
const float villager_reaction_float10p0_0x0099a9d0 = 10.0f;
const float villager_reaction_num_days_in_year_0x0099a9d4 = 365.25f;
const float villager_reaction_seconds_in_day_0x0099a9d8 = 86400.0f;
const float villager_reaction_float0p7_0x0099a9dc = 0.7f;

__attribute__((aligned(4))) char s_Religious_Belief_cpp[] = "Religious Belief";
__attribute__((aligned(4))) char s_VillagerReaction_cpp[] = "C:\\dev\\MP\\Black\\VillagerReaction.cpp";

uint32_t villager_reaction_uint_0x00db9e30;
float villager_reaction_seconds_in_year_0x00db9e34;

void __cdecl globl_ct_0x00763310(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00763310    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00763316    b001
    asm("test               al, cl");                                        // 0x00763318    84c8
    asm("{disp8} jne        _jmp_addr_0x00763324");                          // 0x0076331a    7508
    asm("or.s               cl, al");                                        // 0x0076331c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0076331e    880d34c9fa00
    asm("_jmp_addr_0x00763324:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00763330");   // 0x00763324    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00763330(void)
{
    asm("push               0x00407870");                                    // 0x00763330    6870784000
    asm("call               _atexit");                                       // 0x00763335    e857240600
    asm("pop                ecx");                                           // 0x0076333a    59
}

void __cdecl globl_ct_0x00763340(void)
{
    asm("{disp32} jmp       _FUN_00763350__8VillagerFv");                    // 0x00763350    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00763350__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_reaction_seconds_in_day_0x0099a9d8]");   // 0x00763350    d905d8a99900
    asm("{disp32} fmul dword ptr [_villager_reaction_num_days_in_year_0x0099a9d4]"); // 0x00763356    d80dd4a99900
    asm("{disp32} fstp dword ptr [_villager_reaction_seconds_in_year_0x00db9e34]");  // 0x0076335c    d91d349edb00
}

void __cdecl globl_ct_0x00763370(void)
{
    asm("{disp32} jmp       _FUN_00763380__8VillagerFv");                    // 0x00763370    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00763380__8VillagerFv(void)
{
    asm("{disp32} mov dword ptr [_villager_reaction_uint_0x00db9e30], 0xffffffff");  // 0x00763380    c705309edb00ffffffff
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAvailableForReaction__8VillagerF8REACTION(struct Living* this, const void* edx, enum REACTION param_1)
{
    asm("push               esi");                                           // 0x00763390    56
    asm("mov.s              esi, ecx");                                      // 0x00763391    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00763393    8b06
    asm("push               edi");                                           // 0x00763395    57
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00763396    ff90040b0000
    asm("{disp32} mov       dx, word ptr [esi + 0x000000e0]");               // 0x0076339c    668b96e0000000
    asm("and                eax, 0x000000ff");                               // 0x007633a3    25ff000000
    asm("test               dl, 0x02");                                      // 0x007633a8    f6c202
    asm("mov.s              ecx, eax");                                      // 0x007633ab    8bc8
    asm("{disp8} jne        _jmp_addr_0x00763409");                          // 0x007633ad    755a
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007633af    8d0449
    asm("shl                eax, 3");                                        // 0x007633b2    c1e003
    asm("sub.s              eax, ecx");                                      // 0x007633b5    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x007633b7    8d0440
    asm("{disp32} mov       edi, dword ptr [eax * 0x4 + 0x00db9f64]");       // 0x007633ba    8b3c85649fdb00
    asm("test               edi, edi");                                      // 0x007633c1    85ff
    asm("{disp8} je         _jmp_addr_0x00763409");                          // 0x007633c3    7444
    asm("test               dl, -0x80");                                     // 0x007633c5    f6c280
    asm("{disp8} jne        _jmp_addr_0x00763409");                          // 0x007633c8    753f
    asm("mov                edx, dword ptr [esi]");                          // 0x007633ca    8b16
    asm("push               ecx");                                           // 0x007633cc    51
    asm("mov.s              ecx, esi");                                      // 0x007633cd    8bce
    asm("call               dword ptr [edx + 0x970]");                       // 0x007633cf    ff9270090000
    asm("test               eax, eax");                                      // 0x007633d5    85c0
    asm("{disp8} jne        _jmp_addr_0x00763409");                          // 0x007633d7    7530
    asm("mov                eax, dword ptr [esi]");                          // 0x007633d9    8b06
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x007633db    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x007633de    8bce
    asm("call               dword ptr [eax + 0x11c]");                       // 0x007633e0    ff901c010000
    asm("{disp32} fcomp     dword ptr [edi + 0x00000380]");                  // 0x007633e6    d89f80030000
    asm("fnstsw             ax");                                            // 0x007633ec    dfe0
    asm("test               ah, 0x41");                                      // 0x007633ee    f6c441
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x007633f1    8b44240c
    asm("{disp8} je         _jmp_addr_0x007633fc");                          // 0x007633f5    7405
    asm("cmp                eax, 0x07");                                     // 0x007633f7    83f807
    asm("{disp8} jne        _jmp_addr_0x00763409");                          // 0x007633fa    750d
    asm("_jmp_addr_0x007633fc:");
    asm("push               eax");                                           // 0x007633fc    50
    asm("mov.s              ecx, esi");                                      // 0x007633fd    8bce
    asm("call               ?IsAvailableForReaction@Living@@UAE_NW4REACTION@@@Z");                          // 0x007633ff    e8ecdde8ff
    asm("pop                edi");                                           // 0x00763404    5f
    asm("pop                esi");                                           // 0x00763405    5e
    asm("ret                0x0004");                                        // 0x00763406    c20400
    asm("_jmp_addr_0x00763409:");
    asm("pop                edi");                                           // 0x00763409    5f
    asm("xor.s              eax, eax");                                      // 0x0076340a    33c0
    asm("pop                esi");                                           // 0x0076340c    5e
    asm("ret                0x0004");                                        // 0x0076340d    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsAvailableForBeliefButNotReaction__8VillagerF8REACTION(struct Living* this, const void* edx, enum REACTION param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00763410    8b442404
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x00763414    8d0440
    asm("shl                eax, 6");                                        // 0x00763417    c1e006
    asm("{disp32} mov       edx, dword ptr [eax + 0x00c09cc8]");             // 0x0076341a    8b90c89cc000
    asm("test               edx, edx");                                      // 0x00763420    85d2
    asm("{disp8} jne        _jmp_addr_0x00763435");                          // 0x00763422    7511
    asm("mov                edx, dword ptr [ecx]");                          // 0x00763424    8b11
    asm("call               dword ptr [edx + 0x530]");                       // 0x00763426    ff9230050000
    asm("test               eax, eax");                                      // 0x0076342c    85c0
    asm("{disp8} je         _jmp_addr_0x00763435");                          // 0x0076342e    7405
    asm("xor.s              eax, eax");                                      // 0x00763430    33c0
    asm("ret                0x0004");                                        // 0x00763432    c20400
    asm("_jmp_addr_0x00763435:");
    asm("mov                eax, 0x00000001");                               // 0x00763435    b801000000
    asm("ret                0x0004");                                        // 0x0076343a    c20400
    __builtin_unreachable();
}

void __fastcall AddReaction__8VillagerFP8Reaction15VILLAGER_STATES(struct Living* this, const void* edx, struct Reaction* param_1, enum VILLAGER_STATES param_2)
{
    asm("push               esi");                                           // 0x00763440    56
    asm("push               edi");                                           // 0x00763441    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00763442    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x00763446    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00763448    8b06
    asm("push               0x1");                                           // 0x0076344a    6a01
    asm("push               edi");                                           // 0x0076344c    57
    asm("call               dword ptr [eax + 0x98c]");                       // 0x0076344d    ff908c090000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00763453    8b4c2410
    asm("push               ecx");                                           // 0x00763457    51
    asm("push               edi");                                           // 0x00763458    57
    asm("mov.s              ecx, esi");                                      // 0x00763459    8bce
    asm("call               ?AddReaction@Living@@UAEXPAVReaction@@W4VILLAGER_STATES@@@Z");                          // 0x0076345b    e8d0dae8ff
    asm("pop                edi");                                           // 0x00763460    5f
    asm("pop                esi");                                           // 0x00763461    5e
    asm("ret                0x0008");                                        // 0x00763462    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall StorePreviousState__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x00763470    56
    asm("mov.s              esi, ecx");                                      // 0x00763471    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00763473    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00763475    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x0076347b    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x00763480    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00763482    8d0449
    asm("shl                eax, 3");                                        // 0x00763485    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00763488    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x0076348a    8d0440
    asm("shl                eax, 2");                                        // 0x0076348d    c1e002
    asm("{disp32} mov       edx, dword ptr [eax + 0x00db9e88]");             // 0x00763490    8b90889edb00
    asm("test               edx, edx");                                      // 0x00763496    85d2
    asm("{disp8} jne        _jmp_addr_0x007634a4");                          // 0x00763498    750a
    asm("{disp32} mov       edx, dword ptr [eax + 0x00db9f30]");             // 0x0076349a    8b90309fdb00
    asm("test               edx, edx");                                      // 0x007634a0    85d2
    asm("{disp8} je         _jmp_addr_0x007634ac");                          // 0x007634a2    7408
    asm("_jmp_addr_0x007634a4:");
    asm("xor.s              ecx, ecx");                                      // 0x007634a4    33c9
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008e]");               // 0x007634a6    8a8e8e000000
    asm("_jmp_addr_0x007634ac:");
    asm("push               ecx");                                           // 0x007634ac    51
    asm("push               0x2");                                           // 0x007634ad    6a02
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x007634af    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x007634b5    e8d697e8ff
    asm("pop                esi");                                           // 0x007634ba    5e
    asm("ret");                                                              // 0x007634bb    c3
    __builtin_unreachable();
}

void __fastcall UpdateHowImpressed__8VillagerFP8Reactioni(struct Living* this, const void* edx, struct Reaction* param_1, int param_2)
{
    asm("sub                esp, 0x18");                                     // 0x007634c0    83ec18
    asm("push               ebx");                                           // 0x007634c3    53
    asm("push               ebp");                                           // 0x007634c4    55
    asm("push               esi");                                           // 0x007634c5    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x28]");                   // 0x007634c6    8b742428
    asm("mov                eax, dword ptr [esi]");                          // 0x007634ca    8b06
    asm("mov.s              ebx, ecx");                                      // 0x007634cc    8bd9
    asm("mov.s              ecx, esi");                                      // 0x007634ce    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x007634d0    ff501c
    asm("test               eax, eax");                                      // 0x007634d3    85c0
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x007634d5    89442410
    asm("{disp32} je        _jmp_addr_0x007635bf");                          // 0x007634d9    0f84e0000000
    asm("mov                edx, dword ptr [ebx]");                          // 0x007634df    8b13
    asm("mov.s              ecx, ebx");                                      // 0x007634e1    8bcb
    asm("call               dword ptr [edx + 0x48]");                        // 0x007634e3    ff5248
    asm("mov.s              ebp, eax");                                      // 0x007634e6    8be8
    asm("test               ebp, ebp");                                      // 0x007634e8    85ed
    asm("{disp32} je        _jmp_addr_0x007635bf");                          // 0x007634ea    0f84cf000000
    asm("push               edi");                                           // 0x007634f0    57
    asm("{disp8} mov        edi, dword ptr [esi + 0x14]");                   // 0x007634f1    8b7e14
    asm("mov                eax, dword ptr [edi]");                          // 0x007634f4    8b07
    asm("push               esi");                                           // 0x007634f6    56
    asm("push               ebx");                                           // 0x007634f7    53
    asm("mov.s              ecx, edi");                                      // 0x007634f8    8bcf
    asm("call               dword ptr [eax + 0x1b0]");                       // 0x007634fa    ff90b0010000
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00763500    d95c2410
    asm("{disp8} mov        ecx, dword ptr [ebp + 0x28]");                   // 0x00763504    8b4d28
    asm("{disp32} mov       edx, dword ptr [ebp + 0x0000061c]");             // 0x00763507    8b951c060000
    asm("{disp32} fld       dword ptr [ecx + 0x00000130]");                  // 0x0076350d    d98130010000
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x00763513    d805b0a38a00
    asm("{disp32} mov       eax, dword ptr [ebp + 0x00000618]");             // 0x00763519    8b8518060000
    asm("add.s              edx, eax");                                      // 0x0076351f    03d0
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00763521    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x00763525    c744241c00000000
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x0076352d    df6c2418
    asm("mov.s              ecx, esi");                                      // 0x00763531    8bce
    asm("{disp32} fadd      dword ptr [_rdata_float0p001]");                 // 0x00763533    d805b0a38a00
    asm("add                ebp, 0x00000798");                               // 0x00763539    81c598070000
    asm("fdivp              st(1), st");                                     // 0x0076353f    def9
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x00763541    d95c242c
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00763545    e8b611f8ff
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x0076354a    d944242c
    asm("{disp8} mov        eax, dword ptr [eax + 0x5c]");                   // 0x0076354e    8b405c
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00763551    d84c2410
    asm("{disp8} mov        ecx, dword ptr [esp + 0x30]");                   // 0x00763555    8b4c2430
    asm("{disp8} mov        edx, dword ptr [esp + 0x14]");                   // 0x00763559    8b542414
    asm("push               eax");                                           // 0x0076355d    50
    asm("push               ecx");                                           // 0x0076355e    51
    asm("push               ebx");                                           // 0x0076355f    53
    asm("push               ecx");                                           // 0x00763560    51
    asm("fstp               dword ptr [esp]");                               // 0x00763561    d91c24
    asm("push               edx");                                           // 0x00763564    52
    asm("mov.s              ecx, ebp");                                      // 0x00763565    8bcd
    asm("call               _jmp_addr_0x00437eb0");                          // 0x00763567    e84449cdff
    asm("{disp8} mov        eax, dword ptr [esi + 0x24]");                   // 0x0076356c    8b4624
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x0076356f    8d0440
    asm("shl                eax, 6");                                        // 0x00763572    c1e006
    asm("add                eax, 0x00c09d30");                               // 0x00763575    05309dc000
    asm("mov.s              ecx, eax");                                      // 0x0076357a    8bc8
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076357c    8b01
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x0076357e    8b5104
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x00763581    8954241c
    asm("{disp8} mov        edx, dword ptr [ecx + 0x08]");                   // 0x00763585    8b5108
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x0c]");                   // 0x00763588    8b490c
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x0076358b    89542420
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x0076358f    8b54241c
    asm("{disp8} mov        dword ptr [esp + 0x24], ecx");                   // 0x00763593    894c2424
    asm("push               ebx");                                           // 0x00763597    53
    asm("lea                ecx, dword ptr [edx + esi * 0x1]");              // 0x00763598    8d0c32
    asm("call               eax");                                           // 0x0076359b    ffd0
    asm("mov                eax, dword ptr [edi]");                          // 0x0076359d    8b07
    asm("push               ebx");                                           // 0x0076359f    53
    asm("push               esi");                                           // 0x007635a0    56
    asm("mov.s              ecx, edi");                                      // 0x007635a1    8bcf
    asm("call               dword ptr [eax + 0x1b4]");                       // 0x007635a3    ff90b4010000
    asm("{disp8} fmul       dword ptr [esp + 0x2c]");                        // 0x007635a9    d84c242c
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x007635ad    d95c242c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x2c]");                   // 0x007635b1    8b4c242c
    asm("push               ecx");                                           // 0x007635b5    51
    asm("push               esi");                                           // 0x007635b6    56
    asm("mov.s              ecx, ebp");                                      // 0x007635b7    8bcd
    asm("call               _jmp_addr_0x00438790");                          // 0x007635b9    e8d251cdff
    asm("pop                edi");                                           // 0x007635be    5f
    asm("_jmp_addr_0x007635bf:");
    asm("pop                esi");                                           // 0x007635bf    5e
    asm("pop                ebp");                                           // 0x007635c0    5d
    asm("pop                ebx");                                           // 0x007635c1    5b
    asm("add                esp, 0x18");                                     // 0x007635c2    83c418
    asm("ret                0x0008");                                        // 0x007635c5    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall DisplayHowImpressed__4TownFv(struct Town* this)
{
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x30dc58]");        // 0x007635d0    a1583ccd00
    asm("sub                esp, 0x0000012c");                               // 0x007635d5    81ec2c010000
    asm("test               eax, eax");                                      // 0x007635db    85c0
    asm("{disp32} je        _jmp_addr_0x007637bd");                          // 0x007635dd    0f84da010000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x007635e3    8b0d5c19d000
    asm("call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ");      // 0x007635e9    e86222dfff
    asm("{disp32} mov       eax, dword ptr [eax + 0x0000039c]");             // 0x007635ee    8b809c030000
    asm("{disp32} fld       dword ptr [eax + 0x000000c8]");                  // 0x007635f4    d980c8000000
    asm("add                eax, 0x000000c8");                               // 0x007635fa    05c8000000
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x007635ff    8b4008
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00763602    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                   // 0x00763608    89442428
    asm("call               _jmp_addr_0x007a1400");                          // 0x0076360c    e8efdd0300
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00763611    d9442428
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00763615    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x0076361b    89442414
    asm("call               _jmp_addr_0x007a1400");                          // 0x0076361f    e8dcdd0300
    asm("{disp32} mov       ecx, dword ptr [_villager_reaction_float_max_0x0099a9cc]"); // 0x00763624    8b0dcca99900
    asm("push               ecx");                                           // 0x0076362a    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x0076362b    8d4c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0076362f    8944241c
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");            // 0x00763633    c744242000000000
    asm("call               @GetNearestTown__9MapCoordsCFf@12");             // 0x0076363b    e8a0eae9ff
    asm("test               eax, eax");                                      // 0x00763640    85c0
    asm("{disp32} je        _jmp_addr_0x007637bd");                          // 0x00763642    0f8475010000
    asm("push               ebx");                                           // 0x00763648    53
    asm("push               ebp");                                           // 0x00763649    55
    asm("push               esi");                                           // 0x0076364a    56
    asm("push               edi");                                           // 0x0076364b    57
    asm("{disp32} lea       edi, dword ptr [eax + 0x00000798]");             // 0x0076364c    8db898070000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00763652    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0xffffffff");            // 0x0076365a    c7442418ffffffff
    asm("xor.s              esi, esi");                                      // 0x00763662    33f6
    asm("{disp8} mov        dword ptr [esp + 0x20], edi");                   // 0x00763664    897c2420
    asm("_jmp_addr_0x00763668:");
    asm("push               esi");                                           // 0x00763668    56
    asm("mov.s              ecx, edi");                                      // 0x00763669    8bcf
    asm("call               ?GetBeliefInPlayer@GBelief@@QAEMK@Z");           // 0x0076366b    e80048cdff
    asm("{disp8} fcomp      dword ptr [esp + 0x10]");                        // 0x00763670    d85c2410
    asm("fnstsw             ax");                                            // 0x00763674    dfe0
    asm("test               ah, 0x01");                                      // 0x00763676    f6c401
    asm("{disp8} jne        _jmp_addr_0x0076368b");                          // 0x00763679    7510
    asm("push               esi");                                           // 0x0076367b    56
    asm("mov.s              ecx, edi");                                      // 0x0076367c    8bcf
    asm("call               ?GetBeliefInPlayer@GBelief@@QAEMK@Z");           // 0x0076367e    e8ed47cdff
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00763683    d95c2410
    asm("{disp8} mov        dword ptr [esp + 0x18], esi");                   // 0x00763687    89742418
    asm("_jmp_addr_0x0076368b:");
    asm("inc                esi");                                           // 0x0076368b    46
    asm("cmp                esi, 0x08");                                     // 0x0076368c    83fe08
    asm(".byte              0x72, 0xd7");// {disp8} jb _jmp_addr_0x00763668  // 0x0076368f    72d7
    asm("push               0x000000dc");                                    // 0x00763691    68dc000000
    asm("push               0x000000dc");                                    // 0x00763696    68dc000000
    asm("push               0x000000ff");                                    // 0x0076369b    68ff000000
    asm("push               0x41c00000");                                    // 0x007636a0    680000c041
    asm("push               0x50");                                          // 0x007636a5    6a50
    asm("push               0x00000096");                                    // 0x007636a7    6896000000
    asm("push               0x00c24574");                                    // 0x007636ac    687445c200
    asm("call               _jmp_addr_0x004df310");                          // 0x007636b1    e85abcd7ff
    asm("add                esp, 0x1c");                                     // 0x007636b6    83c41c
    asm("mov                ebp, 0x00000096");                               // 0x007636b9    bd96000000
    asm("xor.s              ebx, ebx");                                      // 0x007636be    33db
    asm("_jmp_addr_0x007636c0:");
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x007636c0    8b0d5c19d000
    asm("push               ebx");                                           // 0x007636c6    53
    asm("call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z");          // 0x007636c7    e8e4d2deff
    asm("add                eax, 0x000008e4");                               // 0x007636cc    05e4080000
    asm("push               eax");                                           // 0x007636d1    50
    asm("call               _jmp_addr_0x0053b4a0");                          // 0x007636d2    e8c97dddff
    asm("or                 ecx, 0xffffffff");                               // 0x007636d7    83c9ff
    asm("mov.s              edi, eax");                                      // 0x007636da    8bf8
    asm("xor.s              eax, eax");                                      // 0x007636dc    33c0
    asm("repne scasb");                                                      // 0x007636de    f2ae
    asm("not                ecx");                                           // 0x007636e0    f7d1
    asm("sub.s              edi, ecx");                                      // 0x007636e2    2bf9
    asm("mov.s              eax, ecx");                                      // 0x007636e4    8bc1
    asm("shr                ecx, 2");                                        // 0x007636e6    c1e902
    asm("{disp8} lea        edx, dword ptr [esp + 0x40]");                   // 0x007636e9    8d542440
    asm("mov.s              esi, edi");                                      // 0x007636ed    8bf7
    asm("mov.s              edi, edx");                                      // 0x007636ef    8bfa
    asm("rep movsd          es:[edi], dword ptr ds:[esi]");                  // 0x007636f1    f3a5
    asm("push               0x000000dc");                                    // 0x007636f3    68dc000000
    asm("push               0x000000dc");                                    // 0x007636f8    68dc000000
    asm("push               0x000000ff");                                    // 0x007636fd    68ff000000
    asm("mov.s              ecx, eax");                                      // 0x00763702    8bc8
    asm("push               0x41600000");                                    // 0x00763704    6800006041
    asm("and                ecx, 0x03");                                     // 0x00763709    83e103
    asm("push               ebp");                                           // 0x0076370c    55
    asm("rep movsb");                                                        // 0x0076370d    f3a4
    asm("{disp8} lea        ecx, dword ptr [esp + 0x54]");                   // 0x0076370f    8d4c2454
    asm("push               0x00000096");                                    // 0x00763713    6896000000
    asm("push               ecx");                                           // 0x00763718    51
    asm("call               _jmp_addr_0x004df310");                          // 0x00763719    e8f2bbd7ff
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x0076371e    8b4c2440
    asm("add                esp, 0x20");                                     // 0x00763722    83c420
    asm("push               ebx");                                           // 0x00763725    53
    asm("call               ?GetBeliefInPlayer@GBelief@@QAEMK@Z");           // 0x00763726    e84547cdff
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x0076372b    8b442418
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0076372f    d95c2414
    asm("cmp.s              ebx, eax");                                      // 0x00763733    3bd8
    asm("push               0x0");                                           // 0x00763735    6a00
    asm("{disp8} jne        _jmp_addr_0x00763742");                          // 0x00763737    7509
    asm("push               0x0");                                           // 0x00763739    6a00
    asm("push               0x000000ff");                                    // 0x0076373b    68ff000000
    asm("{disp8} jmp        _jmp_addr_0x00763749");                          // 0x00763740    eb07
    asm("_jmp_addr_0x00763742:");
    asm("push               0x000000ff");                                    // 0x00763742    68ff000000
    asm("push               0x0");                                           // 0x00763747    6a00
    asm("_jmp_addr_0x00763749:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                   // 0x00763749    8d4c2428
    asm("call               _jmp_addr_0x00521a90");                          // 0x0076374d    e83ee3dbff
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00763752    d9442410
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00763756    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0076375c    dfe0
    asm("test               ah, 0x40");                                      // 0x0076375e    f6c440
    asm("{disp8} je         _jmp_addr_0x0076376b");                          // 0x00763761    7408
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x00763763    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x00763773");                          // 0x00763769    eb08
    asm("_jmp_addr_0x0076376b:");
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x0076376b    d9442414
    asm("{disp8} fdiv       dword ptr [esp + 0x10]");                        // 0x0076376f    d8742410
    asm("_jmp_addr_0x00763773:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1e728]");             // 0x00763773    d80d28778c00
    asm("{disp32} fadd      dword ptr [__real@43960000]");                   // 0x00763779    d80534b28a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x0076377f    e87cdc0300
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00763784    89442414
    asm("mov.s              esi, ebp");                                      // 0x00763788    8bf5
    asm("mov                edi, 0x0000000c");                               // 0x0076378a    bf0c000000
    asm("_jmp_addr_0x0076378f:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x0076378f    8b442414
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                   // 0x00763793    8d54241c
    asm("push               edx");                                           // 0x00763797    52
    asm("push               esi");                                           // 0x00763798    56
    asm("push               eax");                                           // 0x00763799    50
    asm("push               esi");                                           // 0x0076379a    56
    asm("push               0x0000012c");                                    // 0x0076379b    682c010000
    asm("call               _jmp_addr_0x004df320");                          // 0x007637a0    e87bbbd7ff
    asm("add                esp, 0x14");                                     // 0x007637a5    83c414
    asm("inc                esi");                                           // 0x007637a8    46
    asm("dec                edi");                                           // 0x007637a9    4f
    asm("{disp8} jne        _jmp_addr_0x0076378f");                          // 0x007637aa    75e3
    asm("add                ebp, 0x18");                                     // 0x007637ac    83c518
    asm("inc                ebx");                                           // 0x007637af    43
    asm("cmp                ebx, 0x08");                                     // 0x007637b0    83fb08
    asm("{disp32} jb        _jmp_addr_0x007636c0");                          // 0x007637b3    0f8207ffffff
    asm("pop                edi");                                           // 0x007637b9    5f
    asm("pop                esi");                                           // 0x007637ba    5e
    asm("pop                ebp");                                           // 0x007637bb    5d
    asm("pop                ebx");                                           // 0x007637bc    5b
    asm("_jmp_addr_0x007637bd:");
    asm("add                esp, 0x0000012c");                               // 0x007637bd    81c42c010000
    asm("ret");                                                              // 0x007637c3    c3
    __builtin_unreachable();
}

void __fastcall StopReacting__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x007637d0    56
    asm("mov.s              esi, ecx");                                      // 0x007637d1    8bf1
    asm("call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ");                    // 0x007637d3    e818f0e8ff
    asm("cmp                al, -0x35");                                     // 0x007637d8    3ccb
    asm("{disp8} jne        _jmp_addr_0x007637f6");                          // 0x007637da    751a
    asm("mov                eax, dword ptr [esi]");                          // 0x007637dc    8b06
    asm("mov.s              ecx, esi");                                      // 0x007637de    8bce
    asm("call               dword ptr [eax + 0x978]");                       // 0x007637e0    ff9078090000
    asm("test               eax, eax");                                      // 0x007637e6    85c0
    asm("{disp8} je         _jmp_addr_0x007637f6");                          // 0x007637e8    740c
    asm("mov                edx, dword ptr [esi]");                          // 0x007637ea    8b16
    asm("push               0x1");                                           // 0x007637ec    6a01
    asm("mov.s              ecx, esi");                                      // 0x007637ee    8bce
    asm("call               dword ptr [edx + 0xb08]");                       // 0x007637f0    ff92080b0000
    asm("_jmp_addr_0x007637f6:");
    asm("mov.s              ecx, esi");                                      // 0x007637f6    8bce
    asm("call               ?StopReacting@Living@@UAEXXZ");                  // 0x007637f8    e843d9e8ff
    asm("pop                esi");                                           // 0x007637fd    5e
    asm("ret");                                                              // 0x007637fe    c3
    __builtin_unreachable();
}

bool32_t __fastcall SetupMoveToPos__8VillagerFRC9MapCoords15VILLAGER_STATES(struct Villager* this, const void* edx, const struct MapCoords* param_1, enum VILLAGER_STATES param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00763800    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00763804    8b542404
    asm("push               eax");                                           // 0x00763808    50
    asm("push               edx");                                           // 0x00763809    52
    asm("call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13");    // 0x0076380a    e821f0e8ff
    asm("ret                0x0008");                                        // 0x0076380f    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToMagicTree__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x00763820    56
    asm("mov.s              esi, ecx");                                      // 0x00763821    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x00763823    8b4c240c
    asm("mov                eax, dword ptr [esi]");                          // 0x00763827    8b06
    asm("push               0x00000095");                                    // 0x00763829    6895000000
    asm("push               ecx");                                           // 0x0076382e    51
    asm("mov.s              ecx, esi");                                      // 0x0076382f    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x00763831    ff9090090000
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00763837    8b542408
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edx");             // 0x0076383b    8996bc000000
    asm("pop                esi");                                           // 0x00763841    5e
    asm("ret                0x0008");                                        // 0x00763842    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall FleeFromPredatorPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x08");                                     // 0x00763850    83ec08
    asm("push               ebx");                                           // 0x00763853    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x10]");                   // 0x00763854    8b5c2410
    asm("{disp8} mov        eax, dword ptr [ebx + 0x14]");                   // 0x00763858    8b4314
    asm("push               esi");                                           // 0x0076385b    56
    asm("push               edi");                                           // 0x0076385c    57
    asm("push               0x0");                                           // 0x0076385d    6a00
    asm("push               0x009c8e00");                                    // 0x0076385f    68008e9c00
    asm("push               0x009c7f30");                                    // 0x00763864    68307f9c00
    asm("push               0x0");                                           // 0x00763869    6a00
    asm("push               eax");                                           // 0x0076386b    50
    asm("mov.s              edi, ecx");                                      // 0x0076386c    8bf9
    asm("call               ___RTDynamicCast");                              // 0x0076386e    e8a6210600
    asm("mov.s              esi, eax");                                      // 0x00763873    8bf0
    asm("add                esp, 0x14");                                     // 0x00763875    83c414
    asm("test               esi, esi");                                      // 0x00763878    85f6
    asm("{disp32} je        _jmp_addr_0x00763969");                          // 0x0076387a    0f84e9000000
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x00763880    8d4614
    asm("push               eax");                                           // 0x00763883    50
    asm("{disp8} lea        ecx, dword ptr [edi + 0x14]");                   // 0x00763884    8d4f14
    asm("push               ecx");                                           // 0x00763887    51
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00763888    e8c394feff
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0076388d    d95c2420
    asm("add                esp, 0x08");                                     // 0x00763891    83c408
    asm("mov.s              ecx, ebx");                                      // 0x00763894    8bcb
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00763896    e8650ef8ff
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x0076389b    d9442418
    asm("{disp8} fcomp      dword ptr [eax + 0x40]");                        // 0x0076389f    d85840
    asm("fnstsw             ax");                                            // 0x007638a2    dfe0
    asm("test               ah, 0x41");                                      // 0x007638a4    f6c441
    asm("{disp8} jne        _jmp_addr_0x007638b0");                          // 0x007638a7    7507
    asm("mov                ebx, 0x00000001");                               // 0x007638a9    bb01000000
    asm("{disp8} jmp        _jmp_addr_0x007638b2");                          // 0x007638ae    eb02
    asm("_jmp_addr_0x007638b0:");
    asm("xor.s              ebx, ebx");                                      // 0x007638b0    33db
    asm("_jmp_addr_0x007638b2:");
    asm("test               byte ptr [edi + 0x000000e0], 0x04");             // 0x007638b2    f687e000000004
    asm("{disp32} jne       _jmp_addr_0x00763969");                          // 0x007638b9    0f85aa000000
    asm("{disp32} mov       cl, byte ptr [edi + 0x0000008c]");               // 0x007638bf    8a8f8c000000
    asm("mov                al, -0x14");                                     // 0x007638c5    b0ec
    asm("cmp.s              cl, al");                                        // 0x007638c7    3ac8
    asm("{disp32} je        _jmp_addr_0x00763969");                          // 0x007638c9    0f849a000000
    asm("cmp                byte ptr [edi + 0x0000008d], al");               // 0x007638cf    38878d000000
    asm("{disp8} jne        _jmp_addr_0x007638df");                          // 0x007638d5    7508
    asm("test               ebx, ebx");                                      // 0x007638d7    85db
    asm("{disp32} jne       _jmp_addr_0x00763969");                          // 0x007638d9    0f858a000000
    asm("_jmp_addr_0x007638df:");
    asm("mov                edx, dword ptr [edi]");                          // 0x007638df    8b17
    asm("mov.s              ecx, edi");                                      // 0x007638e1    8bcf
    asm("call               dword ptr [edx + 0xb04]");                       // 0x007638e3    ff92040b0000
    asm("cmp                al, -0x13");                                     // 0x007638e9    3ced
    asm("{disp8} jne        _jmp_addr_0x007638f7");                          // 0x007638eb    750a
    asm("cmp                word ptr [edi + 0x00000090], 0x14");             // 0x007638ed    6683bf9000000014
    asm("{disp8} jae        _jmp_addr_0x00763922");                          // 0x007638f5    732b
    asm("_jmp_addr_0x007638f7:");
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008c]");               // 0x007638f7    8a868c000000
    asm("cmp                al, 0x23");                                      // 0x007638fd    3c23
    asm("{disp8} je         _jmp_addr_0x00763969");                          // 0x007638ff    7468
    asm("cmp                al, 0x33");                                      // 0x00763901    3c33
    asm("{disp8} je         _jmp_addr_0x00763969");                          // 0x00763903    7464
    asm("test               ebx, ebx");                                      // 0x00763905    85db
    asm("{disp8} je         _jmp_addr_0x00763922");                          // 0x00763907    7419
    asm("push               0x1c");                                          // 0x00763909    6a1c
    asm("mov.s              ecx, edi");                                      // 0x0076390b    8bcf
    asm("call               _jmp_addr_0x005f0fb0");                          // 0x0076390d    e89ed6e8ff
    asm("test               eax, eax");                                      // 0x00763912    85c0
    asm("{disp8} jbe        _jmp_addr_0x00763922");                          // 0x00763914    760c
    asm("push               esi");                                           // 0x00763916    56
    asm("mov.s              ecx, edi");                                      // 0x00763917    8bcf
    asm("call               _jmp_addr_0x005f1e60");                          // 0x00763919    e842e5e8ff
    asm("test               eax, eax");                                      // 0x0076391e    85c0
    asm("{disp8} je         _jmp_addr_0x00763969");                          // 0x00763920    7447
    asm("_jmp_addr_0x00763922:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00763922    8b06
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00763924    8b7e28
    asm("mov.s              ecx, esi");                                      // 0x00763927    8bce
    asm("call               dword ptr [eax + 0x154]");                       // 0x00763929    ff9054010000
    asm("{disp32} fidiv     dword ptr [edi + 0x00000110]");                  // 0x0076392f    dab710010000
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x38a1b0]");        // 0x00763935    8b0db001d500
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0076393b    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x0076393f    c744241000000000
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00763947    d80db4a38a00
    asm("{disp32} fadd      dword ptr [_rdata_float0p5]");                   // 0x0076394d    d805b4a38a00
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                        // 0x00763953    df6c240c
    asm("fmul               st, st(1)");                                     // 0x00763957    d8c9
    asm("call               _jmp_addr_0x007a1400");                          // 0x00763959    e8a2da0300
    asm("fstp               st(0)");                                         // 0x0076395e    ddd8
    asm("pop                edi");                                           // 0x00763960    5f
    asm("pop                esi");                                           // 0x00763961    5e
    asm("pop                ebx");                                           // 0x00763962    5b
    asm("add                esp, 0x08");                                     // 0x00763963    83c408
    asm("ret                0x0008");                                        // 0x00763966    c20800
    asm("_jmp_addr_0x00763969:");
    asm("pop                edi");                                           // 0x00763969    5f
    asm("pop                esi");                                           // 0x0076396a    5e
    asm("xor.s              al, al");                                        // 0x0076396b    32c0
    asm("pop                ebx");                                           // 0x0076396d    5b
    asm("add                esp, 0x08");                                     // 0x0076396e    83c408
    asm("ret                0x0008");                                        // 0x00763971    c20800
    __builtin_unreachable();
}

uint8_t __fastcall ReactToScaffoldPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a598]");          // 0x00763980    a09805d500
    asm("ret                0x0008");                                        // 0x00763985    c20800
    __builtin_unreachable();
}

void __fastcall SetupFleeFromPredator__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x00763990    56
    asm("mov.s              esi, ecx");                                      // 0x00763991    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00763993    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00763995    ff90040b0000
    asm("cmp                al, -0x14");                                     // 0x0076399b    3cec
    asm("{disp8} jne        _jmp_addr_0x007639ad");                          // 0x0076399d    750e
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], 0x00000000");      // 0x0076399f    c7860c01000000000000
    asm("pop                esi");                                           // 0x007639a9    5e
    asm("ret                0x0008");                                        // 0x007639aa    c20800
    asm("_jmp_addr_0x007639ad:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x007639ad    8b44240c
    asm("mov                edx, dword ptr [esi]");                          // 0x007639b1    8b16
    asm("push               0x000000e7");                                    // 0x007639b3    68e7000000
    asm("push               eax");                                           // 0x007639b8    50
    asm("mov.s              ecx, esi");                                      // 0x007639b9    8bce
    asm("call               dword ptr [edx + 0x990]");                       // 0x007639bb    ff9290090000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x007639c1    8b4c2408
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], ecx");             // 0x007639c5    898ebc000000
    asm("pop                esi");                                           // 0x007639cb    5e
    asm("ret                0x0008");                                        // 0x007639cc    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToFlyingObject__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x08");                                     // 0x007639d0    83ec08
    asm("push               esi");                                           // 0x007639d3    56
    asm("push               edi");                                           // 0x007639d4    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x14]");                   // 0x007639d5    8b7c2414
    asm("push               0x0");                                           // 0x007639d9    6a00
    asm("push               0x009c7f50");                                    // 0x007639db    68507f9c00
    asm("push               0x009c7f30");                                    // 0x007639e0    68307f9c00
    asm("push               0x0");                                           // 0x007639e5    6a00
    asm("push               edi");                                           // 0x007639e7    57
    asm("mov.s              esi, ecx");                                      // 0x007639e8    8bf1
    asm("call               ___RTDynamicCast");                              // 0x007639ea    e82a200600
    asm("push               eax");                                           // 0x007639ef    50
    asm("call               _jmp_addr_0x00646950");                          // 0x007639f0    e85b2feeff
    asm("add                esp, 0x18");                                     // 0x007639f5    83c418
    asm("test               eax, eax");                                      // 0x007639f8    85c0
    asm("{disp32} je        _jmp_addr_0x00763a94");                          // 0x007639fa    0f8494000000
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000104]");             // 0x00763a00    8b8804010000
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000108]");             // 0x00763a06    8b9008010000
    asm("{disp32} mov       eax, dword ptr [eax + 0x0000010c]");             // 0x00763a0c    8b800c010000
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00763a12    894c240c
    asm("{disp8} lea        ecx, dword ptr [edi + 0x14]");                   // 0x00763a16    8d4f14
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x00763a19    89542408
    asm("push               ecx");                                           // 0x00763a1d    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x00763a1e    8d5614
    asm("push               edx");                                           // 0x00763a21    52
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x00763a22    8944241c
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00763a26    e84593feff
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00763a2b    d944241c
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                        // 0x00763a2f    d84c241c
    asm("add                esp, 0x08");                                     // 0x00763a33    83c408
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00763a36    d9442408
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x00763a3a    d84c2408
    asm("faddp              st(1), st");                                     // 0x00763a3e    dec1
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00763a40    d944240c
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00763a44    d84c240c
    asm("faddp              st(1), st");                                     // 0x00763a48    dec1
    asm("fsqrt");                                                            // 0x00763a4a    d9fa
    asm("{disp8} fst        dword ptr [esp + 0x14]");                        // 0x00763a4c    d9542414
    asm("fadd.s             st(0), st(0)");                                  // 0x00763a50    dcc0
    asm("fcompp");                                                           // 0x00763a52    ded9
    asm("fnstsw             ax");                                            // 0x00763a54    dfe0
    asm("test               ah, 0x41");                                      // 0x00763a56    f6c441
    asm("{disp8} jne        _jmp_addr_0x00763a7a");                          // 0x00763a59    751f
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x00763a5b    8b4c2418
    asm("mov                eax, dword ptr [esi]");                          // 0x00763a5f    8b06
    asm("push               0x6");                                           // 0x00763a61    6a06
    asm("push               ecx");                                           // 0x00763a63    51
    asm("mov.s              ecx, esi");                                      // 0x00763a64    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x00763a66    ff9090090000
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edi");             // 0x00763a6c    89bebc000000
    asm("pop                edi");                                           // 0x00763a72    5f
    asm("pop                esi");                                           // 0x00763a73    5e
    asm("add                esp, 0x08");                                     // 0x00763a74    83c408
    asm("ret                0x0008");                                        // 0x00763a77    c20800
    asm("_jmp_addr_0x00763a7a:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00763a7a    8b442418
    asm("mov                edx, dword ptr [esi]");                          // 0x00763a7e    8b16
    asm("push               0x000000a2");                                    // 0x00763a80    68a2000000
    asm("push               eax");                                           // 0x00763a85    50
    asm("mov.s              ecx, esi");                                      // 0x00763a86    8bce
    asm("call               dword ptr [edx + 0x990]");                       // 0x00763a88    ff9290090000
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edi");             // 0x00763a8e    89bebc000000
    asm("_jmp_addr_0x00763a94:");
    asm("pop                edi");                                           // 0x00763a94    5f
    asm("pop                esi");                                           // 0x00763a95    5e
    asm("add                esp, 0x08");                                     // 0x00763a96    83c408
    asm("ret                0x0008");                                        // 0x00763a99    c20800
    __builtin_unreachable();
}

void __fastcall SetupLookAtObject__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00763aa0    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00763aa4    8b542404
    asm("push               eax");                                           // 0x00763aa8    50
    asm("push               edx");                                           // 0x00763aa9    52
    asm("call               ?SetupLookAtObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");                          // 0x00763aaa    e801d9e8ff
    asm("ret                0x0008");                                        // 0x00763aaf    c20800
    __builtin_unreachable();
}

void __fastcall SetupLookAtSpell__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00763ac0    8b442408
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x00763ac4    8b542404
    asm("push               eax");                                           // 0x00763ac8    50
    asm("push               edx");                                           // 0x00763ac9    52
    asm("call               ?SetupLookAtObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");                          // 0x00763aca    e8e1d8e8ff
    asm("ret                0x0008");                                        // 0x00763acf    c20800
    __builtin_unreachable();
}

void __fastcall SetupLookAtNiceSpell__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00763ae0    8b542408
    asm("mov                eax, dword ptr [ecx]");                          // 0x00763ae4    8b01
    asm("push               edx");                                           // 0x00763ae6    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00763ae7    8b542408
    asm("push               edx");                                           // 0x00763aeb    52
    asm("call               dword ptr [eax + 0x9ac]");                       // 0x00763aec    ff90ac090000
    asm("ret                0x0008");                                        // 0x00763af2    c20800
    __builtin_unreachable();
}

bool __fastcall FleeingFromObjectReaction__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x00763b00    56
    asm("mov.s              esi, ecx");                                      // 0x00763b01    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00763b03    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00763b09    85c9
    asm("{disp8} je         _jmp_addr_0x00763b2a");                          // 0x00763b0b    741d
    asm("mov                eax, dword ptr [ecx]");                          // 0x00763b0d    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00763b0f    ff502c
    asm("test               eax, eax");                                      // 0x00763b12    85c0
    asm("{disp8} je         _jmp_addr_0x00763b2a");                          // 0x00763b14    7414
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00763b16    8b8ebc000000
    asm("mov                edx, dword ptr [ecx]");                          // 0x00763b1c    8b11
    asm("call               dword ptr [edx + 0x1c]");                        // 0x00763b1e    ff521c
    asm("mov.s              ecx, esi");                                      // 0x00763b21    8bce
    asm("call               ?FleeingFromObjectReaction@PuzzleHorse@@UAE_NXZ");                          // 0x00763b23    e8e8e1e8ff
    asm("pop                esi");                                           // 0x00763b28    5e
    asm("ret");                                                              // 0x00763b29    c3
    asm("_jmp_addr_0x00763b2a:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00763b2a    8b06
    asm("mov.s              ecx, esi");                                      // 0x00763b2c    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00763b2e    ff909c090000
    asm("mov                eax, 0x00000001");                               // 0x00763b34    b801000000
    asm("pop                esi");                                           // 0x00763b39    5e
    asm("ret");                                                              // 0x00763b3a    c3
    __builtin_unreachable();
}

bool32_t __fastcall FleeingFromPredatorReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x00763b40    83ec10
    asm("push               ebx");                                           // 0x00763b43    53
    asm("push               esi");                                           // 0x00763b44    56
    asm("mov.s              esi, ecx");                                      // 0x00763b45    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00763b47    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00763b4d    85c9
    asm("push               edi");                                           // 0x00763b4f    57
    asm("{disp32} je        _jmp_addr_0x00763c8e");                          // 0x00763b50    0f8438010000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00763b56    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00763b58    ff502c
    asm("test               eax, eax");                                      // 0x00763b5b    85c0
    asm("{disp32} je        _jmp_addr_0x00763c8e");                          // 0x00763b5d    0f842b010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00763b63    8b86bc000000
    asm("push               0x0");                                           // 0x00763b69    6a00
    asm("push               0x009c8e00");                                    // 0x00763b6b    68008e9c00
    asm("push               0x009c7f30");                                    // 0x00763b70    68307f9c00
    asm("push               0x0");                                           // 0x00763b75    6a00
    asm("push               eax");                                           // 0x00763b77    50
    asm("call               ___RTDynamicCast");                              // 0x00763b78    e89c1e0600
    asm("mov.s              ebx, eax");                                      // 0x00763b7d    8bd8
    asm("add                esp, 0x14");                                     // 0x00763b7f    83c414
    asm("test               ebx, ebx");                                      // 0x00763b82    85db
    asm("{disp8} jne        _jmp_addr_0x00763b8d");                          // 0x00763b84    7507
    asm("pop                edi");                                           // 0x00763b86    5f
    asm("pop                esi");                                           // 0x00763b87    5e
    asm("pop                ebx");                                           // 0x00763b88    5b
    asm("add                esp, 0x10");                                     // 0x00763b89    83c410
    asm("ret");                                                              // 0x00763b8c    c3
    asm("_jmp_addr_0x00763b8d:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00763b8d    8b86bc000000
    asm("add                eax, 0x14");                                     // 0x00763b93    83c014
    asm("push               eax");                                           // 0x00763b96    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00763b97    8d4e14
    asm("push               ecx");                                           // 0x00763b9a    51
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00763b9b    e8b091feff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00763ba0    d95c2414
    asm("add                esp, 0x08");                                     // 0x00763ba4    83c408
    asm("mov.s              ecx, esi");                                      // 0x00763ba7    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x00763ba9    e8b28ee8ff
    asm("mov.s              ecx, eax");                                      // 0x00763bae    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00763bb0    e84b0bf8ff
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00763bb5    d944240c
    asm("{disp8} fcomp      dword ptr [eax + 0x44]");                        // 0x00763bb9    d85844
    asm("fnstsw             ax");                                            // 0x00763bbc    dfe0
    asm("test               ah, 0x41");                                      // 0x00763bbe    f6c441
    asm("{disp8} jne        _jmp_addr_0x00763bd9");                          // 0x00763bc1    7516
    asm("mov                edx, dword ptr [esi]");                          // 0x00763bc3    8b16
    asm("mov.s              ecx, esi");                                      // 0x00763bc5    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00763bc7    ff929c090000
    asm("pop                edi");                                           // 0x00763bcd    5f
    asm("pop                esi");                                           // 0x00763bce    5e
    asm("mov                eax, 0x00000001");                               // 0x00763bcf    b801000000
    asm("pop                ebx");                                           // 0x00763bd4    5b
    asm("add                esp, 0x10");                                     // 0x00763bd5    83c410
    asm("ret");                                                              // 0x00763bd8    c3
    asm("_jmp_addr_0x00763bd9:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00763bd9    8b06
    asm("mov.s              ecx, esi");                                      // 0x00763bdb    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00763bdd    ff90040b0000
    asm("cmp                al, -0x13");                                     // 0x00763be3    3ced
    asm("{disp8} jne        _jmp_addr_0x00763c2e");                          // 0x00763be5    7547
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000110]");             // 0x00763be7    8d8e10010000
    asm("push               ecx");                                           // 0x00763bed    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00763bee    8d4c2414
    asm("call               _jmp_addr_0x00603030");                          // 0x00763bf2    e839f4e9ff
    asm("push               eax");                                           // 0x00763bf7    50
    asm("mov.s              ecx, esi");                                      // 0x00763bf8    8bce
    asm("call               ?GetAbodeToHideInAtPos@Villager@@QAEPAVAbode@@ABUMapCoords@@@Z");                          // 0x00763bfa    e801030000
    asm("mov.s              edi, eax");                                      // 0x00763bff    8bf8
    asm("test               edi, edi");                                      // 0x00763c01    85ff
    asm("{disp8} je         _jmp_addr_0x00763c2e");                          // 0x00763c03    7429
    asm("mov                edx, dword ptr [edi]");                          // 0x00763c05    8b17
    asm("push               0x000000ec");                                    // 0x00763c07    68ec000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x00763c0c    8d442414
    asm("push               eax");                                           // 0x00763c10    50
    asm("mov.s              ecx, edi");                                      // 0x00763c11    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x00763c13    ff9204010000
    asm("push               eax");                                           // 0x00763c19    50
    asm("push               edi");                                           // 0x00763c1a    57
    asm("mov.s              ecx, esi");                                      // 0x00763c1b    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00763c1d    e8fea0e8ff
    asm("pop                edi");                                           // 0x00763c22    5f
    asm("pop                esi");                                           // 0x00763c23    5e
    asm("mov                eax, 0x00000001");                               // 0x00763c24    b801000000
    asm("pop                ebx");                                           // 0x00763c29    5b
    asm("add                esp, 0x10");                                     // 0x00763c2a    83c410
    asm("ret");                                                              // 0x00763c2d    c3
    asm("_jmp_addr_0x00763c2e:");
    asm("mov                edx, dword ptr [ebx]");                          // 0x00763c2e    8b13
    asm("mov.s              ecx, ebx");                                      // 0x00763c30    8bcb
    asm("call               dword ptr [edx + 0x154]");                       // 0x00763c32    ff9254010000
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]");              // 0x00763c38    d81de4b68a00
    asm("fnstsw             ax");                                            // 0x00763c3e    dfe0
    asm("test               ah, 0x41");                                      // 0x00763c40    f6c441
    asm("{disp8} jne        _jmp_addr_0x00763c51");                          // 0x00763c43    750c
    asm("push               ebx");                                           // 0x00763c45    53
    asm("mov.s              ecx, esi");                                      // 0x00763c46    8bce
    asm("call               _jmp_addr_0x005f1e60");                          // 0x00763c48    e813e2e8ff
    asm("test               eax, eax");                                      // 0x00763c4d    85c0
    asm("{disp8} jne        _jmp_addr_0x00763c69");                          // 0x00763c4f    7518
    asm("_jmp_addr_0x00763c51:");
    asm("push               0x0000016d");                                    // 0x00763c51    686d010000
    asm("push               0x00c24588");                                    // 0x00763c56    688845c200
    asm("push               0x6");                                           // 0x00763c5b    6a06
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00763c5d    e8aea8f7ff
    asm("add                esp, 0x0c");                                     // 0x00763c62    83c40c
    asm("test               eax, eax");                                      // 0x00763c65    85c0
    asm("{disp8} jne        _jmp_addr_0x00763c75");                          // 0x00763c67    750c
    asm("_jmp_addr_0x00763c69:");
    asm("push               ebx");                                           // 0x00763c69    53
    asm("mov.s              ecx, esi");                                      // 0x00763c6a    8bce
    asm("call               ?SetupGoAndHideInNearbyBuilding@Villager@@QAEIPAVGameThingWithPos@@@Z");                          // 0x00763c6c    e83f000000
    asm("test               eax, eax");                                      // 0x00763c71    85c0
    asm("{disp8} jne        _jmp_addr_0x00763c98");                          // 0x00763c73    7523
    asm("_jmp_addr_0x00763c75:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00763c75    8b86bc000000
    asm("push               0x7");                                           // 0x00763c7b    6a07
    asm("push               0x7");                                           // 0x00763c7d    6a07
    asm("push               eax");                                           // 0x00763c7f    50
    asm("mov.s              ecx, esi");                                      // 0x00763c80    8bce
    asm("call               ?FleeFromObjectIfComingTowardsMe@Living@@QAEIPAVGameThingWithPos@@W4VILLAGER_STATES@@1@Z");                          // 0x00763c82    e809e1e8ff
    asm("pop                edi");                                           // 0x00763c87    5f
    asm("pop                esi");                                           // 0x00763c88    5e
    asm("pop                ebx");                                           // 0x00763c89    5b
    asm("add                esp, 0x10");                                     // 0x00763c8a    83c410
    asm("ret");                                                              // 0x00763c8d    c3
    asm("_jmp_addr_0x00763c8e:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00763c8e    8b06
    asm("mov.s              ecx, esi");                                      // 0x00763c90    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00763c92    ff909c090000
    asm("_jmp_addr_0x00763c98:");
    asm("pop                edi");                                           // 0x00763c98    5f
    asm("pop                esi");                                           // 0x00763c99    5e
    asm("mov                eax, 0x00000001");                               // 0x00763c9a    b801000000
    asm("pop                ebx");                                           // 0x00763c9f    5b
    asm("add                esp, 0x10");                                     // 0x00763ca0    83c410
    asm("ret");                                                              // 0x00763ca3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall SetupGoAndHideInNearbyBuilding__8VillagerFP16GameThingWithPos(struct Villager* this, const void* edx, struct GameThingWithPos* param_1)
{
    asm("sub                esp, 0x14");                                     // 0x00763cb0    83ec14
    asm("push               ebx");                                           // 0x00763cb3    53
    asm("push               esi");                                           // 0x00763cb4    56
    asm("mov.s              ebx, ecx");                                      // 0x00763cb5    8bd9
    asm("mov                eax, dword ptr [ebx]");                          // 0x00763cb7    8b03
    asm("push               edi");                                           // 0x00763cb9    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00763cba    ff5048
    asm("test               eax, eax");                                      // 0x00763cbd    85c0
    asm("{disp32} je        _jmp_addr_0x00763d80");                          // 0x00763cbf    0f84bb000000
    asm("mov                edx, dword ptr [ebx]");                          // 0x00763cc5    8b13
    asm("mov.s              ecx, ebx");                                      // 0x00763cc7    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x42c80000");            // 0x00763cc9    c74424100000c842
    asm("xor.s              edi, edi");                                      // 0x00763cd1    33ff
    asm("call               dword ptr [edx + 0x48]");                        // 0x00763cd3    ff5248
    asm("{disp32} mov       esi, dword ptr [eax + 0x00000754]");             // 0x00763cd6    8bb054070000
    asm("add                eax, 0x00000754");                               // 0x00763cdc    0554070000
    asm("test               esi, esi");                                      // 0x00763ce1    85f6
    asm("{disp32} je        _jmp_addr_0x00763d80");                          // 0x00763ce3    0f8497000000
    asm("push               ebp");                                           // 0x00763ce9    55
    asm("{disp8} lea        ebp, dword ptr [ebx + 0x14]");                   // 0x00763cea    8d6b14
    asm("_jmp_addr_0x00763ced:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00763ced    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00763cef    8d4c2418
    asm("push               ecx");                                           // 0x00763cf3    51
    asm("mov.s              ecx, esi");                                      // 0x00763cf4    8bce
    asm("call               dword ptr [eax + 0x104]");                       // 0x00763cf6    ff9004010000
    asm("push               eax");                                           // 0x00763cfc    50
    asm("push               ebp");                                           // 0x00763cfd    55
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00763cfe    e86d90feff
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00763d03    d95c2418
    asm("mov                edx, dword ptr [esi]");                          // 0x00763d07    8b16
    asm("add                esp, 0x08");                                     // 0x00763d09    83c408
    asm("mov.s              ecx, esi");                                      // 0x00763d0c    8bce
    asm("call               dword ptr [edx + 0x924]");                       // 0x00763d0e    ff9224090000
    asm("test               eax, eax");                                      // 0x00763d14    85c0
    asm("{disp8} je         _jmp_addr_0x00763d31");                          // 0x00763d16    7419
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00763d18    d9442410
    asm("{disp8} fcomp      dword ptr [esp + 0x14]");                        // 0x00763d1c    d85c2414
    asm("fnstsw             ax");                                            // 0x00763d20    dfe0
    asm("test               ah, 0x01");                                      // 0x00763d22    f6c401
    asm("{disp8} je         _jmp_addr_0x00763d31");                          // 0x00763d25    740a
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00763d27    8b442410
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00763d2b    89442414
    asm("mov.s              edi, esi");                                      // 0x00763d2f    8bfe
    asm("_jmp_addr_0x00763d31:");
    asm("{disp32} mov       esi, dword ptr [esi + 0x0000009c]");             // 0x00763d31    8bb69c000000
    asm("test               esi, esi");                                      // 0x00763d37    85f6
    asm("{disp8} jne        _jmp_addr_0x00763ced");                          // 0x00763d39    75b2
    asm("test               edi, edi");                                      // 0x00763d3b    85ff
    asm("pop                ebp");                                           // 0x00763d3d    5d
    asm("{disp8} je         _jmp_addr_0x00763d80");                          // 0x00763d3e    7440
    asm("{disp8} lea        ecx, dword ptr [edi + 0x14]");                   // 0x00763d40    8d4f14
    asm("push               ecx");                                           // 0x00763d43    51
    asm("{disp32} lea       ecx, dword ptr [ebx + 0x00000110]");             // 0x00763d44    8d8b10010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x00763d4a    e8b1dbe7ff
    asm("push               0x000000ec");                                    // 0x00763d4f    68ec000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x00763d54    8d442418
    asm("{disp32} mov       dword ptr [ebx + 0x0000010c], esi");             // 0x00763d58    89b30c010000
    asm("mov                edx, dword ptr [edi]");                          // 0x00763d5e    8b17
    asm("push               eax");                                           // 0x00763d60    50
    asm("mov.s              ecx, edi");                                      // 0x00763d61    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x00763d63    ff9204010000
    asm("push               eax");                                           // 0x00763d69    50
    asm("push               edi");                                           // 0x00763d6a    57
    asm("mov.s              ecx, ebx");                                      // 0x00763d6b    8bcb
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00763d6d    e8ae9fe8ff
    asm("pop                edi");                                           // 0x00763d72    5f
    asm("pop                esi");                                           // 0x00763d73    5e
    asm("mov                eax, 0x00000001");                               // 0x00763d74    b801000000
    asm("pop                ebx");                                           // 0x00763d79    5b
    asm("add                esp, 0x14");                                     // 0x00763d7a    83c414
    asm("ret                0x0004");                                        // 0x00763d7d    c20400
    asm("_jmp_addr_0x00763d80:");
    asm("pop                edi");                                           // 0x00763d80    5f
    asm("pop                esi");                                           // 0x00763d81    5e
    asm("xor.s              eax, eax");                                      // 0x00763d82    33c0
    asm("pop                ebx");                                           // 0x00763d84    5b
    asm("add                esp, 0x14");                                     // 0x00763d85    83c414
    asm("ret                0x0004");                                        // 0x00763d88    c20400
    __builtin_unreachable();
}

bool32_t __fastcall GoAndHideInNearbyBuilding__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x1c");                                     // 0x00763d90    83ec1c
    asm("push               ebx");                                           // 0x00763d93    53
    asm("push               esi");                                           // 0x00763d94    56
    asm("mov.s              esi, ecx");                                      // 0x00763d95    8bf1
    asm("push               edi");                                           // 0x00763d97    57
    asm("{disp32} lea       eax, dword ptr [esi + 0x00000110]");             // 0x00763d98    8d8610010000
    asm("push               eax");                                           // 0x00763d9e    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00763d9f    8d4c2414
    asm("call               _jmp_addr_0x00603030");                          // 0x00763da3    e888f2e9ff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00763da8    8d4c2410
    asm("push               ecx");                                           // 0x00763dac    51
    asm("mov.s              ecx, esi");                                      // 0x00763dad    8bce
    asm("call               ?GetAbodeToHideInAtPos@Villager@@QAEPAVAbode@@ABUMapCoords@@@Z");                          // 0x00763daf    e84c010000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00763db4    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00763dba    85c9
    asm("mov.s              edi, eax");                                      // 0x00763dbc    8bf8
    asm("{disp8} je         _jmp_addr_0x00763dd4");                          // 0x00763dbe    7414
    asm("mov                edx, dword ptr [ecx]");                          // 0x00763dc0    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00763dc2    ff522c
    asm("cmp                eax, 0x01");                                     // 0x00763dc5    83f801
    asm("{disp8} je         _jmp_addr_0x00763dd4");                          // 0x00763dc8    740a
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], 0x00000000");      // 0x00763dca    c786bc00000000000000
    asm("_jmp_addr_0x00763dd4:");
    asm("test               edi, edi");                                      // 0x00763dd4    85ff
    asm("{disp32} je        _jmp_addr_0x00763edc");                          // 0x00763dd6    0f8400010000
    asm("mov                eax, dword ptr [edi]");                          // 0x00763ddc    8b07
    asm("mov.s              ecx, edi");                                      // 0x00763dde    8bcf
    asm("call               dword ptr [eax + 0x924]");                       // 0x00763de0    ff9024090000
    asm("test               eax, eax");                                      // 0x00763de6    85c0
    asm("{disp32} je        _jmp_addr_0x00763edc");                          // 0x00763de8    0f84ee000000
    asm("mov                edx, dword ptr [edi]");                          // 0x00763dee    8b17
    asm("mov                ebx, dword ptr [esi]");                          // 0x00763df0    8b1e
    asm("push               0x0");                                           // 0x00763df2    6a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x00763df4    8d442420
    asm("push               eax");                                           // 0x00763df8    50
    asm("mov.s              ecx, edi");                                      // 0x00763df9    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x00763dfb    ff9204010000
    asm("push               eax");                                           // 0x00763e01    50
    asm("mov.s              ecx, esi");                                      // 0x00763e02    8bce
    asm("call               dword ptr [ebx + 0x85c]");                       // 0x00763e04    ff935c080000
    asm("test               eax, eax");                                      // 0x00763e0a    85c0
    asm("{disp32} je        _jmp_addr_0x00763eb3");                          // 0x00763e0c    0f84a1000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00763e12    8b86bc000000
    asm("test               eax, eax");                                      // 0x00763e18    85c0
    asm("{disp8} je         _jmp_addr_0x00763e50");                          // 0x00763e1a    7434
    asm("add                eax, 0x14");                                     // 0x00763e1c    83c014
    asm("push               eax");                                           // 0x00763e1f    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00763e20    8d4e14
    asm("push               ecx");                                           // 0x00763e23    51
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00763e24    e8278ffeff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00763e29    d95c2414
    asm("add                esp, 0x08");                                     // 0x00763e2d    83c408
    asm("mov.s              ecx, esi");                                      // 0x00763e30    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x00763e32    e8298ce8ff
    asm("mov.s              ecx, eax");                                      // 0x00763e37    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00763e39    e8c208f8ff
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00763e3e    d944240c
    asm("{disp8} fcomp      dword ptr [eax + 0x40]");                        // 0x00763e42    d85840
    asm("fnstsw             ax");                                            // 0x00763e45    dfe0
    asm("test               ah, 0x41");                                      // 0x00763e47    f6c441
    asm("{disp32} jne       _jmp_addr_0x00763ee6");                          // 0x00763e4a    0f8596000000
    asm("_jmp_addr_0x00763e50:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x0000010c]");             // 0x00763e50    8b960c010000
    asm("push               0x000001a6");                                    // 0x00763e56    68a6010000
    asm("inc                edx");                                           // 0x00763e5b    42
    asm("push               0x00c24588");                                    // 0x00763e5c    688845c200
    asm("push               0x00000096");                                    // 0x00763e61    6896000000
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], edx");             // 0x00763e66    89960c010000
    asm("mov.s              ebx, edx");                                      // 0x00763e6c    8bda
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00763e6e    e89da6f7ff
    asm("add                eax, 0x00000096");                               // 0x00763e73    0596000000
    asm("add                esp, 0x0c");                                     // 0x00763e78    83c40c
    asm("cmp.s              ebx, eax");                                      // 0x00763e7b    3bd8
    asm("{disp8} jbe        _jmp_addr_0x00763ee6");                          // 0x00763e7d    7667
    asm("push               edi");                                           // 0x00763e7f    57
    asm("{disp8} lea        edx, dword ptr [esp + 0x20]");                   // 0x00763e80    8d542420
    asm("push               edx");                                           // 0x00763e84    52
    asm("mov.s              ecx, esi");                                      // 0x00763e85    8bce
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], 0x00000000");      // 0x00763e87    c7860c01000000000000
    asm("call               ?FindPosOutsideAbode@Villager@@QAEXPAVAbode@@@Z");                          // 0x00763e91    e8daf5feff
    asm("push               0x000000ed");                                    // 0x00763e96    68ed000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x00763e9b    8d442420
    asm("push               eax");                                           // 0x00763e9f    50
    asm("mov.s              ecx, esi");                                      // 0x00763ea0    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00763ea2    e8e9e9e8ff
    asm("pop                edi");                                           // 0x00763ea7    5f
    asm("pop                esi");                                           // 0x00763ea8    5e
    asm("mov                eax, 0x00000001");                               // 0x00763ea9    b801000000
    asm("pop                ebx");                                           // 0x00763eae    5b
    asm("add                esp, 0x1c");                                     // 0x00763eaf    83c41c
    asm("ret");                                                              // 0x00763eb2    c3
    asm("_jmp_addr_0x00763eb3:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00763eb3    8b17
    asm("push               0x000000ec");                                    // 0x00763eb5    68ec000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x00763eba    8d442420
    asm("push               eax");                                           // 0x00763ebe    50
    asm("mov.s              ecx, edi");                                      // 0x00763ebf    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x00763ec1    ff9204010000
    asm("push               eax");                                           // 0x00763ec7    50
    asm("push               edi");                                           // 0x00763ec8    57
    asm("mov.s              ecx, esi");                                      // 0x00763ec9    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00763ecb    e8509ee8ff
    asm("pop                edi");                                           // 0x00763ed0    5f
    asm("pop                esi");                                           // 0x00763ed1    5e
    asm("mov                eax, 0x00000001");                               // 0x00763ed2    b801000000
    asm("pop                ebx");                                           // 0x00763ed7    5b
    asm("add                esp, 0x1c");                                     // 0x00763ed8    83c41c
    asm("ret");                                                              // 0x00763edb    c3
    asm("_jmp_addr_0x00763edc:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00763edc    8b16
    asm("mov.s              ecx, esi");                                      // 0x00763ede    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00763ee0    ff929c090000
    asm("_jmp_addr_0x00763ee6:");
    asm("pop                edi");                                           // 0x00763ee6    5f
    asm("pop                esi");                                           // 0x00763ee7    5e
    asm("mov                eax, 0x00000001");                               // 0x00763ee8    b801000000
    asm("pop                ebx");                                           // 0x00763eed    5b
    asm("add                esp, 0x1c");                                     // 0x00763eee    83c41c
    asm("ret");                                                              // 0x00763ef1    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct Abode* __fastcall GetAbodeToHideInAtPos__8VillagerFRC9MapCoords(struct Villager* this, const void* edx, const struct MapCoords* param_1)
{
    asm("push               esi");                                           // 0x00763f00    56
    asm("push               edi");                                           // 0x00763f01    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00763f02    8b7c240c
    asm("push               0x0");                                           // 0x00763f06    6a00
    asm("mov.s              ecx, edi");                                      // 0x00763f08    8bcf
    asm("call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ");           // 0x00763f0a    e821f5e9ff
    asm("mov.s              ecx, eax");                                      // 0x00763f0f    8bc8
    asm("call               ?FindFixedOnMap@MapCell@@QAEPAVFixed@@PAVObject@@@Z");                          // 0x00763f11    e87ad7e9ff
    asm("mov.s              esi, eax");                                      // 0x00763f16    8bf0
    asm("test               esi, esi");                                      // 0x00763f18    85f6
    asm("{disp8} je         _jmp_addr_0x00763f67");                          // 0x00763f1a    744b
    asm("_jmp_addr_0x00763f1c:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00763f1c    8b06
    asm("mov.s              ecx, esi");                                      // 0x00763f1e    8bce
    asm("call               dword ptr [eax + 0x208]");                       // 0x00763f20    ff9008020000
    asm("test               eax, eax");                                      // 0x00763f26    85c0
    asm("{disp8} je         _jmp_addr_0x00763f52");                          // 0x00763f28    7428
    asm("{disp8} mov        ecx, dword ptr [esi + 0x14]");                   // 0x00763f2a    8b4e14
    asm("cmp                ecx, dword ptr [edi]");                          // 0x00763f2d    3b0f
    asm("{disp8} jne        _jmp_addr_0x00763f52");                          // 0x00763f2f    7521
    asm("{disp8} mov        edx, dword ptr [esi + 0x18]");                   // 0x00763f31    8b5618
    asm("cmp                edx, dword ptr [edi + 0x04]");                   // 0x00763f34    3b5704
    asm("{disp8} jne        _jmp_addr_0x00763f52");                          // 0x00763f37    7519
    asm("mov                eax, dword ptr [esi]");                          // 0x00763f39    8b06
    asm("mov.s              ecx, esi");                                      // 0x00763f3b    8bce
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00763f3d    ff502c
    asm("test               eax, eax");                                      // 0x00763f40    85c0
    asm("{disp8} je         _jmp_addr_0x00763f52");                          // 0x00763f42    740e
    asm("mov                edx, dword ptr [esi]");                          // 0x00763f44    8b16
    asm("mov.s              ecx, esi");                                      // 0x00763f46    8bce
    asm("call               dword ptr [edx + 0x924]");                       // 0x00763f48    ff9224090000
    asm("test               eax, eax");                                      // 0x00763f4e    85c0
    asm("{disp8} jne        _jmp_addr_0x00763f6e");                          // 0x00763f50    751c
    asm("_jmp_addr_0x00763f52:");
    asm("push               esi");                                           // 0x00763f52    56
    asm("mov.s              ecx, edi");                                      // 0x00763f53    8bcf
    asm("call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ");           // 0x00763f55    e8d6f4e9ff
    asm("mov.s              ecx, eax");                                      // 0x00763f5a    8bc8
    asm("call               ?FindFixedOnMap@MapCell@@QAEPAVFixed@@PAVObject@@@Z");                          // 0x00763f5c    e82fd7e9ff
    asm("mov.s              esi, eax");                                      // 0x00763f61    8bf0
    asm("test               esi, esi");                                      // 0x00763f63    85f6
    asm("{disp8} jne        _jmp_addr_0x00763f1c");                          // 0x00763f65    75b5
    asm("_jmp_addr_0x00763f67:");
    asm("pop                edi");                                           // 0x00763f67    5f
    asm("xor.s              eax, eax");                                      // 0x00763f68    33c0
    asm("pop                esi");                                           // 0x00763f6a    5e
    asm("ret                0x0004");                                        // 0x00763f6b    c20400
    asm("_jmp_addr_0x00763f6e:");
    asm("pop                edi");                                           // 0x00763f6e    5f
    asm("mov.s              eax, esi");                                      // 0x00763f6f    8bc6
    asm("pop                esi");                                           // 0x00763f71    5e
    asm("ret                0x0004");                                        // 0x00763f72    c20400
    __builtin_unreachable();
}

bool32_t __fastcall LookToSeeIfItIsSafe__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x00763f80    83ec10
    asm("push               esi");                                           // 0x00763f83    56
    asm("mov.s              esi, ecx");                                      // 0x00763f84    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00763f86    8b86bc000000
    asm("test               eax, eax");                                      // 0x00763f8c    85c0
    asm("push               edi");                                           // 0x00763f8e    57
    asm("{disp32} je        _jmp_addr_0x00764057");                          // 0x00763f8f    0f84c2000000
    asm("add                eax, 0x14");                                     // 0x00763f95    83c014
    asm("push               eax");                                           // 0x00763f98    50
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x00763f99    8d4614
    asm("push               eax");                                           // 0x00763f9c    50
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00763f9d    e8ae8dfeff
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00763fa2    d95c2410
    asm("add                esp, 0x08");                                     // 0x00763fa6    83c408
    asm("mov.s              ecx, esi");                                      // 0x00763fa9    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x00763fab    e8b08ae8ff
    asm("mov.s              ecx, eax");                                      // 0x00763fb0    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00763fb2    e84907f8ff
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x00763fb7    d9442408
    asm("{disp8} fcomp      dword ptr [eax + 0x2c]");                        // 0x00763fbb    d8582c
    asm("fnstsw             ax");                                            // 0x00763fbe    dfe0
    asm("test               ah, 0x41");                                      // 0x00763fc0    f6c441
    asm("{disp32} je        _jmp_addr_0x00764057");                          // 0x00763fc3    0f848e000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00763fc9    8b8ebc000000
    asm("mov                edx, dword ptr [ecx]");                          // 0x00763fcf    8b11
    asm("call               dword ptr [edx + 0x454]");                       // 0x00763fd1    ff9254040000
    asm("test               eax, eax");                                      // 0x00763fd7    85c0
    asm("{disp8} je         _jmp_addr_0x00764057");                          // 0x00763fd9    747c
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00763fdb    8b86bc000000
    asm("{disp32} mov       al, byte ptr [eax + 0x0000008c]");               // 0x00763fe1    8a808c000000
    asm("cmp                al, 0x23");                                      // 0x00763fe7    3c23
    asm("{disp8} je         _jmp_addr_0x00764057");                          // 0x00763fe9    746c
    asm("cmp                al, 0x33");                                      // 0x00763feb    3c33
    asm("{disp8} je         _jmp_addr_0x00764057");                          // 0x00763fed    7468
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000110]");             // 0x00763fef    8d8e10010000
    asm("push               ecx");                                           // 0x00763ff5    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00763ff6    8d4c2410
    asm("call               _jmp_addr_0x00603030");                          // 0x00763ffa    e831f0e9ff
    asm("push               eax");                                           // 0x00763fff    50
    asm("mov.s              ecx, esi");                                      // 0x00764000    8bce
    asm("call               ?GetAbodeToHideInAtPos@Villager@@QAEPAVAbode@@ABUMapCoords@@@Z");                          // 0x00764002    e8f9feffff
    asm("mov.s              edi, eax");                                      // 0x00764007    8bf8
    asm("test               edi, edi");                                      // 0x00764009    85ff
    asm("{disp8} je         _jmp_addr_0x0076403f");                          // 0x0076400b    7432
    asm("push               0x000000ec");                                    // 0x0076400d    68ec000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x00764012    8d442410
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], 0x00000000");      // 0x00764016    c7860c01000000000000
    asm("mov                edx, dword ptr [edi]");                          // 0x00764020    8b17
    asm("push               eax");                                           // 0x00764022    50
    asm("mov.s              ecx, edi");                                      // 0x00764023    8bcf
    asm("call               dword ptr [edx + 0x104]");                       // 0x00764025    ff9204010000
    asm("push               eax");                                           // 0x0076402b    50
    asm("push               edi");                                           // 0x0076402c    57
    asm("mov.s              ecx, esi");                                      // 0x0076402d    8bce
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x0076402f    e8ec9ce8ff
    asm("pop                edi");                                           // 0x00764034    5f
    asm("mov                eax, 0x00000001");                               // 0x00764035    b801000000
    asm("pop                esi");                                           // 0x0076403a    5e
    asm("add                esp, 0x10");                                     // 0x0076403b    83c410
    asm("ret");                                                              // 0x0076403e    c3
    asm("_jmp_addr_0x0076403f:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x0076403f    8b86bc000000
    asm("push               0x7");                                           // 0x00764045    6a07
    asm("push               0x7");                                           // 0x00764047    6a07
    asm("push               eax");                                           // 0x00764049    50
    asm("mov.s              ecx, esi");                                      // 0x0076404a    8bce
    asm("call               ?FleeFromObjectIfComingTowardsMe@Living@@QAEIPAVGameThingWithPos@@W4VILLAGER_STATES@@1@Z");                          // 0x0076404c    e83fdde8ff
    asm("pop                edi");                                           // 0x00764051    5f
    asm("pop                esi");                                           // 0x00764052    5e
    asm("add                esp, 0x10");                                     // 0x00764053    83c410
    asm("ret");                                                              // 0x00764056    c3
    asm("_jmp_addr_0x00764057:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x0000010c]");             // 0x00764057    8b960c010000
    asm("push               0x000001d5");                                    // 0x0076405d    68d5010000
    asm("inc                edx");                                           // 0x00764062    42
    asm("push               0x00c24588");                                    // 0x00764063    688845c200
    asm("push               0x19");                                          // 0x00764068    6a19
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], edx");             // 0x0076406a    89960c010000
    asm("mov.s              edi, edx");                                      // 0x00764070    8bfa
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00764072    e899a4f7ff
    asm("add                eax, 0x19");                                     // 0x00764077    83c019
    asm("add                esp, 0x0c");                                     // 0x0076407a    83c40c
    asm("cmp.s              edi, eax");                                      // 0x0076407d    3bf8
    asm("{disp8} jbe        _jmp_addr_0x0076408b");                          // 0x0076407f    760a
    asm("mov                edx, dword ptr [esi]");                          // 0x00764081    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764083    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764085    ff929c090000
    asm("_jmp_addr_0x0076408b:");
    asm("pop                edi");                                           // 0x0076408b    5f
    asm("mov                eax, 0x00000001");                               // 0x0076408c    b801000000
    asm("pop                esi");                                           // 0x00764091    5e
    asm("add                esp, 0x10");                                     // 0x00764092    83c410
    asm("ret");                                                              // 0x00764095    c3
    __builtin_unreachable();
}

uint32_t __fastcall NumGameTurnsToReactToPredatorFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    asm("push               esi");                                           // 0x007640a0    56
    asm("mov.s              esi, ecx");                                      // 0x007640a1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007640a3    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007640a5    ff90040b0000
    asm("cmp                al, -0x14");                                     // 0x007640ab    3cec
    asm("{disp8} je         _jmp_addr_0x007640cd");                          // 0x007640ad    741e
    asm("cmp                al, -0x13");                                     // 0x007640af    3ced
    asm("{disp8} je         _jmp_addr_0x007640cd");                          // 0x007640b1    741a
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x007640b3    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x007640b7    8b54240c
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x007640bb    8b442408
    asm("push               ecx");                                           // 0x007640bf    51
    asm("push               edx");                                           // 0x007640c0    52
    asm("push               eax");                                           // 0x007640c1    50
    asm("mov.s              ecx, esi");                                      // 0x007640c2    8bce
    asm("call               ?NumGameTurnsToReactToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");                          // 0x007640c4    e8b7d8e8ff
    asm("pop                esi");                                           // 0x007640c9    5e
    asm("ret                0x000c");                                        // 0x007640ca    c20c00
    asm("_jmp_addr_0x007640cd:");
    asm("mov                eax, 0x7fffffff");                               // 0x007640cd    b8ffffff7f
    asm("pop                esi");                                           // 0x007640d2    5e
    asm("ret                0x000c");                                        // 0x007640d3    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToPredatorFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    asm("push               esi");                                           // 0x007640e0    56
    asm("mov.s              esi, ecx");                                      // 0x007640e1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007640e3    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007640e5    ff90040b0000
    asm("cmp                al, -0x13");                                     // 0x007640eb    3ced
    asm("{disp8} jne        _jmp_addr_0x007640f5");                          // 0x007640ed    7506
    asm("xor.s              eax, eax");                                      // 0x007640ef    33c0
    asm("pop                esi");                                           // 0x007640f1    5e
    asm("ret                0x000c");                                        // 0x007640f2    c20c00
    asm("_jmp_addr_0x007640f5:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x007640f5    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x007640f9    8b54240c
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x007640fd    8b442408
    asm("push               ecx");                                           // 0x00764101    51
    asm("push               edx");                                           // 0x00764102    52
    asm("push               eax");                                           // 0x00764103    50
    asm("mov.s              ecx, esi");                                      // 0x00764104    8bce
    asm("call               ?NumGameTurnsBeforeReactingAgainToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");                          // 0x00764106    e8f5d8e8ff
    asm("pop                esi");                                           // 0x0076410b    5e
    asm("ret                0x000c");                                        // 0x0076410c    c20c00
    __builtin_unreachable();
}

uint32_t __fastcall NumGameTurnsToReactToBurningObjectFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x00764110    8b54240c
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764114    8b01
    asm("push               edx");                                           // 0x00764116    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x00764117    8b54240c
    asm("push               edx");                                           // 0x0076411b    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x0076411c    8b54240c
    asm("push               edx");                                           // 0x00764120    52
    asm("call               dword ptr [eax + 0xac0]");                       // 0x00764121    ff90c00a0000
    asm("ret                0x000c");                                        // 0x00764127    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToBurningObjectFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    asm("push               ebx");                                           // 0x00764130    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x00764131    8b5c2408
    asm("push               esi");                                           // 0x00764135    56
    asm("push               edi");                                           // 0x00764136    57
    asm("mov.s              esi, ecx");                                      // 0x00764137    8bf1
    asm("{disp8} lea        eax, dword ptr [ebx + 0x14]");                   // 0x00764139    8d4314
    asm("push               eax");                                           // 0x0076413c    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0076413d    8d4e14
    asm("push               ecx");                                           // 0x00764140    51
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00764141    e80a8cfeff
    asm("{disp8} mov        edi, dword ptr [esp + 0x1c]");                   // 0x00764146    8b7c241c
    asm("lea                eax, dword ptr [edi + edi * 0x4]");              // 0x0076414a    8d04bf
    asm("lea                edx, dword ptr [eax + eax * 0x4]");              // 0x0076414d    8d1480
    asm("{disp32} fcomp     dword ptr [edx * 0x4 + 0x00d4f6f0]");            // 0x00764150    d81c95f0f6d400
    asm("add                esp, 0x08");                                     // 0x00764157    83c408
    asm("fnstsw             ax");                                            // 0x0076415a    dfe0
    asm("test               ah, 0x01");                                      // 0x0076415c    f6c401
    asm("{disp8} jne        _jmp_addr_0x0076418f");                          // 0x0076415f    752e
    asm("mov                eax, dword ptr [ebx]");                          // 0x00764161    8b03
    asm("mov.s              ecx, ebx");                                      // 0x00764163    8bcb
    asm("call               dword ptr [eax + 0x154]");                       // 0x00764165    ff9054010000
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]");             // 0x0076416b    d81d502c8c00
    asm("fnstsw             ax");                                            // 0x00764171    dfe0
    asm("test               ah, 0x41");                                      // 0x00764173    f6c441
    asm("{disp8} je         _jmp_addr_0x0076418f");                          // 0x00764176    7417
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                   // 0x00764178    8b442418
    asm("mov                edx, dword ptr [esi]");                          // 0x0076417c    8b16
    asm("push               eax");                                           // 0x0076417e    50
    asm("push               edi");                                           // 0x0076417f    57
    asm("push               ebx");                                           // 0x00764180    53
    asm("mov.s              ecx, esi");                                      // 0x00764181    8bce
    asm("call               dword ptr [edx + 0xac4]");                       // 0x00764183    ff92c40a0000
    asm("pop                edi");                                           // 0x00764189    5f
    asm("pop                esi");                                           // 0x0076418a    5e
    asm("pop                ebx");                                           // 0x0076418b    5b
    asm("ret                0x000c");                                        // 0x0076418c    c20c00
    asm("_jmp_addr_0x0076418f:");
    asm("pop                edi");                                           // 0x0076418f    5f
    asm("pop                esi");                                           // 0x00764190    5e
    asm("xor.s              eax, eax");                                      // 0x00764191    33c0
    asm("pop                ebx");                                           // 0x00764193    5b
    asm("ret                0x000c");                                        // 0x00764194    c20c00
    __builtin_unreachable();
}

uint32_t __fastcall NumGameTurnsToReactToShieldFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    asm("push               edi");                                           // 0x007641a0    57
    asm("mov.s              edi, ecx");                                      // 0x007641a1    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x007641a3    8b07
    asm("call               dword ptr [eax + 0x48]");                        // 0x007641a5    ff5048
    asm("test               eax, eax");                                      // 0x007641a8    85c0
    asm("{disp8} je         _jmp_addr_0x00764211");                          // 0x007641aa    7465
    asm("push               0x0000020e");                                    // 0x007641ac    680e020000
    asm("push               0x00c24588");                                    // 0x007641b1    688845c200
    asm("push               0x4");                                           // 0x007641b6    6a04
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x007641b8    e853a3f7ff
    asm("add                esp, 0x0c");                                     // 0x007641bd    83c40c
    asm("test               eax, eax");                                      // 0x007641c0    85c0
    asm("{disp8} je         _jmp_addr_0x00764211");                          // 0x007641c2    744d
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x007641c4    8b0d5c19d000
    asm("mov                edx, dword ptr [edi]");                          // 0x007641ca    8b17
    asm("push               ebx");                                           // 0x007641cc    53
    asm("push               ebp");                                           // 0x007641cd    55
    asm("push               esi");                                           // 0x007641ce    56
    asm("{disp32} mov       esi, dword ptr [ecx + 0x00205a40]");             // 0x007641cf    8bb1405a2000
    asm("mov.s              ecx, edi");                                      // 0x007641d5    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x007641d7    ff5248
    asm("{disp32} mov       ebx, dword ptr [eax + 0x00000eb0]");             // 0x007641da    8b98b00e0000
    asm("{disp8} mov        ebp, dword ptr [edi + 0x28]");                   // 0x007641e0    8b6f28
    asm("push               0x00000210");                                    // 0x007641e3    6810020000
    asm("push               0x00c24588");                                    // 0x007641e8    688845c200
    asm("push               0x32");                                          // 0x007641ed    6a32
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x007641ef    e81ca3f7ff
    asm("{disp32} mov       ecx, dword ptr [ebp + 0x00000364]");             // 0x007641f4    8b8d64030000
    asm("sub.s              esi, ebx");                                      // 0x007641fa    2bf3
    asm("add                esp, 0x0c");                                     // 0x007641fc    83c40c
    asm("add.s              eax, esi");                                      // 0x007641ff    03c6
    asm("cmp.s              eax, ecx");                                      // 0x00764201    3bc1
    asm("pop                esi");                                           // 0x00764203    5e
    asm("pop                ebp");                                           // 0x00764204    5d
    asm("pop                ebx");                                           // 0x00764205    5b
    asm("{disp8} jae        _jmp_addr_0x00764211");                          // 0x00764206    7309
    asm("mov                eax, 0x7fffffff");                               // 0x00764208    b8ffffff7f
    asm("pop                edi");                                           // 0x0076420d    5f
    asm("ret                0x000c");                                        // 0x0076420e    c20c00
    asm("_jmp_addr_0x00764211:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00764211    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x00764215    8b54240c
    asm("mov                eax, dword ptr [edi]");                          // 0x00764219    8b07
    asm("push               ecx");                                           // 0x0076421b    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x0076421c    8b4c240c
    asm("push               edx");                                           // 0x00764220    52
    asm("push               ecx");                                           // 0x00764221    51
    asm("mov.s              ecx, edi");                                      // 0x00764222    8bcf
    asm("call               dword ptr [eax + 0xac0]");                       // 0x00764224    ff90c00a0000
    asm("pop                edi");                                           // 0x0076422a    5f
    asm("ret                0x000c");                                        // 0x0076422b    c20c00
    __builtin_unreachable();
}

uint32_t __fastcall NumGameTurnsBeforeReactingToShieldAgainFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    asm("push               esi");                                           // 0x00764230    56
    asm("mov.s              esi, ecx");                                      // 0x00764231    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00764233    8b06
    asm("push               edi");                                           // 0x00764235    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00764236    ff5048
    asm("test               eax, eax");                                      // 0x00764239    85c0
    asm("{disp8} je         _jmp_addr_0x0076426f");                          // 0x0076423b    7432
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0076423d    8b0d5c19d000
    asm("{disp32} mov       edi, dword ptr [ecx + 0x00205a40]");             // 0x00764243    8bb9405a2000
    asm("mov                edx, dword ptr [esi]");                          // 0x00764249    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076424b    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x0076424d    ff5248
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000eb0]");             // 0x00764250    8b90b00e0000
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00764256    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000364]");             // 0x00764259    8b8864030000
    asm("sub.s              edi, edx");                                      // 0x0076425f    2bfa
    asm("cmp.s              edi, ecx");                                      // 0x00764261    3bf9
    asm("{disp8} jbe        _jmp_addr_0x0076426f");                          // 0x00764263    760a
    asm("pop                edi");                                           // 0x00764265    5f
    asm("mov                eax, 0x7fffffff");                               // 0x00764266    b8ffffff7f
    asm("pop                esi");                                           // 0x0076426b    5e
    asm("ret                0x000c");                                        // 0x0076426c    c20c00
    asm("_jmp_addr_0x0076426f:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0076426f    8b7c240c
    asm("mov                edx, dword ptr [edi]");                          // 0x00764273    8b17
    asm("mov.s              ecx, edi");                                      // 0x00764275    8bcf
    asm("call               dword ptr [edx + 0x4c8]");                       // 0x00764277    ff92c8040000
    asm("test               eax, eax");                                      // 0x0076427d    85c0
    asm("{disp8} je         _jmp_addr_0x0076429a");                          // 0x0076427f    7419
    asm("push               0x0");                                           // 0x00764281    6a00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000080]");             // 0x00764283    8d8e80000000
    asm("push               ecx");                                           // 0x00764289    51
    asm("mov.s              ecx, eax");                                      // 0x0076428a    8bc8
    asm("call               _jmp_addr_0x0072bd20");                          // 0x0076428c    e88f7afcff
    asm("test               eax, eax");                                      // 0x00764291    85c0
    asm("{disp8} jne        _jmp_addr_0x0076429a");                          // 0x00764293    7505
    asm("pop                edi");                                           // 0x00764295    5f
    asm("pop                esi");                                           // 0x00764296    5e
    asm("ret                0x000c");                                        // 0x00764297    c20c00
    asm("_jmp_addr_0x0076429a:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x0076429a    8b442414
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0076429e    8b4c2410
    asm("mov                edx, dword ptr [esi]");                          // 0x007642a2    8b16
    asm("push               eax");                                           // 0x007642a4    50
    asm("push               ecx");                                           // 0x007642a5    51
    asm("push               edi");                                           // 0x007642a6    57
    asm("mov.s              ecx, esi");                                      // 0x007642a7    8bce
    asm("call               dword ptr [edx + 0xac4]");                       // 0x007642a9    ff92c40a0000
    asm("pop                edi");                                           // 0x007642af    5f
    asm("pop                esi");                                           // 0x007642b0    5e
    asm("ret                0x000c");                                        // 0x007642b1    c20c00
    __builtin_unreachable();
}

bool __fastcall LookingAtObjectReaction__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x007642c0    56
    asm("mov.s              esi, ecx");                                      // 0x007642c1    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007642c3    8b86bc000000
    asm("test               eax, eax");                                      // 0x007642c9    85c0
    asm("{disp8} je         _jmp_addr_0x007642d6");                          // 0x007642cb    7409
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x007642cd    e88e87e8ff
    asm("test               eax, eax");                                      // 0x007642d2    85c0
    asm("{disp8} jne        _jmp_addr_0x007642e7");                          // 0x007642d4    7511
    asm("_jmp_addr_0x007642d6:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007642d6    8b06
    asm("mov.s              ecx, esi");                                      // 0x007642d8    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x007642da    ff909c090000
    asm("mov                eax, 0x00000001");                               // 0x007642e0    b801000000
    asm("pop                esi");                                           // 0x007642e5    5e
    asm("ret");                                                              // 0x007642e6    c3
    asm("_jmp_addr_0x007642e7:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x007642e7    8b8ebc000000
    asm("mov                edx, dword ptr [ecx]");                          // 0x007642ed    8b11
    asm("call               dword ptr [edx + 0x2c]");                        // 0x007642ef    ff522c
    asm("test               eax, eax");                                      // 0x007642f2    85c0
    asm("{disp8} jne        _jmp_addr_0x00764307");                          // 0x007642f4    7511
    asm("mov                eax, dword ptr [esi]");                          // 0x007642f6    8b06
    asm("mov.s              ecx, esi");                                      // 0x007642f8    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x007642fa    ff909c090000
    asm("mov                eax, 0x00000001");                               // 0x00764300    b801000000
    asm("pop                esi");                                           // 0x00764305    5e
    asm("ret");                                                              // 0x00764306    c3
    asm("_jmp_addr_0x00764307:");
    asm("mov.s              ecx, esi");                                      // 0x00764307    8bce
    asm("call               ?LookingAtObjectReaction@PuzzleHorse@@UAE_NXZ"); // 0x00764309    e892e0e8ff
    asm("pop                esi");                                           // 0x0076430e    5e
    asm("ret");                                                              // 0x0076430f    c3
    __builtin_unreachable();
}

bool __fastcall FleeingAndLookingAtObjectReaction__8VillagerFv(struct Living* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764310    8b01
    asm("jmp                dword ptr [eax + 0x88c]");                       // 0x00764312    ffa08c080000
    __builtin_unreachable();
}

bool __fastcall FollowingObjectReaction__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x00764320    56
    asm("mov.s              esi, ecx");                                      // 0x00764321    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764323    8b8ebc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764329    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0076432b    ff502c
    asm("test               eax, eax");                                      // 0x0076432e    85c0
    asm("{disp8} jne        _jmp_addr_0x00764343");                          // 0x00764330    7511
    asm("mov                edx, dword ptr [esi]");                          // 0x00764332    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764334    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764336    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x0076433c    b801000000
    asm("pop                esi");                                           // 0x00764341    5e
    asm("ret");                                                              // 0x00764342    c3
    asm("_jmp_addr_0x00764343:");
    asm("mov.s              ecx, esi");                                      // 0x00764343    8bce
    asm("call               ?FollowingObjectReaction@PuzzleHorse@@UAE_NXZ"); // 0x00764345    e8e6e0e8ff
    asm("pop                esi");                                           // 0x0076434a    5e
    asm("ret");                                                              // 0x0076434b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall InspectObjectReaction__8VillagerFv(struct Living* this)
{
    asm("sub                esp, 0x08");                                     // 0x00764350    83ec08
    asm("push               esi");                                           // 0x00764353    56
    asm("mov.s              esi, ecx");                                      // 0x00764354    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764356    8b8ebc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076435c    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0076435e    ff502c
    asm("test               eax, eax");                                      // 0x00764361    85c0
    asm("{disp8} jne        _jmp_addr_0x00764379");                          // 0x00764363    7514
    asm("mov                edx, dword ptr [esi]");                          // 0x00764365    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764367    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764369    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x0076436f    b801000000
    asm("pop                esi");                                           // 0x00764374    5e
    asm("add                esp, 0x08");                                     // 0x00764375    83c408
    asm("ret");                                                              // 0x00764378    c3
    asm("_jmp_addr_0x00764379:");
    asm("push               ebx");                                           // 0x00764379    53
    asm("push               edi");                                           // 0x0076437a    57
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], 0x41a00000");      // 0x0076437b    c7860c0100000000a041
    asm("{disp32} mov       edi, dword ptr [data_bytes + 0x33ba38]");        // 0x00764385    8b3d381ad000
    asm("xor.s              edx, edx");                                      // 0x0076438b    33d2
    asm("mov                eax, 0x000003e8");                               // 0x0076438d    b8e8030000
    asm("div                edi");                                           // 0x00764392    f7f7
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00764394    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x0076439c    8944240c
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                        // 0x007643a0    df6c240c
    asm("{disp32} fmul      dword ptr [__real@3fc00000]");                   // 0x007643a4    d80d4cb28a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x007643aa    e851d00300
    asm("mov.s              ebx, eax");                                      // 0x007643af    8bd8
    asm("xor.s              edx, edx");                                      // 0x007643b1    33d2
    asm("mov                eax, 0x000003e8");                               // 0x007643b3    b8e8030000
    asm("div                edi");                                           // 0x007643b8    f7f7
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x007643ba    c744241000000000
    asm("push               0x00000259");                                    // 0x007643c2    6859020000
    asm("push               0x00c24588");                                    // 0x007643c7    688845c200
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x007643cc    89442414
    asm("{disp8} fild       qword ptr [esp + 0x14]");                        // 0x007643d0    df6c2414
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x19c50]");             // 0x007643d4    d80d502c8c00
    asm("call               _jmp_addr_0x007a1400");                          // 0x007643da    e821d00300
    asm("push               eax");                                           // 0x007643df    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x007643e0    e82ba1f7ff
    asm("add.s              eax, ebx");                                      // 0x007643e5    03c3
    asm("add                esp, 0x0c");                                     // 0x007643e7    83c40c
    asm("{disp32} mov       dword ptr [esi + 0x00000110], eax");             // 0x007643ea    898610010000
    asm("mov                eax, dword ptr [esi]");                          // 0x007643f0    8b06
    asm("push               0x00000084");                                    // 0x007643f2    6884000000
    asm("mov.s              ecx, esi");                                      // 0x007643f7    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007643f9    ff90e8080000
    asm("pop                edi");                                           // 0x007643ff    5f
    asm("pop                ebx");                                           // 0x00764400    5b
    asm("mov                eax, 0x00000001");                               // 0x00764401    b801000000
    asm("pop                esi");                                           // 0x00764406    5e
    asm("add                esp, 0x08");                                     // 0x00764407    83c408
    asm("ret");                                                              // 0x0076440a    c3
    __builtin_unreachable();
}

bool32_t __fastcall PerformInspectionReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00764410    56
    asm("mov.s              esi, ecx");                                      // 0x00764411    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764413    8b8ebc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764419    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0076441b    ff502c
    asm("test               eax, eax");                                      // 0x0076441e    85c0
    asm("{disp8} jne        _jmp_addr_0x00764433");                          // 0x00764420    7511
    asm("mov                edx, dword ptr [esi]");                          // 0x00764422    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764424    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764426    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x0076442c    b801000000
    asm("pop                esi");                                           // 0x00764431    5e
    asm("ret");                                                              // 0x00764432    c3
    asm("_jmp_addr_0x00764433:");
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                  // 0x00764433    d9860c010000
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00764439    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x0076443f    dfe0
    asm("test               ah, 0x01");                                      // 0x00764441    f6c401
    asm("{disp8} je         _jmp_addr_0x00764457");                          // 0x00764444    7411
    asm("mov                eax, dword ptr [esi]");                          // 0x00764446    8b06
    asm("mov.s              ecx, esi");                                      // 0x00764448    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x0076444a    ff909c090000
    asm("mov                eax, 0x00000001");                               // 0x00764450    b801000000
    asm("pop                esi");                                           // 0x00764455    5e
    asm("ret");                                                              // 0x00764456    c3
    asm("_jmp_addr_0x00764457:");
    asm("dec                dword ptr [esi + 0x00000110]");                  // 0x00764457    ff8e10010000
    asm("{disp8} jne        _jmp_addr_0x00764475");                          // 0x0076445d    7516
    asm("mov                edx, dword ptr [esi]");                          // 0x0076445f    8b16
    asm("push               0x00000085");                                    // 0x00764461    6885000000
    asm("mov.s              ecx, esi");                                      // 0x00764466    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00764468    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x0076446e    b801000000
    asm("pop                esi");                                           // 0x00764473    5e
    asm("ret");                                                              // 0x00764474    c3
    asm("_jmp_addr_0x00764475:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00764475    8b86bc000000
    asm("push               0x1");                                           // 0x0076447b    6a01
    asm("push               eax");                                           // 0x0076447d    50
    asm("mov.s              ecx, esi");                                      // 0x0076447e    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00764480    e89b80e8ff
    asm("mov                eax, 0x00000001");                               // 0x00764485    b801000000
    asm("pop                esi");                                           // 0x0076448a    5e
    asm("ret");                                                              // 0x0076448b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ApproachObjectReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x00764490    83ec14
    asm("push               esi");                                           // 0x00764493    56
    asm("mov.s              esi, ecx");                                      // 0x00764494    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764496    8b8ebc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076449c    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0076449e    ff502c
    asm("test               eax, eax");                                      // 0x007644a1    85c0
    asm("{disp8} jne        _jmp_addr_0x007644b9");                          // 0x007644a3    7514
    asm("mov                edx, dword ptr [esi]");                          // 0x007644a5    8b16
    asm("mov.s              ecx, esi");                                      // 0x007644a7    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x007644a9    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x007644af    b801000000
    asm("pop                esi");                                           // 0x007644b4    5e
    asm("add                esp, 0x14");                                     // 0x007644b5    83c414
    asm("ret");                                                              // 0x007644b8    c3
    asm("_jmp_addr_0x007644b9:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007644b9    8b86bc000000
    asm("push               ebx");                                           // 0x007644bf    53
    asm("push               ebp");                                           // 0x007644c0    55
    asm("push               edi");                                           // 0x007644c1    57
    asm("add                eax, 0x14");                                     // 0x007644c2    83c014
    asm("push               eax");                                           // 0x007644c5    50
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x007644c6    8d7e14
    asm("push               edi");                                           // 0x007644c9    57
    asm("call               _jmp_addr_0x0074cd50");                          // 0x007644ca    e88188feff
    asm("{disp8} fst        dword ptr [esp + 0x18]");                        // 0x007644cf    d9542418
    asm("{disp32} fsub      dword ptr [esi + 0x0000010c]");                  // 0x007644d3    d8a60c010000
    asm("add                esp, 0x08");                                     // 0x007644d9    83c408
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x007644dc    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x007644e2    dfe0
    asm("test               ah, 0x41");                                      // 0x007644e4    f6c441
    asm("{disp32} jne       _jmp_addr_0x0076457a");                          // 0x007644e7    0f858d000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007644ed    8b86bc000000
    asm("add                eax, 0x14");                                     // 0x007644f3    83c014
    asm("push               eax");                                           // 0x007644f6    50
    asm("push               edi");                                           // 0x007644f7    57
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                               // 0x007644f8    e8438dfeff
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                  // 0x007644fd    d9860c010000
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00764503    d9442418
    asm("add                esp, 0x04");                                     // 0x00764507    83c404
    asm("fsub               st, st(1)");                                     // 0x0076450a    d8e1
    asm("mov.s              ebx, eax");                                      // 0x0076450c    8bd8
    asm("fstp               dword ptr [esp]");                               // 0x0076450e    d91c24
    asm("fstp               st(0)");                                         // 0x00764511    ddd8
    asm("call               _jmp_addr_0x0074e1d0");                          // 0x00764513    e8b89cfeff
    asm("push               eax");                                           // 0x00764518    50
    asm("push               ebx");                                           // 0x00764519    53
    asm("call               _jmp_addr_0x0074d3e0");                          // 0x0076451a    e8c18efeff
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                  // 0x0076451f    d9860c010000
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00764525    d944241c
    asm("add                esp, 0x08");                                     // 0x00764529    83c408
    asm("fsub               st, st(1)");                                     // 0x0076452c    d8e1
    asm("mov.s              ebp, eax");                                      // 0x0076452e    8be8
    asm("fstp               dword ptr [esp]");                               // 0x00764530    d91c24
    asm("fstp               st(0)");                                         // 0x00764533    ddd8
    asm("call               _jmp_addr_0x0074e200");                          // 0x00764535    e8c69cfeff
    asm("push               eax");                                           // 0x0076453a    50
    asm("push               ebx");                                           // 0x0076453b    53
    asm("call               _jmp_addr_0x0074d400");                          // 0x0076453c    e8bf8efeff
    asm("mov                ecx, dword ptr [edi]");                          // 0x00764541    8b0f
    asm("{disp8} mov        edx, dword ptr [edi + 0x04]");                   // 0x00764543    8b5704
    asm("{disp8} mov        edi, dword ptr [edi + 0x08]");                   // 0x00764546    8b7f08
    asm("add                esp, 0x0c");                                     // 0x00764549    83c40c
    asm("add.s              ecx, ebp");                                      // 0x0076454c    03cd
    asm("add.s              edx, eax");                                      // 0x0076454e    03d0
    asm("push               0x00000085");                                    // 0x00764550    6885000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x00764555    8d44241c
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x00764559    894c241c
    asm("push               eax");                                           // 0x0076455d    50
    asm("mov.s              ecx, esi");                                      // 0x0076455e    8bce
    asm("{disp8} mov        dword ptr [esp + 0x28], edi");                   // 0x00764560    897c2428
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                   // 0x00764564    89542424
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00764568    e823e3e8ff
    asm("pop                edi");                                           // 0x0076456d    5f
    asm("pop                ebp");                                           // 0x0076456e    5d
    asm("pop                ebx");                                           // 0x0076456f    5b
    asm("mov                eax, 0x00000001");                               // 0x00764570    b801000000
    asm("pop                esi");                                           // 0x00764575    5e
    asm("add                esp, 0x14");                                     // 0x00764576    83c414
    asm("ret");                                                              // 0x00764579    c3
    asm("_jmp_addr_0x0076457a:");
    asm("{disp32} mov       edi, dword ptr [data_bytes + 0x33ba38]");        // 0x0076457a    8b3d381ad000
    asm("xor.s              edx, edx");                                      // 0x00764580    33d2
    asm("mov                eax, 0x000003e8");                               // 0x00764582    b8e8030000
    asm("div                edi");                                           // 0x00764587    f7f7
    asm("xor.s              ebp, ebp");                                      // 0x00764589    33ed
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                   // 0x0076458b    896c2414
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0076458f    89442410
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x00764593    df6c2410
    asm("{disp32} fmul      dword ptr [__real@3fc00000]");                   // 0x00764597    d80d4cb28a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x0076459d    e85ece0300
    asm("mov.s              ebx, eax");                                      // 0x007645a2    8bd8
    asm("xor.s              edx, edx");                                      // 0x007645a4    33d2
    asm("mov                eax, 0x000003e8");                               // 0x007645a6    b8e8030000
    asm("div                edi");                                           // 0x007645ab    f7f7
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                   // 0x007645ad    896c2414
    asm("push               0x00000299");                                    // 0x007645b1    6899020000
    asm("push               0x00c24588");                                    // 0x007645b6    688845c200
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x007645bb    89442418
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x007645bf    df6c2418
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x19c50]");             // 0x007645c3    d80d502c8c00
    asm("call               _jmp_addr_0x007a1400");                          // 0x007645c9    e832ce0300
    asm("push               eax");                                           // 0x007645ce    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x007645cf    e83c9ff7ff
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                  // 0x007645d4    d9860c010000
    asm("mov                edx, dword ptr [esi]");                          // 0x007645da    8b16
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x19c70]");             // 0x007645dc    d825702c8c00
    asm("add                esp, 0x0c");                                     // 0x007645e2    83c40c
    asm("add.s              eax, ebx");                                      // 0x007645e5    03c3
    asm("push               0x00000084");                                    // 0x007645e7    6884000000
    asm("{disp32} fstp      dword ptr [esi + 0x0000010c]");                  // 0x007645ec    d99e0c010000
    asm("mov.s              ecx, esi");                                      // 0x007645f2    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000110], eax");             // 0x007645f4    898610010000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007645fa    ff92e8080000
    asm("pop                edi");                                           // 0x00764600    5f
    asm("pop                ebp");                                           // 0x00764601    5d
    asm("pop                ebx");                                           // 0x00764602    5b
    asm("mov                eax, 0x00000001");                               // 0x00764603    b801000000
    asm("pop                esi");                                           // 0x00764608    5e
    asm("add                esp, 0x14");                                     // 0x00764609    83c414
    asm("ret");                                                              // 0x0076460c    c3
    __builtin_unreachable();
}

bool32_t __fastcall InitialiseTellOthersAboutObject__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00764610    56
    asm("mov.s              esi, ecx");                                      // 0x00764611    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764613    8b8ebc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764619    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0076461b    ff502c
    asm("test               eax, eax");                                      // 0x0076461e    85c0
    asm("{disp8} jne        _jmp_addr_0x00764633");                          // 0x00764620    7511
    asm("mov                edx, dword ptr [esi]");                          // 0x00764622    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764624    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764626    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x0076462c    b801000000
    asm("pop                esi");                                           // 0x00764631    5e
    asm("ret");                                                              // 0x00764632    c3
    asm("_jmp_addr_0x00764633:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00764633    8b06
    asm("push               0x00000087");                                    // 0x00764635    6887000000
    asm("mov.s              ecx, esi");                                      // 0x0076463a    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0076463c    66c746580000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00764642    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00764648    b801000000
    asm("pop                esi");                                           // 0x0076464d    5e
    asm("ret");                                                              // 0x0076464e    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall TellOthersAboutInterestingObject__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall InitialiseLookAroundForVillagerToTell__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall LookAroundForVillagerToTell__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ApproachVillagerToTalkTo__8VillagerFv(struct Villager* this)
{
    return 0;
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall TellParticularVillagerAboutObject__8VillagerFv(struct Villager* this)
{
    return 0;
}

bool __fastcall GotoFoodReaction__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x007646a0    56
    asm("mov.s              esi, ecx");                                      // 0x007646a1    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x007646a3    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x007646a9    85c9
    asm("{disp8} je         _jmp_addr_0x007646bf");                          // 0x007646ab    7412
    asm("mov                eax, dword ptr [ecx]");                          // 0x007646ad    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x007646af    ff502c
    asm("test               eax, eax");                                      // 0x007646b2    85c0
    asm("{disp8} je         _jmp_addr_0x007646bf");                          // 0x007646b4    7409
    asm("mov.s              ecx, esi");                                      // 0x007646b6    8bce
    asm("call               ?GotoFoodReaction@PuzzleHorse@@UAE_NXZ");        // 0x007646b8    e893dee8ff
    asm("pop                esi");                                           // 0x007646bd    5e
    asm("ret");                                                              // 0x007646be    c3
    asm("_jmp_addr_0x007646bf:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007646bf    8b16
    asm("mov.s              ecx, esi");                                      // 0x007646c1    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x007646c3    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x007646c9    b801000000
    asm("pop                esi");                                           // 0x007646ce    5e
    asm("ret");                                                              // 0x007646cf    c3
    __builtin_unreachable();
}

bool __fastcall GotoWoodReaction__8VillagerFv(struct Living* this)
{
    asm("push               esi");                                           // 0x007646d0    56
    asm("mov.s              esi, ecx");                                      // 0x007646d1    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x007646d3    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x007646d9    85c9
    asm("{disp8} je         _jmp_addr_0x00764704");                          // 0x007646db    7427
    asm("mov                eax, dword ptr [ecx]");                          // 0x007646dd    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x007646df    ff502c
    asm("test               eax, eax");                                      // 0x007646e2    85c0
    asm("{disp8} je         _jmp_addr_0x00764704");                          // 0x007646e4    741e
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x007646e6    8b8ebc000000
    asm("test               byte ptr [ecx + 0x24], 0x04");                   // 0x007646ec    f6412404
    asm("{disp8} jne        _jmp_addr_0x00764704");                          // 0x007646f0    7512
    asm("call               _jmp_addr_0x00637cc0");                          // 0x007646f2    e8c935edff
    asm("test               eax, eax");                                      // 0x007646f7    85c0
    asm("{disp8} jne        _jmp_addr_0x00764704");                          // 0x007646f9    7509
    asm("mov.s              ecx, esi");                                      // 0x007646fb    8bce
    asm("call               ?GotoWoodReaction@PuzzleHorse@@UAE_NXZ");        // 0x007646fd    e8bedee8ff
    asm("pop                esi");                                           // 0x00764702    5e
    asm("ret");                                                              // 0x00764703    c3
    asm("_jmp_addr_0x00764704:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00764704    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764706    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764708    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x0076470e    b801000000
    asm("pop                esi");                                           // 0x00764713    5e
    asm("ret");                                                              // 0x00764714    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall ArrivesAtWoodReaction__8VillagerFv(struct Living* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00764720    83ec0c
    asm("push               ebx");                                           // 0x00764723    53
    asm("push               esi");                                           // 0x00764724    56
    asm("push               edi");                                           // 0x00764725    57
    asm("push               0x0");                                           // 0x00764726    6a00
    asm("push               0x009c7f50");                                    // 0x00764728    68507f9c00
    asm("mov.s              esi, ecx");                                      // 0x0076472d    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x0076472f    8b86bc000000
    asm("push               0x009c7f30");                                    // 0x00764735    68307f9c00
    asm("push               0x0");                                           // 0x0076473a    6a00
    asm("push               eax");                                           // 0x0076473c    50
    asm("call               ___RTDynamicCast");                              // 0x0076473d    e8d7120600
    asm("mov.s              edi, eax");                                      // 0x00764742    8bf8
    asm("add                esp, 0x14");                                     // 0x00764744    83c414
    asm("test               edi, edi");                                      // 0x00764747    85ff
    asm("{disp32} je        _jmp_addr_0x007648ab");                          // 0x00764749    0f845c010000
    asm("mov                eax, dword ptr [edi]");                          // 0x0076474f    8b07
    asm("mov.s              ecx, edi");                                      // 0x00764751    8bcf
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00764753    ff502c
    asm("test               eax, eax");                                      // 0x00764756    85c0
    asm("{disp32} je        _jmp_addr_0x007648ab");                          // 0x00764758    0f844d010000
    asm("test               byte ptr [edi + 0x24], 0x04");                   // 0x0076475e    f6472404
    asm("{disp32} jne       _jmp_addr_0x007648ab");                          // 0x00764762    0f8543010000
    asm("mov.s              ecx, edi");                                      // 0x00764768    8bcf
    asm("call               _jmp_addr_0x00637cc0");                          // 0x0076476a    e85135edff
    asm("test               eax, eax");                                      // 0x0076476f    85c0
    asm("{disp32} jne       _jmp_addr_0x007648ab");                          // 0x00764771    0f8534010000
    asm("test               byte ptr [edi + 0x24], 0x40");                   // 0x00764777    f6472440
    asm("{disp32} je        _jmp_addr_0x00764856");                          // 0x0076477b    0f84d5000000
    asm("xor.s              edx, edx");                                      // 0x00764781    33d2
    asm("mov                eax, 0x000003e8");                               // 0x00764783    b8e8030000
    asm("div                dword ptr [data_bytes + 0x33ba38]");             // 0x00764788    f735381ad000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000094]");             // 0x0076478e    8b8e94000000
    asm("{disp8} mov        ebx, dword ptr [ecx + 0x24]");                   // 0x00764794    8b5924
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00764797    c744241000000000
    asm("push               ebp");                                           // 0x0076479f    55
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x007647a0    89442410
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x007647a4    df6c2410
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x241c]");              // 0x007647a8    d80d1cb48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x007647ae    e84dcc0300
    asm("push               ebx");                                           // 0x007647b3    53
    asm("mov.s              ecx, esi");                                      // 0x007647b4    8bce
    asm("mov.s              ebp, eax");                                      // 0x007647b6    8be8
    asm("call               _jmp_addr_0x005f0fb0");                          // 0x007647b8    e8f3c7e8ff
    asm("{disp32} mov       edx, dword ptr [_game]");                        // 0x007647bd    8b155c19d000
    asm("{disp32} mov       ecx, dword ptr [edx + 0x00205a40]");             // 0x007647c3    8b8a405a2000
    asm("sub.s              ecx, eax");                                      // 0x007647c9    2bc8
    asm("cmp.s              ecx, ebp");                                      // 0x007647cb    3bcd
    asm("pop                ebp");                                           // 0x007647cd    5d
    asm("{disp32} ja        _jmp_addr_0x007648ab");                          // 0x007647ce    0f87d7000000
    asm("mov                eax, dword ptr [edi]");                          // 0x007647d4    8b07
    asm("push               esi");                                           // 0x007647d6    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x007647d7    8d4c2410
    asm("push               ecx");                                           // 0x007647db    51
    asm("mov.s              ecx, edi");                                      // 0x007647dc    8bcf
    asm("call               dword ptr [eax + 0x648]");                       // 0x007647de    ff9048060000
    asm("mov                edx, dword ptr [esi]");                          // 0x007647e4    8b16
    asm("push               0x3f000000");                                    // 0x007647e6    680000003f
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x007647eb    8d442410
    asm("push               eax");                                           // 0x007647ef    50
    asm("mov.s              ecx, esi");                                      // 0x007647f0    8bce
    asm("call               dword ptr [edx + 0x85c]");                       // 0x007647f2    ff925c080000
    asm("test               eax, eax");                                      // 0x007647f8    85c0
    asm("{disp8} je         _jmp_addr_0x00764833");                          // 0x007647fa    7437
    asm("push               0x1");                                           // 0x007647fc    6a01
    asm("push               edi");                                           // 0x007647fe    57
    asm("mov.s              ecx, esi");                                      // 0x007647ff    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00764801    e81a7de8ff
    asm("test               eax, eax");                                      // 0x00764806    85c0
    asm("{disp32} je        _jmp_addr_0x007648ba");                          // 0x00764808    0f84ac000000
    asm("mov                edx, dword ptr [esi]");                          // 0x0076480e    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764810    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x00764812    ff92040b0000
    asm("mov.s              ecx, esi");                                      // 0x00764818    8bce
    asm("and                eax, 0x000000ff");                               // 0x0076481a    25ff000000
    asm("push               eax");                                           // 0x0076481f    50
    asm("push               0xa");                                           // 0x00764820    6a0a
    asm("call               ?SetupWaitForCounter@Villager@@QAEIGW4VILLAGER_STATES@@@Z");                          // 0x00764822    e839680000
    asm("pop                edi");                                           // 0x00764827    5f
    asm("pop                esi");                                           // 0x00764828    5e
    asm("mov                eax, 0x00000001");                               // 0x00764829    b801000000
    asm("pop                ebx");                                           // 0x0076482e    5b
    asm("add                esp, 0x0c");                                     // 0x0076482f    83c40c
    asm("ret");                                                              // 0x00764832    c3
    asm("_jmp_addr_0x00764833:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00764833    8b06
    asm("mov.s              ecx, esi");                                      // 0x00764835    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00764837    ff90040b0000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0076483d    8d4c240c
    asm("push               eax");                                           // 0x00764841    50
    asm("push               ecx");                                           // 0x00764842    51
    asm("mov.s              ecx, esi");                                      // 0x00764843    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00764845    e846e0e8ff
    asm("pop                edi");                                           // 0x0076484a    5f
    asm("pop                esi");                                           // 0x0076484b    5e
    asm("mov                eax, 0x00000001");                               // 0x0076484c    b801000000
    asm("pop                ebx");                                           // 0x00764851    5b
    asm("add                esp, 0x0c");                                     // 0x00764852    83c40c
    asm("ret");                                                              // 0x00764855    c3
    asm("_jmp_addr_0x00764856:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00764856    8b17
    asm("mov.s              ecx, edi");                                      // 0x00764858    8bcf
    asm("call               dword ptr [edx + 0x690]");                       // 0x0076485a    ff9290060000
    asm("cmp                eax, 0x01");                                     // 0x00764860    83f801
    asm("{disp8} jne        _jmp_addr_0x0076489d");                          // 0x00764863    7538
    asm("mov.s              ecx, esi");                                      // 0x00764865    8bce
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x00764867    e884ccfeff
    asm("movsx              eax, ax");                                       // 0x0076486c    0fbfc0
    asm("test               eax, eax");                                      // 0x0076486f    85c0
    asm("{disp8} jle        _jmp_addr_0x0076489d");                          // 0x00764871    7e2a
    asm("mov                edx, dword ptr [edi]");                          // 0x00764873    8b17
    asm("push               0x0");                                           // 0x00764875    6a00
    asm("push               0x0");                                           // 0x00764877    6a00
    asm("push               eax");                                           // 0x00764879    50
    asm("push               0x1");                                           // 0x0076487a    6a01
    asm("mov.s              ecx, edi");                                      // 0x0076487c    8bcf
    asm("call               dword ptr [edx + 0xa0]");                        // 0x0076487e    ff92a0000000
    asm("mov.s              ebx, eax");                                      // 0x00764884    8bd8
    asm("test               ebx, ebx");                                      // 0x00764886    85db
    asm("{disp8} jle        _jmp_addr_0x0076489d");                          // 0x00764888    7e13
    asm("mov                eax, dword ptr [edi]");                          // 0x0076488a    8b07
    asm("mov.s              ecx, edi");                                      // 0x0076488c    8bcf
    asm("call               dword ptr [eax + 0x820]");                       // 0x0076488e    ff9020080000
    asm("push               eax");                                           // 0x00764894    50
    asm("push               ebx");                                           // 0x00764895    53
    asm("mov.s              ecx, esi");                                      // 0x00764896    8bce
    asm("call               ?PickupWood@Villager@@QAEXFE@Z");                // 0x00764898    e813ccfeff
    asm("_jmp_addr_0x0076489d:");
    asm("mov.s              ecx, esi");                                      // 0x0076489d    8bce
    asm("call               ?GotWoodDecideWhatToDo@Villager@@QAEIXZ");       // 0x0076489f    e88cb3ffff
    asm("pop                edi");                                           // 0x007648a4    5f
    asm("pop                esi");                                           // 0x007648a5    5e
    asm("pop                ebx");                                           // 0x007648a6    5b
    asm("add                esp, 0x0c");                                     // 0x007648a7    83c40c
    asm("ret");                                                              // 0x007648aa    c3
    asm("_jmp_addr_0x007648ab:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007648ab    8b16
    asm("push               0x000000a3");                                    // 0x007648ad    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x007648b2    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007648b4    ff92e8080000
    asm("_jmp_addr_0x007648ba:");
    asm("pop                edi");                                           // 0x007648ba    5f
    asm("pop                esi");                                           // 0x007648bb    5e
    asm("mov                eax, 0x00000001");                               // 0x007648bc    b801000000
    asm("pop                ebx");                                           // 0x007648c1    5b
    asm("add                esp, 0x0c");                                     // 0x007648c2    83c40c
    asm("ret");                                                              // 0x007648c5    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall StandardNumGameTurnsBeforeReactingToWoodAgainFunction__8VillagerFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3)
{
    asm("push               esi");                                           // 0x007648d0    56
    asm("mov.s              esi, ecx");                                      // 0x007648d1    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x007648d3    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x007648d5    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x007648db    25ff000000
    asm("cmp                eax, 0x2f");                                     // 0x007648e0    83f82f
    asm("{disp8} jl         _jmp_addr_0x007648f5");                          // 0x007648e3    7c10
    asm("cmp                eax, 0x32");                                     // 0x007648e5    83f832
    asm("{disp8} jle        _jmp_addr_0x007648ef");                          // 0x007648e8    7e05
    asm("cmp                eax, 0x34");                                     // 0x007648ea    83f834
    asm("{disp8} jne        _jmp_addr_0x007648f5");                          // 0x007648ed    7506
    asm("_jmp_addr_0x007648ef:");
    asm("xor.s              eax, eax");                                      // 0x007648ef    33c0
    asm("pop                esi");                                           // 0x007648f1    5e
    asm("ret                0x000c");                                        // 0x007648f2    c20c00
    asm("_jmp_addr_0x007648f5:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x007648f5    8b442410
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x007648f9    8b4c240c
    asm("mov                edx, dword ptr [esi]");                          // 0x007648fd    8b16
    asm("push               eax");                                           // 0x007648ff    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x00764900    8b44240c
    asm("push               ecx");                                           // 0x00764904    51
    asm("push               eax");                                           // 0x00764905    50
    asm("mov.s              ecx, esi");                                      // 0x00764906    8bce
    asm("call               dword ptr [edx + 0xac4]");                       // 0x00764908    ff92c40a0000
    asm("pop                esi");                                           // 0x0076490e    5e
    asm("ret                0x000c");                                        // 0x0076490f    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall ArrivesAtFoodReaction__8VillagerFv(struct Living* this)
{
    asm("sub                esp, 0x18");                                     // 0x00764920    83ec18
    asm("push               esi");                                           // 0x00764923    56
    asm("mov.s              esi, ecx");                                      // 0x00764924    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764926    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x0076492c    85c9
    asm("{disp32} je        _jmp_addr_0x00764a85");                          // 0x0076492e    0f8451010000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764934    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00764936    ff502c
    asm("test               eax, eax");                                      // 0x00764939    85c0
    asm("{disp32} je        _jmp_addr_0x00764a85");                          // 0x0076493b    0f8444010000
    asm("push               edi");                                           // 0x00764941    57
    asm("mov.s              ecx, esi");                                      // 0x00764942    8bce
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x00764944    e887cbfeff
    asm("push               0x0");                                           // 0x00764949    6a00
    asm("push               0x00beca40");                                    // 0x0076494b    6840cabe00
    asm("push               0x009c7f30");                                    // 0x00764950    68307f9c00
    asm("movsx              edi, ax");                                       // 0x00764955    0fbff8
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00764958    8b86bc000000
    asm("push               0x0");                                           // 0x0076495e    6a00
    asm("push               eax");                                           // 0x00764960    50
    asm("call               ___RTDynamicCast");                              // 0x00764961    e8b3100600
    asm("add                esp, 0x14");                                     // 0x00764966    83c414
    asm("test               eax, eax");                                      // 0x00764969    85c0
    asm("{disp8} je         _jmp_addr_0x0076497c");                          // 0x0076496b    740f
    asm("test               edi, edi");                                      // 0x0076496d    85ff
    asm("{disp8} jle        _jmp_addr_0x0076497c");                          // 0x0076496f    7e0b
    asm("push               edi");                                           // 0x00764971    57
    asm("push               0x0");                                           // 0x00764972    6a00
    asm("push               eax");                                           // 0x00764974    50
    asm("mov.s              ecx, esi");                                      // 0x00764975    8bce
    asm("call               ?GetResourceFrom@Villager@@QAEIPAVObject@@W4RESOURCE_TYPE@@F@Z");                          // 0x00764977    e814eafeff
    asm("_jmp_addr_0x0076497c:");
    asm("cmp                word ptr [esi + 0x000000f4], 0x00");             // 0x0076497c    6683bef400000000
    asm("pop                edi");                                           // 0x00764984    5f
    asm("{disp32} jle       _jmp_addr_0x00764a6c");                          // 0x00764985    0f8ee1000000
    asm("mov.s              ecx, esi");                                      // 0x0076498b    8bce
    asm("call               ?IsHungry@Villager@@QAE_NXZ");                   // 0x0076498d    e86edcfeff
    asm("test               eax, eax");                                      // 0x00764992    85c0
    asm("{disp8} je         _jmp_addr_0x007649ac");                          // 0x00764994    7416
    asm("mov                edx, dword ptr [esi]");                          // 0x00764996    8b16
    asm("push               0x75");                                          // 0x00764998    6a75
    asm("mov.s              ecx, esi");                                      // 0x0076499a    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x0076499c    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x007649a2    b801000000
    asm("pop                esi");                                           // 0x007649a7    5e
    asm("add                esp, 0x18");                                     // 0x007649a8    83c418
    asm("ret");                                                              // 0x007649ab    c3
    asm("_jmp_addr_0x007649ac:");
    asm("xor.s              eax, eax");                                      // 0x007649ac    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x007649ae    668b86e0000000
    asm("shr                eax, 9");                                        // 0x007649b5    c1e809
    asm("test               al, 0x01");                                      // 0x007649b8    a801
    asm("{disp8} je         _jmp_addr_0x007649db");                          // 0x007649ba    741f
    asm("xor.s              eax, eax");                                      // 0x007649bc    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");               // 0x007649be    8a86f2000000
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x007649c4    8d0cc500000000
    asm("sub.s              ecx, eax");                                      // 0x007649cb    2bc8
    asm("cmp                dword ptr [ecx * 0x4 + 0x0099a204], 0x01");      // 0x007649cd    833c8d04a2990001
    asm("{disp32} je        _jmp_addr_0x00764a6c");                          // 0x007649d5    0f8491000000
    asm("_jmp_addr_0x007649db:");
    asm("push               0x0");                                           // 0x007649db    6a00
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x007649dd    8d542414
    asm("push               edx");                                           // 0x007649e1    52
    asm("mov.s              ecx, esi");                                      // 0x007649e2    8bce
    asm("call               ?GetResourceDropoffPos@Villager@@QAEPAVGameThingWithPos@@W4RESOURCE_TYPE@@@Z");                          // 0x007649e4    e837f4feff
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x007649e9    8b4628
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000350]");             // 0x007649ec    8b8050030000
    asm("push               eax");                                           // 0x007649f2    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007649f3    8d4c2414
    asm("push               ecx");                                           // 0x007649f7    51
    asm("mov.s              ecx, esi");                                      // 0x007649f8    8bce
    asm("call               _jmp_addr_0x005ec9f0");                          // 0x007649fa    e8f17fe8ff
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x007649ff    d95c240c
    asm("movsx              edx, word ptr [esi + 0x000000f4]");              // 0x00764a03    0fbf96f4000000
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00764a0a    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000264]");             // 0x00764a0d    8b8864020000
    asm("{disp8} mov        dword ptr [esp + 0x04], edx");                   // 0x00764a13    89542404
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x00764a17    c744240800000000
    asm("mov                edx, dword ptr [esi]");                          // 0x00764a1f    8b16
    asm("{disp8} fild       dword ptr [esp + 0x04]");                        // 0x00764a21    db442404
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x00764a25    894c2404
    asm("mov.s              ecx, esi");                                      // 0x00764a29    8bce
    asm("{disp8} fidiv      dword ptr [esp + 0x04]");                        // 0x00764a2b    da742404
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x00764a2f    d95c2404
    asm("call               dword ptr [edx + 0x48]");                        // 0x00764a33    ff5248
    asm("test               eax, eax");                                      // 0x00764a36    85c0
    asm("{disp8} je         _jmp_addr_0x00764a6c");                          // 0x00764a38    7432
    asm("mov                eax, dword ptr [esi]");                          // 0x00764a3a    8b06
    asm("mov.s              ecx, esi");                                      // 0x00764a3c    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00764a3e    ff5048
    asm("mov                edx, dword ptr [eax]");                          // 0x00764a41    8b10
    asm("mov.s              ecx, eax");                                      // 0x00764a43    8bc8
    asm("call               dword ptr [edx + 0x420]");                       // 0x00764a45    ff9220040000
    asm("{disp8} fmul       dword ptr [esp + 0x04]");                        // 0x00764a4b    d84c2404
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00764a4f    d84c240c
    asm("{disp32} fcomp     dword ptr [__real@3dcccccd]");                   // 0x00764a53    d81d2cb28a00
    asm("fnstsw             ax");                                            // 0x00764a59    dfe0
    asm("test               ah, 0x41");                                      // 0x00764a5b    f6c441
    asm("{disp8} jne        _jmp_addr_0x00764a6c");                          // 0x00764a5e    750c
    asm("mov.s              ecx, esi");                                      // 0x00764a60    8bce
    asm("call               ?GotoStoragePitForDropOff@Villager@@QAEIXZ");    // 0x00764a62    e8b94b0000
    asm("pop                esi");                                           // 0x00764a67    5e
    asm("add                esp, 0x18");                                     // 0x00764a68    83c418
    asm("ret");                                                              // 0x00764a6b    c3
    asm("_jmp_addr_0x00764a6c:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00764a6c    8b06
    asm("push               0x000000a3");                                    // 0x00764a6e    68a3000000
    asm("mov.s              ecx, esi");                                      // 0x00764a73    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00764a75    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00764a7b    b801000000
    asm("pop                esi");                                           // 0x00764a80    5e
    asm("add                esp, 0x18");                                     // 0x00764a81    83c418
    asm("ret");                                                              // 0x00764a84    c3
    asm("_jmp_addr_0x00764a85:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00764a85    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764a87    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764a89    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x00764a8f    b801000000
    asm("pop                esi");                                           // 0x00764a94    5e
    asm("add                esp, 0x18");                                     // 0x00764a95    83c418
    asm("ret");                                                              // 0x00764a98    c3
    __builtin_unreachable();
}

bool32_t __fastcall InitialiseBewilderedByMagicTreeReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00764aa0    56
    asm("mov.s              esi, ecx");                                      // 0x00764aa1    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764aa3    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00764aa9    85c9
    asm("{disp32} je        _jmp_addr_0x00764b39");                          // 0x00764aab    0f8488000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764ab1    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00764ab3    ff502c
    asm("test               eax, eax");                                      // 0x00764ab6    85c0
    asm("{disp8} je         _jmp_addr_0x00764b39");                          // 0x00764ab8    747f
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00764aba    8b86bc000000
    asm("push               0x0");                                           // 0x00764ac0    6a00
    asm("push               0x00bf3f18");                                    // 0x00764ac2    68183fbf00
    asm("push               0x009c7f30");                                    // 0x00764ac7    68307f9c00
    asm("push               0x0");                                           // 0x00764acc    6a00
    asm("push               eax");                                           // 0x00764ace    50
    asm("call               ___RTDynamicCast");                              // 0x00764acf    e8450f0600
    asm("add                esp, 0x14");                                     // 0x00764ad4    83c414
    asm("test               eax, eax");                                      // 0x00764ad7    85c0
    asm("{disp8} jne        _jmp_addr_0x00764aec");                          // 0x00764ad9    7511
    asm("mov                edx, dword ptr [esi]");                          // 0x00764adb    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764add    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764adf    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x00764ae5    b801000000
    asm("pop                esi");                                           // 0x00764aea    5e
    asm("ret");                                                              // 0x00764aeb    c3
    asm("_jmp_addr_0x00764aec:");
    asm("mov                edx, dword ptr [eax]");                          // 0x00764aec    8b10
    asm("mov.s              ecx, eax");                                      // 0x00764aee    8bc8
    asm("call               dword ptr [edx + 0x86c]");                       // 0x00764af0    ff926c080000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x4c]");                   // 0x00764af6    8b484c
    asm("{disp8} mov        eax, dword ptr [eax + 0x54]");                   // 0x00764af9    8b4054
    asm("push               0x00000421");                                    // 0x00764afc    6821040000
    asm("{disp8} lea        eax, dword ptr [eax + ecx * 0x1 + -0x01]");      // 0x00764b01    8d4408ff
    asm("push               0x00c24588");                                    // 0x00764b05    688845c200
    asm("push               eax");                                           // 0x00764b0a    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00764b0b    e8009af7ff
    asm("mov                edx, dword ptr [esi]");                          // 0x00764b10    8b16
    asm("add                esp, 0x0c");                                     // 0x00764b12    83c40c
    asm("push               0x00000096");                                    // 0x00764b15    6896000000
    asm("mov.s              ecx, esi");                                      // 0x00764b1a    8bce
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], eax");             // 0x00764b1c    89860c010000
    asm("{disp32} mov       dword ptr [esi + 0x00000110], 0x00000000");      // 0x00764b22    c7861001000000000000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00764b2c    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00764b32    b801000000
    asm("pop                esi");                                           // 0x00764b37    5e
    asm("ret");                                                              // 0x00764b38    c3
    asm("_jmp_addr_0x00764b39:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00764b39    8b06
    asm("mov.s              ecx, esi");                                      // 0x00764b3b    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00764b3d    ff909c090000
    asm("mov                eax, 0x00000001");                               // 0x00764b43    b801000000
    asm("pop                esi");                                           // 0x00764b48    5e
    asm("ret");                                                              // 0x00764b49    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall PerformBewilderedByMagicTreeReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x24");                                     // 0x00764b50    83ec24
    asm("push               ebx");                                           // 0x00764b53    53
    asm("push               ebp");                                           // 0x00764b54    55
    asm("push               esi");                                           // 0x00764b55    56
    asm("mov.s              esi, ecx");                                      // 0x00764b56    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764b58    8b8ebc000000
    asm("push               edi");                                           // 0x00764b5e    57
    asm("xor.s              edi, edi");                                      // 0x00764b5f    33ff
    asm("cmp.s              ecx, edi");                                      // 0x00764b61    3bcf
    asm("{disp32} je        _jmp_addr_0x00764cf5");                          // 0x00764b63    0f848c010000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764b69    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00764b6b    ff502c
    asm("test               eax, eax");                                      // 0x00764b6e    85c0
    asm("{disp32} je        _jmp_addr_0x00764cf5");                          // 0x00764b70    0f847f010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00764b76    8b86bc000000
    asm("push               edi");                                           // 0x00764b7c    57
    asm("push               0x00bf3f18");                                    // 0x00764b7d    68183fbf00
    asm("push               0x009c7f30");                                    // 0x00764b82    68307f9c00
    asm("push               edi");                                           // 0x00764b87    57
    asm("push               eax");                                           // 0x00764b88    50
    asm("call               ___RTDynamicCast");                              // 0x00764b89    e88b0e0600
    asm("mov.s              ebx, eax");                                      // 0x00764b8e    8bd8
    asm("add                esp, 0x14");                                     // 0x00764b90    83c414
    asm("cmp.s              ebx, edi");                                      // 0x00764b93    3bdf
    asm("{disp32} je        _jmp_addr_0x00764cf5");                          // 0x00764b95    0f845a010000
    asm("mov                eax, dword ptr [ebx]");                          // 0x00764b9b    8b03
    asm("mov.s              ecx, ebx");                                      // 0x00764b9d    8bcb
    asm("call               dword ptr [eax + 0x86c]");                       // 0x00764b9f    ff906c080000
    asm("mov.s              ebp, eax");                                      // 0x00764ba5    8be8
    asm("{disp8} mov        dword ptr [esp + 0x1c], edi");                   // 0x00764ba7    897c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], edi");                   // 0x00764bab    897c2420
    asm("{disp8} mov        dword ptr [esp + 0x24], edi");                   // 0x00764baf    897c2424
    asm("{disp8} mov        ecx, dword ptr [ebp + 0x4c]");                   // 0x00764bb3    8b4d4c
    asm("{disp8} mov        edi, dword ptr [ebp + 0x54]");                   // 0x00764bb6    8b7d54
    asm("add.s              edi, ecx");                                      // 0x00764bb9    03f9
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000110]");             // 0x00764bbb    8b8e10010000
    asm("push               0x00000438");                                    // 0x00764bc1    6838040000
    asm("mov.s              edx, edi");                                      // 0x00764bc6    8bd7
    asm("shr                edx, 1");                                        // 0x00764bc8    d1ea
    asm("push               0x00c24588");                                    // 0x00764bca    688845c200
    asm("push               edx");                                           // 0x00764bcf    52
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x00764bd0    894c241c
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00764bd4    e83799f7ff
    asm("mov.s              ecx, edi");                                      // 0x00764bd9    8bcf
    asm("sub.s              ecx, eax");                                      // 0x00764bdb    2bc8
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x00764bdd    8b44241c
    asm("add                esp, 0x0c");                                     // 0x00764be1    83c40c
    asm("cmp.s              eax, ecx");                                      // 0x00764be4    3bc1
    asm("{disp32} jae       _jmp_addr_0x00764cf5");                          // 0x00764be6    0f8309010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x0000010c]");             // 0x00764bec    8b860c010000
    asm("push               eax");                                           // 0x00764bf2    50
    asm("mov.s              ecx, ebp");                                      // 0x00764bf3    8bcd
    asm("call               _jmp_addr_0x0053a5b0");                          // 0x00764bf5    e8b659ddff
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], eax");             // 0x00764bfa    8986bc000000
    asm("{disp32} mov       edx, dword ptr [esi + 0x00000110]");             // 0x00764c00    8b9610010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x0000010c]");             // 0x00764c06    8b860c010000
    asm("inc                edx");                                           // 0x00764c0c    42
    asm("{disp32} mov       dword ptr [esi + 0x00000110], edx");             // 0x00764c0d    899610010000
    asm("inc                eax");                                           // 0x00764c13    40
    asm("xor.s              edx, edx");                                      // 0x00764c14    33d2
    asm("div                edi");                                           // 0x00764c16    f7f7
    asm("push               esi");                                           // 0x00764c18    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x2c]");                   // 0x00764c19    8d4c242c
    asm("push               ecx");                                           // 0x00764c1d    51
    asm("mov.s              ecx, ebx");                                      // 0x00764c1e    8bcb
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], edx");             // 0x00764c20    89960c010000
    asm("mov                eax, dword ptr [ebx]");                          // 0x00764c26    8b03
    asm("call               dword ptr [eax + 0x834]");                       // 0x00764c28    ff9034080000
    asm("mov                edx, dword ptr [eax]");                          // 0x00764c2e    8b10
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x00764c30    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00764c33    89542410
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00764c37    d9442410
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00764c3b    8b5008
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00764c3e    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00764c44    894c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00764c48    89542418
    asm("call               _jmp_addr_0x007a1400");                          // 0x00764c4c    e8afc70300
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00764c51    d9442418
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00764c55    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x00764c5b    8944241c
    asm("call               _jmp_addr_0x007a1400");                          // 0x00764c5f    e89cc70300
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x00764c64    89442420
    asm("push               0x00000097");                                    // 0x00764c68    6897000000
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x00764c6d    8d442420
    asm("push               eax");                                           // 0x00764c71    50
    asm("mov.s              ecx, esi");                                      // 0x00764c72    8bce
    asm("{disp8} mov        dword ptr [esp + 0x2c], 0x00000000");            // 0x00764c74    c744242c00000000
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00764c7c    e80fdce8ff
    asm("xor.s              edx, edx");                                      // 0x00764c81    33d2
    asm("mov                eax, 0x000003e8");                               // 0x00764c83    b8e8030000
    asm("div                dword ptr [data_bytes + 0x33ba38]");             // 0x00764c88    f735381ad000
    asm("xor.s              edi, edi");                                      // 0x00764c8e    33ff
    asm("{disp8} mov        dword ptr [esp + 0x14], edi");                   // 0x00764c90    897c2414
    asm("push               0x00000444");                                    // 0x00764c94    6844040000
    asm("push               0x00c24588");                                    // 0x00764c99    688845c200
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00764c9e    89442418
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00764ca2    df6c2418
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x19c50]");             // 0x00764ca6    d80d502c8c00
    asm("call               _jmp_addr_0x007a1400");                          // 0x00764cac    e84fc70300
    asm("push               eax");                                           // 0x00764cb1    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00764cb2    e85998f7ff
    asm("mov.s              ebx, eax");                                      // 0x00764cb7    8bd8
    asm("xor.s              edx, edx");                                      // 0x00764cb9    33d2
    asm("mov                eax, 0x000003e8");                               // 0x00764cbb    b8e8030000
    asm("div                dword ptr [data_bytes + 0x33ba38]");             // 0x00764cc0    f735381ad000
    asm("{disp8} mov        dword ptr [esp + 0x20], edi");                   // 0x00764cc6    897c2420
    asm("add                esp, 0x0c");                                     // 0x00764cca    83c40c
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00764ccd    89442410
    asm("{disp8} fild       qword ptr [esp + 0x10]");                        // 0x00764cd1    df6c2410
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1ece0]");             // 0x00764cd5    d80de07c8c00
    asm("call               _jmp_addr_0x007a1400");                          // 0x00764cdb    e820c70300
    asm("sub.s              bl, al");                                        // 0x00764ce0    2ad8
    asm("pop                edi");                                           // 0x00764ce2    5f
    asm("{disp8} mov        byte ptr [esi + 0x59], bl");                     // 0x00764ce3    885e59
    asm("{disp8} mov        byte ptr [esi + 0x58], bl");                     // 0x00764ce6    885e58
    asm("pop                esi");                                           // 0x00764ce9    5e
    asm("pop                ebp");                                           // 0x00764cea    5d
    asm("mov                eax, 0x00000001");                               // 0x00764ceb    b801000000
    asm("pop                ebx");                                           // 0x00764cf0    5b
    asm("add                esp, 0x24");                                     // 0x00764cf1    83c424
    asm("ret");                                                              // 0x00764cf4    c3
    asm("_jmp_addr_0x00764cf5:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00764cf5    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764cf7    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00764cf9    ff929c090000
    asm("pop                edi");                                           // 0x00764cff    5f
    asm("pop                esi");                                           // 0x00764d00    5e
    asm("pop                ebp");                                           // 0x00764d01    5d
    asm("mov                eax, 0x00000001");                               // 0x00764d02    b801000000
    asm("pop                ebx");                                           // 0x00764d07    5b
    asm("add                esp, 0x24");                                     // 0x00764d08    83c424
    asm("ret");                                                              // 0x00764d0b    c3
    __builtin_unreachable();
}

bool32_t __fastcall TurnToFaceMagicTree__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00764d10    56
    asm("mov.s              esi, ecx");                                      // 0x00764d11    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764d13    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00764d19    85c9
    asm("{disp8} je         _jmp_addr_0x00764d51");                          // 0x00764d1b    7434
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764d1d    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00764d1f    ff502c
    asm("test               eax, eax");                                      // 0x00764d22    85c0
    asm("{disp8} je         _jmp_addr_0x00764d51");                          // 0x00764d24    742b
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00764d26    8b86bc000000
    asm("push               0x1");                                           // 0x00764d2c    6a01
    asm("push               eax");                                           // 0x00764d2e    50
    asm("mov.s              ecx, esi");                                      // 0x00764d2f    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00764d31    e8ea77e8ff
    asm("cmp                eax, 0x01");                                     // 0x00764d36    83f801
    asm("{disp8} jne        _jmp_addr_0x00764d5b");                          // 0x00764d39    7520
    asm("mov                edx, dword ptr [esi]");                          // 0x00764d3b    8b16
    asm("push               0x00000098");                                    // 0x00764d3d    6898000000
    asm("mov.s              ecx, esi");                                      // 0x00764d42    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00764d44    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00764d4a    b801000000
    asm("pop                esi");                                           // 0x00764d4f    5e
    asm("ret");                                                              // 0x00764d50    c3
    asm("_jmp_addr_0x00764d51:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00764d51    8b06
    asm("mov.s              ecx, esi");                                      // 0x00764d53    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00764d55    ff909c090000
    asm("_jmp_addr_0x00764d5b:");
    asm("mov                eax, 0x00000001");                               // 0x00764d5b    b801000000
    asm("pop                esi");                                           // 0x00764d60    5e
    asm("ret");                                                              // 0x00764d61    c3
    __builtin_unreachable();
}

bool32_t __fastcall LookAtMagicTree__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00764d70    56
    asm("mov.s              esi, ecx");                                      // 0x00764d71    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764d73    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00764d79    85c9
    asm("{disp8} je         _jmp_addr_0x00764dd6");                          // 0x00764d7b    7459
    asm("mov                eax, dword ptr [ecx]");                          // 0x00764d7d    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00764d7f    ff502c
    asm("test               eax, eax");                                      // 0x00764d82    85c0
    asm("{disp8} je         _jmp_addr_0x00764dd6");                          // 0x00764d84    7450
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00764d86    8b8ebc000000
    asm("push               0x0");                                           // 0x00764d8c    6a00
    asm("push               0x009d96e0");                                    // 0x00764d8e    68e0969d00
    asm("push               0x009c7f30");                                    // 0x00764d93    68307f9c00
    asm("push               0x0");                                           // 0x00764d98    6a00
    asm("push               ecx");                                           // 0x00764d9a    51
    asm("call               ___RTDynamicCast");                              // 0x00764d9b    e8790c0600
    asm("{disp8} mov        dl, byte ptr [esi + 0x59]");                     // 0x00764da0    8a5659
    asm("{disp8} mov        al, byte ptr [esi + 0x58]");                     // 0x00764da3    8a4658
    asm("shr                dl, 1");                                         // 0x00764da6    d0ea
    asm("add                esp, 0x14");                                     // 0x00764da8    83c414
    asm("cmp.s              al, dl");                                        // 0x00764dab    3ac2
    asm("{disp8} jne        _jmp_addr_0x00764dbb");                          // 0x00764dad    750c
    asm("mov                eax, dword ptr [esi]");                          // 0x00764daf    8b06
    asm("push               0x1");                                           // 0x00764db1    6a01
    asm("mov.s              ecx, esi");                                      // 0x00764db3    8bce
    asm("call               dword ptr [eax + 0x8fc]");                       // 0x00764db5    ff90fc080000
    asm("_jmp_addr_0x00764dbb:");
    asm("dec                byte ptr [esi + 0x58]");                         // 0x00764dbb    fe4e58
    asm("{disp8} jne        _jmp_addr_0x00764de0");                          // 0x00764dbe    7520
    asm("mov                edx, dword ptr [esi]");                          // 0x00764dc0    8b16
    asm("push               0x00000096");                                    // 0x00764dc2    6896000000
    asm("mov.s              ecx, esi");                                      // 0x00764dc7    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00764dc9    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00764dcf    b801000000
    asm("pop                esi");                                           // 0x00764dd4    5e
    asm("ret");                                                              // 0x00764dd5    c3
    asm("_jmp_addr_0x00764dd6:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00764dd6    8b06
    asm("mov.s              ecx, esi");                                      // 0x00764dd8    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00764dda    ff909c090000
    asm("_jmp_addr_0x00764de0:");
    asm("mov                eax, 0x00000001");                               // 0x00764de0    b801000000
    asm("pop                esi");                                           // 0x00764de5    5e
    asm("ret");                                                              // 0x00764de6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsInterestedInFoodObject__8VillagerFP6Object(struct Living* this, const void* edx, struct Object* param_1)
{
    asm("sub                esp, 0x14");                                     // 0x00764df0    83ec14
    asm("push               esi");                                           // 0x00764df3    56
    asm("push               edi");                                           // 0x00764df4    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x00764df5    8b7c2420
    asm("mov                eax, dword ptr [edi]");                          // 0x00764df9    8b07
    asm("mov.s              esi, ecx");                                      // 0x00764dfb    8bf1
    asm("mov.s              ecx, edi");                                      // 0x00764dfd    8bcf
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00764dff    ff502c
    asm("test               eax, eax");                                      // 0x00764e02    85c0
    asm("{disp32} je        _jmp_addr_0x00764f4e");                          // 0x00764e04    0f8444010000
    asm("{disp8} mov        ax, word ptr [edi + 0x24]");                     // 0x00764e0a    668b4724
    asm("mov.s              cl, al");                                        // 0x00764e0e    8ac8
    asm("not                cl");                                            // 0x00764e10    f6d1
    asm("shr                cl, 6");                                         // 0x00764e12    c0e906
    asm("test               cl, 0x01");                                      // 0x00764e15    f6c101
    asm("{disp32} je        _jmp_addr_0x00764f4e");                          // 0x00764e18    0f8430010000
    asm("test               al, 0x04");                                      // 0x00764e1e    a804
    asm("{disp32} jne       _jmp_addr_0x00764f4e");                          // 0x00764e20    0f8528010000
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x389998]");        // 0x00764e26    8b1598f9d400
    asm("push               ebx");                                           // 0x00764e2c    53
    asm("mov.s              eax, edx");                                      // 0x00764e2d    8bc2
    asm("push               eax");                                           // 0x00764e2f    50
    asm("push               edi");                                           // 0x00764e30    57
    asm("mov.s              ecx, esi");                                      // 0x00764e31    8bce
    asm("{disp8} mov        dword ptr [esp + 0x2c], edx");                   // 0x00764e33    8954242c
    asm("call               _jmp_addr_0x005ec9d0");                          // 0x00764e37    e8947be8ff
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00764e3c    d95c2410
    asm("mov                edx, dword ptr [esi]");                          // 0x00764e40    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764e42    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x00764e44    ff92040b0000
    asm("and                eax, 0x000000ff");                               // 0x00764e4a    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x00764e4f    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x00764e51    8d0449
    asm("shl                eax, 3");                                        // 0x00764e54    c1e003
    asm("sub.s              eax, ecx");                                      // 0x00764e57    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x00764e59    8d0440
    asm("{disp32} fld       dword ptr [eax * 0x4 + 0x00db9f40]");            // 0x00764e5c    d90485409fdb00
    asm("mov.s              ecx, esi");                                      // 0x00764e63    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00764e65    d95c240c
    asm("call               ?GetDesireForFood@Villager@@QAEMXZ");            // 0x00764e69    e8e26cffff
    asm("{disp8} mov        ebx, dword ptr [esi + 0x28]");                   // 0x00764e6e    8b5e28
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00764e71    d95c2414
    asm("mov.s              ecx, esi");                                      // 0x00764e75    8bce
    asm("call               ?GetFoodCapacity@Villager@@QAEHXZ");             // 0x00764e77    e854c6feff
    asm("{disp32} mov       edx, dword ptr [ebx + 0x00000264]");             // 0x00764e7c    8b9364020000
    asm("movsx              ecx, ax");                                       // 0x00764e82    0fbfc8
    asm("{disp8} mov        dword ptr [esp + 0x24], ecx");                   // 0x00764e85    894c2424
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00764e89    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x00764e8d    c744241c00000000
    asm("{disp8} fild       dword ptr [esp + 0x24]");                        // 0x00764e95    db442424
    asm("mov                eax, dword ptr [edi]");                          // 0x00764e99    8b07
    asm("mov.s              ecx, edi");                                      // 0x00764e9b    8bcf
    asm("{disp8} fidiv      dword ptr [esp + 0x18]");                        // 0x00764e9d    da742418
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00764ea1    d95c2424
    asm("call               dword ptr [eax + 0x4a8]");                       // 0x00764ea5    ff90a8040000
    asm("test               al, al");                                        // 0x00764eab    84c0
    asm("pop                ebx");                                           // 0x00764ead    5b
    asm("{disp8} je         _jmp_addr_0x00764eb8");                          // 0x00764eae    7408
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x2478]");              // 0x00764eb0    d90578b48a00
    asm("{disp8} jmp        _jmp_addr_0x00764ebe");                          // 0x00764eb6    eb06
    asm("_jmp_addr_0x00764eb8:");
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x00764eb8    d90590a38a00
    asm("_jmp_addr_0x00764ebe:");
    asm("{disp8} fmul       dword ptr [esp + 0x20]");                        // 0x00764ebe    d84c2420
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00764ec2    8b0d5c19d000
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00764ec8    d84c2410
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x00764ecc    d84c2408
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00764ed0    d84c240c
    asm("{disp32} fadd      dword ptr [ecx + 0x00205a50]");                  // 0x00764ed4    d881505a2000
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x23d4]");              // 0x00764eda    d81dd4b38a00
    asm("fnstsw             ax");                                            // 0x00764ee0    dfe0
    asm("test               ah, 0x41");                                      // 0x00764ee2    f6c441
    asm("{disp8} jne        _jmp_addr_0x00764ef4");                          // 0x00764ee5    750d
    asm("pop                edi");                                           // 0x00764ee7    5f
    asm("mov                eax, 0x00000001");                               // 0x00764ee8    b801000000
    asm("pop                esi");                                           // 0x00764eed    5e
    asm("add                esp, 0x14");                                     // 0x00764eee    83c414
    asm("ret                0x0004");                                        // 0x00764ef1    c20400
    asm("_jmp_addr_0x00764ef4:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00764ef4    8b16
    asm("mov.s              ecx, esi");                                      // 0x00764ef6    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00764ef8    ff5248
    asm("mov.s              esi, eax");                                      // 0x00764efb    8bf0
    asm("test               esi, esi");                                      // 0x00764efd    85f6
    asm("{disp8} je         _jmp_addr_0x00764f4e");                          // 0x00764eff    744d
    asm("push               0x0");                                           // 0x00764f01    6a00
    asm("mov.s              ecx, esi");                                      // 0x00764f03    8bce
    asm("call               ?GetDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z");   // 0x00764f05    e8f694fdff
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x00764f0a    a15c19d000
    asm("{disp8} fmul       dword ptr [esp + 0x20]");                        // 0x00764f0f    d84c2420
    asm("push               0x0");                                           // 0x00764f13    6a00
    asm("{disp8} lea        ecx, dword ptr [esi + 0x34]");                   // 0x00764f15    8d4e34
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00764f18    d84c240c
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00764f1c    d84c2410
    asm("{disp32} fld       dword ptr [eax + 0x00205a50]");                  // 0x00764f20    d980505a2000
    asm("fadd               st, st(1)");                                     // 0x00764f26    d8c1
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00764f28    d95c2424
    asm("fstp               st(0)");                                         // 0x00764f2c    ddd8
    asm("call               ?GetInfo@TownDesire@@QBEPAVGTownDesireInfo@@K@Z");                          // 0x00764f2e    e84d10feff
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x00764f33    d9442420
    asm("{disp8} fcomp      dword ptr [eax + 0x18]");                        // 0x00764f37    d85818
    asm("fnstsw             ax");                                            // 0x00764f3a    dfe0
    asm("test               ah, 0x41");                                      // 0x00764f3c    f6c441
    asm("{disp8} jne        _jmp_addr_0x00764f4e");                          // 0x00764f3f    750d
    asm("pop                edi");                                           // 0x00764f41    5f
    asm("mov                eax, 0x00000001");                               // 0x00764f42    b801000000
    asm("pop                esi");                                           // 0x00764f47    5e
    asm("add                esp, 0x14");                                     // 0x00764f48    83c414
    asm("ret                0x0004");                                        // 0x00764f4b    c20400
    asm("_jmp_addr_0x00764f4e:");
    asm("pop                edi");                                           // 0x00764f4e    5f
    asm("xor.s              eax, eax");                                      // 0x00764f4f    33c0
    asm("pop                esi");                                           // 0x00764f51    5e
    asm("add                esp, 0x14");                                     // 0x00764f52    83c414
    asm("ret                0x0004");                                        // 0x00764f55    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall IsInterestedInWoodObject__8VillagerFP6Object(struct Living* this, const void* edx, struct Object* param_1)
{
    asm("sub                esp, 0x10");                                     // 0x00764f60    83ec10
    asm("push               ebx");                                           // 0x00764f63    53
    asm("push               ebp");                                           // 0x00764f64    55
    asm("push               esi");                                           // 0x00764f65    56
    asm("mov.s              esi, ecx");                                      // 0x00764f66    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00764f68    8b06
    asm("push               edi");                                           // 0x00764f6a    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00764f6b    ff5048
    asm("{disp8} mov        edi, dword ptr [esp + 0x24]");                   // 0x00764f6e    8b7c2424
    asm("mov                edx, dword ptr [edi]");                          // 0x00764f72    8b17
    asm("mov.s              ecx, edi");                                      // 0x00764f74    8bcf
    asm("mov.s              ebx, eax");                                      // 0x00764f76    8bd8
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00764f78    ff522c
    asm("test               eax, eax");                                      // 0x00764f7b    85c0
    asm("{disp32} je        _jmp_addr_0x00765132");                          // 0x00764f7d    0f84af010000
    asm("{disp8} mov        al, byte ptr [edi + 0x24]");                     // 0x00764f83    8a4724
    asm("not                al");                                            // 0x00764f86    f6d0
    asm("shr                al, 2");                                         // 0x00764f88    c0e802
    asm("test               al, 0x01");                                      // 0x00764f8b    a801
    asm("{disp32} je        _jmp_addr_0x00765132");                          // 0x00764f8d    0f849f010000
    asm("mov.s              ecx, esi");                                      // 0x00764f93    8bce
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x00764f95    e856c5feff
    asm("test               ax, ax");                                        // 0x00764f9a    6685c0
    asm("{disp32} je        _jmp_addr_0x00765132");                          // 0x00764f9d    0f848f010000
    asm("test               ebx, ebx");                                      // 0x00764fa3    85db
    asm("{disp32} je        _jmp_addr_0x00765132");                          // 0x00764fa5    0f8487010000
    asm("mov                edx, dword ptr [esi]");                          // 0x00764fab    8b16
    asm("{disp8} mov        ebp, dword ptr [esi + 0x28]");                   // 0x00764fad    8b6e28
    asm("mov.s              ecx, esi");                                      // 0x00764fb0    8bce
    asm("call               dword ptr [edx + 0x11c]");                       // 0x00764fb2    ff921c010000
    asm("{disp32} fcomp     dword ptr [ebp + 0x0000035c]");                  // 0x00764fb8    d89d5c030000
    asm("fnstsw             ax");                                            // 0x00764fbe    dfe0
    asm("test               ah, 0x41");                                      // 0x00764fc0    f6c441
    asm("{disp32} jne       _jmp_addr_0x00765132");                          // 0x00764fc3    0f8569010000
    asm("mov                eax, dword ptr [edi]");                          // 0x00764fc9    8b07
    asm("mov.s              ecx, edi");                                      // 0x00764fcb    8bcf
    asm("call               dword ptr [eax + 0x47c]");                       // 0x00764fcd    ff907c040000
    asm("test               eax, eax");                                      // 0x00764fd3    85c0
    asm("{disp8} je         _jmp_addr_0x00765004");                          // 0x00764fd5    742d
    asm("{disp32} mov       bp, word ptr [esi + 0x000000f6]");               // 0x00764fd7    668baef6000000
    asm("mov.s              ecx, esi");                                      // 0x00764fde    8bce
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x00764fe0    e80bc5feff
    asm("cmp.s              bp, ax");                                        // 0x00764fe5    663be8
    asm("{disp8} jge        _jmp_addr_0x00765004");                          // 0x00764fe8    7d1a
    asm("mov.s              ecx, esi");                                      // 0x00764fea    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x00764fec    e89fd2feff
    asm("test               eax, eax");                                      // 0x00764ff1    85c0
    asm("{disp8} je         _jmp_addr_0x00765004");                          // 0x00764ff3    740f
    asm("pop                edi");                                           // 0x00764ff5    5f
    asm("pop                esi");                                           // 0x00764ff6    5e
    asm("pop                ebp");                                           // 0x00764ff7    5d
    asm("mov                eax, 0x00000001");                               // 0x00764ff8    b801000000
    asm("pop                ebx");                                           // 0x00764ffd    5b
    asm("add                esp, 0x10");                                     // 0x00764ffe    83c410
    asm("ret                0x0004");                                        // 0x00765001    c20400
    asm("_jmp_addr_0x00765004:");
    asm("{disp32} mov       ebp, dword ptr [esi + 0x000000fc]");             // 0x00765004    8baefc000000
    asm("test               ebp, ebp");                                      // 0x0076500a    85ed
    asm("{disp8} je         _jmp_addr_0x00765032");                          // 0x0076500c    7424
    asm("push               ebp");                                           // 0x0076500e    55
    asm("mov.s              ecx, ebx");                                      // 0x0076500f    8bcb
    asm("call               ?IsBuildingSiteValid@Town@@QAEIPAVBuildingSite@@@Z");                          // 0x00765011    e8ea7efdff
    asm("test               eax, eax");                                      // 0x00765016    85c0
    asm("{disp8} je         _jmp_addr_0x00765032");                          // 0x00765018    7418
    asm("mov.s              ecx, ebp");                                      // 0x0076501a    8bcd
    asm("call               ?GetWoodNeededToBuild@BuildingSite@@QAEMXZ");    // 0x0076501c    e8cf75cdff
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00765021    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00765027    dfe0
    asm("test               ah, 0x41");                                      // 0x00765029    f6c441
    asm("{disp32} jne       _jmp_addr_0x00765132");                          // 0x0076502c    0f8500010000
    asm("_jmp_addr_0x00765032:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00765032    8b17
    asm("mov.s              ecx, edi");                                      // 0x00765034    8bcf
    asm("call               dword ptr [edx + 0x830]");                       // 0x00765036    ff9230080000
    asm("test               eax, eax");                                      // 0x0076503c    85c0
    asm("{disp8} jne        _jmp_addr_0x0076505a");                          // 0x0076503e    751a
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");               // 0x00765040    8a86f2000000
    asm("{disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]");       // 0x00765046    8d0cc500000000
    asm("sub.s              ecx, eax");                                      // 0x0076504d    2bc8
    asm("{disp32} mov       eax, dword ptr [ecx * 0x4 + 0x0099a208]");       // 0x0076504f    8b048d08a29900
    asm("test               eax, eax");                                      // 0x00765056    85c0
    asm("{disp8} je         _jmp_addr_0x00765074");                          // 0x00765058    741a
    asm("_jmp_addr_0x0076505a:");
    asm("mov.s              ecx, esi");                                      // 0x0076505a    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x0076505c    e82fd2feff
    asm("test               eax, eax");                                      // 0x00765061    85c0
    asm("{disp8} je         _jmp_addr_0x00765074");                          // 0x00765063    740f
    asm("pop                edi");                                           // 0x00765065    5f
    asm("pop                esi");                                           // 0x00765066    5e
    asm("pop                ebp");                                           // 0x00765067    5d
    asm("mov                eax, 0x00000001");                               // 0x00765068    b801000000
    asm("pop                ebx");                                           // 0x0076506d    5b
    asm("add                esp, 0x10");                                     // 0x0076506e    83c410
    asm("ret                0x0004");                                        // 0x00765071    c20400
    asm("_jmp_addr_0x00765074:");
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x389b8c]");        // 0x00765074    8b158cfbd400
    asm("mov.s              eax, edx");                                      // 0x0076507a    8bc2
    asm("push               eax");                                           // 0x0076507c    50
    asm("push               edi");                                           // 0x0076507d    57
    asm("mov.s              ecx, esi");                                      // 0x0076507e    8bce
    asm("{disp8} mov        dword ptr [esp + 0x2c], edx");                   // 0x00765080    8954242c
    asm("call               _jmp_addr_0x005ec9d0");                          // 0x00765084    e84779e8ff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00765089    d95c2414
    asm("mov                edx, dword ptr [esi]");                          // 0x0076508d    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076508f    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x00765091    ff92040b0000
    asm("{disp8} mov        edi, dword ptr [esi + 0x28]");                   // 0x00765097    8b7e28
    asm("and                eax, 0x000000ff");                               // 0x0076509a    25ff000000
    asm("mov.s              ecx, eax");                                      // 0x0076509f    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x007650a1    8d0449
    asm("shl                eax, 3");                                        // 0x007650a4    c1e003
    asm("sub.s              eax, ecx");                                      // 0x007650a7    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");              // 0x007650a9    8d0440
    asm("{disp32} fld       dword ptr [eax * 0x4 + 0x00db9f44]");            // 0x007650ac    d90485449fdb00
    asm("mov.s              ecx, esi");                                      // 0x007650b3    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x007650b5    d95c2410
    asm("call               ?GetWoodCapacity@Villager@@QAEHXZ");             // 0x007650b9    e832c4feff
    asm("{disp32} mov       edx, dword ptr [edi + 0x00000268]");             // 0x007650be    8b9768020000
    asm("movsx              ecx, ax");                                       // 0x007650c4    0fbfc8
    asm("{disp8} mov        dword ptr [esp + 0x24], ecx");                   // 0x007650c7    894c2424
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x007650cb    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x007650cf    c744241c00000000
    asm("{disp8} fild       dword ptr [esp + 0x24]");                        // 0x007650d7    db442424
    asm("push               0x1");                                           // 0x007650db    6a01
    asm("mov.s              ecx, ebx");                                      // 0x007650dd    8bcb
    asm("{disp8} fidiv      dword ptr [esp + 0x1c]");                        // 0x007650df    da74241c
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x007650e3    d95c2428
    asm("call               ?GetRawDesire@Town@@QAEMW4TOWN_DESIRE_INFO@@@Z");// 0x007650e7    e83493fdff
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x007650ec    a15c19d000
    asm("{disp8} fmul       dword ptr [esp + 0x24]");                        // 0x007650f1    d84c2424
    asm("push               0x1");                                           // 0x007650f5    6a01
    asm("{disp8} lea        ecx, dword ptr [ebx + 0x34]");                   // 0x007650f7    8d4b34
    asm("{disp8} fmul       dword ptr [esp + 0x14]");                        // 0x007650fa    d84c2414
    asm("{disp8} fmul       dword ptr [esp + 0x18]");                        // 0x007650fe    d84c2418
    asm("{disp32} fld       dword ptr [eax + 0x00205a50]");                  // 0x00765102    d980505a2000
    asm("fadd               st, st(1)");                                     // 0x00765108    d8c1
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x0076510a    d95c2428
    asm("fstp               st(0)");                                         // 0x0076510e    ddd8
    asm("call               ?GetInfo@TownDesire@@QBEPAVGTownDesireInfo@@K@Z");                          // 0x00765110    e86b0efeff
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00765115    d9442424
    asm("{disp8} fcomp      dword ptr [eax + 0x18]");                        // 0x00765119    d85818
    asm("fnstsw             ax");                                            // 0x0076511c    dfe0
    asm("test               ah, 0x41");                                      // 0x0076511e    f6c441
    asm("{disp8} jne        _jmp_addr_0x00765132");                          // 0x00765121    750f
    asm("pop                edi");                                           // 0x00765123    5f
    asm("pop                esi");                                           // 0x00765124    5e
    asm("pop                ebp");                                           // 0x00765125    5d
    asm("mov                eax, 0x00000001");                               // 0x00765126    b801000000
    asm("pop                ebx");                                           // 0x0076512b    5b
    asm("add                esp, 0x10");                                     // 0x0076512c    83c410
    asm("ret                0x0004");                                        // 0x0076512f    c20400
    asm("_jmp_addr_0x00765132:");
    asm("pop                edi");                                           // 0x00765132    5f
    asm("pop                esi");                                           // 0x00765133    5e
    asm("pop                ebp");                                           // 0x00765134    5d
    asm("xor.s              eax, eax");                                      // 0x00765135    33c0
    asm("pop                ebx");                                           // 0x00765137    5b
    asm("add                esp, 0x10");                                     // 0x00765138    83c410
    asm("ret                0x0004");                                        // 0x0076513b    c20400
    __builtin_unreachable();
}

bool32_t __fastcall ApproachHandReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00765140    56
    asm("mov.s              esi, ecx");                                      // 0x00765141    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00765143    8b8ebc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00765149    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0076514b    ff502c
    asm("test               eax, eax");                                      // 0x0076514e    85c0
    asm("{disp8} jne        _jmp_addr_0x00765163");                          // 0x00765150    7511
    asm("mov                edx, dword ptr [esi]");                          // 0x00765152    8b16
    asm("mov.s              ecx, esi");                                      // 0x00765154    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00765156    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x0076515c    b801000000
    asm("pop                esi");                                           // 0x00765161    5e
    asm("ret");                                                              // 0x00765162    c3
    asm("_jmp_addr_0x00765163:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00765163    8b86bc000000
    asm("add                eax, 0x14");                                     // 0x00765169    83c014
    asm("push               eax");                                           // 0x0076516c    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0076516d    8d4e14
    asm("push               ecx");                                           // 0x00765170    51
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00765171    e8da7bfeff
    asm("fstp               st(0)");                                         // 0x00765176    ddd8
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000bc]");             // 0x00765178    8b96bc000000
    asm("add                esp, 0x08");                                     // 0x0076517e    83c408
    asm("push               0x1");                                           // 0x00765181    6a01
    asm("push               edx");                                           // 0x00765183    52
    asm("mov.s              ecx, esi");                                      // 0x00765184    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00765186    e89573e8ff
    asm("mov                eax, 0x00000001");                               // 0x0076518b    b801000000
    asm("pop                esi");                                           // 0x00765190    5e
    asm("ret");                                                              // 0x00765191    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindNearbyVillagerWhoIsntReacting__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x007651a0    83ec14
    asm("add                ecx, 0x14");                                     // 0x007651a3    83c114
    asm("mov                eax, dword ptr [ecx]");                          // 0x007651a6    8b01
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x007651a8    8b5104
    asm("push               ebp");                                           // 0x007651ab    55
    asm("push               esi");                                           // 0x007651ac    56
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x007651ad    89442410
    asm("{disp8} mov        eax, dword ptr [ecx + 0x08]");                   // 0x007651b1    8b4108
    asm("push               edi");                                           // 0x007651b4    57
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x007651b5    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x007651b9    8944241c
    asm("mov                edi, 0x00000032");                               // 0x007651bd    bf32000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000001");            // 0x007651c2    c744241001000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000001");            // 0x007651ca    c744240c01000000
    asm("_jmp_addr_0x007651d2:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007651d2    8d4c2414
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                   // 0x007651d6    e8e5f0e9ff
    asm("cmp                eax, 0x01");                                     // 0x007651db    83f801
    asm("{disp8} jne        _jmp_addr_0x0076522e");                          // 0x007651de    754e
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007651e0    8d4c2414
    asm("call               ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ");                          // 0x007651e4    e8a7e2e9ff
    asm("mov.s              esi, eax");                                      // 0x007651e9    8bf0
    asm("test               esi, esi");                                      // 0x007651eb    85f6
    asm("{disp8} je         _jmp_addr_0x0076522e");                          // 0x007651ed    743f
    asm("_jmp_addr_0x007651ef:");
    asm("push               0x0");                                           // 0x007651ef    6a00
    asm("push               0x009cafc8");                                    // 0x007651f1    68c8af9c00
    asm("push               0x009c7f50");                                    // 0x007651f6    68507f9c00
    asm("push               0x0");                                           // 0x007651fb    6a00
    asm("push               esi");                                           // 0x007651fd    56
    asm("call               ___RTDynamicCast");                              // 0x007651fe    e816080600
    asm("add                esp, 0x14");                                     // 0x00765203    83c414
    asm("test               eax, eax");                                      // 0x00765206    85c0
    asm("{disp8} je         _jmp_addr_0x00765214");                          // 0x00765208    740a
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000094]");             // 0x0076520a    8b8894000000
    asm("test               ecx, ecx");                                      // 0x00765210    85c9
    asm("{disp8} je         _jmp_addr_0x00765251");                          // 0x00765212    743d
    asm("_jmp_addr_0x00765214:");
    asm("mov                ebp, dword ptr [esi]");                          // 0x00765214    8b2e
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00765216    8d4c2414
    asm("call               ?ToMap@MapCoords@@QBEPAUMapCell@@XZ");           // 0x0076521a    e811e2e9ff
    asm("push               eax");                                           // 0x0076521f    50
    asm("mov.s              ecx, esi");                                      // 0x00765220    8bce
    asm("call               dword ptr [ebp + 0x53c]");                       // 0x00765222    ff953c050000
    asm("mov.s              esi, eax");                                      // 0x00765228    8bf0
    asm("test               esi, esi");                                      // 0x0076522a    85f6
    asm("{disp8} jne        _jmp_addr_0x007651ef");                          // 0x0076522c    75c1
    asm("_jmp_addr_0x0076522e:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0076522e    8d4c240c
    asm("push               ecx");                                           // 0x00765232    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x14]");                   // 0x00765233    8d542414
    asm("push               edx");                                           // 0x00765237    52
    asm("dec                edi");                                           // 0x00765238    4f
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x00765239    e8a285feff
    asm("add                esp, 0x08");                                     // 0x0076523e    83c408
    asm("push               eax");                                           // 0x00765241    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00765242    8d4c2418
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x00765246    e82502eaff
    asm("test               edi, edi");                                      // 0x0076524b    85ff
    asm("{disp8} jne        _jmp_addr_0x007651d2");                          // 0x0076524d    7583
    asm("xor.s              eax, eax");                                      // 0x0076524f    33c0
    asm("_jmp_addr_0x00765251:");
    asm("pop                edi");                                           // 0x00765251    5f
    asm("pop                esi");                                           // 0x00765252    5e
    asm("pop                ebp");                                           // 0x00765253    5d
    asm("add                esp, 0x14");                                     // 0x00765254    83c414
    asm("ret");                                                              // 0x00765257    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToFlyingObjectPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x18");                                     // 0x00765260    83ec18
    asm("push               ebx");                                           // 0x00765263    53
    asm("push               esi");                                           // 0x00765264    56
    asm("mov.s              esi, ecx");                                      // 0x00765265    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00765267    8b06
    asm("push               edi");                                           // 0x00765269    57
    asm("call               dword ptr [eax + 0x978]");                       // 0x0076526a    ff9078090000
    asm("test               eax, eax");                                      // 0x00765270    85c0
    asm("{disp8} mov        ebx, dword ptr [esp + 0x28]");                   // 0x00765272    8b5c2428
    asm("{disp8} je         _jmp_addr_0x00765292");                          // 0x00765276    741a
    asm("{disp8} mov        eax, dword ptr [ebx + 0x14]");                   // 0x00765278    8b4314
    asm("push               eax");                                           // 0x0076527b    50
    asm("mov.s              ecx, esi");                                      // 0x0076527c    8bce
    asm("call               _jmp_addr_0x005f1e60");                          // 0x0076527e    e8ddcbe8ff
    asm("test               eax, eax");                                      // 0x00765283    85c0
    asm("{disp8} jne        _jmp_addr_0x00765292");                          // 0x00765285    750b
    asm("pop                edi");                                           // 0x00765287    5f
    asm("pop                esi");                                           // 0x00765288    5e
    asm("xor.s              al, al");                                        // 0x00765289    32c0
    asm("pop                ebx");                                           // 0x0076528b    5b
    asm("add                esp, 0x18");                                     // 0x0076528c    83c418
    asm("ret                0x0008");                                        // 0x0076528f    c20800
    asm("_jmp_addr_0x00765292:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000094]");             // 0x00765292    8b8694000000
    asm("test               eax, eax");                                      // 0x00765298    85c0
    asm("{disp8} je         _jmp_addr_0x00765308");                          // 0x0076529a    746c
    asm("mov.s              ecx, esi");                                      // 0x0076529c    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x0076529e    e8bd77e8ff
    asm("cmp                dword ptr [eax + 0x24], 0x0d");                  // 0x007652a3    8378240d
    asm("{disp8} jne        _jmp_addr_0x00765308");                          // 0x007652a7    755f
    asm("{disp32} mov       edi, dword ptr [esi + 0x000000bc]");             // 0x007652a9    8bbebc000000
    asm("test               edi, edi");                                      // 0x007652af    85ff
    asm("{disp8} jne        _jmp_addr_0x007652be");                          // 0x007652b1    750b
    asm("pop                edi");                                           // 0x007652b3    5f
    asm("pop                esi");                                           // 0x007652b4    5e
    asm("xor.s              al, al");                                        // 0x007652b5    32c0
    asm("pop                ebx");                                           // 0x007652b7    5b
    asm("add                esp, 0x18");                                     // 0x007652b8    83c418
    asm("ret                0x0008");                                        // 0x007652bb    c20800
    asm("_jmp_addr_0x007652be:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x007652be    8d4c240c
    asm("push               ecx");                                           // 0x007652c2    51
    asm("mov.s              ecx, ebx");                                      // 0x007652c3    8bcb
    asm("call               _jmp_addr_0x006e45c0");                          // 0x007652c5    e8f6f2f7ff
    asm("push               eax");                                           // 0x007652ca    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                   // 0x007652cb    8d54241c
    asm("push               edx");                                           // 0x007652cf    52
    asm("mov.s              ecx, esi");                                      // 0x007652d0    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x007652d2    e88977e8ff
    asm("mov.s              ecx, eax");                                      // 0x007652d7    8bc8
    asm("call               _jmp_addr_0x006e45c0");                          // 0x007652d9    e8e2f2f7ff
    asm("push               eax");                                           // 0x007652de    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x007652df    e88c7afeff
    asm("{disp8} fstp       dword ptr [esp + 0x30]");                        // 0x007652e4    d95c2430
    asm("mov                eax, dword ptr [edi]");                          // 0x007652e8    8b07
    asm("add                esp, 0x08");                                     // 0x007652ea    83c408
    asm("mov.s              ecx, edi");                                      // 0x007652ed    8bcf
    asm("call               dword ptr [eax + 0x60]");                        // 0x007652ef    ff5060
    asm("{disp8} fcomp      dword ptr [esp + 0x28]");                        // 0x007652f2    d85c2428
    asm("fnstsw             ax");                                            // 0x007652f6    dfe0
    asm("test               ah, 0x41");                                      // 0x007652f8    f6c441
    asm("{disp8} je         _jmp_addr_0x00765308");                          // 0x007652fb    740b
    asm("pop                edi");                                           // 0x007652fd    5f
    asm("pop                esi");                                           // 0x007652fe    5e
    asm("xor.s              al, al");                                        // 0x007652ff    32c0
    asm("pop                ebx");                                           // 0x00765301    5b
    asm("add                esp, 0x18");                                     // 0x00765302    83c418
    asm("ret                0x0008");                                        // 0x00765305    c20800
    asm("_jmp_addr_0x00765308:");
    asm("push               0x0");                                           // 0x00765308    6a00
    asm("push               ebx");                                           // 0x0076530a    53
    asm("mov.s              ecx, esi");                                      // 0x0076530b    8bce
    asm("call               ?ReactToFlyingObjectPriority@Living@@UAEEPAVReaction@@0@Z");                          // 0x0076530d    e8eec4e8ff
    asm("pop                edi");                                           // 0x00765312    5f
    asm("pop                esi");                                           // 0x00765313    5e
    asm("pop                ebx");                                           // 0x00765314    5b
    asm("add                esp, 0x18");                                     // 0x00765315    83c418
    asm("ret                0x0008");                                        // 0x00765318    c20800
    __builtin_unreachable();
}

bool32_t __fastcall ArrivesAtPickupBallReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00765320    56
    asm("push               edi");                                           // 0x00765321    57
    asm("push               0x0");                                           // 0x00765322    6a00
    asm("push               0x009cd070");                                    // 0x00765324    6870d09c00
    asm("mov.s              esi, ecx");                                      // 0x00765329    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x0076532b    8b86bc000000
    asm("push               0x009c7f30");                                    // 0x00765331    68307f9c00
    asm("push               0x0");                                           // 0x00765336    6a00
    asm("push               eax");                                           // 0x00765338    50
    asm("call               ___RTDynamicCast");                              // 0x00765339    e8db060600
    asm("mov.s              edi, eax");                                      // 0x0076533e    8bf8
    asm("add                esp, 0x14");                                     // 0x00765340    83c414
    asm("test               edi, edi");                                      // 0x00765343    85ff
    asm("{disp32} je        _jmp_addr_0x007653d1");                          // 0x00765345    0f8486000000
    asm("mov.s              ecx, edi");                                      // 0x0076534b    8bcf
    asm("call               ?IsBallFree@Ball@@QAE_NXZ");                     // 0x0076534d    e88e0dcdff
    asm("cmp                eax, 0x01");                                     // 0x00765352    83f801
    asm("{disp8} jne        _jmp_addr_0x007653d1");                          // 0x00765355    757a
    asm("mov                eax, dword ptr [esi]");                          // 0x00765357    8b06
    asm("push               0x3a83126f");                                    // 0x00765359    686f12833a
    asm("push               edi");                                           // 0x0076535e    57
    asm("mov.s              ecx, esi");                                      // 0x0076535f    8bce
    asm("call               dword ptr [eax + 0x6b8]");                       // 0x00765361    ff90b8060000
    asm("test               eax, eax");                                      // 0x00765367    85c0
    asm("{disp8} je         _jmp_addr_0x007653b6");                          // 0x00765369    744b
    asm("push               edi");                                           // 0x0076536b    57
    asm("call               _jmp_addr_0x006e4750");                          // 0x0076536c    e8dff3f7ff
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000094]");             // 0x00765371    8b8694000000
    asm("add                esp, 0x04");                                     // 0x00765377    83c404
    asm("test               eax, eax");                                      // 0x0076537a    85c0
    asm("{disp8} je         _jmp_addr_0x00765388");                          // 0x0076537c    740a
    asm("mov                edx, dword ptr [esi]");                          // 0x0076537e    8b16
    asm("mov.s              ecx, esi");                                      // 0x00765380    8bce
    asm("call               dword ptr [edx + 0x998]");                       // 0x00765382    ff9298090000
    asm("_jmp_addr_0x00765388:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00765388    8b06
    asm("mov.s              ecx, esi");                                      // 0x0076538a    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x0076538c    ff5048
    asm("test               eax, eax");                                      // 0x0076538f    85c0
    asm("{disp8} je         _jmp_addr_0x007653db");                          // 0x00765391    7448
    asm("mov                edx, dword ptr [esi]");                          // 0x00765393    8b16
    asm("mov.s              ecx, esi");                                      // 0x00765395    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00765397    ff5248
    asm("push               eax");                                           // 0x0076539a    50
    asm("mov.s              ecx, edi");                                      // 0x0076539b    8bcf
    asm("call               _jmp_addr_0x00436000");                          // 0x0076539d    e85e0ccdff
    asm("cmp                eax, 0x01");                                     // 0x007653a2    83f801
    asm("{disp8} jne        _jmp_addr_0x007653db");                          // 0x007653a5    7534
    asm("mov.s              ecx, esi");                                      // 0x007653a7    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x007653a9    e8c2aeffff
    asm("pop                edi");                                           // 0x007653ae    5f
    asm("mov                eax, 0x00000001");                               // 0x007653af    b801000000
    asm("pop                esi");                                           // 0x007653b4    5e
    asm("ret");                                                              // 0x007653b5    c3
    asm("_jmp_addr_0x007653b6:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007653b6    8b86bc000000
    asm("push               0x1a");                                          // 0x007653bc    6a1a
    asm("add                eax, 0x14");                                     // 0x007653be    83c014
    asm("push               eax");                                           // 0x007653c1    50
    asm("mov.s              ecx, esi");                                      // 0x007653c2    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x007653c4    e837e4ffff
    asm("pop                edi");                                           // 0x007653c9    5f
    asm("mov                eax, 0x00000001");                               // 0x007653ca    b801000000
    asm("pop                esi");                                           // 0x007653cf    5e
    asm("ret");                                                              // 0x007653d0    c3
    asm("_jmp_addr_0x007653d1:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007653d1    8b16
    asm("mov.s              ecx, esi");                                      // 0x007653d3    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x007653d5    ff929c090000
    asm("_jmp_addr_0x007653db:");
    asm("pop                edi");                                           // 0x007653db    5f
    asm("mov                eax, 0x00000001");                               // 0x007653dc    b801000000
    asm("pop                esi");                                           // 0x007653e1    5e
    asm("ret");                                                              // 0x007653e2    c3
    __builtin_unreachable();
}

bool32_t __fastcall WatchFlyingObjectReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007653f0    56
    asm("mov.s              esi, ecx");                                      // 0x007653f1    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007653f3    8b86bc000000
    asm("push               0x1");                                           // 0x007653f9    6a01
    asm("push               eax");                                           // 0x007653fb    50
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x007653fc    e81f71e8ff
    asm("mov                edx, dword ptr [esi]");                          // 0x00765401    8b16
    asm("push               0x1");                                           // 0x00765403    6a01
    asm("mov.s              ecx, esi");                                      // 0x00765405    8bce
    asm("call               dword ptr [edx + 0x8fc]");                       // 0x00765407    ff92fc080000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x0076540d    8b86bc000000
    asm("push               0x0");                                           // 0x00765413    6a00
    asm("push               0x009c7f50");                                    // 0x00765415    68507f9c00
    asm("push               0x009c7f30");                                    // 0x0076541a    68307f9c00
    asm("push               0x0");                                           // 0x0076541f    6a00
    asm("push               eax");                                           // 0x00765421    50
    asm("call               ___RTDynamicCast");                              // 0x00765422    e8f2050600
    asm("add                esp, 0x14");                                     // 0x00765427    83c414
    asm("mov.s              ecx, eax");                                      // 0x0076542a    8bc8
    asm("call               _jmp_addr_0x00639410");                          // 0x0076542c    e8df3fedff
    asm("test               eax, eax");                                      // 0x00765431    85c0
    asm("{disp8} jne        _jmp_addr_0x0076543f");                          // 0x00765433    750a
    asm("mov                eax, dword ptr [esi]");                          // 0x00765435    8b06
    asm("mov.s              ecx, esi");                                      // 0x00765437    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00765439    ff909c090000
    asm("_jmp_addr_0x0076543f:");
    asm("mov                eax, 0x00000001");                               // 0x0076543f    b801000000
    asm("pop                esi");                                           // 0x00765444    5e
    asm("ret");                                                              // 0x00765445    c3
    __builtin_unreachable();
}

bool32_t __fastcall PointAtFlyingObjectReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00765450    83ec0c
    asm("push               esi");                                           // 0x00765453    56
    asm("mov.s              esi, ecx");                                      // 0x00765454    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00765456    8b86bc000000
    asm("push               eax");                                           // 0x0076545c    50
    asm("call               _jmp_addr_0x00646950");                          // 0x0076545d    e8ee14eeff
    asm("add                esp, 0x04");                                     // 0x00765462    83c404
    asm("test               eax, eax");                                      // 0x00765465    85c0
    asm("{disp32} je        _jmp_addr_0x00765529");                          // 0x00765467    0f84bc000000
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000104]");             // 0x0076546d    8b8804010000
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000108]");             // 0x00765473    8b9008010000
    asm("{disp32} mov       eax, dword ptr [eax + 0x0000010c]");             // 0x00765479    8b800c010000
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x0076547f    894c240c
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000094]");             // 0x00765483    8b8e94000000
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x00765489    89442404
    asm("{disp8} mov        eax, dword ptr [ecx + 0x14]");                   // 0x0076548d    8b4114
    asm("add                eax, 0x14");                                     // 0x00765490    83c014
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x00765493    89542408
    asm("push               eax");                                           // 0x00765497    50
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x00765498    8d5614
    asm("push               edx");                                           // 0x0076549b    52
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0076549c    e8cf78feff
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x007654a1    d944240c
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x007654a5    d84c240c
    asm("add                esp, 0x08");                                     // 0x007654a9    83c408
    asm("{disp8} fld        dword ptr [esp + 0x08]");                        // 0x007654ac    d9442408
    asm("{disp8} fmul       dword ptr [esp + 0x08]");                        // 0x007654b0    d84c2408
    asm("faddp              st(1), st");                                     // 0x007654b4    dec1
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x007654b6    d944240c
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x007654ba    d84c240c
    asm("faddp              st(1), st");                                     // 0x007654be    dec1
    asm("fsqrt");                                                            // 0x007654c0    d9fa
    asm("{disp8} fst        dword ptr [esp + 0x0c]");                        // 0x007654c2    d954240c
    asm("fadd.s             st(0), st(0)");                                  // 0x007654c6    dcc0
    asm("fcompp");                                                           // 0x007654c8    ded9
    asm("fnstsw             ax");                                            // 0x007654ca    dfe0
    asm("test               ah, 0x41");                                      // 0x007654cc    f6c441
    asm("{disp8} jne        _jmp_addr_0x007654e7");                          // 0x007654cf    7516
    asm("mov                eax, dword ptr [esi]");                          // 0x007654d1    8b06
    asm("push               0x6");                                           // 0x007654d3    6a06
    asm("mov.s              ecx, esi");                                      // 0x007654d5    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x007654d7    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x007654dd    b801000000
    asm("pop                esi");                                           // 0x007654e2    5e
    asm("add                esp, 0x0c");                                     // 0x007654e3    83c40c
    asm("ret");                                                              // 0x007654e6    c3
    asm("_jmp_addr_0x007654e7:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x007654e7    8b8ebc000000
    asm("push               0x1");                                           // 0x007654ed    6a01
    asm("push               ecx");                                           // 0x007654ef    51
    asm("mov.s              ecx, esi");                                      // 0x007654f0    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x007654f2    e82970e8ff
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007654f7    8b86bc000000
    asm("push               0x0");                                           // 0x007654fd    6a00
    asm("push               0x009c7f50");                                    // 0x007654ff    68507f9c00
    asm("push               0x009c7f30");                                    // 0x00765504    68307f9c00
    asm("push               0x0");                                           // 0x00765509    6a00
    asm("push               eax");                                           // 0x0076550b    50
    asm("call               ___RTDynamicCast");                              // 0x0076550c    e808050600
    asm("add                esp, 0x14");                                     // 0x00765511    83c414
    asm("mov.s              ecx, eax");                                      // 0x00765514    8bc8
    asm("call               _jmp_addr_0x00639410");                          // 0x00765516    e8f53eedff
    asm("test               eax, eax");                                      // 0x0076551b    85c0
    asm("{disp8} jne        _jmp_addr_0x00765529");                          // 0x0076551d    750a
    asm("mov                edx, dword ptr [esi]");                          // 0x0076551f    8b16
    asm("mov.s              ecx, esi");                                      // 0x00765521    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00765523    ff929c090000
    asm("_jmp_addr_0x00765529:");
    asm("mov                eax, 0x00000001");                               // 0x00765529    b801000000
    asm("pop                esi");                                           // 0x0076552e    5e
    asm("add                esp, 0x0c");                                     // 0x0076552f    83c40c
    asm("ret");                                                              // 0x00765532    c3
    __builtin_unreachable();
}

void __fastcall SetupReactToFire__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00765540    8b442404
    asm("push               ebx");                                           // 0x00765544    53
    asm("push               esi");                                           // 0x00765545    56
    asm("push               edi");                                           // 0x00765546    57
    asm("push               0x0");                                           // 0x00765547    6a00
    asm("push               0x009c7f50");                                    // 0x00765549    68507f9c00
    asm("push               0x009c7f30");                                    // 0x0076554e    68307f9c00
    asm("push               0x0");                                           // 0x00765553    6a00
    asm("push               eax");                                           // 0x00765555    50
    asm("mov.s              esi, ecx");                                      // 0x00765556    8bf1
    asm("call               ___RTDynamicCast");                              // 0x00765558    e8bc040600
    asm("mov.s              ebx, eax");                                      // 0x0076555d    8bd8
    asm("add                esp, 0x14");                                     // 0x0076555f    83c414
    asm("test               ebx, ebx");                                      // 0x00765562    85db
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], ebx");             // 0x00765564    899ebc000000
    asm("{disp32} je        _jmp_addr_0x0076560a");                          // 0x0076556a    0f849a000000
    asm("test               byte ptr [esi + 0x000000e0], 0x10");             // 0x00765570    f686e000000010
    asm("{disp8} je         _jmp_addr_0x007655f6");                          // 0x00765577    747d
    asm("mov                edx, dword ptr [esi]");                          // 0x00765579    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076557b    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x0076557d    ff92040b0000
    asm("{disp8} mov        byte ptr [esp + 0x10], al");                     // 0x00765583    88442410
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x00765587    8b7c2410
    asm("mov.s              eax, edi");                                      // 0x0076558b    8bc7
    asm("and                eax, 0x000000ff");                               // 0x0076558d    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x2]");              // 0x00765592    8d0c40
    asm("shl                ecx, 3");                                        // 0x00765595    c1e103
    asm("sub.s              ecx, eax");                                      // 0x00765598    2bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");              // 0x0076559a    8d0449
    asm("{disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9e88]");       // 0x0076559d    8b0c85889edb00
    asm("test               ecx, ecx");                                      // 0x007655a4    85c9
    asm("{disp8} je         _jmp_addr_0x007655b6");                          // 0x007655a6    740e
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008e]");               // 0x007655a8    8a8e8e000000
    asm("{disp8} mov        byte ptr [esp + 0x10], cl");                     // 0x007655ae    884c2410
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x007655b2    8b7c2410
    asm("_jmp_addr_0x007655b6:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x007655b6    8b442414
    asm("mov                edx, dword ptr [esi]");                          // 0x007655ba    8b16
    asm("push               0x000000d7");                                    // 0x007655bc    68d7000000
    asm("push               eax");                                           // 0x007655c1    50
    asm("mov.s              ecx, esi");                                      // 0x007655c2    8bce
    asm("call               dword ptr [edx + 0x990]");                       // 0x007655c4    ff9290090000
    asm("{disp8} mov        eax, dword ptr [ebx + 0x44]");                   // 0x007655ca    8b4344
    asm("test               eax, eax");                                      // 0x007655cd    85c0
    asm("{disp8} je         _jmp_addr_0x0076560a");                          // 0x007655cf    7439
    asm("mov                edx, dword ptr [esi]");                          // 0x007655d1    8b16
    asm("and                edi, 0x000000ff");                               // 0x007655d3    81e7ff000000
    asm("push               edi");                                           // 0x007655d9    57
    asm("mov.s              ecx, esi");                                      // 0x007655da    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000114], eax");             // 0x007655dc    898614010000
    asm("call               dword ptr [edx + 0x860]");                       // 0x007655e2    ff9260080000
    asm("push               eax");                                           // 0x007655e8    50
    asm("mov.s              ecx, esi");                                      // 0x007655e9    8bce
    asm("call               ?SetupMoveAroundFire@Villager@@QAEIABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x007655eb    e88051ffff
    asm("pop                edi");                                           // 0x007655f0    5f
    asm("pop                esi");                                           // 0x007655f1    5e
    asm("pop                ebx");                                           // 0x007655f2    5b
    asm("ret                0x0008");                                        // 0x007655f3    c20800
    asm("_jmp_addr_0x007655f6:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x007655f6    8b4c2414
    asm("mov                eax, dword ptr [esi]");                          // 0x007655fa    8b06
    asm("push               0x000000d7");                                    // 0x007655fc    68d7000000
    asm("push               ecx");                                           // 0x00765601    51
    asm("mov.s              ecx, esi");                                      // 0x00765602    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x00765604    ff9090090000
    asm("_jmp_addr_0x0076560a:");
    asm("pop                edi");                                           // 0x0076560a    5f
    asm("pop                esi");                                           // 0x0076560b    5e
    asm("pop                ebx");                                           // 0x0076560c    5b
    asm("ret                0x0008");                                        // 0x0076560d    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToFirePriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x0c");                                     // 0x00765610    83ec0c
    asm("push               ebx");                                           // 0x00765613    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x14]");                   // 0x00765614    8b5c2414
    asm("{disp8} mov        eax, dword ptr [ebx + 0x14]");                   // 0x00765618    8b4314
    asm("push               ebp");                                           // 0x0076561b    55
    asm("push               esi");                                           // 0x0076561c    56
    asm("push               edi");                                           // 0x0076561d    57
    asm("push               0x0");                                           // 0x0076561e    6a00
    asm("push               0x009c7f50");                                    // 0x00765620    68507f9c00
    asm("push               0x009c7f30");                                    // 0x00765625    68307f9c00
    asm("push               0x0");                                           // 0x0076562a    6a00
    asm("push               eax");                                           // 0x0076562c    50
    asm("mov.s              esi, ecx");                                      // 0x0076562d    8bf1
    asm("call               ___RTDynamicCast");                              // 0x0076562f    e8e5030600
    asm("mov.s              edi, eax");                                      // 0x00765634    8bf8
    asm("add                esp, 0x14");                                     // 0x00765636    83c414
    asm("test               edi, edi");                                      // 0x00765639    85ff
    asm("{disp8} jne        _jmp_addr_0x00765649");                          // 0x0076563b    750c
    asm("pop                edi");                                           // 0x0076563d    5f
    asm("pop                esi");                                           // 0x0076563e    5e
    asm("pop                ebp");                                           // 0x0076563f    5d
    asm("xor.s              al, al");                                        // 0x00765640    32c0
    asm("pop                ebx");                                           // 0x00765642    5b
    asm("add                esp, 0x0c");                                     // 0x00765643    83c40c
    asm("ret                0x0008");                                        // 0x00765646    c20800
    asm("_jmp_addr_0x00765649:");
    asm("{disp8} mov        ebp, dword ptr [edi + 0x44]");                   // 0x00765649    8b6f44
    asm("test               ebp, ebp");                                      // 0x0076564c    85ed
    asm("{disp8} jne        _jmp_addr_0x0076565c");                          // 0x0076564e    750c
    asm("pop                edi");                                           // 0x00765650    5f
    asm("pop                esi");                                           // 0x00765651    5e
    asm("pop                ebp");                                           // 0x00765652    5d
    asm("xor.s              al, al");                                        // 0x00765653    32c0
    asm("pop                ebx");                                           // 0x00765655    5b
    asm("add                esp, 0x0c");                                     // 0x00765656    83c40c
    asm("ret                0x0008");                                        // 0x00765659    c20800
    asm("_jmp_addr_0x0076565c:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0076565c    8b06
    asm("mov.s              ecx, esi");                                      // 0x0076565e    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00765660    ff90040b0000
    asm("cmp                al, -0x25");                                     // 0x00765666    3cdb
    asm("{disp8} jne        _jmp_addr_0x00765676");                          // 0x00765668    750c
    asm("pop                edi");                                           // 0x0076566a    5f
    asm("pop                esi");                                           // 0x0076566b    5e
    asm("pop                ebp");                                           // 0x0076566c    5d
    asm("xor.s              al, al");                                        // 0x0076566d    32c0
    asm("pop                ebx");                                           // 0x0076566f    5b
    asm("add                esp, 0x0c");                                     // 0x00765670    83c40c
    asm("ret                0x0008");                                        // 0x00765673    c20800
    asm("_jmp_addr_0x00765676:");
    asm("add                edi, 0x14");                                     // 0x00765676    83c714
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00765679    8d4e14
    asm("push               edi");                                           // 0x0076567c    57
    asm("push               ecx");                                           // 0x0076567d    51
    asm("call               _jmp_addr_0x0074cd50");                          // 0x0076567e    e8cd76feff
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00765683    d95c2418
    asm("add                esp, 0x08");                                     // 0x00765687    83c408
    asm("mov.s              ecx, ebp");                                      // 0x0076568a    8bcd
    asm("call               _jmp_addr_0x0072ff10");                          // 0x0076568c    e87fa8fcff
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00765691    d95c2420
    asm("mov.s              ecx, ebp");                                      // 0x00765695    8bcd
    asm("call               _jmp_addr_0x00730000");                          // 0x00765697    e864a9fcff
    asm("{disp8} fdivr      dword ptr [esp + 0x20]");                        // 0x0076569c    d87c2420
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x389aa8]");        // 0x007656a0    8b15a8fad400
    asm("xor.s              edi, edi");                                      // 0x007656a6    33ff
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x007656a8    89542414
    asm("{disp8} mov        dword ptr [esp + 0x18], edi");                   // 0x007656ac    897c2418
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x007656b0    d80db4a38a00
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x007656b6    d80590a38a00
    asm("{disp8} fimul      dword ptr [esp + 0x14]");                        // 0x007656bc    da4c2414
    asm("{disp32} fcomp     dword ptr [__real@437f0000]");                   // 0x007656c0    d81d70b28a00
    asm("fnstsw             ax");                                            // 0x007656c6    dfe0
    asm("test               ah, 0x01");                                      // 0x007656c8    f6c401
    asm("{disp8} je         _jmp_addr_0x00765702");                          // 0x007656cb    7435
    asm("mov.s              ecx, ebp");                                      // 0x007656cd    8bcd
    asm("call               _jmp_addr_0x0072ff10");                          // 0x007656cf    e83ca8fcff
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x007656d4    d95c2420
    asm("mov.s              ecx, ebp");                                      // 0x007656d8    8bcd
    asm("call               _jmp_addr_0x00730000");                          // 0x007656da    e821a9fcff
    asm("{disp8} fdivr      dword ptr [esp + 0x20]");                        // 0x007656df    d87c2420
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x389aa8]");        // 0x007656e3    a1a8fad400
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x007656e8    89442414
    asm("{disp8} mov        dword ptr [esp + 0x18], edi");                   // 0x007656ec    897c2418
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x007656f0    d80db4a38a00
    asm("{disp32} fadd      dword ptr [_rdata_float1p0]");                   // 0x007656f6    d80590a38a00
    asm("{disp8} fimul      dword ptr [esp + 0x14]");                        // 0x007656fc    da4c2414
    asm("{disp8} jmp        _jmp_addr_0x00765708");                          // 0x00765700    eb06
    asm("_jmp_addr_0x00765702:");
    asm("{disp32} fld       dword ptr [__real@437f0000]");                   // 0x00765702    d90570b28a00
    asm("_jmp_addr_0x00765708:");
    asm("call               _jmp_addr_0x007a1400");                          // 0x00765708    e8f3bc0300
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x0076570d    8b0d5c19d000
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00205a40]");             // 0x00765713    8b91405a2000
    asm("sub                edx, dword ptr [ebx + 0x2c]");                   // 0x00765719    2b532c
    asm("cmp                edx, 0x19");                                     // 0x0076571c    83fa19
    asm("{disp8} mov        byte ptr [esp + 0x20], al");                     // 0x0076571f    88442420
    asm("{disp8} jae        _jmp_addr_0x0076573e");                          // 0x00765723    7319
    asm("mov.s              ecx, ebx");                                      // 0x00765725    8bcb
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00765727    e8d4eff7ff
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x0076572c    d9442410
    asm("{disp8} fcomp      dword ptr [eax + 0x40]");                        // 0x00765730    d85840
    asm("fnstsw             ax");                                            // 0x00765733    dfe0
    asm("test               ah, 0x01");                                      // 0x00765735    f6c401
    asm("{disp32} jne       _jmp_addr_0x0076585a");                          // 0x00765738    0f851c010000
    asm("_jmp_addr_0x0076573e:");
    asm("mov.s              ecx, ebp");                                      // 0x0076573e    8bcd
    asm("call               _jmp_addr_0x00730020");                          // 0x00765740    e8dba8fcff
    asm("{disp8} fcomp      dword ptr [esp + 0x10]");                        // 0x00765745    d85c2410
    asm("fnstsw             ax");                                            // 0x00765749    dfe0
    asm("test               ah, 0x41");                                      // 0x0076574b    f6c441
    asm("{disp32} je        _jmp_addr_0x0076585a");                          // 0x0076574e    0f8406010000
    asm("mov                eax, dword ptr [esi]");                          // 0x00765754    8b06
    asm("mov.s              ecx, esi");                                      // 0x00765756    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00765758    ff90040b0000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x0076575e    8b4c2424
    asm("and                eax, 0x000000ff");                               // 0x00765762    25ff000000
    asm("cmp.s              ecx, edi");                                      // 0x00765767    3bcf
    asm("{disp8} je         _jmp_addr_0x00765775");                          // 0x00765769    740a
    asm("cmp                dword ptr [ecx + 0x24], 0x0a");                  // 0x0076576b    8379240a
    asm("{disp32} jne       _jmp_addr_0x0076585a");                          // 0x0076576f    0f85e5000000
    asm("_jmp_addr_0x00765775:");
    asm("lea                eax, dword ptr [eax + eax * 0x8]");              // 0x00765775    8d04c0
    asm("shl                eax, 4");                                        // 0x00765778    c1e004
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00d091b8]");             // 0x0076577b    8b88b891d000
    asm("cmp                ecx, 0x0075ae80");                               // 0x00765781    81f980ae7500
    asm("{disp8} jne        _jmp_addr_0x007657a5");                          // 0x00765787    751c
    asm("cmp.s              ecx, edi");                                      // 0x00765789    3bcf
    asm("{disp8} je         _jmp_addr_0x007657b7");                          // 0x0076578b    742a
    asm("cmp                dword ptr [eax + 0x00d091bc], edi");             // 0x0076578d    39b8bc91d000
    asm("{disp8} jne        _jmp_addr_0x007657a5");                          // 0x00765793    7510
    asm("cmp                dword ptr [eax + 0x00d091c0], edi");             // 0x00765795    39b8c091d000
    asm("{disp8} jne        _jmp_addr_0x007657a5");                          // 0x0076579b    7508
    asm("cmp                dword ptr [eax + 0x00d091c4], edi");             // 0x0076579d    39b8c491d000
    asm("{disp8} je         _jmp_addr_0x007657b7");                          // 0x007657a3    7412
    asm("_jmp_addr_0x007657a5:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007657a5    8b16
    asm("mov.s              ecx, esi");                                      // 0x007657a7    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x007657a9    ff92040b0000
    asm("cmp                al, -0x24");                                     // 0x007657af    3cdc
    asm("{disp32} jne       _jmp_addr_0x0076585a");                          // 0x007657b1    0f85a3000000
    asm("_jmp_addr_0x007657b7:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x007657b7    8b8e14010000
    asm("cmp.s              ecx, edi");                                      // 0x007657bd    3bcf
    asm("{disp32} je        _jmp_addr_0x0076585a");                          // 0x007657bf    0f8495000000
    asm("call               _jmp_addr_0x007305f0");                          // 0x007657c5    e826aefcff
    asm("test               eax, eax");                                      // 0x007657ca    85c0
    asm("{disp32} je        _jmp_addr_0x0076585a");                          // 0x007657cc    0f8488000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000114]");             // 0x007657d2    8b8614010000
    asm("push               eax");                                           // 0x007657d8    50
    asm("mov.s              ecx, ebp");                                      // 0x007657d9    8bcd
    asm("call               _jmp_addr_0x0072fea0");                          // 0x007657db    e8c0a6fcff
    asm("test               eax, eax");                                      // 0x007657e0    85c0
    asm("{disp8} je         _jmp_addr_0x007657f0");                          // 0x007657e2    740c
    asm("pop                edi");                                           // 0x007657e4    5f
    asm("pop                esi");                                           // 0x007657e5    5e
    asm("pop                ebp");                                           // 0x007657e6    5d
    asm("xor.s              al, al");                                        // 0x007657e7    32c0
    asm("pop                ebx");                                           // 0x007657e9    5b
    asm("add                esp, 0x0c");                                     // 0x007657ea    83c40c
    asm("ret                0x0008");                                        // 0x007657ed    c20800
    asm("_jmp_addr_0x007657f0:");
    asm("{disp32} fld       dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x007657f0    d905d0a99900
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x007657f6    8b8e14010000
    asm("{disp32} fadd      dword ptr [data_bytes + 0x389ac4]");             // 0x007657fc    d805c4fad400
    asm("mov                eax, dword ptr [ecx]");                          // 0x00765802    8b01
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00765804    d95c2424
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00765808    ff502c
    asm("test               eax, eax");                                      // 0x0076580b    85c0
    asm("{disp8} je         _jmp_addr_0x0076585a");                          // 0x0076580d    744b
    asm("{disp32} mov       edi, dword ptr [esi + 0x00000114]");             // 0x0076580f    8bbe14010000
    asm("mov.s              ecx, ebp");                                      // 0x00765815    8bcd
    asm("call               _jmp_addr_0x007305f0");                          // 0x00765817    e8d4adfcff
    asm("add                eax, 0x14");                                     // 0x0076581c    83c014
    asm("push               eax");                                           // 0x0076581f    50
    asm("mov.s              ecx, edi");                                      // 0x00765820    8bcf
    asm("call               _jmp_addr_0x007305f0");                          // 0x00765822    e8c9adfcff
    asm("add                eax, 0x14");                                     // 0x00765827    83c014
    asm("push               eax");                                           // 0x0076582a    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0076582b    e84075feff
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x00765830    d944242c
    asm("fadd.s             st(0), st(0)");                                  // 0x00765834    dcc0
    asm("add                esp, 0x08");                                     // 0x00765836    83c408
    asm("fcompp");                                                           // 0x00765839    ded9
    asm("fnstsw             ax");                                            // 0x0076583b    dfe0
    asm("test               ah, 0x01");                                      // 0x0076583d    f6c401
    asm("{disp8} jne        _jmp_addr_0x0076585a");                          // 0x00765840    7518
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000114]");             // 0x00765842    8b8e14010000
    asm("push               ebp");                                           // 0x00765848    55
    asm("call               _jmp_addr_0x0072fbe0");                          // 0x00765849    e892a3fcff
    asm("pop                edi");                                           // 0x0076584e    5f
    asm("pop                esi");                                           // 0x0076584f    5e
    asm("pop                ebp");                                           // 0x00765850    5d
    asm("xor.s              al, al");                                        // 0x00765851    32c0
    asm("pop                ebx");                                           // 0x00765853    5b
    asm("add                esp, 0x0c");                                     // 0x00765854    83c40c
    asm("ret                0x0008");                                        // 0x00765857    c20800
    asm("_jmp_addr_0x0076585a:");
    asm("{disp8} mov        al, byte ptr [esp + 0x20]");                     // 0x0076585a    8a442420
    asm("pop                edi");                                           // 0x0076585e    5f
    asm("pop                esi");                                           // 0x0076585f    5e
    asm("pop                ebp");                                           // 0x00765860    5d
    asm("pop                ebx");                                           // 0x00765861    5b
    asm("add                esp, 0x0c");                                     // 0x00765862    83c40c
    asm("ret                0x0008");                                        // 0x00765865    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ReactToFire__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x00765870    83ec14
    asm("push               ebx");                                           // 0x00765873    53
    asm("push               ebp");                                           // 0x00765874    55
    asm("push               esi");                                           // 0x00765875    56
    asm("push               edi");                                           // 0x00765876    57
    asm("push               0x0");                                           // 0x00765877    6a00
    asm("push               0x009c7f50");                                    // 0x00765879    68507f9c00
    asm("mov.s              esi, ecx");                                      // 0x0076587e    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00765880    8b86bc000000
    asm("push               0x009c7f30");                                    // 0x00765886    68307f9c00
    asm("push               0x0");                                           // 0x0076588b    6a00
    asm("push               eax");                                           // 0x0076588d    50
    asm("call               ___RTDynamicCast");                              // 0x0076588e    e886010600
    asm("add                esp, 0x14");                                     // 0x00765893    83c414
    asm("test               eax, eax");                                      // 0x00765896    85c0
    asm("{disp8} jne        _jmp_addr_0x007658a2");                          // 0x00765898    7508
    asm("pop                edi");                                           // 0x0076589a    5f
    asm("pop                esi");                                           // 0x0076589b    5e
    asm("pop                ebp");                                           // 0x0076589c    5d
    asm("pop                ebx");                                           // 0x0076589d    5b
    asm("add                esp, 0x14");                                     // 0x0076589e    83c414
    asm("ret");                                                              // 0x007658a1    c3
    asm("_jmp_addr_0x007658a2:");
    asm("{disp8} mov        ebx, dword ptr [eax + 0x44]");                   // 0x007658a2    8b5844
    asm("test               ebx, ebx");                                      // 0x007658a5    85db
    asm("{disp8} jne        _jmp_addr_0x007658b3");                          // 0x007658a7    750a
    asm("pop                edi");                                           // 0x007658a9    5f
    asm("pop                esi");                                           // 0x007658aa    5e
    asm("pop                ebp");                                           // 0x007658ab    5d
    asm("xor.s              eax, eax");                                      // 0x007658ac    33c0
    asm("pop                ebx");                                           // 0x007658ae    5b
    asm("add                esp, 0x14");                                     // 0x007658af    83c414
    asm("ret");                                                              // 0x007658b2    c3
    asm("_jmp_addr_0x007658b3:");
    asm("push               0x2");                                           // 0x007658b3    6a02
    asm("push               eax");                                           // 0x007658b5    50
    asm("mov.s              ecx, esi");                                      // 0x007658b6    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000114], ebx");             // 0x007658b8    899e14010000
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x007658be    e85d6ce8ff
    asm("test               eax, eax");                                      // 0x007658c3    85c0
    asm("{disp32} je        _jmp_addr_0x00765b5a");                          // 0x007658c5    0f848f020000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007658cb    8b86bc000000
    asm("add                eax, 0x14");                                     // 0x007658d1    83c014
    asm("push               eax");                                           // 0x007658d4    50
    asm("{disp8} lea        ebp, dword ptr [esi + 0x14]");                   // 0x007658d5    8d6e14
    asm("push               ebp");                                           // 0x007658d8    55
    asm("call               _jmp_addr_0x0074cd50");                          // 0x007658d9    e87274feff
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x007658de    d95c2418
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000094]");             // 0x007658e2    8b8694000000
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x007658e8    8b0d5c19d000
    asm("{disp8} mov        edi, dword ptr [eax + 0x2c]");                   // 0x007658ee    8b782c
    asm("{disp32} mov       edx, dword ptr [ecx + 0x00205a40]");             // 0x007658f1    8b91405a2000
    asm("sub.s              edx, edi");                                      // 0x007658f7    2bd7
    asm("add                esp, 0x08");                                     // 0x007658f9    83c408
    asm("cmp                edx, 0x19");                                     // 0x007658fc    83fa19
    asm("sbb.s              edi, edi");                                      // 0x007658ff    1bff
    asm("neg                edi");                                           // 0x00765901    f7df
    asm("{disp8} je         _jmp_addr_0x00765921");                          // 0x00765903    741c
    asm("mov.s              ecx, esi");                                      // 0x00765905    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x00765907    e85471e8ff
    asm("mov.s              ecx, eax");                                      // 0x0076590c    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x0076590e    e8ededf7ff
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00765913    d9442410
    asm("{disp8} fcomp      dword ptr [eax + 0x40]");                        // 0x00765917    d85840
    asm("fnstsw             ax");                                            // 0x0076591a    dfe0
    asm("test               ah, 0x01");                                      // 0x0076591c    f6c401
    asm("{disp8} jne        _jmp_addr_0x00765937");                          // 0x0076591f    7516
    asm("_jmp_addr_0x00765921:");
    asm("mov.s              ecx, ebx");                                      // 0x00765921    8bcb
    asm("call               _jmp_addr_0x00730020");                          // 0x00765923    e8f8a6fcff
    asm("{disp8} fcomp      dword ptr [esp + 0x10]");                        // 0x00765928    d85c2410
    asm("fnstsw             ax");                                            // 0x0076592c    dfe0
    asm("test               ah, 0x41");                                      // 0x0076592e    f6c441
    asm("{disp32} jne       _jmp_addr_0x00765a05");                          // 0x00765931    0f85ce000000
    asm("_jmp_addr_0x00765937:");
    asm("xor.s              ebp, ebp");                                      // 0x00765937    33ed
    asm("cmp.s              edi, ebp");                                      // 0x00765939    3bfd
    asm("{disp8} je         _jmp_addr_0x00765992");                          // 0x0076593b    7455
    asm("push               0x000005d2");                                    // 0x0076593d    68d2050000
    asm("push               0x00c24588");                                    // 0x00765942    688845c200
    asm("mov.s              ecx, esi");                                      // 0x00765947    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x00765949    e81271e8ff
    asm("mov.s              ecx, eax");                                      // 0x0076594e    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00765950    e8abedf7ff
    asm("mov.s              ecx, esi");                                      // 0x00765955    8bce
    asm("mov.s              edi, eax");                                      // 0x00765957    8bf8
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x00765959    e80271e8ff
    asm("mov.s              ecx, eax");                                      // 0x0076595e    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00765960    e89bedf7ff
    asm("{disp8} fld        dword ptr [edi + 0x44]");                        // 0x00765965    d94744
    asm("{disp8} fsub       dword ptr [eax + 0x40]");                        // 0x00765968    d86040
    asm("push               ecx");                                           // 0x0076596b    51
    asm("fstp               dword ptr [esp]");                               // 0x0076596c    d91c24
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0076596f    e8bc8bf7ff
    asm("add                esp, 0x0c");                                     // 0x00765974    83c40c
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00765977    d95c2410
    asm("mov.s              ecx, esi");                                      // 0x0076597b    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x0076597d    e8de70e8ff
    asm("mov.s              ecx, eax");                                      // 0x00765982    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00765984    e877edf7ff
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00765989    d9442410
    asm("{disp8} fadd       dword ptr [eax + 0x40]");                        // 0x0076598d    d84040
    asm("{disp8} jmp        _jmp_addr_0x007659b8");                          // 0x00765990    eb26
    asm("_jmp_addr_0x00765992:");
    asm("push               0x000005d6");                                    // 0x00765992    68d6050000
    asm("push               0x00c24588");                                    // 0x00765997    688845c200
    asm("push               0x40000000");                                    // 0x0076599c    6800000040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007659a1    e88a8bf7ff
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x007659a6    d95c241c
    asm("add                esp, 0x0c");                                     // 0x007659aa    83c40c
    asm("mov.s              ecx, ebx");                                      // 0x007659ad    8bcb
    asm("call               _jmp_addr_0x00730020");                          // 0x007659af    e86ca6fcff
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                        // 0x007659b4    d8442410
    asm("_jmp_addr_0x007659b8:");
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000bc]");             // 0x007659b8    8b96bc000000
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x007659be    d95c2410
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x007659c2    8b4c2410
    asm("mov                eax, dword ptr [esi]");                          // 0x007659c6    8b06
    asm("push               ecx");                                           // 0x007659c8    51
    asm("push               edx");                                           // 0x007659c9    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x007659ca    8d4c241c
    asm("push               ecx");                                           // 0x007659ce    51
    asm("mov.s              ecx, esi");                                      // 0x007659cf    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], ebp");                   // 0x007659d1    896c2420
    asm("{disp8} mov        dword ptr [esp + 0x24], ebp");                   // 0x007659d5    896c2424
    asm("{disp8} mov        dword ptr [esp + 0x28], 0x00000000");            // 0x007659d9    c744242800000000
    asm("call               dword ptr [eax + 0xb00]");                       // 0x007659e1    ff90000b0000
    asm("push               0x000000d7");                                    // 0x007659e7    68d7000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x007659ec    8d542418
    asm("push               edx");                                           // 0x007659f0    52
    asm("mov.s              ecx, esi");                                      // 0x007659f1    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007659f3    e898cee8ff
    asm("pop                edi");                                           // 0x007659f8    5f
    asm("pop                esi");                                           // 0x007659f9    5e
    asm("pop                ebp");                                           // 0x007659fa    5d
    asm("mov                eax, 0x00000001");                               // 0x007659fb    b801000000
    asm("pop                ebx");                                           // 0x00765a00    5b
    asm("add                esp, 0x14");                                     // 0x00765a01    83c414
    asm("ret");                                                              // 0x00765a04    c3
    asm("_jmp_addr_0x00765a05:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00765a05    8b06
    asm("mov.s              ecx, esi");                                      // 0x00765a07    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00765a09    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x00765a0f    25ff000000
    asm("lea                ecx, dword ptr [eax + eax * 0x8]");              // 0x00765a14    8d0cc0
    asm("shl                ecx, 4");                                        // 0x00765a17    c1e104
    asm("add                ecx, 0x00d091b8");                               // 0x00765a1a    81c1b891d000
    asm("mov.s              edi, ecx");                                      // 0x00765a20    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x00765a22    8b07
    asm("cmp                eax, 0x0075ae80");                               // 0x00765a24    3d80ae7500
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                   // 0x00765a29    8b4f04
    asm("{disp8} mov        edx, dword ptr [edi + 0x08]");                   // 0x00765a2c    8b5708
    asm("{disp8} mov        edi, dword ptr [edi + 0x0c]");                   // 0x00765a2f    8b7f0c
    asm("{disp8} jne        _jmp_addr_0x00765a5b");                          // 0x00765a32    7527
    asm("test               eax, eax");                                      // 0x00765a34    85c0
    asm("{disp8} je         _jmp_addr_0x00765a44");                          // 0x00765a36    740c
    asm("test               ecx, ecx");                                      // 0x00765a38    85c9
    asm("{disp8} jne        _jmp_addr_0x00765a5b");                          // 0x00765a3a    751f
    asm("test               edx, edx");                                      // 0x00765a3c    85d2
    asm("{disp8} jne        _jmp_addr_0x00765a5b");                          // 0x00765a3e    751b
    asm("test               edi, edi");                                      // 0x00765a40    85ff
    asm("{disp8} jne        _jmp_addr_0x00765a5b");                          // 0x00765a42    7517
    asm("_jmp_addr_0x00765a44:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00765a44    8b16
    asm("mov.s              ecx, esi");                                      // 0x00765a46    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00765a48    ff929c090000
    asm("pop                edi");                                           // 0x00765a4e    5f
    asm("pop                esi");                                           // 0x00765a4f    5e
    asm("pop                ebp");                                           // 0x00765a50    5d
    asm("mov                eax, 0x00000001");                               // 0x00765a51    b801000000
    asm("pop                ebx");                                           // 0x00765a56    5b
    asm("add                esp, 0x14");                                     // 0x00765a57    83c414
    asm("ret");                                                              // 0x00765a5a    c3
    asm("_jmp_addr_0x00765a5b:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00765a5b    8b06
    asm("mov.s              ecx, esi");                                      // 0x00765a5d    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00765a5f    ff5048
    asm("test               eax, eax");                                      // 0x00765a62    85c0
    asm("{disp32} je        _jmp_addr_0x00765b33");                          // 0x00765a64    0f84c9000000
    asm("test               byte ptr [esi + 0x000000e0], 0x10");             // 0x00765a6a    f686e000000010
    asm("{disp32} jne       _jmp_addr_0x00765b33");                          // 0x00765a71    0f85bc000000
    asm("push               0x43c80000");                                    // 0x00765a77    680000c843
    asm("add                eax, 0x14");                                     // 0x00765a7c    83c014
    asm("push               ebp");                                           // 0x00765a7f    55
    asm("push               eax");                                           // 0x00765a80    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00765a81    e8ea72feff
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x00765a86    d95c2404
    asm("add                esp, 0x04");                                     // 0x00765a8a    83c404
    asm("call               _GetDistanceModifier__6GUtilsFff@8");            // 0x00765a8d    e8fe97feff
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00765a92    d95c2428
    asm("add                esp, 0x08");                                     // 0x00765a96    83c408
    asm("mov.s              ecx, ebx");                                      // 0x00765a99    8bcb
    asm("call               _jmp_addr_0x00730290");                          // 0x00765a9b    e8f0a7fcff
    asm("{disp32} fmul      dword ptr [__real@40c90fdb]");                   // 0x00765aa0    d80d10b28a00
    asm("mov                edx, dword ptr [esi]");                          // 0x00765aa6    8b16
    asm("mov.s              ecx, esi");                                      // 0x00765aa8    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00765aaa    d95c2410
    asm("call               dword ptr [edx + 0x60]");                        // 0x00765aae    ff5260
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2418]");              // 0x00765ab1    d80d18b48a00
    asm("{disp8} fdivr      dword ptr [esp + 0x10]");                        // 0x00765ab7    d87c2410
    asm("{disp8} fst        dword ptr [esp + 0x10]");                        // 0x00765abb    d9542410
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00765abf    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00765ac5    dfe0
    asm("test               ah, 0x40");                                      // 0x00765ac7    f6c440
    asm("{disp8} jne        _jmp_addr_0x00765af4");                          // 0x00765aca    7528
    asm("mov.s              ecx, ebx");                                      // 0x00765acc    8bcb
    asm("call               ?GetFirstCaused@FireEffect@@QAEIXZ");            // 0x00765ace    e80dd0fcff
    asm("{disp8} mov        eax, dword ptr [eax + 0x4c]");                   // 0x00765ad3    8b404c
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00765ad6    89442414
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");            // 0x00765ada    c744241800000000
    asm("{disp8} fild       qword ptr [esp + 0x14]");                        // 0x00765ae2    df6c2414
    asm("{disp8} fsubr      dword ptr [esp + 0x10]");                        // 0x00765ae6    d86c2410
    asm("{disp8} fdiv       dword ptr [esp + 0x10]");                        // 0x00765aea    d8742410
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00765aee    d95c2410
    asm("{disp8} jmp        _jmp_addr_0x00765afc");                          // 0x00765af2    eb08
    asm("_jmp_addr_0x00765af4:");
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00765af4    c744241000000000
    asm("_jmp_addr_0x00765afc:");
    asm("mov.s              ecx, ebx");                                      // 0x00765afc    8bcb
    asm("call               _jmp_addr_0x007302e0");                          // 0x00765afe    e8dda7fcff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00765b03    d95c2414
    asm("mov.s              ecx, ebx");                                      // 0x00765b07    8bcb
    asm("call               _jmp_addr_0x00730360");                          // 0x00765b09    e852a8fcff
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x00765b0e    d9442414
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00765b12    d84c2410
    asm("{disp8} fmul       dword ptr [esp + 0x20]");                        // 0x00765b16    d84c2420
    asm("{disp32} fcomp     dword ptr [__real@3dcccccd]");                   // 0x00765b1a    d81d2cb28a00
    asm("fnstsw             ax");                                            // 0x00765b20    dfe0
    asm("test               ah, 0x41");                                      // 0x00765b22    f6c441
    asm("{disp8} jne        _jmp_addr_0x00765b33");                          // 0x00765b25    750c
    asm("push               ebx");                                           // 0x00765b27    53
    asm("mov.s              ecx, esi");                                      // 0x00765b28    8bce
    asm("call               ?DecideHowToPutOutFire@Villager@@QAEIPAVFireEffect@@@Z");                          // 0x00765b2a    e8a148ffff
    asm("test               eax, eax");                                      // 0x00765b2f    85c0
    asm("{disp8} jne        _jmp_addr_0x00765b5a");                          // 0x00765b31    7527
    asm("_jmp_addr_0x00765b33:");
    asm("{disp32} mov       cl, byte ptr [esi + 0x0000008e]");               // 0x00765b33    8a8e8e000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00765b39    8b06
    asm("{disp8} mov        byte ptr [esp + 0x20], cl");                     // 0x00765b3b    884c2420
    asm("{disp8} mov        edx, dword ptr [esp + 0x20]");                   // 0x00765b3f    8b542420
    asm("and                edx, 0x000000ff");                               // 0x00765b43    81e2ff000000
    asm("push               edx");                                           // 0x00765b49    52
    asm("mov.s              ecx, esi");                                      // 0x00765b4a    8bce
    asm("call               dword ptr [eax + 0x860]");                       // 0x00765b4c    ff9060080000
    asm("push               eax");                                           // 0x00765b52    50
    asm("mov.s              ecx, esi");                                      // 0x00765b53    8bce
    asm("call               ?SetupMoveAroundFire@Villager@@QAEIABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00765b55    e8164cffff
    asm("_jmp_addr_0x00765b5a:");
    asm("pop                edi");                                           // 0x00765b5a    5f
    asm("pop                esi");                                           // 0x00765b5b    5e
    asm("pop                ebp");                                           // 0x00765b5c    5d
    asm("mov                eax, 0x00000001");                               // 0x00765b5d    b801000000
    asm("pop                ebx");                                           // 0x00765b62    5b
    asm("add                esp, 0x14");                                     // 0x00765b63    83c414
    asm("ret");                                                              // 0x00765b66    c3
    __builtin_unreachable();
}

void __fastcall SetupReactToWood__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00765b70    8b442404
    asm("push               esi");                                           // 0x00765b74    56
    asm("push               edi");                                           // 0x00765b75    57
    asm("push               0x0");                                           // 0x00765b76    6a00
    asm("push               0x009c7f50");                                    // 0x00765b78    68507f9c00
    asm("push               0x009c7f30");                                    // 0x00765b7d    68307f9c00
    asm("push               0x0");                                           // 0x00765b82    6a00
    asm("push               eax");                                           // 0x00765b84    50
    asm("mov.s              esi, ecx");                                      // 0x00765b85    8bf1
    asm("call               ___RTDynamicCast");                              // 0x00765b87    e88dfe0500
    asm("mov                edx, dword ptr [esi]");                          // 0x00765b8c    8b16
    asm("add                esp, 0x14");                                     // 0x00765b8e    83c414
    asm("mov.s              edi, eax");                                      // 0x00765b91    8bf8
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00765b93    8b442410
    asm("push               0x15");                                          // 0x00765b97    6a15
    asm("push               eax");                                           // 0x00765b99    50
    asm("mov.s              ecx, esi");                                      // 0x00765b9a    8bce
    asm("call               dword ptr [edx + 0x990]");                       // 0x00765b9c    ff9290090000
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edi");             // 0x00765ba2    89bebc000000
    asm("pop                edi");                                           // 0x00765ba8    5f
    asm("pop                esi");                                           // 0x00765ba9    5e
    asm("ret                0x0008");                                        // 0x00765baa    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToMagicShieldPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x0c");                                     // 0x00765bb0    83ec0c
    asm("push               esi");                                           // 0x00765bb3    56
    asm("push               edi");                                           // 0x00765bb4    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x00765bb5    8b7c2418
    asm("{disp8} mov        eax, dword ptr [edi + 0x14]");                   // 0x00765bb9    8b4714
    asm("push               0x0");                                           // 0x00765bbc    6a00
    asm("push               0x00c22778");                                    // 0x00765bbe    687827c200
    asm("push               0x009c7f30");                                    // 0x00765bc3    68307f9c00
    asm("push               0x0");                                           // 0x00765bc8    6a00
    asm("push               eax");                                           // 0x00765bca    50
    asm("mov.s              esi, ecx");                                      // 0x00765bcb    8bf1
    asm("call               ___RTDynamicCast");                              // 0x00765bcd    e847fe0500
    asm("add                esp, 0x14");                                     // 0x00765bd2    83c414
    asm("test               eax, eax");                                      // 0x00765bd5    85c0
    asm("{disp8} je         _jmp_addr_0x00765c55");                          // 0x00765bd7    747c
    asm("mov                edx, dword ptr [eax]");                          // 0x00765bd9    8b10
    asm("mov.s              ecx, eax");                                      // 0x00765bdb    8bc8
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00765bdd    ff522c
    asm("test               eax, eax");                                      // 0x00765be0    85c0
    asm("{disp8} je         _jmp_addr_0x00765c55");                          // 0x00765be2    7471
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x00765be4    8d4614
    asm("push               eax");                                           // 0x00765be7    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00765be8    8d4c240c
    asm("push               ecx");                                           // 0x00765bec    51
    asm("mov.s              ecx, edi");                                      // 0x00765bed    8bcf
    asm("call               _jmp_addr_0x006e45c0");                          // 0x00765bef    e8cce9f7ff
    asm("push               eax");                                           // 0x00765bf4    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00765bf5    e87671feff
    asm("fstp               st(0)");                                         // 0x00765bfa    ddd8
    asm("mov                edx, dword ptr [esi]");                          // 0x00765bfc    8b16
    asm("add                esp, 0x08");                                     // 0x00765bfe    83c408
    asm("mov.s              ecx, esi");                                      // 0x00765c01    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00765c03    ff5248
    asm("test               eax, eax");                                      // 0x00765c06    85c0
    asm("{disp8} je         _jmp_addr_0x00765c48");                          // 0x00765c08    743e
    asm("push               0x3");                                           // 0x00765c0a    6a03
    asm("{disp8} lea        ecx, dword ptr [eax + 0x34]");                   // 0x00765c0c    8d4834
    asm("call               _jmp_addr_0x00746660");                          // 0x00765c0f    e84c0afeff
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00765c14    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00765c1a    dfe0
    asm("test               ah, 0x40");                                      // 0x00765c1c    f6c440
    asm("{disp8} jne        _jmp_addr_0x00765c55");                          // 0x00765c1f    7534
    asm("{disp32} mov       eax, dword ptr [_game]");                        // 0x00765c21    a15c19d000
    asm("mov                edx, dword ptr [esi]");                          // 0x00765c26    8b16
    asm("{disp32} mov       edi, dword ptr [eax + 0x00205a40]");             // 0x00765c28    8bb8405a2000
    asm("mov.s              ecx, esi");                                      // 0x00765c2e    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00765c30    ff5248
    asm("{disp32} mov       edx, dword ptr [eax + 0x00000eb0]");             // 0x00765c33    8b90b00e0000
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00765c39    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000364]");             // 0x00765c3c    8b8864030000
    asm("sub.s              edi, edx");                                      // 0x00765c42    2bfa
    asm("cmp.s              edi, ecx");                                      // 0x00765c44    3bf9
    asm("{disp8} ja         _jmp_addr_0x00765c55");                          // 0x00765c46    770d
    asm("_jmp_addr_0x00765c48:");
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x389bd4]");          // 0x00765c48    a0d4fbd400
    asm("pop                edi");                                           // 0x00765c4d    5f
    asm("pop                esi");                                           // 0x00765c4e    5e
    asm("add                esp, 0x0c");                                     // 0x00765c4f    83c40c
    asm("ret                0x0008");                                        // 0x00765c52    c20800
    asm("_jmp_addr_0x00765c55:");
    asm("pop                edi");                                           // 0x00765c55    5f
    asm("xor.s              al, al");                                        // 0x00765c56    32c0
    asm("pop                esi");                                           // 0x00765c58    5e
    asm("add                esp, 0x0c");                                     // 0x00765c59    83c40c
    asm("ret                0x0008");                                        // 0x00765c5c    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToMagicShield__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00765c60    8b442404
    asm("sub                esp, 0x28");                                     // 0x00765c64    83ec28
    asm("push               esi");                                           // 0x00765c67    56
    asm("push               edi");                                           // 0x00765c68    57
    asm("push               0x0");                                           // 0x00765c69    6a00
    asm("push               0x00c22778");                                    // 0x00765c6b    687827c200
    asm("push               0x009c7f30");                                    // 0x00765c70    68307f9c00
    asm("push               0x0");                                           // 0x00765c75    6a00
    asm("push               eax");                                           // 0x00765c77    50
    asm("mov.s              edi, ecx");                                      // 0x00765c78    8bf9
    asm("call               ___RTDynamicCast");                              // 0x00765c7a    e89afd0500
    asm("mov.s              esi, eax");                                      // 0x00765c7f    8bf0
    asm("add                esp, 0x14");                                     // 0x00765c81    83c414
    asm("test               esi, esi");                                      // 0x00765c84    85f6
    asm("{disp32} je        _jmp_addr_0x00765df6");                          // 0x00765c86    0f846a010000
    asm("mov                edx, dword ptr [edi]");                          // 0x00765c8c    8b17
    asm("push               ebx");                                           // 0x00765c8e    53
    asm("push               ebp");                                           // 0x00765c8f    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x40]");                   // 0x00765c90    8b6c2440
    asm("push               0x000000a8");                                    // 0x00765c94    68a8000000
    asm("push               ebp");                                           // 0x00765c99    55
    asm("mov.s              ecx, edi");                                      // 0x00765c9a    8bcf
    asm("call               dword ptr [edx + 0x990]");                       // 0x00765c9c    ff9290090000
    asm("{disp32} mov       dword ptr [edi + 0x000000bc], esi");             // 0x00765ca2    89b7bc000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00765ca8    8b06
    asm("mov.s              ecx, esi");                                      // 0x00765caa    8bce
    asm("call               dword ptr [eax + 0x60]");                        // 0x00765cac    ff5060
    asm("{disp32} fmul      dword ptr [_rdata_float0p2]");                   // 0x00765caf    d80daca38a00
    asm("{disp8} lea        ebx, dword ptr [edi + 0x14]");                   // 0x00765cb5    8d5f14
    asm("{disp8} fstp       dword ptr [esp + 0x40]");                        // 0x00765cb8    d95c2440
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00765cbc    8b4c2440
    asm("push               ecx");                                           // 0x00765cc0    51
    asm("push               ebx");                                           // 0x00765cc1    53
    asm("mov.s              ecx, esi");                                      // 0x00765cc2    8bce
    asm("call               _jmp_addr_0x0072bd20");                          // 0x00765cc4    e85760fcff
    asm("test               eax, eax");                                      // 0x00765cc9    85c0
    asm("{disp32} jne       _jmp_addr_0x00765d8b");                          // 0x00765ccb    0f85ba000000
    asm("push               ebx");                                           // 0x00765cd1    53
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                   // 0x00765cd2    8d542424
    asm("push               edx");                                           // 0x00765cd6    52
    asm("mov.s              ecx, ebp");                                      // 0x00765cd7    8bcd
    asm("call               _jmp_addr_0x006e45c0");                          // 0x00765cd9    e8e2e8f7ff
    asm("push               eax");                                           // 0x00765cde    50
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00765cdf    e88c75feff
    asm("{disp8} fstp       dword ptr [esp + 0x44]");                        // 0x00765ce4    d95c2444
    asm("push               0x00000629");                                    // 0x00765ce8    6829060000
    asm("push               0x00c24588");                                    // 0x00765ced    688845c200
    asm("push               0x3f490fdb");                                    // 0x00765cf2    68db0f493f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00765cf7    e83488f7ff
    asm("mov                eax, dword ptr [esi]");                          // 0x00765cfc    8b06
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dca0]");             // 0x00765cfe    d825a06c8c00
    asm("add                esp, 0x14");                                     // 0x00765d04    83c414
    asm("mov.s              ecx, esi");                                      // 0x00765d07    8bce
    asm("{disp8} fadd       dword ptr [esp + 0x3c]");                        // 0x00765d09    d844243c
    asm("{disp8} fstp       dword ptr [esp + 0x3c]");                        // 0x00765d0d    d95c243c
    asm("call               dword ptr [eax + 0x60]");                        // 0x00765d11    ff5060
    asm("{disp8} fsub       dword ptr [esp + 0x40]");                        // 0x00765d14    d8642440
    asm("push               0x0000062b");                                    // 0x00765d18    682b060000
    asm("push               0x00c24588");                                    // 0x00765d1d    688845c200
    asm("push               0x3f800000");                                    // 0x00765d22    680000803f
    asm("{disp8} fstp       dword ptr [esp + 0x4c]");                        // 0x00765d27    d95c244c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00765d2b    e80088f7ff
    asm("{disp8} fst        dword ptr [esp + 0x1c]");                        // 0x00765d30    d954241c
    asm("add                esp, 0x0c");                                     // 0x00765d34    83c40c
    asm("mov                eax, 0x00000002");                               // 0x00765d37    b802000000
    asm("_jmp_addr_0x00765d3c:");
    asm("dec                eax");                                           // 0x00765d3c    48
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00765d3d    d84c2410
    asm("{disp8} jne        _jmp_addr_0x00765d3c");                          // 0x00765d41    75f9
    asm("{disp8} fmul       dword ptr [esp + 0x40]");                        // 0x00765d43    d84c2440
    asm("push               ecx");                                           // 0x00765d47    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00765d48    8b4c2440
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                   // 0x00765d4c    8d542424
    asm("{disp8} fsubr      dword ptr [esp + 0x44]");                        // 0x00765d50    d86c2444
    asm("fstp               dword ptr [esp]");                               // 0x00765d54    d91c24
    asm("push               ecx");                                           // 0x00765d57    51
    asm("push               edx");                                           // 0x00765d58    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00765d59    e82278feff
    asm("add                esp, 0x0c");                                     // 0x00765d5e    83c40c
    asm("push               eax");                                           // 0x00765d61    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x00765d62    8d442418
    asm("push               eax");                                           // 0x00765d66    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                   // 0x00765d67    8d4c2434
    asm("push               ecx");                                           // 0x00765d6b    51
    asm("mov.s              ecx, ebp");                                      // 0x00765d6c    8bcd
    asm("call               _jmp_addr_0x006e45c0");                          // 0x00765d6e    e84de8f7ff
    asm("mov.s              ecx, eax");                                      // 0x00765d73    8bc8
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x00765d75    e8a6f7e9ff
    asm("push               0x000000a8");                                    // 0x00765d7a    68a8000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x00765d7f    8d542418
    asm("push               edx");                                           // 0x00765d83    52
    asm("mov.s              ecx, edi");                                      // 0x00765d84    8bcf
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00765d86    e805cbe8ff
    asm("_jmp_addr_0x00765d8b:");
    asm("push               ebx");                                           // 0x00765d8b    53
    asm("{disp8} lea        eax, dword ptr [esp + 0x30]");                   // 0x00765d8c    8d442430
    asm("push               eax");                                           // 0x00765d90    50
    asm("mov.s              ecx, ebp");                                      // 0x00765d91    8bcd
    asm("call               _jmp_addr_0x006e45c0");                          // 0x00765d93    e828e8f7ff
    asm("push               eax");                                           // 0x00765d98    50
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00765d99    e8d274feff
    asm("{disp8} fstp       dword ptr [esp + 0x44]");                        // 0x00765d9e    d95c2444
    asm("push               0x0000062f");                                    // 0x00765da2    682f060000
    asm("push               0x00c24588");                                    // 0x00765da7    688845c200
    asm("push               0x3f490fdb");                                    // 0x00765dac    68db0f493f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00765db1    e87a87f7ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dca0]");             // 0x00765db6    d825a06c8c00
    asm("push               0x3f800000");                                    // 0x00765dbc    680000803f
    asm("{disp8} lea        edx, dword ptr [esp + 0x44]");                   // 0x00765dc1    8d542444
    asm("{disp8} fadd       dword ptr [esp + 0x54]");                        // 0x00765dc5    d8442454
    asm("{disp8} fstp       dword ptr [esp + 0x54]");                        // 0x00765dc9    d95c2454
    asm("{disp8} mov        ecx, dword ptr [esp + 0x54]");                   // 0x00765dcd    8b4c2454
    asm("push               ecx");                                           // 0x00765dd1    51
    asm("push               edx");                                           // 0x00765dd2    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00765dd3    e8a877feff
    asm("add                esp, 0x20");                                     // 0x00765dd8    83c420
    asm("push               eax");                                           // 0x00765ddb    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x00765ddc    8d442424
    asm("push               eax");                                           // 0x00765de0    50
    asm("mov.s              ecx, ebx");                                      // 0x00765de1    8bcb
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x00765de3    e838f7e9ff
    asm("push               eax");                                           // 0x00765de8    50
    asm("{disp32} lea       ecx, dword ptr [edi + 0x0000010c]");             // 0x00765de9    8d8f0c010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x00765def    e80cbbe7ff
    asm("pop                ebp");                                           // 0x00765df4    5d
    asm("pop                ebx");                                           // 0x00765df5    5b
    asm("_jmp_addr_0x00765df6:");
    asm("pop                edi");                                           // 0x00765df6    5f
    asm("pop                esi");                                           // 0x00765df7    5e
    asm("add                esp, 0x28");                                     // 0x00765df8    83c428
    asm("ret                0x0008");                                        // 0x00765dfb    c20800
    __builtin_unreachable();
}

bool32_t __fastcall AmazedByMagicShieldReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                     // 0x00765e00    83ec18
    asm("push               esi");                                           // 0x00765e03    56
    asm("mov.s              esi, ecx");                                      // 0x00765e04    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00765e06    8b06
    asm("push               edi");                                           // 0x00765e08    57
    asm("call               dword ptr [eax + 0x48]");                        // 0x00765e09    ff5048
    asm("mov.s              edi, eax");                                      // 0x00765e0c    8bf8
    asm("test               edi, edi");                                      // 0x00765e0e    85ff
    asm("{disp32} je        _jmp_addr_0x00765fc0");                          // 0x00765e10    0f84aa010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00765e16    8b86bc000000
    asm("push               0x0");                                           // 0x00765e1c    6a00
    asm("push               0x00c22778");                                    // 0x00765e1e    687827c200
    asm("push               0x009c7f30");                                    // 0x00765e23    68307f9c00
    asm("push               0x0");                                           // 0x00765e28    6a00
    asm("push               eax");                                           // 0x00765e2a    50
    asm("call               ___RTDynamicCast");                              // 0x00765e2b    e8e9fb0500
    asm("add                esp, 0x14");                                     // 0x00765e30    83c414
    asm("test               eax, eax");                                      // 0x00765e33    85c0
    asm("{disp32} je        _jmp_addr_0x00765fc0");                          // 0x00765e35    0f8485010000
    asm("mov                edx, dword ptr [eax]");                          // 0x00765e3b    8b10
    asm("mov.s              ecx, eax");                                      // 0x00765e3d    8bc8
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00765e3f    ff522c
    asm("test               eax, eax");                                      // 0x00765e42    85c0
    asm("{disp32} je        _jmp_addr_0x00765fc0");                          // 0x00765e44    0f8476010000
    asm("push               0x3");                                           // 0x00765e4a    6a03
    asm("{disp8} lea        ecx, dword ptr [edi + 0x34]");                   // 0x00765e4c    8d4f34
    asm("call               _jmp_addr_0x00746660");                          // 0x00765e4f    e80c08feff
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00765e54    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00765e5a    dfe0
    asm("test               ah, 0x41");                                      // 0x00765e5c    f6c441
    asm("{disp32} jne       _jmp_addr_0x00765fc0");                          // 0x00765e5f    0f855b010000
    asm("push               ebx");                                           // 0x00765e65    53
    asm("push               0x0");                                           // 0x00765e66    6a00
    asm("{disp32} lea       ebx, dword ptr [esi + 0x0000010c]");             // 0x00765e68    8d9e0c010000
    asm("push               ebx");                                           // 0x00765e6e    53
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00765e6f    8d4c2414
    asm("call               _jmp_addr_0x00603030");                          // 0x00765e73    e8b8d1e9ff
    asm("push               eax");                                           // 0x00765e78    50
    asm("mov.s              ecx, esi");                                      // 0x00765e79    8bce
    asm("call               @LookAtPos__6LivingFRC9MapCoordsUl@16");         // 0x00765e7b    e8d066e8ff
    asm("test               eax, eax");                                      // 0x00765e80    85c0
    asm("{disp32} je        _jmp_addr_0x00765f0c");                          // 0x00765e82    0f8484000000
    asm("push               0x00000640");                                    // 0x00765e88    6840060000
    asm("push               0x00c24588");                                    // 0x00765e8d    688845c200
    asm("push               0x4");                                           // 0x00765e92    6a04
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00765e94    e87786f7ff
    asm("add                esp, 0x0c");                                     // 0x00765e99    83c40c
    asm("test               eax, eax");                                      // 0x00765e9c    85c0
    asm("{disp8} jne        _jmp_addr_0x00765f0c");                          // 0x00765e9e    756c
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000094]");             // 0x00765ea0    8b8e94000000
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x00765ea6    8d7e14
    asm("push               edi");                                           // 0x00765ea9    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x00765eaa    8d44241c
    asm("push               eax");                                           // 0x00765eae    50
    asm("call               _jmp_addr_0x006e45c0");                          // 0x00765eaf    e80ce7f7ff
    asm("push               eax");                                           // 0x00765eb4    50
    asm("call               ?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00765eb5    e8b673feff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00765eba    d95c2414
    asm("push               0x00000642");                                    // 0x00765ebe    6842060000
    asm("push               0x00c24588");                                    // 0x00765ec3    688845c200
    asm("push               0x3f490fdb");                                    // 0x00765ec8    68db0f493f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00765ecd    e85e86f7ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1dca0]");             // 0x00765ed2    d825a06c8c00
    asm("push               0x3f800000");                                    // 0x00765ed8    680000803f
    asm("{disp8} lea        edx, dword ptr [esp + 0x30]");                   // 0x00765edd    8d542430
    asm("{disp8} fadd       dword ptr [esp + 0x24]");                        // 0x00765ee1    d8442424
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00765ee5    d95c2424
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x00765ee9    8b4c2424
    asm("push               ecx");                                           // 0x00765eed    51
    asm("push               edx");                                           // 0x00765eee    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x00765eef    e88c76feff
    asm("add                esp, 0x20");                                     // 0x00765ef4    83c420
    asm("push               eax");                                           // 0x00765ef7    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x00765ef8    8d442410
    asm("push               eax");                                           // 0x00765efc    50
    asm("mov.s              ecx, edi");                                      // 0x00765efd    8bcf
    asm("call               @__pl__9MapCoordsCFRC9MapCoords@16");            // 0x00765eff    e81cf6e9ff
    asm("push               eax");                                           // 0x00765f04    50
    asm("mov.s              ecx, ebx");                                      // 0x00765f05    8bcb
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x00765f07    e8f4b9e7ff
    asm("_jmp_addr_0x00765f0c:");
    asm("push               0x00000645");                                    // 0x00765f0c    6845060000
    asm("push               0x00c24588");                                    // 0x00765f11    688845c200
    asm("push               0x41200000");                                    // 0x00765f16    6800002041
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00765f1b    e81086f7ff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00765f20    8b4e40
    asm("mov                edx, dword ptr [ecx]");                          // 0x00765f23    8b11
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x1e658]");             // 0x00765f25    d80558768c00
    asm("add                esp, 0x0c");                                     // 0x00765f2b    83c40c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00765f2e    d95c240c
    asm("call               dword ptr [edx + 0x184]");                       // 0x00765f32    ff9284010000
    asm("{disp8} fild       dword ptr [eax + 0x20]");                        // 0x00765f38    db4020
    asm("mov                eax, dword ptr [esi]");                          // 0x00765f3b    8b06
    asm("mov.s              ecx, esi");                                      // 0x00765f3d    8bce
    asm("{disp32} fdivr     dword ptr [__real@447a0000]");                   // 0x00765f3f    d83d28b28a00
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00765f45    d84c240c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00765f49    d95c240c
    asm("call               dword ptr [eax + 0x900]");                       // 0x00765f4d    ff9000090000
    asm("mov.s              ebx, eax");                                      // 0x00765f53    8bd8
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x517508]");        // 0x00765f55    a108d5ed00
    asm("cmp                dword ptr [eax], 0x0000011e");                   // 0x00765f5a    81381e010000
    asm("{disp8} jle        _jmp_addr_0x00765f6a");                          // 0x00765f60    7e08
    asm("{disp32} mov       edi, dword ptr [eax + 0x0000047c]");             // 0x00765f62    8bb87c040000
    asm("{disp8} jmp        _jmp_addr_0x00765f6d");                          // 0x00765f68    eb03
    asm("_jmp_addr_0x00765f6a:");
    asm("{disp8} mov        edi, dword ptr [eax + 0x04]");                   // 0x00765f6a    8b7804
    asm("_jmp_addr_0x00765f6d:");
    asm("{disp8} mov        ecx, dword ptr [esi + 0x40]");                   // 0x00765f6d    8b4e40
    asm("mov                edx, dword ptr [ecx]");                          // 0x00765f70    8b11
    asm("call               dword ptr [edx + 0x184]");                       // 0x00765f72    ff9284010000
    asm("cmp.s              eax, edi");                                      // 0x00765f78    3bc7
    asm("{disp8} jne        _jmp_addr_0x00765f89");                          // 0x00765f7a    750d
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x00765f7c    d90590a38a00
    asm("mov                ebx, 0x0000018b");                               // 0x00765f82    bb8b010000
    asm("{disp8} jmp        _jmp_addr_0x00765f8d");                          // 0x00765f87    eb04
    asm("_jmp_addr_0x00765f89:");
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x00765f89    d944240c
    asm("_jmp_addr_0x00765f8d:");
    asm("call               _jmp_addr_0x007a1400");                          // 0x00765f8d    e86eb40300
    asm("push               eax");                                           // 0x00765f92    50
    asm("mov.s              ecx, esi");                                      // 0x00765f93    8bce
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x00765f95    e8c669e8ff
    asm("test               eax, eax");                                      // 0x00765f9a    85c0
    asm("{disp8} je         _jmp_addr_0x00765fb4");                          // 0x00765f9c    7416
    asm("mov                eax, dword ptr [esi]");                          // 0x00765f9e    8b06
    asm("push               0x1");                                           // 0x00765fa0    6a01
    asm("push               ebx");                                           // 0x00765fa2    53
    asm("mov.s              ecx, esi");                                      // 0x00765fa3    8bce
    asm("call               dword ptr [eax + 0x8f8]");                       // 0x00765fa5    ff90f8080000
    asm("{disp32} mov       word ptr [esi + 0x00000090], 0x0000");           // 0x00765fab    66c786900000000000
    asm("_jmp_addr_0x00765fb4:");
    asm("pop                ebx");                                           // 0x00765fb4    5b
    asm("pop                edi");                                           // 0x00765fb5    5f
    asm("mov                eax, 0x00000001");                               // 0x00765fb6    b801000000
    asm("pop                esi");                                           // 0x00765fbb    5e
    asm("add                esp, 0x18");                                     // 0x00765fbc    83c418
    asm("ret");                                                              // 0x00765fbf    c3
    asm("_jmp_addr_0x00765fc0:");
    asm("push               0x000000a3");                                    // 0x00765fc0    68a3000000
    asm("push               0x00000657");                                    // 0x00765fc5    6857060000
    asm("push               0x00c24588");                                    // 0x00765fca    688845c200
    asm("push               0x3c");                                          // 0x00765fcf    6a3c
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00765fd1    e83a85f7ff
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x00765fd6    89442418
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");            // 0x00765fda    c744241c00000000
    asm("{disp8} fild       qword ptr [esp + 0x18]");                        // 0x00765fe2    df6c2418
    asm("add                esp, 0x0c");                                     // 0x00765fe6    83c40c
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x1e658]");             // 0x00765fe9    d80558768c00
    asm("call               _jmp_addr_0x007a1400");                          // 0x00765fef    e80cb40300
    asm("mov.s              ecx, esi");                                      // 0x00765ff4    8bce
    asm("push               eax");                                           // 0x00765ff6    50
    asm("call               ?SetupWaitForCounter@Villager@@QAEIGW4VILLAGER_STATES@@@Z");                          // 0x00765ff7    e864500000
    asm("pop                edi");                                           // 0x00765ffc    5f
    asm("mov                eax, 0x00000001");                               // 0x00765ffd    b801000000
    asm("pop                esi");                                           // 0x00766002    5e
    asm("add                esp, 0x18");                                     // 0x00766003    83c418
    asm("ret");                                                              // 0x00766006    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetupReactToNewBuilding__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x0c");                                     // 0x00766010    83ec0c
    asm("push               ebx");                                           // 0x00766013    53
    asm("push               ebp");                                           // 0x00766014    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x18]");                   // 0x00766015    8b6c2418
    asm("push               esi");                                           // 0x00766019    56
    asm("push               edi");                                           // 0x0076601a    57
    asm("push               0x0");                                           // 0x0076601b    6a00
    asm("push               0x009c7f50");                                    // 0x0076601d    68507f9c00
    asm("push               0x009c7f30");                                    // 0x00766022    68307f9c00
    asm("push               0x0");                                           // 0x00766027    6a00
    asm("push               ebp");                                           // 0x00766029    55
    asm("mov.s              edi, ecx");                                      // 0x0076602a    8bf9
    asm("call               ___RTDynamicCast");                              // 0x0076602c    e8e8f90500
    asm("mov.s              ebx, eax");                                      // 0x00766031    8bd8
    asm("mov                eax, dword ptr [ebx]");                          // 0x00766033    8b03
    asm("add                esp, 0x14");                                     // 0x00766035    83c414
    asm("mov.s              ecx, ebx");                                      // 0x00766038    8bcb
    asm("call               dword ptr [eax + 0x64]");                        // 0x0076603a    ff5064
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x0076603d    8b4c2424
    asm("{disp8} mov        esi, dword ptr [ecx + 0x28]");                   // 0x00766041    8b7128
    asm("test               esi, esi");                                      // 0x00766044    85f6
    asm("{disp8} jne        _jmp_addr_0x007660b9");                          // 0x00766046    7571
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2414]");              // 0x00766048    d81d14b48a00
    asm("mov                esi, 0x00000004");                               // 0x0076604e    be04000000
    asm("fnstsw             ax");                                            // 0x00766053    dfe0
    asm("test               ah, 0x01");                                      // 0x00766055    f6c401
    asm("{disp8} jne        _jmp_addr_0x0076605f");                          // 0x00766058    7505
    asm("mov                esi, 0x00000005");                               // 0x0076605a    be05000000
    asm("_jmp_addr_0x0076605f:");
    asm("push               0x0000066e");                                    // 0x0076605f    686e060000
    asm("push               0x00c24588");                                    // 0x00766064    688845c200
    asm("push               0x0000012c");                                    // 0x00766069    682c010000
    asm("call               ?__nw@Base@@SAPAXK@Z");                          // 0x0076606e    e87d06cdff
    asm("add                esp, 0x0c");                                     // 0x00766073    83c40c
    asm("test               eax, eax");                                      // 0x00766076    85c0
    asm("{disp32} je        _jmp_addr_0x0076611e");                          // 0x00766078    0f84a0000000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x0000012c]");             // 0x0076607e    8b8f2c010000
    asm("push               ecx");                                           // 0x00766084    51
    asm("lea                edx, dword ptr [esi + esi * 0x4]");              // 0x00766085    8d14b6
    asm("lea                edx, dword ptr [esi + edx * 0x2]");              // 0x00766088    8d1456
    asm("shl                edx, 4");                                        // 0x0076608b    c1e204
    asm("{disp32} mov       ecx, dword ptr [edx + 0x00cc4b90]");             // 0x0076608e    8b8a904bcc00
    asm("push               0x0");                                           // 0x00766094    6a00
    asm("push               ecx");                                           // 0x00766096    51
    asm("push               ebx");                                           // 0x00766097    53
    asm("{disp32} lea       edx, dword ptr [edx + _GDanceInfo_ARRAY_00cc4b80]");             // 0x00766098    8d92804bcc00
    asm("push               edx");                                           // 0x0076609e    52
    asm("{disp8} lea        ecx, dword ptr [ebp + 0x14]");                   // 0x0076609f    8d4d14
    asm("push               ecx");                                           // 0x007660a2    51
    asm("mov.s              ecx, eax");                                      // 0x007660a3    8bc8
    asm("call               @__ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town@32");                          // 0x007660a5    e8f655daff
    asm("mov.s              esi, eax");                                      // 0x007660aa    8bf0
    asm("test               esi, esi");                                      // 0x007660ac    85f6
    asm("{disp8} je         _jmp_addr_0x0076611e");                          // 0x007660ae    746e
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x007660b0    8b542424
    asm("{disp8} mov        dword ptr [edx + 0x28], esi");                   // 0x007660b4    897228
    asm("{disp8} jmp        _jmp_addr_0x007660bb");                          // 0x007660b7    eb02
    asm("_jmp_addr_0x007660b9:");
    asm("fstp               st(0)");                                         // 0x007660b9    ddd8
    asm("_jmp_addr_0x007660bb:");
    asm("push               edi");                                           // 0x007660bb    57
    asm("mov.s              ecx, esi");                                      // 0x007660bc    8bce
    asm("{disp32} mov       dword ptr [edi + 0x000000bc], ebp");             // 0x007660be    89afbc000000
    asm("call               ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z");                          // 0x007660c4    e83713e3ff
    asm("cmp                eax, 0x01");                                     // 0x007660c9    83f801
    asm("{disp8} jne        _jmp_addr_0x0076610d");                          // 0x007660cc    753f
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x007660ce    8d442410
    asm("xor.s              ebx, ebx");                                      // 0x007660d2    33db
    asm("push               eax");                                           // 0x007660d4    50
    asm("add                esi, 0x14");                                     // 0x007660d5    83c614
    asm("push               esi");                                           // 0x007660d8    56
    asm("mov.s              ecx, edi");                                      // 0x007660d9    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x18], ebx");                   // 0x007660db    895c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], ebx");                   // 0x007660df    895c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], ebx");                   // 0x007660e3    895c2420
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                          // 0x007660e7    e8d498e8ff
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x007660ec    8b542424
    asm("push               ebx");                                           // 0x007660f0    53
    asm("push               0x000000cb");                                    // 0x007660f1    68cb000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x007660f6    8d4c2418
    asm("push               ecx");                                           // 0x007660fa    51
    asm("push               edx");                                           // 0x007660fb    52
    asm("mov.s              ecx, edi");                                      // 0x007660fc    8bcf
    asm("call               _jmp_addr_0x005f10b0");                          // 0x007660fe    e8adafe8ff
    asm("pop                edi");                                           // 0x00766103    5f
    asm("pop                esi");                                           // 0x00766104    5e
    asm("pop                ebp");                                           // 0x00766105    5d
    asm("pop                ebx");                                           // 0x00766106    5b
    asm("add                esp, 0x0c");                                     // 0x00766107    83c40c
    asm("ret                0x0008");                                        // 0x0076610a    c20800
    asm("_jmp_addr_0x0076610d:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x0076610d    8b4c2424
    asm("mov                eax, dword ptr [edi]");                          // 0x00766111    8b07
    asm("push               0x7");                                           // 0x00766113    6a07
    asm("push               ecx");                                           // 0x00766115    51
    asm("mov.s              ecx, edi");                                      // 0x00766116    8bcf
    asm("call               dword ptr [eax + 0x990]");                       // 0x00766118    ff9090090000
    asm("_jmp_addr_0x0076611e:");
    asm("pop                edi");                                           // 0x0076611e    5f
    asm("pop                esi");                                           // 0x0076611f    5e
    asm("pop                ebp");                                           // 0x00766120    5d
    asm("pop                ebx");                                           // 0x00766121    5b
    asm("add                esp, 0x0c");                                     // 0x00766122    83c40c
    asm("ret                0x0008");                                        // 0x00766125    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall DanceWhileReacting__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                     // 0x00766130    83ec18
    asm("push               esi");                                           // 0x00766133    56
    asm("xor.s              eax, eax");                                      // 0x00766134    33c0
    asm("mov.s              esi, ecx");                                      // 0x00766136    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d8]");             // 0x00766138    8b8ed8000000
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x0076613e    89442404
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00766142    89442408
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                   // 0x00766146    8944240c
    asm("{disp8} mov        edx, dword ptr [ecx + 0x14]");                   // 0x0076614a    8b5114
    asm("push               edi");                                           // 0x0076614d    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x0076614e    8d442408
    asm("push               eax");                                           // 0x00766152    50
    asm("add                edx, 0x14");                                     // 0x00766153    83c214
    asm("push               edx");                                           // 0x00766156    52
    asm("mov.s              ecx, esi");                                      // 0x00766157    8bce
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                          // 0x00766159    e86298e8ff
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x0076615e    8d442408
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x00766162    8d7e14
    asm("push               eax");                                           // 0x00766165    50
    asm("mov.s              ecx, edi");                                      // 0x00766166    8bcf
    asm("call               ?__ne@MapCoords@@QBE_NABV1@@Z");                 // 0x00766168    e843f5e9ff
    asm("test               eax, eax");                                      // 0x0076616d    85c0
    asm("{disp8} je         _jmp_addr_0x007661af");                          // 0x0076616f    743e
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d8]");             // 0x00766171    8b8ed8000000
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x14]");                   // 0x00766177    8b4914
    asm("mov                edx, dword ptr [ecx]");                          // 0x0076617a    8b11
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0076617c    8d442414
    asm("push               eax");                                           // 0x00766180    50
    asm("call               dword ptr [edx + 0x104]");                       // 0x00766181    ff9204010000
    asm("push               eax");                                           // 0x00766187    50
    asm("mov.s              ecx, edi");                                      // 0x00766188    8bcf
    asm("call               @__eq__9MapCoordsCFRC9MapCoords@12");            // 0x0076618a    e8d1f4e9ff
    asm("test               eax, eax");                                      // 0x0076618f    85c0
    asm("{disp8} je         _jmp_addr_0x007661af");                          // 0x00766191    741c
    asm("push               0x000000cb");                                    // 0x00766193    68cb000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00766198    8d4c240c
    asm("push               ecx");                                           // 0x0076619c    51
    asm("mov.s              ecx, esi");                                      // 0x0076619d    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0076619f    e85cd6ffff
    asm("pop                edi");                                           // 0x007661a4    5f
    asm("mov                eax, 0x00000001");                               // 0x007661a5    b801000000
    asm("pop                esi");                                           // 0x007661aa    5e
    asm("add                esp, 0x18");                                     // 0x007661ab    83c418
    asm("ret");                                                              // 0x007661ae    c3
    asm("_jmp_addr_0x007661af:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007661af    8b16
    asm("mov.s              ecx, esi");                                      // 0x007661b1    8bce
    asm("call               dword ptr [edx + 0x978]");                       // 0x007661b3    ff9278090000
    asm("test               eax, eax");                                      // 0x007661b9    85c0
    asm("{disp8} jne        _jmp_addr_0x007661cd");                          // 0x007661bb    7510
    asm("mov                eax, dword ptr [esi]");                          // 0x007661bd    8b06
    asm("mov.s              ecx, esi");                                      // 0x007661bf    8bce
    asm("call               dword ptr [eax + 0x8c8]");                       // 0x007661c1    ff90c8080000
    asm("pop                edi");                                           // 0x007661c7    5f
    asm("pop                esi");                                           // 0x007661c8    5e
    asm("add                esp, 0x18");                                     // 0x007661c9    83c418
    asm("ret");                                                              // 0x007661cc    c3
    asm("_jmp_addr_0x007661cd:");
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");             // 0x007661cd    8b86d8000000
    asm("{disp8} mov        ecx, dword ptr [eax + 0x5c]");                   // 0x007661d3    8b485c
    asm("{disp8} mov        edx, dword ptr [eax + 0x18]");                   // 0x007661d6    8b5018
    asm("push               ecx");                                           // 0x007661d9    51
    asm("push               0x000000cb");                                    // 0x007661da    68cb000000
    asm("add                edx, 0x14");                                     // 0x007661df    83c214
    asm("push               edx");                                           // 0x007661e2    52
    asm("mov.s              ecx, esi");                                      // 0x007661e3    8bce
    asm("call               ?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");  // 0x007661e5    e80698e8ff
    asm("pop                edi");                                           // 0x007661ea    5f
    asm("mov                eax, 0x00000001");                               // 0x007661eb    b801000000
    asm("pop                esi");                                           // 0x007661f0    5e
    asm("add                esp, 0x18");                                     // 0x007661f1    83c418
    asm("ret");                                                              // 0x007661f4    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToTeleportPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00766200    8b442404
    asm("push               esi");                                           // 0x00766204    56
    asm("{disp8} mov        esi, dword ptr [eax + 0x14]");                   // 0x00766205    8b7014
    asm("push               edi");                                           // 0x00766208    57
    asm("push               0x0");                                           // 0x00766209    6a00
    asm("push               0x00be0360");                                    // 0x0076620b    686003be00
    asm("push               0x009c7f30");                                    // 0x00766210    68307f9c00
    asm("push               0x0");                                           // 0x00766215    6a00
    asm("push               esi");                                           // 0x00766217    56
    asm("mov.s              edi, ecx");                                      // 0x00766218    8bf9
    asm("call               ___RTDynamicCast");                              // 0x0076621a    e8faf70500
    asm("add                esp, 0x14");                                     // 0x0076621f    83c414
    asm("test               eax, eax");                                      // 0x00766222    85c0
    asm("{disp8} jne        _jmp_addr_0x0076622d");                          // 0x00766224    7507
    asm("pop                edi");                                           // 0x00766226    5f
    asm("xor.s              al, al");                                        // 0x00766227    32c0
    asm("pop                esi");                                           // 0x00766229    5e
    asm("ret                0x0008");                                        // 0x0076622a    c20800
    asm("_jmp_addr_0x0076622d:");
    asm("push               edi");                                           // 0x0076622d    57
    asm("mov.s              ecx, esi");                                      // 0x0076622e    8bce
    asm("call               _jmp_addr_0x005fc590");                          // 0x00766230    e85b63e9ff
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x389e90]");        // 0x00766235    8b0d90fed400
    asm("neg                al");                                            // 0x0076623b    f6d8
    asm("sbb.s              al, al");                                        // 0x0076623d    1ac0
    asm("pop                edi");                                           // 0x0076623f    5f
    asm("pop                esi");                                           // 0x00766240    5e
    asm("and.s              eax, ecx");                                      // 0x00766241    23c1
    asm("ret                0x0008");                                        // 0x00766243    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetupReactToTeleport__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x0c");                                     // 0x00766250    83ec0c
    asm("push               esi");                                           // 0x00766253    56
    asm("push               edi");                                           // 0x00766254    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x00766255    8b7c2418
    asm("push               0x0");                                           // 0x00766259    6a00
    asm("push               0x00be0360");                                    // 0x0076625b    686003be00
    asm("push               0x009c7f30");                                    // 0x00766260    68307f9c00
    asm("push               0x0");                                           // 0x00766265    6a00
    asm("push               edi");                                           // 0x00766267    57
    asm("mov.s              esi, ecx");                                      // 0x00766268    8bf1
    asm("call               ___RTDynamicCast");                              // 0x0076626a    e8aaf70500
    asm("add                esp, 0x14");                                     // 0x0076626f    83c414
    asm("test               eax, eax");                                      // 0x00766272    85c0
    asm("{disp8} je         _jmp_addr_0x007662de");                          // 0x00766274    7468
    asm("mov                eax, dword ptr [esi]");                          // 0x00766276    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00766278    8d4c2408
    asm("push               ecx");                                           // 0x0076627c    51
    asm("mov.s              ecx, esi");                                      // 0x0076627d    8bce
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x0076627f    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00766287    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x0076628f    c744241400000000
    asm("call               dword ptr [eax + 0x884]");                       // 0x00766297    ff9084080000
    asm("{disp8} lea        edx, dword ptr [esp + 0x08]");                   // 0x0076629d    8d542408
    asm("push               edx");                                           // 0x007662a1    52
    asm("push               esi");                                           // 0x007662a2    56
    asm("mov.s              ecx, edi");                                      // 0x007662a3    8bcf
    asm("call               _jmp_addr_0x005fc6a0");                          // 0x007662a5    e8f663e9ff
    asm("xor.s              edx, edx");                                      // 0x007662aa    33d2
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edi");             // 0x007662ac    89bebc000000
    asm("{disp8} mov        dx, word ptr [esi + 0x5a]");                     // 0x007662b2    668b565a
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x007662b6    8b4e28
    asm("{disp32} mov       edi, dword ptr [ecx + 0x0000010c]");             // 0x007662b9    8bb90c010000
    asm("mov                eax, dword ptr [esi]");                          // 0x007662bf    8b06
    asm("cmp.s              edx, edi");                                      // 0x007662c1    3bd7
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x007662c3    8b54241c
    asm("setle              cl");                                            // 0x007662c7    0f9ec1
    asm("dec                ecx");                                           // 0x007662ca    49
    asm("and                ecx, 0x32");                                     // 0x007662cb    83e132
    asm("add                ecx, 0x000000c9");                               // 0x007662ce    81c1c9000000
    asm("push               ecx");                                           // 0x007662d4    51
    asm("push               edx");                                           // 0x007662d5    52
    asm("mov.s              ecx, esi");                                      // 0x007662d6    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x007662d8    ff9090090000
    asm("_jmp_addr_0x007662de:");
    asm("pop                edi");                                           // 0x007662de    5f
    asm("pop                esi");                                           // 0x007662df    5e
    asm("add                esp, 0x0c");                                     // 0x007662e0    83c40c
    asm("ret                0x0008");                                        // 0x007662e3    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GoToTeleportReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x007662f0    83ec0c
    asm("push               esi");                                           // 0x007662f3    56
    asm("mov.s              esi, ecx");                                      // 0x007662f4    8bf1
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x007662f6    e86567e8ff
    asm("{disp8} mov        eax, dword ptr [eax + 0x14]");                   // 0x007662fb    8b4014
    asm("xor.s              ecx, ecx");                                      // 0x007662fe    33c9
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x00766300    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00766304    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00766308    894c240c
    asm("{disp8} mov        edx, dword ptr [eax + 0x14]");                   // 0x0076630c    8b5014
    asm("add                eax, 0x14");                                     // 0x0076630f    83c014
    asm("{disp8} mov        dword ptr [esp + 0x04], edx");                   // 0x00766312    89542404
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00766316    8b5004
    asm("push               ecx");                                           // 0x00766319    51
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x0076631a    8954240c
    asm("{disp8} fld        dword ptr [eax + 0x08]");                        // 0x0076631e    d94008
    asm("mov                eax, dword ptr [esi]");                          // 0x00766321    8b06
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00766323    8d4c2408
    asm("push               ecx");                                           // 0x00766327    51
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x00766328    d95c2414
    asm("mov.s              ecx, esi");                                      // 0x0076632c    8bce
    asm("call               dword ptr [eax + 0x85c]");                       // 0x0076632e    ff905c080000
    asm("test               eax, eax");                                      // 0x00766334    85c0
    asm("{disp8} je         _jmp_addr_0x00766351");                          // 0x00766336    7419
    asm("mov                edx, dword ptr [esi]");                          // 0x00766338    8b16
    asm("push               0x000000ca");                                    // 0x0076633a    68ca000000
    asm("mov.s              ecx, esi");                                      // 0x0076633f    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00766341    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00766347    b801000000
    asm("pop                esi");                                           // 0x0076634c    5e
    asm("add                esp, 0x0c");                                     // 0x0076634d    83c40c
    asm("ret");                                                              // 0x00766350    c3
    asm("_jmp_addr_0x00766351:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00766351    8b06
    asm("mov.s              ecx, esi");                                      // 0x00766353    8bce
    asm("call               dword ptr [eax + 0xb04]");                       // 0x00766355    ff90040b0000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                   // 0x0076635b    8d4c2404
    asm("push               eax");                                           // 0x0076635f    50
    asm("push               ecx");                                           // 0x00766360    51
    asm("mov.s              ecx, esi");                                      // 0x00766361    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00766363    e828c5e8ff
    asm("mov                eax, 0x00000001");                               // 0x00766368    b801000000
    asm("pop                esi");                                           // 0x0076636d    5e
    asm("add                esp, 0x0c");                                     // 0x0076636e    83c40c
    asm("ret");                                                              // 0x00766371    c3
    __builtin_unreachable();
}

bool32_t __fastcall GoToTeleportReactionQuickly__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?GoToTeleportReaction@Villager@@QAEIXZ");        // 0x00766380    e96bffffff
    __builtin_unreachable();
}

bool32_t __fastcall ExitReactToTeleport__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               esi");                                           // 0x00766390    56
    asm("push               edi");                                           // 0x00766391    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x00766392    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x00766396    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00766398    8b06
    asm("mov.s              ecx, edi");                                      // 0x0076639a    8bcf
    asm("and                ecx, 0x000000ff");                               // 0x0076639c    81e1ff000000
    asm("push               ecx");                                           // 0x007663a2    51
    asm("mov.s              ecx, esi");                                      // 0x007663a3    8bce
    asm("call               dword ptr [eax + 0x96c]");                       // 0x007663a5    ff906c090000
    asm("test               eax, eax");                                      // 0x007663ab    85c0
    asm("{disp8} jne        _jmp_addr_0x007663d2");                          // 0x007663ad    7523
    asm("mov                edx, dword ptr [esi]");                          // 0x007663af    8b16
    asm("mov.s              ecx, esi");                                      // 0x007663b1    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x007663b3    ff5248
    asm("test               eax, eax");                                      // 0x007663b6    85c0
    asm("{disp8} je         _jmp_addr_0x007663c9");                          // 0x007663b8    740f
    asm("mov                eax, dword ptr [esi]");                          // 0x007663ba    8b06
    asm("push               esi");                                           // 0x007663bc    56
    asm("mov.s              ecx, esi");                                      // 0x007663bd    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007663bf    ff5048
    asm("mov.s              ecx, eax");                                      // 0x007663c2    8bc8
    asm("call               ?RemoveVillagerOnWayToWorshipSite@Town@@QAEXPAVVillager@@@Z");  // 0x007663c4    e8977ffdff
    asm("_jmp_addr_0x007663c9:");
    asm(".byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xef, 0xff");// and word ptr [esi + 0x000000e0], -0x0011 // 0x007663c9    6681a6e0000000efff
    asm("_jmp_addr_0x007663d2:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007663d2    8b16
    asm("push               edi");                                           // 0x007663d4    57
    asm("mov.s              ecx, esi");                                      // 0x007663d5    8bce
    asm("call               dword ptr [edx + 0x910]");                       // 0x007663d7    ff9210090000
    asm("pop                edi");                                           // 0x007663dd    5f
    asm("pop                esi");                                           // 0x007663de    5e
    asm("ret                0x0004");                                        // 0x007663df    c20400
    __builtin_unreachable();
}

bool32_t __fastcall TeleportReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007663f0    56
    asm("push               edi");                                           // 0x007663f1    57
    asm("mov.s              esi, ecx");                                      // 0x007663f2    8bf1
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x007663f4    e86766e8ff
    asm("test               eax, eax");                                      // 0x007663f9    85c0
    asm("{disp8} jne        _jmp_addr_0x00766400");                          // 0x007663fb    7503
    asm("pop                edi");                                           // 0x007663fd    5f
    asm("pop                esi");                                           // 0x007663fe    5e
    asm("ret");                                                              // 0x007663ff    c3
    asm("_jmp_addr_0x00766400:");
    asm("{disp8} mov        edi, dword ptr [eax + 0x14]");                   // 0x00766400    8b7814
    asm("push               0x0");                                           // 0x00766403    6a00
    asm("push               0x00be0360");                                    // 0x00766405    686003be00
    asm("push               0x009c7f30");                                    // 0x0076640a    68307f9c00
    asm("push               0x0");                                           // 0x0076640f    6a00
    asm("push               edi");                                           // 0x00766411    57
    asm("call               ___RTDynamicCast");                              // 0x00766412    e802f60500
    asm("add                esp, 0x14");                                     // 0x00766417    83c414
    asm("test               eax, eax");                                      // 0x0076641a    85c0
    asm("{disp8} jne        _jmp_addr_0x00766421");                          // 0x0076641c    7503
    asm("pop                edi");                                           // 0x0076641e    5f
    asm("pop                esi");                                           // 0x0076641f    5e
    asm("ret");                                                              // 0x00766420    c3
    asm("_jmp_addr_0x00766421:");
    asm("push               0x0");                                           // 0x00766421    6a00
    asm("push               esi");                                           // 0x00766423    56
    asm("mov.s              ecx, edi");                                      // 0x00766424    8bcf
    asm("call               _jmp_addr_0x005fc790");                          // 0x00766426    e86563e9ff
    asm("mov                eax, dword ptr [esi]");                          // 0x0076642b    8b06
    asm("mov.s              ecx, esi");                                      // 0x0076642d    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x0076642f    ff909c090000
    asm("pop                edi");                                           // 0x00766435    5f
    asm("mov                eax, 0x00000001");                               // 0x00766436    b801000000
    asm("pop                esi");                                           // 0x0076643b    5e
    asm("ret");                                                              // 0x0076643c    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToDeathPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("push               ebx");                                           // 0x00766440    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x00766441    8b5c2408
    asm("push               esi");                                           // 0x00766445    56
    asm("push               edi");                                           // 0x00766446    57
    asm("{disp8} mov        edi, dword ptr [ebx + 0x14]");                   // 0x00766447    8b7b14
    asm("mov                eax, dword ptr [edi]");                          // 0x0076644a    8b07
    asm("mov.s              esi, ecx");                                      // 0x0076644c    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0076644e    8bcf
    asm("call               dword ptr [eax + 0x34]");                        // 0x00766450    ff5034
    asm("test               eax, eax");                                      // 0x00766453    85c0
    asm("{disp8} je         _jmp_addr_0x00766462");                          // 0x00766455    740b
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x389fbc]");          // 0x00766457    a0bcffd400
    asm("pop                edi");                                           // 0x0076645c    5f
    asm("pop                esi");                                           // 0x0076645d    5e
    asm("pop                ebx");                                           // 0x0076645e    5b
    asm("ret                0x0008");                                        // 0x0076645f    c20800
    asm("_jmp_addr_0x00766462:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00766462    8b16
    asm("mov.s              ecx, esi");                                      // 0x00766464    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00766466    ff5248
    asm("test               eax, eax");                                      // 0x00766469    85c0
    asm("{disp8} je         _jmp_addr_0x0076648a");                          // 0x0076646b    741d
    asm("mov                eax, dword ptr [esi]");                          // 0x0076646d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0076646f    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00766471    ff5048
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000748]");             // 0x00766474    8b8848070000
    asm("test               ecx, ecx");                                      // 0x0076647a    85c9
    asm("{disp8} je         _jmp_addr_0x0076648a");                          // 0x0076647c    740c
    asm("mov                edx, dword ptr [ecx]");                          // 0x0076647e    8b11
    asm("call               dword ptr [edx + 0xd4]");                        // 0x00766480    ff92d4000000
    asm("test               eax, eax");                                      // 0x00766486    85c0
    asm("{disp8} jne        _jmp_addr_0x0076649f");                          // 0x00766488    7515
    asm("_jmp_addr_0x0076648a:");
    asm("cmp.s              esi, edi");                                      // 0x0076648a    3bf7
    asm("{disp8} je         _jmp_addr_0x0076649f");                          // 0x0076648c    7411
    asm("cmp                dword ptr [ebx + 0x1c], 0x0a");                  // 0x0076648e    837b1c0a
    asm("{disp8} jae        _jmp_addr_0x0076649f");                          // 0x00766492    730b
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x389fbc]");          // 0x00766494    a0bcffd400
    asm("pop                edi");                                           // 0x00766499    5f
    asm("pop                esi");                                           // 0x0076649a    5e
    asm("pop                ebx");                                           // 0x0076649b    5b
    asm("ret                0x0008");                                        // 0x0076649c    c20800
    asm("_jmp_addr_0x0076649f:");
    asm("pop                edi");                                           // 0x0076649f    5f
    asm("pop                esi");                                           // 0x007664a0    5e
    asm("xor.s              al, al");                                        // 0x007664a1    32c0
    asm("pop                ebx");                                           // 0x007664a3    5b
    asm("ret                0x0008");                                        // 0x007664a4    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToDroppedByHandPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x007664b0    56
    asm("push               edi");                                           // 0x007664b1    57
    asm("mov.s              esi, ecx");                                      // 0x007664b2    8bf1
    asm("call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ");                    // 0x007664b4    e837c3e8ff
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x007664b9    8b44240c
    asm("{disp8} mov        eax, dword ptr [eax + 0x14]");                   // 0x007664bd    8b4014
    asm("push               0x0");                                           // 0x007664c0    6a00
    asm("push               0x009cafc8");                                    // 0x007664c2    68c8af9c00
    asm("push               0x009c7f30");                                    // 0x007664c7    68307f9c00
    asm("push               0x0");                                           // 0x007664cc    6a00
    asm("push               eax");                                           // 0x007664ce    50
    asm("call               ___RTDynamicCast");                              // 0x007664cf    e845f50500
    asm("mov.s              edi, eax");                                      // 0x007664d4    8bf8
    asm("add                esp, 0x14");                                     // 0x007664d6    83c414
    asm("test               edi, edi");                                      // 0x007664d9    85ff
    asm("{disp32} je        _jmp_addr_0x0076659f");                          // 0x007664db    0f84be000000
    asm("mov                edx, dword ptr [edi]");                          // 0x007664e1    8b17
    asm("mov.s              ecx, edi");                                      // 0x007664e3    8bcf
    asm("call               dword ptr [edx + 0x2c]");                        // 0x007664e5    ff522c
    asm("test               eax, eax");                                      // 0x007664e8    85c0
    asm("{disp32} je        _jmp_addr_0x0076659f");                          // 0x007664ea    0f84af000000
    asm("xor.s              eax, eax");                                      // 0x007664f0    33c0
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x007664f2    668b86e0000000
    asm("shr                eax, 9");                                        // 0x007664f9    c1e809
    asm("test               al, 0x01");                                      // 0x007664fc    a801
    asm("{disp32} jne       _jmp_addr_0x0076659f");                          // 0x007664fe    0f859b000000
    asm("mov                edx, dword ptr [edi]");                          // 0x00766504    8b17
    asm("push               ebx");                                           // 0x00766506    53
    asm("mov.s              ecx, edi");                                      // 0x00766507    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00766509    ff5248
    asm("mov.s              ebx, eax");                                      // 0x0076650c    8bd8
    asm("mov                eax, dword ptr [esi]");                          // 0x0076650e    8b06
    asm("mov.s              ecx, esi");                                      // 0x00766510    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00766512    ff5048
    asm("cmp.s              eax, ebx");                                      // 0x00766515    3bc3
    asm("pop                ebx");                                           // 0x00766517    5b
    asm("{disp32} jne       _jmp_addr_0x0076659f");                          // 0x00766518    0f8581000000
    asm("add                edi, 0x14");                                     // 0x0076651e    83c714
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00766521    8d4e14
    asm("push               edi");                                           // 0x00766524    57
    asm("push               ecx");                                           // 0x00766525    51
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00766526    e84568feff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2414]");              // 0x0076652b    d81d14b48a00
    asm("add                esp, 0x08");                                     // 0x00766531    83c408
    asm("fnstsw             ax");                                            // 0x00766534    dfe0
    asm("test               ah, 0x01");                                      // 0x00766536    f6c401
    asm("{disp8} je         _jmp_addr_0x0076659f");                          // 0x00766539    7464
    asm("mov.s              ecx, esi");                                      // 0x0076653b    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x0076653d    e84ebdfeff
    asm("test               eax, eax");                                      // 0x00766542    85c0
    asm("{disp8} je         _jmp_addr_0x0076659f");                          // 0x00766544    7459
    asm("xor.s              edx, edx");                                      // 0x00766546    33d2
    asm("{disp8} mov        dx, word ptr [esi + 0x24]");                     // 0x00766548    668b5624
    asm("not                dx");                                            // 0x0076654c    66f7d2
    asm("shr                edx, 0xa");                                      // 0x0076654f    c1ea0a
    asm("test               dl, 0x01");                                      // 0x00766552    f6c201
    asm("{disp8} je         _jmp_addr_0x0076659f");                          // 0x00766555    7448
    asm("mov                eax, dword ptr [esi]");                          // 0x00766557    8b06
    asm("mov.s              ecx, esi");                                      // 0x00766559    8bce
    asm("call               dword ptr [eax + 0x2c]");                        // 0x0076655b    ff502c
    asm("test               eax, eax");                                      // 0x0076655e    85c0
    asm("{disp8} je         _jmp_addr_0x0076659f");                          // 0x00766560    743d
    asm("mov                edx, dword ptr [esi]");                          // 0x00766562    8b16
    asm("mov.s              ecx, esi");                                      // 0x00766564    8bce
    asm("call               dword ptr [edx + 0xaf8]");                       // 0x00766566    ff92f80a0000
    asm("test               eax, eax");                                      // 0x0076656c    85c0
    asm("{disp8} jne        _jmp_addr_0x0076659f");                          // 0x0076656e    752f
    asm("mov                eax, dword ptr [esi]");                          // 0x00766570    8b06
    asm("mov.s              ecx, esi");                                      // 0x00766572    8bce
    asm("call               dword ptr [eax + 0x4a0]");                       // 0x00766574    ff90a0040000
    asm("test               eax, eax");                                      // 0x0076657a    85c0
    asm("{disp8} jne        _jmp_addr_0x0076659f");                          // 0x0076657c    7521
    asm("mov                edx, dword ptr [esi]");                          // 0x0076657e    8b16
    asm("mov.s              ecx, esi");                                      // 0x00766580    8bce
    asm("call               dword ptr [edx + 0xaf4]");                       // 0x00766582    ff92f40a0000
    asm("test               eax, eax");                                      // 0x00766588    85c0
    asm("{disp8} jne        _jmp_addr_0x0076659f");                          // 0x0076658a    7513
    asm("test               byte ptr [esi + 0x000000e0], -0x80");            // 0x0076658c    f686e000000080
    asm("{disp8} jne        _jmp_addr_0x0076659f");                          // 0x00766593    750a
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a020]");          // 0x00766595    a02000d500
    asm("pop                edi");                                           // 0x0076659a    5f
    asm("pop                esi");                                           // 0x0076659b    5e
    asm("ret                0x0008");                                        // 0x0076659c    c20800
    asm("_jmp_addr_0x0076659f:");
    asm("pop                edi");                                           // 0x0076659f    5f
    asm("xor.s              al, al");                                        // 0x007665a0    32c0
    asm("pop                esi");                                           // 0x007665a2    5e
    asm("ret                0x0008");                                        // 0x007665a3    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToDeath__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x007665b0    56
    asm("push               edi");                                           // 0x007665b1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x007665b2    8b7c2410
    asm("mov.s              esi, ecx");                                      // 0x007665b6    8bf1
    asm("{disp8} mov        ecx, dword ptr [edi + 0x14]");                   // 0x007665b8    8b4f14
    asm("test               ecx, ecx");                                      // 0x007665bb    85c9
    asm("{disp8} je         _jmp_addr_0x007665ce");                          // 0x007665bd    740f
    asm("mov                eax, dword ptr [ecx]");                          // 0x007665bf    8b01
    asm("call               dword ptr [eax + 0x34]");                        // 0x007665c1    ff5034
    asm("test               eax, eax");                                      // 0x007665c4    85c0
    asm("{disp8} je         _jmp_addr_0x007665ce");                          // 0x007665c6    7406
    asm("mov                edx, dword ptr [esi]");                          // 0x007665c8    8b16
    asm("push               0x7");                                           // 0x007665ca    6a07
    asm("{disp8} jmp        _jmp_addr_0x007665fa");                          // 0x007665cc    eb2c
    asm("_jmp_addr_0x007665ce:");
    asm("push               0x00000726");                                    // 0x007665ce    6826070000
    asm("push               0x00c24588");                                    // 0x007665d3    688845c200
    asm("push               0x2");                                           // 0x007665d8    6a02
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x007665da    e8317ff7ff
    asm("add                esp, 0x0c");                                     // 0x007665df    83c40c
    asm("test               eax, eax");                                      // 0x007665e2    85c0
    asm("{disp8} jne        _jmp_addr_0x007665f3");                          // 0x007665e4    750d
    asm("mov                edx, dword ptr [esi]");                          // 0x007665e6    8b16
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                     // 0x007665e8    66894658
    asm("push               0x000000cd");                                    // 0x007665ec    68cd000000
    asm("{disp8} jmp        _jmp_addr_0x007665fa");                          // 0x007665f1    eb07
    asm("_jmp_addr_0x007665f3:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007665f3    8b16
    asm("push               0x000000ce");                                    // 0x007665f5    68ce000000
    asm("_jmp_addr_0x007665fa:");
    asm("push               edi");                                           // 0x007665fa    57
    asm("mov.s              ecx, esi");                                      // 0x007665fb    8bce
    asm("call               dword ptr [edx + 0x990]");                       // 0x007665fd    ff9290090000
    asm("{disp8} mov        eax, dword ptr [esp + 0x0c]");                   // 0x00766603    8b44240c
    asm("pop                edi");                                           // 0x00766607    5f
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], eax");             // 0x00766608    8986bc000000
    asm("pop                esi");                                           // 0x0076660e    5e
    asm("ret                0x0008");                                        // 0x0076660f    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetupReactToDroppedByHand__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00766620    8b442408
    asm("{disp8} mov        eax, dword ptr [eax + 0x14]");                   // 0x00766624    8b4014
    asm("push               esi");                                           // 0x00766627    56
    asm("push               edi");                                           // 0x00766628    57
    asm("push               0x0");                                           // 0x00766629    6a00
    asm("push               0x009cafc8");                                    // 0x0076662b    68c8af9c00
    asm("push               0x009c7f30");                                    // 0x00766630    68307f9c00
    asm("push               0x0");                                           // 0x00766635    6a00
    asm("push               eax");                                           // 0x00766637    50
    asm("mov.s              edi, ecx");                                      // 0x00766638    8bf9
    asm("call               ___RTDynamicCast");                              // 0x0076663a    e8daf30500
    asm("mov.s              esi, eax");                                      // 0x0076663f    8bf0
    asm("add                esp, 0x14");                                     // 0x00766641    83c414
    asm("test               esi, esi");                                      // 0x00766644    85f6
    asm("{disp8} je         _jmp_addr_0x0076666c");                          // 0x00766646    7424
    asm("mov                edx, dword ptr [esi]");                          // 0x00766648    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076664a    8bce
    asm("call               dword ptr [edx + 0x2c]");                        // 0x0076664c    ff522c
    asm("test               eax, eax");                                      // 0x0076664f    85c0
    asm("{disp8} je         _jmp_addr_0x0076666c");                          // 0x00766651    7419
    asm("test               byte ptr [edi + 0x000000e1], 0x04");             // 0x00766653    f687e100000004
    asm("{disp8} jne        _jmp_addr_0x0076666c");                          // 0x0076665a    7510
    asm("xor.s              eax, eax");                                      // 0x0076665c    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x000000f2]");               // 0x0076665e    8a86f2000000
    asm("mov.s              ecx, edi");                                      // 0x00766664    8bcf
    asm("push               eax");                                           // 0x00766666    50
    asm("call               ?SetDiscipleFollower@Villager@@QAEXW4VILLAGER_DISCIPLE@@@Z");                          // 0x00766667    e8b411ffff
    asm("_jmp_addr_0x0076666c:");
    asm("pop                edi");                                           // 0x0076666c    5f
    asm("pop                esi");                                           // 0x0076666d    5e
    asm("ret                0x0008");                                        // 0x0076666e    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall PointAtDeadPerson__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00766680    83ec08
    asm("push               esi");                                           // 0x00766683    56
    asm("mov.s              esi, ecx");                                      // 0x00766684    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00766686    8b86bc000000
    asm("push               0x1");                                           // 0x0076668c    6a01
    asm("push               eax");                                           // 0x0076668e    50
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0076668f    e88c5ee8ff
    asm("test               eax, eax");                                      // 0x00766694    85c0
    asm("{disp8} je         _jmp_addr_0x007666f2");                          // 0x00766696    745a
    asm("{disp8} inc        word ptr [esi + 0x58]");                         // 0x00766698    66ff4658
    asm("push               0x00000744");                                    // 0x0076669c    6844070000
    asm("push               0x00c24588");                                    // 0x007666a1    688845c200
    asm("push               0x41a00000");                                    // 0x007666a6    680000a041
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007666ab    e8807ef7ff
    asm("xor.s              edx, edx");                                      // 0x007666b0    33d2
    asm("mov                eax, 0x000003e8");                               // 0x007666b2    b8e8030000
    asm("div                dword ptr [data_bytes + 0x33ba38]");             // 0x007666b7    f735381ad000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x007666bd    c744241400000000
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2478]");              // 0x007666c5    d80578b48a00
    asm("add                esp, 0x0c");                                     // 0x007666cb    83c40c
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x007666ce    89442404
    asm("{disp8} fimul      dword ptr [esp + 0x04]");                        // 0x007666d2    da4c2404
    asm("call               _jmp_addr_0x007a1400");                          // 0x007666d6    e825ad0300
    asm("movsx              ecx, word ptr [esi + 0x58]");                    // 0x007666db    0fbf4e58
    asm("cmp.s              ecx, eax");                                      // 0x007666df    3bc8
    asm("{disp8} jle        _jmp_addr_0x007666f2");                          // 0x007666e1    7e0f
    asm("mov                edx, dword ptr [esi]");                          // 0x007666e3    8b16
    asm("push               0x000000ce");                                    // 0x007666e5    68ce000000
    asm("mov.s              ecx, esi");                                      // 0x007666ea    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007666ec    ff92e8080000
    asm("_jmp_addr_0x007666f2:");
    asm("mov                eax, 0x00000001");                               // 0x007666f2    b801000000
    asm("pop                esi");                                           // 0x007666f7    5e
    asm("add                esp, 0x08");                                     // 0x007666f8    83c408
    asm("ret");                                                              // 0x007666fb    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall GoTowardsDeadPerson__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x00766700    83ec14
    asm("push               ebx");                                           // 0x00766703    53
    asm("push               esi");                                           // 0x00766704    56
    asm("push               edi");                                           // 0x00766705    57
    asm("mov.s              edi, ecx");                                      // 0x00766706    8bf9
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000bc]");             // 0x00766708    8b87bc000000
    asm("test               eax, eax");                                      // 0x0076670e    85c0
    asm("{disp8} jne        _jmp_addr_0x0076671b");                          // 0x00766710    7509
    asm("pop                edi");                                           // 0x00766712    5f
    asm("pop                esi");                                           // 0x00766713    5e
    asm("xor.s              eax, eax");                                      // 0x00766714    33c0
    asm("pop                ebx");                                           // 0x00766716    5b
    asm("add                esp, 0x14");                                     // 0x00766717    83c414
    asm("ret");                                                              // 0x0076671a    c3
    asm("_jmp_addr_0x0076671b:");
    asm("mov.s              ecx, edi");                                      // 0x0076671b    8bcf
    asm("call               ?GetReaction@Living@@QAEXXZ");                   // 0x0076671d    e83e63e8ff
    asm("mov.s              ecx, eax");                                      // 0x00766722    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");     // 0x00766724    e8d7dff7ff
    asm("{disp8} mov        eax, dword ptr [eax + 0x44]");                   // 0x00766729    8b4044
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0076672c    89442410
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000bc]");             // 0x00766730    8b87bc000000
    asm("add                eax, 0x14");                                     // 0x00766736    83c014
    asm("push               eax");                                           // 0x00766739    50
    asm("{disp8} lea        esi, dword ptr [edi + 0x14]");                   // 0x0076673a    8d7714
    asm("push               esi");                                           // 0x0076673d    56
    asm("call               _jmp_addr_0x0074cd50");                          // 0x0076673e    e80d66feff
    asm("{disp8} fst        dword ptr [esp + 0x14]");                        // 0x00766743    d9542414
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x00766747    d9442418
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]");             // 0x0076674b    d80d986c8c00
    asm("add                esp, 0x08");                                     // 0x00766751    83c408
    asm("fcompp");                                                           // 0x00766754    ded9
    asm("fnstsw             ax");                                            // 0x00766756    dfe0
    asm("test               ah, 0x01");                                      // 0x00766758    f6c401
    asm("{disp32} je        _jmp_addr_0x007667ef");                          // 0x0076675b    0f848e000000
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000bc]");             // 0x00766761    8b87bc000000
    asm("add                eax, 0x14");                                     // 0x00766767    83c014
    asm("push               eax");                                           // 0x0076676a    50
    asm("push               esi");                                           // 0x0076676b    56
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                               // 0x0076676c    e8cf6afeff
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x00766771    d9442414
    asm("{disp8} fsub       dword ptr [esp + 0x18]");                        // 0x00766775    d8642418
    asm("mov.s              ebx, eax");                                      // 0x00766779    8bd8
    asm("add                esp, 0x08");                                     // 0x0076677b    83c408
    asm("{disp8} fst        dword ptr [esp + 0x10]");                        // 0x0076677e    d9542410
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x00766782    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x00766788    dfe0
    asm("test               ah, 0x41");                                      // 0x0076678a    f6c441
    asm("{disp8} jne        _jmp_addr_0x007667ef");                          // 0x0076678d    7560
    asm("push               ebp");                                           // 0x0076678f    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x14]");                   // 0x00766790    8b6c2414
    asm("push               ebp");                                           // 0x00766794    55
    asm("call               _jmp_addr_0x0074e1d0");                          // 0x00766795    e8367afeff
    asm("push               eax");                                           // 0x0076679a    50
    asm("push               ebx");                                           // 0x0076679b    53
    asm("call               _jmp_addr_0x0074d3e0");                          // 0x0076679c    e83f6cfeff
    asm("push               ebp");                                           // 0x007667a1    55
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                   // 0x007667a2    89442424
    asm("call               _jmp_addr_0x0074e200");                          // 0x007667a6    e8557afeff
    asm("push               eax");                                           // 0x007667ab    50
    asm("push               ebx");                                           // 0x007667ac    53
    asm("call               _jmp_addr_0x0074d400");                          // 0x007667ad    e84e6cfeff
    asm("mov                ecx, dword ptr [esi]");                          // 0x007667b2    8b0e
    asm("{disp8} mov        ebx, dword ptr [esp + 0x2c]");                   // 0x007667b4    8b5c242c
    asm("{disp8} mov        edx, dword ptr [esi + 0x04]");                   // 0x007667b8    8b5604
    asm("{disp8} mov        esi, dword ptr [esi + 0x08]");                   // 0x007667bb    8b7608
    asm("add.s              ecx, ebx");                                      // 0x007667be    03cb
    asm("add                esp, 0x18");                                     // 0x007667c0    83c418
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x007667c3    894c2418
    asm("push               0x000000ce");                                    // 0x007667c7    68ce000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x007667cc    8d4c241c
    asm("add.s              edx, eax");                                      // 0x007667d0    03d0
    asm("push               ecx");                                           // 0x007667d2    51
    asm("mov.s              ecx, edi");                                      // 0x007667d3    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x28], esi");                   // 0x007667d5    89742428
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                   // 0x007667d9    89542424
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007667dd    e8aec0e8ff
    asm("pop                ebp");                                           // 0x007667e2    5d
    asm("pop                edi");                                           // 0x007667e3    5f
    asm("pop                esi");                                           // 0x007667e4    5e
    asm("mov                eax, 0x00000001");                               // 0x007667e5    b801000000
    asm("pop                ebx");                                           // 0x007667ea    5b
    asm("add                esp, 0x14");                                     // 0x007667eb    83c414
    asm("ret");                                                              // 0x007667ee    c3
    asm("_jmp_addr_0x007667ef:");
    asm("mov                edx, dword ptr [edi]");                          // 0x007667ef    8b17
    asm("push               0x000000cf");                                    // 0x007667f1    68cf000000
    asm("mov.s              ecx, edi");                                      // 0x007667f6    8bcf
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007667f8    ff92e8080000
    asm("pop                edi");                                           // 0x007667fe    5f
    asm("pop                esi");                                           // 0x007667ff    5e
    asm("mov                eax, 0x00000001");                               // 0x00766800    b801000000
    asm("pop                ebx");                                           // 0x00766805    5b
    asm("add                esp, 0x14");                                     // 0x00766806    83c414
    asm("ret");                                                              // 0x00766809    c3
    __builtin_unreachable();
}

bool32_t __fastcall LookAtDeadPerson__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00766810    56
    asm("mov.s              esi, ecx");                                      // 0x00766811    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00766813    8b86bc000000
    asm("push               0x1");                                           // 0x00766819    6a01
    asm("push               eax");                                           // 0x0076681b    50
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0076681c    e8ff5ce8ff
    asm("cmp                eax, 0x01");                                     // 0x00766821    83f801
    asm("{disp8} jne        _jmp_addr_0x0076683b");                          // 0x00766824    7515
    asm("mov                eax, dword ptr [esi]");                          // 0x00766826    8b06
    asm("push               0x000000d0");                                    // 0x00766828    68d0000000
    asm("mov.s              ecx, esi");                                      // 0x0076682d    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0076682f    66c746580000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00766835    ff90e8080000
    asm("_jmp_addr_0x0076683b:");
    asm("mov                eax, 0x00000001");                               // 0x0076683b    b801000000
    asm("pop                esi");                                           // 0x00766840    5e
    asm("ret");                                                              // 0x00766841    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall MournDeadPerson__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00766850    83ec08
    asm("push               esi");                                           // 0x00766853    56
    asm("push               0x0000077a");                                    // 0x00766854    687a070000
    asm("mov.s              esi, ecx");                                      // 0x00766859    8bf1
    asm("{disp8} inc        word ptr [esi + 0x58]");                         // 0x0076685b    66ff4658
    asm("push               0x00c24588");                                    // 0x0076685f    688845c200
    asm("push               0x40400000");                                    // 0x00766864    6800004040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00766869    e8c27cf7ff
    asm("xor.s              edx, edx");                                      // 0x0076686e    33d2
    asm("mov                eax, 0x000003e8");                               // 0x00766870    b8e8030000
    asm("div                dword ptr [data_bytes + 0x33ba38]");             // 0x00766875    f735381ad000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x0076687b    c744241400000000
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x2418]");              // 0x00766883    d80518b48a00
    asm("add                esp, 0x0c");                                     // 0x00766889    83c40c
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x0076688c    89442404
    asm("{disp8} fimul      dword ptr [esp + 0x04]");                        // 0x00766890    da4c2404
    asm("call               _jmp_addr_0x007a1400");                          // 0x00766894    e867ab0300
    asm("movsx              ecx, word ptr [esi + 0x58]");                    // 0x00766899    0fbf4e58
    asm("cmp.s              ecx, eax");                                      // 0x0076689d    3bc8
    asm("{disp8} jle        _jmp_addr_0x007668ab");                          // 0x0076689f    7e0a
    asm("mov                edx, dword ptr [esi]");                          // 0x007668a1    8b16
    asm("mov.s              ecx, esi");                                      // 0x007668a3    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x007668a5    ff929c090000
    asm("_jmp_addr_0x007668ab:");
    asm("mov                eax, 0x00000001");                               // 0x007668ab    b801000000
    asm("pop                esi");                                           // 0x007668b0    5e
    asm("add                esp, 0x08");                                     // 0x007668b1    83c408
    asm("ret");                                                              // 0x007668b4    c3
    __builtin_unreachable();
}

void __fastcall SetupReactToFainting__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x007668c0    8b542408
    asm("push               0x000000c2");                                    // 0x007668c4    68c2000000
    asm("{disp32} mov       dword ptr [ecx + 0x000000bc], ecx");             // 0x007668c9    8989bc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x007668cf    8b01
    asm("push               edx");                                           // 0x007668d1    52
    asm("call               dword ptr [eax + 0x990]");                       // 0x007668d2    ff9090090000
    asm("ret                0x0008");                                        // 0x007668d8    c20800
    __builtin_unreachable();
}

bool32_t __fastcall FaintingReaction__8VillagerFv(struct Villager* this)
{
    return 1;
}

void __fastcall SetupReactToConfused__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x007668f0    8b542408
    asm("push               0x000000c3");                                    // 0x007668f4    68c3000000
    asm("{disp32} mov       dword ptr [ecx + 0x000000bc], ecx");             // 0x007668f9    8989bc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x007668ff    8b01
    asm("push               edx");                                           // 0x00766901    52
    asm("call               dword ptr [eax + 0x990]");                       // 0x00766902    ff9090090000
    asm("ret                0x0008");                                        // 0x00766908    c20800
    __builtin_unreachable();
}

bool32_t __fastcall StartConfusedReaction__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       word ptr [ecx + 0x00000090], 0x0000");           // 0x00766910    66c781900000000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00766919    8b01
    asm("push               0x000000c4");                                    // 0x0076691b    68c4000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00766920    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00766926    b801000000
    asm("ret");                                                              // 0x0076692b    c3
    __builtin_unreachable();
}

bool32_t __fastcall ConfusedReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x00766930    83ec10
    asm("push               esi");                                           // 0x00766933    56
    asm("mov.s              esi, ecx");                                      // 0x00766934    8bf1
    asm("{disp32} inc       word ptr [esi + 0x00000090]");                   // 0x00766936    66ff8690000000
    asm("cmp                word ptr [esi + 0x00000090], 0x64");             // 0x0076693d    6683be9000000064
    asm("{disp32} jbe       _jmp_addr_0x00766a00");                          // 0x00766945    0f86b5000000
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x0076694b    8d4614
    asm("mov                ecx, dword ptr [eax]");                          // 0x0076694e    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00766950    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00766953    8b4008
    asm("push               0x000007a8");                                    // 0x00766956    68a8070000
    asm("push               0x00c24588");                                    // 0x0076695b    688845c200
    asm("push               0x41a00000");                                    // 0x00766960    680000a041
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00766965    894c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x00766969    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x0076696d    8944241c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00766971    e8ba7bf7ff
    asm("{disp8} fild       dword ptr [esp + 0x14]");                        // 0x00766976    db442414
    asm("{disp32} fmul      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x0076697a    d80dd0a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x00766980    d80d1cc48a00
    asm("faddp              st(1), st");                                     // 0x00766986    dec1
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x2414]");              // 0x00766988    d82514b48a00
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x0076698e    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x00766994    d835d0a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x0076699a    e861aa0300
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0076699f    8b4c2418
    asm("push               0x000007a9");                                    // 0x007669a3    68a9070000
    asm("push               0x00c24588");                                    // 0x007669a8    688845c200
    asm("push               0x41a00000");                                    // 0x007669ad    680000a041
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x007669b2    89442420
    asm("{disp8} mov        dword ptr [esp + 0x1c], ecx");                   // 0x007669b6    894c241c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x007669ba    e8717bf7ff
    asm("{disp8} fild       dword ptr [esp + 0x1c]");                        // 0x007669bf    db44241c
    asm("add                esp, 0x18");                                     // 0x007669c3    83c418
    asm("{disp32} fmul      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x007669c6    d80dd0a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x007669cc    d80d1cc48a00
    asm("faddp              st(1), st");                                     // 0x007669d2    dec1
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x2414]");              // 0x007669d4    d82514b48a00
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x007669da    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x007669e0    d835d0a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x007669e6    e815aa0300
    asm("push               0x000000c3");                                    // 0x007669eb    68c3000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x007669f0    8d54240c
    asm("push               edx");                                           // 0x007669f4    52
    asm("mov.s              ecx, esi");                                      // 0x007669f5    8bce
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x007669f7    89442414
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007669fb    e890bee8ff
    asm("_jmp_addr_0x00766a00:");
    asm("mov                eax, 0x00000001");                               // 0x00766a00    b801000000
    asm("pop                esi");                                           // 0x00766a05    5e
    asm("add                esp, 0x10");                                     // 0x00766a06    83c410
    asm("ret");                                                              // 0x00766a09    c3
    __builtin_unreachable();
}

uint8_t __fastcall ReactToFallingTreePriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a14c]");          // 0x00766a10    a04c01d500
    asm("ret                0x0008");                                        // 0x00766a15    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToFallingTree__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x00766a20    56
    asm("mov.s              esi, ecx");                                      // 0x00766a21    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x00766a23    8b4c240c
    asm("mov                eax, dword ptr [esi]");                          // 0x00766a27    8b06
    asm("push               0x6");                                           // 0x00766a29    6a06
    asm("push               ecx");                                           // 0x00766a2b    51
    asm("mov.s              ecx, esi");                                      // 0x00766a2c    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x00766a2e    ff9090090000
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00766a34    8b542408
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edx");             // 0x00766a38    8996bc000000
    asm("pop                esi");                                           // 0x00766a3e    5e
    asm("ret                0x0008");                                        // 0x00766a3f    c20800
    __builtin_unreachable();
}

uint8_t __fastcall ReactToCrowdPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a214]");          // 0x00766a50    a01402d500
    asm("ret                0x0008");                                        // 0x00766a55    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToCrowd__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x00766a60    56
    asm("mov.s              esi, ecx");                                      // 0x00766a61    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x00766a63    8b4c240c
    asm("mov                eax, dword ptr [esi]");                          // 0x00766a67    8b06
    asm("push               0x000000d6");                                    // 0x00766a69    68d6000000
    asm("push               ecx");                                           // 0x00766a6e    51
    asm("mov.s              ecx, esi");                                      // 0x00766a6f    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x00766a71    ff9090090000
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00766a77    8b542408
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edx");             // 0x00766a7b    8996bc000000
    asm("pop                esi");                                           // 0x00766a81    5e
    asm("ret                0x0008");                                        // 0x00766a82    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CrowdReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x28");                                     // 0x00766a90    83ec28
    asm("push               edi");                                           // 0x00766a93    57
    asm("mov.s              edi, ecx");                                      // 0x00766a94    8bf9
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000bc]");             // 0x00766a96    8b87bc000000
    asm("test               eax, eax");                                      // 0x00766a9c    85c0
    asm("{disp8} jne        _jmp_addr_0x00766aa7");                          // 0x00766a9e    7507
    asm("xor.s              eax, eax");                                      // 0x00766aa0    33c0
    asm("pop                edi");                                           // 0x00766aa2    5f
    asm("add                esp, 0x28");                                     // 0x00766aa3    83c428
    asm("ret");                                                              // 0x00766aa6    c3
    asm("_jmp_addr_0x00766aa7:");
    asm("{disp8} mov        eax, dword ptr [edi + 0x1c]");                   // 0x00766aa7    8b471c
    asm("push               esi");                                           // 0x00766aaa    56
    asm("{disp8} lea        esi, dword ptr [edi + 0x14]");                   // 0x00766aab    8d7714
    asm("mov.s              ecx, esi");                                      // 0x00766aae    8bce
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x00766ab0    89442414
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x00766ab4    e8d7c50900
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x00766ab9    d8442414
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00766abd    d95c241c
    asm("fild               dword ptr [esi]");                               // 0x00766ac1    db06
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00766ac3    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x00766ac9    d95c2418
    asm("{disp8} fild       dword ptr [esi + 0x04]");                        // 0x00766acd    db4604
    asm("{disp32} mov       esi, dword ptr [edi + 0x000000bc]");             // 0x00766ad0    8bb7bc000000
    asm("{disp8} mov        ecx, dword ptr [esi + 0x1c]");                   // 0x00766ad6    8b4e1c
    asm("add                esi, 0x14");                                     // 0x00766ad9    83c614
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00766adc    d80da4a38a00
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00766ae2    894c2414
    asm("mov.s              ecx, esi");                                      // 0x00766ae6    8bce
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x00766ae8    d95c2420
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x00766aec    e89fc50900
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x00766af1    d8442414
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00766af5    d95c2428
    asm("fild               dword ptr [esi]");                               // 0x00766af9    db06
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00766afb    d80da4a38a00
    asm("{disp8} fild       dword ptr [esi + 0x04]");                        // 0x00766b01    db4604
    asm("pop                esi");                                           // 0x00766b04    5e
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x00766b05    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00766b0b    d95c2428
    asm("{disp8} fsub       dword ptr [esp + 0x14]");                        // 0x00766b0f    d8642414
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00766b13    d9442424
    asm("{disp8} fsub       dword ptr [esp + 0x18]");                        // 0x00766b17    d8642418
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00766b1b    d9442428
    asm("{disp8} fsub       dword ptr [esp + 0x1c]");                        // 0x00766b1f    d864241c
    asm("{disp8} fst        dword ptr [esp + 0x28]");                        // 0x00766b23    d9542428
    asm("{disp8} fmul       dword ptr [esp + 0x28]");                        // 0x00766b27    d84c2428
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00766b2b    d95c240c
    asm("fld                st(1)");                                         // 0x00766b2f    d9c1
    asm("fmul               st, st(2)");                                     // 0x00766b31    d8ca
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                        // 0x00766b33    d95c2408
    asm("fld                st(0)");                                         // 0x00766b37    d9c0
    asm("fmul               st, st(1)");                                     // 0x00766b39    d8c9
    asm("{disp8} fst        dword ptr [esp + 0x04]");                        // 0x00766b3b    d9542404
    asm("{disp8} fadd       dword ptr [esp + 0x08]");                        // 0x00766b3f    d8442408
    asm("{disp8} fadd       dword ptr [esp + 0x0c]");                        // 0x00766b43    d844240c
    asm("fsqrt");                                                            // 0x00766b47    d9fa
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00766b49    d95c2410
    asm("fld                st(1)");                                         // 0x00766b4d    d9c1
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00766b4f    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00766b55    dfe0
    asm("test               ah, 0x40");                                      // 0x00766b57    f6c440
    asm("{disp8} je         _jmp_addr_0x00766b7c");                          // 0x00766b5a    7420
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00766b5c    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00766b62    dfe0
    asm("test               ah, 0x40");                                      // 0x00766b64    f6c440
    asm("{disp8} je         _jmp_addr_0x00766b7e");                          // 0x00766b67    7415
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00766b69    d9442428
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x00766b6d    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x00766b73    dfe0
    asm("test               ah, 0x40");                                      // 0x00766b75    f6c440
    asm("{disp8} jne        _jmp_addr_0x00766ba2");                          // 0x00766b78    7528
    asm("{disp8} jmp        _jmp_addr_0x00766b7e");                          // 0x00766b7a    eb02
    asm("_jmp_addr_0x00766b7c:");
    asm("fstp               st(0)");                                         // 0x00766b7c    ddd8
    asm("_jmp_addr_0x00766b7e:");
    asm("{disp8} fld        dword ptr [esp + 0x04]");                        // 0x00766b7e    d9442404
    asm("{disp8} fadd       dword ptr [esp + 0x08]");                        // 0x00766b82    d8442408
    asm("{disp8} fadd       dword ptr [esp + 0x0c]");                        // 0x00766b86    d844240c
    asm("fsqrt");                                                            // 0x00766b8a    d9fa
    asm("{disp32} fdivr     dword ptr [_rdata_float1p0]");                   // 0x00766b8c    d83d90a38a00
    asm("fld                st(0)");                                         // 0x00766b92    d9c0
    asm("fmulp              st(2), st");                                     // 0x00766b94    deca
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00766b96    d9442428
    asm("fmul               st, st(1)");                                     // 0x00766b9a    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00766b9c    d95c2428
    asm("fstp               st(0)");                                         // 0x00766ba0    ddd8
    asm("_jmp_addr_0x00766ba2:");
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00766ba2    d9442410
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x1e658]");             // 0x00766ba6    d81d58768c00
    asm("fnstsw             ax");                                            // 0x00766bac    dfe0
    asm("test               ah, 0x41");                                      // 0x00766bae    f6c441
    asm("{disp32} jne       _jmp_addr_0x00766c39");                          // 0x00766bb1    0f8582000000
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x00766bb7    d9442410
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x1e658]");             // 0x00766bbb    d82558768c00
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00766bc1    d95c2410
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00766bc5    d84c2410
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00766bc9    d9442428
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x00766bcd    d84c2410
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x00766bd1    d95c2428
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x00766bd5    d8442414
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00766bd9    d9442428
    asm("{disp8} fadd       dword ptr [esp + 0x1c]");                        // 0x00766bdd    d844241c
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00766be1    d95c241c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00766be5    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x00766beb    e810a80300
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x00766bf0    d944241c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x00766bf4    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x00766bfa    89442420
    asm("call               _jmp_addr_0x007a1400");                          // 0x00766bfe    e8fda70300
    asm("push               0x000000d6");                                    // 0x00766c03    68d6000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                   // 0x00766c08    8d542424
    asm("push               edx");                                           // 0x00766c0c    52
    asm("mov.s              ecx, edi");                                      // 0x00766c0d    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x00766c0f    8944242c
    asm("{disp8} mov        dword ptr [esp + 0x30], 0x00000000");            // 0x00766c13    c744243000000000
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00766c1b    e870bce8ff
    asm("mov                eax, dword ptr [edi]");                          // 0x00766c20    8b07
    asm("push               0x0000008c");                                    // 0x00766c22    688c000000
    asm("mov.s              ecx, edi");                                      // 0x00766c27    8bcf
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00766c29    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00766c2f    b801000000
    asm("pop                edi");                                           // 0x00766c34    5f
    asm("add                esp, 0x28");                                     // 0x00766c35    83c428
    asm("ret");                                                              // 0x00766c38    c3
    asm("_jmp_addr_0x00766c39:");
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000bc]");             // 0x00766c39    8b8fbc000000
    asm("fstp               st(0)");                                         // 0x00766c3f    ddd8
    asm("push               0x1");                                           // 0x00766c41    6a01
    asm("push               ecx");                                           // 0x00766c43    51
    asm("mov.s              ecx, edi");                                      // 0x00766c44    8bcf
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00766c46    e8d558e8ff
    asm("mov                eax, 0x00000001");                               // 0x00766c4b    b801000000
    asm("pop                edi");                                           // 0x00766c50    5f
    asm("add                esp, 0x28");                                     // 0x00766c51    83c428
    asm("ret");                                                              // 0x00766c54    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall MoveTowardsObjectToLookAt__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00766c60    83ec0c
    asm("push               esi");                                           // 0x00766c63    56
    asm("mov.s              esi, ecx");                                      // 0x00766c64    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00766c66    8b8ebc000000
    asm("mov                eax, dword ptr [ecx]");                          // 0x00766c6c    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00766c6e    ff502c
    asm("test               eax, eax");                                      // 0x00766c71    85c0
    asm("{disp8} jne        _jmp_addr_0x00766c89");                          // 0x00766c73    7514
    asm("mov                edx, dword ptr [esi]");                          // 0x00766c75    8b16
    asm("mov.s              ecx, esi");                                      // 0x00766c77    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00766c79    ff929c090000
    asm("mov                eax, 0x00000001");                               // 0x00766c7f    b801000000
    asm("pop                esi");                                           // 0x00766c84    5e
    asm("add                esp, 0x0c");                                     // 0x00766c85    83c40c
    asm("ret");                                                              // 0x00766c88    c3
    asm("_jmp_addr_0x00766c89:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00766c89    8b06
    asm("mov.s              ecx, esi");                                      // 0x00766c8b    8bce
    asm("call               dword ptr [eax + 0x860]");                       // 0x00766c8d    ff9060080000
    asm("xor.s              ecx, ecx");                                      // 0x00766c93    33c9
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x00766c95    894c2404
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00766c99    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00766c9d    894c240c
    asm("mov                ecx, dword ptr [eax]");                          // 0x00766ca1    8b08
    asm("{disp8} mov        dword ptr [esp + 0x04], ecx");                   // 0x00766ca3    894c2404
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00766ca7    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x08], edx");                   // 0x00766caa    89542408
    asm("{disp8} fld        dword ptr [eax + 0x08]");                        // 0x00766cae    d94008
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00766cb1    8b86bc000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x04]");                   // 0x00766cb7    8d4c2404
    asm("push               ecx");                                           // 0x00766cbb    51
    asm("add                eax, 0x14");                                     // 0x00766cbc    83c014
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00766cbf    d95c2410
    asm("push               eax");                                           // 0x00766cc3    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x00766cc4    e8a760feff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x241c]");              // 0x00766cc9    d81d1cb48a00
    asm("add                esp, 0x08");                                     // 0x00766ccf    83c408
    asm("fnstsw             ax");                                            // 0x00766cd2    dfe0
    asm("test               ah, 0x41");                                      // 0x00766cd4    f6c441
    asm("{disp8} jne        _jmp_addr_0x00766cf2");                          // 0x00766cd7    7519
    asm("mov                edx, dword ptr [esi]");                          // 0x00766cd9    8b16
    asm("push               0x000000d6");                                    // 0x00766cdb    68d6000000
    asm("mov.s              ecx, esi");                                      // 0x00766ce0    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00766ce2    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00766ce8    b801000000
    asm("pop                esi");                                           // 0x00766ced    5e
    asm("add                esp, 0x0c");                                     // 0x00766cee    83c40c
    asm("ret");                                                              // 0x00766cf1    c3
    asm("_jmp_addr_0x00766cf2:");
    asm("mov.s              ecx, esi");                                      // 0x00766cf2    8bce
    asm("call               ?MoveToPos@Living@@QAEHXZ");                     // 0x00766cf4    e87755e8ff
    asm("pop                esi");                                           // 0x00766cf9    5e
    asm("add                esp, 0x0c");                                     // 0x00766cfa    83c40c
    asm("ret");                                                              // 0x00766cfd    c3
    __builtin_unreachable();
}

bool32_t __fastcall InitialiseImpressedReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00766d00    56
    asm("mov.s              esi, ecx");                                      // 0x00766d01    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00766d03    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00766d09    85c9
    asm("{disp8} je         _jmp_addr_0x00766d47");                          // 0x00766d0b    743a
    asm("mov                eax, dword ptr [ecx]");                          // 0x00766d0d    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00766d0f    ff502c
    asm("test               eax, eax");                                      // 0x00766d12    85c0
    asm("{disp8} je         _jmp_addr_0x00766d47");                          // 0x00766d14    7431
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00766d16    8b86bc000000
    asm("push               0x2");                                           // 0x00766d1c    6a02
    asm("push               eax");                                           // 0x00766d1e    50
    asm("mov.s              ecx, esi");                                      // 0x00766d1f    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00766d21    e8fa57e8ff
    asm("cmp                eax, 0x01");                                     // 0x00766d26    83f801
    asm("{disp8} jne        _jmp_addr_0x00766d51");                          // 0x00766d29    7526
    asm("mov                edx, dword ptr [esi]");                          // 0x00766d2b    8b16
    asm("push               0x0000008e");                                    // 0x00766d2d    688e000000
    asm("mov.s              ecx, esi");                                      // 0x00766d32    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x00766d34    66c746580000
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x00766d3a    ff92e8080000
    asm("mov                eax, 0x00000001");                               // 0x00766d40    b801000000
    asm("pop                esi");                                           // 0x00766d45    5e
    asm("ret");                                                              // 0x00766d46    c3
    asm("_jmp_addr_0x00766d47:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00766d47    8b06
    asm("mov.s              ecx, esi");                                      // 0x00766d49    8bce
    asm("call               dword ptr [eax + 0x99c]");                       // 0x00766d4b    ff909c090000
    asm("_jmp_addr_0x00766d51:");
    asm("mov                eax, 0x00000001");                               // 0x00766d51    b801000000
    asm("pop                esi");                                           // 0x00766d56    5e
    asm("ret");                                                              // 0x00766d57    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall PerformImpressedReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x00766d60    83ec08
    asm("push               esi");                                           // 0x00766d63    56
    asm("mov.s              esi, ecx");                                      // 0x00766d64    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00766d66    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00766d6c    85c9
    asm("{disp8} je         _jmp_addr_0x00766dd2");                          // 0x00766d6e    7462
    asm("mov                eax, dword ptr [ecx]");                          // 0x00766d70    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00766d72    ff502c
    asm("test               eax, eax");                                      // 0x00766d75    85c0
    asm("{disp8} je         _jmp_addr_0x00766dd2");                          // 0x00766d77    7459
    asm("{disp8} inc        word ptr [esi + 0x58]");                         // 0x00766d79    66ff4658
    asm("xor.s              edx, edx");                                      // 0x00766d7d    33d2
    asm("mov                eax, 0x000003e8");                               // 0x00766d7f    b8e8030000
    asm("div                dword ptr [data_bytes + 0x33ba38]");             // 0x00766d84    f735381ad000
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");            // 0x00766d8a    c744240800000000
    asm("push               edi");                                           // 0x00766d92    57
    asm("{disp8} mov        di, word ptr [esi + 0x58]");                     // 0x00766d93    668b7e58
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x00766d97    89442408
    asm("{disp8} fild       qword ptr [esp + 0x08]");                        // 0x00766d9b    df6c2408
    asm("{disp32} fmul      dword ptr [__real@3fc00000]");                   // 0x00766d9f    d80d4cb28a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x00766da5    e856a60300
    asm("movsx              ecx, di");                                       // 0x00766daa    0fbfcf
    asm("cmp.s              ecx, eax");                                      // 0x00766dad    3bc8
    asm("pop                edi");                                           // 0x00766daf    5f
    asm("{disp8} jle        _jmp_addr_0x00766ddc");                          // 0x00766db0    7e2a
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x00766db2    8b86bc000000
    asm("push               0x2");                                           // 0x00766db8    6a02
    asm("push               eax");                                           // 0x00766dba    50
    asm("mov.s              ecx, esi");                                      // 0x00766dbb    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x00766dbd    e85e57e8ff
    asm("cmp                eax, 0x01");                                     // 0x00766dc2    83f801
    asm("{disp8} jne        _jmp_addr_0x00766ddc");                          // 0x00766dc5    7515
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x00766dc7    66c746580000
    asm("pop                esi");                                           // 0x00766dcd    5e
    asm("add                esp, 0x08");                                     // 0x00766dce    83c408
    asm("ret");                                                              // 0x00766dd1    c3
    asm("_jmp_addr_0x00766dd2:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00766dd2    8b16
    asm("mov.s              ecx, esi");                                      // 0x00766dd4    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00766dd6    ff929c090000
    asm("_jmp_addr_0x00766ddc:");
    asm("mov                eax, 0x00000001");                               // 0x00766ddc    b801000000
    asm("pop                esi");                                           // 0x00766de1    5e
    asm("add                esp, 0x08");                                     // 0x00766de2    83c408
    asm("ret");                                                              // 0x00766de5    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToFightPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00766df0    8b442404
    asm("{disp8} mov        eax, dword ptr [eax + 0x14]");                   // 0x00766df4    8b4014
    asm("push               0x0");                                           // 0x00766df7    6a00
    asm("push               0x009c95e0");                                    // 0x00766df9    68e0959c00
    asm("push               0x009c7f30");                                    // 0x00766dfe    68307f9c00
    asm("push               0x0");                                           // 0x00766e03    6a00
    asm("push               eax");                                           // 0x00766e05    50
    asm("call               ___RTDynamicCast");                              // 0x00766e06    e80eec0500
    asm("add                esp, 0x14");                                     // 0x00766e0b    83c414
    asm("test               eax, eax");                                      // 0x00766e0e    85c0
    asm("{disp8} jne        _jmp_addr_0x00766e17");                          // 0x00766e10    7505
    asm("xor.s              al, al");                                        // 0x00766e12    32c0
    asm("ret                0x0008");                                        // 0x00766e14    c20800
    asm("_jmp_addr_0x00766e17:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x34]");                   // 0x00766e17    8b4834
    asm("test               ecx, ecx");                                      // 0x00766e1a    85c9
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x389e2c]");        // 0x00766e1c    8b0d2cfed400
    asm("sete               al");                                            // 0x00766e22    0f94c0
    asm("dec                eax");                                           // 0x00766e25    48
    asm("and.s              eax, ecx");                                      // 0x00766e26    23c1
    asm("ret                0x0008");                                        // 0x00766e28    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToFight__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00766e30    8b442404
    asm("{disp32} mov       dword ptr [ecx + 0x000000bc], eax");             // 0x00766e34    8981bc000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00766e3a    8b442408
    asm("mov                edx, dword ptr [ecx]");                          // 0x00766e3e    8b11
    asm("push               0x0000008f");                                    // 0x00766e40    688f000000
    asm("push               eax");                                           // 0x00766e45    50
    asm("call               dword ptr [edx + 0x990]");                       // 0x00766e46    ff9290090000
    asm("ret                0x0008");                                        // 0x00766e4c    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall InitialiseFightReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                     // 0x00766e50    83ec10
    asm("push               ebx");                                           // 0x00766e53    53
    asm("push               esi");                                           // 0x00766e54    56
    asm("push               edi");                                           // 0x00766e55    57
    asm("push               0x0");                                           // 0x00766e56    6a00
    asm("push               0x009c95e0");                                    // 0x00766e58    68e0959c00
    asm("mov.s              edi, ecx");                                      // 0x00766e5d    8bf9
    asm("{disp32} mov       eax, dword ptr [edi + 0x000000bc]");             // 0x00766e5f    8b87bc000000
    asm("push               0x009c7f30");                                    // 0x00766e65    68307f9c00
    asm("push               0x0");                                           // 0x00766e6a    6a00
    asm("push               eax");                                           // 0x00766e6c    50
    asm("call               ___RTDynamicCast");                              // 0x00766e6d    e8a7eb0500
    asm("add                esp, 0x14");                                     // 0x00766e72    83c414
    asm("test               eax, eax");                                      // 0x00766e75    85c0
    asm("{disp32} je        _jmp_addr_0x00766f9a");                          // 0x00766e77    0f841d010000
    asm("{disp8} lea        ecx, dword ptr [eax + 0x14]");                   // 0x00766e7d    8d4814
    asm("mov                edx, dword ptr [ecx]");                          // 0x00766e80    8b11
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00766e82    89542410
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x00766e86    8b5104
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x00766e89    8b4908
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00766e8c    89542414
    asm("mov                edx, dword ptr [eax]");                          // 0x00766e90    8b10
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x00766e92    894c2418
    asm("mov.s              ecx, eax");                                      // 0x00766e96    8bc8
    asm("call               dword ptr [edx + 0x60]");                        // 0x00766e98    ff5260
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1ee18]");             // 0x00766e9b    d80d187e8c00
    asm("{disp32} mov       eax, dword ptr [edi + 0x00000094]");             // 0x00766ea1    8b8794000000
    asm("{disp8} mov        ebx, dword ptr [eax + 0x1c]");                   // 0x00766ea7    8b581c
    asm("xor.s              esi, esi");                                      // 0x00766eaa    33f6
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x00766eac    d95c240c
    asm("test               ebx, ebx");                                      // 0x00766eb0    85db
    asm("{disp32} jbe       _jmp_addr_0x00766fa4");                          // 0x00766eb2    0f86ec000000
    asm("{disp8} mov        edx, dword ptr [eax + 0x18]");                   // 0x00766eb8    8b5018
    asm("_jmp_addr_0x00766ebb:");
    asm("mov.s              eax, edx");                                      // 0x00766ebb    8bc2
    asm("test               eax, eax");                                      // 0x00766ebd    85c0
    asm("mov.s              ecx, esi");                                      // 0x00766ebf    8bce
    asm("{disp8} je         _jmp_addr_0x00766ecf");                          // 0x00766ec1    740c
    asm("_jmp_addr_0x00766ec3:");
    asm("test               ecx, ecx");                                      // 0x00766ec3    85c9
    asm("{disp8} je         _jmp_addr_0x00766ee3");                          // 0x00766ec5    741c
    asm("{disp8} mov        eax, dword ptr [eax + 0x04]");                   // 0x00766ec7    8b4004
    asm("dec                ecx");                                           // 0x00766eca    49
    asm("test               eax, eax");                                      // 0x00766ecb    85c0
    asm("{disp8} jne        _jmp_addr_0x00766ec3");                          // 0x00766ecd    75f4
    asm("_jmp_addr_0x00766ecf:");
    asm("xor.s              eax, eax");                                      // 0x00766ecf    33c0
    asm("_jmp_addr_0x00766ed1:");
    asm("cmp.s              eax, edi");                                      // 0x00766ed1    3bc7
    asm("{disp8} je         _jmp_addr_0x00766ee7");                          // 0x00766ed3    7412
    asm("inc                esi");                                           // 0x00766ed5    46
    asm("cmp.s              esi, ebx");                                      // 0x00766ed6    3bf3
    asm(".byte              0x72, 0xe1");// {disp8} jb _jmp_addr_0x00766ebb  // 0x00766ed8    72e1
    asm("pop                edi");                                           // 0x00766eda    5f
    asm("pop                esi");                                           // 0x00766edb    5e
    asm("xor.s              eax, eax");                                      // 0x00766edc    33c0
    asm("pop                ebx");                                           // 0x00766ede    5b
    asm("add                esp, 0x10");                                     // 0x00766edf    83c410
    asm("ret");                                                              // 0x00766ee2    c3
    asm("_jmp_addr_0x00766ee3:");
    asm("mov                eax, dword ptr [eax]");                          // 0x00766ee3    8b00
    asm("{disp8} jmp        _jmp_addr_0x00766ed1");                          // 0x00766ee5    ebea
    asm("_jmp_addr_0x00766ee7:");
    asm("cmp                esi, -0x01");                                    // 0x00766ee7    83feff
    asm("{disp32} je        _jmp_addr_0x00766fa4");                          // 0x00766eea    0f84b4000000
    asm("mov                eax, dword ptr [edi]");                          // 0x00766ef0    8b07
    asm("mov.s              ecx, edi");                                      // 0x00766ef2    8bcf
    asm("call               dword ptr [eax + 0x48]");                        // 0x00766ef4    ff5048
    asm("push               0x00000800");                                    // 0x00766ef7    6800080000
    asm("push               esi");                                           // 0x00766efc    56
    asm("call               _jmp_addr_0x0074dbf0");                          // 0x00766efd    e8ee6cfeff
    asm("add                esp, 0x08");                                     // 0x00766f02    83c408
    asm("and                eax, 0x0000ffff");                               // 0x00766f05    25ffff0000
    asm("shl                eax, 2");                                        // 0x00766f0a    c1e002
    asm("mov.s              esi, eax");                                      // 0x00766f0d    8bf0
    asm("{disp32} fild      dword ptr [esi + _cos_lookup_table]");           // 0x00766f0f    db86141ec300
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00766f15    d84c240c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x00766f19    d80d1cc48a00
    asm("{disp8} fild       dword ptr [esp + 0x10]");                        // 0x00766f1f    db442410
    asm("{disp32} fmul      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x00766f23    d80dd0a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x00766f29    d80d1cc48a00
    asm("faddp              st(1), st");                                     // 0x00766f2f    dec1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x00766f31    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x00766f37    d835d0a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x00766f3d    e8bea40300
    asm("{disp32} fild      dword ptr [esi + _sin_lookup_table]");           // 0x00766f42    db861416c300
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x00766f48    89442410
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x00766f4c    d84c240c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x00766f50    d80d1cc48a00
    asm("{disp8} fild       dword ptr [esp + 0x14]");                        // 0x00766f56    db442414
    asm("{disp32} fmul      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x00766f5a    d80dd0a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x00766f60    d80d1cc48a00
    asm("faddp              st(1), st");                                     // 0x00766f66    dec1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x00766f68    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_float10p0_0x0099a9d0]");             // 0x00766f6e    d835d0a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x00766f74    e887a40300
    asm("push               0x00000090");                                    // 0x00766f79    6890000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x00766f7e    8d4c2414
    asm("push               ecx");                                           // 0x00766f82    51
    asm("mov.s              ecx, edi");                                      // 0x00766f83    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x00766f85    8944241c
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x00766f89    e802b9e8ff
    asm("pop                edi");                                           // 0x00766f8e    5f
    asm("pop                esi");                                           // 0x00766f8f    5e
    asm("mov                eax, 0x00000001");                               // 0x00766f90    b801000000
    asm("pop                ebx");                                           // 0x00766f95    5b
    asm("add                esp, 0x10");                                     // 0x00766f96    83c410
    asm("ret");                                                              // 0x00766f99    c3
    asm("_jmp_addr_0x00766f9a:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00766f9a    8b17
    asm("mov.s              ecx, edi");                                      // 0x00766f9c    8bcf
    asm("call               dword ptr [edx + 0x99c]");                       // 0x00766f9e    ff929c090000
    asm("_jmp_addr_0x00766fa4:");
    asm("pop                edi");                                           // 0x00766fa4    5f
    asm("pop                esi");                                           // 0x00766fa5    5e
    asm("xor.s              eax, eax");                                      // 0x00766fa6    33c0
    asm("pop                ebx");                                           // 0x00766fa8    5b
    asm("add                esp, 0x10");                                     // 0x00766fa9    83c410
    asm("ret");                                                              // 0x00766fac    c3
    asm("nop");                                                              // 0x00766fad    90
    asm("nop");                                                              // 0x00766fae    90
    asm("nop");                                                              // 0x00766faf    90
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000bc]");             // 0x00766fb0    8b81bc000000
    asm("push               0x2");                                           // 0x00766fb6    6a02
    asm("add                eax, 0x14");                                     // 0x00766fb8    83c014
    asm("push               eax");                                           // 0x00766fbb    50
    asm("call               @LookAtPos__6LivingFRC9MapCoordsUl@16");         // 0x00766fbc    e88f55e8ff
    asm("mov                eax, 0x00000001");                               // 0x00766fc1    b801000000
    asm("ret");                                                              // 0x00766fc6    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall SetupReactToTownCelebration__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x0c");                                     // 0x00766fd0    83ec0c
    asm("push               ebx");                                           // 0x00766fd3    53
    asm("push               ebp");                                           // 0x00766fd4    55
    asm("push               esi");                                           // 0x00766fd5    56
    asm("push               edi");                                           // 0x00766fd6    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x00766fd7    8b7c2420
    asm("mov                eax, dword ptr [edi]");                          // 0x00766fdb    8b07
    asm("mov.s              ebx, ecx");                                      // 0x00766fdd    8bd9
    asm("mov.s              ecx, edi");                                      // 0x00766fdf    8bcf
    asm("call               dword ptr [eax + 0x1b8]");                       // 0x00766fe1    ff90b8010000
    asm("test               eax, eax");                                      // 0x00766fe7    85c0
    asm("{disp8} je         _jmp_addr_0x00767059");                          // 0x00766fe9    746e
    asm("{disp8} mov        esi, dword ptr [esp + 0x24]");                   // 0x00766feb    8b742424
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x00766fef    8b4628
    asm("test               eax, eax");                                      // 0x00766ff2    85c0
    asm("{disp8} jne        _jmp_addr_0x0076703c");                          // 0x00766ff4    7546
    asm("push               0x00000877");                                    // 0x00766ff6    6877080000
    asm("push               0x00c24588");                                    // 0x00766ffb    688845c200
    asm("push               0x0000012c");                                    // 0x00767000    682c010000
    asm("call               ?__nw@Base@@SAPAXK@Z");                          // 0x00767005    e8e6f6ccff
    asm("add                esp, 0x0c");                                     // 0x0076700a    83c40c
    asm("test               eax, eax");                                      // 0x0076700d    85c0
    asm("{disp32} je        _jmp_addr_0x00767173");                          // 0x0076700f    0f845e010000
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x2fefb0]");        // 0x00767015    8b0db04fcc00
    asm("push               edi");                                           // 0x0076701b    57
    asm("push               0x0");                                           // 0x0076701c    6a00
    asm("push               ecx");                                           // 0x0076701e    51
    asm("push               0x0");                                           // 0x0076701f    6a00
    asm("push               0x00cc4fa0");                                    // 0x00767021    68a04fcc00
    asm("{disp8} lea        edx, dword ptr [edi + 0x14]");                   // 0x00767026    8d5714
    asm("push               edx");                                           // 0x00767029    52
    asm("mov.s              ecx, eax");                                      // 0x0076702a    8bc8
    asm("call               @__ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town@32");                          // 0x0076702c    e86f46daff
    asm("test               eax, eax");                                      // 0x00767031    85c0
    asm("{disp32} je        _jmp_addr_0x00767173");                          // 0x00767033    0f843a010000
    asm("{disp8} mov        dword ptr [esi + 0x28], eax");                   // 0x00767039    894628
    asm("_jmp_addr_0x0076703c:");
    asm("push               0x7");                                           // 0x0076703c    6a07
    asm("{disp32} mov       dword ptr [ebx + 0x000000bc], edi");             // 0x0076703e    89bbbc000000
    asm("mov                eax, dword ptr [ebx]");                          // 0x00767044    8b03
    asm("push               esi");                                           // 0x00767046    56
    asm("mov.s              ecx, ebx");                                      // 0x00767047    8bcb
    asm("call               dword ptr [eax + 0x990]");                       // 0x00767049    ff9090090000
    asm("pop                edi");                                           // 0x0076704f    5f
    asm("pop                esi");                                           // 0x00767050    5e
    asm("pop                ebp");                                           // 0x00767051    5d
    asm("pop                ebx");                                           // 0x00767052    5b
    asm("add                esp, 0x0c");                                     // 0x00767053    83c40c
    asm("ret                0x0008");                                        // 0x00767056    c20800
    asm("_jmp_addr_0x00767059:");
    asm("push               0x0");                                           // 0x00767059    6a00
    asm("push               0x009c7f50");                                    // 0x0076705b    68507f9c00
    asm("push               0x009c7f30");                                    // 0x00767060    68307f9c00
    asm("push               0x0");                                           // 0x00767065    6a00
    asm("push               edi");                                           // 0x00767067    57
    asm("call               ___RTDynamicCast");                              // 0x00767068    e8ace90500
    asm("mov.s              ebp, eax");                                      // 0x0076706d    8be8
    asm("{disp8} mov        edx, dword ptr [ebp + 0x00]");                   // 0x0076706f    8b5500
    asm("add                esp, 0x14");                                     // 0x00767072    83c414
    asm("mov.s              ecx, ebp");                                      // 0x00767075    8bcd
    asm("call               dword ptr [edx + 0x64]");                        // 0x00767077    ff5264
    asm("fstp               st(0)");                                         // 0x0076707a    ddd8
    asm("{disp8} mov        eax, dword ptr [esp + 0x24]");                   // 0x0076707c    8b442424
    asm("{disp8} mov        esi, dword ptr [eax + 0x28]");                   // 0x00767080    8b7028
    asm("test               esi, esi");                                      // 0x00767083    85f6
    asm("{disp8} jne        _jmp_addr_0x007670fa");                          // 0x00767085    7573
    asm("push               esi");                                           // 0x00767087    56
    asm("push               0x009d10b8");                                    // 0x00767088    68b8109d00
    asm("push               0x009c7f30");                                    // 0x0076708d    68307f9c00
    asm("push               esi");                                           // 0x00767092    56
    asm("push               edi");                                           // 0x00767093    57
    asm("call               ___RTDynamicCast");                              // 0x00767094    e880e90500
    asm("push               0x0000088b");                                    // 0x00767099    688b080000
    asm("push               0x00c24588");                                    // 0x0076709e    688845c200
    asm("push               0x0000012c");                                    // 0x007670a3    682c010000
    asm("{disp8} mov        dword ptr [esp + 0x40], eax");                   // 0x007670a8    89442440
    asm("call               ?__nw@Base@@SAPAXK@Z");                          // 0x007670ac    e83ff6ccff
    asm("mov.s              esi, eax");                                      // 0x007670b1    8bf0
    asm("add                esp, 0x20");                                     // 0x007670b3    83c420
    asm("test               esi, esi");                                      // 0x007670b6    85f6
    asm("{disp32} je        _jmp_addr_0x00767173");                          // 0x007670b8    0f84b5000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                   // 0x007670be    8b4c2420
    asm("test               ecx, ecx");                                      // 0x007670c2    85c9
    asm("{disp8} je         _jmp_addr_0x007670cd");                          // 0x007670c4    7407
    asm("mov                edx, dword ptr [ecx]");                          // 0x007670c6    8b11
    asm("call               dword ptr [edx + 0x48]");                        // 0x007670c8    ff5248
    asm("{disp8} jmp        _jmp_addr_0x007670cf");                          // 0x007670cb    eb02
    asm("_jmp_addr_0x007670cd:");
    asm("xor.s              eax, eax");                                      // 0x007670cd    33c0
    asm("_jmp_addr_0x007670cf:");
    asm("push               eax");                                           // 0x007670cf    50
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x2ff110]");        // 0x007670d0    a11051cc00
    asm("push               0x0");                                           // 0x007670d5    6a00
    asm("push               eax");                                           // 0x007670d7    50
    asm("push               ebp");                                           // 0x007670d8    55
    asm("push               0x00cc5100");                                    // 0x007670d9    680051cc00
    asm("{disp8} lea        ecx, dword ptr [edi + 0x14]");                   // 0x007670de    8d4f14
    asm("push               ecx");                                           // 0x007670e1    51
    asm("mov.s              ecx, esi");                                      // 0x007670e2    8bce
    asm("call               @__ct__5DanceFRC9MapCoordsPC10GDanceInfoP16GameThingWithPosUliP4Town@32");                          // 0x007670e4    e8b745daff
    asm("mov.s              esi, eax");                                      // 0x007670e9    8bf0
    asm("test               esi, esi");                                      // 0x007670eb    85f6
    asm("{disp32} je        _jmp_addr_0x00767173");                          // 0x007670ed    0f8480000000
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x007670f3    8b542424
    asm("{disp8} mov        dword ptr [edx + 0x28], esi");                   // 0x007670f7    897228
    asm("_jmp_addr_0x007670fa:");
    asm("mov                eax, dword ptr [ebx]");                          // 0x007670fa    8b03
    asm("mov.s              ecx, ebx");                                      // 0x007670fc    8bcb
    asm("call               dword ptr [eax + 0x978]");                       // 0x007670fe    ff9078090000
    asm("test               eax, eax");                                      // 0x00767104    85c0
    asm("{disp8} je         _jmp_addr_0x00767114");                          // 0x00767106    740c
    asm("mov                edx, dword ptr [ebx]");                          // 0x00767108    8b13
    asm("push               0x1");                                           // 0x0076710a    6a01
    asm("mov.s              ecx, ebx");                                      // 0x0076710c    8bcb
    asm("call               dword ptr [edx + 0xb08]");                       // 0x0076710e    ff92080b0000
    asm("_jmp_addr_0x00767114:");
    asm("push               ebx");                                           // 0x00767114    53
    asm("mov.s              ecx, esi");                                      // 0x00767115    8bce
    asm("{disp32} mov       dword ptr [ebx + 0x000000bc], edi");             // 0x00767117    89bbbc000000
    asm("call               ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z");                          // 0x0076711d    e8de02e3ff
    asm("cmp                eax, 0x01");                                     // 0x00767122    83f801
    asm("{disp8} jne        _jmp_addr_0x00767162");                          // 0x00767125    753b
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x00767127    8d442410
    asm("push               eax");                                           // 0x0076712b    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0076712c    8d4e14
    asm("xor.s              edi, edi");                                      // 0x0076712f    33ff
    asm("push               ecx");                                           // 0x00767131    51
    asm("mov.s              ecx, ebx");                                      // 0x00767132    8bcb
    asm("{disp8} mov        dword ptr [esp + 0x18], edi");                   // 0x00767134    897c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], edi");                   // 0x00767138    897c241c
    asm("{disp8} mov        dword ptr [esp + 0x20], edi");                   // 0x0076713c    897c2420
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                          // 0x00767140    e87b88e8ff
    asm("{disp8} mov        edx, dword ptr [esp + 0x24]");                   // 0x00767145    8b542424
    asm("push               edi");                                           // 0x00767149    57
    asm("push               0x000000cb");                                    // 0x0076714a    68cb000000
    asm("push               esi");                                           // 0x0076714f    56
    asm("push               edx");                                           // 0x00767150    52
    asm("mov.s              ecx, ebx");                                      // 0x00767151    8bcb
    asm("call               _jmp_addr_0x005f1010");                          // 0x00767153    e8b89ee8ff
    asm("pop                edi");                                           // 0x00767158    5f
    asm("pop                esi");                                           // 0x00767159    5e
    asm("pop                ebp");                                           // 0x0076715a    5d
    asm("pop                ebx");                                           // 0x0076715b    5b
    asm("add                esp, 0x0c");                                     // 0x0076715c    83c40c
    asm("ret                0x0008");                                        // 0x0076715f    c20800
    asm("_jmp_addr_0x00767162:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x24]");                   // 0x00767162    8b4c2424
    asm("mov                eax, dword ptr [ebx]");                          // 0x00767166    8b03
    asm("push               0x7");                                           // 0x00767168    6a07
    asm("push               ecx");                                           // 0x0076716a    51
    asm("mov.s              ecx, ebx");                                      // 0x0076716b    8bcb
    asm("call               dword ptr [eax + 0x990]");                       // 0x0076716d    ff9090090000
    asm("_jmp_addr_0x00767173:");
    asm("pop                edi");                                           // 0x00767173    5f
    asm("pop                esi");                                           // 0x00767174    5e
    asm("pop                ebp");                                           // 0x00767175    5d
    asm("pop                ebx");                                           // 0x00767176    5b
    asm("add                esp, 0x0c");                                     // 0x00767177    83c40c
    asm("ret                0x0008");                                        // 0x0076717a    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToTownCelebrationPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x00767180    56
    asm("xor.s              eax, eax");                                      // 0x00767181    33c0
    asm("mov.s              esi, ecx");                                      // 0x00767183    8bf1
    asm("{disp32} mov       ax, word ptr [esi + 0x000000e0]");               // 0x00767185    668b86e0000000
    asm("shr                eax, 9");                                        // 0x0076718c    c1e809
    asm("test               al, 0x01");                                      // 0x0076718f    a801
    asm("{disp8} je         _jmp_addr_0x00767199");                          // 0x00767191    7406
    asm("xor.s              al, al");                                        // 0x00767193    32c0
    asm("pop                esi");                                           // 0x00767195    5e
    asm("ret                0x0008");                                        // 0x00767196    c20800
    asm("_jmp_addr_0x00767199:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00767199    8b16
    asm("mov.s              ecx, esi");                                      // 0x0076719b    8bce
    asm("call               dword ptr [edx + 0x978]");                       // 0x0076719d    ff9278090000
    asm("test               eax, eax");                                      // 0x007671a3    85c0
    asm("{disp8} je         _jmp_addr_0x007671ad");                          // 0x007671a5    7406
    asm("xor.s              al, al");                                        // 0x007671a7    32c0
    asm("pop                esi");                                           // 0x007671a9    5e
    asm("ret                0x0008");                                        // 0x007671aa    c20800
    asm("_jmp_addr_0x007671ad:");
    asm("mov                eax, dword ptr [esi]");                          // 0x007671ad    8b06
    asm("mov.s              ecx, esi");                                      // 0x007671af    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x007671b1    ff5048
    asm("test               eax, eax");                                      // 0x007671b4    85c0
    asm("{disp8} jne        _jmp_addr_0x007671be");                          // 0x007671b6    7506
    asm("xor.s              al, al");                                        // 0x007671b8    32c0
    asm("pop                esi");                                           // 0x007671ba    5e
    asm("ret                0x0008");                                        // 0x007671bb    c20800
    asm("_jmp_addr_0x007671be:");
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x007671be    8b4c2408
    asm("{disp8} mov        esi, dword ptr [ecx + 0x14]");                   // 0x007671c2    8b7114
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x38a2dc]");        // 0x007671c5    8b0ddc02d500
    asm("cmp.s              esi, eax");                                      // 0x007671cb    3bf0
    asm("setne              al");                                            // 0x007671cd    0f95c0
    asm("pop                esi");                                           // 0x007671d0    5e
    asm("dec                eax");                                           // 0x007671d1    48
    asm("and.s              eax, ecx");                                      // 0x007671d2    23c1
    asm("ret                0x0008");                                        // 0x007671d4    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToBreeder__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x007671e0    56
    asm("mov.s              esi, ecx");                                      // 0x007671e1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x007671e3    8b4c240c
    asm("mov                eax, dword ptr [esi]");                          // 0x007671e7    8b06
    asm("push               0x000000e3");                                    // 0x007671e9    68e3000000
    asm("push               ecx");                                           // 0x007671ee    51
    asm("mov.s              ecx, esi");                                      // 0x007671ef    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x007671f1    ff9090090000
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x007671f7    8b542408
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edx");             // 0x007671fb    8996bc000000
    asm("pop                esi");                                           // 0x00767201    5e
    asm("ret                0x0008");                                        // 0x00767202    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToBreederPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("push               ebx");                                           // 0x00767210    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x00767211    8b5c2408
    asm("push               esi");                                           // 0x00767215    56
    asm("push               edi");                                           // 0x00767216    57
    asm("mov.s              edi, ecx");                                      // 0x00767217    8bf9
    asm("{disp8} mov        ecx, dword ptr [ebx + 0x14]");                   // 0x00767219    8b4b14
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076721c    8b01
    asm("push               0x0");                                           // 0x0076721e    6a00
    asm("call               dword ptr [eax + 0x2c8]");                       // 0x00767220    ff90c8020000
    asm("test               eax, eax");                                      // 0x00767226    85c0
    asm("{disp8} je         _jmp_addr_0x0076726c");                          // 0x00767228    7442
    asm("{disp8} mov        esi, dword ptr [ebx + 0x14]");                   // 0x0076722a    8b7314
    asm("test               esi, esi");                                      // 0x0076722d    85f6
    asm("{disp8} je         _jmp_addr_0x0076726c");                          // 0x0076722f    743b
    asm("cmp.s              edi, esi");                                      // 0x00767231    3bfe
    asm("{disp8} je         _jmp_addr_0x0076726c");                          // 0x00767233    7437
    asm("mov.s              ecx, edi");                                      // 0x00767235    8bcf
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");            // 0x00767237    e8549effff
    asm("test               eax, eax");                                      // 0x0076723c    85c0
    asm("{disp8} je         _jmp_addr_0x0076726c");                          // 0x0076723e    742c
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x00767240    8b5728
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00767243    8b4e28
    asm("{disp32} mov       eax, dword ptr [edx + 0x000001f8]");             // 0x00767246    8b82f8010000
    asm("cmp                eax, dword ptr [ecx + 0x000001f8]");             // 0x0076724c    3b81f8010000
    asm("{disp8} je         _jmp_addr_0x0076726c");                          // 0x00767252    7418
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x00767254    8b431c
    asm("test               eax, eax");                                      // 0x00767257    85c0
    asm("{disp8} jne        _jmp_addr_0x0076726c");                          // 0x00767259    7511
    asm("test               byte ptr [edi + 0x25], 0x04");                   // 0x0076725b    f6472504
    asm("{disp8} jne        _jmp_addr_0x0076726c");                          // 0x0076725f    750b
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a278]");          // 0x00767261    a07802d500
    asm("pop                edi");                                           // 0x00767266    5f
    asm("pop                esi");                                           // 0x00767267    5e
    asm("pop                ebx");                                           // 0x00767268    5b
    asm("ret                0x0008");                                        // 0x00767269    c20800
    asm("_jmp_addr_0x0076726c:");
    asm("pop                edi");                                           // 0x0076726c    5f
    asm("pop                esi");                                           // 0x0076726d    5e
    asm("xor.s              al, al");                                        // 0x0076726e    32c0
    asm("pop                ebx");                                           // 0x00767270    5b
    asm("ret                0x0008");                                        // 0x00767271    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ReactToBreeder__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00767280    56
    asm("mov.s              esi, ecx");                                      // 0x00767281    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x00767283    8b8ebc000000
    asm("test               ecx, ecx");                                      // 0x00767289    85c9
    asm("{disp8} je         _jmp_addr_0x007672b0");                          // 0x0076728b    7423
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076728d    8b01
    asm("push               0x0");                                           // 0x0076728f    6a00
    asm("call               dword ptr [eax + 0x2c8]");                       // 0x00767291    ff90c8020000
    asm("test               eax, eax");                                      // 0x00767297    85c0
    asm("{disp8} je         _jmp_addr_0x007672b0");                          // 0x00767299    7415
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");             // 0x0076729b    8b8ebc000000
    asm("push               ecx");                                           // 0x007672a1    51
    asm("mov.s              ecx, esi");                                      // 0x007672a2    8bce
    asm("call               ?GoAndHaveSexWith@Villager@@QAEIPAV1@@Z");       // 0x007672a4    e817000000
    asm("mov                eax, 0x00000001");                               // 0x007672a9    b801000000
    asm("pop                esi");                                           // 0x007672ae    5e
    asm("ret");                                                              // 0x007672af    c3
    asm("_jmp_addr_0x007672b0:");
    asm("xor.s              eax, eax");                                      // 0x007672b0    33c0
    asm("pop                esi");                                           // 0x007672b2    5e
    asm("ret");                                                              // 0x007672b3    c3
    __builtin_unreachable();
}

bool32_t __fastcall GoAndHaveSexWith__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1)
{
    asm("push               esi");                                           // 0x007672c0    56
    asm("push               edi");                                           // 0x007672c1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x007672c2    8b7c240c
    asm("push               0x3f0fdf3b");                                    // 0x007672c6    683bdf0f3f
    asm("push               0x7a");                                          // 0x007672cb    6a7a
    asm("mov.s              esi, ecx");                                      // 0x007672cd    8bf1
    asm("push               edi");                                           // 0x007672cf    57
    asm("call               ?MakeVillagesMeet@Villager@@QAE_NPAV1@W4VILLAGER_STATES@@M@Z");                          // 0x007672d0    e8bbb3feff
    asm("{disp32} mov       dword ptr [esi + 0x00000118], edi");             // 0x007672d5    89be18010000
    asm("{disp32} mov       dword ptr [edi + 0x00000118], esi");             // 0x007672db    89b718010000
    asm("pop                edi");                                           // 0x007672e1    5f
    asm("pop                esi");                                           // 0x007672e2    5e
    asm("ret                0x0004");                                        // 0x007672e3    c20400
    __builtin_unreachable();
}

void __fastcall SetupReactToVillagerInHand__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x007672f0    56
    asm("mov.s              esi, ecx");                                      // 0x007672f1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x0c]");                   // 0x007672f3    8b4c240c
    asm("mov                eax, dword ptr [esi]");                          // 0x007672f7    8b06
    asm("push               0x000000eb");                                    // 0x007672f9    68eb000000
    asm("push               ecx");                                           // 0x007672fe    51
    asm("mov.s              ecx, esi");                                      // 0x007672ff    8bce
    asm("call               dword ptr [eax + 0x990]");                       // 0x00767301    ff9090090000
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00767307    8b542408
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edx");             // 0x0076730b    8996bc000000
    asm("pop                esi");                                           // 0x00767311    5e
    asm("ret                0x0008");                                        // 0x00767312    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToVillagerInHandPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("push               esi");                                           // 0x00767320    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                   // 0x00767321    8b742408
    asm("push               edi");                                           // 0x00767325    57
    asm("mov.s              edi, ecx");                                      // 0x00767326    8bf9
    asm("{disp8} mov        ecx, dword ptr [esi + 0x14]");                   // 0x00767328    8b4e14
    asm("mov                eax, dword ptr [ecx]");                          // 0x0076732b    8b01
    asm("push               0x0");                                           // 0x0076732d    6a00
    asm("call               dword ptr [eax + 0x2c8]");                       // 0x0076732f    ff90c8020000
    asm("test               eax, eax");                                      // 0x00767335    85c0
    asm("{disp8} je         _jmp_addr_0x00767391");                          // 0x00767337    7458
    asm("{disp8} mov        esi, dword ptr [esi + 0x14]");                   // 0x00767339    8b7614
    asm("test               esi, esi");                                      // 0x0076733c    85f6
    asm("{disp8} je         _jmp_addr_0x00767391");                          // 0x0076733e    7451
    asm("mov                edx, dword ptr [esi]");                          // 0x00767340    8b16
    asm("mov.s              ecx, esi");                                      // 0x00767342    8bce
    asm("call               dword ptr [edx + 0xb04]");                       // 0x00767344    ff92040b0000
    asm("cmp                al, 0x18");                                      // 0x0076734a    3c18
    asm("{disp8} jne        _jmp_addr_0x00767391");                          // 0x0076734c    7543
    asm("mov.s              ecx, edi");                                      // 0x0076734e    8bcf
    asm("call               ?IsSexuallyActive@Villager@@QAEIXZ");            // 0x00767350    e83b9dffff
    asm("test               eax, eax");                                      // 0x00767355    85c0
    asm("{disp8} je         _jmp_addr_0x00767391");                          // 0x00767357    7438
    asm("{disp8} mov        ecx, dword ptr [edi + 0x28]");                   // 0x00767359    8b4f28
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                   // 0x0076735c    8b4628
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000001f8]");             // 0x0076735f    8b91f8010000
    asm("cmp                edx, dword ptr [eax + 0x000001f8]");             // 0x00767365    3b90f8010000
    asm("{disp8} je         _jmp_addr_0x00767391");                          // 0x0076736b    7424
    asm("mov                eax, dword ptr [esi]");                          // 0x0076736d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0076736f    8bce
    asm("call               dword ptr [eax + 0x1c]");                        // 0x00767371    ff501c
    asm("mov                edx, dword ptr [edi]");                          // 0x00767374    8b17
    asm("mov.s              ecx, edi");                                      // 0x00767376    8bcf
    asm("mov.s              esi, eax");                                      // 0x00767378    8bf0
    asm("call               dword ptr [edx + 0x1c]");                        // 0x0076737a    ff521c
    asm("cmp.s              eax, esi");                                      // 0x0076737d    3bc6
    asm("{disp8} jne        _jmp_addr_0x00767391");                          // 0x0076737f    7510
    asm("test               byte ptr [edi + 0x25], 0x04");                   // 0x00767381    f6472504
    asm("{disp8} jne        _jmp_addr_0x00767391");                          // 0x00767385    750a
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a278]");          // 0x00767387    a07802d500
    asm("pop                edi");                                           // 0x0076738c    5f
    asm("pop                esi");                                           // 0x0076738d    5e
    asm("ret                0x0008");                                        // 0x0076738e    c20800
    asm("_jmp_addr_0x00767391:");
    asm("pop                edi");                                           // 0x00767391    5f
    asm("xor.s              al, al");                                        // 0x00767392    32c0
    asm("pop                esi");                                           // 0x00767394    5e
    asm("ret                0x0008");                                        // 0x00767395    c20800
    __builtin_unreachable();
}

bool32_t __fastcall WaitForMate__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x007673a0    56
    asm("mov.s              esi, ecx");                                      // 0x007673a1    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007673a3    8b86bc000000
    asm("add                eax, 0x14");                                     // 0x007673a9    83c014
    asm("push               eax");                                           // 0x007673ac    50
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x007673ad    8d4614
    asm("push               eax");                                           // 0x007673b0    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x007673b1    e8ba59feff
    asm("{disp32} fcomp     dword ptr [data_bytes + 0x38a35c]");             // 0x007673b6    d81d5c03d500
    asm("add                esp, 0x08");                                     // 0x007673bc    83c408
    asm("fnstsw             ax");                                            // 0x007673bf    dfe0
    asm("test               ah, 0x01");                                      // 0x007673c1    f6c401
    asm("{disp8} je         _jmp_addr_0x007673f5");                          // 0x007673c4    742f
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");             // 0x007673c6    8b86bc000000
    asm("push               0x1");                                           // 0x007673cc    6a01
    asm("push               eax");                                           // 0x007673ce    50
    asm("mov.s              ecx, esi");                                      // 0x007673cf    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x007673d1    e84a51e8ff
    asm("test               eax, eax");                                      // 0x007673d6    85c0
    asm("{disp8} je         _jmp_addr_0x007673ff");                          // 0x007673d8    7425
    asm("push               0x1");                                           // 0x007673da    6a01
    asm("mov.s              ecx, esi");                                      // 0x007673dc    8bce
    asm("call               @IsReadyForNewAnimation__6LivingFUl@12");        // 0x007673de    e87d55e8ff
    asm("test               eax, eax");                                      // 0x007673e3    85c0
    asm("{disp8} je         _jmp_addr_0x007673ff");                          // 0x007673e5    7418
    asm("mov.s              ecx, esi");                                      // 0x007673e7    8bce
    asm("call               ?SetStateAnim@Living@@QAEXXZ");                  // 0x007673e9    e82257e8ff
    asm("mov                eax, 0x00000001");                               // 0x007673ee    b801000000
    asm("pop                esi");                                           // 0x007673f3    5e
    asm("ret");                                                              // 0x007673f4    c3
    asm("_jmp_addr_0x007673f5:");
    asm("mov                edx, dword ptr [esi]");                          // 0x007673f5    8b16
    asm("mov.s              ecx, esi");                                      // 0x007673f7    8bce
    asm("call               dword ptr [edx + 0x99c]");                       // 0x007673f9    ff929c090000
    asm("_jmp_addr_0x007673ff:");
    asm("mov                eax, 0x00000001");                               // 0x007673ff    b801000000
    asm("pop                esi");                                           // 0x00767404    5e
    asm("ret");                                                              // 0x00767405    c3
    __builtin_unreachable();
}

bool32_t __fastcall EnterDrowning__8VillagerFUcUc(struct Villager* this, const void* edx, unsigned char param_1, unsigned char param_2)
{
    return 1;
}

bool32_t __fastcall ExitDrowning__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    return 1;
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToBurningObjectInHandPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00767430    8b442404
    asm("push               esi");                                           // 0x00767434    56
    asm("{disp8} mov        esi, dword ptr [eax + 0x24]");                   // 0x00767435    8b7024
    asm("push               edi");                                           // 0x00767438    57
    asm("{disp8} mov        edi, dword ptr [eax + 0x14]");                   // 0x00767439    8b7814
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x0076743c    8d4714
    asm("push               eax");                                           // 0x0076743f    50
    asm("add                ecx, 0x14");                                     // 0x00767440    83c114
    asm("push               ecx");                                           // 0x00767443    51
    asm("call               _jmp_addr_0x0074cd50");                          // 0x00767444    e80759feff
    asm("lea                eax, dword ptr [esi + esi * 0x4]");              // 0x00767449    8d04b6
    asm("lea                ecx, dword ptr [eax + eax * 0x4]");              // 0x0076744c    8d0c80
    asm("{disp32} fcomp     dword ptr [ecx * 0x4 + 0x00d4f6f0]");            // 0x0076744f    d81c8df0f6d400
    asm("add                esp, 0x08");                                     // 0x00767456    83c408
    asm("fnstsw             ax");                                            // 0x00767459    dfe0
    asm("test               ah, 0x41");                                      // 0x0076745b    f6c441
    asm("{disp8} jne        _jmp_addr_0x0076747e");                          // 0x0076745e    751e
    asm("mov                edx, dword ptr [edi]");                          // 0x00767460    8b17
    asm("mov.s              ecx, edi");                                      // 0x00767462    8bcf
    asm("call               dword ptr [edx + 0x154]");                       // 0x00767464    ff9254010000
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]");             // 0x0076746a    d81d502c8c00
    asm("fnstsw             ax");                                            // 0x00767470    dfe0
    asm("test               ah, 0x01");                                      // 0x00767472    f6c401
    asm("{disp8} je         _jmp_addr_0x0076747e");                          // 0x00767475    7407
    asm("pop                edi");                                           // 0x00767477    5f
    asm("xor.s              al, al");                                        // 0x00767478    32c0
    asm("pop                esi");                                           // 0x0076747a    5e
    asm("ret                0x0008");                                        // 0x0076747b    c20800
    asm("_jmp_addr_0x0076747e:");
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a3a4]");          // 0x0076747e    a0a403d500
    asm("pop                edi");                                           // 0x00767483    5f
    asm("pop                esi");                                           // 0x00767484    5e
    asm("ret                0x0008");                                        // 0x00767485    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToBurningObjectInHand__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00767490    8b442404
    asm("{disp32} mov       dword ptr [ecx + 0x000000bc], eax");             // 0x00767494    8981bc000000
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x0076749a    8b442408
    asm("mov                edx, dword ptr [ecx]");                          // 0x0076749e    8b11
    asm("push               0x6");                                           // 0x007674a0    6a06
    asm("push               eax");                                           // 0x007674a2    50
    asm("call               dword ptr [edx + 0x990]");                       // 0x007674a3    ff9290090000
    asm("ret                0x0008");                                        // 0x007674a9    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToMagicShieldStruck__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x007674b0    8b442404
    asm("push               esi");                                           // 0x007674b4    56
    asm("push               edi");                                           // 0x007674b5    57
    asm("push               0x0");                                           // 0x007674b6    6a00
    asm("push               0x00c22778");                                    // 0x007674b8    687827c200
    asm("push               0x009c7f30");                                    // 0x007674bd    68307f9c00
    asm("push               0x0");                                           // 0x007674c2    6a00
    asm("push               eax");                                           // 0x007674c4    50
    asm("mov.s              esi, ecx");                                      // 0x007674c5    8bf1
    asm("call               ___RTDynamicCast");                              // 0x007674c7    e84de50500
    asm("mov.s              edi, eax");                                      // 0x007674cc    8bf8
    asm("add                esp, 0x14");                                     // 0x007674ce    83c414
    asm("test               edi, edi");                                      // 0x007674d1    85ff
    asm("{disp8} je         _jmp_addr_0x0076750f");                          // 0x007674d3    743a
    asm("push               esi");                                           // 0x007674d5    56
    asm("mov.s              ecx, edi");                                      // 0x007674d6    8bcf
    asm("call               _jmp_addr_0x0072bb00");                          // 0x007674d8    e82346fcff
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x007674dd    8b442410
    asm("mov                edx, dword ptr [esi]");                          // 0x007674e1    8b16
    asm("push               0x1");                                           // 0x007674e3    6a01
    asm("push               eax");                                           // 0x007674e5    50
    asm("mov.s              ecx, esi");                                      // 0x007674e6    8bce
    asm("call               dword ptr [edx + 0x98c]");                       // 0x007674e8    ff928c090000
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edi");             // 0x007674ee    89bebc000000
    asm("{disp32} mov       ecx, dword ptr [edi + 0x000000f8]");             // 0x007674f4    8b8ff8000000
    asm("add                edi, 0x14");                                     // 0x007674fa    83c714
    asm("{disp32} mov       dword ptr [esi + 0x00000094], ecx");             // 0x007674fd    898e94000000
    asm("push               edi");                                           // 0x00767503    57
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000010c]");             // 0x00767504    8d8e0c010000
    asm("call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z");                          // 0x0076750a    e8f1a3e7ff
    asm("_jmp_addr_0x0076750f:");
    asm("pop                edi");                                           // 0x0076750f    5f
    asm("pop                esi");                                           // 0x00767510    5e
    asm("ret                0x0008");                                        // 0x00767511    c20800
    __builtin_unreachable();
}

void __fastcall SetupReactToMagicShieldDestroyed__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00767520    8b442404
    asm("{disp8} mov        edx, dword ptr [esp + 0x08]");                   // 0x00767524    8b542408
    asm("add                eax, 0x14");                                     // 0x00767528    83c014
    asm("push               eax");                                           // 0x0076752b    50
    asm("push               edx");                                           // 0x0076752c    52
    asm("call               ?SetupPanicReaction@Villager@@QAEIPAVReaction@@AAUMapCoords@@@Z");                          // 0x0076752d    e89e3b0000
    asm("ret                0x0008");                                        // 0x00767532    c20800
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToMagicShieldStruckPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00767540    8b442404
    asm("{disp8} mov        eax, dword ptr [eax + 0x14]");                   // 0x00767544    8b4014
    asm("push               esi");                                           // 0x00767547    56
    asm("push               edi");                                           // 0x00767548    57
    asm("push               0x0");                                           // 0x00767549    6a00
    asm("push               0x00c22778");                                    // 0x0076754b    687827c200
    asm("push               0x009c7f30");                                    // 0x00767550    68307f9c00
    asm("push               0x0");                                           // 0x00767555    6a00
    asm("push               eax");                                           // 0x00767557    50
    asm("mov.s              edi, ecx");                                      // 0x00767558    8bf9
    asm("call               ___RTDynamicCast");                              // 0x0076755a    e8bae40500
    asm("mov.s              esi, eax");                                      // 0x0076755f    8bf0
    asm("add                esp, 0x14");                                     // 0x00767561    83c414
    asm("test               esi, esi");                                      // 0x00767564    85f6
    asm("{disp8} je         _jmp_addr_0x00767596");                          // 0x00767566    742e
    asm("mov                edx, dword ptr [edi]");                          // 0x00767568    8b17
    asm("mov.s              ecx, edi");                                      // 0x0076756a    8bcf
    asm("call               dword ptr [edx + 0xb04]");                       // 0x0076756c    ff92040b0000
    asm("cmp                al, -0x58");                                     // 0x00767572    3ca8
    asm("{disp8} jne        _jmp_addr_0x00767596");                          // 0x00767574    7520
    asm("{disp32} mov       eax, dword ptr [edi + 0x0000010c]");             // 0x00767576    8b870c010000
    asm("cmp                eax, dword ptr [esi + 0x14]");                   // 0x0076757c    3b4614
    asm("{disp8} jne        _jmp_addr_0x0076758c");                          // 0x0076757f    750b
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00000110]");             // 0x00767581    8b8f10010000
    asm("cmp                ecx, dword ptr [esi + 0x18]");                   // 0x00767587    3b4e18
    asm("{disp8} je         _jmp_addr_0x00767596");                          // 0x0076758a    740a
    asm("_jmp_addr_0x0076758c:");
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a46c]");          // 0x0076758c    a06c04d500
    asm("pop                edi");                                           // 0x00767591    5f
    asm("pop                esi");                                           // 0x00767592    5e
    asm("ret                0x0008");                                        // 0x00767593    c20800
    asm("_jmp_addr_0x00767596:");
    asm("pop                edi");                                           // 0x00767596    5f
    asm("xor.s              al, al");                                        // 0x00767597    32c0
    asm("pop                esi");                                           // 0x00767599    5e
    asm("ret                0x0008");                                        // 0x0076759a    c20800
    __builtin_unreachable();
}

uint8_t __fastcall ReactToMagicShieldDestroyedPriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x38a4d0]");          // 0x007675a0    a0d004d500
    asm("ret                0x0008");                                        // 0x007675a5    c20800
    __builtin_unreachable();
}
