#include "Villager.h"
#include "Football.h"
#include <stdint.h>

const float villager_football_float10p0_0x0099a980 = 10.0f;
const float villager_football_num_days_in_year_0x0099a984 = 365.25f;
const float villager_football_seconds_in_day_0x0099a988 = 86400.0f;

struct FootballerSubstateTableEntry FootballAttackerSubstateTable[_FOOTBALL_SUBSTATES_ATTACKER_COUNT] = {{"AttackerShoot"}};
struct FootballerSubstateTableEntry FootballDefenderSubstateTable[_FOOTBALL_SUBSTATES_DEFENDER_COUNT] = {{"DefenderSave"}};
struct FootballerSubstateTableEntry FootballGoalieSubstateTable[_FOOTBALL_SUBSTATES_GOALIE_COUNT] = {{"GoalieSave"}};

__attribute__((aligned(4))) char s_AttackerIdle[] = "AttackerIdle";
__attribute__((aligned(4))) char s_AttackerGoHome[] = "AttackerGoHome";
__attribute__((aligned(4))) char s_AttackerGoToBall[] = "AttackerGoToBall";
__attribute__((aligned(4))) char s_AttackerMoveToBePassed[] = "AttackerMoveToBePassed";
__attribute__((aligned(4))) char s_AttackerDribble[] = "AttackerDribble";
__attribute__((aligned(4))) char s_AttackerLobNearGoal[] = "AttackerLobNearGoal";
__attribute__((aligned(4))) char s_AttackerPass[] = "AttackerPass";
__attribute__((aligned(4))) char s_DefenderIdle[] = "DefenderIdle";
__attribute__((aligned(4))) char s_DefenderGoHome[] = "DefenderGoHome";
__attribute__((aligned(4))) char s_DefenderGoToBall[] = "DefenderGoToBall";
__attribute__((aligned(4))) char s_DefenderMark[] = "DefenderMark";
__attribute__((aligned(4))) char s_DefenderPass[] = "DefenderPass";
__attribute__((aligned(4))) char s_DefenderDribble[] = "DefenderDribble";
__attribute__((aligned(4))) char s_DefenderClear[] = "DefenderClear";
__attribute__((aligned(4))) char s_GoalieIdle[] = "GoalieIdle";
__attribute__((aligned(4))) char s_GoalieGoHome[] = "GoalieGoHome";
__attribute__((aligned(4))) char s_GoalieGoToBall[] = "GoalieGoToBall";
__attribute__((aligned(4))) char s_GoaliePass[] = "GoaliePass";
__attribute__((aligned(4))) char s_GoalieLook[] = "GoalieLook";
__attribute__((aligned(4))) char s_GoalieClear[] = "GoalieClear";

__attribute__((aligned(4))) char s_VillagerFootball_cpp[] = "C:\\dev\\MP\\Black\\VillagerFootball.cpp";

uint32_t villager_football_uint_0x00db9e0c;
float villager_football_seconds_in_year_0x00db9e10;

void __cdecl globl_ct_0x0075c100(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x0075c100    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x0075c106    b001
    asm("test               al, cl");                                        // 0x0075c108    84c8
    asm("{disp8} jne        _jmp_addr_0x0075c114");                          // 0x0075c10a    7508
    asm("or.s               cl, al");                                        // 0x0075c10c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075c10e    880d34c9fa00
    asm("_jmp_addr_0x0075c114:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x0075c120");   // 0x0075c114    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x0075c120(void)
{
    asm("push               0x00407870");                                    // 0x0075c120    6870784000
    asm("call               _atexit");                                       // 0x0075c125    e867960600
    asm("pop                ecx");                                           // 0x0075c12a    59
}

void __cdecl globl_ct_0x0075c130(void)
{
    asm("{disp32} jmp       _FUN_0075c140__8VillagerFv");                    // 0x0075c130    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0075c140__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_football_seconds_in_day_0x0099a988]");   // 0x0075c140    d90588a99900
    asm("{disp32} fmul dword ptr [_villager_football_num_days_in_year_0x0099a984]"); // 0x0075c146    d80d84a99900
    asm("{disp32} fstp dword ptr [_villager_football_seconds_in_year_0x00db9e10]");  // 0x0075c14c    d91d109edb00
}

void __cdecl globl_ct_0x0075c160(void)
{
    asm("{disp32} jmp       _FUN_0075c170__8VillagerFv");                    // 0x0075c160    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_0075c170__8VillagerFv(void)
{
    asm("{disp32} mov       dword ptr [_villager_football_uint_0x00db9e0c], 0xffffffff");  // 0x0075c170    c7050c9edb00ffffffff
}

void __cdecl globl_ct_0x0075c180(void)
{
    asm("{disp32} jmp       _FUN_0075c190__8VillagerFv");                    // 0x0075c180    e90b000000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __cdecl FUN_0075c190__8VillagerFv(void)
{
    asm("mov                eax, 0x0075f0d0");                               // 0x0075c190    b8d0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7b8], eax");        // 0x0075c195    a3b837c200
    asm("xor.s              eax, eax");                                      // 0x0075c19a    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7c8], eax");        // 0x0075c19c    a3c837c200
    asm("xor.s              ecx, ecx");                                      // 0x0075c1a1    33c9
    asm("push               esi");                                           // 0x0075c1a3    56
    asm("xor.s              esi, esi");                                      // 0x0075c1a4    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7c4], esi");        // 0x0075c1a6    8935c437c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7bc], ecx");        // 0x0075c1ac    890dbc37c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7cc], ecx");        // 0x0075c1b2    890dcc37c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7dc], ecx");        // 0x0075c1b8    890ddc37c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7ec], ecx");        // 0x0075c1be    890dec37c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e36c]");        // 0x0075c1c4    8b0d6c43c200
    asm("mov                eax, 0x0075dc20");                               // 0x0075c1ca    b820dc7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7d8], eax");        // 0x0075c1cf    a3d837c200
    asm("or                 esi, 0xffffffff");                               // 0x0075c1d4    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7d4], esi");        // 0x0075c1d7    8935d437c200
    asm("xor.s              edx, edx");                                      // 0x0075c1dd    33d2
    asm("mov                eax, 0x0075d2d0");                               // 0x0075c1df    b8d0d27500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7e8], eax");        // 0x0075c1e4    a3e837c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e368]");        // 0x0075c1e9    a16843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7f8], eax");        // 0x0075c1ee    a3f837c200
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x25e374]");          // 0x0075c1f3    a07443c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25d804], al");          // 0x0075c1f8    a20438c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7fc], ecx");        // 0x0075c1fd    890dfc37c200
    asm("xor.s              esi, esi");                                      // 0x0075c203    33f6
    asm("push               edi");                                           // 0x0075c205    57
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7c0], edx");        // 0x0075c206    8915c037c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7d0], edx");        // 0x0075c20c    8915d037c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7e0], edx");        // 0x0075c212    8915e037c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7f0], edx");        // 0x0075c218    8915f037c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e370]");        // 0x0075c21e    8b157043c200
    asm("xor.s              eax, eax");                                      // 0x0075c224    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7e4], esi");        // 0x0075c226    8935e437c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d7f4], esi");        // 0x0075c22c    8935f437c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d800], edx");        // 0x0075c232    89150038c200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c238    b90c000000
    asm("mov                edi, 0x00c23805");                               // 0x0075c23d    bf0538c200
    asm("rep stosd");                                                        // 0x0075c242    f3ab
    asm("stosw");                                                            // 0x0075c244    66ab
    asm("stosb");                                                            // 0x0075c246    aa
    asm("xor.s              ecx, ecx");                                      // 0x0075c247    33c9
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d844], esi");        // 0x0075c249    89354438c200
    asm("mov                eax, 0x0075f0d0");                               // 0x0075c24f    b8d0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d838], eax");        // 0x0075c254    a33838c200
    asm("xor.s              eax, eax");                                      // 0x0075c259    33c0
    asm("or                 esi, 0xffffffff");                               // 0x0075c25b    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d848], eax");        // 0x0075c25e    a34838c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d854], esi");        // 0x0075c263    89355438c200
    asm("xor.s              esi, esi");                                      // 0x0075c269    33f6
    asm("xor.s              edx, edx");                                      // 0x0075c26b    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d83c], ecx");        // 0x0075c26d    890d3c38c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d84c], ecx");        // 0x0075c273    890d4c38c200
    asm("mov                eax, 0x0075dd80");                               // 0x0075c279    b880dd7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d858], eax");        // 0x0075c27e    a35838c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d85c], ecx");        // 0x0075c283    890d5c38c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d86c], ecx");        // 0x0075c289    890d6c38c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d864], esi");        // 0x0075c28f    89356438c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d874], esi");        // 0x0075c295    89357438c200
    asm("mov                eax, 0x0075d3a0");                               // 0x0075c29b    b8a0d37500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d868], eax");        // 0x0075c2a0    a36838c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d840], edx");        // 0x0075c2a5    89154038c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d850], edx");        // 0x0075c2ab    89155038c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d860], edx");        // 0x0075c2b1    89156038c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d870], edx");        // 0x0075c2b7    89157038c200
    asm("mov                ecx, 0x00000005");                               // 0x0075c2bd    b905000000
    asm("mov                esi, 0x00c24354");                               // 0x0075c2c2    be5443c200
    asm("mov                edi, 0x00c23878");                               // 0x0075c2c7    bf7838c200
    asm("rep movsd          es:[edi], dword ptr ds:[esi]");                  // 0x0075c2cc    f3a5
    asm("xor.s              eax, eax");                                      // 0x0075c2ce    33c0
    asm("mov                ecx, 0x0000000b");                               // 0x0075c2d0    b90b000000
    asm("mov                edi, 0x00c2388c");                               // 0x0075c2d5    bf8c38c200
    asm("rep stosd");                                                        // 0x0075c2da    f3ab
    asm("mov                eax, 0x0075f0d0");                               // 0x0075c2dc    b8d0f07500
    asm("xor.s              ecx, ecx");                                      // 0x0075c2e1    33c9
    asm("xor.s              esi, esi");                                      // 0x0075c2e3    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8b8], eax");        // 0x0075c2e5    a3b838c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8bc], ecx");        // 0x0075c2ea    890dbc38c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8c0], edx");        // 0x0075c2f0    8915c038c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8c4], esi");        // 0x0075c2f6    8935c438c200
    asm("xor.s              eax, eax");                                      // 0x0075c2fc    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8c8], eax");        // 0x0075c2fe    a3c838c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8cc], ecx");        // 0x0075c303    890dcc38c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8dc], ecx");        // 0x0075c309    890ddc38c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8ec], ecx");        // 0x0075c30f    890dec38c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e344]");        // 0x0075c315    8b0d4443c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8f8], ecx");        // 0x0075c31b    890df838c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e350]");        // 0x0075c321    8b0d5043c200
    asm("or                 esi, 0xffffffff");                               // 0x0075c327    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8d4], esi");        // 0x0075c32a    8935d438c200
    asm("xor.s              esi, esi");                                      // 0x0075c330    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d904], ecx");        // 0x0075c332    890d0439c200
    asm("mov                eax, 0x0075ddc0");                               // 0x0075c338    b8c0dd7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8d8], eax");        // 0x0075c33d    a3d838c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8e4], esi");        // 0x0075c342    8935e438c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8f4], esi");        // 0x0075c348    8935f438c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8d0], edx");        // 0x0075c34e    8915d038c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8e0], edx");        // 0x0075c354    8915e038c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8f0], edx");        // 0x0075c35a    8915f038c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e348]");        // 0x0075c360    8b154843c200
    asm("mov                eax, 0x0075d500");                               // 0x0075c366    b800d57500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8e8], eax");        // 0x0075c36b    a3e838c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e34c]");        // 0x0075c370    a14c43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d900], eax");        // 0x0075c375    a30039c200
    asm("xor.s              eax, eax");                                      // 0x0075c37a    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d8fc], edx");        // 0x0075c37c    8915fc38c200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c382    b90c000000
    asm("mov                edi, 0x00c23908");                               // 0x0075c387    bf0839c200
    asm("rep stosd");                                                        // 0x0075c38c    f3ab
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d944], esi");        // 0x0075c38e    89354439c200
    asm("or                 esi, 0xffffffff");                               // 0x0075c394    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d954], esi");        // 0x0075c397    89355439c200
    asm("xor.s              ecx, ecx");                                      // 0x0075c39d    33c9
    asm("mov                eax, 0x0075f0d0");                               // 0x0075c39f    b8d0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d938], eax");        // 0x0075c3a4    a33839c200
    asm("xor.s              eax, eax");                                      // 0x0075c3a9    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d948], eax");        // 0x0075c3ab    a34839c200
    asm("xor.s              esi, esi");                                      // 0x0075c3b0    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d964], esi");        // 0x0075c3b2    89356439c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d974], esi");        // 0x0075c3b8    89357439c200
    asm("xor.s              edx, edx");                                      // 0x0075c3be    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d93c], ecx");        // 0x0075c3c0    890d3c39c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d94c], ecx");        // 0x0075c3c6    890d4c39c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d95c], ecx");        // 0x0075c3cc    890d5c39c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d96c], ecx");        // 0x0075c3d2    890d6c39c200
    asm("mov                eax, 0x0075ddd0");                               // 0x0075c3d8    b8d0dd7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d958], eax");        // 0x0075c3dd    a35839c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d940], edx");        // 0x0075c3e2    89154039c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d950], edx");        // 0x0075c3e8    89155039c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d960], edx");        // 0x0075c3ee    89156039c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d970], edx");        // 0x0075c3f4    89157039c200
    asm("mov                eax, 0x0075d670");                               // 0x0075c3fa    b870d67500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d968], eax");        // 0x0075c3ff    a36839c200
    asm("mov                ecx, 0x00000005");                               // 0x0075c404    b905000000
    asm("mov                esi, 0x00c2432c");                               // 0x0075c409    be2c43c200
    asm("mov                edi, 0x00c23978");                               // 0x0075c40e    bf7839c200
    asm("rep movsd          es:[edi], dword ptr ds:[esi]");                  // 0x0075c413    f3a5
    asm("movsw");                                                            // 0x0075c415    66a5
    asm("movsb");                                                            // 0x0075c417    a4
    asm("xor.s              eax, eax");                                      // 0x0075c418    33c0
    asm("mov                ecx, 0x0000000a");                               // 0x0075c41a    b90a000000
    asm("mov                edi, 0x00c2398f");                               // 0x0075c41f    bf8f39c200
    asm("rep stosd");                                                        // 0x0075c424    f3ab
    asm("stosb");                                                            // 0x0075c426    aa
    asm("mov                eax, 0x0075f100");                               // 0x0075c427    b800f17500
    asm("xor.s              esi, esi");                                      // 0x0075c42c    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9b8], eax");        // 0x0075c42e    a3b839c200
    asm("xor.s              eax, eax");                                      // 0x0075c433    33c0
    asm("xor.s              ecx, ecx");                                      // 0x0075c435    33c9
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9c4], esi");        // 0x0075c437    8935c439c200
    asm("or                 esi, 0xffffffff");                               // 0x0075c43d    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9c8], eax");        // 0x0075c440    a3c839c200
    asm("mov                eax, 0x0075de70");                               // 0x0075c445    b870de7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9d4], esi");        // 0x0075c44a    8935d439c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9bc], ecx");        // 0x0075c450    890dbc39c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9c0], edx");        // 0x0075c456    8915c039c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9cc], ecx");        // 0x0075c45c    890dcc39c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9d0], edx");        // 0x0075c462    8915d039c200
    asm("xor.s              esi, esi");                                      // 0x0075c468    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9d8], eax");        // 0x0075c46a    a3d839c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9dc], ecx");        // 0x0075c46f    890ddc39c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9e0], edx");        // 0x0075c475    8915e039c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9ec], ecx");        // 0x0075c47b    890dec39c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e320]");        // 0x0075c481    8b0d2043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9f0], edx");        // 0x0075c487    8915f039c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e318]");        // 0x0075c48d    8b151843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9f8], edx");        // 0x0075c493    8915f839c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e324]");        // 0x0075c499    8b152443c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da00], ecx");        // 0x0075c49f    890d003ac200
    asm("mov                eax, 0x0075d850");                               // 0x0075c4a5    b850d87500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9e8], eax");        // 0x0075c4aa    a3e839c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e31c]");        // 0x0075c4af    a11c43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9fc], eax");        // 0x0075c4b4    a3fc39c200
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x25e328]");          // 0x0075c4b9    a02843c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25da08], al");          // 0x0075c4be    a2083ac200
    asm("xor.s              eax, eax");                                      // 0x0075c4c3    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da04], edx");        // 0x0075c4c5    8915043ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9e4], esi");        // 0x0075c4cb    8935e439c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25d9f4], esi");        // 0x0075c4d1    8935f439c200
    asm("mov                ecx, 0x0000000b");                               // 0x0075c4d7    b90b000000
    asm("mov                edi, 0x00c23a09");                               // 0x0075c4dc    bf093ac200
    asm("rep stosd");                                                        // 0x0075c4e1    f3ab
    asm("stosw");                                                            // 0x0075c4e3    66ab
    asm("stosb");                                                            // 0x0075c4e5    aa
    asm("xor.s              ecx, ecx");                                      // 0x0075c4e6    33c9
    asm("mov                eax, 0x0075f0a0");                               // 0x0075c4e8    b8a0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da38], eax");        // 0x0075c4ed    a3383ac200
    asm("xor.s              eax, eax");                                      // 0x0075c4f2    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da48], eax");        // 0x0075c4f4    a3483ac200
    asm("xor.s              edx, edx");                                      // 0x0075c4f9    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da3c], ecx");        // 0x0075c4fb    890d3c3ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da4c], ecx");        // 0x0075c501    890d4c3ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da5c], ecx");        // 0x0075c507    890d5c3ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da6c], ecx");        // 0x0075c50d    890d6c3ac200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e308]");        // 0x0075c513    8b0d0843c200
    asm("mov                eax, 0x0075def0");                               // 0x0075c519    b8f0de7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da58], eax");        // 0x0075c51e    a3583ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da40], edx");        // 0x0075c523    8915403ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da50], edx");        // 0x0075c529    8915503ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da60], edx");        // 0x0075c52f    8915603ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da70], edx");        // 0x0075c535    8915703ac200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e30c]");        // 0x0075c53b    8b150c43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da44], esi");        // 0x0075c541    8935443ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da78], ecx");        // 0x0075c547    890d783ac200
    asm("{disp32} mov       cx, word ptr [data_bytes + 0x25e314]");          // 0x0075c54d    668b0d1443c200
    asm("mov                eax, 0x0075da90");                               // 0x0075c554    b890da7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da68], eax");        // 0x0075c559    a3683ac200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e310]");        // 0x0075c55e    a11043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da80], eax");        // 0x0075c563    a3803ac200
    asm("or                 esi, 0xffffffff");                               // 0x0075c568    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da7c], edx");        // 0x0075c56b    89157c3ac200
    asm("{disp32} mov       dl, byte ptr [data_bytes + 0x25e316]");          // 0x0075c571    8a151643c200
    asm("xor.s              eax, eax");                                      // 0x0075c577    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da54], esi");        // 0x0075c579    8935543ac200
    asm("xor.s              esi, esi");                                      // 0x0075c57f    33f6
    asm("{disp32} mov       word ptr [data_bytes + 0x25da84], cx");          // 0x0075c581    66890d843ac200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25da86], dl");          // 0x0075c588    8815863ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da64], esi");        // 0x0075c58e    8935643ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25da74], esi");        // 0x0075c594    8935743ac200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c59a    b90c000000
    asm("mov                edi, 0x00c23a87");                               // 0x0075c59f    bf873ac200
    asm("rep stosd");                                                        // 0x0075c5a4    f3ab
    asm("stosb");                                                            // 0x0075c5a6    aa
    asm("mov                eax, 0x0075f0a0");                               // 0x0075c5a7    b8a0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dab8], eax");        // 0x0075c5ac    a3b83ac200
    asm("mov                eax, 0x0075f190");                               // 0x0075c5b1    b890f17500
    asm("xor.s              ecx, ecx");                                      // 0x0075c5b6    33c9
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dac8], eax");        // 0x0075c5b8    a3c83ac200
    asm("mov                eax, 0x0075df00");                               // 0x0075c5bd    b800df7500
    asm("xor.s              edx, edx");                                      // 0x0075c5c2    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dad8], eax");        // 0x0075c5c4    a3d83ac200
    asm("mov                eax, 0x0075db80");                               // 0x0075c5c9    b880db7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dabc], ecx");        // 0x0075c5ce    890dbc3ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dac0], edx");        // 0x0075c5d4    8915c03ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dac4], esi");        // 0x0075c5da    8935c43ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dacc], ecx");        // 0x0075c5e0    890dcc3ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dad0], edx");        // 0x0075c5e6    8915d03ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dad4], esi");        // 0x0075c5ec    8935d43ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dadc], ecx");        // 0x0075c5f2    890ddc3ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dae0], edx");        // 0x0075c5f8    8915e03ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dae4], esi");        // 0x0075c5fe    8935e43ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dae8], eax");        // 0x0075c604    a3e83ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25daec], ecx");        // 0x0075c609    890dec3ac200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e2f8]");        // 0x0075c60f    a1f842c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e2fc]");        // 0x0075c614    8b0dfc42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25daf8], eax");        // 0x0075c61a    a3f83ac200
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x25e304]");          // 0x0075c61f    a00443c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25db04], al");          // 0x0075c624    a2043bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25daf0], edx");        // 0x0075c629    8915f03ac200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e300]");        // 0x0075c62f    8b150043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dafc], ecx");        // 0x0075c635    890dfc3ac200
    asm("xor.s              eax, eax");                                      // 0x0075c63b    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25daf4], esi");        // 0x0075c63d    8935f43ac200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db00], edx");        // 0x0075c643    8915003bc200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c649    b90c000000
    asm("mov                edi, 0x00c23b05");                               // 0x0075c64e    bf053bc200
    asm("rep stosd");                                                        // 0x0075c653    f3ab
    asm("stosw");                                                            // 0x0075c655    66ab
    asm("stosb");                                                            // 0x0075c657    aa
    asm("mov                eax, 0x0075f230");                               // 0x0075c658    b830f27500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db38], eax");        // 0x0075c65d    a3383bc200
    asm("xor.s              eax, eax");                                      // 0x0075c662    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db44], esi");        // 0x0075c664    8935443bc200
    asm("or                 esi, 0xffffffff");                               // 0x0075c66a    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db48], eax");        // 0x0075c66d    a3483bc200
    asm("mov                eax, 0x0075dfb0");                               // 0x0075c672    b8b0df7500
    asm("xor.s              ecx, ecx");                                      // 0x0075c677    33c9
    asm("xor.s              edx, edx");                                      // 0x0075c679    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db54], esi");        // 0x0075c67b    8935543bc200
    asm("xor.s              esi, esi");                                      // 0x0075c681    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db58], eax");        // 0x0075c683    a3583bc200
    asm("mov                eax, 0x0075dbd0");                               // 0x0075c688    b8d0db7500
    asm("pop                edi");                                           // 0x0075c68d    5f
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db64], esi");        // 0x0075c68e    8935643bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db74], esi");        // 0x0075c694    8935743bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db3c], ecx");        // 0x0075c69a    890d3c3bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db40], edx");        // 0x0075c6a0    8915403bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db4c], ecx");        // 0x0075c6a6    890d4c3bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db50], edx");        // 0x0075c6ac    8915503bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db5c], ecx");        // 0x0075c6b2    890d5c3bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db60], edx");        // 0x0075c6b8    8915603bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db68], eax");        // 0x0075c6be    a3683bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db6c], ecx");        // 0x0075c6c3    890d6c3bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25db70], edx");        // 0x0075c6c9    8915703bc200
    asm("pop                esi");                                           // 0x0075c6cf    5e
    asm("ret");                                                              // 0x0075c6d0    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x0075c6e0(void)
{
    asm("{disp32} jmp       _FUN_0075c6f0__8VillagerFv");                    // 0x0075c6e0    e90b000000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __cdecl FUN_0075c6f0__8VillagerFv(void)
{
    asm("mov                eax, 0x0075f1f0");                               // 0x0075c6f0    b8f0f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbb8], eax");        // 0x0075c6f5    a3b83bc200
    asm("xor.s              eax, eax");                                      // 0x0075c6fa    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbc8], eax");        // 0x0075c6fc    a3c83bc200
    asm("xor.s              ecx, ecx");                                      // 0x0075c701    33c9
    asm("push               esi");                                           // 0x0075c703    56
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbbc], ecx");        // 0x0075c704    890dbc3bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbcc], ecx");        // 0x0075c70a    890dcc3bc200
    asm("mov                eax, 0x0075e890");                               // 0x0075c710    b890e87500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbd8], eax");        // 0x0075c715    a3d83bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbdc], ecx");        // 0x0075c71a    890ddc3bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbec], ecx");        // 0x0075c720    890dec3bc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e3e0]");        // 0x0075c726    8b0de043c200
    asm("xor.s              esi, esi");                                      // 0x0075c72c    33f6
    asm("xor.s              edx, edx");                                      // 0x0075c72e    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbc4], esi");        // 0x0075c730    8935c43bc200
    asm("mov                eax, 0x0075e210");                               // 0x0075c736    b810e27500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbe8], eax");        // 0x0075c73b    a3e83bc200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e3dc]");        // 0x0075c740    a1dc43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbf8], eax");        // 0x0075c745    a3f83bc200
    asm("{disp32} mov       ax, word ptr [data_bytes + 0x25e3e8]");          // 0x0075c74a    66a1e843c200
    asm("{disp32} mov       word ptr [data_bytes + 0x25dc04], ax");          // 0x0075c750    66a3043cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbfc], ecx");        // 0x0075c756    890dfc3bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbc0], edx");        // 0x0075c75c    8915c03bc200
    asm("or                 esi, 0xffffffff");                               // 0x0075c762    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbd0], edx");        // 0x0075c765    8915d03bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbe0], edx");        // 0x0075c76b    8915e03bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbf0], edx");        // 0x0075c771    8915f03bc200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e3e4]");        // 0x0075c777    8b15e443c200
    asm("xor.s              eax, eax");                                      // 0x0075c77d    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbd4], esi");        // 0x0075c77f    8935d43bc200
    asm("xor.s              esi, esi");                                      // 0x0075c785    33f6
    asm("push               edi");                                           // 0x0075c787    57
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc00], edx");        // 0x0075c788    8915003cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbe4], esi");        // 0x0075c78e    8935e43bc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dbf4], esi");        // 0x0075c794    8935f43bc200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c79a    b90c000000
    asm("mov                edi, 0x00c23c06");                               // 0x0075c79f    bf063cc200
    asm("rep stosd");                                                        // 0x0075c7a4    f3ab
    asm("stosw");                                                            // 0x0075c7a6    66ab
    asm("xor.s              ecx, ecx");                                      // 0x0075c7a8    33c9
    asm("mov                eax, 0x0075f1f0");                               // 0x0075c7aa    b8f0f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc38], eax");        // 0x0075c7af    a3383cc200
    asm("xor.s              eax, eax");                                      // 0x0075c7b4    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc48], eax");        // 0x0075c7b6    a3483cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc3c], ecx");        // 0x0075c7bb    890d3c3cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc4c], ecx");        // 0x0075c7c1    890d4c3cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc5c], ecx");        // 0x0075c7c7    890d5c3cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc6c], ecx");        // 0x0075c7cd    890d6c3cc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e3cc]");        // 0x0075c7d3    8b0dcc43c200
    asm("mov                eax, 0x0075e8b0");                               // 0x0075c7d9    b8b0e87500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc58], eax");        // 0x0075c7de    a3583cc200
    asm("xor.s              edx, edx");                                      // 0x0075c7e3    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc44], esi");        // 0x0075c7e5    8935443cc200
    asm("mov                eax, 0x0075e370");                               // 0x0075c7eb    b870e37500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc68], eax");        // 0x0075c7f0    a3683cc200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e3d4]");        // 0x0075c7f5    a1d443c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc78], ecx");        // 0x0075c7fa    890d783cc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e3d8]");        // 0x0075c800    8b0dd843c200
    asm("or                 esi, 0xffffffff");                               // 0x0075c806    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc40], edx");        // 0x0075c809    8915403cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc50], edx");        // 0x0075c80f    8915503cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc60], edx");        // 0x0075c815    8915603cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc70], edx");        // 0x0075c81b    8915703cc200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e3d0]");        // 0x0075c821    8b15d043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc54], esi");        // 0x0075c827    8935543cc200
    asm("xor.s              esi, esi");                                      // 0x0075c82d    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc80], eax");        // 0x0075c82f    a3803cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc84], ecx");        // 0x0075c834    890d843cc200
    asm("xor.s              eax, eax");                                      // 0x0075c83a    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc7c], edx");        // 0x0075c83c    89157c3cc200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c842    b90c000000
    asm("mov                edi, 0x00c23c88");                               // 0x0075c847    bf883cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc64], esi");        // 0x0075c84c    8935643cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dc74], esi");        // 0x0075c852    8935743cc200
    asm("rep stosd");                                                        // 0x0075c858    f3ab
    asm("xor.s              ecx, ecx");                                      // 0x0075c85a    33c9
    asm("mov                eax, 0x0075f1f0");                               // 0x0075c85c    b8f0f17500
    asm("xor.s              edx, edx");                                      // 0x0075c861    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcb8], eax");        // 0x0075c863    a3b83cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcbc], ecx");        // 0x0075c868    890dbc3cc200
    asm("xor.s              eax, eax");                                      // 0x0075c86e    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcc8], eax");        // 0x0075c870    a3c83cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcc0], edx");        // 0x0075c875    8915c03cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcc4], esi");        // 0x0075c87b    8935c43cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dccc], ecx");        // 0x0075c881    890dcc3cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcd0], edx");        // 0x0075c887    8915d03cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcdc], ecx");        // 0x0075c88d    890ddc3cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dce0], edx");        // 0x0075c893    8915e03cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcec], ecx");        // 0x0075c899    890dec3cc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e3c4]");        // 0x0075c89f    8b0dc443c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcf0], edx");        // 0x0075c8a5    8915f03cc200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e3bc]");        // 0x0075c8ab    8b15bc43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcf8], edx");        // 0x0075c8b1    8915f83cc200
    asm("{disp32} mov       dl, byte ptr [data_bytes + 0x25e3c8]");          // 0x0075c8b7    8a15c843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd00], ecx");        // 0x0075c8bd    890d003dc200
    asm("mov                eax, 0x0075e8d0");                               // 0x0075c8c3    b8d0e87500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcd8], eax");        // 0x0075c8c8    a3d83cc200
    asm("or                 esi, 0xffffffff");                               // 0x0075c8cd    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcd4], esi");        // 0x0075c8d0    8935d43cc200
    asm("mov                eax, 0x0075e380");                               // 0x0075c8d6    b880e37500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dce8], eax");        // 0x0075c8db    a3e83cc200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e3c0]");        // 0x0075c8e0    a1c043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcfc], eax");        // 0x0075c8e5    a3fc3cc200
    asm("xor.s              eax, eax");                                      // 0x0075c8ea    33c0
    asm("{disp32} mov       byte ptr [data_bytes + 0x25dd04], dl");          // 0x0075c8ec    8815043dc200
    asm("xor.s              esi, esi");                                      // 0x0075c8f2    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dce4], esi");        // 0x0075c8f4    8935e43cc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dcf4], esi");        // 0x0075c8fa    8935f43cc200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c900    b90c000000
    asm("mov                edi, 0x00c23d05");                               // 0x0075c905    bf053dc200
    asm("rep stosd");                                                        // 0x0075c90a    f3ab
    asm("stosw");                                                            // 0x0075c90c    66ab
    asm("stosb");                                                            // 0x0075c90e    aa
    asm("mov                eax, 0x0075f0d0");                               // 0x0075c90f    b8d0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd38], eax");        // 0x0075c914    a3383dc200
    asm("xor.s              eax, eax");                                      // 0x0075c919    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd48], eax");        // 0x0075c91b    a3483dc200
    asm("xor.s              ecx, ecx");                                      // 0x0075c920    33c9
    asm("mov                eax, 0x0075e9d0");                               // 0x0075c922    b8d0e97500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd58], eax");        // 0x0075c927    a3583dc200
    asm("xor.s              edx, edx");                                      // 0x0075c92c    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd44], esi");        // 0x0075c92e    8935443dc200
    asm("mov                eax, 0x0075e730");                               // 0x0075c934    b830e77500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd68], eax");        // 0x0075c939    a3683dc200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e3ac]");        // 0x0075c93e    a1ac43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd78], eax");        // 0x0075c943    a3783dc200
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x25e3b8]");          // 0x0075c948    a0b843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd3c], ecx");        // 0x0075c94d    890d3c3dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd4c], ecx");        // 0x0075c953    890d4c3dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd5c], ecx");        // 0x0075c959    890d5c3dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd6c], ecx");        // 0x0075c95f    890d6c3dc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e3b0]");        // 0x0075c965    8b0db043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd40], edx");        // 0x0075c96b    8915403dc200
    asm("or                 esi, 0xffffffff");                               // 0x0075c971    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd50], edx");        // 0x0075c974    8915503dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd54], esi");        // 0x0075c97a    8935543dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd60], edx");        // 0x0075c980    8915603dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd70], edx");        // 0x0075c986    8915703dc200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e3b4]");        // 0x0075c98c    8b15b443c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25dd84], al");          // 0x0075c992    a2843dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd7c], ecx");        // 0x0075c997    890d7c3dc200
    asm("xor.s              esi, esi");                                      // 0x0075c99d    33f6
    asm("xor.s              eax, eax");                                      // 0x0075c99f    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd64], esi");        // 0x0075c9a1    8935643dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd74], esi");        // 0x0075c9a7    8935743dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dd80], edx");        // 0x0075c9ad    8915803dc200
    asm("mov                ecx, 0x0000000c");                               // 0x0075c9b3    b90c000000
    asm("mov                edi, 0x00c23d85");                               // 0x0075c9b8    bf853dc200
    asm("rep stosd");                                                        // 0x0075c9bd    f3ab
    asm("stosw");                                                            // 0x0075c9bf    66ab
    asm("stosb");                                                            // 0x0075c9c1    aa
    asm("mov                eax, 0x0075f0a0");                               // 0x0075c9c2    b8a0f07500
    asm("xor.s              ecx, ecx");                                      // 0x0075c9c7    33c9
    asm("xor.s              edx, edx");                                      // 0x0075c9c9    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddb8], eax");        // 0x0075c9cb    a3b83dc200
    asm("xor.s              eax, eax");                                      // 0x0075c9d0    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddc4], esi");        // 0x0075c9d2    8935c43dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddbc], ecx");        // 0x0075c9d8    890dbc3dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddc0], edx");        // 0x0075c9de    8915c03dc200
    asm("or                 esi, 0xffffffff");                               // 0x0075c9e4    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddc8], eax");        // 0x0075c9e7    a3c83dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddcc], ecx");        // 0x0075c9ec    890dcc3dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dddc], ecx");        // 0x0075c9f2    890ddc3dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddec], ecx");        // 0x0075c9f8    890dec3dc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e398]");        // 0x0075c9fe    8b0d9843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddf8], ecx");        // 0x0075ca04    890df83dc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e3a4]");        // 0x0075ca0a    8b0da443c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddd0], edx");        // 0x0075ca10    8915d03dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dde0], edx");        // 0x0075ca16    8915e03dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddf0], edx");        // 0x0075ca1c    8915f03dc200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e39c]");        // 0x0075ca22    8b159c43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de04], ecx");        // 0x0075ca28    890d043ec200
    asm("mov                eax, 0x0075e970");                               // 0x0075ca2e    b870e97500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddd8], eax");        // 0x0075ca33    a3d83dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddfc], edx");        // 0x0075ca38    8915fc3dc200
    asm("{disp32} mov       dl, byte ptr [data_bytes + 0x25e3a8]");          // 0x0075ca3e    8a15a843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddd4], esi");        // 0x0075ca44    8935d43dc200
    asm("mov                eax, 0x0075e560");                               // 0x0075ca4a    b860e57500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dde8], eax");        // 0x0075ca4f    a3e83dc200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e3a0]");        // 0x0075ca54    a1a043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de00], eax");        // 0x0075ca59    a3003ec200
    asm("xor.s              eax, eax");                                      // 0x0075ca5e    33c0
    asm("xor.s              esi, esi");                                      // 0x0075ca60    33f6
    asm("{disp32} mov       byte ptr [data_bytes + 0x25de08], dl");          // 0x0075ca62    8815083ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dde4], esi");        // 0x0075ca68    8935e43dc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ddf4], esi");        // 0x0075ca6e    8935f43dc200
    asm("mov                ecx, 0x0000000b");                               // 0x0075ca74    b90b000000
    asm("mov                edi, 0x00c23e09");                               // 0x0075ca79    bf093ec200
    asm("rep stosd");                                                        // 0x0075ca7e    f3ab
    asm("stosw");                                                            // 0x0075ca80    66ab
    asm("stosb");                                                            // 0x0075ca82    aa
    asm("mov                eax, 0x0075f0a0");                               // 0x0075ca83    b8a0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de38], eax");        // 0x0075ca88    a3383ec200
    asm("xor.s              eax, eax");                                      // 0x0075ca8d    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de48], eax");        // 0x0075ca8f    a3483ec200
    asm("xor.s              ecx, ecx");                                      // 0x0075ca94    33c9
    asm("mov                eax, 0x0075e990");                               // 0x0075ca96    b890e97500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de58], eax");        // 0x0075ca9b    a3583ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de3c], ecx");        // 0x0075caa0    890d3c3ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de4c], ecx");        // 0x0075caa6    890d4c3ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de5c], ecx");        // 0x0075caac    890d5c3ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de6c], ecx");        // 0x0075cab2    890d6c3ec200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e38c]");        // 0x0075cab8    8b0d8c43c200
    asm("mov                eax, 0x0075e5a0");                               // 0x0075cabe    b8a0e57500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de68], eax");        // 0x0075cac3    a3683ec200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e388]");        // 0x0075cac8    a18843c200
    asm("xor.s              edx, edx");                                      // 0x0075cacd    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de78], eax");        // 0x0075cacf    a3783ec200
    asm("{disp32} mov       ax, word ptr [data_bytes + 0x25e394]");          // 0x0075cad4    66a19443c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de44], esi");        // 0x0075cada    8935443ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de7c], ecx");        // 0x0075cae0    890d7c3ec200
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x25e396]");          // 0x0075cae6    8a0d9643c200
    asm("or                 esi, 0xffffffff");                               // 0x0075caec    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de40], edx");        // 0x0075caef    8915403ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de50], edx");        // 0x0075caf5    8915503ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de60], edx");        // 0x0075cafb    8915603ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de70], edx");        // 0x0075cb01    8915703ec200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e390]");        // 0x0075cb07    8b159043c200
    asm("{disp32} mov       word ptr [data_bytes + 0x25de84], ax");          // 0x0075cb0d    66a3843ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de54], esi");        // 0x0075cb13    8935543ec200
    asm("xor.s              esi, esi");                                      // 0x0075cb19    33f6
    asm("{disp32} mov       byte ptr [data_bytes + 0x25de86], cl");          // 0x0075cb1b    880d863ec200
    asm("xor.s              eax, eax");                                      // 0x0075cb21    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de80], edx");        // 0x0075cb23    8915803ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de64], esi");        // 0x0075cb29    8935643ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25de74], esi");        // 0x0075cb2f    8935743ec200
    asm("mov                ecx, 0x0000000c");                               // 0x0075cb35    b90c000000
    asm("mov                edi, 0x00c23e87");                               // 0x0075cb3a    bf873ec200
    asm("rep stosd");                                                        // 0x0075cb3f    f3ab
    asm("stosb");                                                            // 0x0075cb41    aa
    asm("mov                eax, 0x0075f100");                               // 0x0075cb42    b800f17500
    asm("xor.s              ecx, ecx");                                      // 0x0075cb47    33c9
    asm("xor.s              edx, edx");                                      // 0x0075cb49    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25deb8], eax");        // 0x0075cb4b    a3b83ec200
    asm("mov                eax, 0x0075f190");                               // 0x0075cb50    b890f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25debc], ecx");        // 0x0075cb55    890dbc3ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dec0], edx");        // 0x0075cb5b    8915c03ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dec4], esi");        // 0x0075cb61    8935c43ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dec8], eax");        // 0x0075cb67    a3c83ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25decc], ecx");        // 0x0075cb6c    890dcc3ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ded0], edx");        // 0x0075cb72    8915d03ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ded4], esi");        // 0x0075cb78    8935d43ec200
    asm("mov                eax, 0x0075e9a0");                               // 0x0075cb7e    b8a0e97500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25ded8], eax");        // 0x0075cb83    a3d83ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dee0], edx");        // 0x0075cb88    8915e03ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25def0], edx");        // 0x0075cb8e    8915f03ec200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e378]");        // 0x0075cb94    8b157843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dedc], ecx");        // 0x0075cb9a    890ddc3ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25deec], ecx");        // 0x0075cba0    890dec3ec200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e380]");        // 0x0075cba6    8b0d8043c200
    asm("mov                eax, 0x0075e690");                               // 0x0075cbac    b890e67500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dee8], eax");        // 0x0075cbb1    a3e83ec200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e37c]");        // 0x0075cbb6    a17c43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25defc], eax");        // 0x0075cbbb    a3fc3ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25def8], edx");        // 0x0075cbc0    8915f83ec200
    asm("{disp32} mov       dl, byte ptr [data_bytes + 0x25e384]");          // 0x0075cbc6    8a158443c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df00], ecx");        // 0x0075cbcc    890d003fc200
    asm("xor.s              eax, eax");                                      // 0x0075cbd2    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dee4], esi");        // 0x0075cbd4    8935e43ec200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25def4], esi");        // 0x0075cbda    8935f43ec200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25df04], dl");          // 0x0075cbe0    8815043fc200
    asm("mov                ecx, 0x0000000c");                               // 0x0075cbe6    b90c000000
    asm("mov                edi, 0x00c23f05");                               // 0x0075cbeb    bf053fc200
    asm("rep stosd");                                                        // 0x0075cbf0    f3ab
    asm("stosw");                                                            // 0x0075cbf2    66ab
    asm("stosb");                                                            // 0x0075cbf4    aa
    asm("mov                eax, 0x0075f230");                               // 0x0075cbf5    b830f27500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df38], eax");        // 0x0075cbfa    a3383fc200
    asm("xor.s              eax, eax");                                      // 0x0075cbff    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df44], esi");        // 0x0075cc01    8935443fc200
    asm("or                 esi, 0xffffffff");                               // 0x0075cc07    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df48], eax");        // 0x0075cc0a    a3483fc200
    asm("mov                eax, 0x0075e9b0");                               // 0x0075cc0f    b8b0e97500
    asm("xor.s              ecx, ecx");                                      // 0x0075cc14    33c9
    asm("xor.s              edx, edx");                                      // 0x0075cc16    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df54], esi");        // 0x0075cc18    8935543fc200
    asm("xor.s              esi, esi");                                      // 0x0075cc1e    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df58], eax");        // 0x0075cc20    a3583fc200
    asm("mov                eax, 0x0075e6e0");                               // 0x0075cc25    b8e0e67500
    asm("pop                edi");                                           // 0x0075cc2a    5f
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df64], esi");        // 0x0075cc2b    8935643fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df74], esi");        // 0x0075cc31    8935743fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df3c], ecx");        // 0x0075cc37    890d3c3fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df40], edx");        // 0x0075cc3d    8915403fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df4c], ecx");        // 0x0075cc43    890d4c3fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df50], edx");        // 0x0075cc49    8915503fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df5c], ecx");        // 0x0075cc4f    890d5c3fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df60], edx");        // 0x0075cc55    8915603fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df68], eax");        // 0x0075cc5b    a3683fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df6c], ecx");        // 0x0075cc60    890d6c3fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25df70], edx");        // 0x0075cc66    8915703fc200
    asm("pop                esi");                                           // 0x0075cc6c    5e
    asm("ret");                                                              // 0x0075cc6d    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x0075cc70(void)
{
    asm("{disp32} jmp       _FUN_0075cc80__8VillagerFv");                    // 0x0075cc70    e90b000000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __cdecl FUN_0075cc80__8VillagerFv(void)
{
    asm("xor.s              ecx, ecx");                                      // 0x0075cc80    33c9
    asm("mov                eax, 0x0075f1f0");                               // 0x0075cc82    b8f0f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfb8], eax");        // 0x0075cc87    a3b83fc200
    asm("mov                eax, 0x0075f130");                               // 0x0075cc8c    b830f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfc8], eax");        // 0x0075cc91    a3c83fc200
    asm("xor.s              edx, edx");                                      // 0x0075cc96    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfbc], ecx");        // 0x0075cc98    890dbc3fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfcc], ecx");        // 0x0075cc9e    890dcc3fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfdc], ecx");        // 0x0075cca4    890ddc3fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfec], ecx");        // 0x0075ccaa    890dec3fc200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e434]");        // 0x0075ccb0    8b0d3444c200
    asm("mov                eax, 0x0075efc0");                               // 0x0075ccb6    b8c0ef7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfd8], eax");        // 0x0075ccbb    a3d83fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfc0], edx");        // 0x0075ccc0    8915c03fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfd0], edx");        // 0x0075ccc6    8915d03fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfe0], edx");        // 0x0075cccc    8915e03fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dff0], edx");        // 0x0075ccd2    8915f03fc200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e438]");        // 0x0075ccd8    8b153844c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dffc], ecx");        // 0x0075ccde    890dfc3fc200
    asm("mov                eax, 0x0075eb70");                               // 0x0075cce4    b870eb7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfe8], eax");        // 0x0075cce9    a3e83fc200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e430]");        // 0x0075ccee    a13044c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dff8], eax");        // 0x0075ccf3    a3f83fc200
    asm("xor.s              eax, eax");                                      // 0x0075ccf8    33c0
    asm("push               esi");                                           // 0x0075ccfa    56
    asm("xor.s              esi, esi");                                      // 0x0075ccfb    33f6
    asm("push               edi");                                           // 0x0075ccfd    57
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e000], edx");        // 0x0075ccfe    89150040c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfc4], esi");        // 0x0075cd04    8935c43fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfd4], esi");        // 0x0075cd0a    8935d43fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dfe4], esi");        // 0x0075cd10    8935e43fc200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25dff4], esi");        // 0x0075cd16    8935f43fc200
    asm("mov                ecx, 0x0000000d");                               // 0x0075cd1c    b90d000000
    asm("mov                edi, 0x00c24004");                               // 0x0075cd21    bf0440c200
    asm("rep stosd");                                                        // 0x0075cd26    f3ab
    asm("mov                eax, 0x0075f1f0");                               // 0x0075cd28    b8f0f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e038], eax");        // 0x0075cd2d    a33840c200
    asm("mov                eax, 0x0075f130");                               // 0x0075cd32    b830f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e048], eax");        // 0x0075cd37    a34840c200
    asm("xor.s              ecx, ecx");                                      // 0x0075cd3c    33c9
    asm("mov                eax, 0x0075efe0");                               // 0x0075cd3e    b8e0ef7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e058], eax");        // 0x0075cd43    a35840c200
    asm("xor.s              edx, edx");                                      // 0x0075cd48    33d2
    asm("mov                eax, 0x0075ec50");                               // 0x0075cd4a    b850ec7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e068], eax");        // 0x0075cd4f    a36840c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e424]");        // 0x0075cd54    a12444c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e078], eax");        // 0x0075cd59    a37840c200
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x25e42e]");          // 0x0075cd5e    a02e44c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e03c], ecx");        // 0x0075cd63    890d3c40c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e04c], ecx");        // 0x0075cd69    890d4c40c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e05c], ecx");        // 0x0075cd6f    890d5c40c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e06c], ecx");        // 0x0075cd75    890d6c40c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e428]");        // 0x0075cd7b    8b0d2844c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e040], edx");        // 0x0075cd81    89154040c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e050], edx");        // 0x0075cd87    89155040c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e060], edx");        // 0x0075cd8d    89156040c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e070], edx");        // 0x0075cd93    89157040c200
    asm("{disp32} mov       dx, word ptr [data_bytes + 0x25e42c]");          // 0x0075cd99    668b152c44c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25e082], al");          // 0x0075cda0    a28240c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e07c], ecx");        // 0x0075cda5    890d7c40c200
    asm("xor.s              eax, eax");                                      // 0x0075cdab    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e044], esi");        // 0x0075cdad    89354440c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e054], esi");        // 0x0075cdb3    89355440c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e064], esi");        // 0x0075cdb9    89356440c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e074], esi");        // 0x0075cdbf    89357440c200
    asm("{disp32} mov       word ptr [data_bytes + 0x25e080], dx");          // 0x0075cdc5    6689158040c200
    asm("mov                ecx, 0x0000000d");                               // 0x0075cdcc    b90d000000
    asm("mov                edi, 0x00c24083");                               // 0x0075cdd1    bf8340c200
    asm("rep stosd");                                                        // 0x0075cdd6    f3ab
    asm("stosb");                                                            // 0x0075cdd8    aa
    asm("mov                eax, 0x0075f130");                               // 0x0075cdd9    b830f17500
    asm("xor.s              ecx, ecx");                                      // 0x0075cdde    33c9
    asm("xor.s              edx, edx");                                      // 0x0075cde0    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0b8], eax");        // 0x0075cde2    a3b840c200
    asm("xor.s              eax, eax");                                      // 0x0075cde7    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0c4], esi");        // 0x0075cde9    8935c440c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0bc], ecx");        // 0x0075cdef    890dbc40c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0c0], edx");        // 0x0075cdf5    8915c040c200
    asm("or                 esi, 0xffffffff");                               // 0x0075cdfb    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0c8], eax");        // 0x0075cdfe    a3c840c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0cc], ecx");        // 0x0075ce03    890dcc40c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0dc], ecx");        // 0x0075ce09    890ddc40c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0ec], ecx");        // 0x0075ce0f    890dec40c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e418]");        // 0x0075ce15    8b0d1844c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0f8], ecx");        // 0x0075ce1b    890df840c200
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x25e422]");          // 0x0075ce21    8a0d2244c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0d0], edx");        // 0x0075ce27    8915d040c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0d4], esi");        // 0x0075ce2d    8935d440c200
    asm("mov                eax, 0x0075f000");                               // 0x0075ce33    b800f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0d8], eax");        // 0x0075ce38    a3d840c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0e0], edx");        // 0x0075ce3d    8915e040c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0f0], edx");        // 0x0075ce43    8915f040c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e41c]");        // 0x0075ce49    8b151c44c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25e102], cl");          // 0x0075ce4f    880d0241c200
    asm("mov                eax, 0x0075ec60");                               // 0x0075ce55    b860ec7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0e8], eax");        // 0x0075ce5a    a3e840c200
    asm("{disp32} mov       ax, word ptr [data_bytes + 0x25e420]");          // 0x0075ce5f    66a12044c200
    asm("{disp32} mov       word ptr [data_bytes + 0x25e100], ax");          // 0x0075ce65    66a30041c200
    asm("xor.s              eax, eax");                                      // 0x0075ce6b    33c0
    asm("xor.s              esi, esi");                                      // 0x0075ce6d    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0e4], esi");        // 0x0075ce6f    8935e440c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0f4], esi");        // 0x0075ce75    8935f440c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e0fc], edx");        // 0x0075ce7b    8915fc40c200
    asm("mov                ecx, 0x0000000d");                               // 0x0075ce81    b90d000000
    asm("mov                edi, 0x00c24103");                               // 0x0075ce86    bf0341c200
    asm("rep stosd");                                                        // 0x0075ce8b    f3ab
    asm("stosb");                                                            // 0x0075ce8d    aa
    asm("mov                eax, 0x0075f1f0");                               // 0x0075ce8e    b8f0f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e138], eax");        // 0x0075ce93    a33841c200
    asm("xor.s              eax, eax");                                      // 0x0075ce98    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e148], eax");        // 0x0075ce9a    a34841c200
    asm("xor.s              ecx, ecx");                                      // 0x0075ce9f    33c9
    asm("xor.s              edx, edx");                                      // 0x0075cea1    33d2
    asm("mov                eax, 0x0075f060");                               // 0x0075cea3    b860f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e158], eax");        // 0x0075cea8    a35841c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e144], esi");        // 0x0075cead    89354441c200
    asm("mov                eax, 0x0075ee10");                               // 0x0075ceb3    b810ee7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e168], eax");        // 0x0075ceb8    a36841c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e40c]");        // 0x0075cebd    a10c44c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e17c], eax");        // 0x0075cec2    a37c41c200
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x25e416]");          // 0x0075cec7    a01644c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e140], edx");        // 0x0075cecc    89154041c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e150], edx");        // 0x0075ced2    89155041c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e160], edx");        // 0x0075ced8    89156041c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e170], edx");        // 0x0075cede    89157041c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e408]");        // 0x0075cee4    8b150844c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e13c], ecx");        // 0x0075ceea    890d3c41c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e14c], ecx");        // 0x0075cef0    890d4c41c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e15c], ecx");        // 0x0075cef6    890d5c41c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e16c], ecx");        // 0x0075cefc    890d6c41c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e410]");        // 0x0075cf02    8b0d1044c200
    asm("or                 esi, 0xffffffff");                               // 0x0075cf08    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e154], esi");        // 0x0075cf0b    89355441c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25e186], al");          // 0x0075cf11    a28641c200
    asm("xor.s              esi, esi");                                      // 0x0075cf16    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e178], edx");        // 0x0075cf18    89157841c200
    asm("{disp32} mov       dx, word ptr [data_bytes + 0x25e414]");          // 0x0075cf1e    668b151444c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e180], ecx");        // 0x0075cf25    890d8041c200
    asm("xor.s              eax, eax");                                      // 0x0075cf2b    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e164], esi");        // 0x0075cf2d    89356441c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e174], esi");        // 0x0075cf33    89357441c200
    asm("{disp32} mov       word ptr [data_bytes + 0x25e184], dx");          // 0x0075cf39    6689158441c200
    asm("mov                ecx, 0x0000000c");                               // 0x0075cf40    b90c000000
    asm("mov                edi, 0x00c24187");                               // 0x0075cf45    bf8741c200
    asm("rep stosd");                                                        // 0x0075cf4a    f3ab
    asm("stosb");                                                            // 0x0075cf4c    aa
    asm("mov                eax, 0x0075f0a0");                               // 0x0075cf4d    b8a0f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1b8], eax");        // 0x0075cf52    a3b841c200
    asm("xor.s              eax, eax");                                      // 0x0075cf57    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1c4], esi");        // 0x0075cf59    8935c441c200
    asm("xor.s              ecx, ecx");                                      // 0x0075cf5f    33c9
    asm("xor.s              edx, edx");                                      // 0x0075cf61    33d2
    asm("or                 esi, 0xffffffff");                               // 0x0075cf63    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1c8], eax");        // 0x0075cf66    a3c841c200
    asm("mov                eax, 0x0075f020");                               // 0x0075cf6b    b820f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1d4], esi");        // 0x0075cf70    8935d441c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1bc], ecx");        // 0x0075cf76    890dbc41c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1c0], edx");        // 0x0075cf7c    8915c041c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1cc], ecx");        // 0x0075cf82    890dcc41c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1d0], edx");        // 0x0075cf88    8915d041c200
    asm("xor.s              esi, esi");                                      // 0x0075cf8e    33f6
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1d8], eax");        // 0x0075cf90    a3d841c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1dc], ecx");        // 0x0075cf95    890ddc41c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1ec], ecx");        // 0x0075cf9b    890dec41c200
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x25e3f8]");        // 0x0075cfa1    8b0df843c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1f8], ecx");        // 0x0075cfa7    890df841c200
    asm("{disp32} mov       cl, byte ptr [data_bytes + 0x25e404]");          // 0x0075cfad    8a0d0444c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1e0], edx");        // 0x0075cfb3    8915e041c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1f0], edx");        // 0x0075cfb9    8915f041c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e3fc]");        // 0x0075cfbf    8b15fc43c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25e204], cl");          // 0x0075cfc5    880d0442c200
    asm("mov                eax, 0x0075ecd0");                               // 0x0075cfcb    b8d0ec7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1e8], eax");        // 0x0075cfd0    a3e841c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e400]");        // 0x0075cfd5    a10044c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e200], eax");        // 0x0075cfda    a30042c200
    asm("xor.s              eax, eax");                                      // 0x0075cfdf    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1fc], edx");        // 0x0075cfe1    8915fc41c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1e4], esi");        // 0x0075cfe7    8935e441c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e1f4], esi");        // 0x0075cfed    8935f441c200
    asm("mov                ecx, 0x0000000c");                               // 0x0075cff3    b90c000000
    asm("mov                edi, 0x00c24205");                               // 0x0075cff8    bf0542c200
    asm("rep stosd");                                                        // 0x0075cffd    f3ab
    asm("stosw");                                                            // 0x0075cfff    66ab
    asm("stosb");                                                            // 0x0075d001    aa
    asm("mov                eax, 0x0075f190");                               // 0x0075d002    b890f17500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e238], eax");        // 0x0075d007    a33842c200
    asm("xor.s              eax, eax");                                      // 0x0075d00c    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e248], eax");        // 0x0075d00e    a34842c200
    asm("xor.s              ecx, ecx");                                      // 0x0075d013    33c9
    asm("xor.s              edx, edx");                                      // 0x0075d015    33d2
    asm("mov                eax, 0x0075f030");                               // 0x0075d017    b830f07500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e258], eax");        // 0x0075d01c    a35842c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e240], edx");        // 0x0075d021    89154042c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e250], edx");        // 0x0075d027    89155042c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e260], edx");        // 0x0075d02d    89156042c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e270], edx");        // 0x0075d033    89157042c200
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x25e3ec]");        // 0x0075d039    8b15ec43c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e23c], ecx");        // 0x0075d03f    890d3c42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e244], esi");        // 0x0075d045    89354442c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e24c], ecx");        // 0x0075d04b    890d4c42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e25c], ecx");        // 0x0075d051    890d5c42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e26c], ecx");        // 0x0075d057    890d6c42c200
    asm("{disp32} mov       cx, word ptr [data_bytes + 0x25e3f4]");          // 0x0075d05d    668b0df443c200
    asm("mov                eax, 0x0075edb0");                               // 0x0075d064    b8b0ed7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e268], eax");        // 0x0075d069    a36842c200
    asm("{disp32} mov       eax, dword ptr [data_bytes + 0x25e3f0]");        // 0x0075d06e    a1f043c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e27c], eax");        // 0x0075d073    a37c42c200
    asm("or                 esi, 0xffffffff");                               // 0x0075d078    83ceff
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e278], edx");        // 0x0075d07b    89157842c200
    asm("{disp32} mov       dl, byte ptr [data_bytes + 0x25e3f6]");          // 0x0075d081    8a15f643c200
    asm("xor.s              eax, eax");                                      // 0x0075d087    33c0
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e254], esi");        // 0x0075d089    89355442c200
    asm("xor.s              esi, esi");                                      // 0x0075d08f    33f6
    asm("{disp32} mov       word ptr [data_bytes + 0x25e280], cx");          // 0x0075d091    66890d8042c200
    asm("{disp32} mov       byte ptr [data_bytes + 0x25e282], dl");          // 0x0075d098    88158242c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e264], esi");        // 0x0075d09e    89356442c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e274], esi");        // 0x0075d0a4    89357442c200
    asm("mov                ecx, 0x0000000d");                               // 0x0075d0aa    b90d000000
    asm("mov                edi, 0x00c24283");                               // 0x0075d0af    bf8342c200
    asm("rep stosd");                                                        // 0x0075d0b4    f3ab
    asm("stosb");                                                            // 0x0075d0b6    aa
    asm("mov                eax, 0x0075f230");                               // 0x0075d0b7    b830f27500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2b8], eax");        // 0x0075d0bc    a3b842c200
    asm("mov                eax, 0x0075f130");                               // 0x0075d0c1    b830f17500
    asm("xor.s              ecx, ecx");                                      // 0x0075d0c6    33c9
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2c8], eax");        // 0x0075d0c8    a3c842c200
    asm("mov                eax, 0x0075f040");                               // 0x0075d0cd    b840f07500
    asm("xor.s              edx, edx");                                      // 0x0075d0d2    33d2
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2d8], eax");        // 0x0075d0d4    a3d842c200
    asm("mov                eax, 0x0075ee00");                               // 0x0075d0d9    b800ee7500
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2bc], ecx");        // 0x0075d0de    890dbc42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2c0], edx");        // 0x0075d0e4    8915c042c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2c4], esi");        // 0x0075d0ea    8935c442c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2cc], ecx");        // 0x0075d0f0    890dcc42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2d0], edx");        // 0x0075d0f6    8915d042c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2d4], esi");        // 0x0075d0fc    8935d442c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2dc], ecx");        // 0x0075d102    890ddc42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2e0], edx");        // 0x0075d108    8915e042c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2e4], esi");        // 0x0075d10e    8935e442c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2e8], eax");        // 0x0075d114    a3e842c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2ec], ecx");        // 0x0075d119    890dec42c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2f0], edx");        // 0x0075d11f    8915f042c200
    asm("{disp32} mov       dword ptr [data_bytes + 0x25e2f4], esi");        // 0x0075d125    8935f442c200
    asm("pop                edi");                                           // 0x0075d12b    5f
    asm("pop                esi");                                           // 0x0075d12c    5e
    asm("ret");                                                              // 0x0075d12d    c3
    __builtin_unreachable();
}

void __fastcall AssignFootballSubState__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075d130    56
    asm("mov.s              esi, ecx");                                      // 0x0075d131    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x0075d133    8b06
    asm("call               dword ptr [eax + 0xb04]");                       // 0x0075d135    ff90040b0000
    asm("and                eax, 0x000000ff");                               // 0x0075d13b    25ff000000
    asm("sub                eax, 0x49");                                     // 0x0075d140    83e849
    asm("{disp8} je         _jmp_addr_0x0075d15d");                          // 0x0075d143    7418
    asm("dec                eax");                                           // 0x0075d145    48
    asm("{disp8} je         _jmp_addr_0x0075d154");                          // 0x0075d146    740c
    asm("dec                eax");                                           // 0x0075d148    48
    asm("{disp8} jne        _jmp_addr_0x0075d164");                          // 0x0075d149    7519
    asm("mov.s              ecx, esi");                                      // 0x0075d14b    8bce
    asm("call               ?AssignFootballDefenderSubState@Villager@@QAEXXZ");                          // 0x0075d14d    e85e0f0000
    asm("pop                esi");                                           // 0x0075d152    5e
    asm("ret");                                                              // 0x0075d153    c3
    asm("_jmp_addr_0x0075d154:");
    asm("mov.s              ecx, esi");                                      // 0x0075d154    8bce
    asm("call               ?AssignFootballGoalieSubState@Villager@@QAEXXZ");// 0x0075d156    e855190000
    asm("pop                esi");                                           // 0x0075d15b    5e
    asm("ret");                                                              // 0x0075d15c    c3
    asm("_jmp_addr_0x0075d15d:");
    asm("mov.s              ecx, esi");                                      // 0x0075d15d    8bce
    asm("call               ?AssignFootballAttackerSubState@Villager@@QAEXXZ");                          // 0x0075d15f    e80c000000
    asm("_jmp_addr_0x0075d164:");
    asm("pop                esi");                                           // 0x0075d164    5e
    asm("ret");                                                              // 0x0075d165    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall AssignFootballAttackerSubState__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x0075d170    83ec08
    asm("push               edi");                                           // 0x0075d173    57
    asm("mov.s              edi, ecx");                                      // 0x0075d174    8bf9
    asm("{disp32} mov       al, byte ptr [edi + 0x00000118]");               // 0x0075d176    8a8718010000
    asm("test               al, al");                                        // 0x0075d17c    84c0
    asm("{disp32} je        _jmp_addr_0x0075d21f");                          // 0x0075d17e    0f849b000000
    asm("push               ebx");                                           // 0x0075d184    53
    asm("push               ebp");                                           // 0x0075d185    55
    asm("push               esi");                                           // 0x0075d186    56
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000008");            // 0x0075d187    c744241408000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0xb8d1b717");            // 0x0075d18f    c744241017b7d1b8
    asm("xor.s              ebx, ebx");                                      // 0x0075d197    33db
    asm("mov                esi, 0x00c237bc");                               // 0x0075d199    bebc37c200
    asm("_jmp_addr_0x0075d19e:");
    asm("mov.s              ecx, edi");                                      // 0x0075d19e    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075d1a0    e8fb4cffff
    asm("mov                ecx, dword ptr [esi]");                          // 0x0075d1a5    8b0e
    asm("push               eax");                                           // 0x0075d1a7    50
    asm("add.s              ecx, edi");                                      // 0x0075d1a8    03cf
    asm("call               dword ptr [esi - 4]");                           // 0x0075d1aa    ff56fc
    asm("mov.s              ebp, eax");                                      // 0x0075d1ad    8be8
    asm("{disp8} mov        eax, dword ptr [esi + 0x0c]");                   // 0x0075d1af    8b460c
    asm("test               eax, eax");                                      // 0x0075d1b2    85c0
    asm("{disp8} je         _jmp_addr_0x0075d1ca");                          // 0x0075d1b4    7414
    asm("mov.s              ecx, edi");                                      // 0x0075d1b6    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075d1b8    e8e34cffff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x10]");                   // 0x0075d1bd    8b4e10
    asm("push               eax");                                           // 0x0075d1c0    50
    asm("add.s              ecx, edi");                                      // 0x0075d1c1    03cf
    asm("call               dword ptr [esi + 0xc]");                         // 0x0075d1c3    ff560c
    asm("test               eax, eax");                                      // 0x0075d1c6    85c0
    asm("{disp8} je         _jmp_addr_0x0075d1f5");                          // 0x0075d1c8    742b
    asm("_jmp_addr_0x0075d1ca:");
    asm("test               ebp, ebp");                                      // 0x0075d1ca    85ed
    asm("{disp8} je         _jmp_addr_0x0075d1f5");                          // 0x0075d1cc    7427
    asm("mov.s              ecx, edi");                                      // 0x0075d1ce    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075d1d0    e8cb4cffff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x20]");                   // 0x0075d1d5    8b4e20
    asm("push               eax");                                           // 0x0075d1d8    50
    asm("add.s              ecx, edi");                                      // 0x0075d1d9    03cf
    asm("call               dword ptr [esi + 0x1c]");                        // 0x0075d1db    ff561c
    asm("{disp8} fcom       dword ptr [esp + 0x10]");                        // 0x0075d1de    d8542410
    asm("fnstsw             ax");                                            // 0x0075d1e2    dfe0
    asm("test               ah, 0x41");                                      // 0x0075d1e4    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075d1f3");                          // 0x0075d1e7    750a
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075d1e9    d95c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                   // 0x0075d1ed    895c2414
    asm("{disp8} jmp        _jmp_addr_0x0075d1f5");                          // 0x0075d1f1    eb02
    asm("_jmp_addr_0x0075d1f3:");
    asm("fstp               st(0)");                                         // 0x0075d1f3    ddd8
    asm("_jmp_addr_0x0075d1f5:");
    asm("add                esi, 0x00000080");                               // 0x0075d1f5    81c680000000
    asm("inc                ebx");                                           // 0x0075d1fb    43
    asm("cmp                esi, 0x00c23bbc");                               // 0x0075d1fc    81febc3bc200
    asm(".byte              0x72, 0x9a");// {disp8} jb _jmp_addr_0x0075d19e  // 0x0075d202    729a
    asm("{disp8} mov        al, byte ptr [esp + 0x14]");                     // 0x0075d204    8a442414
    asm("pop                esi");                                           // 0x0075d208    5e
    asm("{disp32} mov       byte ptr [edi + 0x0000008f], al");               // 0x0075d209    88878f000000
    asm("pop                ebp");                                           // 0x0075d20f    5d
    asm("{disp32} mov       byte ptr [edi + 0x00000118], 0x00");             // 0x0075d210    c6871801000000
    asm("{disp32} mov       byte ptr [edi + 0x00000119], 0x00");             // 0x0075d217    c6871901000000
    asm("pop                ebx");                                           // 0x0075d21e    5b
    asm("_jmp_addr_0x0075d21f:");
    asm("pop                edi");                                           // 0x0075d21f    5f
    asm("add                esp, 0x08");                                     // 0x0075d220    83c408
    asm("ret");                                                              // 0x0075d223    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FootballAttacker__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075d230    56
    asm("push               edi");                                           // 0x0075d231    57
    asm("mov.s              esi, ecx");                                      // 0x0075d232    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075d234    e8674cffff
    asm("test               eax, eax");                                      // 0x0075d239    85c0
    asm("{disp32} je        _jmp_addr_0x0075d2c3");                          // 0x0075d23b    0f8482000000
    asm("mov.s              ecx, esi");                                      // 0x0075d241    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075d243    e8584cffff
    asm("mov.s              ecx, eax");                                      // 0x0075d248    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075d24a    e8c141ddff
    asm("test               eax, eax");                                      // 0x0075d24f    85c0
    asm("{disp8} je         _jmp_addr_0x0075d2c3");                          // 0x0075d251    7470
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                     // 0x0075d253    668b4658
    asm("cmp                ax, 0x0001");                                    // 0x0075d257    663d0100
    asm("{disp8} jl         _jmp_addr_0x0075d2b6");                          // 0x0075d25b    7c59
    asm("xor.s              eax, eax");                                      // 0x0075d25d    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008f]");               // 0x0075d25f    8a868f000000
    asm("mov.s              edi, eax");                                      // 0x0075d265    8bf8
    asm("cmp                edi, 0x08");                                     // 0x0075d267    83ff08
    asm(".byte              0x72, 0x8");// {disp8} jb _jmp_addr_0x0075d274   // 0x0075d26a    7208
    asm("pop                edi");                                           // 0x0075d26c    5f
    asm("mov                eax, 0x00000001");                               // 0x0075d26d    b801000000
    asm("pop                esi");                                           // 0x0075d272    5e
    asm("ret");                                                              // 0x0075d273    c3
    asm("_jmp_addr_0x0075d274:");
    asm("mov.s              ecx, esi");                                      // 0x0075d274    8bce
    asm("shl                edi, 7");                                        // 0x0075d276    c1e707
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075d279    e8224cffff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00c237ec]");             // 0x0075d27e    8b8fec37c200
    asm("push               eax");                                           // 0x0075d284    50
    asm("add.s              ecx, esi");                                      // 0x0075d285    03ce
    asm("call               dword ptr [edi + data_bytes + 0x25d7e8]");       // 0x0075d287    ff97e837c200
    asm("mov.s              ecx, esi");                                      // 0x0075d28d    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075d28f    e80c4cffff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00c237bc]");             // 0x0075d294    8b8fbc37c200
    asm("push               eax");                                           // 0x0075d29a    50
    asm("add.s              ecx, esi");                                      // 0x0075d29b    03ce
    asm("call               dword ptr [edi + data_bytes + 0x25d7b8]");       // 0x0075d29d    ff97b837c200
    asm("test               eax, eax");                                      // 0x0075d2a3    85c0
    asm("{disp8} jne        _jmp_addr_0x0075d2bb");                          // 0x0075d2a5    7514
    asm("pop                edi");                                           // 0x0075d2a7    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075d2a8    c6861801000001
    asm("mov                eax, 0x00000001");                               // 0x0075d2af    b801000000
    asm("pop                esi");                                           // 0x0075d2b4    5e
    asm("ret");                                                              // 0x0075d2b5    c3
    asm("_jmp_addr_0x0075d2b6:");
    asm("inc                eax");                                           // 0x0075d2b6    40
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                     // 0x0075d2b7    66894658
    asm("_jmp_addr_0x0075d2bb:");
    asm("pop                edi");                                           // 0x0075d2bb    5f
    asm("mov                eax, 0x00000001");                               // 0x0075d2bc    b801000000
    asm("pop                esi");                                           // 0x0075d2c1    5e
    asm("ret");                                                              // 0x0075d2c2    c3
    asm("_jmp_addr_0x0075d2c3:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075d2c3    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075d2c5    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x0075d2c7    ff92c8080000
    asm("pop                edi");                                           // 0x0075d2cd    5f
    asm("pop                esi");                                           // 0x0075d2ce    5e
    asm("ret");                                                              // 0x0075d2cf    c3
    __builtin_unreachable();
}

void __fastcall FootballAttackerShootProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075d2d0    83ec0c
    asm("push               ebx");                                           // 0x0075d2d3    53
    asm("push               ebp");                                           // 0x0075d2d4    55
    asm("push               esi");                                           // 0x0075d2d5    56
    asm("push               edi");                                           // 0x0075d2d6    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x0075d2d7    8b7c2420
    asm("mov.s              esi, ecx");                                      // 0x0075d2db    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075d2dd    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075d2df    e82c41ddff
    asm("mov                ebp, dword ptr [esi]");                          // 0x0075d2e4    8b2e
    asm("mov.s              ecx, esi");                                      // 0x0075d2e6    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075d2e8    8bd8
    asm("call               dword ptr [ebp + 0x42c]");                       // 0x0075d2ea    ff952c040000
    asm("push               ecx");                                           // 0x0075d2f0    51
    asm("fstp               dword ptr [esp]");                               // 0x0075d2f1    d91c24
    asm("push               ebx");                                           // 0x0075d2f4    53
    asm("mov.s              ecx, esi");                                      // 0x0075d2f5    8bce
    asm("call               dword ptr [ebp + 0x6b8]");                       // 0x0075d2f7    ff95b8060000
    asm("test               eax, eax");                                      // 0x0075d2fd    85c0
    asm("{disp32} je        _jmp_addr_0x0075d388");                          // 0x0075d2ff    0f8483000000
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x0075d305    8b431c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075d308    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075d30a    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075d30c    89442420
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075d310    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x20]");                        // 0x0075d316    d85c2420
    asm("fnstsw             ax");                                            // 0x0075d31a    dfe0
    asm("test               ah, 0x41");                                      // 0x0075d31c    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075d388");                          // 0x0075d31f    7567
    asm("push               esi");                                           // 0x0075d321    56
    asm("mov.s              ecx, edi");                                      // 0x0075d322    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075d324    e83756ddff
    asm("push               eax");                                           // 0x0075d329    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075d32a    8d442414
    asm("push               eax");                                           // 0x0075d32e    50
    asm("mov.s              ecx, edi");                                      // 0x0075d32f    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075d331    e84a59ddff
    asm("push               esi");                                           // 0x0075d336    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x0075d337    8d4c2414
    asm("push               ecx");                                           // 0x0075d33b    51
    asm("mov.s              ecx, edi");                                      // 0x0075d33c    8bcf
    asm("call               _jmp_addr_0x00532eb0");                          // 0x0075d33e    e86d5bddff
    asm("push               0x1");                                           // 0x0075d343    6a01
    asm("push               0x00000099");                                    // 0x0075d345    6899000000
    asm("push               0x00c2443c");                                    // 0x0075d34a    683c44c200
    asm("push               0x40800000");                                    // 0x0075d34f    6800008040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d354    e8d711f8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x261c0]");             // 0x0075d359    d805c0f18c00
    asm("add                esp, 0x08");                                     // 0x0075d35f    83c408
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x0075d362    8d542418
    asm("fstp               dword ptr [esp]");                               // 0x0075d366    d91c24
    asm("push               edx");                                           // 0x0075d369    52
    asm("mov.s              ecx, ebx");                                      // 0x0075d36a    8bcb
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075d36c    e8cf88cdff
    asm("pop                edi");                                           // 0x0075d371    5f
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075d372    66c746580000
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075d378    c6861801000001
    asm("pop                esi");                                           // 0x0075d37f    5e
    asm("pop                ebp");                                           // 0x0075d380    5d
    asm("pop                ebx");                                           // 0x0075d381    5b
    asm("add                esp, 0x0c");                                     // 0x0075d382    83c40c
    asm("ret                0x0004");                                        // 0x0075d385    c20400
    asm("_jmp_addr_0x0075d388:");
    asm("push               edi");                                           // 0x0075d388    57
    asm("mov.s              ecx, esi");                                      // 0x0075d389    8bce
    asm("call               ?FootballAttackerGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075d38b    e800070000
    asm("pop                edi");                                           // 0x0075d390    5f
    asm("pop                esi");                                           // 0x0075d391    5e
    asm("pop                ebp");                                           // 0x0075d392    5d
    asm("pop                ebx");                                           // 0x0075d393    5b
    asm("add                esp, 0x0c");                                     // 0x0075d394    83c40c
    asm("ret                0x0004");                                        // 0x0075d397    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall FootballAttackerPassProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075d3a0    83ec0c
    asm("push               ebx");                                           // 0x0075d3a3    53
    asm("push               ebp");                                           // 0x0075d3a4    55
    asm("push               esi");                                           // 0x0075d3a5    56
    asm("push               edi");                                           // 0x0075d3a6    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x0075d3a7    8b7c2420
    asm("mov.s              esi, ecx");                                      // 0x0075d3ab    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075d3ad    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075d3af    e85c40ddff
    asm("mov                ebx, dword ptr [esi]");                          // 0x0075d3b4    8b1e
    asm("mov.s              ecx, esi");                                      // 0x0075d3b6    8bce
    asm("mov.s              ebp, eax");                                      // 0x0075d3b8    8be8
    asm("call               dword ptr [ebx + 0x42c]");                       // 0x0075d3ba    ff932c040000
    asm("push               ecx");                                           // 0x0075d3c0    51
    asm("fstp               dword ptr [esp]");                               // 0x0075d3c1    d91c24
    asm("push               ebp");                                           // 0x0075d3c4    55
    asm("mov.s              ecx, esi");                                      // 0x0075d3c5    8bce
    asm("call               dword ptr [ebx + 0x6b8]");                       // 0x0075d3c7    ff93b8060000
    asm("test               eax, eax");                                      // 0x0075d3cd    85c0
    asm("{disp32} je        _jmp_addr_0x0075d4e9");                          // 0x0075d3cf    0f8414010000
    asm("{disp8} mov        eax, dword ptr [ebp + 0x1c]");                   // 0x0075d3d5    8b451c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075d3d8    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075d3da    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075d3dc    89442420
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075d3e0    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x20]");                        // 0x0075d3e6    d85c2420
    asm("fnstsw             ax");                                            // 0x0075d3ea    dfe0
    asm("test               ah, 0x41");                                      // 0x0075d3ec    f6c441
    asm("{disp32} jne       _jmp_addr_0x0075d4e9");                          // 0x0075d3ef    0f85f4000000
    asm("push               esi");                                           // 0x0075d3f5    56
    asm("mov.s              ecx, edi");                                      // 0x0075d3f6    8bcf
    asm("call               _jmp_addr_0x00534820");                          // 0x0075d3f8    e82374ddff
    asm("mov.s              ebx, eax");                                      // 0x0075d3fd    8bd8
    asm("dec                ebx");                                           // 0x0075d3ff    4b
    asm("{disp32} js        _jmp_addr_0x0075d4d8");                          // 0x0075d400    0f88d2000000
    asm("push               esi");                                           // 0x0075d406    56
    asm("mov.s              ecx, edi");                                      // 0x0075d407    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075d409    e85255ddff
    asm("neg                eax");                                           // 0x0075d40e    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075d410    1bc0
    asm("inc                eax");                                           // 0x0075d412    40
    asm("{disp32} mov       ecx, dword ptr [edi + eax * 0x8 + 0x00000238]"); // 0x0075d413    8b8cc738020000
    asm("test               ecx, ecx");                                      // 0x0075d41a    85c9
    asm("{disp32} lea       eax, dword ptr [edi + eax * 0x8 + 0x00000234]"); // 0x0075d41c    8d84c734020000
    asm("{disp8} jbe        _jmp_addr_0x0075d43c");                          // 0x0075d423    7617
    asm("mov                eax, dword ptr [eax]");                          // 0x0075d425    8b00
    asm("test               eax, eax");                                      // 0x0075d427    85c0
    asm("{disp8} je         _jmp_addr_0x0075d43c");                          // 0x0075d429    7411
    asm("cmp.s              ebx, ecx");                                      // 0x0075d42b    3bd9
    asm("{disp8} jge        _jmp_addr_0x0075d43c");                          // 0x0075d42d    7d0d
    asm("test               ebx, ebx");                                      // 0x0075d42f    85db
    asm("{disp8} jle        _jmp_addr_0x0075d438");                          // 0x0075d431    7e05
    asm("_jmp_addr_0x0075d433:");
    asm("dec                ebx");                                           // 0x0075d433    4b
    asm("mov                eax, dword ptr [eax]");                          // 0x0075d434    8b00
    asm("{disp8} jne        _jmp_addr_0x0075d433");                          // 0x0075d436    75fb
    asm("_jmp_addr_0x0075d438:");
    asm("test               eax, eax");                                      // 0x0075d438    85c0
    asm("{disp8} jne        _jmp_addr_0x0075d440");                          // 0x0075d43a    7504
    asm("_jmp_addr_0x0075d43c:");
    asm("xor.s              edi, edi");                                      // 0x0075d43c    33ff
    asm("{disp8} jmp        _jmp_addr_0x0075d443");                          // 0x0075d43e    eb03
    asm("_jmp_addr_0x0075d440:");
    asm("{disp8} mov        edi, dword ptr [eax + 0x04]");                   // 0x0075d440    8b7804
    asm("_jmp_addr_0x0075d443:");
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x0075d443    8d4714
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075d446    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075d448    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075d44c    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075d44f    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075d453    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075d456    89442418
    asm("mov                edx, dword ptr [edi]");                          // 0x0075d45a    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075d45c    8bcf
    asm("call               dword ptr [edx + 0x174]");                       // 0x0075d45e    ff9274010000
    asm("test               eax, eax");                                      // 0x0075d464    85c0
    asm("{disp8} je         _jmp_addr_0x0075d486");                          // 0x0075d466    741e
    asm("mov                eax, dword ptr [edi]");                          // 0x0075d468    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075d46a    8bcf
    asm("call               dword ptr [eax + 0x860]");                       // 0x0075d46c    ff9060080000
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075d472    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075d474    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075d478    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075d47b    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075d47f    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075d482    89442418
    asm("_jmp_addr_0x0075d486:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x0075d486    8d4c2410
    asm("push               ecx");                                           // 0x0075d48a    51
    asm("{disp8} lea        edx, dword ptr [ebp + 0x14]");                   // 0x0075d48b    8d5514
    asm("push               edx");                                           // 0x0075d48e    52
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075d48f    e8dcf8feff
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075d494    d81d90a38a00
    asm("add                esp, 0x08");                                     // 0x0075d49a    83c408
    asm("fnstsw             ax");                                            // 0x0075d49d    dfe0
    asm("test               ah, 0x41");                                      // 0x0075d49f    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075d4d8");                          // 0x0075d4a2    7534
    asm("push               0x1");                                           // 0x0075d4a4    6a01
    asm("push               0x000000b5");                                    // 0x0075d4a6    68b5000000
    asm("push               0x00c2443c");                                    // 0x0075d4ab    683c44c200
    asm("push               0x3f800000");                                    // 0x0075d4b0    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d4b5    e87610f8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x235c]");              // 0x0075d4ba    d8055cb38a00
    asm("add                esp, 0x08");                                     // 0x0075d4c0    83c408
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x0075d4c3    8d442418
    asm("fstp               dword ptr [esp]");                               // 0x0075d4c7    d91c24
    asm("push               eax");                                           // 0x0075d4ca    50
    asm("mov.s              ecx, ebp");                                      // 0x0075d4cb    8bcd
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075d4cd    e86e87cdff
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075d4d2    66c746580000
    asm("_jmp_addr_0x0075d4d8:");
    asm("pop                edi");                                           // 0x0075d4d8    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075d4d9    c6861801000001
    asm("pop                esi");                                           // 0x0075d4e0    5e
    asm("pop                ebp");                                           // 0x0075d4e1    5d
    asm("pop                ebx");                                           // 0x0075d4e2    5b
    asm("add                esp, 0x0c");                                     // 0x0075d4e3    83c40c
    asm("ret                0x0004");                                        // 0x0075d4e6    c20400
    asm("_jmp_addr_0x0075d4e9:");
    asm("push               edi");                                           // 0x0075d4e9    57
    asm("mov.s              ecx, esi");                                      // 0x0075d4ea    8bce
    asm("call               ?FootballAttackerGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075d4ec    e89f050000
    asm("pop                edi");                                           // 0x0075d4f1    5f
    asm("pop                esi");                                           // 0x0075d4f2    5e
    asm("pop                ebp");                                           // 0x0075d4f3    5d
    asm("pop                ebx");                                           // 0x0075d4f4    5b
    asm("add                esp, 0x0c");                                     // 0x0075d4f5    83c40c
    asm("ret                0x0004");                                        // 0x0075d4f8    c20400
    __builtin_unreachable();
}

void __fastcall FootballAttackerLobNearGoalProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x0075d500    83ec18
    asm("push               ebx");                                           // 0x0075d503    53
    asm("push               ebp");                                           // 0x0075d504    55
    asm("push               esi");                                           // 0x0075d505    56
    asm("push               edi");                                           // 0x0075d506    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x2c]");                   // 0x0075d507    8b7c242c
    asm("mov.s              esi, ecx");                                      // 0x0075d50b    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075d50d    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075d50f    e8fc3eddff
    asm("mov                ebp, dword ptr [esi]");                          // 0x0075d514    8b2e
    asm("mov.s              ecx, esi");                                      // 0x0075d516    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075d518    8bd8
    asm("call               dword ptr [ebp + 0x42c]");                       // 0x0075d51a    ff952c040000
    asm("push               ecx");                                           // 0x0075d520    51
    asm("fstp               dword ptr [esp]");                               // 0x0075d521    d91c24
    asm("push               ebx");                                           // 0x0075d524    53
    asm("mov.s              ecx, esi");                                      // 0x0075d525    8bce
    asm("call               dword ptr [ebp + 0x6b8]");                       // 0x0075d527    ff95b8060000
    asm("test               eax, eax");                                      // 0x0075d52d    85c0
    asm("{disp32} je        _jmp_addr_0x0075d659");                          // 0x0075d52f    0f8424010000
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x0075d535    8b431c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075d538    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075d53a    8bce
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x0075d53c    8944242c
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075d540    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x2c]");                        // 0x0075d546    d85c242c
    asm("fnstsw             ax");                                            // 0x0075d54a    dfe0
    asm("test               ah, 0x41");                                      // 0x0075d54c    f6c441
    asm("{disp32} jne       _jmp_addr_0x0075d659");                          // 0x0075d54f    0f8504010000
    asm("push               esi");                                           // 0x0075d555    56
    asm("mov.s              ecx, edi");                                      // 0x0075d556    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075d558    e80354ddff
    asm("push               eax");                                           // 0x0075d55d    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075d55e    8d442414
    asm("push               eax");                                           // 0x0075d562    50
    asm("mov.s              ecx, edi");                                      // 0x0075d563    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075d565    e81657ddff
    asm("push               0x000000c7");                                    // 0x0075d56a    68c7000000
    asm("push               0x00c2443c");                                    // 0x0075d56f    683c44c200
    asm("push               0x40800000");                                    // 0x0075d574    6800008040
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d579    e8b20ff8ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x2478]");              // 0x0075d57e    d82578b48a00
    asm("{disp8} fild       dword ptr [esp + 0x1c]");                        // 0x0075d584    db44241c
    asm("{disp32} fmul      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075d588    d80d80a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x0075d58e    d80d1cc48a00
    asm("fadd               st, st(1)");                                     // 0x0075d594    d8c1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x0075d596    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075d59c    d83580a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075d5a2    e8593e0400
    asm("fstp               st(0)");                                         // 0x0075d5a7    ddd8
    asm("push               0x000000c8");                                    // 0x0075d5a9    68c8000000
    asm("push               0x00c2443c");                                    // 0x0075d5ae    683c44c200
    asm("push               0x40800000");                                    // 0x0075d5b3    6800008040
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                   // 0x0075d5b8    89442428
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d5bc    e86f0ff8ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x2478]");              // 0x0075d5c1    d82578b48a00
    asm("{disp8} fild       dword ptr [esp + 0x2c]");                        // 0x0075d5c7    db44242c
    asm("add                esp, 0x18");                                     // 0x0075d5cb    83c418
    asm("{disp32} fmul      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075d5ce    d80d80a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x0075d5d4    d80d1cc48a00
    asm("fadd               st, st(1)");                                     // 0x0075d5da    d8c1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x0075d5dc    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075d5e2    d83580a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075d5e8    e8133e0400
    asm("fstp               st(0)");                                         // 0x0075d5ed    ddd8
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0075d5ef    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                   // 0x0075d5f3    8b542418
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                   // 0x0075d5f7    89442414
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075d5fb    89442420
    asm("push               esi");                                           // 0x0075d5ff    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                   // 0x0075d600    8d442420
    asm("{disp8} mov        dword ptr [esp + 0x20], ecx");                   // 0x0075d604    894c2420
    asm("push               eax");                                           // 0x0075d608    50
    asm("mov.s              ecx, edi");                                      // 0x0075d609    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x2c], edx");                   // 0x0075d60b    8954242c
    asm("call               _jmp_addr_0x00532eb0");                          // 0x0075d60f    e89c58ddff
    asm("push               0x1");                                           // 0x0075d614    6a01
    asm("push               0x000000cb");                                    // 0x0075d616    68cb000000
    asm("push               0x00c2443c");                                    // 0x0075d61b    683c44c200
    asm("push               0x3f800000");                                    // 0x0075d620    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d625    e8060ff8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x19c50]");             // 0x0075d62a    d805502c8c00
    asm("add                esp, 0x08");                                     // 0x0075d630    83c408
    asm("{disp8} lea        ecx, dword ptr [esp + 0x24]");                   // 0x0075d633    8d4c2424
    asm("fstp               dword ptr [esp]");                               // 0x0075d637    d91c24
    asm("push               ecx");                                           // 0x0075d63a    51
    asm("mov.s              ecx, ebx");                                      // 0x0075d63b    8bcb
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075d63d    e8fe85cdff
    asm("pop                edi");                                           // 0x0075d642    5f
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075d643    66c746580000
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075d649    c6861801000001
    asm("pop                esi");                                           // 0x0075d650    5e
    asm("pop                ebp");                                           // 0x0075d651    5d
    asm("pop                ebx");                                           // 0x0075d652    5b
    asm("add                esp, 0x18");                                     // 0x0075d653    83c418
    asm("ret                0x0004");                                        // 0x0075d656    c20400
    asm("_jmp_addr_0x0075d659:");
    asm("push               edi");                                           // 0x0075d659    57
    asm("mov.s              ecx, esi");                                      // 0x0075d65a    8bce
    asm("call               ?FootballAttackerGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075d65c    e82f040000
    asm("pop                edi");                                           // 0x0075d661    5f
    asm("pop                esi");                                           // 0x0075d662    5e
    asm("pop                ebp");                                           // 0x0075d663    5d
    asm("pop                ebx");                                           // 0x0075d664    5b
    asm("add                esp, 0x18");                                     // 0x0075d665    83c418
    asm("ret                0x0004");                                        // 0x0075d668    c20400
    __builtin_unreachable();
}

void __fastcall FootballAttackerDribbleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x50");                                     // 0x0075d670    83ec50
    asm("push               ebx");                                           // 0x0075d673    53
    asm("push               ebp");                                           // 0x0075d674    55
    asm("push               esi");                                           // 0x0075d675    56
    asm("push               edi");                                           // 0x0075d676    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x64]");                   // 0x0075d677    8b7c2464
    asm("mov.s              esi, ecx");                                      // 0x0075d67b    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075d67d    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075d67f    e88c3dddff
    asm("mov                ebp, dword ptr [esi]");                          // 0x0075d684    8b2e
    asm("mov.s              ecx, esi");                                      // 0x0075d686    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075d688    8bd8
    asm("call               dword ptr [ebp + 0x42c]");                       // 0x0075d68a    ff952c040000
    asm("push               ecx");                                           // 0x0075d690    51
    asm("fstp               dword ptr [esp]");                               // 0x0075d691    d91c24
    asm("push               ebx");                                           // 0x0075d694    53
    asm("mov.s              ecx, esi");                                      // 0x0075d695    8bce
    asm("call               dword ptr [ebp + 0x6b8]");                       // 0x0075d697    ff95b8060000
    asm("test               eax, eax");                                      // 0x0075d69d    85c0
    asm("{disp32} je        _jmp_addr_0x0075d83c");                          // 0x0075d69f    0f8497010000
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x0075d6a5    8b431c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075d6a8    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075d6aa    8bce
    asm("{disp8} mov        dword ptr [esp + 0x64], eax");                   // 0x0075d6ac    89442464
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075d6b0    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x64]");                        // 0x0075d6b6    d85c2464
    asm("fnstsw             ax");                                            // 0x0075d6ba    dfe0
    asm("test               ah, 0x41");                                      // 0x0075d6bc    f6c441
    asm("{disp32} jne       _jmp_addr_0x0075d83c");                          // 0x0075d6bf    0f8577010000
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075d6c5    8d442424
    asm("push               eax");                                           // 0x0075d6c9    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075d6ca    8d4e14
    asm("call               @GetLHPoint__9MapCoordsCFv@12");                 // 0x0075d6cd    e86e85eaff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                   // 0x0075d6d2    8d4c2430
    asm("push               ecx");                                           // 0x0075d6d6    51
    asm("push               esi");                                           // 0x0075d6d7    56
    asm("mov.s              ecx, edi");                                      // 0x0075d6d8    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075d6da    e88152ddff
    asm("push               eax");                                           // 0x0075d6df    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x44]");                   // 0x0075d6e0    8d542444
    asm("push               edx");                                           // 0x0075d6e4    52
    asm("mov.s              ecx, edi");                                      // 0x0075d6e5    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075d6e7    e89455ddff
    asm("mov.s              ecx, eax");                                      // 0x0075d6ec    8bc8
    asm("call               @GetLHPoint__9MapCoordsCFv@12");                 // 0x0075d6ee    e84d85eaff
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x0075d6f3    d9442430
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x0075d6f7    d8642424
    asm("{disp8} fld        dword ptr [esp + 0x34]");                        // 0x0075d6fb    d9442434
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x0075d6ff    d8642428
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x0075d703    d95c241c
    asm("{disp8} fld        dword ptr [esp + 0x38]");                        // 0x0075d707    d9442438
    asm("{disp8} fsub       dword ptr [esp + 0x2c]");                        // 0x0075d70b    d864242c
    asm("{disp8} fst        dword ptr [esp + 0x20]");                        // 0x0075d70f    d9542420
    asm("{disp8} fmul       dword ptr [esp + 0x20]");                        // 0x0075d713    d84c2420
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075d717    d95c2414
    asm("fld                st(0)");                                         // 0x0075d71b    d9c0
    asm("fmul               st, st(1)");                                     // 0x0075d71d    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075d71f    d95c2410
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x0075d723    d944241c
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                        // 0x0075d727    d84c241c
    asm("{disp8} fst        dword ptr [esp + 0x64]");                        // 0x0075d72b    d9542464
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                        // 0x0075d72f    d8442410
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x0075d733    d8442414
    asm("fsqrt");                                                            // 0x0075d737    d9fa
    asm("fld                st(1)");                                         // 0x0075d739    d9c1
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075d73b    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075d741    dfe0
    asm("test               ah, 0x40");                                      // 0x0075d743    f6c440
    asm("{disp8} je         _jmp_addr_0x0075d76a");                          // 0x0075d746    7422
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x0075d748    d944241c
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075d74c    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075d752    dfe0
    asm("test               ah, 0x40");                                      // 0x0075d754    f6c440
    asm("{disp8} je         _jmp_addr_0x0075d76a");                          // 0x0075d757    7411
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075d759    d9442420
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075d75d    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075d763    dfe0
    asm("test               ah, 0x40");                                      // 0x0075d765    f6c440
    asm("{disp8} jne        _jmp_addr_0x0075d798");                          // 0x0075d768    752e
    asm("_jmp_addr_0x0075d76a:");
    asm("{disp8} fld        dword ptr [esp + 0x64]");                        // 0x0075d76a    d9442464
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                        // 0x0075d76e    d8442410
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x0075d772    d8442414
    asm("fsqrt");                                                            // 0x0075d776    d9fa
    asm("{disp32} fdivr     dword ptr [_rdata_float1p0]");                   // 0x0075d778    d83d90a38a00
    asm("fld                st(0)");                                         // 0x0075d77e    d9c0
    asm("fmulp              st(3), st");                                     // 0x0075d780    decb
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x0075d782    d944241c
    asm("fmul               st, st(1)");                                     // 0x0075d786    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x0075d788    d95c241c
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075d78c    d9442420
    asm("fmul               st, st(1)");                                     // 0x0075d790    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0075d792    d95c2420
    asm("fstp               st(0)");                                         // 0x0075d796    ddd8
    asm("_jmp_addr_0x0075d798:");
    asm("{disp32} fmul      dword ptr [_rdata_float0p2]");                   // 0x0075d798    d80daca38a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x48]");                   // 0x0075d79e    8d442448
    asm("push               eax");                                           // 0x0075d7a2    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x58]");                   // 0x0075d7a3    8d4c2458
    asm("{disp8} fst        dword ptr [esp + 0x68]");                        // 0x0075d7a7    d9542468
    asm("fmulp              st(1), st");                                     // 0x0075d7ab    dec9
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075d7ad    d9442420
    asm("{disp8} fmul       dword ptr [esp + 0x68]");                        // 0x0075d7b1    d84c2468
    asm("{disp8} fstp       dword ptr [esp + 0x44]");                        // 0x0075d7b5    d95c2444
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x0075d7b9    d9442424
    asm("{disp8} fmul       dword ptr [esp + 0x68]");                        // 0x0075d7bd    d84c2468
    asm("{disp8} fstp       dword ptr [esp + 0x48]");                        // 0x0075d7c1    d95c2448
    asm("{disp8} fadd       dword ptr [esp + 0x28]");                        // 0x0075d7c5    d8442428
    asm("{disp8} fstp       dword ptr [esp + 0x4c]");                        // 0x0075d7c9    d95c244c
    asm("{disp8} fld        dword ptr [esp + 0x44]");                        // 0x0075d7cd    d9442444
    asm("{disp8} fadd       dword ptr [esp + 0x2c]");                        // 0x0075d7d1    d844242c
    asm("{disp8} fstp       dword ptr [esp + 0x50]");                        // 0x0075d7d5    d95c2450
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0075d7d9    d9442448
    asm("{disp8} fadd       dword ptr [esp + 0x30]");                        // 0x0075d7dd    d8442430
    asm("{disp8} fstp       dword ptr [esp + 0x54]");                        // 0x0075d7e1    d95c2454
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x0075d7e5    e87659eaff
    asm("push               esi");                                           // 0x0075d7ea    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x58]");                   // 0x0075d7eb    8d4c2458
    asm("push               ecx");                                           // 0x0075d7ef    51
    asm("mov.s              ecx, edi");                                      // 0x0075d7f0    8bcf
    asm("call               _jmp_addr_0x00532eb0");                          // 0x0075d7f2    e8b956ddff
    asm("push               0x1");                                           // 0x0075d7f7    6a01
    asm("push               0x000000e2");                                    // 0x0075d7f9    68e2000000
    asm("push               0x00c2443c");                                    // 0x0075d7fe    683c44c200
    asm("push               0x3f800000");                                    // 0x0075d803    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d808    e8230df8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x235c]");              // 0x0075d80d    d8055cb38a00
    asm("add                esp, 0x08");                                     // 0x0075d813    83c408
    asm("{disp8} lea        edx, dword ptr [esp + 0x5c]");                   // 0x0075d816    8d54245c
    asm("fstp               dword ptr [esp]");                               // 0x0075d81a    d91c24
    asm("push               edx");                                           // 0x0075d81d    52
    asm("mov.s              ecx, ebx");                                      // 0x0075d81e    8bcb
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075d820    e81b84cdff
    asm("pop                edi");                                           // 0x0075d825    5f
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075d826    66c746580000
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075d82c    c6861801000001
    asm("pop                esi");                                           // 0x0075d833    5e
    asm("pop                ebp");                                           // 0x0075d834    5d
    asm("pop                ebx");                                           // 0x0075d835    5b
    asm("add                esp, 0x50");                                     // 0x0075d836    83c450
    asm("ret                0x0004");                                        // 0x0075d839    c20400
    asm("_jmp_addr_0x0075d83c:");
    asm("push               edi");                                           // 0x0075d83c    57
    asm("mov.s              ecx, esi");                                      // 0x0075d83d    8bce
    asm("call               ?FootballAttackerGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075d83f    e84c020000
    asm("pop                edi");                                           // 0x0075d844    5f
    asm("pop                esi");                                           // 0x0075d845    5e
    asm("pop                ebp");                                           // 0x0075d846    5d
    asm("pop                ebx");                                           // 0x0075d847    5b
    asm("add                esp, 0x50");                                     // 0x0075d848    83c450
    asm("ret                0x0004");                                        // 0x0075d84b    c20400
    __builtin_unreachable();
}

void __fastcall FootballAttackerMoveToBePassedProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x3c");                                     // 0x0075d850    83ec3c
    asm("push               ebx");                                           // 0x0075d853    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x44]");                   // 0x0075d854    8b5c2444
    asm("push               esi");                                           // 0x0075d858    56
    asm("mov.s              esi, ecx");                                      // 0x0075d859    8bf1
    asm("push               edi");                                           // 0x0075d85b    57
    asm("push               esi");                                           // 0x0075d85c    56
    asm("mov.s              ecx, ebx");                                      // 0x0075d85d    8bcb
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075d85f    66c746580000
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075d865    e8f650ddff
    asm("neg                eax");                                           // 0x0075d86a    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075d86c    1bc0
    asm("inc                eax");                                           // 0x0075d86e    40
    asm("push               eax");                                           // 0x0075d86f    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x40]");                   // 0x0075d870    8d442440
    asm("push               eax");                                           // 0x0075d874    50
    asm("mov.s              ecx, ebx");                                      // 0x0075d875    8bcb
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075d877    e80454ddff
    asm("mov.s              edi, eax");                                      // 0x0075d87c    8bf8
    asm("{disp8} mov        ecx, dword ptr [edi + 0x08]");                   // 0x0075d87e    8b4f08
    asm("{disp8} mov        dword ptr [esp + 0x4c], ecx");                   // 0x0075d881    894c244c
    asm("mov.s              ecx, edi");                                      // 0x0075d885    8bcf
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x0075d887    e804580a00
    asm("{disp8} fadd       dword ptr [esp + 0x4c]");                        // 0x0075d88c    d844244c
    asm("push               esi");                                           // 0x0075d890    56
    asm("mov.s              ecx, ebx");                                      // 0x0075d891    8bcb
    asm("{disp8} fstp       dword ptr [esp + 0x2c]");                        // 0x0075d893    d95c242c
    asm("fild               dword ptr [edi]");                               // 0x0075d897    db07
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x0075d899    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x28]");                        // 0x0075d89f    d95c2428
    asm("{disp8} fild       dword ptr [edi + 0x04]");                        // 0x0075d8a3    db4704
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x0075d8a6    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x30]");                        // 0x0075d8ac    d95c2430
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075d8b0    e8ab50ddff
    asm("push               eax");                                           // 0x0075d8b5    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x40]");                   // 0x0075d8b6    8d542440
    asm("push               edx");                                           // 0x0075d8ba    52
    asm("mov.s              ecx, ebx");                                      // 0x0075d8bb    8bcb
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075d8bd    e8be53ddff
    asm("mov.s              edi, eax");                                      // 0x0075d8c2    8bf8
    asm("{disp8} mov        eax, dword ptr [edi + 0x08]");                   // 0x0075d8c4    8b4708
    asm("mov.s              ecx, edi");                                      // 0x0075d8c7    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x4c], eax");                   // 0x0075d8c9    8944244c
    asm("call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z");// 0x0075d8cd    e8be570a00
    asm("{disp8} fadd       dword ptr [esp + 0x4c]");                        // 0x0075d8d2    d844244c
    asm("fild               dword ptr [edi]");                               // 0x0075d8d6    db07
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x0075d8d8    d80da4a38a00
    asm("{disp8} fild       dword ptr [edi + 0x04]");                        // 0x0075d8de    db4704
    asm("{disp32} fmul      dword ptr [_rdata_float_coord_to_point]");       // 0x0075d8e1    d80da4a38a00
    asm("{disp8} fstp       dword ptr [esp + 0x44]");                        // 0x0075d8e7    d95c2444
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x0075d8eb    d8642424
    asm("{disp8} fstp       dword ptr [esp + 0x18]");                        // 0x0075d8ef    d95c2418
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");                   // 0x0075d8f3    8b4c2418
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x0075d8f7    d8642428
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x0075d8fb    894c2414
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x0075d8ff    d95c241c
    asm("{disp8} fld        dword ptr [esp + 0x44]");                        // 0x0075d903    d9442444
    asm("{disp8} fsub       dword ptr [esp + 0x2c]");                        // 0x0075d907    d864242c
    asm("{disp8} fst        dword ptr [esp + 0x20]");                        // 0x0075d90b    d9542420
    asm("fchs");                                                             // 0x0075d90f    d9e0
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0075d911    d95c240c
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0075d915    d944240c
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075d919    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075d91f    dfe0
    asm("test               ah, 0x40");                                      // 0x0075d921    f6c440
    asm("{disp8} je         _jmp_addr_0x0075d948");                          // 0x0075d924    7422
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x0075d926    d9442410
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075d92a    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075d930    dfe0
    asm("test               ah, 0x40");                                      // 0x0075d932    f6c440
    asm("{disp8} je         _jmp_addr_0x0075d948");                          // 0x0075d935    7411
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x0075d937    d9442418
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075d93b    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075d941    dfe0
    asm("test               ah, 0x40");                                      // 0x0075d943    f6c440
    asm("{disp8} jne        _jmp_addr_0x0075d988");                          // 0x0075d946    7540
    asm("_jmp_addr_0x0075d948:");
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x0075d948    d9442410
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075d94c    d84c2410
    asm("{disp8} fld        dword ptr [esp + 0x18]");                        // 0x0075d950    d9442418
    asm("{disp8} fmul       dword ptr [esp + 0x18]");                        // 0x0075d954    d84c2418
    asm("faddp              st(1), st");                                     // 0x0075d958    dec1
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                        // 0x0075d95a    d944240c
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x0075d95e    d84c240c
    asm("faddp              st(1), st");                                     // 0x0075d962    dec1
    asm("fsqrt");                                                            // 0x0075d964    d9fa
    asm("{disp32} fdivr     dword ptr [_rdata_float1p0]");                   // 0x0075d966    d83d90a38a00
    asm("fld                st(0)");                                         // 0x0075d96c    d9c0
    asm("{disp8} fmul       dword ptr [esp + 0x0c]");                        // 0x0075d96e    d84c240c
    asm("{disp8} fstp       dword ptr [esp + 0x0c]");                        // 0x0075d972    d95c240c
    asm("{disp8} fld        dword ptr [esp + 0x10]");                        // 0x0075d976    d9442410
    asm("fmul               st, st(1)");                                     // 0x0075d97a    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075d97c    d95c2410
    asm("{disp8} fmul       dword ptr [esp + 0x18]");                        // 0x0075d980    d84c2418
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075d984    d95c2414
    asm("_jmp_addr_0x0075d988:");
    asm("push               0x000000f7");                                    // 0x0075d988    68f7000000
    asm("push               0x00c2443c");                                    // 0x0075d98d    683c44c200
    asm("push               0x3e4ccccd");                                    // 0x0075d992    68cdcc4c3e
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d997    e8940bf8ff
    asm("{disp32} fadd      qword ptr [rdata_bytes + 0x267d8]");             // 0x0075d99c    dc05d8f78c00
    asm("push               0x000000f8");                                    // 0x0075d9a2    68f8000000
    asm("push               0x00c2443c");                                    // 0x0075d9a7    683c44c200
    asm("fld                st(0)");                                         // 0x0075d9ac    d9c0
    asm("{disp8} fmul       dword ptr [esp + 0x2c]");                        // 0x0075d9ae    d84c242c
    asm("push               0x41900000");                                    // 0x0075d9b2    6800009041
    asm("{disp8} fstp       dword ptr [esp + 0x54]");                        // 0x0075d9b7    d95c2454
    asm("{disp8} fld        dword ptr [esp + 0x34]");                        // 0x0075d9bb    d9442434
    asm("fmul               st, st(1)");                                     // 0x0075d9bf    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x58]");                        // 0x0075d9c1    d95c2458
    asm("{disp8} fmul       dword ptr [esp + 0x38]");                        // 0x0075d9c5    d84c2438
    asm("{disp8} fld        dword ptr [esp + 0x54]");                        // 0x0075d9c9    d9442454
    asm("{disp8} fadd       dword ptr [esp + 0x3c]");                        // 0x0075d9cd    d844243c
    asm("{disp8} fstp       dword ptr [esp + 0x30]");                        // 0x0075d9d1    d95c2430
    asm("{disp8} fld        dword ptr [esp + 0x58]");                        // 0x0075d9d5    d9442458
    asm("{disp8} fadd       dword ptr [esp + 0x40]");                        // 0x0075d9d9    d8442440
    asm("{disp8} fstp       dword ptr [esp + 0x34]");                        // 0x0075d9dd    d95c2434
    asm("{disp8} fadd       dword ptr [esp + 0x44]");                        // 0x0075d9e1    d8442444
    asm("{disp8} fstp       dword ptr [esp + 0x38]");                        // 0x0075d9e5    d95c2438
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075d9e9    e8420bf8ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x56ec8]");             // 0x0075d9ee    d825c8fe8f00
    asm("add                esp, 0x14");                                     // 0x0075d9f4    83c414
    asm("fld                st(0)");                                         // 0x0075d9f7    d9c0
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075d9f9    d84c2410
    asm("{disp8} fstp       dword ptr [esp + 0x40]");                        // 0x0075d9fd    d95c2440
    asm("{disp8} fld        dword ptr [esp + 0x14]");                        // 0x0075da01    d9442414
    asm("fmul               st, st(1)");                                     // 0x0075da05    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x44]");                        // 0x0075da07    d95c2444
    asm("{disp8} fmul       dword ptr [esp + 0x18]");                        // 0x0075da0b    d84c2418
    asm("{disp8} fadd       dword ptr [esp + 0x24]");                        // 0x0075da0f    d8442424
    asm("fstp               dword ptr [esp]");                               // 0x0075da13    d91c24
    asm("push               ecx");                                           // 0x0075da16    51
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0075da17    d9442448
    asm("{disp8} fadd       dword ptr [esp + 0x24]");                        // 0x0075da1b    d8442424
    asm("fstp               dword ptr [esp]");                               // 0x0075da1f    d91c24
    asm("push               ecx");                                           // 0x0075da22    51
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0075da23    d9442448
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                   // 0x0075da27    8d4c2430
    asm("{disp8} fadd       dword ptr [esp + 0x24]");                        // 0x0075da2b    d8442424
    asm("fstp               dword ptr [esp]");                               // 0x0075da2f    d91c24
    asm("call               @__ct__7LHPointFfff@20");                        // 0x0075da32    e8c94cceff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                   // 0x0075da37    8d4c2430
    asm("call               ??0MapCoords@@QAE@XZ");                          // 0x0075da3b    e82041ceff
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x0075da40    d9442424
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x0075da44    d80d00c48a00
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075da4a    e8b1390400
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x0075da4f    d944242c
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");              // 0x0075da53    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x30], eax");                   // 0x0075da59    89442430
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075da5d    e89e390400
    asm("push               0x49");                                          // 0x0075da62    6a49
    asm("{disp8} lea        edx, dword ptr [esp + 0x34]");                   // 0x0075da64    8d542434
    asm("push               edx");                                           // 0x0075da68    52
    asm("mov.s              ecx, esi");                                      // 0x0075da69    8bce
    asm("{disp8} mov        dword ptr [esp + 0x3c], eax");                   // 0x0075da6b    8944243c
    asm("{disp8} mov        dword ptr [esp + 0x40], 0x00000000");            // 0x0075da6f    c744244000000000
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075da77    e8845d0000
    asm("pop                edi");                                           // 0x0075da7c    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075da7d    c6861801000001
    asm("pop                esi");                                           // 0x0075da84    5e
    asm("pop                ebx");                                           // 0x0075da85    5b
    asm("add                esp, 0x3c");                                     // 0x0075da86    83c43c
    asm("ret                0x0004");                                        // 0x0075da89    c20400
    __builtin_unreachable();
}

void __fastcall FootballAttackerGoToBallProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075da90    83ec0c
    asm("push               ebx");                                           // 0x0075da93    53
    asm("push               ebp");                                           // 0x0075da94    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x18]");                   // 0x0075da95    8b6c2418
    asm("push               esi");                                           // 0x0075da99    56
    asm("mov.s              esi, ecx");                                      // 0x0075da9a    8bf1
    asm("push               edi");                                           // 0x0075da9c    57
    asm("mov.s              ecx, ebp");                                      // 0x0075da9d    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075da9f    e86c39ddff
    asm("mov                edi, dword ptr [esi]");                          // 0x0075daa4    8b3e
    asm("mov.s              ecx, esi");                                      // 0x0075daa6    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075daa8    8bd8
    asm("call               dword ptr [edi + 0x42c]");                       // 0x0075daaa    ff972c040000
    asm("push               ecx");                                           // 0x0075dab0    51
    asm("fstp               dword ptr [esp]");                               // 0x0075dab1    d91c24
    asm("push               ebx");                                           // 0x0075dab4    53
    asm("mov.s              ecx, esi");                                      // 0x0075dab5    8bce
    asm("call               dword ptr [edi + 0x6b8]");                       // 0x0075dab7    ff97b8060000
    asm("test               eax, eax");                                      // 0x0075dabd    85c0
    asm("{disp8} je         _jmp_addr_0x0075daee");                          // 0x0075dabf    742d
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x0075dac1    8b431c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075dac4    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075dac6    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075dac8    89442420
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075dacc    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x20]");                        // 0x0075dad2    d85c2420
    asm("fnstsw             ax");                                            // 0x0075dad6    dfe0
    asm("test               ah, 0x41");                                      // 0x0075dad8    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075daee");                          // 0x0075dadb    7511
    asm("pop                edi");                                           // 0x0075dadd    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075dade    c6861801000001
    asm("pop                esi");                                           // 0x0075dae5    5e
    asm("pop                ebp");                                           // 0x0075dae6    5d
    asm("pop                ebx");                                           // 0x0075dae7    5b
    asm("add                esp, 0x0c");                                     // 0x0075dae8    83c40c
    asm("ret                0x0004");                                        // 0x0075daeb    c20400
    asm("_jmp_addr_0x0075daee:");
    asm("mov.s              ecx, ebp");                                      // 0x0075daee    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075daf0    e81b39ddff
    asm("test               byte ptr [eax + 0x24], 0x40");                   // 0x0075daf5    f6402440
    asm("{disp8} je         _jmp_addr_0x0075db57");                          // 0x0075daf9    745c
    asm("push               0x00000109");                                    // 0x0075dafb    6809010000
    asm("push               0x00c2443c");                                    // 0x0075db00    683c44c200
    asm("push               0x3");                                           // 0x0075db05    6a03
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x0075db07    e8040af8ff
    asm("add                esp, 0x0c");                                     // 0x0075db0c    83c40c
    asm("test               eax, eax");                                      // 0x0075db0f    85c0
    asm("{disp8} je         _jmp_addr_0x0075db57");                          // 0x0075db11    7444
    asm("add                ebx, 0x00000084");                               // 0x0075db13    81c384000000
    asm("mov                eax, dword ptr [ebx]");                          // 0x0075db19    8b03
    asm("{disp8} mov        ecx, dword ptr [ebx + 0x04]");                   // 0x0075db1b    8b4b04
    asm("{disp8} mov        edx, dword ptr [ebx + 0x08]");                   // 0x0075db1e    8b5308
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075db21    89442410
    asm("push               0x49");                                          // 0x0075db25    6a49
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075db27    8d442414
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x0075db2b    894c2418
    asm("push               eax");                                           // 0x0075db2f    50
    asm("mov.s              ecx, esi");                                      // 0x0075db30    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x0075db32    89542420
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075db36    e8c55c0000
    asm("push               0x000000de");                                    // 0x0075db3b    68de000000
    asm("push               0x0");                                           // 0x0075db40    6a00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x0075db42    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x0075db48    e843f1e8ff
    asm("pop                edi");                                           // 0x0075db4d    5f
    asm("pop                esi");                                           // 0x0075db4e    5e
    asm("pop                ebp");                                           // 0x0075db4f    5d
    asm("pop                ebx");                                           // 0x0075db50    5b
    asm("add                esp, 0x0c");                                     // 0x0075db51    83c40c
    asm("ret                0x0004");                                        // 0x0075db54    c20400
    asm("_jmp_addr_0x0075db57:");
    asm("push               0x49");                                          // 0x0075db57    6a49
    asm("mov.s              ecx, ebp");                                      // 0x0075db59    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075db5b    e8b038ddff
    asm("push               eax");                                           // 0x0075db60    50
    asm("mov.s              ecx, esi");                                      // 0x0075db61    8bce
    asm("call               ?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z");                          // 0x0075db63    e82836ffff
    asm("pop                edi");                                           // 0x0075db68    5f
    asm("pop                esi");                                           // 0x0075db69    5e
    asm("pop                ebp");                                           // 0x0075db6a    5d
    asm("pop                ebx");                                           // 0x0075db6b    5b
    asm("add                esp, 0x0c");                                     // 0x0075db6c    83c40c
    asm("ret                0x0004");                                        // 0x0075db6f    c20400
    __builtin_unreachable();
}

void __fastcall FootballAttackerGoHomeProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075db80    83ec0c
    asm("push               esi");                                           // 0x0075db83    56
    asm("push               edi");                                           // 0x0075db84    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075db85    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075db89    8bf1
    asm("push               esi");                                           // 0x0075db8b    56
    asm("mov.s              ecx, edi");                                      // 0x0075db8c    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075db8e    e8cd4dddff
    asm("neg                eax");                                           // 0x0075db93    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075db95    1bc0
    asm("inc                eax");                                           // 0x0075db97    40
    asm("push               eax");                                           // 0x0075db98    50
    asm("push               esi");                                           // 0x0075db99    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075db9a    8d442410
    asm("push               eax");                                           // 0x0075db9e    50
    asm("mov.s              ecx, edi");                                      // 0x0075db9f    8bcf
    asm("call               _jmp_addr_0x00532f60");                          // 0x0075dba1    e8ba53ddff
    asm("push               0x49");                                          // 0x0075dba6    6a49
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075dba8    8d4c240c
    asm("push               ecx");                                           // 0x0075dbac    51
    asm("mov.s              ecx, esi");                                      // 0x0075dbad    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075dbaf    e84c5c0000
    asm("pop                edi");                                           // 0x0075dbb4    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075dbb5    c6861801000001
    asm("pop                esi");                                           // 0x0075dbbc    5e
    asm("add                esp, 0x0c");                                     // 0x0075dbbd    83c40c
    asm("ret                0x0004");                                        // 0x0075dbc0    c20400
    __builtin_unreachable();
}

void __fastcall FootballAttackerIdleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075dbd0    56
    asm("push               edi");                                           // 0x0075dbd1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075dbd2    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x0075dbd6    8bf1
    asm("push               0x1");                                           // 0x0075dbd8    6a01
    asm("mov.s              ecx, edi");                                      // 0x0075dbda    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075dbdc    e82f38ddff
    asm("push               eax");                                           // 0x0075dbe1    50
    asm("mov.s              ecx, esi");                                      // 0x0075dbe2    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0075dbe4    e837e9e8ff
    asm("push               esi");                                           // 0x0075dbe9    56
    asm("mov.s              ecx, edi");                                      // 0x0075dbea    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075dbec    e86f4dddff
    asm("cmp                word ptr [esi + 0x58], 0x0258");                 // 0x0075dbf1    66817e585802
    asm("{disp8} jge        _jmp_addr_0x0075dc06");                          // 0x0075dbf7    7d0d
    asm("push               esi");                                           // 0x0075dbf9    56
    asm("mov.s              ecx, edi");                                      // 0x0075dbfa    8bcf
    asm("call               _jmp_addr_0x005347c0");                          // 0x0075dbfc    e8bf6bddff
    asm("cmp                eax, 0x02");                                     // 0x0075dc01    83f802
    asm("{disp8} jae        _jmp_addr_0x0075dc0d");                          // 0x0075dc04    7307
    asm("_jmp_addr_0x0075dc06:");
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075dc06    c6861801000001
    asm("_jmp_addr_0x0075dc0d:");
    asm("pop                edi");                                           // 0x0075dc0d    5f
    asm("pop                esi");                                           // 0x0075dc0e    5e
    asm("ret                0x0004");                                        // 0x0075dc0f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
float __fastcall FootballAttackerShootPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x0075dc20    83ec18
    asm("push               ebx");                                           // 0x0075dc23    53
    asm("push               esi");                                           // 0x0075dc24    56
    asm("push               edi");                                           // 0x0075dc25    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x28]");                   // 0x0075dc26    8b7c2428
    asm("mov.s              ebx, ecx");                                      // 0x0075dc2a    8bd9
    asm("push               ebx");                                           // 0x0075dc2c    53
    asm("mov.s              ecx, edi");                                      // 0x0075dc2d    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075dc2f    e82c4dddff
    asm("push               eax");                                           // 0x0075dc34    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075dc35    8d442410
    asm("push               eax");                                           // 0x0075dc39    50
    asm("mov.s              ecx, edi");                                      // 0x0075dc3a    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075dc3c    e83f50ddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075dc41    8d4c240c
    asm("push               ecx");                                           // 0x0075dc45    51
    asm("{disp8} lea        esi, dword ptr [ebx + 0x14]");                   // 0x0075dc46    8d7314
    asm("push               esi");                                           // 0x0075dc49    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075dc4a    e821f1feff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075dc4f    d81598a38a00
    asm("add                esp, 0x08");                                     // 0x0075dc55    83c408
    asm("fnstsw             ax");                                            // 0x0075dc58    dfe0
    asm("test               ah, 0x01");                                      // 0x0075dc5a    f6c401
    asm("{disp8} je         _jmp_addr_0x0075dc69");                          // 0x0075dc5d    740a
    asm("fstp               st(0)");                                         // 0x0075dc5f    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075dc61    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x0075dc7e");                          // 0x0075dc67    eb15
    asm("_jmp_addr_0x0075dc69:");
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x26300]");             // 0x0075dc69    d81500f38c00
    asm("fnstsw             ax");                                            // 0x0075dc6f    dfe0
    asm("test               ah, 0x41");                                      // 0x0075dc71    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075dc7e");                          // 0x0075dc74    7508
    asm("fstp               st(0)");                                         // 0x0075dc76    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x26300]");             // 0x0075dc78    d90500f38c00
    asm("_jmp_addr_0x0075dc7e:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2850c]");             // 0x0075dc7e    d80d0c158d00
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075dc84    d82d90a38a00
    asm("{disp8} fst        dword ptr [esp + 0x28]");                        // 0x0075dc8a    d9542428
    asm("{disp32} fcomp     dword ptr [__real@3dcccccd]");                   // 0x0075dc8e    d81d2cb28a00
    asm("fnstsw             ax");                                            // 0x0075dc94    dfe0
    asm("test               ah, 0x01");                                      // 0x0075dc96    f6c401
    asm("{disp8} je         _jmp_addr_0x0075dca5");                          // 0x0075dc99    740a
    asm("{disp8} mov        dword ptr [esp + 0x28], 0x3dcccccd");            // 0x0075dc9b    c7442428cdcccc3d
    asm("{disp8} jmp        _jmp_addr_0x0075dcbe");                          // 0x0075dca3    eb19
    asm("_jmp_addr_0x0075dca5:");
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x0075dca5    d9442428
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075dca9    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x0075dcaf    dfe0
    asm("test               ah, 0x41");                                      // 0x0075dcb1    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075dcbe");                          // 0x0075dcb4    7508
    asm("{disp8} mov        dword ptr [esp + 0x28], 0x3f800000");            // 0x0075dcb6    c74424280000803f
    asm("_jmp_addr_0x0075dcbe:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x0075dcbe    8d54240c
    asm("push               edx");                                           // 0x0075dcc2    52
    asm("push               esi");                                           // 0x0075dcc3    56
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                               // 0x0075dcc4    e877f5feff
    asm("add                esp, 0x08");                                     // 0x0075dcc9    83c408
    asm("push               ebx");                                           // 0x0075dccc    53
    asm("mov.s              ecx, edi");                                      // 0x0075dccd    8bcf
    asm("mov.s              esi, eax");                                      // 0x0075dccf    8bf0
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075dcd1    e88a4cddff
    asm("neg                eax");                                           // 0x0075dcd6    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075dcd8    1bc0
    asm("inc                eax");                                           // 0x0075dcda    40
    asm("push               eax");                                           // 0x0075dcdb    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                   // 0x0075dcdc    8d44241c
    asm("push               eax");                                           // 0x0075dce0    50
    asm("mov.s              ecx, edi");                                      // 0x0075dce1    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075dce3    e8984fddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075dce8    8d4c240c
    asm("push               ecx");                                           // 0x0075dcec    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x1c]");                   // 0x0075dced    8d54241c
    asm("push               edx");                                           // 0x0075dcf1    52
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                               // 0x0075dcf2    e849f5feff
    asm("sub.s              esi, eax");                                      // 0x0075dcf7    2bf0
    asm("mov.s              eax, esi");                                      // 0x0075dcf9    8bc6
    asm("add                esp, 0x08");                                     // 0x0075dcfb    83c408
    asm("cdq");                                                              // 0x0075dcfe    99
    asm("xor.s              eax, edx");                                      // 0x0075dcff    33c2
    asm("pop                edi");                                           // 0x0075dd01    5f
    asm("sub.s              eax, edx");                                      // 0x0075dd02    2bc2
    asm("cmp                eax, 0x00000400");                               // 0x0075dd04    3d00040000
    asm("pop                esi");                                           // 0x0075dd09    5e
    asm("pop                ebx");                                           // 0x0075dd0a    5b
    asm("{disp8} jbe        _jmp_addr_0x0075dd16");                          // 0x0075dd0b    7609
    asm("mov                ecx, 0x00000800");                               // 0x0075dd0d    b900080000
    asm("sub.s              ecx, eax");                                      // 0x0075dd12    2bc8
    asm("mov.s              eax, ecx");                                      // 0x0075dd14    8bc1
    asm("_jmp_addr_0x0075dd16:");
    asm("shr                eax, 0xb");                                      // 0x0075dd16    c1e80b
    asm("{disp8} mov        dword ptr [esp + 0x00], eax");                   // 0x0075dd19    89442400
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x0075dd1d    c744240400000000
    asm("{disp8} fild       qword ptr [esp + 0x00]");                        // 0x0075dd25    df6c2400
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075dd29    d82d90a38a00
    asm("{disp8} fst        dword ptr [esp + 0x00]");                        // 0x0075dd2f    d9542400
    asm("{disp32} fcomp     dword ptr [__real@3dcccccd]");                   // 0x0075dd33    d81d2cb28a00
    asm("fnstsw             ax");                                            // 0x0075dd39    dfe0
    asm("test               ah, 0x01");                                      // 0x0075dd3b    f6c401
    asm("{disp8} je         _jmp_addr_0x0075dd50");                          // 0x0075dd3e    7410
    asm("{disp32} fld       dword ptr [__real@3dcccccd]");                   // 0x0075dd40    d9052cb28a00
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                        // 0x0075dd46    d84c241c
    asm("add                esp, 0x18");                                     // 0x0075dd4a    83c418
    asm("ret                0x0004");                                        // 0x0075dd4d    c20400
    asm("_jmp_addr_0x0075dd50:");
    asm("{disp8} fld        dword ptr [esp + 0x00]");                        // 0x0075dd50    d9442400
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075dd54    d81d90a38a00
    asm("fnstsw             ax");                                            // 0x0075dd5a    dfe0
    asm("test               ah, 0x41");                                      // 0x0075dd5c    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075dd71");                          // 0x0075dd5f    7510
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075dd61    d90590a38a00
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                        // 0x0075dd67    d84c241c
    asm("add                esp, 0x18");                                     // 0x0075dd6b    83c418
    asm("ret                0x0004");                                        // 0x0075dd6e    c20400
    asm("_jmp_addr_0x0075dd71:");
    asm("{disp8} fld        dword ptr [esp + 0x00]");                        // 0x0075dd71    d9442400
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                        // 0x0075dd75    d84c241c
    asm("add                esp, 0x18");                                     // 0x0075dd79    83c418
    asm("ret                0x0004");                                        // 0x0075dd7c    c20400
    __builtin_unreachable();
}

float __fastcall FootballAttackerPassPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               ecx");                                           // 0x0075dd80    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075dd81    8b4c2408
    asm("call               _jmp_addr_0x00534820");                          // 0x0075dd85    e8966addff
    asm("dec                eax");                                           // 0x0075dd8a    48
    asm("{disp8} js         _jmp_addr_0x0075ddad");                          // 0x0075dd8b    7820
    asm("push               0x0000014b");                                    // 0x0075dd8d    684b010000
    asm("push               0x00c2443c");                                    // 0x0075dd92    683c44c200
    asm("push               0x3e4ccccd");                                    // 0x0075dd97    68cdcc4c3e
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075dd9c    e88f07f8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x1ba04]");             // 0x0075dda1    d805044a8c00
    asm("add                esp, 0x0c");                                     // 0x0075dda7    83c40c
    asm("ret                0x0004");                                        // 0x0075ddaa    c20400
    asm("_jmp_addr_0x0075ddad:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075ddad    d90598a38a00
    asm("ret                0x0004");                                        // 0x0075ddb3    c20400
    __builtin_unreachable();
}

float __fastcall FootballAttackerLobNearGoalPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075ddc0    d90598a38a00
    asm("ret                0x0004");                                        // 0x0075ddc6    c20400
    __builtin_unreachable();
}

float __fastcall FootballAttackerDribblePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075ddd0    83ec0c
    asm("push               esi");                                           // 0x0075ddd3    56
    asm("push               edi");                                           // 0x0075ddd4    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075ddd5    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075ddd9    8bf1
    asm("push               esi");                                           // 0x0075dddb    56
    asm("mov.s              ecx, edi");                                      // 0x0075dddc    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075ddde    e87d4bddff
    asm("push               eax");                                           // 0x0075dde3    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x0075dde4    8d44240c
    asm("push               eax");                                           // 0x0075dde8    50
    asm("mov.s              ecx, edi");                                      // 0x0075dde9    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075ddeb    e8904eddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075ddf0    8d4c2408
    asm("push               ecx");                                           // 0x0075ddf4    51
    asm("add                esi, 0x14");                                     // 0x0075ddf5    83c614
    asm("push               esi");                                           // 0x0075ddf8    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075ddf9    e872effeff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075ddfe    d81598a38a00
    asm("add                esp, 0x08");                                     // 0x0075de04    83c408
    asm("pop                edi");                                           // 0x0075de07    5f
    asm("pop                esi");                                           // 0x0075de08    5e
    asm("fnstsw             ax");                                            // 0x0075de09    dfe0
    asm("test               ah, 0x01");                                      // 0x0075de0b    f6c401
    asm("{disp8} je         _jmp_addr_0x0075de1a");                          // 0x0075de0e    740a
    asm("fstp               st(0)");                                         // 0x0075de10    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075de12    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x0075de2f");                          // 0x0075de18    eb15
    asm("_jmp_addr_0x0075de1a:");
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x26300]");             // 0x0075de1a    d81500f38c00
    asm("fnstsw             ax");                                            // 0x0075de20    dfe0
    asm("test               ah, 0x41");                                      // 0x0075de22    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075de2f");                          // 0x0075de25    7508
    asm("fstp               st(0)");                                         // 0x0075de27    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x26300]");             // 0x0075de29    d90500f38c00
    asm("_jmp_addr_0x0075de2f:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2850c]");             // 0x0075de2f    d80d0c158d00
    asm("{disp32} fcom      dword ptr [__real@3dcccccd]");                   // 0x0075de35    d8152cb28a00
    asm("fnstsw             ax");                                            // 0x0075de3b    dfe0
    asm("test               ah, 0x01");                                      // 0x0075de3d    f6c401
    asm("{disp8} je         _jmp_addr_0x0075de50");                          // 0x0075de40    740e
    asm("fstp               st(0)");                                         // 0x0075de42    ddd8
    asm("{disp32} fld       dword ptr [__real@3dcccccd]");                   // 0x0075de44    d9052cb28a00
    asm("add                esp, 0x0c");                                     // 0x0075de4a    83c40c
    asm("ret                0x0004");                                        // 0x0075de4d    c20400
    asm("_jmp_addr_0x0075de50:");
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x0075de50    d81590a38a00
    asm("fnstsw             ax");                                            // 0x0075de56    dfe0
    asm("test               ah, 0x41");                                      // 0x0075de58    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075de65");                          // 0x0075de5b    7508
    asm("fstp               st(0)");                                         // 0x0075de5d    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075de5f    d90590a38a00
    asm("_jmp_addr_0x0075de65:");
    asm("add                esp, 0x0c");                                     // 0x0075de65    83c40c
    asm("ret                0x0004");                                        // 0x0075de68    c20400
    __builtin_unreachable();
}

float __fastcall FootballAttackerMoveToBePassedPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075de70    56
    asm("mov.s              esi, ecx");                                      // 0x0075de71    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075de73    8b4c2408
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075de77    e89435ddff
    asm("add                eax, 0x14");                                     // 0x0075de7c    83c014
    asm("push               eax");                                           // 0x0075de7f    50
    asm("add                esi, 0x14");                                     // 0x0075de80    83c614
    asm("push               esi");                                           // 0x0075de83    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075de84    e8e7eefeff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075de89    d81598a38a00
    asm("add                esp, 0x08");                                     // 0x0075de8f    83c408
    asm("pop                esi");                                           // 0x0075de92    5e
    asm("fnstsw             ax");                                            // 0x0075de93    dfe0
    asm("test               ah, 0x01");                                      // 0x0075de95    f6c401
    asm("{disp8} je         _jmp_addr_0x0075dea4");                          // 0x0075de98    740a
    asm("fstp               st(0)");                                         // 0x0075de9a    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075de9c    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x0075deb9");                          // 0x0075dea2    eb15
    asm("_jmp_addr_0x0075dea4:");
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x1e658]");             // 0x0075dea4    d81558768c00
    asm("fnstsw             ax");                                            // 0x0075deaa    dfe0
    asm("test               ah, 0x41");                                      // 0x0075deac    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075deb9");                          // 0x0075deaf    7508
    asm("fstp               st(0)");                                         // 0x0075deb1    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x1e658]");             // 0x0075deb3    d90558768c00
    asm("_jmp_addr_0x0075deb9:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1ebd4]");             // 0x0075deb9    d80dd47b8c00
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075debf    d81598a38a00
    asm("fnstsw             ax");                                            // 0x0075dec5    dfe0
    asm("test               ah, 0x01");                                      // 0x0075dec7    f6c401
    asm("{disp8} je         _jmp_addr_0x0075ded7");                          // 0x0075deca    740b
    asm("fstp               st(0)");                                         // 0x0075decc    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075dece    d90598a38a00
    asm("ret                0x0004");                                        // 0x0075ded4    c20400
    asm("_jmp_addr_0x0075ded7:");
    asm("{disp32} fcom      dword ptr [__real@3e4ccccd]");                   // 0x0075ded7    d81544b28a00
    asm("fnstsw             ax");                                            // 0x0075dedd    dfe0
    asm("test               ah, 0x41");                                      // 0x0075dedf    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075deec");                          // 0x0075dee2    7508
    asm("fstp               st(0)");                                         // 0x0075dee4    ddd8
    asm("{disp32} fld       dword ptr [__real@3e4ccccd]");                   // 0x0075dee6    d90544b28a00
    asm("_jmp_addr_0x0075deec:");
    asm("ret                0x0004");                                        // 0x0075deec    c20400
    __builtin_unreachable();
}

float __fastcall FootballAttackerGoToBallPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075def0    d90598a38a00
    asm("ret                0x0004");                                        // 0x0075def6    c20400
    __builtin_unreachable();
}

float __fastcall FootballAttackerGoHomePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075df00    83ec0c
    asm("push               esi");                                           // 0x0075df03    56
    asm("push               edi");                                           // 0x0075df04    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075df05    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075df09    8bf1
    asm("push               esi");                                           // 0x0075df0b    56
    asm("mov.s              ecx, edi");                                      // 0x0075df0c    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075df0e    e84d4addff
    asm("neg                eax");                                           // 0x0075df13    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075df15    1bc0
    asm("inc                eax");                                           // 0x0075df17    40
    asm("push               eax");                                           // 0x0075df18    50
    asm("push               esi");                                           // 0x0075df19    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075df1a    8d442410
    asm("push               eax");                                           // 0x0075df1e    50
    asm("mov.s              ecx, edi");                                      // 0x0075df1f    8bcf
    asm("call               _jmp_addr_0x00532f60");                          // 0x0075df21    e83a50ddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075df26    8d4c2408
    asm("push               ecx");                                           // 0x0075df2a    51
    asm("add                esi, 0x14");                                     // 0x0075df2b    83c614
    asm("push               esi");                                           // 0x0075df2e    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075df2f    e83ceefeff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075df34    d81598a38a00
    asm("add                esp, 0x08");                                     // 0x0075df3a    83c408
    asm("pop                edi");                                           // 0x0075df3d    5f
    asm("pop                esi");                                           // 0x0075df3e    5e
    asm("fnstsw             ax");                                            // 0x0075df3f    dfe0
    asm("test               ah, 0x01");                                      // 0x0075df41    f6c401
    asm("{disp8} je         _jmp_addr_0x0075df50");                          // 0x0075df44    740a
    asm("fstp               st(0)");                                         // 0x0075df46    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075df48    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x0075df65");                          // 0x0075df4e    eb15
    asm("_jmp_addr_0x0075df50:");
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x1e658]");             // 0x0075df50    d81558768c00
    asm("fnstsw             ax");                                            // 0x0075df56    dfe0
    asm("test               ah, 0x41");                                      // 0x0075df58    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075df65");                          // 0x0075df5b    7508
    asm("fstp               st(0)");                                         // 0x0075df5d    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x1e658]");             // 0x0075df5f    d90558768c00
    asm("_jmp_addr_0x0075df65:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1ebd4]");             // 0x0075df65    d80dd47b8c00
    asm("{disp32} fcom      dword ptr [__real@3dcccccd]");                   // 0x0075df6b    d8152cb28a00
    asm("fnstsw             ax");                                            // 0x0075df71    dfe0
    asm("test               ah, 0x01");                                      // 0x0075df73    f6c401
    asm("{disp8} je         _jmp_addr_0x0075df86");                          // 0x0075df76    740e
    asm("fstp               st(0)");                                         // 0x0075df78    ddd8
    asm("{disp32} fld       dword ptr [__real@3dcccccd]");                   // 0x0075df7a    d9052cb28a00
    asm("add                esp, 0x0c");                                     // 0x0075df80    83c40c
    asm("ret                0x0004");                                        // 0x0075df83    c20400
    asm("_jmp_addr_0x0075df86:");
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x0075df86    d81590a38a00
    asm("fnstsw             ax");                                            // 0x0075df8c    dfe0
    asm("test               ah, 0x41");                                      // 0x0075df8e    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075df9b");                          // 0x0075df91    7508
    asm("fstp               st(0)");                                         // 0x0075df93    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075df95    d90590a38a00
    asm("_jmp_addr_0x0075df9b:");
    asm("add                esp, 0x0c");                                     // 0x0075df9b    83c40c
    asm("ret                0x0004");                                        // 0x0075df9e    c20400
    __builtin_unreachable();
}

float __fastcall FootballAttackerIdlePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075dfb0    83ec0c
    asm("push               ebx");                                           // 0x0075dfb3    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x14]");                   // 0x0075dfb4    8b5c2414
    asm("push               esi");                                           // 0x0075dfb8    56
    asm("mov.s              esi, ecx");                                      // 0x0075dfb9    8bf1
    asm("push               edi");                                           // 0x0075dfbb    57
    asm("mov.s              ecx, ebx");                                      // 0x0075dfbc    8bcb
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x0075dfbe    8d7e14
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075dfc1    e84a34ddff
    asm("add                eax, 0x14");                                     // 0x0075dfc6    83c014
    asm("push               eax");                                           // 0x0075dfc9    50
    asm("push               edi");                                           // 0x0075dfca    57
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075dfcb    e8a0edfeff
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x2414]");              // 0x0075dfd0    d81514b48a00
    asm("add                esp, 0x08");                                     // 0x0075dfd6    83c408
    asm("fnstsw             ax");                                            // 0x0075dfd9    dfe0
    asm("test               ah, 0x01");                                      // 0x0075dfdb    f6c401
    asm("{disp8} je         _jmp_addr_0x0075dfea");                          // 0x0075dfde    740a
    asm("fstp               st(0)");                                         // 0x0075dfe0    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x2414]");              // 0x0075dfe2    d90514b48a00
    asm("{disp8} jmp        _jmp_addr_0x0075dfff");                          // 0x0075dfe8    eb15
    asm("_jmp_addr_0x0075dfea:");
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x26300]");             // 0x0075dfea    d81500f38c00
    asm("fnstsw             ax");                                            // 0x0075dff0    dfe0
    asm("test               ah, 0x41");                                      // 0x0075dff2    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075dfff");                          // 0x0075dff5    7508
    asm("fstp               st(0)");                                         // 0x0075dff7    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x26300]");             // 0x0075dff9    d90500f38c00
    asm("_jmp_addr_0x0075dfff:");
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x2414]");              // 0x0075dfff    d82514b48a00
    asm("push               esi");                                           // 0x0075e005    56
    asm("mov.s              ecx, ebx");                                      // 0x0075e006    8bcb
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2850c]");             // 0x0075e008    d80d0c158d00
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0075e00e    d95c2420
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e012    e84949ddff
    asm("neg                eax");                                           // 0x0075e017    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075e019    1bc0
    asm("inc                eax");                                           // 0x0075e01b    40
    asm("push               eax");                                           // 0x0075e01c    50
    asm("push               esi");                                           // 0x0075e01d    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075e01e    8d442414
    asm("push               eax");                                           // 0x0075e022    50
    asm("mov.s              ecx, ebx");                                      // 0x0075e023    8bcb
    asm("call               _jmp_addr_0x00532f60");                          // 0x0075e025    e8364fddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075e02a    8d4c240c
    asm("push               ecx");                                           // 0x0075e02e    51
    asm("push               edi");                                           // 0x0075e02f    57
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075e030    e83bedfeff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075e035    d81598a38a00
    asm("add                esp, 0x08");                                     // 0x0075e03b    83c408
    asm("pop                edi");                                           // 0x0075e03e    5f
    asm("pop                esi");                                           // 0x0075e03f    5e
    asm("fnstsw             ax");                                            // 0x0075e040    dfe0
    asm("pop                ebx");                                           // 0x0075e042    5b
    asm("test               ah, 0x01");                                      // 0x0075e043    f6c401
    asm("{disp8} je         _jmp_addr_0x0075e052");                          // 0x0075e046    740a
    asm("fstp               st(0)");                                         // 0x0075e048    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075e04a    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x0075e067");                          // 0x0075e050    eb15
    asm("_jmp_addr_0x0075e052:");
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x2414]");              // 0x0075e052    d81514b48a00
    asm("fnstsw             ax");                                            // 0x0075e058    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e05a    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075e067");                          // 0x0075e05d    7508
    asm("fstp               st(0)");                                         // 0x0075e05f    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x2414]");              // 0x0075e061    d90514b48a00
    asm("_jmp_addr_0x0075e067:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3404]");              // 0x0075e067    d80d04c48a00
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075e06d    d82d90a38a00
    asm("{disp8} fmul       dword ptr [esp + 0x10]");                        // 0x0075e073    d84c2410
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075e077    d81598a38a00
    asm("fnstsw             ax");                                            // 0x0075e07d    dfe0
    asm("test               ah, 0x01");                                      // 0x0075e07f    f6c401
    asm("{disp8} je         _jmp_addr_0x0075e092");                          // 0x0075e082    740e
    asm("fstp               st(0)");                                         // 0x0075e084    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075e086    d90598a38a00
    asm("add                esp, 0x0c");                                     // 0x0075e08c    83c40c
    asm("ret                0x0004");                                        // 0x0075e08f    c20400
    asm("_jmp_addr_0x0075e092:");
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x0075e092    d81590a38a00
    asm("fnstsw             ax");                                            // 0x0075e098    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e09a    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075e0a7");                          // 0x0075e09d    7508
    asm("fstp               st(0)");                                         // 0x0075e09f    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075e0a1    d90590a38a00
    asm("_jmp_addr_0x0075e0a7:");
    asm("add                esp, 0x0c");                                     // 0x0075e0a7    83c40c
    asm("ret                0x0004");                                        // 0x0075e0aa    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall AssignFootballDefenderSubState__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x0075e0b0    83ec08
    asm("push               edi");                                           // 0x0075e0b3    57
    asm("mov.s              edi, ecx");                                      // 0x0075e0b4    8bf9
    asm("{disp32} mov       al, byte ptr [edi + 0x00000118]");               // 0x0075e0b6    8a8718010000
    asm("test               al, al");                                        // 0x0075e0bc    84c0
    asm("{disp32} je        _jmp_addr_0x0075e15f");                          // 0x0075e0be    0f849b000000
    asm("push               ebx");                                           // 0x0075e0c4    53
    asm("push               ebp");                                           // 0x0075e0c5    55
    asm("push               esi");                                           // 0x0075e0c6    56
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000008");            // 0x0075e0c7    c744241408000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0xb8d1b717");            // 0x0075e0cf    c744241017b7d1b8
    asm("xor.s              ebx, ebx");                                      // 0x0075e0d7    33db
    asm("mov                esi, 0x00c23bbc");                               // 0x0075e0d9    bebc3bc200
    asm("_jmp_addr_0x0075e0de:");
    asm("mov.s              ecx, edi");                                      // 0x0075e0de    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075e0e0    e8bb3dffff
    asm("mov                ecx, dword ptr [esi]");                          // 0x0075e0e5    8b0e
    asm("push               eax");                                           // 0x0075e0e7    50
    asm("add.s              ecx, edi");                                      // 0x0075e0e8    03cf
    asm("call               dword ptr [esi - 4]");                           // 0x0075e0ea    ff56fc
    asm("mov.s              ebp, eax");                                      // 0x0075e0ed    8be8
    asm("{disp8} mov        eax, dword ptr [esi + 0x0c]");                   // 0x0075e0ef    8b460c
    asm("test               eax, eax");                                      // 0x0075e0f2    85c0
    asm("{disp8} je         _jmp_addr_0x0075e10a");                          // 0x0075e0f4    7414
    asm("mov.s              ecx, edi");                                      // 0x0075e0f6    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075e0f8    e8a33dffff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x10]");                   // 0x0075e0fd    8b4e10
    asm("push               eax");                                           // 0x0075e100    50
    asm("add.s              ecx, edi");                                      // 0x0075e101    03cf
    asm("call               dword ptr [esi + 0xc]");                         // 0x0075e103    ff560c
    asm("test               eax, eax");                                      // 0x0075e106    85c0
    asm("{disp8} je         _jmp_addr_0x0075e135");                          // 0x0075e108    742b
    asm("_jmp_addr_0x0075e10a:");
    asm("test               ebp, ebp");                                      // 0x0075e10a    85ed
    asm("{disp8} je         _jmp_addr_0x0075e135");                          // 0x0075e10c    7427
    asm("mov.s              ecx, edi");                                      // 0x0075e10e    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075e110    e88b3dffff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x20]");                   // 0x0075e115    8b4e20
    asm("push               eax");                                           // 0x0075e118    50
    asm("add.s              ecx, edi");                                      // 0x0075e119    03cf
    asm("call               dword ptr [esi + 0x1c]");                        // 0x0075e11b    ff561c
    asm("{disp8} fcom       dword ptr [esp + 0x10]");                        // 0x0075e11e    d8542410
    asm("fnstsw             ax");                                            // 0x0075e122    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e124    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075e133");                          // 0x0075e127    750a
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075e129    d95c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                   // 0x0075e12d    895c2414
    asm("{disp8} jmp        _jmp_addr_0x0075e135");                          // 0x0075e131    eb02
    asm("_jmp_addr_0x0075e133:");
    asm("fstp               st(0)");                                         // 0x0075e133    ddd8
    asm("_jmp_addr_0x0075e135:");
    asm("add                esi, 0x00000080");                               // 0x0075e135    81c680000000
    asm("inc                ebx");                                           // 0x0075e13b    43
    asm("cmp                esi, 0x00c23fbc");                               // 0x0075e13c    81febc3fc200
    asm(".byte              0x72, 0x9a");// {disp8} jb _jmp_addr_0x0075e0de  // 0x0075e142    729a
    asm("{disp8} mov        al, byte ptr [esp + 0x14]");                     // 0x0075e144    8a442414
    asm("pop                esi");                                           // 0x0075e148    5e
    asm("{disp32} mov       byte ptr [edi + 0x0000008f], al");               // 0x0075e149    88878f000000
    asm("pop                ebp");                                           // 0x0075e14f    5d
    asm("{disp32} mov       byte ptr [edi + 0x00000118], 0x00");             // 0x0075e150    c6871801000000
    asm("{disp32} mov       byte ptr [edi + 0x00000119], 0x00");             // 0x0075e157    c6871901000000
    asm("pop                ebx");                                           // 0x0075e15e    5b
    asm("_jmp_addr_0x0075e15f:");
    asm("pop                edi");                                           // 0x0075e15f    5f
    asm("add                esp, 0x08");                                     // 0x0075e160    83c408
    asm("ret");                                                              // 0x0075e163    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FootballDefender__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075e170    56
    asm("push               edi");                                           // 0x0075e171    57
    asm("mov.s              esi, ecx");                                      // 0x0075e172    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075e174    e8273dffff
    asm("test               eax, eax");                                      // 0x0075e179    85c0
    asm("{disp32} je        _jmp_addr_0x0075e203");                          // 0x0075e17b    0f8482000000
    asm("mov.s              ecx, esi");                                      // 0x0075e181    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075e183    e8183dffff
    asm("mov.s              ecx, eax");                                      // 0x0075e188    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e18a    e88132ddff
    asm("test               eax, eax");                                      // 0x0075e18f    85c0
    asm("{disp8} je         _jmp_addr_0x0075e203");                          // 0x0075e191    7470
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                     // 0x0075e193    668b4658
    asm("cmp                ax, 0x0001");                                    // 0x0075e197    663d0100
    asm("{disp8} jl         _jmp_addr_0x0075e1f6");                          // 0x0075e19b    7c59
    asm("xor.s              eax, eax");                                      // 0x0075e19d    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008f]");               // 0x0075e19f    8a868f000000
    asm("mov.s              edi, eax");                                      // 0x0075e1a5    8bf8
    asm("cmp                edi, 0x08");                                     // 0x0075e1a7    83ff08
    asm(".byte              0x72, 0x8");// {disp8} jb _jmp_addr_0x0075e1b4   // 0x0075e1aa    7208
    asm("pop                edi");                                           // 0x0075e1ac    5f
    asm("mov                eax, 0x00000001");                               // 0x0075e1ad    b801000000
    asm("pop                esi");                                           // 0x0075e1b2    5e
    asm("ret");                                                              // 0x0075e1b3    c3
    asm("_jmp_addr_0x0075e1b4:");
    asm("mov.s              ecx, esi");                                      // 0x0075e1b4    8bce
    asm("shl                edi, 7");                                        // 0x0075e1b6    c1e707
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075e1b9    e8e23cffff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00c23bec]");             // 0x0075e1be    8b8fec3bc200
    asm("push               eax");                                           // 0x0075e1c4    50
    asm("add.s              ecx, esi");                                      // 0x0075e1c5    03ce
    asm("call               dword ptr [edi + data_bytes + 0x25dbe8]");       // 0x0075e1c7    ff97e83bc200
    asm("mov.s              ecx, esi");                                      // 0x0075e1cd    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075e1cf    e8cc3cffff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00c23bbc]");             // 0x0075e1d4    8b8fbc3bc200
    asm("push               eax");                                           // 0x0075e1da    50
    asm("add.s              ecx, esi");                                      // 0x0075e1db    03ce
    asm("call               dword ptr [edi + data_bytes + 0x25dbb8]");       // 0x0075e1dd    ff97b83bc200
    asm("test               eax, eax");                                      // 0x0075e1e3    85c0
    asm("{disp8} jne        _jmp_addr_0x0075e1fb");                          // 0x0075e1e5    7514
    asm("pop                edi");                                           // 0x0075e1e7    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e1e8    c6861801000001
    asm("mov                eax, 0x00000001");                               // 0x0075e1ef    b801000000
    asm("pop                esi");                                           // 0x0075e1f4    5e
    asm("ret");                                                              // 0x0075e1f5    c3
    asm("_jmp_addr_0x0075e1f6:");
    asm("inc                eax");                                           // 0x0075e1f6    40
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                     // 0x0075e1f7    66894658
    asm("_jmp_addr_0x0075e1fb:");
    asm("pop                edi");                                           // 0x0075e1fb    5f
    asm("mov                eax, 0x00000001");                               // 0x0075e1fc    b801000000
    asm("pop                esi");                                           // 0x0075e201    5e
    asm("ret");                                                              // 0x0075e202    c3
    asm("_jmp_addr_0x0075e203:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075e203    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075e205    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x0075e207    ff92c8080000
    asm("pop                edi");                                           // 0x0075e20d    5f
    asm("pop                esi");                                           // 0x0075e20e    5e
    asm("ret");                                                              // 0x0075e20f    c3
    __builtin_unreachable();
}

void __fastcall FootballDefenderSaveProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x0075e210    83ec18
    asm("push               ebx");                                           // 0x0075e213    53
    asm("push               ebp");                                           // 0x0075e214    55
    asm("push               esi");                                           // 0x0075e215    56
    asm("push               edi");                                           // 0x0075e216    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x2c]");                   // 0x0075e217    8b7c242c
    asm("mov.s              esi, ecx");                                      // 0x0075e21b    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075e21d    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e21f    e8ec31ddff
    asm("mov                ebp, dword ptr [esi]");                          // 0x0075e224    8b2e
    asm("mov.s              ecx, esi");                                      // 0x0075e226    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075e228    8bd8
    asm("call               dword ptr [ebp + 0x42c]");                       // 0x0075e22a    ff952c040000
    asm("push               ecx");                                           // 0x0075e230    51
    asm("fstp               dword ptr [esp]");                               // 0x0075e231    d91c24
    asm("push               ebx");                                           // 0x0075e234    53
    asm("mov.s              ecx, esi");                                      // 0x0075e235    8bce
    asm("call               dword ptr [ebp + 0x6b8]");                       // 0x0075e237    ff95b8060000
    asm("test               eax, eax");                                      // 0x0075e23d    85c0
    asm("{disp32} je        _jmp_addr_0x0075e35c");                          // 0x0075e23f    0f8417010000
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x0075e245    8b431c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075e248    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075e24a    8bce
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x0075e24c    8944242c
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075e250    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x2c]");                        // 0x0075e256    d85c242c
    asm("fnstsw             ax");                                            // 0x0075e25a    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e25c    f6c441
    asm("{disp32} jne       _jmp_addr_0x0075e35c");                          // 0x0075e25f    0f85f7000000
    asm("push               esi");                                           // 0x0075e265    56
    asm("mov.s              ecx, edi");                                      // 0x0075e266    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e268    e8f346ddff
    asm("push               eax");                                           // 0x0075e26d    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075e26e    8d442414
    asm("push               eax");                                           // 0x0075e272    50
    asm("mov.s              ecx, edi");                                      // 0x0075e273    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075e275    e8064addff
    asm("push               0x000001e9");                                    // 0x0075e27a    68e9010000
    asm("push               0x00c2443c");                                    // 0x0075e27f    683c44c200
    asm("push               0x41200000");                                    // 0x0075e284    6800002041
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e289    e8a202f8ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x26e4]");              // 0x0075e28e    d825e4b68a00
    asm("{disp8} fild       dword ptr [esp + 0x1c]");                        // 0x0075e294    db44241c
    asm("{disp32} fmul      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075e298    d80d80a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x0075e29e    d80d1cc48a00
    asm("fadd               st, st(1)");                                     // 0x0075e2a4    d8c1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x0075e2a6    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075e2ac    d83580a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075e2b2    e849310400
    asm("fstp               st(0)");                                         // 0x0075e2b7    ddd8
    asm("push               0x000001ea");                                    // 0x0075e2b9    68ea010000
    asm("push               0x00c2443c");                                    // 0x0075e2be    683c44c200
    asm("push               0x41200000");                                    // 0x0075e2c3    6800002041
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                   // 0x0075e2c8    89442428
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e2cc    e85f02f8ff
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x26e4]");              // 0x0075e2d1    d825e4b68a00
    asm("{disp8} fild       dword ptr [esp + 0x2c]");                        // 0x0075e2d7    db44242c
    asm("add                esp, 0x18");                                     // 0x0075e2db    83c418
    asm("{disp32} fmul      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075e2de    d80d80a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");              // 0x0075e2e4    d80d1cc48a00
    asm("fadd               st, st(1)");                                     // 0x0075e2ea    d8c1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");              // 0x0075e2ec    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_football_float10p0_0x0099a980]"); // 0x0075e2f2    d83580a99900
    asm("call               _jmp_addr_0x007a1400");                          // 0x0075e2f8    e803310400
    asm("fstp               st(0)");                                         // 0x0075e2fd    ddd8
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0075e2ff    8b4c2410
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                   // 0x0075e303    8b542418
    asm("push               0x1");                                           // 0x0075e307    6a01
    asm("push               0x000001ec");                                    // 0x0075e309    68ec010000
    asm("push               0x00c2443c");                                    // 0x0075e30e    683c44c200
    asm("push               0x40400000");                                    // 0x0075e313    6800004040
    asm("{disp8} mov        dword ptr [esp + 0x24], eax");                   // 0x0075e318    89442424
    asm("{disp8} mov        dword ptr [esp + 0x2c], ecx");                   // 0x0075e31c    894c242c
    asm("{disp8} mov        dword ptr [esp + 0x30], eax");                   // 0x0075e320    89442430
    asm("{disp8} mov        dword ptr [esp + 0x34], edx");                   // 0x0075e324    89542434
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e328    e80302f8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x19c70]");             // 0x0075e32d    d805702c8c00
    asm("add                esp, 0x08");                                     // 0x0075e333    83c408
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075e336    8d442424
    asm("fstp               dword ptr [esp]");                               // 0x0075e33a    d91c24
    asm("push               eax");                                           // 0x0075e33d    50
    asm("mov.s              ecx, ebx");                                      // 0x0075e33e    8bcb
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075e340    e8fb78cdff
    asm("pop                edi");                                           // 0x0075e345    5f
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075e346    66c746580000
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e34c    c6861801000001
    asm("pop                esi");                                           // 0x0075e353    5e
    asm("pop                ebp");                                           // 0x0075e354    5d
    asm("pop                ebx");                                           // 0x0075e355    5b
    asm("add                esp, 0x18");                                     // 0x0075e356    83c418
    asm("ret                0x0004");                                        // 0x0075e359    c20400
    asm("_jmp_addr_0x0075e35c:");
    asm("push               edi");                                           // 0x0075e35c    57
    asm("mov.s              ecx, esi");                                      // 0x0075e35d    8bce
    asm("call               ?FootballDefenderGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075e35f    e83c020000
    asm("pop                edi");                                           // 0x0075e364    5f
    asm("pop                esi");                                           // 0x0075e365    5e
    asm("pop                ebp");                                           // 0x0075e366    5d
    asm("pop                ebx");                                           // 0x0075e367    5b
    asm("add                esp, 0x18");                                     // 0x0075e368    83c418
    asm("ret                0x0004");                                        // 0x0075e36b    c20400
    __builtin_unreachable();
}

void __fastcall FootballDefenderClearProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075e370    8b442404
    asm("push               eax");                                           // 0x0075e374    50
    asm("call               ?FootballDefenderSaveProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075e375    e896feffff
    asm("ret                0x0004");                                        // 0x0075e37a    c20400
    __builtin_unreachable();
}

void __fastcall FootballDefenderDribbleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x50");                                     // 0x0075e380    83ec50
    asm("push               ebx");                                           // 0x0075e383    53
    asm("push               ebp");                                           // 0x0075e384    55
    asm("push               esi");                                           // 0x0075e385    56
    asm("push               edi");                                           // 0x0075e386    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x64]");                   // 0x0075e387    8b7c2464
    asm("mov.s              esi, ecx");                                      // 0x0075e38b    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075e38d    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e38f    e87c30ddff
    asm("mov                ebp, dword ptr [esi]");                          // 0x0075e394    8b2e
    asm("mov.s              ecx, esi");                                      // 0x0075e396    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075e398    8bd8
    asm("call               dword ptr [ebp + 0x42c]");                       // 0x0075e39a    ff952c040000
    asm("push               ecx");                                           // 0x0075e3a0    51
    asm("fstp               dword ptr [esp]");                               // 0x0075e3a1    d91c24
    asm("push               ebx");                                           // 0x0075e3a4    53
    asm("mov.s              ecx, esi");                                      // 0x0075e3a5    8bce
    asm("call               dword ptr [ebp + 0x6b8]");                       // 0x0075e3a7    ff95b8060000
    asm("test               eax, eax");                                      // 0x0075e3ad    85c0
    asm("{disp32} je        _jmp_addr_0x0075e54c");                          // 0x0075e3af    0f8497010000
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x0075e3b5    8b431c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075e3b8    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075e3ba    8bce
    asm("{disp8} mov        dword ptr [esp + 0x64], eax");                   // 0x0075e3bc    89442464
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075e3c0    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x64]");                        // 0x0075e3c6    d85c2464
    asm("fnstsw             ax");                                            // 0x0075e3ca    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e3cc    f6c441
    asm("{disp32} jne       _jmp_addr_0x0075e54c");                          // 0x0075e3cf    0f8577010000
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075e3d5    8d442424
    asm("push               eax");                                           // 0x0075e3d9    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075e3da    8d4e14
    asm("call               @GetLHPoint__9MapCoordsCFv@12");                 // 0x0075e3dd    e85e78eaff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                   // 0x0075e3e2    8d4c2430
    asm("push               ecx");                                           // 0x0075e3e6    51
    asm("push               esi");                                           // 0x0075e3e7    56
    asm("mov.s              ecx, edi");                                      // 0x0075e3e8    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e3ea    e87145ddff
    asm("push               eax");                                           // 0x0075e3ef    50
    asm("{disp8} lea        edx, dword ptr [esp + 0x44]");                   // 0x0075e3f0    8d542444
    asm("push               edx");                                           // 0x0075e3f4    52
    asm("mov.s              ecx, edi");                                      // 0x0075e3f5    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075e3f7    e88448ddff
    asm("mov.s              ecx, eax");                                      // 0x0075e3fc    8bc8
    asm("call               @GetLHPoint__9MapCoordsCFv@12");                 // 0x0075e3fe    e83d78eaff
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x0075e403    d9442430
    asm("{disp8} fsub       dword ptr [esp + 0x24]");                        // 0x0075e407    d8642424
    asm("{disp8} fld        dword ptr [esp + 0x34]");                        // 0x0075e40b    d9442434
    asm("{disp8} fsub       dword ptr [esp + 0x28]");                        // 0x0075e40f    d8642428
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x0075e413    d95c241c
    asm("{disp8} fld        dword ptr [esp + 0x38]");                        // 0x0075e417    d9442438
    asm("{disp8} fsub       dword ptr [esp + 0x2c]");                        // 0x0075e41b    d864242c
    asm("{disp8} fst        dword ptr [esp + 0x20]");                        // 0x0075e41f    d9542420
    asm("{disp8} fmul       dword ptr [esp + 0x20]");                        // 0x0075e423    d84c2420
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075e427    d95c2414
    asm("fld                st(0)");                                         // 0x0075e42b    d9c0
    asm("fmul               st, st(1)");                                     // 0x0075e42d    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075e42f    d95c2410
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x0075e433    d944241c
    asm("{disp8} fmul       dword ptr [esp + 0x1c]");                        // 0x0075e437    d84c241c
    asm("{disp8} fst        dword ptr [esp + 0x64]");                        // 0x0075e43b    d9542464
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                        // 0x0075e43f    d8442410
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x0075e443    d8442414
    asm("fsqrt");                                                            // 0x0075e447    d9fa
    asm("fld                st(1)");                                         // 0x0075e449    d9c1
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075e44b    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075e451    dfe0
    asm("test               ah, 0x40");                                      // 0x0075e453    f6c440
    asm("{disp8} je         _jmp_addr_0x0075e47a");                          // 0x0075e456    7422
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x0075e458    d944241c
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075e45c    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075e462    dfe0
    asm("test               ah, 0x40");                                      // 0x0075e464    f6c440
    asm("{disp8} je         _jmp_addr_0x0075e47a");                          // 0x0075e467    7411
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075e469    d9442420
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");                   // 0x0075e46d    d81d98a38a00
    asm("fnstsw             ax");                                            // 0x0075e473    dfe0
    asm("test               ah, 0x40");                                      // 0x0075e475    f6c440
    asm("{disp8} jne        _jmp_addr_0x0075e4a8");                          // 0x0075e478    752e
    asm("_jmp_addr_0x0075e47a:");
    asm("{disp8} fld        dword ptr [esp + 0x64]");                        // 0x0075e47a    d9442464
    asm("{disp8} fadd       dword ptr [esp + 0x10]");                        // 0x0075e47e    d8442410
    asm("{disp8} fadd       dword ptr [esp + 0x14]");                        // 0x0075e482    d8442414
    asm("fsqrt");                                                            // 0x0075e486    d9fa
    asm("{disp32} fdivr     dword ptr [_rdata_float1p0]");                   // 0x0075e488    d83d90a38a00
    asm("fld                st(0)");                                         // 0x0075e48e    d9c0
    asm("fmulp              st(3), st");                                     // 0x0075e490    decb
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                        // 0x0075e492    d944241c
    asm("fmul               st, st(1)");                                     // 0x0075e496    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x0075e498    d95c241c
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075e49c    d9442420
    asm("fmul               st, st(1)");                                     // 0x0075e4a0    d8c9
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                        // 0x0075e4a2    d95c2420
    asm("fstp               st(0)");                                         // 0x0075e4a6    ddd8
    asm("_jmp_addr_0x0075e4a8:");
    asm("{disp32} fmul      dword ptr [_rdata_float0p2]");                   // 0x0075e4a8    d80daca38a00
    asm("{disp8} lea        eax, dword ptr [esp + 0x48]");                   // 0x0075e4ae    8d442448
    asm("push               eax");                                           // 0x0075e4b2    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x58]");                   // 0x0075e4b3    8d4c2458
    asm("{disp8} fst        dword ptr [esp + 0x68]");                        // 0x0075e4b7    d9542468
    asm("fmulp              st(1), st");                                     // 0x0075e4bb    dec9
    asm("{disp8} fld        dword ptr [esp + 0x20]");                        // 0x0075e4bd    d9442420
    asm("{disp8} fmul       dword ptr [esp + 0x68]");                        // 0x0075e4c1    d84c2468
    asm("{disp8} fstp       dword ptr [esp + 0x44]");                        // 0x0075e4c5    d95c2444
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x0075e4c9    d9442424
    asm("{disp8} fmul       dword ptr [esp + 0x68]");                        // 0x0075e4cd    d84c2468
    asm("{disp8} fstp       dword ptr [esp + 0x48]");                        // 0x0075e4d1    d95c2448
    asm("{disp8} fadd       dword ptr [esp + 0x28]");                        // 0x0075e4d5    d8442428
    asm("{disp8} fstp       dword ptr [esp + 0x4c]");                        // 0x0075e4d9    d95c244c
    asm("{disp8} fld        dword ptr [esp + 0x44]");                        // 0x0075e4dd    d9442444
    asm("{disp8} fadd       dword ptr [esp + 0x2c]");                        // 0x0075e4e1    d844242c
    asm("{disp8} fstp       dword ptr [esp + 0x50]");                        // 0x0075e4e5    d95c2450
    asm("{disp8} fld        dword ptr [esp + 0x48]");                        // 0x0075e4e9    d9442448
    asm("{disp8} fadd       dword ptr [esp + 0x30]");                        // 0x0075e4ed    d8442430
    asm("{disp8} fstp       dword ptr [esp + 0x54]");                        // 0x0075e4f1    d95c2454
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x0075e4f5    e8664ceaff
    asm("push               esi");                                           // 0x0075e4fa    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x58]");                   // 0x0075e4fb    8d4c2458
    asm("push               ecx");                                           // 0x0075e4ff    51
    asm("mov.s              ecx, edi");                                      // 0x0075e500    8bcf
    asm("call               _jmp_addr_0x00532eb0");                          // 0x0075e502    e8a949ddff
    asm("push               0x1");                                           // 0x0075e507    6a01
    asm("push               0x00000208");                                    // 0x0075e509    6808020000
    asm("push               0x00c2443c");                                    // 0x0075e50e    683c44c200
    asm("push               0x3f800000");                                    // 0x0075e513    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e518    e81300f8ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x235c]");              // 0x0075e51d    d8055cb38a00
    asm("add                esp, 0x08");                                     // 0x0075e523    83c408
    asm("{disp8} lea        edx, dword ptr [esp + 0x5c]");                   // 0x0075e526    8d54245c
    asm("fstp               dword ptr [esp]");                               // 0x0075e52a    d91c24
    asm("push               edx");                                           // 0x0075e52d    52
    asm("mov.s              ecx, ebx");                                      // 0x0075e52e    8bcb
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075e530    e80b77cdff
    asm("pop                edi");                                           // 0x0075e535    5f
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075e536    66c746580000
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e53c    c6861801000001
    asm("pop                esi");                                           // 0x0075e543    5e
    asm("pop                ebp");                                           // 0x0075e544    5d
    asm("pop                ebx");                                           // 0x0075e545    5b
    asm("add                esp, 0x50");                                     // 0x0075e546    83c450
    asm("ret                0x0004");                                        // 0x0075e549    c20400
    asm("_jmp_addr_0x0075e54c:");
    asm("push               edi");                                           // 0x0075e54c    57
    asm("mov.s              ecx, esi");                                      // 0x0075e54d    8bce
    asm("call               ?FootballDefenderGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075e54f    e84c000000
    asm("pop                edi");                                           // 0x0075e554    5f
    asm("pop                esi");                                           // 0x0075e555    5e
    asm("pop                ebp");                                           // 0x0075e556    5d
    asm("pop                ebx");                                           // 0x0075e557    5b
    asm("add                esp, 0x50");                                     // 0x0075e558    83c450
    asm("ret                0x0004");                                        // 0x0075e55b    c20400
    __builtin_unreachable();
}

void __fastcall FootballDefenderMarkProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075e560    56
    asm("push               edi");                                           // 0x0075e561    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075e562    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x0075e566    8bf1
    asm("push               esi");                                           // 0x0075e568    56
    asm("mov.s              ecx, edi");                                      // 0x0075e569    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e56b    e8f043ddff
    asm("{disp32} mov       eax, dword ptr [edi + eax * 0x4 + 0x00000244]"); // 0x0075e570    8b848744020000
    asm("test               eax, eax");                                      // 0x0075e577    85c0
    asm("{disp8} je         _jmp_addr_0x0075e585");                          // 0x0075e579    740a
    asm("push               0x4b");                                          // 0x0075e57b    6a4b
    asm("push               eax");                                           // 0x0075e57d    50
    asm("mov.s              ecx, esi");                                      // 0x0075e57e    8bce
    asm("call               ?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z");                          // 0x0075e580    e80b2cffff
    asm("_jmp_addr_0x0075e585:");
    asm("pop                edi");                                           // 0x0075e585    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e586    c6861801000001
    asm("pop                esi");                                           // 0x0075e58d    5e
    asm("ret                0x0004");                                        // 0x0075e58e    c20400
    __builtin_unreachable();
}

void __fastcall FootballDefenderGoToBallProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075e5a0    83ec0c
    asm("push               ebx");                                           // 0x0075e5a3    53
    asm("push               ebp");                                           // 0x0075e5a4    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x18]");                   // 0x0075e5a5    8b6c2418
    asm("push               esi");                                           // 0x0075e5a9    56
    asm("mov.s              esi, ecx");                                      // 0x0075e5aa    8bf1
    asm("push               edi");                                           // 0x0075e5ac    57
    asm("mov.s              ecx, ebp");                                      // 0x0075e5ad    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e5af    e85c2eddff
    asm("mov                edi, dword ptr [esi]");                          // 0x0075e5b4    8b3e
    asm("mov.s              ecx, esi");                                      // 0x0075e5b6    8bce
    asm("mov.s              ebx, eax");                                      // 0x0075e5b8    8bd8
    asm("call               dword ptr [edi + 0x42c]");                       // 0x0075e5ba    ff972c040000
    asm("push               ecx");                                           // 0x0075e5c0    51
    asm("fstp               dword ptr [esp]");                               // 0x0075e5c1    d91c24
    asm("push               ebx");                                           // 0x0075e5c4    53
    asm("mov.s              ecx, esi");                                      // 0x0075e5c5    8bce
    asm("call               dword ptr [edi + 0x6b8]");                       // 0x0075e5c7    ff97b8060000
    asm("test               eax, eax");                                      // 0x0075e5cd    85c0
    asm("{disp8} je         _jmp_addr_0x0075e5fe");                          // 0x0075e5cf    742d
    asm("{disp8} mov        eax, dword ptr [ebx + 0x1c]");                   // 0x0075e5d1    8b431c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075e5d4    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075e5d6    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075e5d8    89442420
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075e5dc    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x20]");                        // 0x0075e5e2    d85c2420
    asm("fnstsw             ax");                                            // 0x0075e5e6    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e5e8    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075e5fe");                          // 0x0075e5eb    7511
    asm("pop                edi");                                           // 0x0075e5ed    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e5ee    c6861801000001
    asm("pop                esi");                                           // 0x0075e5f5    5e
    asm("pop                ebp");                                           // 0x0075e5f6    5d
    asm("pop                ebx");                                           // 0x0075e5f7    5b
    asm("add                esp, 0x0c");                                     // 0x0075e5f8    83c40c
    asm("ret                0x0004");                                        // 0x0075e5fb    c20400
    asm("_jmp_addr_0x0075e5fe:");
    asm("mov.s              ecx, ebp");                                      // 0x0075e5fe    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e600    e80b2eddff
    asm("test               byte ptr [eax + 0x24], 0x40");                   // 0x0075e605    f6402440
    asm("{disp8} je         _jmp_addr_0x0075e667");                          // 0x0075e609    745c
    asm("push               0x00000225");                                    // 0x0075e60b    6825020000
    asm("push               0x00c2443c");                                    // 0x0075e610    683c44c200
    asm("push               0x3");                                           // 0x0075e615    6a03
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x0075e617    e8f4fef7ff
    asm("add                esp, 0x0c");                                     // 0x0075e61c    83c40c
    asm("test               eax, eax");                                      // 0x0075e61f    85c0
    asm("{disp8} je         _jmp_addr_0x0075e667");                          // 0x0075e621    7444
    asm("add                ebx, 0x00000084");                               // 0x0075e623    81c384000000
    asm("mov                eax, dword ptr [ebx]");                          // 0x0075e629    8b03
    asm("{disp8} mov        ecx, dword ptr [ebx + 0x04]");                   // 0x0075e62b    8b4b04
    asm("{disp8} mov        edx, dword ptr [ebx + 0x08]");                   // 0x0075e62e    8b5308
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075e631    89442410
    asm("push               0x4b");                                          // 0x0075e635    6a4b
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075e637    8d442414
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x0075e63b    894c2418
    asm("push               eax");                                           // 0x0075e63f    50
    asm("mov.s              ecx, esi");                                      // 0x0075e640    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x0075e642    89542420
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075e646    e8b5510000
    asm("push               0x000000de");                                    // 0x0075e64b    68de000000
    asm("push               0x0");                                           // 0x0075e650    6a00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x0075e652    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x0075e658    e833e6e8ff
    asm("pop                edi");                                           // 0x0075e65d    5f
    asm("pop                esi");                                           // 0x0075e65e    5e
    asm("pop                ebp");                                           // 0x0075e65f    5d
    asm("pop                ebx");                                           // 0x0075e660    5b
    asm("add                esp, 0x0c");                                     // 0x0075e661    83c40c
    asm("ret                0x0004");                                        // 0x0075e664    c20400
    asm("_jmp_addr_0x0075e667:");
    asm("push               0x4b");                                          // 0x0075e667    6a4b
    asm("mov.s              ecx, ebp");                                      // 0x0075e669    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e66b    e8a02dddff
    asm("push               eax");                                           // 0x0075e670    50
    asm("mov.s              ecx, esi");                                      // 0x0075e671    8bce
    asm("call               ?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z");                          // 0x0075e673    e8182bffff
    asm("pop                edi");                                           // 0x0075e678    5f
    asm("pop                esi");                                           // 0x0075e679    5e
    asm("pop                ebp");                                           // 0x0075e67a    5d
    asm("pop                ebx");                                           // 0x0075e67b    5b
    asm("add                esp, 0x0c");                                     // 0x0075e67c    83c40c
    asm("ret                0x0004");                                        // 0x0075e67f    c20400
    __builtin_unreachable();
}

void __fastcall FootballDefenderGoHomeProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075e690    83ec0c
    asm("push               esi");                                           // 0x0075e693    56
    asm("push               edi");                                           // 0x0075e694    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075e695    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075e699    8bf1
    asm("push               esi");                                           // 0x0075e69b    56
    asm("mov.s              ecx, edi");                                      // 0x0075e69c    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e69e    e8bd42ddff
    asm("neg                eax");                                           // 0x0075e6a3    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075e6a5    1bc0
    asm("inc                eax");                                           // 0x0075e6a7    40
    asm("push               eax");                                           // 0x0075e6a8    50
    asm("push               esi");                                           // 0x0075e6a9    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075e6aa    8d442410
    asm("push               eax");                                           // 0x0075e6ae    50
    asm("mov.s              ecx, edi");                                      // 0x0075e6af    8bcf
    asm("call               _jmp_addr_0x00532f60");                          // 0x0075e6b1    e8aa48ddff
    asm("push               0x4b");                                          // 0x0075e6b6    6a4b
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075e6b8    8d4c240c
    asm("push               ecx");                                           // 0x0075e6bc    51
    asm("mov.s              ecx, esi");                                      // 0x0075e6bd    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075e6bf    e83c510000
    asm("pop                edi");                                           // 0x0075e6c4    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e6c5    c6861801000001
    asm("pop                esi");                                           // 0x0075e6cc    5e
    asm("add                esp, 0x0c");                                     // 0x0075e6cd    83c40c
    asm("ret                0x0004");                                        // 0x0075e6d0    c20400
    __builtin_unreachable();
}

void __fastcall FootballDefenderIdleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075e6e0    56
    asm("push               edi");                                           // 0x0075e6e1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075e6e2    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x0075e6e6    8bf1
    asm("push               0x1");                                           // 0x0075e6e8    6a01
    asm("mov.s              ecx, edi");                                      // 0x0075e6ea    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e6ec    e81f2dddff
    asm("push               eax");                                           // 0x0075e6f1    50
    asm("mov.s              ecx, esi");                                      // 0x0075e6f2    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0075e6f4    e827dee8ff
    asm("push               esi");                                           // 0x0075e6f9    56
    asm("mov.s              ecx, edi");                                      // 0x0075e6fa    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e6fc    e85f42ddff
    asm("cmp                word ptr [esi + 0x58], 0x0258");                 // 0x0075e701    66817e585802
    asm("{disp8} jge        _jmp_addr_0x0075e716");                          // 0x0075e707    7d0d
    asm("push               esi");                                           // 0x0075e709    56
    asm("mov.s              ecx, edi");                                      // 0x0075e70a    8bcf
    asm("call               _jmp_addr_0x005347c0");                          // 0x0075e70c    e8af60ddff
    asm("cmp                eax, 0x02");                                     // 0x0075e711    83f802
    asm("{disp8} jae        _jmp_addr_0x0075e71d");                          // 0x0075e714    7307
    asm("_jmp_addr_0x0075e716:");
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e716    c6861801000001
    asm("_jmp_addr_0x0075e71d:");
    asm("pop                edi");                                           // 0x0075e71d    5f
    asm("pop                esi");                                           // 0x0075e71e    5e
    asm("ret                0x0004");                                        // 0x0075e71f    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall FootballDefenderPassProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075e730    83ec0c
    asm("push               ebx");                                           // 0x0075e733    53
    asm("push               ebp");                                           // 0x0075e734    55
    asm("push               esi");                                           // 0x0075e735    56
    asm("push               edi");                                           // 0x0075e736    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x0075e737    8b7c2420
    asm("mov.s              esi, ecx");                                      // 0x0075e73b    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075e73d    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075e73f    e8cc2cddff
    asm("mov                ebx, dword ptr [esi]");                          // 0x0075e744    8b1e
    asm("mov.s              ecx, esi");                                      // 0x0075e746    8bce
    asm("mov.s              ebp, eax");                                      // 0x0075e748    8be8
    asm("call               dword ptr [ebx + 0x42c]");                       // 0x0075e74a    ff932c040000
    asm("push               ecx");                                           // 0x0075e750    51
    asm("fstp               dword ptr [esp]");                               // 0x0075e751    d91c24
    asm("push               ebp");                                           // 0x0075e754    55
    asm("mov.s              ecx, esi");                                      // 0x0075e755    8bce
    asm("call               dword ptr [ebx + 0x6b8]");                       // 0x0075e757    ff93b8060000
    asm("test               eax, eax");                                      // 0x0075e75d    85c0
    asm("{disp32} je        _jmp_addr_0x0075e879");                          // 0x0075e75f    0f8414010000
    asm("{disp8} mov        eax, dword ptr [ebp + 0x1c]");                   // 0x0075e765    8b451c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075e768    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075e76a    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075e76c    89442420
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075e770    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x20]");                        // 0x0075e776    d85c2420
    asm("fnstsw             ax");                                            // 0x0075e77a    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e77c    f6c441
    asm("{disp32} jne       _jmp_addr_0x0075e879");                          // 0x0075e77f    0f85f4000000
    asm("push               esi");                                           // 0x0075e785    56
    asm("mov.s              ecx, edi");                                      // 0x0075e786    8bcf
    asm("call               _jmp_addr_0x00534820");                          // 0x0075e788    e89360ddff
    asm("mov.s              ebx, eax");                                      // 0x0075e78d    8bd8
    asm("dec                ebx");                                           // 0x0075e78f    4b
    asm("{disp32} js        _jmp_addr_0x0075e868");                          // 0x0075e790    0f88d2000000
    asm("push               esi");                                           // 0x0075e796    56
    asm("mov.s              ecx, edi");                                      // 0x0075e797    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e799    e8c241ddff
    asm("neg                eax");                                           // 0x0075e79e    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075e7a0    1bc0
    asm("inc                eax");                                           // 0x0075e7a2    40
    asm("{disp32} mov       ecx, dword ptr [edi + eax * 0x8 + 0x00000238]"); // 0x0075e7a3    8b8cc738020000
    asm("test               ecx, ecx");                                      // 0x0075e7aa    85c9
    asm("{disp32} lea       eax, dword ptr [edi + eax * 0x8 + 0x00000234]"); // 0x0075e7ac    8d84c734020000
    asm("{disp8} jbe        _jmp_addr_0x0075e7cc");                          // 0x0075e7b3    7617
    asm("mov                eax, dword ptr [eax]");                          // 0x0075e7b5    8b00
    asm("test               eax, eax");                                      // 0x0075e7b7    85c0
    asm("{disp8} je         _jmp_addr_0x0075e7cc");                          // 0x0075e7b9    7411
    asm("cmp.s              ebx, ecx");                                      // 0x0075e7bb    3bd9
    asm("{disp8} jge        _jmp_addr_0x0075e7cc");                          // 0x0075e7bd    7d0d
    asm("test               ebx, ebx");                                      // 0x0075e7bf    85db
    asm("{disp8} jle        _jmp_addr_0x0075e7c8");                          // 0x0075e7c1    7e05
    asm("_jmp_addr_0x0075e7c3:");
    asm("dec                ebx");                                           // 0x0075e7c3    4b
    asm("mov                eax, dword ptr [eax]");                          // 0x0075e7c4    8b00
    asm("{disp8} jne        _jmp_addr_0x0075e7c3");                          // 0x0075e7c6    75fb
    asm("_jmp_addr_0x0075e7c8:");
    asm("test               eax, eax");                                      // 0x0075e7c8    85c0
    asm("{disp8} jne        _jmp_addr_0x0075e7d0");                          // 0x0075e7ca    7504
    asm("_jmp_addr_0x0075e7cc:");
    asm("xor.s              edi, edi");                                      // 0x0075e7cc    33ff
    asm("{disp8} jmp        _jmp_addr_0x0075e7d3");                          // 0x0075e7ce    eb03
    asm("_jmp_addr_0x0075e7d0:");
    asm("{disp8} mov        edi, dword ptr [eax + 0x04]");                   // 0x0075e7d0    8b7804
    asm("_jmp_addr_0x0075e7d3:");
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x0075e7d3    8d4714
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075e7d6    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075e7d8    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075e7dc    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075e7df    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075e7e3    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075e7e6    89442418
    asm("mov                edx, dword ptr [edi]");                          // 0x0075e7ea    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075e7ec    8bcf
    asm("call               dword ptr [edx + 0x174]");                       // 0x0075e7ee    ff9274010000
    asm("test               eax, eax");                                      // 0x0075e7f4    85c0
    asm("{disp8} je         _jmp_addr_0x0075e816");                          // 0x0075e7f6    741e
    asm("mov                eax, dword ptr [edi]");                          // 0x0075e7f8    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075e7fa    8bcf
    asm("call               dword ptr [eax + 0x860]");                       // 0x0075e7fc    ff9060080000
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075e802    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075e804    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075e808    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075e80b    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075e80f    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075e812    89442418
    asm("_jmp_addr_0x0075e816:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x0075e816    8d4c2410
    asm("push               ecx");                                           // 0x0075e81a    51
    asm("{disp8} lea        edx, dword ptr [ebp + 0x14]");                   // 0x0075e81b    8d5514
    asm("push               edx");                                           // 0x0075e81e    52
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075e81f    e84ce5feff
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075e824    d81d90a38a00
    asm("add                esp, 0x08");                                     // 0x0075e82a    83c408
    asm("fnstsw             ax");                                            // 0x0075e82d    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e82f    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075e868");                          // 0x0075e832    7534
    asm("push               0x1");                                           // 0x0075e834    6a01
    asm("push               0x00000255");                                    // 0x0075e836    6855020000
    asm("push               0x00c2443c");                                    // 0x0075e83b    683c44c200
    asm("push               0x3f800000");                                    // 0x0075e840    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e845    e8e6fcf7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x235c]");              // 0x0075e84a    d8055cb38a00
    asm("add                esp, 0x08");                                     // 0x0075e850    83c408
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x0075e853    8d442418
    asm("fstp               dword ptr [esp]");                               // 0x0075e857    d91c24
    asm("push               eax");                                           // 0x0075e85a    50
    asm("mov.s              ecx, ebp");                                      // 0x0075e85b    8bcd
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075e85d    e8de73cdff
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075e862    66c746580000
    asm("_jmp_addr_0x0075e868:");
    asm("pop                edi");                                           // 0x0075e868    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075e869    c6861801000001
    asm("pop                esi");                                           // 0x0075e870    5e
    asm("pop                ebp");                                           // 0x0075e871    5d
    asm("pop                ebx");                                           // 0x0075e872    5b
    asm("add                esp, 0x0c");                                     // 0x0075e873    83c40c
    asm("ret                0x0004");                                        // 0x0075e876    c20400
    asm("_jmp_addr_0x0075e879:");
    asm("push               edi");                                           // 0x0075e879    57
    asm("mov.s              ecx, esi");                                      // 0x0075e87a    8bce
    asm("call               ?FootballDefenderGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075e87c    e81ffdffff
    asm("pop                edi");                                           // 0x0075e881    5f
    asm("pop                esi");                                           // 0x0075e882    5e
    asm("pop                ebp");                                           // 0x0075e883    5d
    asm("pop                ebx");                                           // 0x0075e884    5b
    asm("add                esp, 0x0c");                                     // 0x0075e885    83c40c
    asm("ret                0x0004");                                        // 0x0075e888    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderSavePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               0x00000267");                                    // 0x0075e890    6867020000
    asm("push               0x00c2443c");                                    // 0x0075e895    683c44c200
    asm("push               0x3e99999a");                                    // 0x0075e89a    689a99993e
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e89f    e88cfcf7ff
    asm("{disp32} fadd      dword ptr [__real@3f333333]");                   // 0x0075e8a4    d80538b28a00
    asm("add                esp, 0x0c");                                     // 0x0075e8aa    83c40c
    asm("ret                0x0004");                                        // 0x0075e8ad    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderClearPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               0x0000026e");                                    // 0x0075e8b0    686e020000
    asm("push               0x00c2443c");                                    // 0x0075e8b5    683c44c200
    asm("push               0x3ecccccd");                                    // 0x0075e8ba    68cdcccc3e
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e8bf    e86cfcf7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x1ebdc]");             // 0x0075e8c4    d805dc7b8c00
    asm("add                esp, 0x0c");                                     // 0x0075e8ca    83c40c
    asm("ret                0x0004");                                        // 0x0075e8cd    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderDribblePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075e8d0    83ec0c
    asm("push               esi");                                           // 0x0075e8d3    56
    asm("push               edi");                                           // 0x0075e8d4    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075e8d5    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075e8d9    8bf1
    asm("push               esi");                                           // 0x0075e8db    56
    asm("mov.s              ecx, edi");                                      // 0x0075e8dc    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075e8de    e87d40ddff
    asm("push               eax");                                           // 0x0075e8e3    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x0075e8e4    8d44240c
    asm("push               eax");                                           // 0x0075e8e8    50
    asm("mov.s              ecx, edi");                                      // 0x0075e8e9    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075e8eb    e89043ddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075e8f0    8d4c2408
    asm("push               ecx");                                           // 0x0075e8f4    51
    asm("add                esi, 0x14");                                     // 0x0075e8f5    83c614
    asm("push               esi");                                           // 0x0075e8f8    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075e8f9    e872e4feff
    asm("{disp32} fcom      dword ptr [_rdata_float0p0]");                   // 0x0075e8fe    d81598a38a00
    asm("add                esp, 0x08");                                     // 0x0075e904    83c408
    asm("pop                edi");                                           // 0x0075e907    5f
    asm("pop                esi");                                           // 0x0075e908    5e
    asm("fnstsw             ax");                                            // 0x0075e909    dfe0
    asm("test               ah, 0x01");                                      // 0x0075e90b    f6c401
    asm("{disp8} je         _jmp_addr_0x0075e91a");                          // 0x0075e90e    740a
    asm("fstp               st(0)");                                         // 0x0075e910    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075e912    d90598a38a00
    asm("{disp8} jmp        _jmp_addr_0x0075e92f");                          // 0x0075e918    eb15
    asm("_jmp_addr_0x0075e91a:");
    asm("{disp32} fcom      dword ptr [rdata_bytes + 0x26300]");             // 0x0075e91a    d81500f38c00
    asm("fnstsw             ax");                                            // 0x0075e920    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e922    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075e92f");                          // 0x0075e925    7508
    asm("fstp               st(0)");                                         // 0x0075e927    ddd8
    asm("{disp32} fld       dword ptr [rdata_bytes + 0x26300]");             // 0x0075e929    d90500f38c00
    asm("_jmp_addr_0x0075e92f:");
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2850c]");             // 0x0075e92f    d80d0c158d00
    asm("{disp32} fcom      dword ptr [__real@3dcccccd]");                   // 0x0075e935    d8152cb28a00
    asm("fnstsw             ax");                                            // 0x0075e93b    dfe0
    asm("test               ah, 0x01");                                      // 0x0075e93d    f6c401
    asm("{disp8} je         _jmp_addr_0x0075e950");                          // 0x0075e940    740e
    asm("fstp               st(0)");                                         // 0x0075e942    ddd8
    asm("{disp32} fld       dword ptr [__real@3dcccccd]");                   // 0x0075e944    d9052cb28a00
    asm("add                esp, 0x0c");                                     // 0x0075e94a    83c40c
    asm("ret                0x0004");                                        // 0x0075e94d    c20400
    asm("_jmp_addr_0x0075e950:");
    asm("{disp32} fcom      dword ptr [_rdata_float1p0]");                   // 0x0075e950    d81590a38a00
    asm("fnstsw             ax");                                            // 0x0075e956    dfe0
    asm("test               ah, 0x41");                                      // 0x0075e958    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075e965");                          // 0x0075e95b    7508
    asm("fstp               st(0)");                                         // 0x0075e95d    ddd8
    asm("{disp32} fld       dword ptr [_rdata_float1p0]");                   // 0x0075e95f    d90590a38a00
    asm("_jmp_addr_0x0075e965:");
    asm("add                esp, 0x0c");                                     // 0x0075e965    83c40c
    asm("ret                0x0004");                                        // 0x0075e968    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderMarkPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               0x00000280");                                    // 0x0075e970    6880020000
    asm("push               0x00c2443c");                                    // 0x0075e975    683c44c200
    asm("push               0x3f800000");                                    // 0x0075e97a    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e97f    e8acfbf7ff
    asm("add                esp, 0x0c");                                     // 0x0075e984    83c40c
    asm("ret                0x0004");                                        // 0x0075e987    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderGoToBallPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075e990    d90598a38a00
    asm("ret                0x0004");                                        // 0x0075e996    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderGoHomePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075e9a0    8b442404
    asm("push               eax");                                           // 0x0075e9a4    50
    asm("call               ?FootballAttackerGoHomePriority@Villager@@QAEMPAVFootball@@@Z");                          // 0x0075e9a5    e856f5ffff
    asm("ret                0x0004");                                        // 0x0075e9aa    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderIdlePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075e9b0    8b442404
    asm("push               eax");                                           // 0x0075e9b4    50
    asm("call               ?FootballDefenderGoHomePriority@Villager@@QAEMPAVFootball@@@Z");                          // 0x0075e9b5    e8e6ffffff
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075e9ba    d82d90a38a00
    asm("ret                0x0004");                                        // 0x0075e9c0    c20400
    __builtin_unreachable();
}

float __fastcall FootballDefenderPassPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               ecx");                                           // 0x0075e9d0    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075e9d1    8b4c2408
    asm("call               _jmp_addr_0x00534820");                          // 0x0075e9d5    e8465eddff
    asm("dec                eax");                                           // 0x0075e9da    48
    asm("{disp8} js         _jmp_addr_0x0075e9fd");                          // 0x0075e9db    7820
    asm("push               0x0000029e");                                    // 0x0075e9dd    689e020000
    asm("push               0x00c2443c");                                    // 0x0075e9e2    683c44c200
    asm("push               0x3e4ccccd");                                    // 0x0075e9e7    68cdcc4c3e
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075e9ec    e83ffbf7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x1ba04]");             // 0x0075e9f1    d805044a8c00
    asm("add                esp, 0x0c");                                     // 0x0075e9f7    83c40c
    asm("ret                0x0004");                                        // 0x0075e9fa    c20400
    asm("_jmp_addr_0x0075e9fd:");
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075e9fd    d90598a38a00
    asm("ret                0x0004");                                        // 0x0075ea03    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FootballGoalie__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075ea10    56
    asm("push               edi");                                           // 0x0075ea11    57
    asm("mov.s              esi, ecx");                                      // 0x0075ea12    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075ea14    e88734ffff
    asm("test               eax, eax");                                      // 0x0075ea19    85c0
    asm("{disp32} je        _jmp_addr_0x0075eaa3");                          // 0x0075ea1b    0f8482000000
    asm("mov.s              ecx, esi");                                      // 0x0075ea21    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075ea23    e87834ffff
    asm("mov.s              ecx, eax");                                      // 0x0075ea28    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075ea2a    e8e129ddff
    asm("test               eax, eax");                                      // 0x0075ea2f    85c0
    asm("{disp8} je         _jmp_addr_0x0075eaa3");                          // 0x0075ea31    7470
    asm("{disp8} mov        ax, word ptr [esi + 0x58]");                     // 0x0075ea33    668b4658
    asm("cmp                ax, 0x0001");                                    // 0x0075ea37    663d0100
    asm("{disp8} jl         _jmp_addr_0x0075ea96");                          // 0x0075ea3b    7c59
    asm("xor.s              eax, eax");                                      // 0x0075ea3d    33c0
    asm("{disp32} mov       al, byte ptr [esi + 0x0000008f]");               // 0x0075ea3f    8a868f000000
    asm("mov.s              edi, eax");                                      // 0x0075ea45    8bf8
    asm("cmp                edi, 0x07");                                     // 0x0075ea47    83ff07
    asm(".byte              0x72, 0x8");// {disp8} jb _jmp_addr_0x0075ea54   // 0x0075ea4a    7208
    asm("pop                edi");                                           // 0x0075ea4c    5f
    asm("mov                eax, 0x00000001");                               // 0x0075ea4d    b801000000
    asm("pop                esi");                                           // 0x0075ea52    5e
    asm("ret");                                                              // 0x0075ea53    c3
    asm("_jmp_addr_0x0075ea54:");
    asm("mov.s              ecx, esi");                                      // 0x0075ea54    8bce
    asm("shl                edi, 7");                                        // 0x0075ea56    c1e707
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075ea59    e84234ffff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00c23fec]");             // 0x0075ea5e    8b8fec3fc200
    asm("push               eax");                                           // 0x0075ea64    50
    asm("add.s              ecx, esi");                                      // 0x0075ea65    03ce
    asm("call               dword ptr [edi + data_bytes + 0x25dfe8]");       // 0x0075ea67    ff97e83fc200
    asm("mov.s              ecx, esi");                                      // 0x0075ea6d    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075ea6f    e82c34ffff
    asm("{disp32} mov       ecx, dword ptr [edi + 0x00c23fbc]");             // 0x0075ea74    8b8fbc3fc200
    asm("push               eax");                                           // 0x0075ea7a    50
    asm("add.s              ecx, esi");                                      // 0x0075ea7b    03ce
    asm("call               dword ptr [edi + data_bytes + 0x25dfb8]");       // 0x0075ea7d    ff97b83fc200
    asm("test               eax, eax");                                      // 0x0075ea83    85c0
    asm("{disp8} jne        _jmp_addr_0x0075ea9b");                          // 0x0075ea85    7514
    asm("pop                edi");                                           // 0x0075ea87    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ea88    c6861801000001
    asm("mov                eax, 0x00000001");                               // 0x0075ea8f    b801000000
    asm("pop                esi");                                           // 0x0075ea94    5e
    asm("ret");                                                              // 0x0075ea95    c3
    asm("_jmp_addr_0x0075ea96:");
    asm("inc                eax");                                           // 0x0075ea96    40
    asm("{disp8} mov        word ptr [esi + 0x58], ax");                     // 0x0075ea97    66894658
    asm("_jmp_addr_0x0075ea9b:");
    asm("pop                edi");                                           // 0x0075ea9b    5f
    asm("mov                eax, 0x00000001");                               // 0x0075ea9c    b801000000
    asm("pop                esi");                                           // 0x0075eaa1    5e
    asm("ret");                                                              // 0x0075eaa2    c3
    asm("_jmp_addr_0x0075eaa3:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075eaa3    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075eaa5    8bce
    asm("call               dword ptr [edx + 0x8c8]");                       // 0x0075eaa7    ff92c8080000
    asm("pop                edi");                                           // 0x0075eaad    5f
    asm("pop                esi");                                           // 0x0075eaae    5e
    asm("ret");                                                              // 0x0075eaaf    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall AssignFootballGoalieSubState__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                     // 0x0075eab0    83ec08
    asm("push               edi");                                           // 0x0075eab3    57
    asm("mov.s              edi, ecx");                                      // 0x0075eab4    8bf9
    asm("{disp32} mov       al, byte ptr [edi + 0x00000118]");               // 0x0075eab6    8a8718010000
    asm("test               al, al");                                        // 0x0075eabc    84c0
    asm("{disp32} je        _jmp_addr_0x0075eb5f");                          // 0x0075eabe    0f849b000000
    asm("push               ebx");                                           // 0x0075eac4    53
    asm("push               ebp");                                           // 0x0075eac5    55
    asm("push               esi");                                           // 0x0075eac6    56
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000007");            // 0x0075eac7    c744241407000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0xb8d1b717");            // 0x0075eacf    c744241017b7d1b8
    asm("xor.s              ebx, ebx");                                      // 0x0075ead7    33db
    asm("mov                esi, 0x00c23fbc");                               // 0x0075ead9    bebc3fc200
    asm("_jmp_addr_0x0075eade:");
    asm("mov.s              ecx, edi");                                      // 0x0075eade    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075eae0    e8bb33ffff
    asm("mov                ecx, dword ptr [esi]");                          // 0x0075eae5    8b0e
    asm("push               eax");                                           // 0x0075eae7    50
    asm("add.s              ecx, edi");                                      // 0x0075eae8    03cf
    asm("call               dword ptr [esi - 4]");                           // 0x0075eaea    ff56fc
    asm("mov.s              ebp, eax");                                      // 0x0075eaed    8be8
    asm("{disp8} mov        eax, dword ptr [esi + 0x0c]");                   // 0x0075eaef    8b460c
    asm("test               eax, eax");                                      // 0x0075eaf2    85c0
    asm("{disp8} je         _jmp_addr_0x0075eb0a");                          // 0x0075eaf4    7414
    asm("mov.s              ecx, edi");                                      // 0x0075eaf6    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075eaf8    e8a333ffff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x10]");                   // 0x0075eafd    8b4e10
    asm("push               eax");                                           // 0x0075eb00    50
    asm("add.s              ecx, edi");                                      // 0x0075eb01    03cf
    asm("call               dword ptr [esi + 0xc]");                         // 0x0075eb03    ff560c
    asm("test               eax, eax");                                      // 0x0075eb06    85c0
    asm("{disp8} je         _jmp_addr_0x0075eb35");                          // 0x0075eb08    742b
    asm("_jmp_addr_0x0075eb0a:");
    asm("test               ebp, ebp");                                      // 0x0075eb0a    85ed
    asm("{disp8} je         _jmp_addr_0x0075eb35");                          // 0x0075eb0c    7427
    asm("mov.s              ecx, edi");                                      // 0x0075eb0e    8bcf
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075eb10    e88b33ffff
    asm("{disp8} mov        ecx, dword ptr [esi + 0x20]");                   // 0x0075eb15    8b4e20
    asm("push               eax");                                           // 0x0075eb18    50
    asm("add.s              ecx, edi");                                      // 0x0075eb19    03cf
    asm("call               dword ptr [esi + 0x1c]");                        // 0x0075eb1b    ff561c
    asm("{disp8} fcom       dword ptr [esp + 0x10]");                        // 0x0075eb1e    d8542410
    asm("fnstsw             ax");                                            // 0x0075eb22    dfe0
    asm("test               ah, 0x41");                                      // 0x0075eb24    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075eb33");                          // 0x0075eb27    750a
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x0075eb29    d95c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                   // 0x0075eb2d    895c2414
    asm("{disp8} jmp        _jmp_addr_0x0075eb35");                          // 0x0075eb31    eb02
    asm("_jmp_addr_0x0075eb33:");
    asm("fstp               st(0)");                                         // 0x0075eb33    ddd8
    asm("_jmp_addr_0x0075eb35:");
    asm("add                esi, 0x00000080");                               // 0x0075eb35    81c680000000
    asm("inc                ebx");                                           // 0x0075eb3b    43
    asm("cmp                esi, 0x00c2433c");                               // 0x0075eb3c    81fe3c43c200
    asm(".byte              0x72, 0x9a");// {disp8} jb _jmp_addr_0x0075eade  // 0x0075eb42    729a
    asm("{disp8} mov        al, byte ptr [esp + 0x14]");                     // 0x0075eb44    8a442414
    asm("pop                esi");                                           // 0x0075eb48    5e
    asm("{disp32} mov       byte ptr [edi + 0x0000008f], al");               // 0x0075eb49    88878f000000
    asm("pop                ebp");                                           // 0x0075eb4f    5d
    asm("{disp32} mov       byte ptr [edi + 0x00000118], 0x00");             // 0x0075eb50    c6871801000000
    asm("{disp32} mov       byte ptr [edi + 0x00000119], 0x00");             // 0x0075eb57    c6871901000000
    asm("pop                ebx");                                           // 0x0075eb5e    5b
    asm("_jmp_addr_0x0075eb5f:");
    asm("pop                edi");                                           // 0x0075eb5f    5f
    asm("add                esp, 0x08");                                     // 0x0075eb60    83c408
    asm("ret");                                                              // 0x0075eb63    c3
    __builtin_unreachable();
}

void __fastcall FootballGoalieSaveProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075eb70    83ec0c
    asm("push               ebx");                                           // 0x0075eb73    53
    asm("push               ebp");                                           // 0x0075eb74    55
    asm("push               esi");                                           // 0x0075eb75    56
    asm("push               edi");                                           // 0x0075eb76    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x20]");                   // 0x0075eb77    8b7c2420
    asm("mov.s              esi, ecx");                                      // 0x0075eb7b    8bf1
    asm("mov.s              ecx, edi");                                      // 0x0075eb7d    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075eb7f    e88c28ddff
    asm("mov                ebx, dword ptr [esi]");                          // 0x0075eb84    8b1e
    asm("mov.s              ecx, esi");                                      // 0x0075eb86    8bce
    asm("mov.s              ebp, eax");                                      // 0x0075eb88    8be8
    asm("call               dword ptr [ebx + 0x42c]");                       // 0x0075eb8a    ff932c040000
    asm("push               ecx");                                           // 0x0075eb90    51
    asm("fstp               dword ptr [esp]");                               // 0x0075eb91    d91c24
    asm("push               ebp");                                           // 0x0075eb94    55
    asm("mov.s              ecx, esi");                                      // 0x0075eb95    8bce
    asm("call               dword ptr [ebx + 0x6b8]");                       // 0x0075eb97    ff93b8060000
    asm("test               eax, eax");                                      // 0x0075eb9d    85c0
    asm("{disp32} je        _jmp_addr_0x0075ec32");                          // 0x0075eb9f    0f848d000000
    asm("{disp8} mov        eax, dword ptr [ebp + 0x1c]");                   // 0x0075eba5    8b451c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075eba8    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075ebaa    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075ebac    89442420
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075ebb0    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x20]");                        // 0x0075ebb6    d85c2420
    asm("fnstsw             ax");                                            // 0x0075ebba    dfe0
    asm("test               ah, 0x41");                                      // 0x0075ebbc    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075ec32");                          // 0x0075ebbf    7571
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x0075ebc1    8d4714
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075ebc4    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075ebc6    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075ebc9    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075ebcc    894c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075ebd0    89542414
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075ebd4    89442418
    asm("mov                ebx, 0x00000003");                               // 0x0075ebd8    bb03000000
    asm("_jmp_addr_0x0075ebdd:");
    asm("push               esi");                                           // 0x0075ebdd    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x0075ebde    8d4c2414
    asm("push               ecx");                                           // 0x0075ebe2    51
    asm("mov.s              ecx, edi");                                      // 0x0075ebe3    8bcf
    asm("call               _jmp_addr_0x00532eb0");                          // 0x0075ebe5    e8c642ddff
    asm("dec                ebx");                                           // 0x0075ebea    4b
    asm("{disp8} jne        _jmp_addr_0x0075ebdd");                          // 0x0075ebeb    75f0
    asm("push               0x1");                                           // 0x0075ebed    6a01
    asm("push               0x000002f5");                                    // 0x0075ebef    68f5020000
    asm("push               0x00c2443c");                                    // 0x0075ebf4    683c44c200
    asm("push               0x3f800000");                                    // 0x0075ebf9    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075ebfe    e82df9f7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x56ec8]");             // 0x0075ec03    d805c8fe8f00
    asm("add                esp, 0x08");                                     // 0x0075ec09    83c408
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x0075ec0c    8d542418
    asm("fstp               dword ptr [esp]");                               // 0x0075ec10    d91c24
    asm("push               edx");                                           // 0x0075ec13    52
    asm("mov.s              ecx, ebp");                                      // 0x0075ec14    8bcd
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075ec16    e82570cdff
    asm("pop                edi");                                           // 0x0075ec1b    5f
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075ec1c    66c746580000
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ec22    c6861801000001
    asm("pop                esi");                                           // 0x0075ec29    5e
    asm("pop                ebp");                                           // 0x0075ec2a    5d
    asm("pop                ebx");                                           // 0x0075ec2b    5b
    asm("add                esp, 0x0c");                                     // 0x0075ec2c    83c40c
    asm("ret                0x0004");                                        // 0x0075ec2f    c20400
    asm("_jmp_addr_0x0075ec32:");
    asm("push               edi");                                           // 0x0075ec32    57
    asm("mov.s              ecx, esi");                                      // 0x0075ec33    8bce
    asm("call               ?FootballGoalieGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075ec35    e896000000
    asm("pop                edi");                                           // 0x0075ec3a    5f
    asm("pop                esi");                                           // 0x0075ec3b    5e
    asm("pop                ebp");                                           // 0x0075ec3c    5d
    asm("pop                ebx");                                           // 0x0075ec3d    5b
    asm("add                esp, 0x0c");                                     // 0x0075ec3e    83c40c
    asm("ret                0x0004");                                        // 0x0075ec41    c20400
    __builtin_unreachable();
}

void __fastcall FootballGoalieClearProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075ec50    8b442404
    asm("push               eax");                                           // 0x0075ec54    50
    asm("call               ?FootballGoalieSaveProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075ec55    e816ffffff
    asm("ret                0x0004");                                        // 0x0075ec5a    c20400
    __builtin_unreachable();
}

void __fastcall FootballGoalieLookProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075ec60    56
    asm("push               edi");                                           // 0x0075ec61    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075ec62    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x0075ec66    8bf1
    asm("push               0x1");                                           // 0x0075ec68    6a01
    asm("mov.s              ecx, edi");                                      // 0x0075ec6a    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075ec6c    e89f27ddff
    asm("push               eax");                                           // 0x0075ec71    50
    asm("mov.s              ecx, esi");                                      // 0x0075ec72    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0075ec74    e8a7d8e8ff
    asm("{disp32} mov       cl, byte ptr [esi + 0x00000119]");               // 0x0075ec79    8a8e19010000
    asm("inc                cl");                                            // 0x0075ec7f    fec1
    asm("mov.s              al, cl");                                        // 0x0075ec81    8ac1
    asm("cmp                al, 0x14");                                      // 0x0075ec83    3c14
    asm("{disp32} mov       byte ptr [esi + 0x00000119], cl");               // 0x0075ec85    888e19010000
    asm("{disp8} jbe        _jmp_addr_0x0075ec94");                          // 0x0075ec8b    7607
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ec8d    c6861801000001
    asm("_jmp_addr_0x0075ec94:");
    asm("mov.s              ecx, edi");                                      // 0x0075ec94    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075ec96    e87527ddff
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x0075ec9b    8d4e14
    asm("push               ecx");                                           // 0x0075ec9e    51
    asm("add                eax, 0x14");                                     // 0x0075ec9f    83c014
    asm("push               eax");                                           // 0x0075eca2    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075eca3    e8c8e0feff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x235c]");              // 0x0075eca8    d81d5cb38a00
    asm("add                esp, 0x08");                                     // 0x0075ecae    83c408
    asm("fnstsw             ax");                                            // 0x0075ecb1    dfe0
    asm("test               ah, 0x01");                                      // 0x0075ecb3    f6c401
    asm("{disp8} je         _jmp_addr_0x0075ecbf");                          // 0x0075ecb6    7407
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ecb8    c6861801000001
    asm("_jmp_addr_0x0075ecbf:");
    asm("pop                edi");                                           // 0x0075ecbf    5f
    asm("pop                esi");                                           // 0x0075ecc0    5e
    asm("ret                0x0004");                                        // 0x0075ecc1    c20400
    __builtin_unreachable();
}

void __fastcall FootballGoalieGoToBallProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075ecd0    83ec0c
    asm("push               ebx");                                           // 0x0075ecd3    53
    asm("push               ebp");                                           // 0x0075ecd4    55
    asm("{disp8} mov        ebp, dword ptr [esp + 0x18]");                   // 0x0075ecd5    8b6c2418
    asm("push               esi");                                           // 0x0075ecd9    56
    asm("mov.s              esi, ecx");                                      // 0x0075ecda    8bf1
    asm("push               edi");                                           // 0x0075ecdc    57
    asm("mov.s              ecx, ebp");                                      // 0x0075ecdd    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075ecdf    e82c27ddff
    asm("mov                ebx, dword ptr [esi]");                          // 0x0075ece4    8b1e
    asm("mov.s              ecx, esi");                                      // 0x0075ece6    8bce
    asm("mov.s              edi, eax");                                      // 0x0075ece8    8bf8
    asm("call               dword ptr [ebx + 0x42c]");                       // 0x0075ecea    ff932c040000
    asm("push               ecx");                                           // 0x0075ecf0    51
    asm("fstp               dword ptr [esp]");                               // 0x0075ecf1    d91c24
    asm("push               edi");                                           // 0x0075ecf4    57
    asm("mov.s              ecx, esi");                                      // 0x0075ecf5    8bce
    asm("call               dword ptr [ebx + 0x6b8]");                       // 0x0075ecf7    ff93b8060000
    asm("test               eax, eax");                                      // 0x0075ecfd    85c0
    asm("{disp8} je         _jmp_addr_0x0075ed2e");                          // 0x0075ecff    742d
    asm("{disp8} mov        eax, dword ptr [edi + 0x1c]");                   // 0x0075ed01    8b471c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075ed04    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075ed06    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x0075ed08    89442420
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075ed0c    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x20]");                        // 0x0075ed12    d85c2420
    asm("fnstsw             ax");                                            // 0x0075ed16    dfe0
    asm("test               ah, 0x41");                                      // 0x0075ed18    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075ed2e");                          // 0x0075ed1b    7511
    asm("pop                edi");                                           // 0x0075ed1d    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ed1e    c6861801000001
    asm("pop                esi");                                           // 0x0075ed25    5e
    asm("pop                ebp");                                           // 0x0075ed26    5d
    asm("pop                ebx");                                           // 0x0075ed27    5b
    asm("add                esp, 0x0c");                                     // 0x0075ed28    83c40c
    asm("ret                0x0004");                                        // 0x0075ed2b    c20400
    asm("_jmp_addr_0x0075ed2e:");
    asm("mov.s              ecx, ebp");                                      // 0x0075ed2e    8bcd
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075ed30    e8db26ddff
    asm("test               byte ptr [eax + 0x24], 0x40");                   // 0x0075ed35    f6402440
    asm("{disp8} je         _jmp_addr_0x0075ed98");                          // 0x0075ed39    745d
    asm("push               0x0000031c");                                    // 0x0075ed3b    681c030000
    asm("push               0x00c2443c");                                    // 0x0075ed40    683c44c200
    asm("push               0xa");                                           // 0x0075ed45    6a0a
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x0075ed47    e8c4f7f7ff
    asm("add                esp, 0x0c");                                     // 0x0075ed4c    83c40c
    asm("cmp                eax, 0x08");                                     // 0x0075ed4f    83f808
    asm(".byte              0x72, 0x44");// {disp8} jb _jmp_addr_0x0075ed98  // 0x0075ed52    7244
    asm("add                edi, 0x00000084");                               // 0x0075ed54    81c784000000
    asm("mov                eax, dword ptr [edi]");                          // 0x0075ed5a    8b07
    asm("{disp8} mov        ecx, dword ptr [edi + 0x04]");                   // 0x0075ed5c    8b4f04
    asm("{disp8} mov        edx, dword ptr [edi + 0x08]");                   // 0x0075ed5f    8b5708
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075ed62    89442410
    asm("push               0x4a");                                          // 0x0075ed66    6a4a
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x0075ed68    8d442414
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x0075ed6c    894c2418
    asm("push               eax");                                           // 0x0075ed70    50
    asm("mov.s              ecx, esi");                                      // 0x0075ed71    8bce
    asm("{disp8} mov        dword ptr [esp + 0x20], edx");                   // 0x0075ed73    89542420
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075ed77    e8844a0000
    asm("push               0x000000de");                                    // 0x0075ed7c    68de000000
    asm("push               0x0");                                           // 0x0075ed81    6a00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");             // 0x0075ed83    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");             // 0x0075ed89    e802dfe8ff
    asm("pop                edi");                                           // 0x0075ed8e    5f
    asm("pop                esi");                                           // 0x0075ed8f    5e
    asm("pop                ebp");                                           // 0x0075ed90    5d
    asm("pop                ebx");                                           // 0x0075ed91    5b
    asm("add                esp, 0x0c");                                     // 0x0075ed92    83c40c
    asm("ret                0x0004");                                        // 0x0075ed95    c20400
    asm("_jmp_addr_0x0075ed98:");
    asm("push               0x4a");                                          // 0x0075ed98    6a4a
    asm("push               edi");                                           // 0x0075ed9a    57
    asm("mov.s              ecx, esi");                                      // 0x0075ed9b    8bce
    asm("call               ?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z");                          // 0x0075ed9d    e8ee23ffff
    asm("pop                edi");                                           // 0x0075eda2    5f
    asm("pop                esi");                                           // 0x0075eda3    5e
    asm("pop                ebp");                                           // 0x0075eda4    5d
    asm("pop                ebx");                                           // 0x0075eda5    5b
    asm("add                esp, 0x0c");                                     // 0x0075eda6    83c40c
    asm("ret                0x0004");                                        // 0x0075eda9    c20400
    __builtin_unreachable();
}

void __fastcall FootballGoalieGoHomeProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075edb0    83ec0c
    asm("push               esi");                                           // 0x0075edb3    56
    asm("push               edi");                                           // 0x0075edb4    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075edb5    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075edb9    8bf1
    asm("push               esi");                                           // 0x0075edbb    56
    asm("mov.s              ecx, edi");                                      // 0x0075edbc    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075edbe    e89d3bddff
    asm("neg                eax");                                           // 0x0075edc3    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075edc5    1bc0
    asm("inc                eax");                                           // 0x0075edc7    40
    asm("push               eax");                                           // 0x0075edc8    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x0075edc9    8d44240c
    asm("push               eax");                                           // 0x0075edcd    50
    asm("mov.s              ecx, edi");                                      // 0x0075edce    8bcf
    asm("call               ?GetGoalPosition@Football@@QAEXK@Z");            // 0x0075edd0    e8ab3eddff
    asm("push               0x4a");                                          // 0x0075edd5    6a4a
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x0075edd7    8d4c240c
    asm("push               ecx");                                           // 0x0075eddb    51
    asm("mov.s              ecx, esi");                                      // 0x0075eddc    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x0075edde    e81d4a0000
    asm("pop                edi");                                           // 0x0075ede3    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ede4    c6861801000001
    asm("pop                esi");                                           // 0x0075edeb    5e
    asm("add                esp, 0x0c");                                     // 0x0075edec    83c40c
    asm("ret                0x0004");                                        // 0x0075edef    c20400
    __builtin_unreachable();
}

void __fastcall FootballGoalieIdleProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075ee00    8b442404
    asm("push               eax");                                           // 0x0075ee04    50
    asm("call               ?FootballGoalieLookProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075ee05    e856feffff
    asm("ret                0x0004");                                        // 0x0075ee0a    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall FootballGoaliePassProcess__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x18");                                     // 0x0075ee10    83ec18
    asm("push               ebx");                                           // 0x0075ee13    53
    asm("push               ebp");                                           // 0x0075ee14    55
    asm("push               esi");                                           // 0x0075ee15    56
    asm("push               edi");                                           // 0x0075ee16    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x2c]");                   // 0x0075ee17    8b7c242c
    asm("mov.s              esi, ecx");                                      // 0x0075ee1b    8bf1
    asm("push               esi");                                           // 0x0075ee1d    56
    asm("mov.s              ecx, edi");                                      // 0x0075ee1e    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075ee20    e83b3bddff
    asm("neg                eax");                                           // 0x0075ee25    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075ee27    1bc0
    asm("inc                eax");                                           // 0x0075ee29    40
    asm("push               eax");                                           // 0x0075ee2a    50
    asm("push               esi");                                           // 0x0075ee2b    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x0075ee2c    8d442424
    asm("push               eax");                                           // 0x0075ee30    50
    asm("mov.s              ecx, edi");                                      // 0x0075ee31    8bcf
    asm("call               _jmp_addr_0x00532f60");                          // 0x0075ee33    e82841ddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                   // 0x0075ee38    8d4c241c
    asm("push               ecx");                                           // 0x0075ee3c    51
    asm("{disp8} lea        edx, dword ptr [esi + 0x14]");                   // 0x0075ee3d    8d5614
    asm("push               edx");                                           // 0x0075ee40    52
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075ee41    e82adffeff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2414]");              // 0x0075ee46    d81d14b48a00
    asm("add                esp, 0x08");                                     // 0x0075ee4c    83c408
    asm("fnstsw             ax");                                            // 0x0075ee4f    dfe0
    asm("test               ah, 0x41");                                      // 0x0075ee51    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075ee67");                          // 0x0075ee54    7511
    asm("pop                edi");                                           // 0x0075ee56    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ee57    c6861801000001
    asm("pop                esi");                                           // 0x0075ee5e    5e
    asm("pop                ebp");                                           // 0x0075ee5f    5d
    asm("pop                ebx");                                           // 0x0075ee60    5b
    asm("add                esp, 0x18");                                     // 0x0075ee61    83c418
    asm("ret                0x0004");                                        // 0x0075ee64    c20400
    asm("_jmp_addr_0x0075ee67:");
    asm("mov.s              ecx, edi");                                      // 0x0075ee67    8bcf
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075ee69    e8a225ddff
    asm("mov                ebx, dword ptr [esi]");                          // 0x0075ee6e    8b1e
    asm("mov.s              ecx, esi");                                      // 0x0075ee70    8bce
    asm("mov.s              ebp, eax");                                      // 0x0075ee72    8be8
    asm("call               dword ptr [ebx + 0x42c]");                       // 0x0075ee74    ff932c040000
    asm("push               ecx");                                           // 0x0075ee7a    51
    asm("fstp               dword ptr [esp]");                               // 0x0075ee7b    d91c24
    asm("push               ebp");                                           // 0x0075ee7e    55
    asm("mov.s              ecx, esi");                                      // 0x0075ee7f    8bce
    asm("call               dword ptr [ebx + 0x6b8]");                       // 0x0075ee81    ff93b8060000
    asm("test               eax, eax");                                      // 0x0075ee87    85c0
    asm("{disp32} je        _jmp_addr_0x0075efa3");                          // 0x0075ee89    0f8414010000
    asm("{disp8} mov        eax, dword ptr [ebp + 0x1c]");                   // 0x0075ee8f    8b451c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075ee92    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075ee94    8bce
    asm("{disp8} mov        dword ptr [esp + 0x2c], eax");                   // 0x0075ee96    8944242c
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075ee9a    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x2c]");                        // 0x0075eea0    d85c242c
    asm("fnstsw             ax");                                            // 0x0075eea4    dfe0
    asm("test               ah, 0x41");                                      // 0x0075eea6    f6c441
    asm("{disp32} jne       _jmp_addr_0x0075efa3");                          // 0x0075eea9    0f85f4000000
    asm("push               esi");                                           // 0x0075eeaf    56
    asm("mov.s              ecx, edi");                                      // 0x0075eeb0    8bcf
    asm("call               _jmp_addr_0x00534820");                          // 0x0075eeb2    e86959ddff
    asm("mov.s              ebx, eax");                                      // 0x0075eeb7    8bd8
    asm("dec                ebx");                                           // 0x0075eeb9    4b
    asm("{disp32} js        _jmp_addr_0x0075ef92");                          // 0x0075eeba    0f88d2000000
    asm("push               esi");                                           // 0x0075eec0    56
    asm("mov.s              ecx, edi");                                      // 0x0075eec1    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075eec3    e8983addff
    asm("neg                eax");                                           // 0x0075eec8    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075eeca    1bc0
    asm("inc                eax");                                           // 0x0075eecc    40
    asm("{disp32} mov       ecx, dword ptr [edi + eax * 0x8 + 0x00000238]"); // 0x0075eecd    8b8cc738020000
    asm("test               ecx, ecx");                                      // 0x0075eed4    85c9
    asm("{disp32} lea       eax, dword ptr [edi + eax * 0x8 + 0x00000234]"); // 0x0075eed6    8d84c734020000
    asm("{disp8} jbe        _jmp_addr_0x0075eef6");                          // 0x0075eedd    7617
    asm("mov                eax, dword ptr [eax]");                          // 0x0075eedf    8b00
    asm("test               eax, eax");                                      // 0x0075eee1    85c0
    asm("{disp8} je         _jmp_addr_0x0075eef6");                          // 0x0075eee3    7411
    asm("cmp.s              ebx, ecx");                                      // 0x0075eee5    3bd9
    asm("{disp8} jge        _jmp_addr_0x0075eef6");                          // 0x0075eee7    7d0d
    asm("test               ebx, ebx");                                      // 0x0075eee9    85db
    asm("{disp8} jle        _jmp_addr_0x0075eef2");                          // 0x0075eeeb    7e05
    asm("_jmp_addr_0x0075eeed:");
    asm("dec                ebx");                                           // 0x0075eeed    4b
    asm("mov                eax, dword ptr [eax]");                          // 0x0075eeee    8b00
    asm("{disp8} jne        _jmp_addr_0x0075eeed");                          // 0x0075eef0    75fb
    asm("_jmp_addr_0x0075eef2:");
    asm("test               eax, eax");                                      // 0x0075eef2    85c0
    asm("{disp8} jne        _jmp_addr_0x0075eefa");                          // 0x0075eef4    7504
    asm("_jmp_addr_0x0075eef6:");
    asm("xor.s              edi, edi");                                      // 0x0075eef6    33ff
    asm("{disp8} jmp        _jmp_addr_0x0075eefd");                          // 0x0075eef8    eb03
    asm("_jmp_addr_0x0075eefa:");
    asm("{disp8} mov        edi, dword ptr [eax + 0x04]");                   // 0x0075eefa    8b7804
    asm("_jmp_addr_0x0075eefd:");
    asm("{disp8} lea        eax, dword ptr [edi + 0x14]");                   // 0x0075eefd    8d4714
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075ef00    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075ef02    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075ef06    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075ef09    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075ef0d    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075ef10    89442418
    asm("mov                edx, dword ptr [edi]");                          // 0x0075ef14    8b17
    asm("mov.s              ecx, edi");                                      // 0x0075ef16    8bcf
    asm("call               dword ptr [edx + 0x174]");                       // 0x0075ef18    ff9274010000
    asm("test               eax, eax");                                      // 0x0075ef1e    85c0
    asm("{disp8} je         _jmp_addr_0x0075ef40");                          // 0x0075ef20    741e
    asm("mov                eax, dword ptr [edi]");                          // 0x0075ef22    8b07
    asm("mov.s              ecx, edi");                                      // 0x0075ef24    8bcf
    asm("call               dword ptr [eax + 0x860]");                       // 0x0075ef26    ff9060080000
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075ef2c    8b08
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075ef2e    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075ef32    8b5004
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x0075ef35    89542414
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075ef39    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                   // 0x0075ef3c    89442418
    asm("_jmp_addr_0x0075ef40:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x0075ef40    8d4c2410
    asm("push               ecx");                                           // 0x0075ef44    51
    asm("{disp8} lea        edx, dword ptr [ebp + 0x14]");                   // 0x0075ef45    8d5514
    asm("push               edx");                                           // 0x0075ef48    52
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075ef49    e822defeff
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075ef4e    d81d90a38a00
    asm("add                esp, 0x08");                                     // 0x0075ef54    83c408
    asm("fnstsw             ax");                                            // 0x0075ef57    dfe0
    asm("test               ah, 0x41");                                      // 0x0075ef59    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075ef92");                          // 0x0075ef5c    7534
    asm("push               0x1");                                           // 0x0075ef5e    6a01
    asm("push               0x0000034e");                                    // 0x0075ef60    684e030000
    asm("push               0x00c2443c");                                    // 0x0075ef65    683c44c200
    asm("push               0x3f800000");                                    // 0x0075ef6a    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075ef6f    e8bcf5f7ff
    asm("{disp32} fadd      dword ptr [rdata_bytes + 0x235c]");              // 0x0075ef74    d8055cb38a00
    asm("add                esp, 0x08");                                     // 0x0075ef7a    83c408
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x0075ef7d    8d442418
    asm("fstp               dword ptr [esp]");                               // 0x0075ef81    d91c24
    asm("push               eax");                                           // 0x0075ef84    50
    asm("mov.s              ecx, ebp");                                      // 0x0075ef85    8bcd
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075ef87    e8b46ccdff
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                 // 0x0075ef8c    66c746580000
    asm("_jmp_addr_0x0075ef92:");
    asm("pop                edi");                                           // 0x0075ef92    5f
    asm("{disp32} mov       byte ptr [esi + 0x00000118], 0x01");             // 0x0075ef93    c6861801000001
    asm("pop                esi");                                           // 0x0075ef9a    5e
    asm("pop                ebp");                                           // 0x0075ef9b    5d
    asm("pop                ebx");                                           // 0x0075ef9c    5b
    asm("add                esp, 0x18");                                     // 0x0075ef9d    83c418
    asm("ret                0x0004");                                        // 0x0075efa0    c20400
    asm("_jmp_addr_0x0075efa3:");
    asm("push               edi");                                           // 0x0075efa3    57
    asm("mov.s              ecx, esi");                                      // 0x0075efa4    8bce
    asm("call               ?FootballGoalieGoToBallProcess@Villager@@QAEXPAVFootball@@@Z");                          // 0x0075efa6    e825fdffff
    asm("pop                edi");                                           // 0x0075efab    5f
    asm("pop                esi");                                           // 0x0075efac    5e
    asm("pop                ebp");                                           // 0x0075efad    5d
    asm("pop                ebx");                                           // 0x0075efae    5b
    asm("add                esp, 0x18");                                     // 0x0075efaf    83c418
    asm("ret                0x0004");                                        // 0x0075efb2    c20400
    __builtin_unreachable();
}

float __fastcall FootballGoalieSavePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               0x00000360");                                    // 0x0075efc0    6860030000
    asm("push               0x00c2443c");                                    // 0x0075efc5    683c44c200
    asm("push               0x3f800000");                                    // 0x0075efca    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075efcf    e85cf5f7ff
    asm("add                esp, 0x0c");                                     // 0x0075efd4    83c40c
    asm("ret                0x0004");                                        // 0x0075efd7    c20400
    __builtin_unreachable();
}

float __fastcall FootballGoalieClearPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               0x00000366");                                    // 0x0075efe0    6866030000
    asm("push               0x00c2443c");                                    // 0x0075efe5    683c44c200
    asm("push               0x3f800000");                                    // 0x0075efea    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075efef    e83cf5f7ff
    asm("add                esp, 0x0c");                                     // 0x0075eff4    83c40c
    asm("ret                0x0004");                                        // 0x0075eff7    c20400
    __builtin_unreachable();
}

float __fastcall FootballGoalieLookPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               0x0000036c");                                    // 0x0075f000    686c030000
    asm("push               0x00c2443c");                                    // 0x0075f005    683c44c200
    asm("push               0x3f800000");                                    // 0x0075f00a    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x0075f00f    e81cf5f7ff
    asm("add                esp, 0x0c");                                     // 0x0075f014    83c40c
    asm("ret                0x0004");                                        // 0x0075f017    c20400
    __builtin_unreachable();
}

float __fastcall FootballGoalieGoToBallPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp32} fld       dword ptr [_rdata_float0p0]");                   // 0x0075f020    d90598a38a00
    asm("ret                0x0004");                                        // 0x0075f026    c20400
    __builtin_unreachable();
}

float __fastcall FootballGoalieGoHomePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075f030    8b442404
    asm("push               eax");                                           // 0x0075f034    50
    asm("call               ?FootballAttackerGoHomePriority@Villager@@QAEMPAVFootball@@@Z");                          // 0x0075f035    e8c6eeffff
    asm("ret                0x0004");                                        // 0x0075f03a    c20400
    __builtin_unreachable();
}

float __fastcall FootballGoalieIdlePriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075f040    8b442404
    asm("push               eax");                                           // 0x0075f044    50
    asm("call               ?FootballGoalieGoHomePriority@Villager@@QAEMPAVFootball@@@Z");                          // 0x0075f045    e8e6ffffff
    asm("{disp32} fsubr     dword ptr [_rdata_float1p0]");                   // 0x0075f04a    d82d90a38a00
    asm("ret                0x0004");                                        // 0x0075f050    c20400
    __builtin_unreachable();
}

float __fastcall FootballGoaliePassPriority__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x0075f060    8b442404
    asm("push               eax");                                           // 0x0075f064    50
    asm("call               ?FootballDefenderPassPriority@Villager@@QAEMPAVFootball@@@Z");                          // 0x0075f065    e866f9ffff
    asm("ret                0x0004");                                        // 0x0075f06a    c20400
    __builtin_unreachable();
}

bool __fastcall FootballerIsTouchingBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075f070    56
    asm("mov.s              esi, ecx");                                      // 0x0075f071    8bf1
    asm("push               edi");                                           // 0x0075f073    57
    asm("mov                edi, dword ptr [esi]");                          // 0x0075f074    8b3e
    asm("call               dword ptr [edi + 0x42c]");                       // 0x0075f076    ff972c040000
    asm("push               ecx");                                           // 0x0075f07c    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0075f07d    8b4c2410
    asm("fstp               dword ptr [esp]");                               // 0x0075f081    d91c24
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f084    e88723ddff
    asm("push               eax");                                           // 0x0075f089    50
    asm("mov.s              ecx, esi");                                      // 0x0075f08a    8bce
    asm("call               dword ptr [edi + 0x6b8]");                       // 0x0075f08c    ff97b8060000
    asm("pop                edi");                                           // 0x0075f092    5f
    asm("pop                esi");                                           // 0x0075f093    5e
    asm("ret                0x0004");                                        // 0x0075f094    c20400
    __builtin_unreachable();
}

bool __fastcall FootballerIsNotTouchingBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075f0a0    56
    asm("mov.s              esi, ecx");                                      // 0x0075f0a1    8bf1
    asm("push               edi");                                           // 0x0075f0a3    57
    asm("mov                edi, dword ptr [esi]");                          // 0x0075f0a4    8b3e
    asm("call               dword ptr [edi + 0x42c]");                       // 0x0075f0a6    ff972c040000
    asm("push               ecx");                                           // 0x0075f0ac    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x0075f0ad    8b4c2410
    asm("fstp               dword ptr [esp]");                               // 0x0075f0b1    d91c24
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f0b4    e85723ddff
    asm("push               eax");                                           // 0x0075f0b9    50
    asm("mov.s              ecx, esi");                                      // 0x0075f0ba    8bce
    asm("call               dword ptr [edi + 0x6b8]");                       // 0x0075f0bc    ff97b8060000
    asm("neg                eax");                                           // 0x0075f0c2    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075f0c4    1bc0
    asm("pop                edi");                                           // 0x0075f0c6    5f
    asm("inc                eax");                                           // 0x0075f0c7    40
    asm("pop                esi");                                           // 0x0075f0c8    5e
    asm("ret                0x0004");                                        // 0x0075f0c9    c20400
    __builtin_unreachable();
}

bool __fastcall FootballerIsNearestBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075f0d0    56
    asm("push               edi");                                           // 0x0075f0d1    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075f0d2    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x0075f0d6    8bf1
    asm("push               esi");                                           // 0x0075f0d8    56
    asm("mov.s              ecx, edi");                                      // 0x0075f0d9    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075f0db    e88038ddff
    asm("push               esi");                                           // 0x0075f0e0    56
    asm("mov.s              ecx, edi");                                      // 0x0075f0e1    8bcf
    asm("call               _jmp_addr_0x005347c0");                          // 0x0075f0e3    e8d856ddff
    asm("neg                eax");                                           // 0x0075f0e8    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075f0ea    1bc0
    asm("pop                edi");                                           // 0x0075f0ec    5f
    asm("inc                eax");                                           // 0x0075f0ed    40
    asm("pop                esi");                                           // 0x0075f0ee    5e
    asm("ret                0x0004");                                        // 0x0075f0ef    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool __fastcall FootballerIsNotNearestBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075f100    56
    asm("push               edi");                                           // 0x0075f101    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x0075f102    8b7c240c
    asm("mov.s              esi, ecx");                                      // 0x0075f106    8bf1
    asm("push               esi");                                           // 0x0075f108    56
    asm("mov.s              ecx, edi");                                      // 0x0075f109    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075f10b    e85038ddff
    asm("push               esi");                                           // 0x0075f110    56
    asm("mov.s              ecx, edi");                                      // 0x0075f111    8bcf
    asm("call               _jmp_addr_0x005347c0");                          // 0x0075f113    e8a856ddff
    asm("xor.s              ecx, ecx");                                      // 0x0075f118    33c9
    asm("cmp.s              ecx, eax");                                      // 0x0075f11a    3bc8
    asm("sbb.s              eax, eax");                                      // 0x0075f11c    1bc0
    asm("pop                edi");                                           // 0x0075f11e    5f
    asm("neg                eax");                                           // 0x0075f11f    f7d8
    asm("pop                esi");                                           // 0x0075f121    5e
    asm("ret                0x0004");                                        // 0x0075f122    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FootballerIsAtHomePrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075f130    83ec0c
    asm("push               esi");                                           // 0x0075f133    56
    asm("push               edi");                                           // 0x0075f134    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075f135    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075f139    8bf1
    asm("push               esi");                                           // 0x0075f13b    56
    asm("mov.s              ecx, edi");                                      // 0x0075f13c    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075f13e    e81d38ddff
    asm("neg                eax");                                           // 0x0075f143    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075f145    1bc0
    asm("inc                eax");                                           // 0x0075f147    40
    asm("push               eax");                                           // 0x0075f148    50
    asm("push               esi");                                           // 0x0075f149    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075f14a    8d442410
    asm("push               eax");                                           // 0x0075f14e    50
    asm("mov.s              ecx, edi");                                      // 0x0075f14f    8bcf
    asm("call               _jmp_addr_0x00532f60");                          // 0x0075f151    e80a3eddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075f156    8d4c2408
    asm("push               ecx");                                           // 0x0075f15a    51
    asm("add                esi, 0x14");                                     // 0x0075f15b    83c614
    asm("push               esi");                                           // 0x0075f15e    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075f15f    e80cdcfeff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2478]");              // 0x0075f164    d81d78b48a00
    asm("add                esp, 0x08");                                     // 0x0075f16a    83c408
    asm("pop                edi");                                           // 0x0075f16d    5f
    asm("pop                esi");                                           // 0x0075f16e    5e
    asm("fnstsw             ax");                                            // 0x0075f16f    dfe0
    asm("test               ah, 0x01");                                      // 0x0075f171    f6c401
    asm("{disp8} je         _jmp_addr_0x0075f181");                          // 0x0075f174    740b
    asm("mov                eax, 0x00000001");                               // 0x0075f176    b801000000
    asm("add                esp, 0x0c");                                     // 0x0075f17b    83c40c
    asm("ret                0x0004");                                        // 0x0075f17e    c20400
    asm("_jmp_addr_0x0075f181:");
    asm("xor.s              eax, eax");                                      // 0x0075f181    33c0
    asm("add                esp, 0x0c");                                     // 0x0075f183    83c40c
    asm("ret                0x0004");                                        // 0x0075f186    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FootballerIsNotAtHomePrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("sub                esp, 0x0c");                                     // 0x0075f190    83ec0c
    asm("push               esi");                                           // 0x0075f193    56
    asm("push               edi");                                           // 0x0075f194    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x18]");                   // 0x0075f195    8b7c2418
    asm("mov.s              esi, ecx");                                      // 0x0075f199    8bf1
    asm("push               esi");                                           // 0x0075f19b    56
    asm("mov.s              ecx, edi");                                      // 0x0075f19c    8bcf
    asm("call               ?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");                          // 0x0075f19e    e8bd37ddff
    asm("neg                eax");                                           // 0x0075f1a3    f7d8
    asm("sbb.s              eax, eax");                                      // 0x0075f1a5    1bc0
    asm("inc                eax");                                           // 0x0075f1a7    40
    asm("push               eax");                                           // 0x0075f1a8    50
    asm("push               esi");                                           // 0x0075f1a9    56
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x0075f1aa    8d442410
    asm("push               eax");                                           // 0x0075f1ae    50
    asm("mov.s              ecx, edi");                                      // 0x0075f1af    8bcf
    asm("call               _jmp_addr_0x00532f60");                          // 0x0075f1b1    e8aa3dddff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x0075f1b6    8d4c2408
    asm("push               ecx");                                           // 0x0075f1ba    51
    asm("add                esi, 0x14");                                     // 0x0075f1bb    83c614
    asm("push               esi");                                           // 0x0075f1be    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075f1bf    e8acdbfeff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x2478]");              // 0x0075f1c4    d81d78b48a00
    asm("add                esp, 0x08");                                     // 0x0075f1ca    83c408
    asm("pop                edi");                                           // 0x0075f1cd    5f
    asm("pop                esi");                                           // 0x0075f1ce    5e
    asm("fnstsw             ax");                                            // 0x0075f1cf    dfe0
    asm("test               ah, 0x41");                                      // 0x0075f1d1    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075f1e1");                          // 0x0075f1d4    750b
    asm("mov                eax, 0x00000001");                               // 0x0075f1d6    b801000000
    asm("add                esp, 0x0c");                                     // 0x0075f1db    83c40c
    asm("ret                0x0004");                                        // 0x0075f1de    c20400
    asm("_jmp_addr_0x0075f1e1:");
    asm("xor.s              eax, eax");                                      // 0x0075f1e1    33c0
    asm("add                esp, 0x0c");                                     // 0x0075f1e3    83c40c
    asm("ret                0x0004");                                        // 0x0075f1e6    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FootballerIsQuiteNearBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075f1f0    56
    asm("mov.s              esi, ecx");                                      // 0x0075f1f1    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075f1f3    8b4c2408
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f1f7    e81422ddff
    asm("add                eax, 0x14");                                     // 0x0075f1fc    83c014
    asm("push               eax");                                           // 0x0075f1ff    50
    asm("add                esi, 0x14");                                     // 0x0075f200    83c614
    asm("push               esi");                                           // 0x0075f203    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075f204    e867dbfeff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]");              // 0x0075f209    d81de4b68a00
    asm("add                esp, 0x08");                                     // 0x0075f20f    83c408
    asm("pop                esi");                                           // 0x0075f212    5e
    asm("fnstsw             ax");                                            // 0x0075f213    dfe0
    asm("test               ah, 0x41");                                      // 0x0075f215    f6c441
    asm("{disp8} je         _jmp_addr_0x0075f222");                          // 0x0075f218    7408
    asm("mov                eax, 0x00000001");                               // 0x0075f21a    b801000000
    asm("ret                0x0004");                                        // 0x0075f21f    c20400
    asm("_jmp_addr_0x0075f222:");
    asm("xor.s              eax, eax");                                      // 0x0075f222    33c0
    asm("ret                0x0004");                                        // 0x0075f224    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FootballerIsNotQuiteNearBallPrecondition__8VillagerFP8Football(struct Villager* this, const void* edx, struct Football* param_1)
{
    asm("push               esi");                                           // 0x0075f230    56
    asm("mov.s              esi, ecx");                                      // 0x0075f231    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                   // 0x0075f233    8b4c2408
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f237    e8d421ddff
    asm("add                eax, 0x14");                                     // 0x0075f23c    83c014
    asm("push               eax");                                           // 0x0075f23f    50
    asm("add                esi, 0x14");                                     // 0x0075f240    83c614
    asm("push               esi");                                           // 0x0075f243    56
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                               // 0x0075f244    e827dbfeff
    asm("{disp32} fcomp     dword ptr [rdata_bytes + 0x26e4]");              // 0x0075f249    d81de4b68a00
    asm("add                esp, 0x08");                                     // 0x0075f24f    83c408
    asm("pop                esi");                                           // 0x0075f252    5e
    asm("fnstsw             ax");                                            // 0x0075f253    dfe0
    asm("test               ah, 0x41");                                      // 0x0075f255    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075f262");                          // 0x0075f258    7508
    asm("mov                eax, 0x00000001");                               // 0x0075f25a    b801000000
    asm("ret                0x0004");                                        // 0x0075f25f    c20400
    asm("_jmp_addr_0x0075f262:");
    asm("xor.s              eax, eax");                                      // 0x0075f262    33c0
    asm("ret                0x0004");                                        // 0x0075f264    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall StartMoveToPickUpBallForDeadBall__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075f270    56
    asm("mov.s              esi, ecx");                                      // 0x0075f271    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f273    e8282cffff
    asm("test               eax, eax");                                      // 0x0075f278    85c0
    asm("{disp8} je         _jmp_addr_0x0075f28e");                          // 0x0075f27a    7412
    asm("mov.s              ecx, esi");                                      // 0x0075f27c    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f27e    e81d2cffff
    asm("mov.s              ecx, eax");                                      // 0x0075f283    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f285    e88621ddff
    asm("test               eax, eax");                                      // 0x0075f28a    85c0
    asm("{disp8} jne        _jmp_addr_0x0075f292");                          // 0x0075f28c    7504
    asm("_jmp_addr_0x0075f28e:");
    asm("xor.s              eax, eax");                                      // 0x0075f28e    33c0
    asm("pop                esi");                                           // 0x0075f290    5e
    asm("ret");                                                              // 0x0075f291    c3
    asm("_jmp_addr_0x0075f292:");
    asm("mov.s              ecx, esi");                                      // 0x0075f292    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f294    e8072cffff
    asm("mov.s              ecx, eax");                                      // 0x0075f299    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f29b    e87021ddff
    asm("push               0x4f");                                          // 0x0075f2a0    6a4f
    asm("push               eax");                                           // 0x0075f2a2    50
    asm("mov.s              ecx, esi");                                      // 0x0075f2a3    8bce
    asm("call               ?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z");                          // 0x0075f2a5    e8e61effff
    asm("mov                eax, 0x00000001");                               // 0x0075f2aa    b801000000
    asm("pop                esi");                                           // 0x0075f2af    5e
    asm("ret");                                                              // 0x0075f2b0    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivedAtPickUpBallForDeadBall__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075f2c0    56
    asm("mov.s              esi, ecx");                                      // 0x0075f2c1    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f2c3    e8d82bffff
    asm("push               0x2");                                           // 0x0075f2c8    6a02
    asm("push               eax");                                           // 0x0075f2ca    50
    asm("mov.s              ecx, esi");                                      // 0x0075f2cb    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                          // 0x0075f2cd    e84ed2e8ff
    asm("mov                eax, dword ptr [esi]");                          // 0x0075f2d2    8b06
    asm("push               0x50");                                          // 0x0075f2d4    6a50
    asm("mov.s              ecx, esi");                                      // 0x0075f2d6    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x0075f2d8    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x0075f2de    b801000000
    asm("pop                esi");                                           // 0x0075f2e3    5e
    asm("ret");                                                              // 0x0075f2e4    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivedAtPutDownBallForDeadBallStart__8VillagerFv(struct Villager* this)
{
    asm("push               0x1");                                           // 0x0075f2f0    6a01
    asm("push               0x51");                                          // 0x0075f2f2    6a51
    asm("call               ?PlayAnimThenSetState@Living@@QAEXEK@Z");        // 0x0075f2f4    e8c7d7e8ff
    asm("mov                eax, 0x00000001");                               // 0x0075f2f9    b801000000
    asm("ret");                                                              // 0x0075f2fe    c3
    __builtin_unreachable();
}

bool32_t __fastcall ArrivedAtPutDownBallForDeadBallEnd__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x0075f300    51
    asm("push               ebx");                                           // 0x0075f301    53
    asm("push               ebp");                                           // 0x0075f302    55
    asm("push               esi");                                           // 0x0075f303    56
    asm("push               edi");                                           // 0x0075f304    57
    asm("mov.s              esi, ecx");                                      // 0x0075f305    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f307    e8942bffff
    asm("mov.s              ebx, eax");                                      // 0x0075f30c    8bd8
    asm("mov.s              ecx, ebx");                                      // 0x0075f30e    8bcb
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f310    e8fb20ddff
    asm("mov                ebp, dword ptr [esi]");                          // 0x0075f315    8b2e
    asm("mov.s              ecx, esi");                                      // 0x0075f317    8bce
    asm("mov.s              edi, eax");                                      // 0x0075f319    8bf8
    asm("call               dword ptr [ebp + 0x42c]");                       // 0x0075f31b    ff952c040000
    asm("push               ecx");                                           // 0x0075f321    51
    asm("fstp               dword ptr [esp]");                               // 0x0075f322    d91c24
    asm("push               edi");                                           // 0x0075f325    57
    asm("mov.s              ecx, esi");                                      // 0x0075f326    8bce
    asm("call               dword ptr [ebp + 0x6b8]");                       // 0x0075f328    ff95b8060000
    asm("test               eax, eax");                                      // 0x0075f32e    85c0
    asm("{disp8} je         _jmp_addr_0x0075f360");                          // 0x0075f330    742e
    asm("{disp8} mov        eax, dword ptr [edi + 0x1c]");                   // 0x0075f332    8b471c
    asm("mov                edx, dword ptr [esi]");                          // 0x0075f335    8b16
    asm("mov.s              ecx, esi");                                      // 0x0075f337    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075f339    89442410
    asm("call               dword ptr [edx + 0x42c]");                       // 0x0075f33d    ff922c040000
    asm("{disp8} fcomp      dword ptr [esp + 0x10]");                        // 0x0075f343    d85c2410
    asm("fnstsw             ax");                                            // 0x0075f347    dfe0
    asm("test               ah, 0x41");                                      // 0x0075f349    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075f360");                          // 0x0075f34c    7512
    asm("push               0x0");                                           // 0x0075f34e    6a00
    asm("push               0x41200000");                                    // 0x0075f350    6800002041
    asm("{disp8} lea        eax, dword ptr [ebx + 0x14]");                   // 0x0075f355    8d4314
    asm("push               eax");                                           // 0x0075f358    50
    asm("mov.s              ecx, edi");                                      // 0x0075f359    8bcf
    asm("call               _jmp_addr_0x00435c40");                          // 0x0075f35b    e8e068cdff
    asm("_jmp_addr_0x0075f360:");
    asm("push               0x4f");                                          // 0x0075f360    6a4f
    asm("push               edi");                                           // 0x0075f362    57
    asm("mov.s              ecx, esi");                                      // 0x0075f363    8bce
    asm("call               ?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z");                          // 0x0075f365    e8261effff
    asm("push               0x1");                                           // 0x0075f36a    6a01
    asm("mov.s              ecx, ebx");                                      // 0x0075f36c    8bcb
    asm("call               _jmp_addr_0x00534860");                          // 0x0075f36e    e8ed54ddff
    asm("pop                edi");                                           // 0x0075f373    5f
    asm("pop                esi");                                           // 0x0075f374    5e
    asm("pop                ebp");                                           // 0x0075f375    5d
    asm("mov                eax, 0x00000001");                               // 0x0075f376    b801000000
    asm("pop                ebx");                                           // 0x0075f37b    5b
    asm("pop                ecx");                                           // 0x0075f37c    59
    asm("ret");                                                              // 0x0075f37d    c3
    __builtin_unreachable();
}

bool32_t __fastcall FootballMoveToBall__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x0075f380    56
    asm("mov.s              esi, ecx");                                      // 0x0075f381    8bf1
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f383    e8182bffff
    asm("test               eax, eax");                                      // 0x0075f388    85c0
    asm("{disp32} je        _jmp_addr_0x0075f42d");                          // 0x0075f38a    0f849d000000
    asm("mov.s              ecx, esi");                                      // 0x0075f390    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f392    e8092bffff
    asm("mov.s              ecx, eax");                                      // 0x0075f397    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f399    e87220ddff
    asm("test               eax, eax");                                      // 0x0075f39e    85c0
    asm("{disp32} je        _jmp_addr_0x0075f42d");                          // 0x0075f3a0    0f8487000000
    asm("mov.s              ecx, esi");                                      // 0x0075f3a6    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f3a8    e8f32affff
    asm("mov.s              ecx, eax");                                      // 0x0075f3ad    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f3af    e85c20ddff
    asm("mov                edx, dword ptr [eax]");                          // 0x0075f3b4    8b10
    asm("mov.s              ecx, eax");                                      // 0x0075f3b6    8bc8
    asm("call               dword ptr [edx + 0x2c]");                        // 0x0075f3b8    ff522c
    asm("cmp                eax, 0x01");                                     // 0x0075f3bb    83f801
    asm("{disp8} jne        _jmp_addr_0x0075f42d");                          // 0x0075f3be    756d
    asm("push               edi");                                           // 0x0075f3c0    57
    asm("mov.s              ecx, esi");                                      // 0x0075f3c1    8bce
    asm("call               ?GetFootball@Villager@@QAEPAVFootball@@XZ");     // 0x0075f3c3    e8d82affff
    asm("mov.s              ecx, eax");                                      // 0x0075f3c8    8bc8
    asm("call               ?GetBall@Football@@QAEPAXXZ");                   // 0x0075f3ca    e84120ddff
    asm("{disp32} lea       edi, dword ptr [eax + 0x00000084]");             // 0x0075f3cf    8db884000000
    asm("mov                eax, dword ptr [esi]");                          // 0x0075f3d5    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075f3d7    8bce
    asm("call               dword ptr [eax + 0x860]");                       // 0x0075f3d9    ff9060080000
    asm("push               eax");                                           // 0x0075f3df    50
    asm("push               edi");                                           // 0x0075f3e0    57
    asm("call               _jmp_addr_0x0074cd50");                          // 0x0075f3e1    e86ad9feff
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                   // 0x0075f3e6    d81d90a38a00
    asm("add                esp, 0x08");                                     // 0x0075f3ec    83c408
    asm("fnstsw             ax");                                            // 0x0075f3ef    dfe0
    asm("test               ah, 0x41");                                      // 0x0075f3f1    f6c441
    asm("{disp8} jne        _jmp_addr_0x0075f413");                          // 0x0075f3f4    751d
    asm("mov                edx, dword ptr [edi]");                          // 0x0075f3f6    8b17
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000080]");             // 0x0075f3f8    8d8e80000000
    asm("mov                dword ptr [ecx], edx");                          // 0x0075f3fe    8911
    asm("{disp8} mov        eax, dword ptr [edi + 0x04]");                   // 0x0075f400    8b4704
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x0075f403    894104
    asm("{disp8} mov        edx, dword ptr [edi + 0x08]");                   // 0x0075f406    8b5708
    asm("{disp8} mov        dword ptr [ecx + 0x08], edx");                   // 0x0075f409    895108
    asm("mov.s              ecx, esi");                                      // 0x0075f40c    8bce
    asm("call               ?InitStepsXZ@MobileWallHug@@QAEXXZ");            // 0x0075f40e    e88dcbeaff
    asm("_jmp_addr_0x0075f413:");
    asm("mov.s              ecx, esi");                                      // 0x0075f413    8bce
    asm("call               ?MoveTo@MobileWallHug@@QAEHXZ");                 // 0x0075f415    e806bbeaff
    asm("mov.s              edi, eax");                                      // 0x0075f41a    8bf8
    asm("cmp                edi, 0x0a");                                     // 0x0075f41c    83ff0a
    asm("{disp8} jne        _jmp_addr_0x0075f428");                          // 0x0075f41f    7507
    asm("mov.s              ecx, esi");                                      // 0x0075f421    8bce
    asm("call               ?SetTopStateToFinal@Living@@QAEXXZ");            // 0x0075f423    e858d6e8ff
    asm("_jmp_addr_0x0075f428:");
    asm("mov.s              eax, edi");                                      // 0x0075f428    8bc7
    asm("pop                edi");                                           // 0x0075f42a    5f
    asm("pop                esi");                                           // 0x0075f42b    5e
    asm("ret");                                                              // 0x0075f42c    c3
    asm("_jmp_addr_0x0075f42d:");
    asm("mov                eax, dword ptr [esi]");                          // 0x0075f42d    8b06
    asm("mov.s              ecx, esi");                                      // 0x0075f42f    8bce
    asm("call               dword ptr [eax + 0x8c8]");                       // 0x0075f431    ff90c8080000
    asm("pop                esi");                                           // 0x0075f437    5e
    asm("ret");                                                              // 0x0075f438    c3
    __builtin_unreachable();
}
