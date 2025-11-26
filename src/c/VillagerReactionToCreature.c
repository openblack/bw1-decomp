#include "Villager.h"
#include "Town.h"
#include <float.h>

const float villager_reaction_to_creature_float_max_0x0099a9e0 = FLT_MAX;
const float villager_reaction_to_creature_float10p0_0x0099a9e4 = 10.0f;
const float villager_reaction_to_creature_num_days_in_year_0x0099a9e8 = 365.25f;
const float villager_reaction_to_creature_seconds_in_day_0x0099a9ec = 86400.0f;
const float villager_reaction_to_creature_float0p7_0x0099a9f0 = 0.7f;
const float villager_reaction_to_creature_float0p5_0x0099a9f4 = 0.5f;

__attribute__((aligned(4))) char s_VillagerReactionToCreature_cpp[] = "C:\\dev\\MP\\Black\\VillagerReactionToCreature.cpp";

uint32_t villager_reaction_to_creature_uint_0x00db9e38;
uint32_t villager_reaction_to_creature_uint_0x00db9e3c;
float villager_reaction_to_creature_seconds_in_year_0x00db9e40;

void __cdecl globl_ct_0x007675b0(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x007675b0    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x007675b6    b001
    asm("test               al, cl");                                        // 0x007675b8    84c8
    asm("{disp8} jne        _jmp_addr_0x007675c4");                          // 0x007675ba    7508
    asm("or.s               cl, al");                                        // 0x007675bc    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x007675be    880d34c9fa00
    asm("_jmp_addr_0x007675c4:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x007675d0");   // 0x007675c4    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x007675d0(void)
{
    asm("push               0x00407870");                                    // 0x007675d0    6870784000
    asm("call               _atexit");                                       // 0x007675d5    e8b7e10500
    asm("pop                ecx");                                           // 0x007675da    59
}

void __cdecl globl_ct_0x007675e0(void)
{
    asm("{disp32} jmp       _FUN_007675f0__8VillagerFv");                    // 0x007675e0    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007675f0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_reaction_to_creature_seconds_in_day_0x0099a9ec]");   // 0x007675f0    d905eca99900
    asm("{disp32} fmul dword ptr [_villager_reaction_to_creature_num_days_in_year_0x0099a9e8]"); // 0x007675f6    d80de8a99900
    asm("{disp32} fstp dword ptr [_villager_reaction_to_creature_seconds_in_year_0x00db9e40]");  // 0x007675fc    d91d409edb00
}

void __cdecl globl_ct_0x00767610(void)
{
    asm("{disp32} jmp       _FUN_00767620__8VillagerFv");                    // 0x00767610    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00767620__8VillagerFv(void)
{
    asm("{disp32} mov dword ptr [_villager_reaction_to_creature_uint_0x00db9e3c], 0xffffffff");  // 0x00767620    c7053c9edb00ffffffff
}

void __fastcall SetupReactToCreature__8VillagerFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00767630    8b442404
    asm("push               ebx");                                           // 0x00767634    53
    asm("push               esi");                                           // 0x00767635    56
    asm("push               edi");                                           // 0x00767636    57
    asm("push               0x0");                                           // 0x00767637    6a00
    asm("push               0x009c8060");                                    // 0x00767639    6860809c00
    asm("push               0x009c7f30");                                    // 0x0076763e    68307f9c00
    asm("push               0x0");                                           // 0x00767643    6a00
    asm("push               eax");                                           // 0x00767645    50
    asm("mov.s              esi, ecx");                                      // 0x00767646    8bf1
    asm("call               ___RTDynamicCast");                              // 0x00767648    e8cce30500
    asm("mov.s              edi, eax");                                      // 0x0076764d    8bf8
    asm("mov                edx, dword ptr [edi]");                          // 0x0076764f    8b17
    asm("add                esp, 0x14");                                     // 0x00767651    83c414
    asm("mov.s              ecx, edi");                                      // 0x00767654    8bcf
    asm("call               dword ptr [edx + 0x2c]");                        // 0x00767656    ff522c
    asm("test               eax, eax");                                      // 0x00767659    85c0
    asm("{disp8} je         _jmp_addr_0x007676ba");                          // 0x0076765b    745d
    asm("{disp32} mov       dword ptr [esi + 0x000000bc], edi");             // 0x0076765d    89bebc000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00767663    8b06
    asm("mov.s              ecx, esi");                                      // 0x00767665    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00767667    ff5048
    asm("mov.s              ebx, eax");                                      // 0x0076766a    8bd8
    asm("test               ebx, ebx");                                      // 0x0076766c    85db
    asm("{disp8} je         _jmp_addr_0x007676a6");                          // 0x0076766e    7436
    asm("push               edi");                                           // 0x00767670    57
    asm("mov.s              ecx, ebx");                                      // 0x00767671    8bcb
    asm("call               _jmp_addr_0x00743720");                          // 0x00767673    e8a8c0fdff
    asm("push               edi");                                           // 0x00767678    57
    asm("mov.s              ecx, ebx");                                      // 0x00767679    8bcb
    asm("call               _jmp_addr_0x007436f0");                          // 0x0076767b    e870c0fdff
    asm("cmp                eax, 0x04");                                     // 0x00767680    83f804
    asm("{disp8} ja         _jmp_addr_0x007676ba");                          // 0x00767683    7735
    asm("jmp                dword ptr [eax*4 + 0x7676c0]");                  // 0x00767685    ff2485c0767600
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x0076768c    8b442414
    asm("mov                edx, dword ptr [esi]");                          // 0x00767690    8b16
    asm("push               0x0000009f");                                    // 0x00767692    689f000000
    asm("push               eax");                                           // 0x00767697    50
    asm("mov.s              ecx, esi");                                      // 0x00767698    8bce
    asm("call               dword ptr [edx + 0x990]");                       // 0x0076769a    ff9290090000
    asm("pop                edi");                                           // 0x007676a0    5f
    asm("pop                esi");                                           // 0x007676a1    5e
    asm("pop                ebx");                                           // 0x007676a2    5b
    asm("ret                0x0008");                                        // 0x007676a3    c20800
    asm("_jmp_addr_0x007676a6:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x007676a6    8b442414
    asm("mov                edx, dword ptr [esi]");                          // 0x007676aa    8b16
    asm("push               0x00000092");                                    // 0x007676ac    6892000000
    asm("push               eax");                                           // 0x007676b1    50
    asm("mov.s              ecx, esi");                                      // 0x007676b2    8bce
    asm("call               dword ptr [edx + 0x990]");                       // 0x007676b4    ff9290090000
    asm("_jmp_addr_0x007676ba:");
    asm("pop                edi");                                           // 0x007676ba    5f
    asm("pop                esi");                                           // 0x007676bb    5e
    asm("pop                ebx");                                           // 0x007676bc    5b
    asm("ret                0x0008");                                        // 0x007676bd    c20800
    // Snippet: jmptbl, [0x007676c0, 0x007676d4)
    asm(".byte 0xa6, 0x76, 0x76, 0x00");      // 0x007676c0
    asm(".byte 0xba, 0x76, 0x76, 0x00");      // 0x007676c4
    asm(".byte 0xa6, 0x76, 0x76, 0x00");      // 0x007676c8
    asm(".byte 0x8c, 0x76, 0x76, 0x00");      // 0x007676cc
    asm(".byte 0xa6, 0x76, 0x76, 0x00");      // 0x007676d0
    // Snippet: db, [0x007676d4, 0x007676e0)
    asm(".byte 0x90, 0x90, 0x90, 0x90");      // 0x007676d4
    asm(".byte 0x90, 0x90, 0x90, 0x90");      // 0x007676d8
    asm(".byte 0x90, 0x90, 0x90, 0x90");      // 0x007676dc
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint8_t __fastcall ReactToCreaturePriority__8VillagerFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2)
{
    asm("sub                esp, 0x08");                                // 0x007676e0    83ec08
    asm("push               ebx");                                      // 0x007676e3    53
    asm("push               esi");                                      // 0x007676e4    56
    asm("push               edi");                                      // 0x007676e5    57
    asm("mov.s              edi, ecx");                                 // 0x007676e6    8bf9
    asm("mov                eax, dword ptr [edi]");                     // 0x007676e8    8b07
    asm("call               dword ptr [eax + 0x978]");                  // 0x007676ea    ff9078090000
    asm("test               eax, eax");                                 // 0x007676f0    85c0
    asm("{disp32} jne       _jmp_addr_0x0076787d");                     // 0x007676f2    0f8585010000
    asm("{disp8} mov        ebx, dword ptr [esp + 0x18]");              // 0x007676f8    8b5c2418
    asm("{disp8} mov        eax, dword ptr [ebx + 0x14]");              // 0x007676fc    8b4314
    asm("push               0x0");                                      // 0x007676ff    6a00
    asm("push               0x009c8060");                               // 0x00767701    6860809c00
    asm("push               0x009c7f30");                               // 0x00767706    68307f9c00
    asm("push               0x0");                                      // 0x0076770b    6a00
    asm("push               eax");                                      // 0x0076770d    50
    asm("call               ___RTDynamicCast");                         // 0x0076770e    e806e30500
    asm("mov.s              esi, eax");                                 // 0x00767713    8bf0
    asm("add                esp, 0x14");                                // 0x00767715    83c414
    asm("test               esi, esi");                                 // 0x00767718    85f6
    asm("{disp32} je        _jmp_addr_0x0076787d");                     // 0x0076771a    0f845d010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000012c0]");        // 0x00767720    8b86c0120000
    asm("test               eax, eax");                                 // 0x00767726    85c0
    asm("{disp32} jne       _jmp_addr_0x0076787d");                     // 0x00767728    0f854f010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x0000106c]");        // 0x0076772e    8b866c100000
    asm("test               eax, eax");                                 // 0x00767734    85c0
    asm("{disp32} jne       _jmp_addr_0x0076787d");                     // 0x00767736    0f8541010000
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");              // 0x0076773c    8d4e14
    asm("push               ecx");                                      // 0x0076773f    51
    asm("{disp8} lea        edx, dword ptr [edi + 0x14]");              // 0x00767740    8d5714
    asm("push               edx");                                      // 0x00767743    52
    asm("call               _jmp_addr_0x0074cd50");                     // 0x00767744    e80756feff
    asm("{disp8} fstp       dword ptr [esp + 0x20]");                   // 0x00767749    d95c2420
    asm("add                esp, 0x08");                                // 0x0076774d    83c408
    asm("mov.s              ecx, ebx");                                 // 0x00767750    8bcb
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");// 0x00767752    e8a9cff7ff
    asm("{disp8} fld        dword ptr [esp + 0x18]");                   // 0x00767757    d9442418
    asm("{disp8} fcomp      dword ptr [eax + 0x44]");                   // 0x0076775b    d85844
    asm("fnstsw             ax");                                       // 0x0076775e    dfe0
    asm("test               ah, 0x41");                                 // 0x00767760    f6c441
    asm("{disp32} je        _jmp_addr_0x0076787d");                     // 0x00767763    0f8414010000
    asm("mov                eax, dword ptr [edi]");                     // 0x00767769    8b07
    asm("mov.s              ecx, edi");                                 // 0x0076776b    8bcf
    asm("call               dword ptr [eax + 0x48]");                   // 0x0076776d    ff5048
    asm("mov.s              ebx, eax");                                 // 0x00767770    8bd8
    asm("test               ebx, ebx");                                 // 0x00767772    85db
    asm("{disp8} je         _jmp_addr_0x007677b8");                     // 0x00767774    7442
    asm("push               esi");                                      // 0x00767776    56
    asm("mov.s              ecx, ebx");                                 // 0x00767777    8bcb
    asm("call               _jmp_addr_0x007436f0");                     // 0x00767779    e872bffdff
    asm("cmp                eax, 0x04");                                // 0x0076777e    83f804
    asm("{disp32} ja        _jmp_addr_0x0076787d");                     // 0x00767781    0f87f6000000
    asm("jmp                dword ptr [eax*4 + 0x767888]");             // 0x00767787    ff248588787600
    asm("{disp32} mov       ecx, dword ptr [data_bytes + 0x389918]");   // 0x0076778e    8b0d18f9d400
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");              // 0x00767794    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");       // 0x00767798    c744241000000000
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                   // 0x007677a0    df6c240c
    asm("{disp32} fmul      dword ptr [__real@3fc00000]");              // 0x007677a4    d80d4cb28a00
    asm("call               _jmp_addr_0x007a1400");                     // 0x007677aa    e8519c0300
    asm("pop                edi");                                      // 0x007677af    5f
    asm("pop                esi");                                      // 0x007677b0    5e
    asm("pop                ebx");                                      // 0x007677b1    5b
    asm("add                esp, 0x08");                                // 0x007677b2    83c408
    asm("ret                0x0008");                                   // 0x007677b5    c20800
    asm("_jmp_addr_0x007677b8:");
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x389918]");     // 0x007677b8    a018f9d400
    asm("pop                edi");                                      // 0x007677bd    5f
    asm("pop                esi");                                      // 0x007677be    5e
    asm("pop                ebx");                                      // 0x007677bf    5b
    asm("add                esp, 0x08");                                // 0x007677c0    83c408
    asm("ret                0x0008");                                   // 0x007677c3    c20800
    asm("{disp32} mov       edx, dword ptr [data_bytes + 0x3896c0]");   // 0x007677c6    8b15c0f6d400
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");              // 0x007677cc    8954240c
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");       // 0x007677d0    c744241000000000
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                   // 0x007677d8    df6c240c
    asm("fadd.s             st(0), st(0)");                             // 0x007677dc    dcc0
    asm("call               _jmp_addr_0x007a1400");                     // 0x007677de    e81d9c0300
    asm("pop                edi");                                      // 0x007677e3    5f
    asm("pop                esi");                                      // 0x007677e4    5e
    asm("pop                ebx");                                      // 0x007677e5    5b
    asm("add                esp, 0x08");                                // 0x007677e6    83c408
    asm("ret                0x0008");                                   // 0x007677e9    c20800
    asm("mov                eax, dword ptr [ebx]");                     // 0x007677ec    8b03
    asm("mov.s              ecx, ebx");                                 // 0x007677ee    8bcb
    asm("call               dword ptr [eax + 0x1c]");                   // 0x007677f0    ff501c
    asm("mov.s              edx, eax");                                 // 0x007677f3    8bd0
    asm("mov                eax, dword ptr [esi]");                     // 0x007677f5    8b06
    asm("mov.s              ecx, esi");                                 // 0x007677f7    8bce
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");              // 0x007677f9    89542418
    asm("call               dword ptr [eax + 0x1c]");                   // 0x007677fd    ff501c
    asm("{disp8} mov        ecx, dword ptr [esp + 0x18]");              // 0x00767800    8b4c2418
    asm("cmp.s              ecx, eax");                                 // 0x00767804    3bc8
    asm("{disp8} jne        _jmp_addr_0x0076786f");                     // 0x00767806    7567
    asm("xor.s              edx, edx");                                 // 0x00767808    33d2
    asm("{disp32} mov       dx, word ptr [edi + 0x000000e0]");          // 0x0076780a    668b97e0000000
    asm("shr                edx, 9");                                   // 0x00767811    c1ea09
    asm("test               dl, 0x01");                                 // 0x00767814    f6c201
    asm("{disp8} jne        _jmp_addr_0x0076787d");                     // 0x00767817    7564
    asm("mov                eax, dword ptr [edi]");                     // 0x00767819    8b07
    asm("mov.s              ecx, edi");                                 // 0x0076781b    8bcf
    asm("call               dword ptr [eax + 0xb04]");                  // 0x0076781d    ff90040b0000
    asm("and                eax, 0x000000ff");                          // 0x00767823    25ff000000
    asm("mov.s              ecx, eax");                                 // 0x00767828    8bc8
    asm("lea                eax, dword ptr [ecx + ecx * 0x2]");         // 0x0076782a    8d0449
    asm("shl                eax, 3");                                   // 0x0076782d    c1e003
    asm("sub.s              eax, ecx");                                 // 0x00767830    2bc1
    asm("lea                eax, dword ptr [eax + eax * 0x2]");         // 0x00767832    8d0440
    asm("shl                eax, 2");                                   // 0x00767835    c1e002
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00db9e7c]");        // 0x00767838    8b887c9edb00
    asm("test               ecx, ecx");                                 // 0x0076783e    85c9
    asm("{disp8} jl         _jmp_addr_0x0076786f");                     // 0x00767840    7c2d
    asm("cmp                ecx, 0x11");                                // 0x00767842    83f911
    asm("{disp8} jge        _jmp_addr_0x0076786f");                     // 0x00767845    7d28
    asm("{disp32} fld       dword ptr [ebx + ecx * 0x4 + 0x0000019c]"); // 0x00767847    d9848b9c010000
    asm("{disp32} fadd      dword ptr [ebx + ecx * 0x4 + 0x00000108]"); // 0x0076784e    d8848b08010000
    asm("{disp32} fadd      dword ptr [ebx + ecx * 0x4 + 0x000000c4]"); // 0x00767855    d8848bc4000000
    asm("{disp32} fmul      dword ptr [eax + 0x00db9e80]");             // 0x0076785c    d888809edb00
    asm("{disp32} fcomp     dword ptr [_rdata_float0p0]");              // 0x00767862    d81d98a38a00
    asm("fnstsw             ax");                                       // 0x00767868    dfe0
    asm("test               ah, 0x41");                                 // 0x0076786a    f6c441
    asm("{disp8} je         _jmp_addr_0x0076787d");                     // 0x0076786d    740e
    asm("_jmp_addr_0x0076786f:");
    asm("{disp32} mov       al, byte ptr [data_bytes + 0x389788]");     // 0x0076786f    a088f7d400
    asm("pop                edi");                                      // 0x00767874    5f
    asm("pop                esi");                                      // 0x00767875    5e
    asm("pop                ebx");                                      // 0x00767876    5b
    asm("add                esp, 0x08");                                // 0x00767877    83c408
    asm("ret                0x0008");                                   // 0x0076787a    c20800
    asm("_jmp_addr_0x0076787d:");
    asm("pop                edi");                                      // 0x0076787d    5f
    asm("pop                esi");                                      // 0x0076787e    5e
    asm("xor.s              al, al");                                   // 0x0076787f    32c0
    asm("pop                ebx");                                      // 0x00767881    5b
    asm("add                esp, 0x08");                                // 0x00767882    83c408
    asm("ret                0x0008");                                   // 0x00767885    c20800
    // Snippet: jmptbl, [0x00767888, 0x0076789c)
    asm(".byte 0x8e, 0x77, 0x76, 0x00");      // 0x00767888
    asm(".byte 0x7d, 0x78, 0x76, 0x00");      // 0x0076788c
    asm(".byte 0xb8, 0x77, 0x76, 0x00");      // 0x00767890
    asm(".byte 0xc6, 0x77, 0x76, 0x00");      // 0x00767894
    asm(".byte 0xec, 0x77, 0x76, 0x00");      // 0x00767898
    // Snippet: db, [0x0076789c, 0x007678a0)
    asm(".byte 0x90, 0x90, 0x90, 0x90");      // 0x0076789c
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall InspectCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                       // 0x007678a0    83ec08
    asm("push               esi");                                             // 0x007678a3    56
    asm("mov.s              esi, ecx");                                        // 0x007678a4    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x007678a6    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x007678ac    85c9
    asm("{disp32} je        _jmp_addr_0x0076795a");                            // 0x007678ae    0f84a6000000
    asm("mov                eax, dword ptr [ecx]");                            // 0x007678b4    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x007678b6    ff502c
    asm("test               eax, eax");                                        // 0x007678b9    85c0
    asm("{disp32} je        _jmp_addr_0x0076795a");                            // 0x007678bb    0f8499000000
    asm("push               ebx");                                             // 0x007678c1    53
    asm("push               edi");                                             // 0x007678c2    57
    asm("{disp32} mov       dword ptr [esi + 0x0000010c], 0x41a00000");        // 0x007678c3    c7860c0100000000a041
    asm("{disp32} mov       edi, dword ptr [data_bytes + 0x33ba38]");          // 0x007678cd    8b3d381ad000
    asm("xor.s              edx, edx");                                        // 0x007678d3    33d2
    asm("mov                eax, 0x000003e8");                                 // 0x007678d5    b8e8030000
    asm("div                edi");                                             // 0x007678da    f7f7
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");              // 0x007678dc    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], eax");                     // 0x007678e4    8944240c
    asm("{disp8} fild       qword ptr [esp + 0x0c]");                          // 0x007678e8    df6c240c
    asm("{disp32} fmul      dword ptr [__real@3fc00000]");                     // 0x007678ec    d80d4cb28a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x007678f2    e8099b0300
    asm("mov.s              ebx, eax");                                        // 0x007678f7    8bd8
    asm("xor.s              edx, edx");                                        // 0x007678f9    33d2
    asm("mov                eax, 0x000003e8");                                 // 0x007678fb    b8e8030000
    asm("div                edi");                                             // 0x00767900    f7f7
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");              // 0x00767902    c744241000000000
    asm("push               0x000000a0");                                      // 0x0076790a    68a0000000
    asm("push               0x00c245b0");                                      // 0x0076790f    68b045c200
    asm("{disp8} mov        dword ptr [esp + 0x14], eax");                     // 0x00767914    89442414
    asm("{disp8} fild       qword ptr [esp + 0x14]");                          // 0x00767918    df6c2414
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x19c50]");               // 0x0076791c    d80d502c8c00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00767922    e8d99a0300
    asm("push               eax");                                             // 0x00767927    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x00767928    e8e36bf7ff
    asm("mov                edx, dword ptr [esi]");                            // 0x0076792d    8b16
    asm("add                esp, 0x0c");                                       // 0x0076792f    83c40c
    asm("add.s              eax, ebx");                                        // 0x00767932    03c3
    asm("push               0x00000093");                                      // 0x00767934    6893000000
    asm("mov.s              ecx, esi");                                        // 0x00767939    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000110], eax");               // 0x0076793b    898610010000
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00767941    ff92e8080000
    asm("mov.s              ecx, esi");                                        // 0x00767947    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767949    e8a20a0000
    asm("pop                edi");                                             // 0x0076794e    5f
    asm("pop                ebx");                                             // 0x0076794f    5b
    asm("mov                eax, 0x00000001");                                 // 0x00767950    b801000000
    asm("pop                esi");                                             // 0x00767955    5e
    asm("add                esp, 0x08");                                       // 0x00767956    83c408
    asm("ret");                                                                // 0x00767959    c3
    asm("_jmp_addr_0x0076795a:");
    asm("mov                eax, dword ptr [esi]");                            // 0x0076795a    8b06
    asm("mov.s              ecx, esi");                                        // 0x0076795c    8bce
    asm("call               dword ptr [eax + 0x99c]");                         // 0x0076795e    ff909c090000
    asm("mov                eax, 0x00000001");                                 // 0x00767964    b801000000
    asm("pop                esi");                                             // 0x00767969    5e
    asm("add                esp, 0x08");                                       // 0x0076796a    83c408
    asm("ret");                                                                // 0x0076796d    c3
    __builtin_unreachable();
}

bool32_t __fastcall PerformInspectCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00767970    56
    asm("mov.s              esi, ecx");                                        // 0x00767971    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767973    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x00767979    85c9
    asm("{disp8} je         _jmp_addr_0x007679ac");                            // 0x0076797b    742f
    asm("mov                eax, dword ptr [ecx]");                            // 0x0076797d    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x0076797f    ff502c
    asm("test               eax, eax");                                        // 0x00767982    85c0
    asm("{disp8} je         _jmp_addr_0x007679ac");                            // 0x00767984    7426
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                    // 0x00767986    d9860c010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000110]");               // 0x0076798c    8b8610010000
    asm("dec                eax");                                             // 0x00767992    48
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                     // 0x00767993    d81d90a38a00
    asm("{disp32} mov       dword ptr [esi + 0x00000110], eax");               // 0x00767999    898610010000
    asm("mov.s              ecx, eax");                                        // 0x0076799f    8bc8
    asm("fnstsw             ax");                                              // 0x007679a1    dfe0
    asm("test               ah, 0x01");                                        // 0x007679a3    f6c401
    asm("{disp8} je         _jmp_addr_0x007679bd");                            // 0x007679a6    7415
    asm("test               ecx, ecx");                                        // 0x007679a8    85c9
    asm("{disp8} jne        _jmp_addr_0x007679ee");                            // 0x007679aa    7542
    asm("_jmp_addr_0x007679ac:");
    asm("mov                edx, dword ptr [esi]");                            // 0x007679ac    8b16
    asm("mov.s              ecx, esi");                                        // 0x007679ae    8bce
    asm("call               dword ptr [edx + 0x99c]");                         // 0x007679b0    ff929c090000
    asm("mov                eax, 0x00000001");                                 // 0x007679b6    b801000000
    asm("pop                esi");                                             // 0x007679bb    5e
    asm("ret");                                                                // 0x007679bc    c3
    asm("_jmp_addr_0x007679bd:");
    asm("test               ecx, ecx");                                        // 0x007679bd    85c9
    asm("{disp8} jne        _jmp_addr_0x007679de");                            // 0x007679bf    751d
    asm("mov                eax, dword ptr [esi]");                            // 0x007679c1    8b06
    asm("push               0x00000094");                                      // 0x007679c3    6894000000
    asm("mov.s              ecx, esi");                                        // 0x007679c8    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x007679ca    ff90e8080000
    asm("mov.s              ecx, esi");                                        // 0x007679d0    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x007679d2    e8190a0000
    asm("mov                eax, 0x00000001");                                 // 0x007679d7    b801000000
    asm("pop                esi");                                             // 0x007679dc    5e
    asm("ret");                                                                // 0x007679dd    c3
    asm("_jmp_addr_0x007679de:");
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x007679de    8b8ebc000000
    asm("push               0x1");                                             // 0x007679e4    6a01
    asm("push               ecx");                                             // 0x007679e6    51
    asm("mov.s              ecx, esi");                                        // 0x007679e7    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                            // 0x007679e9    e8324be8ff
    asm("_jmp_addr_0x007679ee:");
    asm("mov.s              ecx, esi");                                        // 0x007679ee    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x007679f0    e8fb090000
    asm("mov                eax, 0x00000001");                                 // 0x007679f5    b801000000
    asm("pop                esi");                                             // 0x007679fa    5e
    asm("ret");                                                                // 0x007679fb    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ApproachCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                       // 0x00767a00    83ec14
    asm("push               ebp");                                             // 0x00767a03    55
    asm("push               esi");                                             // 0x00767a04    56
    asm("mov.s              esi, ecx");                                        // 0x00767a05    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767a07    8b8ebc000000
    asm("xor.s              ebp, ebp");                                        // 0x00767a0d    33ed
    asm("cmp.s              ecx, ebp");                                        // 0x00767a0f    3bcd
    asm("{disp32} je        _jmp_addr_0x00767b83");                            // 0x00767a11    0f846c010000
    asm("mov                eax, dword ptr [ecx]");                            // 0x00767a17    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x00767a19    ff502c
    asm("test               eax, eax");                                        // 0x00767a1c    85c0
    asm("{disp32} je        _jmp_addr_0x00767b83");                            // 0x00767a1e    0f845f010000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");               // 0x00767a24    8b86bc000000
    asm("push               ebx");                                             // 0x00767a2a    53
    asm("push               edi");                                             // 0x00767a2b    57
    asm("add                eax, 0x14");                                       // 0x00767a2c    83c014
    asm("push               eax");                                             // 0x00767a2f    50
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                     // 0x00767a30    8d7e14
    asm("push               edi");                                             // 0x00767a33    57
    asm("call               _jmp_addr_0x0074cd50");                            // 0x00767a34    e81753feff
    asm("{disp8} fst        dword ptr [esp + 0x18]");                          // 0x00767a39    d9542418
    asm("{disp32} fsub      dword ptr [esi + 0x0000010c]");                    // 0x00767a3d    d8a60c010000
    asm("add                esp, 0x08");                                       // 0x00767a43    83c408
    asm("{disp32} fcomp     dword ptr [_rdata_float1p0]");                     // 0x00767a46    d81d90a38a00
    asm("fnstsw             ax");                                              // 0x00767a4c    dfe0
    asm("test               ah, 0x41");                                        // 0x00767a4e    f6c441
    asm("{disp32} jne       _jmp_addr_0x00767aeb");                            // 0x00767a51    0f8594000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");               // 0x00767a57    8b86bc000000
    asm("add                eax, 0x14");                                       // 0x00767a5d    83c014
    asm("push               eax");                                             // 0x00767a60    50
    asm("push               edi");                                             // 0x00767a61    57
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                                 // 0x00767a62    e8d957feff
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                    // 0x00767a67    d9860c010000
    asm("{disp8} fld        dword ptr [esp + 0x18]");                          // 0x00767a6d    d9442418
    asm("add                esp, 0x04");                                       // 0x00767a71    83c404
    asm("fsub               st, st(1)");                                       // 0x00767a74    d8e1
    asm("mov.s              ebx, eax");                                        // 0x00767a76    8bd8
    asm("fstp               dword ptr [esp]");                                 // 0x00767a78    d91c24
    asm("fstp               st(0)");                                           // 0x00767a7b    ddd8
    asm("call               _jmp_addr_0x0074e1d0");                            // 0x00767a7d    e84e67feff
    asm("push               eax");                                             // 0x00767a82    50
    asm("push               ebx");                                             // 0x00767a83    53
    asm("call               _jmp_addr_0x0074d3e0");                            // 0x00767a84    e85759feff
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                    // 0x00767a89    d9860c010000
    asm("{disp8} fld        dword ptr [esp + 0x1c]");                          // 0x00767a8f    d944241c
    asm("add                esp, 0x08");                                       // 0x00767a93    83c408
    asm("fsub               st, st(1)");                                       // 0x00767a96    d8e1
    asm("mov.s              ebp, eax");                                        // 0x00767a98    8be8
    asm("fstp               dword ptr [esp]");                                 // 0x00767a9a    d91c24
    asm("fstp               st(0)");                                           // 0x00767a9d    ddd8
    asm("call               _jmp_addr_0x0074e200");                            // 0x00767a9f    e85c67feff
    asm("push               eax");                                             // 0x00767aa4    50
    asm("push               ebx");                                             // 0x00767aa5    53
    asm("call               _jmp_addr_0x0074d400");                            // 0x00767aa6    e85559feff
    asm("mov                ecx, dword ptr [edi]");                            // 0x00767aab    8b0f
    asm("{disp8} mov        edx, dword ptr [edi + 0x04]");                     // 0x00767aad    8b5704
    asm("{disp8} mov        edi, dword ptr [edi + 0x08]");                     // 0x00767ab0    8b7f08
    asm("add.s              ecx, ebp");                                        // 0x00767ab3    03cd
    asm("add                esp, 0x0c");                                       // 0x00767ab5    83c40c
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                     // 0x00767ab8    894c2418
    asm("push               0x00000094");                                      // 0x00767abc    6894000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x1c]");                     // 0x00767ac1    8d4c241c
    asm("add.s              edx, eax");                                        // 0x00767ac5    03d0
    asm("push               ecx");                                             // 0x00767ac7    51
    asm("mov.s              ecx, esi");                                        // 0x00767ac8    8bce
    asm("{disp8} mov        dword ptr [esp + 0x28], edi");                     // 0x00767aca    897c2428
    asm("{disp8} mov        dword ptr [esp + 0x24], edx");                     // 0x00767ace    89542424
    asm("call               ?SetupMoveToCreatureReaction@Villager@@QAEXABUMapCoords@@E@Z");                            // 0x00767ad2    e8390a0000
    asm("mov.s              ecx, esi");                                        // 0x00767ad7    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767ad9    e812090000
    asm("pop                edi");                                             // 0x00767ade    5f
    asm("pop                ebx");                                             // 0x00767adf    5b
    asm("pop                esi");                                             // 0x00767ae0    5e
    asm("mov                eax, 0x00000001");                                 // 0x00767ae1    b801000000
    asm("pop                ebp");                                             // 0x00767ae6    5d
    asm("add                esp, 0x14");                                       // 0x00767ae7    83c414
    asm("ret");                                                                // 0x00767aea    c3
    asm("_jmp_addr_0x00767aeb:");
    asm("{disp32} mov       edi, dword ptr [data_bytes + 0x33ba38]");          // 0x00767aeb    8b3d381ad000
    asm("xor.s              edx, edx");                                        // 0x00767af1    33d2
    asm("mov                eax, 0x000003e8");                                 // 0x00767af3    b8e8030000
    asm("div                edi");                                             // 0x00767af8    f7f7
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                     // 0x00767afa    896c2414
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00767afe    89442410
    asm("{disp8} fild       qword ptr [esp + 0x10]");                          // 0x00767b02    df6c2410
    asm("{disp32} fmul      dword ptr [__real@3fc00000]");                     // 0x00767b06    d80d4cb28a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00767b0c    e8ef980300
    asm("mov.s              ebx, eax");                                        // 0x00767b11    8bd8
    asm("xor.s              edx, edx");                                        // 0x00767b13    33d2
    asm("mov                eax, 0x000003e8");                                 // 0x00767b15    b8e8030000
    asm("div                edi");                                             // 0x00767b1a    f7f7
    asm("{disp8} mov        dword ptr [esp + 0x14], ebp");                     // 0x00767b1c    896c2414
    asm("push               0x000000e7");                                      // 0x00767b20    68e7000000
    asm("push               0x00c245b0");                                      // 0x00767b25    68b045c200
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x00767b2a    89442418
    asm("{disp8} fild       qword ptr [esp + 0x18]");                          // 0x00767b2e    df6c2418
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x23750]");               // 0x00767b32    d80d50c78c00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00767b38    e8c3980300
    asm("push               eax");                                             // 0x00767b3d    50
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x00767b3e    e8cd69f7ff
    asm("{disp32} fld       dword ptr [esi + 0x0000010c]");                    // 0x00767b43    d9860c010000
    asm("mov                edx, dword ptr [esi]");                            // 0x00767b49    8b16
    asm("{disp32} fsub      dword ptr [rdata_bytes + 0x19c70]");               // 0x00767b4b    d825702c8c00
    asm("add                esp, 0x0c");                                       // 0x00767b51    83c40c
    asm("add.s              eax, ebx");                                        // 0x00767b54    03c3
    asm("push               0x00000093");                                      // 0x00767b56    6893000000
    asm("{disp32} fstp      dword ptr [esi + 0x0000010c]");                    // 0x00767b5b    d99e0c010000
    asm("mov.s              ecx, esi");                                        // 0x00767b61    8bce
    asm("{disp32} mov       dword ptr [esi + 0x00000110], eax");               // 0x00767b63    898610010000
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00767b69    ff92e8080000
    asm("mov.s              ecx, esi");                                        // 0x00767b6f    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767b71    e87a080000
    asm("pop                edi");                                             // 0x00767b76    5f
    asm("pop                ebx");                                             // 0x00767b77    5b
    asm("pop                esi");                                             // 0x00767b78    5e
    asm("mov                eax, 0x00000001");                                 // 0x00767b79    b801000000
    asm("pop                ebp");                                             // 0x00767b7e    5d
    asm("add                esp, 0x14");                                       // 0x00767b7f    83c414
    asm("ret");                                                                // 0x00767b82    c3
    asm("_jmp_addr_0x00767b83:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00767b83    8b06
    asm("mov.s              ecx, esi");                                        // 0x00767b85    8bce
    asm("call               dword ptr [eax + 0x99c]");                         // 0x00767b87    ff909c090000
    asm("pop                esi");                                             // 0x00767b8d    5e
    asm("mov                eax, 0x00000001");                                 // 0x00767b8e    b801000000
    asm("pop                ebp");                                             // 0x00767b93    5d
    asm("add                esp, 0x14");                                       // 0x00767b94    83c414
    asm("ret");                                                                // 0x00767b97    c3
    __builtin_unreachable();
}

bool32_t __fastcall InitialiseRespectCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x24");                                       // 0x00767ba0    83ec24
    asm("push               esi");                                             // 0x00767ba3    56
    asm("mov.s              esi, ecx");                                        // 0x00767ba4    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767ba6    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x00767bac    85c9
    asm("{disp32} je        _jmp_addr_0x00767c6a");                            // 0x00767bae    0f84b6000000
    asm("mov                eax, dword ptr [ecx]");                            // 0x00767bb4    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x00767bb6    ff502c
    asm("test               eax, eax");                                        // 0x00767bb9    85c0
    asm("{disp32} je        _jmp_addr_0x00767c6a");                            // 0x00767bbb    0f84a9000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");               // 0x00767bc1    8b86bc000000
    asm("push               0x0");                                             // 0x00767bc7    6a00
    asm("push               0x009c8060");                                      // 0x00767bc9    6860809c00
    asm("push               0x009c7f30");                                      // 0x00767bce    68307f9c00
    asm("push               0x0");                                             // 0x00767bd3    6a00
    asm("push               eax");                                             // 0x00767bd5    50
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");              // 0x00767bd6    c744241800000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");              // 0x00767bde    c744241c00000000
    asm("{disp8} mov        dword ptr [esp + 0x20], 0x00000000");              // 0x00767be6    c744242000000000
    asm("call               ___RTDynamicCast");                                // 0x00767bee    e826de0500
    asm("mov                edx, dword ptr [esi]");                            // 0x00767bf3    8b16
    asm("add                esp, 0x14");                                       // 0x00767bf5    83c414
    asm("push               eax");                                             // 0x00767bf8    50
    asm("{disp8} lea        eax, dword ptr [esp + 0x20]");                     // 0x00767bf9    8d442420
    asm("push               eax");                                             // 0x00767bfd    50
    asm("mov.s              ecx, esi");                                        // 0x00767bfe    8bce
    asm("call               dword ptr [edx + 0x834]");                         // 0x00767c00    ff9234080000
    asm("mov                ecx, dword ptr [eax]");                            // 0x00767c06    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                     // 0x00767c08    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                     // 0x00767c0b    8b4008
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                     // 0x00767c0e    894c2410
    asm("{disp8} fld        dword ptr [esp + 0x10]");                          // 0x00767c12    d9442410
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x00767c16    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                     // 0x00767c1c    89542414
    asm("{disp8} mov        dword ptr [esp + 0x18], eax");                     // 0x00767c20    89442418
    asm("call               _jmp_addr_0x007a1400");                            // 0x00767c24    e8d7970300
    asm("{disp8} fld        dword ptr [esp + 0x18]");                          // 0x00767c29    d9442418
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3400]");                // 0x00767c2d    d80d00c48a00
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                     // 0x00767c33    89442404
    asm("call               _jmp_addr_0x007a1400");                            // 0x00767c37    e8c4970300
    asm("push               0x000000a0");                                      // 0x00767c3c    68a0000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                     // 0x00767c41    8d4c2408
    asm("push               ecx");                                             // 0x00767c45    51
    asm("mov.s              ecx, esi");                                        // 0x00767c46    8bce
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x00767c48    89442410
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x00767c4c    c744241400000000
    asm("call               ?SetupMoveToCreatureReaction@Villager@@QAEXABUMapCoords@@E@Z");                            // 0x00767c54    e8b7080000
    asm("mov.s              ecx, esi");                                        // 0x00767c59    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767c5b    e890070000
    asm("mov                eax, 0x00000001");                                 // 0x00767c60    b801000000
    asm("pop                esi");                                             // 0x00767c65    5e
    asm("add                esp, 0x24");                                       // 0x00767c66    83c424
    asm("ret");                                                                // 0x00767c69    c3
    asm("_jmp_addr_0x00767c6a:");
    asm("mov                edx, dword ptr [esi]");                            // 0x00767c6a    8b16
    asm("mov.s              ecx, esi");                                        // 0x00767c6c    8bce
    asm("call               dword ptr [edx + 0x99c]");                         // 0x00767c6e    ff929c090000
    asm("mov                eax, 0x00000001");                                 // 0x00767c74    b801000000
    asm("pop                esi");                                             // 0x00767c79    5e
    asm("add                esp, 0x24");                                       // 0x00767c7a    83c424
    asm("ret");                                                                // 0x00767c7d    c3
    __builtin_unreachable();
}

bool32_t __fastcall TurnToFaceCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00767c80    56
    asm("mov.s              esi, ecx");                                        // 0x00767c81    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767c83    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x00767c89    85c9
    asm("{disp8} je         _jmp_addr_0x00767cce");                            // 0x00767c8b    7441
    asm("mov                eax, dword ptr [ecx]");                            // 0x00767c8d    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x00767c8f    ff502c
    asm("test               eax, eax");                                        // 0x00767c92    85c0
    asm("{disp8} je         _jmp_addr_0x00767cce");                            // 0x00767c94    7438
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");               // 0x00767c96    8b86bc000000
    asm("push               0x2");                                             // 0x00767c9c    6a02
    asm("push               eax");                                             // 0x00767c9e    50
    asm("mov.s              ecx, esi");                                        // 0x00767c9f    8bce
    asm("call               ?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");                            // 0x00767ca1    e87a48e8ff
    asm("cmp                eax, 0x01");                                       // 0x00767ca6    83f801
    asm("{disp8} jne        _jmp_addr_0x00767cc0");                            // 0x00767ca9    7515
    asm("mov                edx, dword ptr [esi]");                            // 0x00767cab    8b16
    asm("push               0x0000009c");                                      // 0x00767cad    689c000000
    asm("mov.s              ecx, esi");                                        // 0x00767cb2    8bce
    asm("{disp8} mov        word ptr [esi + 0x58], 0x0000");                   // 0x00767cb4    66c746580000
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00767cba    ff92e8080000
    asm("_jmp_addr_0x00767cc0:");
    asm("mov.s              ecx, esi");                                        // 0x00767cc0    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767cc2    e829070000
    asm("mov                eax, 0x00000001");                                 // 0x00767cc7    b801000000
    asm("pop                esi");                                             // 0x00767ccc    5e
    asm("ret");                                                                // 0x00767ccd    c3
    asm("_jmp_addr_0x00767cce:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00767cce    8b06
    asm("mov.s              ecx, esi");                                        // 0x00767cd0    8bce
    asm("call               dword ptr [eax + 0x99c]");                         // 0x00767cd2    ff909c090000
    asm("mov                eax, 0x00000001");                                 // 0x00767cd8    b801000000
    asm("pop                esi");                                             // 0x00767cdd    5e
    asm("ret");                                                                // 0x00767cde    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall PerformRespectCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x08");                                       // 0x00767ce0    83ec08
    asm("push               esi");                                             // 0x00767ce3    56
    asm("mov.s              esi, ecx");                                        // 0x00767ce4    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767ce6    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x00767cec    85c9
    asm("{disp32} je        _jmp_addr_0x00767d9d");                            // 0x00767cee    0f84a9000000
    asm("mov                eax, dword ptr [ecx]");                            // 0x00767cf4    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x00767cf6    ff502c
    asm("test               eax, eax");                                        // 0x00767cf9    85c0
    asm("{disp32} je        _jmp_addr_0x00767d9d");                            // 0x00767cfb    0f849c000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");               // 0x00767d01    8b86bc000000
    asm("add                eax, 0x14");                                       // 0x00767d07    83c014
    asm("push               eax");                                             // 0x00767d0a    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x00767d0b    8d4e14
    asm("push               ecx");                                             // 0x00767d0e    51
    asm("call               ?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");                                 // 0x00767d0f    e82c55feff
    asm("xor.s              edx, edx");                                        // 0x00767d14    33d2
    asm("{disp8} mov        dx, word ptr [esi + 0x5c]");                       // 0x00767d16    668b565c
    asm("add                esp, 0x08");                                       // 0x00767d1a    83c408
    asm("sub.s              eax, edx");                                        // 0x00767d1d    2bc2
    asm("cdq");                                                                // 0x00767d1f    99
    asm("xor.s              eax, edx");                                        // 0x00767d20    33c2
    asm("sub.s              eax, edx");                                        // 0x00767d22    2bc2
    asm("cmp                eax, 0x00000100");                                 // 0x00767d24    3d00010000
    asm("{disp8} jbe        _jmp_addr_0x00767d44");                            // 0x00767d29    7619
    asm("mov                eax, dword ptr [esi]");                            // 0x00767d2b    8b06
    asm("push               0x000000a0");                                      // 0x00767d2d    68a0000000
    asm("mov.s              ecx, esi");                                        // 0x00767d32    8bce
    asm("call               dword ptr [eax + 0x8e8]");                         // 0x00767d34    ff90e8080000
    asm("mov                eax, 0x00000001");                                 // 0x00767d3a    b801000000
    asm("pop                esi");                                             // 0x00767d3f    5e
    asm("add                esp, 0x08");                                       // 0x00767d40    83c408
    asm("ret");                                                                // 0x00767d43    c3
    asm("_jmp_addr_0x00767d44:");
    asm("{disp8} inc        word ptr [esi + 0x58]");                           // 0x00767d44    66ff4658
    asm("xor.s              edx, edx");                                        // 0x00767d48    33d2
    asm("mov                eax, 0x000003e8");                                 // 0x00767d4a    b8e8030000
    asm("div                dword ptr [data_bytes + 0x33ba38]");               // 0x00767d4f    f735381ad000
    asm("{disp8} mov        dword ptr [esp + 0x08], 0x00000000");              // 0x00767d55    c744240800000000
    asm("push               edi");                                             // 0x00767d5d    57
    asm("{disp8} mov        di, word ptr [esi + 0x58]");                       // 0x00767d5e    668b7e58
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                     // 0x00767d62    89442408
    asm("{disp8} fild       qword ptr [esp + 0x08]");                          // 0x00767d66    df6c2408
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x2418]");                // 0x00767d6a    d80d18b48a00
    asm("call               _jmp_addr_0x007a1400");                            // 0x00767d70    e88b960300
    asm("movsx              ecx, di");                                         // 0x00767d75    0fbfcf
    asm("cmp.s              ecx, eax");                                        // 0x00767d78    3bc8
    asm("pop                edi");                                             // 0x00767d7a    5f
    asm("{disp8} jle        _jmp_addr_0x00767d8c");                            // 0x00767d7b    7e0f
    asm("mov                edx, dword ptr [esi]");                            // 0x00767d7d    8b16
    asm("push               0x0000009d");                                      // 0x00767d7f    689d000000
    asm("mov.s              ecx, esi");                                        // 0x00767d84    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x00767d86    ff92e8080000
    asm("_jmp_addr_0x00767d8c:");
    asm("mov.s              ecx, esi");                                        // 0x00767d8c    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767d8e    e85d060000
    asm("mov                eax, 0x00000001");                                 // 0x00767d93    b801000000
    asm("pop                esi");                                             // 0x00767d98    5e
    asm("add                esp, 0x08");                                       // 0x00767d99    83c408
    asm("ret");                                                                // 0x00767d9c    c3
    asm("_jmp_addr_0x00767d9d:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00767d9d    8b06
    asm("mov.s              ecx, esi");                                        // 0x00767d9f    8bce
    asm("call               dword ptr [eax + 0x99c]");                         // 0x00767da1    ff909c090000
    asm("mov                eax, 0x00000001");                                 // 0x00767da7    b801000000
    asm("pop                esi");                                             // 0x00767dac    5e
    asm("add                esp, 0x08");                                       // 0x00767dad    83c408
    asm("ret");                                                                // 0x00767db0    c3
    __builtin_unreachable();
}

bool32_t __fastcall FinishRespectCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00767dc0    56
    asm("mov.s              esi, ecx");                                        // 0x00767dc1    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767dc3    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x00767dc9    85c9
    asm("{disp8} je         _jmp_addr_0x00767de7");                            // 0x00767dcb    741a
    asm("mov                eax, dword ptr [ecx]");                            // 0x00767dcd    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x00767dcf    ff502c
    asm("test               eax, eax");                                        // 0x00767dd2    85c0
    asm("{disp8} je         _jmp_addr_0x00767de7");                            // 0x00767dd4    7411
    asm("mov                edx, dword ptr [esi]");                            // 0x00767dd6    8b16
    asm("mov.s              ecx, esi");                                        // 0x00767dd8    8bce
    asm("call               dword ptr [edx + 0x99c]");                         // 0x00767dda    ff929c090000
    asm("mov                eax, 0x00000001");                                 // 0x00767de0    b801000000
    asm("pop                esi");                                             // 0x00767de5    5e
    asm("ret");                                                                // 0x00767de6    c3
    asm("_jmp_addr_0x00767de7:");
    asm("mov                eax, dword ptr [esi]");                            // 0x00767de7    8b06
    asm("mov.s              ecx, esi");                                        // 0x00767de9    8bce
    asm("call               dword ptr [eax + 0x99c]");                         // 0x00767deb    ff909c090000
    asm("mov                eax, 0x00000001");                                 // 0x00767df1    b801000000
    asm("pop                esi");                                             // 0x00767df6    5e
    asm("ret");                                                                // 0x00767df7    c3
    __builtin_unreachable();
}

bool32_t __fastcall FleeingFromCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x10");                                       // 0x00767e00    83ec10
    asm("push               esi");                                             // 0x00767e03    56
    asm("mov.s              esi, ecx");                                        // 0x00767e04    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767e06    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x00767e0c    85c9
    asm("{disp32} je        _jmp_addr_0x00767f4f");                            // 0x00767e0e    0f843b010000
    asm("mov                eax, dword ptr [ecx]");                            // 0x00767e14    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x00767e16    ff502c
    asm("test               eax, eax");                                        // 0x00767e19    85c0
    asm("{disp32} je        _jmp_addr_0x00767f4f");                            // 0x00767e1b    0f842e010000
    asm("mov.s              ecx, esi");                                        // 0x00767e21    8bce
    asm("call               ?GetReaction@Living@@QAEXXZ");                     // 0x00767e23    e8384ce8ff
    asm("mov.s              ecx, eax");                                        // 0x00767e28    8bc8
    asm("call               ?GetInfo@Reaction@@QBEPAVReactionInfo@@XZ");       // 0x00767e2a    e8d1c8f7ff
    asm("{disp8} fld        dword ptr [eax + 0x2c]");                          // 0x00767e2f    d9402c
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");               // 0x00767e32    8b86bc000000
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1dc98]");               // 0x00767e38    d80d986c8c00
    asm("add                eax, 0x14");                                       // 0x00767e3e    83c014
    asm("push               eax");                                             // 0x00767e41    50
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                     // 0x00767e42    8d4e14
    asm("{disp8} fstp       dword ptr [esp + 0x08]");                          // 0x00767e45    d95c2408
    asm("push               ecx");                                             // 0x00767e49    51
    asm("call               _jmp_addr_0x0074cd50");                            // 0x00767e4a    e8014ffeff
    asm("{disp8} fld        dword ptr [esp + 0x0c]");                          // 0x00767e4f    d944240c
    asm("{disp32} fmul      dword ptr [__real@3fc00000]");                     // 0x00767e53    d80d4cb28a00
    asm("add                esp, 0x08");                                       // 0x00767e59    83c408
    asm("fcompp");                                                             // 0x00767e5c    ded9
    asm("fnstsw             ax");                                              // 0x00767e5e    dfe0
    asm("test               ah, 0x01");                                        // 0x00767e60    f6c401
    asm("{disp32} jne       _jmp_addr_0x00767f4f");                            // 0x00767e63    0f85e6000000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                     // 0x00767e69    8b4c2404
    asm("{disp32} mov       edx, dword ptr [esi + 0x000000bc]");               // 0x00767e6d    8b96bc000000
    asm("mov                eax, dword ptr [esi]");                            // 0x00767e73    8b06
    asm("push               ecx");                                             // 0x00767e75    51
    asm("push               edx");                                             // 0x00767e76    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                     // 0x00767e77    8d4c2410
    asm("push               ecx");                                             // 0x00767e7b    51
    asm("mov.s              ecx, esi");                                        // 0x00767e7c    8bce
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x00767e7e    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x18], 0x00000000");              // 0x00767e86    c744241800000000
    asm("{disp8} mov        dword ptr [esp + 0x1c], 0x00000000");              // 0x00767e8e    c744241c00000000
    asm("call               dword ptr [eax + 0xb00]");                         // 0x00767e96    ff90000b0000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                     // 0x00767e9c    8d4c2408
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                     // 0x00767ea0    e81bc4e9ff
    asm("test               eax, eax");                                        // 0x00767ea5    85c0
    asm("{disp32} je        _jmp_addr_0x00767f3e");                            // 0x00767ea7    0f8491000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767ead    8b8ebc000000
    asm("mov                edx, dword ptr [ecx]");                            // 0x00767eb3    8b11
    asm("call               dword ptr [edx + 0xa4]");                          // 0x00767eb5    ff92a4000000
    asm("test               eax, eax");                                        // 0x00767ebb    85c0
    asm("{disp8} je         _jmp_addr_0x00767f21");                            // 0x00767ebd    7462
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000164]");               // 0x00767ebf    8b8064010000
    asm("{disp32} mov       eax, dword ptr [eax + 0x00000f58]");               // 0x00767ec5    8b80580f0000
    asm("test               eax, eax");                                        // 0x00767ecb    85c0
    asm("{disp8} je         _jmp_addr_0x00767f21");                            // 0x00767ecd    7452
    asm("{disp8} mov        ecx, dword ptr [eax + 0x30]");                     // 0x00767ecf    8b4830
    asm("test               ecx, ecx");                                        // 0x00767ed2    85c9
    asm("{disp8} je         _jmp_addr_0x00767f21");                            // 0x00767ed4    744b
    asm("push               0x00000161");                                      // 0x00767ed6    6861010000
    asm("push               0x00c245b0");                                      // 0x00767edb    68b045c200
    asm("push               0xa");                                             // 0x00767ee0    6a0a
    asm("call               ?GameRand@GRand@@SAHJ@Z");                         // 0x00767ee2    e82966f7ff
    asm("add                esp, 0x0c");                                       // 0x00767ee7    83c40c
    asm("test               eax, eax");                                        // 0x00767eea    85c0
    asm("{disp8} jne        _jmp_addr_0x00767f59");                            // 0x00767eec    756b
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                     // 0x00767eee    8b4e28
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00000108]");               // 0x00767ef1    8b8108010000
    asm("cdq");                                                                // 0x00767ef7    99
    asm("sub.s              eax, edx");                                        // 0x00767ef8    2bc2
    asm("push               0x1");                                             // 0x00767efa    6a01
    asm("sar                eax, 1");                                          // 0x00767efc    d1f8
    asm("push               eax");                                             // 0x00767efe    50
    asm("mov.s              ecx, esi");                                        // 0x00767eff    8bce
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x00767f01    e8ca8ffeff
    asm("push               0x0000009f");                                      // 0x00767f06    689f000000
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                     // 0x00767f0b    8d54240c
    asm("push               edx");                                             // 0x00767f0f    52
    asm("mov.s              ecx, esi");                                        // 0x00767f10    8bce
    asm("call               ?SetupMoveToCreatureReaction@Villager@@QAEXABUMapCoords@@E@Z");                            // 0x00767f12    e8f9050000
    asm("mov                eax, 0x00000001");                                 // 0x00767f17    b801000000
    asm("pop                esi");                                             // 0x00767f1c    5e
    asm("add                esp, 0x10");                                       // 0x00767f1d    83c410
    asm("ret");                                                                // 0x00767f20    c3
    asm("_jmp_addr_0x00767f21:");
    asm("{disp8} mov        eax, dword ptr [esi + 0x28]");                     // 0x00767f21    8b4628
    asm("{disp32} mov       ecx, dword ptr [eax + 0x00000108]");               // 0x00767f24    8b8808010000
    asm("push               0x1");                                             // 0x00767f2a    6a01
    asm("push               ecx");                                             // 0x00767f2c    51
    asm("mov.s              ecx, esi");                                        // 0x00767f2d    8bce
    asm("call               ?SetSpeed@Villager@@QAEXJH@Z");                    // 0x00767f2f    e89c8ffeff
    asm("mov                eax, 0x00000001");                                 // 0x00767f34    b801000000
    asm("pop                esi");                                             // 0x00767f39    5e
    asm("add                esp, 0x10");                                       // 0x00767f3a    83c410
    asm("ret");                                                                // 0x00767f3d    c3
    asm("_jmp_addr_0x00767f3e:");
    asm("mov.s              ecx, esi");                                        // 0x00767f3e    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767f40    e8ab040000
    asm("mov                eax, 0x00000001");                                 // 0x00767f45    b801000000
    asm("pop                esi");                                             // 0x00767f4a    5e
    asm("add                esp, 0x10");                                       // 0x00767f4b    83c410
    asm("ret");                                                                // 0x00767f4e    c3
    asm("_jmp_addr_0x00767f4f:");
    asm("mov                edx, dword ptr [esi]");                            // 0x00767f4f    8b16
    asm("mov.s              ecx, esi");                                        // 0x00767f51    8bce
    asm("call               dword ptr [edx + 0x99c]");                         // 0x00767f53    ff929c090000
    asm("_jmp_addr_0x00767f59:");
    asm("mov                eax, 0x00000001");                                 // 0x00767f59    b801000000
    asm("pop                esi");                                             // 0x00767f5e    5e
    asm("add                esp, 0x10");                                       // 0x00767f5f    83c410
    asm("ret");                                                                // 0x00767f62    c3
    __builtin_unreachable();
}

bool32_t __fastcall MoveTowardsCreatureReaction__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00767f70    56
    asm("mov.s              esi, ecx");                                        // 0x00767f71    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000bc]");               // 0x00767f73    8b8ebc000000
    asm("test               ecx, ecx");                                        // 0x00767f79    85c9
    asm("{disp8} je         _jmp_addr_0x00767fcb");                            // 0x00767f7b    744e
    asm("mov                eax, dword ptr [ecx]");                            // 0x00767f7d    8b01
    asm("call               dword ptr [eax + 0x2c]");                          // 0x00767f7f    ff502c
    asm("test               eax, eax");                                        // 0x00767f82    85c0
    asm("{disp8} je         _jmp_addr_0x00767fcb");                            // 0x00767f84    7445
    asm("mov.s              ecx, esi");                                        // 0x00767f86    8bce
    asm("call               ?MoveTo@MobileWallHug@@QAEHXZ");                   // 0x00767f88    e8932feaff
    asm("cmp                eax, 0x0a");                                       // 0x00767f8d    83f80a
    asm("{disp8} jne        _jmp_addr_0x00767fbd");                            // 0x00767f90    752b
    asm("mov                edx, dword ptr [esi]");                            // 0x00767f92    8b16
    asm("mov.s              ecx, esi");                                        // 0x00767f94    8bce
    asm("call               dword ptr [edx + 0x860]");                         // 0x00767f96    ff9260080000
    asm("push               eax");                                             // 0x00767f9c    50
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                     // 0x00767f9d    8d4614
    asm("push               eax");                                             // 0x00767fa0    50
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x00767fa1    e8ca4dfeff
    asm("{disp32} fcomp     dword ptr [_villager_reaction_to_creature_float0p5_0x0099a9f4]");               // 0x00767fa6    d81df4a99900
    asm("add                esp, 0x08");                                       // 0x00767fac    83c408
    asm("fnstsw             ax");                                              // 0x00767faf    dfe0
    asm("test               ah, 0x41");                                        // 0x00767fb1    f6c441
    asm("{disp8} je         _jmp_addr_0x00767fbd");                            // 0x00767fb4    7407
    asm("mov.s              ecx, esi");                                        // 0x00767fb6    8bce
    asm("call               ?SetTopStateToFinal@Living@@QAEXXZ");              // 0x00767fb8    e8c34ae8ff
    asm("_jmp_addr_0x00767fbd:");
    asm("mov.s              ecx, esi");                                        // 0x00767fbd    8bce
    asm("call               ?UpdateAttitudeToCreature@Villager@@QAEXXZ");      // 0x00767fbf    e82c040000
    asm("mov                eax, 0x00000001");                                 // 0x00767fc4    b801000000
    asm("pop                esi");                                             // 0x00767fc9    5e
    asm("ret");                                                                // 0x00767fca    c3
    asm("_jmp_addr_0x00767fcb:");
    asm("mov                edx, dword ptr [esi]");                            // 0x00767fcb    8b16
    asm("mov.s              ecx, esi");                                        // 0x00767fcd    8bce
    asm("call               dword ptr [edx + 0x99c]");                         // 0x00767fcf    ff929c090000
    asm("mov                eax, 0x00000001");                                 // 0x00767fd5    b801000000
    asm("pop                esi");                                             // 0x00767fda    5e
    asm("ret");                                                                // 0x00767fdb    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct LivingMapCell* __fastcall __ct__13LivingMapCellFR9JustMapXZ(struct LivingMapCell* this, const void* edx, struct JustMapXZ* param_1)
{
    asm("sub                esp, 0x0c");                                       // 0x00767fe0    83ec0c
    asm("push               ebx");                                             // 0x00767fe3    53
    asm("push               ebp");                                             // 0x00767fe4    55
    asm("mov.s              ebx, ecx");                                        // 0x00767fe5    8bd9
    asm("push               esi");                                             // 0x00767fe7    56
    asm("push               edi");                                             // 0x00767fe8    57
    asm("xor.s              eax, eax");                                        // 0x00767fe9    33c0
    asm("mov                ecx, 0x0000000a");                                 // 0x00767feb    b90a000000
    asm("mov.s              edi, ebx");                                        // 0x00767ff0    8bfb
    asm("rep stosd");                                                          // 0x00767ff2    f3ab
    asm("{disp8} mov        ecx, dword ptr [esp + 0x20]");                     // 0x00767ff4    8b4c2420
    asm("call               _jmp_addr_0x005e1950");                            // 0x00767ff8    e85399e7ff
    asm("{disp8} mov        esi, dword ptr [eax + 0x04]");                     // 0x00767ffd    8b7004
    asm("test               esi, esi");                                        // 0x00768000    85f6
    asm("mov                ecx, 0x00000001");                                 // 0x00768002    b901000000
    asm("{disp8} jne        _jmp_addr_0x0076800d");                            // 0x00768007    7504
    asm("mov                esi, dword ptr [eax]");                            // 0x00768009    8b30
    asm("xor.s              ecx, ecx");                                        // 0x0076800b    33c9
    asm("_jmp_addr_0x0076800d:");
    asm("test               esi, esi");                                        // 0x0076800d    85f6
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x0076800f    894c2414
    asm("mov.s              ebp, eax");                                        // 0x00768013    8be8
    asm("{disp32} je        _jmp_addr_0x007680c1");                            // 0x00768015    0f84a6000000
    asm("_jmp_addr_0x0076801b:");
    asm("{disp8} fild       dword ptr [esi + 0x14]");                          // 0x0076801b    db4614
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076801e    d80de4a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");                // 0x00768024    d80d1cc48a00
    asm("fld                st(0)");                                           // 0x0076802a    d9c0
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076802c    d835e4a99900
    asm("fsubr              st, st(1)");                                       // 0x00768032    d8e9
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1e658]");               // 0x00768034    d80d58768c00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076803a    d835e4a99900
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768040    e8bb930300
    asm("fstp               st(0)");                                           // 0x00768045    ddd8
    asm("{disp8} fild       dword ptr [esi + 0x18]");                          // 0x00768047    db4618
    asm("mov.s              edi, eax");                                        // 0x0076804a    8bf8
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076804c    d80de4a99900
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x341c]");                // 0x00768052    d80d1cc48a00
    asm("fld                st(0)");                                           // 0x00768058    d9c0
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076805a    d835e4a99900
    asm("fsubr              st, st(1)");                                       // 0x00768060    d8e9
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x1e658]");               // 0x00768062    d80d58768c00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x00768068    d835e4a99900
    asm("call               _jmp_addr_0x007a1400");                            // 0x0076806e    e88d930300
    asm("fstp               st(0)");                                           // 0x00768073    ddd8
    asm("mov.s              ecx, eax");                                        // 0x00768075    8bc8
    asm("shr                ecx, 3");                                          // 0x00768077    c1e903
    asm("mov.s              edx, ebx");                                        // 0x0076807a    8bd3
    asm("add.s              edx, ecx");                                        // 0x0076807c    03d1
    asm("mov.s              ecx, eax");                                        // 0x0076807e    8bc8
    asm("and                ecx, 0x07");                                       // 0x00768080    83e107
    asm("mov                al, 0x01");                                        // 0x00768083    b001
    asm("shl                al, cl");                                          // 0x00768085    d2e0
    asm("mov                cl, byte ptr [edx + edi * 0x2]");                  // 0x00768087    8a0c7a
    asm("lea                edx, dword ptr [edx + edi * 0x2]");                // 0x0076808a    8d147a
    asm("push               ebp");                                             // 0x0076808d    55
    asm("or.s               cl, al");                                          // 0x0076808e    0ac8
    asm("mov                byte ptr [edx], cl");                              // 0x00768090    880a
    asm("mov                edx, dword ptr [esi]");                            // 0x00768092    8b16
    asm("mov.s              ecx, esi");                                        // 0x00768094    8bce
    asm("call               dword ptr [edx + 0x53c]");                         // 0x00768096    ff923c050000
    asm("mov.s              esi, eax");                                        // 0x0076809c    8bf0
    asm("test               esi, esi");                                        // 0x0076809e    85f6
    asm("{disp32} jne       _jmp_addr_0x0076801b");                            // 0x007680a0    0f8575ffffff
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                     // 0x007680a6    8b442414
    asm("test               eax, eax");                                        // 0x007680aa    85c0
    asm("{disp8} je         _jmp_addr_0x007680c1");                            // 0x007680ac    7413
    asm("{disp8} mov        esi, dword ptr [ebp + 0x00]");                     // 0x007680ae    8b7500
    asm("test               esi, esi");                                        // 0x007680b1    85f6
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");              // 0x007680b3    c744241400000000
    asm("{disp32} jne       _jmp_addr_0x0076801b");                            // 0x007680bb    0f855affffff
    asm("_jmp_addr_0x007680c1:");
    asm("pop                edi");                                             // 0x007680c1    5f
    asm("pop                esi");                                             // 0x007680c2    5e
    asm("pop                ebp");                                             // 0x007680c3    5d
    asm("mov.s              eax, ebx");                                        // 0x007680c4    8bc3
    asm("pop                ebx");                                             // 0x007680c6    5b
    asm("add                esp, 0x0c");                                       // 0x007680c7    83c40c
    asm("ret                0x0004");                                          // 0x007680ca    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall FindFreePosition__13LivingMapCellFR9JustMapXZRC9MapCoordsP9MapCoords(struct LivingMapCell* this, const void* edx, struct JustMapXZ* param_1, const struct MapCoords* param_2, struct MapCoords* param_3)
{
    asm("sub                esp, 0x2c");                                       // 0x007680d0    83ec2c
    asm("{disp32} mov       eax, dword ptr [_villager_reaction_to_creature_float_max_0x0099a9e0]"); // 0x007680d3    a1e0a99900
    asm("push               ebx");                                             // 0x007680d8    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x34]");                     // 0x007680d9    8b5c2434
    asm("push               ebp");                                             // 0x007680dd    55
    asm("push               esi");                                             // 0x007680de    56
    asm("push               edi");                                             // 0x007680df    57
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                     // 0x007680e0    894c2414
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                     // 0x007680e4    89442410
    asm("xor.s              edi, edi");                                        // 0x007680e8    33ff
    asm("_jmp_addr_0x007680ea:");
    asm("xor.s              esi, esi");                                        // 0x007680ea    33f6
    asm("lea                ebp, dword ptr [edi + edi * 0x1]");                // 0x007680ec    8d2c3f
    asm("_jmp_addr_0x007680ef:");
    asm("mov.s              ecx, esi");                                        // 0x007680ef    8bce
    asm("and                ecx, 0x07");                                       // 0x007680f1    83e107
    asm("mov.s              eax, esi");                                        // 0x007680f4    8bc6
    asm("shr                eax, 3");                                          // 0x007680f6    c1e803
    asm("mov                edx, 0x00000001");                                 // 0x007680f9    ba01000000
    asm("shl                edx, cl");                                         // 0x007680fe    d3e2
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                     // 0x00768100    8b4c2414
    asm("add.s              eax, ebp");                                        // 0x00768104    03c5
    asm("mov                al, byte ptr [eax + ecx * 0x1]");                  // 0x00768106    8a0408
    asm("test               al, dl");                                          // 0x00768109    84d0
    asm("{disp32} jne       _jmp_addr_0x007681d0");                            // 0x0076810b    0f85bf000000
    asm("movsx              ecx, word ptr [ebx]");                             // 0x00768111    0fbf0b
    asm("{disp8} mov        dword ptr [esp + 0x40], ecx");                     // 0x00768114    894c2440
    asm("{disp8} mov        dword ptr [esp + 0x20], edi");                     // 0x00768118    897c2420
    asm("{disp8} mov        dword ptr [esp + 0x24], 0x00000000");              // 0x0076811c    c744242400000000
    asm("{disp8} fild       dword ptr [esp + 0x40]");                          // 0x00768124    db442440
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x00768128    d80de4a99900
    asm("{disp8} fild       qword ptr [esp + 0x20]");                          // 0x0076812e    df6c2420
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float0p5_0x0099a9f4]");               // 0x00768132    d80df4a99900
    asm("faddp              st(1), st");                                       // 0x00768138    dec1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x0076813a    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x00768140    d835e4a99900
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768146    e8b5920300
    asm("movsx              edx, word ptr [ebx + 0x02]");                      // 0x0076814b    0fbf5302
    asm("{disp8} mov        dword ptr [esp + 0x40], edx");                     // 0x0076814f    89542440
    asm("{disp8} mov        dword ptr [esp + 0x28], esi");                     // 0x00768153    89742428
    asm("{disp8} mov        dword ptr [esp + 0x2c], 0x00000000");              // 0x00768157    c744242c00000000
    asm("{disp8} fild       dword ptr [esp + 0x40]");                          // 0x0076815f    db442440
    asm("{disp8} mov        dword ptr [esp + 0x30], eax");                     // 0x00768163    89442430
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x00768167    d80de4a99900
    asm("{disp8} fild       qword ptr [esp + 0x28]");                          // 0x0076816d    df6c2428
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float0p5_0x0099a9f4]");               // 0x00768171    d80df4a99900
    asm("faddp              st(1), st");                                       // 0x00768177    dec1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x00768179    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076817f    d835e4a99900
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768185    e876920300
    asm("{disp8} lea        ecx, dword ptr [esp + 0x30]");                     // 0x0076818a    8d4c2430
    asm("{disp8} mov        dword ptr [esp + 0x34], eax");                     // 0x0076818e    89442434
    asm("{disp8} mov        dword ptr [esp + 0x38], 0x00000000");              // 0x00768192    c744243800000000
    asm("call               ?CollideCollideWithFixe@MapCoords@@QBEHXZ");       // 0x0076819a    e841cee9ff
    asm("test               al, 0x08");                                        // 0x0076819f    a808
    asm("{disp8} jne        _jmp_addr_0x007681d0");                            // 0x007681a1    752d
    asm("{disp8} mov        eax, dword ptr [esp + 0x44]");                     // 0x007681a3    8b442444
    asm("push               eax");                                             // 0x007681a7    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x34]");                     // 0x007681a8    8d4c2434
    asm("push               ecx");                                             // 0x007681ac    51
    asm("call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");                                 // 0x007681ad    e8be4bfeff
    asm("{disp8} fcom       dword ptr [esp + 0x18]");                          // 0x007681b2    d8542418
    asm("add                esp, 0x08");                                       // 0x007681b6    83c408
    asm("fnstsw             ax");                                              // 0x007681b9    dfe0
    asm("test               ah, 0x01");                                        // 0x007681bb    f6c401
    asm("{disp8} je         _jmp_addr_0x007681ce");                            // 0x007681be    740e
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                          // 0x007681c0    d95c2410
    asm("{disp8} mov        dword ptr [esp + 0x18], edi");                     // 0x007681c4    897c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], esi");                     // 0x007681c8    8974241c
    asm("{disp8} jmp        _jmp_addr_0x007681d0");                            // 0x007681cc    eb02
    asm("_jmp_addr_0x007681ce:");
    asm("fstp               st(0)");                                           // 0x007681ce    ddd8
    asm("_jmp_addr_0x007681d0:");
    asm("inc                esi");                                             // 0x007681d0    46
    asm("cmp                esi, 0x14");                                       // 0x007681d1    83fe14
    asm("{disp32} jb        _jmp_addr_0x007680ef");                            // 0x007681d4    0f8215ffffff
    asm("inc                edi");                                             // 0x007681da    47
    asm("cmp                edi, 0x14");                                       // 0x007681db    83ff14
    asm("{disp32} jb        _jmp_addr_0x007680ea");                            // 0x007681de    0f8206ffffff
    asm("{disp8} fld        dword ptr [esp + 0x10]");                          // 0x007681e4    d9442410
    asm("{disp32} fcomp     dword ptr [_villager_reaction_to_creature_float_max_0x0099a9e0]"); // 0x007681e8    d81de0a99900
    asm("fnstsw             ax");                                              // 0x007681ee    dfe0
    asm("test               ah, 0x01");                                        // 0x007681f0    f6c401
    asm("{disp32} je        _jmp_addr_0x00768288");                            // 0x007681f3    0f848f000000
    asm("movsx              edx, word ptr [ebx]");                             // 0x007681f9    0fbf13
    asm("{disp8} mov        eax, dword ptr [esp + 0x18]");                     // 0x007681fc    8b442418
    asm("{disp8} mov        dword ptr [esp + 0x40], edx");                     // 0x00768200    89542440
    asm("xor.s              edi, edi");                                        // 0x00768204    33ff
    asm("{disp8} mov        dword ptr [esp + 0x28], eax");                     // 0x00768206    89442428
    asm("{disp8} fild       dword ptr [esp + 0x40]");                          // 0x0076820a    db442440
    asm("{disp8} mov        dword ptr [esp + 0x2c], edi");                     // 0x0076820e    897c242c
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x00768212    d80de4a99900
    asm("{disp8} fild       qword ptr [esp + 0x28]");                          // 0x00768218    df6c2428
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float0p5_0x0099a9f4]");               // 0x0076821c    d80df4a99900
    asm("faddp              st(1), st");                                       // 0x00768222    dec1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x00768224    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076822a    d835e4a99900
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768230    e8cb910300
    asm("{disp8} mov        esi, dword ptr [esp + 0x48]");                     // 0x00768235    8b742448
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                     // 0x00768239    8b54241c
    asm("mov                dword ptr [esi], eax");                            // 0x0076823d    8906
    asm("movsx              ecx, word ptr [ebx + 0x02]");                      // 0x0076823f    0fbf4b02
    asm("{disp8} mov        dword ptr [esp + 0x40], ecx");                     // 0x00768243    894c2440
    asm("{disp8} mov        dword ptr [esp + 0x28], edx");                     // 0x00768247    89542428
    asm("{disp8} mov        dword ptr [esp + 0x2c], edi");                     // 0x0076824b    897c242c
    asm("{disp8} fild       dword ptr [esp + 0x40]");                          // 0x0076824f    db442440
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x00768253    d80de4a99900
    asm("{disp8} fild       qword ptr [esp + 0x28]");                          // 0x00768259    df6c2428
    asm("{disp32} fmul      dword ptr [_villager_reaction_to_creature_float0p5_0x0099a9f4]");               // 0x0076825d    d80df4a99900
    asm("faddp              st(1), st");                                       // 0x00768263    dec1
    asm("{disp32} fmul      dword ptr [rdata_bytes + 0x3408]");                // 0x00768265    d80d08c48a00
    asm("{disp32} fdiv      dword ptr [_villager_reaction_to_creature_float10p0_0x0099a9e4]");               // 0x0076826b    d835e4a99900
    asm("call               _jmp_addr_0x007a1400");                            // 0x00768271    e88a910300
    asm("pop                edi");                                             // 0x00768276    5f
    asm("{disp8} mov        dword ptr [esi + 0x04], eax");                     // 0x00768277    894604
    asm("pop                esi");                                             // 0x0076827a    5e
    asm("pop                ebp");                                             // 0x0076827b    5d
    asm("mov                eax, 0x00000001");                                 // 0x0076827c    b801000000
    asm("pop                ebx");                                             // 0x00768281    5b
    asm("add                esp, 0x2c");                                       // 0x00768282    83c42c
    asm("ret                0x000c");                                          // 0x00768285    c20c00
    asm("_jmp_addr_0x00768288:");
    asm("pop                edi");                                             // 0x00768288    5f
    asm("pop                esi");                                             // 0x00768289    5e
    asm("pop                ebp");                                             // 0x0076828a    5d
    asm("xor.s              eax, eax");                                        // 0x0076828b    33c0
    asm("pop                ebx");                                             // 0x0076828d    5b
    asm("add                esp, 0x2c");                                       // 0x0076828e    83c42c
    asm("ret                0x000c");                                          // 0x00768291    c20c00
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall CalculateNearestFreeDestination__8VillagerFP9MapCoords(struct Villager* this, const void* edx, struct MapCoords* param_1)
{
    asm("sub                esp, 0x7c");                                       // 0x007682a0    83ec7c
    asm("push               ebx");                                             // 0x007682a3    53
    asm("push               ebp");                                             // 0x007682a4    55
    asm("push               esi");                                             // 0x007682a5    56
    asm("push               edi");                                             // 0x007682a6    57
    asm("{disp8} lea        eax, dword ptr [esp + 0x1c]");                     // 0x007682a7    8d44241c
    asm("mov                edx, 0x00000008");                                 // 0x007682ab    ba08000000
    asm("_jmp_addr_0x007682b0:");
    asm("mov                word ptr [eax], 0x0000");                          // 0x007682b0    66c7000000
    asm("{disp8} mov        word ptr [eax + 0x02], 0x0000");                   // 0x007682b5    66c740020000
    asm("add                eax, 0x04");                                       // 0x007682bb    83c004
    asm("dec                edx");                                             // 0x007682be    4a
    asm("{disp8} jne        _jmp_addr_0x007682b0");                            // 0x007682bf    75ef
    asm("xor.s              esi, esi");                                        // 0x007682c1    33f6
    asm("{disp8} mov        dword ptr [esp + 0x3c], esi");                     // 0x007682c3    8974243c
    asm("{disp8} lea        eax, dword ptr [esp + 0x40]");                     // 0x007682c7    8d442440
    asm("mov                edx, 0x00000008");                                 // 0x007682cb    ba08000000
    asm("_jmp_addr_0x007682d0:");
    asm("mov                word ptr [eax], si");                              // 0x007682d0    668930
    asm("{disp8} mov        word ptr [eax + 0x02], si");                       // 0x007682d3    66897002
    asm("add                eax, 0x04");                                       // 0x007682d7    83c004
    asm("dec                edx");                                             // 0x007682da    4a
    asm("{disp8} jne        _jmp_addr_0x007682d0");                            // 0x007682db    75f3
    asm("{disp8} mov        dword ptr [esp + 0x60], esi");                     // 0x007682dd    89742460
    asm("{disp8} lea        esi, dword ptr [ecx + 0x14]");                     // 0x007682e1    8d7114
    asm("push               esi");                                             // 0x007682e4    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x007682e5    8d4c2418
    asm("{disp8} mov        dword ptr [esp + 0x1c], esi");                     // 0x007682e9    8974241c
    asm("call               _jmp_addr_0x005e17c0");                            // 0x007682ed    e8ce94e7ff
    asm("push               ecx");                                             // 0x007682f2    51
    asm("{disp8} mov        cx, word ptr [esp + 0x18]");                       // 0x007682f3    668b4c2418
    asm("mov.s              eax, esp");                                        // 0x007682f8    8bc4
    asm("mov                word ptr [eax], cx");                              // 0x007682fa    668908
    asm("{disp8} mov        dx, word ptr [esp + 0x1a]");                       // 0x007682fd    668b54241a
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                     // 0x00768302    8d4c2420
    asm("{disp8} mov        word ptr [eax + 0x02], dx");                       // 0x00768306    66895002
    asm("call               @Push__LHStack__JustMapXZFPJustMapXZ@12");         // 0x0076830a    e891020000
    asm("_jmp_addr_0x0076830f:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x3c]");                     // 0x0076830f    8b44243c
    asm("dec                eax");                                             // 0x00768313    48
    asm("{disp8} mov        dword ptr [esp + 0x3c], eax");                     // 0x00768314    8944243c
    asm("{disp8} mov        cx, word ptr [esp + eax * 0x4 + 0x1c]");           // 0x00768318    668b4c841c
    asm("{disp8} lea        eax, dword ptr [esp + eax * 0x4 + 0x1c]");         // 0x0076831d    8d44841c
    asm("{disp8} mov        word ptr [esp + 0x10], cx");                       // 0x00768321    66894c2410
    asm("{disp8} mov        ax, word ptr [eax + 0x02]");                       // 0x00768326    668b4002
    asm("{disp8} mov        word ptr [esp + 0x12], ax");                       // 0x0076832a    6689442412
    asm("push               ecx");                                             // 0x0076832f    51
    asm("mov.s              eax, esp");                                        // 0x00768330    8bc4
    asm("mov                word ptr [eax], cx");                              // 0x00768332    668908
    asm("{disp8} mov        cx, word ptr [esp + 0x16]");                       // 0x00768335    668b4c2416
    asm("{disp8} mov        word ptr [eax + 0x02], cx");                       // 0x0076833a    66894802
    asm("{disp8} lea        ecx, dword ptr [esp + 0x44]");                     // 0x0076833e    8d4c2444
    asm("call               @Push__LHStack__JustMapXZFPJustMapXZ@12");         // 0x00768342    e859020000
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                     // 0x00768347    8d542410
    asm("push               edx");                                             // 0x0076834b    52
    asm("{disp8} lea        ecx, dword ptr [esp + 0x68]");                     // 0x0076834c    8d4c2468
    asm("call               ??0LivingMapCell@@QAE@AAUJustMapXZ@@@Z");          // 0x00768350    e88bfcffff
    asm("{disp32} mov       eax, dword ptr [esp + 0x00000090]");               // 0x00768355    8b842490000000
    asm("push               eax");                                             // 0x0076835c    50
    asm("push               esi");                                             // 0x0076835d    56
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                     // 0x0076835e    8d4c2418
    asm("push               ecx");                                             // 0x00768362    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x70]");                     // 0x00768363    8d4c2470
    asm("call               ?FindFreePosition@LivingMapCell@@QAEIAAUJustMapXZ@@ABUMapCoords@@PAU3@@Z");                            // 0x00768367    e864fdffff
    asm("test               eax, eax");                                        // 0x0076836c    85c0
    asm("{disp8} jne        _jmp_addr_0x007683db");                            // 0x0076836e    756b
    asm("{disp8} mov        ebp, dword ptr [esp + 0x60]");                     // 0x00768370    8b6c2460
    asm("mov                esi, 0x00da59fe");                                 // 0x00768374    befe59da00
    asm("_jmp_addr_0x00768379:");
    asm("{disp8} mov        ax, word ptr [esi + -0x02]");                      // 0x00768379    668b46fe
    asm("{disp8} mov        cx, word ptr [esp + 0x12]");                       // 0x0076837d    668b4c2412
    asm("add                ax, word ptr [esp + 0x10]");                       // 0x00768382    6603442410
    asm("add                cx, word ptr [esi]");                              // 0x00768387    66030e
    asm("xor.s              edi, edi");                                        // 0x0076838a    33ff
    asm("test               ebp, ebp");                                        // 0x0076838c    85ed
    asm("{disp8} jbe        _jmp_addr_0x007683b0");                            // 0x0076838e    7620
    asm("{disp8} lea        edx, dword ptr [esp + 0x42]");                     // 0x00768390    8d542442
    asm("mov.s              ebx, ebp");                                        // 0x00768394    8bdd
    asm("_jmp_addr_0x00768396:");
    asm("cmp                word ptr [edx + -0x02], ax");                      // 0x00768396    663942fe
    asm("{disp8} jne        _jmp_addr_0x007683a6");                            // 0x0076839a    750a
    asm("cmp                word ptr [edx], cx");                              // 0x0076839c    66390a
    asm("{disp8} jne        _jmp_addr_0x007683a6");                            // 0x0076839f    7505
    asm("mov                edi, 0x00000001");                                 // 0x007683a1    bf01000000
    asm("_jmp_addr_0x007683a6:");
    asm("add                edx, 0x04");                                       // 0x007683a6    83c204
    asm("dec                ebx");                                             // 0x007683a9    4b
    asm("{disp8} jne        _jmp_addr_0x00768396");                            // 0x007683aa    75ea
    asm("test               edi, edi");                                        // 0x007683ac    85ff
    asm("{disp8} jne        _jmp_addr_0x007683c7");                            // 0x007683ae    7517
    asm("_jmp_addr_0x007683b0:");
    asm("push               ecx");                                             // 0x007683b0    51
    asm("mov.s              edx, esp");                                        // 0x007683b1    8bd4
    asm("{disp8} mov        word ptr [edx + 0x02], cx");                       // 0x007683b3    66894a02
    asm("{disp8} lea        ecx, dword ptr [esp + 0x20]");                     // 0x007683b7    8d4c2420
    asm("mov                word ptr [edx], ax");                              // 0x007683bb    668902
    asm("call               @Push__LHStack__JustMapXZFPJustMapXZ@12");         // 0x007683be    e8dd010000
    asm("{disp8} mov        ebp, dword ptr [esp + 0x60]");                     // 0x007683c3    8b6c2460
    asm("_jmp_addr_0x007683c7:");
    asm("add                esi, 0x04");                                       // 0x007683c7    83c604
    asm("cmp                esi, 0x00da5a0e");                                 // 0x007683ca    81fe0e5ada00
    asm(".byte              0x72, 0xa7");// {disp8} jb _jmp_addr_0x00768379    // 0x007683d0    72a7
    asm("{disp8} mov        esi, dword ptr [esp + 0x18]");                     // 0x007683d2    8b742418
    asm("{disp32} jmp       _jmp_addr_0x0076830f");                            // 0x007683d6    e934ffffff
    asm("_jmp_addr_0x007683db:");
    asm("pop                edi");                                             // 0x007683db    5f
    asm("pop                esi");                                             // 0x007683dc    5e
    asm("pop                ebp");                                             // 0x007683dd    5d
    asm("pop                ebx");                                             // 0x007683de    5b
    asm("add                esp, 0x7c");                                       // 0x007683df    83c47c
    asm("ret                0x0004");                                          // 0x007683e2    c20400
    __builtin_unreachable();
}

void __fastcall UpdateAttitudeToCreature__8VillagerFv(struct Villager* this)
{
    asm("{disp32} jmp       ?UpdateReactiveStateFromAttitudeToCreature@Villager@@QAEIXZ");                            // 0x007683f0    e90b000000
    __builtin_unreachable();
}

bool32_t __fastcall UpdateReactiveStateFromAttitudeToCreature__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                             // 0x00768400    56
    asm("push               edi");                                             // 0x00768401    57
    asm("mov.s              esi, ecx");                                        // 0x00768402    8bf1
    asm("call               ?CheckNeededForWorship@Villager@@QAEMXZ");         // 0x00768404    e857360000
    asm("cmp                eax, 0x01");                                       // 0x00768409    83f801
    asm("{disp32} je        _jmp_addr_0x00768500");                            // 0x0076840c    0f84ee000000
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000bc]");               // 0x00768412    8b86bc000000
    asm("push               0x0");                                             // 0x00768418    6a00
    asm("push               0x009c8060");                                      // 0x0076841a    6860809c00
    asm("push               0x009c7f30");                                      // 0x0076841f    68307f9c00
    asm("push               0x0");                                             // 0x00768424    6a00
    asm("push               eax");                                             // 0x00768426    50
    asm("call               ___RTDynamicCast");                                // 0x00768427    e8edd50500
    asm("mov.s              edi, eax");                                        // 0x0076842c    8bf8
    asm("add                esp, 0x14");                                       // 0x0076842e    83c414
    asm("test               edi, edi");                                        // 0x00768431    85ff
    asm("{disp32} je        _jmp_addr_0x00768500");                            // 0x00768433    0f84c7000000
    asm("{disp32} mov       eax, dword ptr [edi + 0x000010a0]");               // 0x00768439    8b87a0100000
    asm("test               eax, eax");                                        // 0x0076843f    85c0
    asm("mov                eax, dword ptr [esi]");                            // 0x00768441    8b06
    asm("mov.s              ecx, esi");                                        // 0x00768443    8bce
    asm("{disp8} je         _jmp_addr_0x0076848d");                            // 0x00768445    7446
    asm("call               dword ptr [eax + 0x99c]");                         // 0x00768447    ff909c090000
    asm("{disp32} mov       ecx, dword ptr [_game]");                          // 0x0076844d    8b0d5c19d000
    asm("{disp32} mov       eax, dword ptr [ecx + 0x00205bdc]");               // 0x00768453    8b81dc5b2000
    asm("test               eax, eax");                                        // 0x00768459    85c0
    asm("{disp32} mov       edi, dword ptr [edi + 0x000010a0]");               // 0x0076845b    8bbfa0100000
    asm("{disp32} je        _jmp_addr_0x00768500");                            // 0x00768461    0f8499000000
    asm("_jmp_addr_0x00768467:");
    asm("cmp                dword ptr [eax + 0x14], edi");                     // 0x00768467    397814
    asm("{disp8} je         _jmp_addr_0x00768476");                            // 0x0076846a    740a
    asm("{disp8} mov        eax, dword ptr [eax + 0x40]");                     // 0x0076846c    8b4040
    asm("test               eax, eax");                                        // 0x0076846f    85c0
    asm("{disp8} jne        _jmp_addr_0x00768467");                            // 0x00768471    75f4
    asm("pop                edi");                                             // 0x00768473    5f
    asm("pop                esi");                                             // 0x00768474    5e
    asm("ret");                                                                // 0x00768475    c3
    asm("_jmp_addr_0x00768476:");
    asm("test               eax, eax");                                        // 0x00768476    85c0
    asm("{disp32} je        _jmp_addr_0x00768500");                            // 0x00768478    0f8482000000
    asm("mov                edx, dword ptr [esi]");                            // 0x0076847e    8b16
    asm("push               eax");                                             // 0x00768480    50
    asm("push               edi");                                             // 0x00768481    57
    asm("mov.s              ecx, esi");                                        // 0x00768482    8bce
    asm("call               dword ptr [edx + 0x9ec]");                         // 0x00768484    ff92ec090000
    asm("pop                edi");                                             // 0x0076848a    5f
    asm("pop                esi");                                             // 0x0076848b    5e
    asm("ret");                                                                // 0x0076848c    c3
    asm("_jmp_addr_0x0076848d:");
    asm("call               dword ptr [eax + 0x48]");                          // 0x0076848d    ff5048
    asm("test               eax, eax");                                        // 0x00768490    85c0
    asm("{disp8} je         _jmp_addr_0x00768500");                            // 0x00768492    746c
    asm("mov                edx, dword ptr [esi]");                            // 0x00768494    8b16
    asm("push               edi");                                             // 0x00768496    57
    asm("mov.s              ecx, esi");                                        // 0x00768497    8bce
    asm("call               dword ptr [edx + 0x48]");                          // 0x00768499    ff5248
    asm("mov.s              ecx, eax");                                        // 0x0076849c    8bc8
    asm("call               _jmp_addr_0x007436f0");                            // 0x0076849e    e84db2fdff
    asm("dec                eax");                                             // 0x007684a3    48
    asm("{disp8} je         _jmp_addr_0x007684f6");                            // 0x007684a4    7450
    asm("sub                eax, 0x02");                                       // 0x007684a6    83e802
    asm("{disp8} je         _jmp_addr_0x007684d6");                            // 0x007684a9    742b
    asm("dec                eax");                                             // 0x007684ab    48
    asm("{disp8} jne        _jmp_addr_0x00768500");                            // 0x007684ac    7552
    asm("mov                eax, dword ptr [esi]");                            // 0x007684ae    8b06
    asm("mov.s              ecx, esi");                                        // 0x007684b0    8bce
    asm("call               dword ptr [eax + 0xb04]");                         // 0x007684b2    ff90040b0000
    asm("cmp                al, -0x65");                                       // 0x007684b8    3c9b
    asm(".byte              0x72, 0x8");// {disp8} jb _jmp_addr_0x007684c4     // 0x007684ba    7208
    asm("cmp                al, -0x63");                                       // 0x007684bc    3c9d
    asm("{disp8} jbe        _jmp_addr_0x00768500");                            // 0x007684be    7640
    asm("cmp                al, -0x60");                                       // 0x007684c0    3ca0
    asm("{disp8} je         _jmp_addr_0x00768500");                            // 0x007684c2    743c
    asm("_jmp_addr_0x007684c4:");
    asm("mov                edx, dword ptr [esi]");                            // 0x007684c4    8b16
    asm("push               0x0000009b");                                      // 0x007684c6    689b000000
    asm("mov.s              ecx, esi");                                        // 0x007684cb    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x007684cd    ff92e8080000
    asm("pop                edi");                                             // 0x007684d3    5f
    asm("pop                esi");                                             // 0x007684d4    5e
    asm("ret");                                                                // 0x007684d5    c3
    asm("_jmp_addr_0x007684d6:");
    asm("mov                eax, dword ptr [esi]");                            // 0x007684d6    8b06
    asm("mov.s              ecx, esi");                                        // 0x007684d8    8bce
    asm("call               dword ptr [eax + 0xb04]");                         // 0x007684da    ff90040b0000
    asm("cmp                al, -0x61");                                       // 0x007684e0    3c9f
    asm("{disp8} je         _jmp_addr_0x00768500");                            // 0x007684e2    741c
    asm("mov                edx, dword ptr [esi]");                            // 0x007684e4    8b16
    asm("push               0x0000009f");                                      // 0x007684e6    689f000000
    asm("mov.s              ecx, esi");                                        // 0x007684eb    8bce
    asm("call               dword ptr [edx + 0x8e8]");                         // 0x007684ed    ff92e8080000
    asm("pop                edi");                                             // 0x007684f3    5f
    asm("pop                esi");                                             // 0x007684f4    5e
    asm("ret");                                                                // 0x007684f5    c3
    asm("_jmp_addr_0x007684f6:");
    asm("mov                eax, dword ptr [esi]");                            // 0x007684f6    8b06
    asm("mov.s              ecx, esi");                                        // 0x007684f8    8bce
    asm("call               dword ptr [eax + 0x99c]");                         // 0x007684fa    ff909c090000
    asm("_jmp_addr_0x00768500:");
    asm("pop                edi");                                             // 0x00768500    5f
    asm("pop                esi");                                             // 0x00768501    5e
    asm("ret");                                                                // 0x00768502    c3
    __builtin_unreachable();
}

void __fastcall SetupMoveToCreatureReaction__8VillagerFRC9MapCoordsUc(struct Villager* this, const void* edx, const struct MapCoords* param_1, unsigned char param_2)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                     // 0x00768510    8b442408
    asm("push               esi");                                             // 0x00768514    56
    asm("mov.s              esi, ecx");                                        // 0x00768515    8bf1
    asm("{disp8} mov        ecx, dword ptr [esp + 0x08]");                     // 0x00768517    8b4c2408
    asm("push               eax");                                             // 0x0076851b    50
    asm("push               ecx");                                             // 0x0076851c    51
    asm("mov.s              ecx, esi");                                        // 0x0076851d    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");  // 0x0076851f    e86ca3e8ff
    asm("push               0x000000a7");                                      // 0x00768524    68a7000000
    asm("push               0x0");                                             // 0x00768529    6a00
    asm("{disp32} lea       ecx, dword ptr [esi + 0x0000008c]");               // 0x0076852b    8d8e8c000000
    asm("call               @SetState__12LivingActionFUlUc@16");               // 0x00768531    e85a47e8ff
    asm("pop                esi");                                             // 0x00768536    5e
    asm("ret                0x0008");                                          // 0x00768537    c20800
    __builtin_unreachable();
}

uint32_t __fastcall AttitudeToCreatureNone__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 1;
}

uint32_t __fastcall AttitudeToCreatureFear__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 3;
}

uint32_t __fastcall AttitudeToCreatureRespect__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 4;
}

uint32_t __fastcall AttitudeToCreatureEating__16GameThingWithPosFv(struct GameThingWithPos* this)
{
    return 1;
}

uint32_t __fastcall AttitudeToCreatureEating__6LivingFv(struct GameThingWithPos* this)
{
    asm("mov                eax, dword ptr [ecx]");                            // 0x00768580    8b01
    asm("push               0x0");                                             // 0x00768582    6a00
    asm("call               dword ptr [eax + 0x2c8]");                         // 0x00768584    ff90c8020000
    asm("neg                eax");                                             // 0x0076858a    f7d8
    asm("sbb.s              eax, eax");                                        // 0x0076858c    1bc0
    asm("and                eax, 0x02");                                       // 0x0076858e    83e002
    asm("inc                eax");                                             // 0x00768591    40
    asm("ret");                                                                // 0x00768592    c3
    __builtin_unreachable();
}

void __fastcall Push__LHStack__JustMapXZFPJustMapXZ(struct LHStack__JustMapXZ* this, const void* edx, struct JustMapXZ* val)
{

    asm("{disp8} mov        eax, dword ptr [ecx + 0x20]");                     // 0x007685a0    8b4120
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                     // 0x007685a3    8b542404
    asm("mov                dword ptr [ecx + eax * 0x4], edx");                // 0x007685a7    891481
    asm("{disp8} inc        dword ptr [ecx + 0x20]");                          // 0x007685aa    ff4120
    asm("ret                0x0004");                                          // 0x007685ad    c20400
    __builtin_unreachable();
}
