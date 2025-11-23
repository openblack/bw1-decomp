#include "Villager.h"

const float rdata_float10p0_0x0099a934 = 10.0f;
const float villager_child_num_days_in_year_0x0099a938 = 365.25f;
const float villager_child_seconds_in_day_0x0099a93c = 86400.0f;

char s_VillagerChild_cpp[] = "C:\\dev\\MP\\Black\\VillagerChild.cpp";

uint32_t villager_child_uint_0x00db9dd0;
float villager_child_seconds_in_year_0x00db9dd4;

void __cdecl globl_ct_0x00757860(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00757860    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00757866    b001
    asm("test               al, cl");                                        // 0x00757868    84c8
    asm("{disp8} jne        _jmp_addr_0x00757874");                          // 0x0075786a    7508
    asm("or.s               cl, al");                                        // 0x0075786c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075786e    880d34c9fa00
    asm("_jmp_addr_0x00757874:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00757880");   // 0x00757874    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00757880(void)
{
    asm("push               0x00407870");                                    // 0x00757880    6870784000
    asm("call               _atexit");                                       // 0x00757885    e8e7ea0600
    asm("pop                ecx");                                           // 0x0075788a    59
}

void __cdecl globl_ct_0x00757890(void)
{
    asm("{disp32} jmp       _FUN_007578a0__8VillagerFv");                    // 0x00757890    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_007578a0__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_child_seconds_in_day_0x0099a93c]");   // 0x007578a0    d9053ca99900
    asm("{disp32} fmul dword ptr [_villager_child_num_days_in_year_0x0099a938]"); // 0x007578a6    d80d38a99900
    asm("{disp32} fstp dword ptr [_villager_child_seconds_in_year_0x00db9dd4]");        // 0x007578ac    d91dd49ddb00
}

bool32_t __fastcall ChildFollowsMother__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x20");                                     // 0x007578c0    83ec20
    asm("push               esi");                                           // 0x007578c3    56
    asm("mov.s              esi, ecx");                                      // 0x007578c4    8bf1
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000000");            // 0x007578c6    c744240c00000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x007578ce    c744241000000000
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x007578d6    c744241400000000
    asm("call               ?CheckChild@Villager@@QAEIXZ");                  // 0x007578de    e89d050000
    asm("test               eax, eax");                                      // 0x007578e3    85c0
    asm("{disp32} jne       _jmp_addr_0x007579d9");                          // 0x007578e5    0f85ee000000
    asm("mov.s              ecx, esi");                                      // 0x007578eb    8bce
    asm("call               _jmp_addr_0x00757c80");                          // 0x007578ed    e88e030000
    asm("cmp                eax, 0x01");                                     // 0x007578f2    83f801
    asm("{disp32} je        _jmp_addr_0x007579d9");                          // 0x007578f5    0f84de000000
    asm("mov.s              ecx, esi");                                      // 0x007578fb    8bce
    asm("call               ?ChildGotoCreche@Villager@@QAEIXZ");             // 0x007578fd    e8ee000000
    asm("test               eax, eax");                                      // 0x00757902    85c0
    asm("{disp32} jne       _jmp_addr_0x007579d9");                          // 0x00757904    0f85cf000000
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000100]");             // 0x0075790a    8b8e00010000
    asm("test               ecx, ecx");                                      // 0x00757910    85c9
    asm("{disp8} je         _jmp_addr_0x0075793c");                          // 0x00757912    7428
    asm("mov                eax, dword ptr [ecx]");                          // 0x00757914    8b01
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00757916    ff502c
    asm("test               eax, eax");                                      // 0x00757919    85c0
    asm("{disp8} je         _jmp_addr_0x0075793c");                          // 0x0075791b    741f
    asm("{disp32} mov       ecx, dword ptr [esi + 0x00000100]");             // 0x0075791d    8b8e00010000
    asm("add                ecx, 0x14");                                     // 0x00757923    83c114
    asm("mov                edx, dword ptr [ecx]");                          // 0x00757926    8b11
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x00757928    8954240c
    asm("{disp8} mov        eax, dword ptr [ecx + 0x04]");                   // 0x0075792c    8b4104
    asm("{disp8} mov        dword ptr [esp + 0x10], eax");                   // 0x0075792f    89442410
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x00757933    8b4908
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00757936    894c2414
    asm("{disp8} jmp        _jmp_addr_0x00757969");                          // 0x0075793a    eb2d
    asm("_jmp_addr_0x0075793c:");
    asm("mov.s              ecx, esi");                                      // 0x0075793c    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075793e    e81da8ffff
    asm("test               eax, eax");                                      // 0x00757943    85c0
    asm("mov.s              ecx, esi");                                      // 0x00757945    8bce
    asm("{disp32} je        _jmp_addr_0x007579d4");                          // 0x00757947    0f8487000000
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x0075794d    e80ea8ffff
    asm("add                eax, 0x14");                                     // 0x00757952    83c014
    asm("mov                edx, dword ptr [eax]");                          // 0x00757955    8b10
    asm("{disp8} mov        dword ptr [esp + 0x0c], edx");                   // 0x00757957    8954240c
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x0075795b    8b4804
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x0075795e    894c2410
    asm("{disp8} mov        edx, dword ptr [eax + 0x08]");                   // 0x00757962    8b5008
    asm("{disp8} mov        dword ptr [esp + 0x14], edx");                   // 0x00757965    89542414
    asm("_jmp_addr_0x00757969:");
    asm("push               0x39");                                          // 0x00757969    6a39
    asm("push               0x00c236e0");                                    // 0x0075796b    68e036c200
    asm("push               0x40c90fdb");                                    // 0x00757970    68db0fc940
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00757975    e8b66bf8ff
    asm("{disp8} fstp       dword ptr [esp + 0x14]");                        // 0x0075797a    d95c2414
    asm("{disp32} fld       dword ptr [_rdata_float10p0_0x0099a934]");       // 0x0075797e    d90534a99900
    asm("{disp8} mov        ecx, dword ptr [esp + 0x14]");                   // 0x00757984    8b4c2414
    asm("{disp32} fmul      dword ptr [_rdata_float0p5]");                   // 0x00757988    d80db4a38a00
    asm("{disp8} lea        edx, dword ptr [esp + 0x24]");                   // 0x0075798e    8d542424
    asm("{disp8} fstp       dword ptr [esp + 0x10]");                        // 0x00757992    d95c2410
    asm("{disp8} mov        eax, dword ptr [esp + 0x10]");                   // 0x00757996    8b442410
    asm("push               eax");                                           // 0x0075799a    50
    asm("push               ecx");                                           // 0x0075799b    51
    asm("push               edx");                                           // 0x0075799c    52
    asm("call               ?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z"); // 0x0075799d    e8de5bffff
    asm("add                esp, 0x18");                                     // 0x007579a2    83c418
    asm("push               eax");                                           // 0x007579a5    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x007579a6    8d4c2410
    asm("call               @__apl__9MapCoordsFRC9MapCoords@12");            // 0x007579aa    e861daeaff
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x007579af    8d4c240c
    asm("call               _jmp_addr_0x00603840");                          // 0x007579b3    e888beeaff
    asm("test               eax, eax");                                      // 0x007579b8    85c0
    asm("{disp8} je         _jmp_addr_0x007579d9");                          // 0x007579ba    741d
    asm("push               0x72");                                          // 0x007579bc    6a72
    asm("{disp8} lea        eax, dword ptr [esp + 0x10]");                   // 0x007579be    8d442410
    asm("push               eax");                                           // 0x007579c2    50
    asm("mov.s              ecx, esi");                                      // 0x007579c3    8bce
    asm("call               @SetupMoveToWithHug__6LivingFRC9MapCoordsUc@13");// 0x007579c5    e8c6aee9ff
    asm("mov                eax, 0x00000001");                               // 0x007579ca    b801000000
    asm("pop                esi");                                           // 0x007579cf    5e
    asm("add                esp, 0x20");                                     // 0x007579d0    83c420
    asm("ret");                                                              // 0x007579d3    c3
    asm("_jmp_addr_0x007579d4:");
    asm("call               ?CheckNeedNewAbode@Villager@@QAEIXZ");           // 0x007579d4    e8b7050000
    asm("_jmp_addr_0x007579d9:");
    asm("mov                eax, 0x00000001");                               // 0x007579d9    b801000000
    asm("pop                esi");                                           // 0x007579de    5e
    asm("add                esp, 0x20");                                     // 0x007579df    83c420
    asm("ret");                                                              // 0x007579e2    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall ChildGotoCreche__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x007579f0    83ec0c
    asm("push               esi");                                           // 0x007579f3    56
    asm("push               edi");                                           // 0x007579f4    57
    asm("mov.s              edi, ecx");                                      // 0x007579f5    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x007579f7    8b07
    asm("call               dword ptr [eax + 0x48]");                        // 0x007579f9    ff5048
    asm("test               eax, eax");                                      // 0x007579fc    85c0
    asm("{disp8} je         _jmp_addr_0x00757a44");                          // 0x007579fe    7444
    asm("mov                edx, dword ptr [edi]");                          // 0x00757a00    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757a02    8bcf
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757a04    ff5248
    asm("{disp32} mov       esi, dword ptr [eax + 0x00000744]");             // 0x00757a07    8bb044070000
    asm("test               esi, esi");                                      // 0x00757a0d    85f6
    asm("{disp8} je         _jmp_addr_0x00757a44");                          // 0x00757a0f    7433
    asm("mov                eax, dword ptr [esi]");                          // 0x00757a11    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757a13    8bce
    asm("call               dword ptr [eax + 0xd4]");                        // 0x00757a15    ff90d4000000
    asm("test               eax, eax");                                      // 0x00757a1b    85c0
    asm("{disp8} je         _jmp_addr_0x00757a44");                          // 0x00757a1d    7425
    asm("mov                edx, dword ptr [esi]");                          // 0x00757a1f    8b16
    asm("push               0x71");                                          // 0x00757a21    6a71
    asm("{disp8} lea        eax, dword ptr [esp + 0x0c]");                   // 0x00757a23    8d44240c
    asm("push               eax");                                           // 0x00757a27    50
    asm("mov.s              ecx, esi");                                      // 0x00757a28    8bce
    asm("call               dword ptr [edx + 0x864]");                       // 0x00757a2a    ff9264080000
    asm("push               eax");                                           // 0x00757a30    50
    asm("push               esi");                                           // 0x00757a31    56
    asm("mov.s              ecx, edi");                                      // 0x00757a32    8bcf
    asm("call               @SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc@17");                          // 0x00757a34    e8e762e9ff
    asm("pop                edi");                                           // 0x00757a39    5f
    asm("mov                eax, 0x00000001");                               // 0x00757a3a    b801000000
    asm("pop                esi");                                           // 0x00757a3f    5e
    asm("add                esp, 0x0c");                                     // 0x00757a40    83c40c
    asm("ret");                                                              // 0x00757a43    c3
    asm("_jmp_addr_0x00757a44:");
    asm("pop                edi");                                           // 0x00757a44    5f
    asm("xor.s              eax, eax");                                      // 0x00757a45    33c0
    asm("pop                esi");                                           // 0x00757a47    5e
    asm("add                esp, 0x0c");                                     // 0x00757a48    83c40c
    asm("ret");                                                              // 0x00757a4b    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __cdecl GetNextDstPromemade__FP6CrecheRlP9MapCoordsRC9MapCoords(struct Creche* param_1, long* param_2, struct MapCoords* param_3, const struct MapCoords* param_4)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x00757a50    8b442408
    asm("mov                eax, dword ptr [eax]");                          // 0x00757a54    8b00
    asm("{disp8} mov        ecx, dword ptr [esp + 0x04]");                   // 0x00757a56    8b4c2404
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x40]");                   // 0x00757a5a    8b4940
    asm("mov                edx, dword ptr [ecx]");                          // 0x00757a5d    8b11
    asm("sub                esp, 0x20");                                     // 0x00757a5f    83ec20
    asm("push               ebx");                                           // 0x00757a62    53
    asm("push               ebp");                                           // 0x00757a63    55
    asm("push               esi");                                           // 0x00757a64    56
    asm("mov.s              esi, eax");                                      // 0x00757a65    8bf0
    asm("sar                eax, 0x10");                                     // 0x00757a67    c1f810
    asm("push               edi");                                           // 0x00757a6a    57
    asm("and                esi, 0x0000ffff");                               // 0x00757a6b    81e6ffff0000
    asm("mov.s              ebx, eax");                                      // 0x00757a71    8bd8
    asm("xor.s              ebp, ebp");                                      // 0x00757a73    33ed
    asm("call               dword ptr [edx + 0xf8]");                        // 0x00757a75    ff92f8000000
    asm("mov.s              edi, eax");                                      // 0x00757a7b    8bf8
    asm("{disp8} mov        eax, dword ptr [edi + 0x04]");                   // 0x00757a7d    8b4704
    asm("test               eax, 0x00100000");                               // 0x00757a80    a900001000
    asm("{disp8} je         _jmp_addr_0x00757b02");                          // 0x00757a85    747b
    asm("test               ah, -0x80");                                     // 0x00757a87    f6c480
    asm("{disp8} je         _jmp_addr_0x00757a98");                          // 0x00757a8a    740c
    asm("{disp8} mov        ecx, dword ptr [edi + 0x48]");                   // 0x00757a8c    8b4f48
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x08]");                   // 0x00757a8f    8b4908
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x00757a92    894c2414
    asm("{disp8} jmp        _jmp_addr_0x00757aa0");                          // 0x00757a96    eb08
    asm("_jmp_addr_0x00757a98:");
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00757a98    c744241400000000
    asm("_jmp_addr_0x00757aa0:");
    asm("test               eax, 0x00040000");                               // 0x00757aa0    a900000400
    asm("{disp8} je         _jmp_addr_0x00757abc");                          // 0x00757aa5    7415
    asm("mov.s              ecx, edi");                                      // 0x00757aa7    8bcf
    asm("call               ?GetSizeFootprintData_dup1@LH3DMesh@@QAEIXZ");   // 0x00757aa9    e8e2c0caff
    asm("{disp8} mov        ecx, dword ptr [edi + 0x48]");                   // 0x00757aae    8b4f48
    asm("mov                edx, dword ptr [eax + ecx * 0x1]");              // 0x00757ab1    8b1408
    asm("add.s              eax, ecx");                                      // 0x00757ab4    03c1
    asm("{disp8} mov        dword ptr [esp + 0x10], edx");                   // 0x00757ab6    89542410
    asm("{disp8} jmp        _jmp_addr_0x00757ac4");                          // 0x00757aba    eb08
    asm("_jmp_addr_0x00757abc:");
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x00757abc    c744241000000000
    asm("_jmp_addr_0x00757ac4:");
    asm("test               dword ptr [edi + 0x04], 0x00080000");            // 0x00757ac4    f7470400000800
    asm("{disp8} je         _jmp_addr_0x00757ad8");                          // 0x00757acb    740b
    asm("mov.s              ecx, edi");                                      // 0x00757acd    8bcf
    asm("call               ?GetSizeNameData@LH3DMesh@@QAEIXZ");             // 0x00757acf    e89cbccaff
    asm("mov                eax, dword ptr [eax]");                          // 0x00757ad4    8b00
    asm("{disp8} jmp        _jmp_addr_0x00757ada");                          // 0x00757ad6    eb02
    asm("_jmp_addr_0x00757ad8:");
    asm("xor.s              eax, eax");                                      // 0x00757ad8    33c0
    asm("_jmp_addr_0x00757ada:");
    asm("{disp8} mov        edi, dword ptr [edi + 0x48]");                   // 0x00757ada    8b7f48
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00757add    8b4c2410
    asm("add.s              edi, eax");                                      // 0x00757ae1    03f8
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00757ae3    8b442414
    asm("add.s              edi, ecx");                                      // 0x00757ae7    03f9
    asm("add.s              edi, eax");                                      // 0x00757ae9    03f8
    asm("{disp8} je         _jmp_addr_0x00757b02");                          // 0x00757aeb    7415
    asm("{disp8} mov        edi, dword ptr [edi + 0x04]");                   // 0x00757aed    8b7f04
    asm("mov                eax, 0x66666667");                               // 0x00757af0    b867666666
    asm("imul               edi");                                           // 0x00757af5    f7ef
    asm("sar                edx, 1");                                        // 0x00757af7    d1fa
    asm("mov.s              eax, edx");                                      // 0x00757af9    8bc2
    asm("shr                eax, 0x1f");                                     // 0x00757afb    c1e81f
    asm("add.s              edx, eax");                                      // 0x00757afe    03d0
    asm("mov.s              ebp, edx");                                      // 0x00757b00    8bea
    asm("_jmp_addr_0x00757b02:");
    asm("{disp8} mov        edi, dword ptr [esp + 0x34]");                   // 0x00757b02    8b7c2434
    asm("mov                edx, dword ptr [edi]");                          // 0x00757b06    8b17
    asm("{disp8} lea        eax, dword ptr [esp + 0x18]");                   // 0x00757b08    8d442418
    asm("push               eax");                                           // 0x00757b0c    50
    asm("mov.s              ecx, edi");                                      // 0x00757b0d    8bcf
    asm("call               dword ptr [edx + 0x864]");                       // 0x00757b0f    ff9264080000
    asm("{disp8} mov        ecx, dword ptr [esp + 0x40]");                   // 0x00757b15    8b4c2440
    asm("push               eax");                                           // 0x00757b19    50
    asm("call               @__eq__9MapCoordsCFRC9MapCoords@12");            // 0x00757b1a    e841dbeaff
    asm("test               eax, eax");                                      // 0x00757b1f    85c0
    asm("{disp8} je         _jmp_addr_0x00757b43");                          // 0x00757b21    7420
    asm("push               0x6b");                                          // 0x00757b23    6a6b
    asm("push               0x00c236e0");                                    // 0x00757b25    68e036c200
    asm("push               ebp");                                           // 0x00757b2a    55
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00757b2b    e8e069f8ff
    asm("mov.s              esi, eax");                                      // 0x00757b30    8bf0
    asm("add                esp, 0x0c");                                     // 0x00757b32    83c40c
    asm("test               esi, esi");                                      // 0x00757b35    85f6
    asm("{disp8} jl         _jmp_addr_0x00757b3d");                          // 0x00757b37    7c04
    asm("cmp.s              esi, ebp");                                      // 0x00757b39    3bf5
    asm("{disp8} jl         _jmp_addr_0x00757b3f");                          // 0x00757b3b    7c02
    asm("_jmp_addr_0x00757b3d:");
    asm("xor.s              esi, esi");                                      // 0x00757b3d    33f6
    asm("_jmp_addr_0x00757b3f:");
    asm("xor.s              ebx, ebx");                                      // 0x00757b3f    33db
    asm("{disp8} jmp        _jmp_addr_0x00757b83");                          // 0x00757b41    eb40
    asm("_jmp_addr_0x00757b43:");
    asm("test               esi, esi");                                      // 0x00757b43    85f6
    asm("{disp8} jge        _jmp_addr_0x00757b4b");                          // 0x00757b45    7d04
    asm("xor.s              esi, esi");                                      // 0x00757b47    33f6
    asm("{disp8} jmp        _jmp_addr_0x00757b52");                          // 0x00757b49    eb07
    asm("_jmp_addr_0x00757b4b:");
    asm("cmp.s              esi, ebp");                                      // 0x00757b4b    3bf5
    asm("{disp8} jl         _jmp_addr_0x00757b52");                          // 0x00757b4d    7c03
    asm("{disp8} lea        esi, dword ptr [ebp + -0x01]");                  // 0x00757b4f    8d75ff
    asm("_jmp_addr_0x00757b52:");
    asm("inc                ebx");                                           // 0x00757b52    43
    asm("{disp8} jns        _jmp_addr_0x00757b59");                          // 0x00757b53    7904
    asm("xor.s              ebx, ebx");                                      // 0x00757b55    33db
    asm("{disp8} jmp        _jmp_addr_0x00757b83");                          // 0x00757b57    eb2a
    asm("_jmp_addr_0x00757b59:");
    asm("cmp                ebx, 0x09");                                     // 0x00757b59    83fb09
    asm("{disp32} jle       _jmp_addr_0x00757c2c");                          // 0x00757b5c    0f8eca000000
    asm("push               0x00000081");                                    // 0x00757b62    6881000000
    asm("push               0x00c236e0");                                    // 0x00757b67    68e036c200
    asm("push               ebp");                                           // 0x00757b6c    55
    asm("xor.s              ebx, ebx");                                      // 0x00757b6d    33db
    asm("call               ?GameRand@GRand@@SAHJ@Z");                       // 0x00757b6f    e89c69f8ff
    asm("mov.s              esi, eax");                                      // 0x00757b74    8bf0
    asm("add                esp, 0x0c");                                     // 0x00757b76    83c40c
    asm("test               esi, esi");                                      // 0x00757b79    85f6
    asm("{disp8} jl         _jmp_addr_0x00757b81");                          // 0x00757b7b    7c04
    asm("cmp.s              esi, ebp");                                      // 0x00757b7d    3bf5
    asm("{disp8} jl         _jmp_addr_0x00757b83");                          // 0x00757b7f    7c02
    asm("_jmp_addr_0x00757b81:");
    asm("xor.s              esi, esi");                                      // 0x00757b81    33f6
    asm("_jmp_addr_0x00757b83:");
    asm("mov.s              eax, ebx");                                      // 0x00757b83    8bc3
    asm("_jmp_addr_0x00757b85:");
    asm("test               ebp, ebp");                                      // 0x00757b85    85ed
    asm("{disp32} je        _jmp_addr_0x00757c41");                          // 0x00757b87    0f84b4000000
    asm("{disp8} mov        ecx, dword ptr [edi + 0x40]");                   // 0x00757b8d    8b4f40
    asm("mov                edi, dword ptr [ecx]");                          // 0x00757b90    8b39
    asm("{disp8} lea        edx, dword ptr [esp + 0x18]");                   // 0x00757b92    8d542418
    asm("push               edx");                                           // 0x00757b96    52
    asm("lea                eax, dword ptr [eax + esi * 0x4]");              // 0x00757b97    8d04b0
    asm("mov.s              edx, esi");                                      // 0x00757b9a    8bd6
    asm("add.s              edx, eax");                                      // 0x00757b9c    03d0
    asm("call               dword ptr [edi + 0x1cc]");                       // 0x00757b9e    ff97cc010000
    asm("push               0x00000090");                                    // 0x00757ba4    6890000000
    asm("push               0x00c236e0");                                    // 0x00757ba9    68e036c200
    asm("push               0x3f800000");                                    // 0x00757bae    680000803f
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00757bb3    e87869f8ff
    asm("{disp32} fsub      dword ptr [_rdata_float0p5]");                   // 0x00757bb8    d825b4a38a00
    asm("push               0x00000090");                                    // 0x00757bbe    6890000000
    asm("push               0x00c236e0");                                    // 0x00757bc3    68e036c200
    asm("push               0x3f800000");                                    // 0x00757bc8    680000803f
    asm("{disp8} fstp       dword ptr [esp + 0x4c]");                        // 0x00757bcd    d95c244c
    asm("call               ?GameFloatRand@GRand@@SAMM@Z");                  // 0x00757bd1    e85a69f8ff
    asm("{disp32} fsub      dword ptr [_rdata_float0p5]");                   // 0x00757bd6    d825b4a38a00
    asm("{disp8} fld        dword ptr [esp + 0x30]");                        // 0x00757bdc    d9442430
    asm("add                esp, 0x18");                                     // 0x00757be0    83c418
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x00757be3    8d4c2418
    asm("fadd               st, st(1)");                                     // 0x00757be7    d8c1
    asm("push               ecx");                                           // 0x00757be9    51
    asm("{disp8} lea        ecx, dword ptr [esp + 0x28]");                   // 0x00757bea    8d4c2428
    asm("{disp8} fstp       dword ptr [esp + 0x1c]");                        // 0x00757bee    d95c241c
    asm("fstp               st(0)");                                         // 0x00757bf2    ddd8
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00757bf4    d9442424
    asm("{disp8} fadd       dword ptr [esp + 0x38]");                        // 0x00757bf8    d8442438
    asm("{disp8} fstp       dword ptr [esp + 0x24]");                        // 0x00757bfc    d95c2424
    asm("call               @__ct__9MapCoordsFRC7LHPoint@12");               // 0x00757c00    e85bb5eaff
    asm("mov                ecx, dword ptr [eax]");                          // 0x00757c05    8b08
    asm("{disp8} mov        edx, dword ptr [esp + 0x3c]");                   // 0x00757c07    8b54243c
    asm("mov                dword ptr [edx], ecx");                          // 0x00757c0b    890a
    asm("{disp8} mov        ecx, dword ptr [eax + 0x04]");                   // 0x00757c0d    8b4804
    asm("{disp8} mov        dword ptr [edx + 0x04], ecx");                   // 0x00757c10    894a04
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00757c13    8b4008
    asm("{disp8} mov        ecx, dword ptr [esp + 0x38]");                   // 0x00757c16    8b4c2438
    asm("shl                ebx, 0x10");                                     // 0x00757c1a    c1e310
    asm("pop                edi");                                           // 0x00757c1d    5f
    asm("or.s               ebx, esi");                                      // 0x00757c1e    0bde
    asm("pop                esi");                                           // 0x00757c20    5e
    asm("{disp8} mov        dword ptr [edx + 0x08], eax");                   // 0x00757c21    894208
    asm("pop                ebp");                                           // 0x00757c24    5d
    asm("mov                dword ptr [ecx], ebx");                          // 0x00757c25    8919
    asm("pop                ebx");                                           // 0x00757c27    5b
    asm("add                esp, 0x20");                                     // 0x00757c28    83c420
    asm("ret");                                                              // 0x00757c2b    c3
    asm("_jmp_addr_0x00757c2c:");
    asm("cmp                ebx, 0x04");                                     // 0x00757c2c    83fb04
    asm("{disp32} jle       _jmp_addr_0x00757b83");                          // 0x00757c2f    0f8e4effffff
    asm("mov                eax, 0x00000009");                               // 0x00757c35    b809000000
    asm("sub.s              eax, ebx");                                      // 0x00757c3a    2bc3
    asm("{disp32} jmp       _jmp_addr_0x00757b85");                          // 0x00757c3c    e944ffffff
    asm("_jmp_addr_0x00757c41:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00757c41    8b17
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x00757c43    8d442424
    asm("push               eax");                                           // 0x00757c47    50
    asm("mov.s              ecx, edi");                                      // 0x00757c48    8bcf
    asm("call               dword ptr [edx + 0x864]");                       // 0x00757c4a    ff9264080000
    asm("mov                edx, dword ptr [eax]");                          // 0x00757c50    8b10
    asm("{disp8} mov        ecx, dword ptr [esp + 0x3c]");                   // 0x00757c52    8b4c243c
    asm("mov                dword ptr [ecx], edx");                          // 0x00757c56    8911
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x00757c58    8b5004
    asm("{disp8} mov        dword ptr [ecx + 0x04], edx");                   // 0x00757c5b    895104
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x00757c5e    8b4008
    asm("shl                ebx, 0x10");                                     // 0x00757c61    c1e310
    asm("pop                edi");                                           // 0x00757c64    5f
    asm("or.s               ebx, esi");                                      // 0x00757c65    0bde
    asm("{disp8} mov        dword ptr [ecx + 0x08], eax");                   // 0x00757c67    894108
    asm("{disp8} mov        ecx, dword ptr [esp + 0x34]");                   // 0x00757c6a    8b4c2434
    asm("pop                esi");                                           // 0x00757c6e    5e
    asm("pop                ebp");                                           // 0x00757c6f    5d
    asm("mov                dword ptr [ecx], ebx");                          // 0x00757c70    8919
    asm("pop                ebx");                                           // 0x00757c72    5b
    asm("add                esp, 0x20");                                     // 0x00757c73    83c420
    asm("ret");                                                              // 0x00757c76    c3
    asm("nop");                                                              // 0x00757c77    90
    asm("nop");                                                              // 0x00757c78    90
    asm("nop");                                                              // 0x00757c79    90
    asm("nop");                                                              // 0x00757c7a    90
    asm("nop");                                                              // 0x00757c7b    90
    asm("nop");                                                              // 0x00757c7c    90
    asm("nop");                                                              // 0x00757c7d    90
    asm("nop");                                                              // 0x00757c7e    90
    asm("nop");                                                              // 0x00757c7f    90
    asm("_jmp_addr_0x00757c80:");
    asm("{disp32} jmp       ?CheckNeededForTownDesire@Villager@@QAEIXZ");    // 0x00757c80    e91b050000
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ChildAtCreche__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x38");                                     // 0x00757c90    83ec38
    asm("push               ebx");                                           // 0x00757c93    53
    asm("push               esi");                                           // 0x00757c94    56
    asm("xor.s              ebx, ebx");                                      // 0x00757c95    33db
    asm("push               edi");                                           // 0x00757c97    57
    asm("mov.s              esi, ecx");                                      // 0x00757c98    8bf1
    asm("{disp8} mov        dword ptr [esp + 0x0c], ebx");                   // 0x00757c9a    895c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ebx");                   // 0x00757c9e    895c2410
    asm("{disp8} mov        dword ptr [esp + 0x14], ebx");                   // 0x00757ca2    895c2414
    asm("call               ?CheckChild@Villager@@QAEIXZ");                  // 0x00757ca6    e8d5010000
    asm("cmp                eax, 0x01");                                     // 0x00757cab    83f801
    asm("{disp8} jne        _jmp_addr_0x00757cb7");                          // 0x00757cae    7507
    asm("pop                edi");                                           // 0x00757cb0    5f
    asm("pop                esi");                                           // 0x00757cb1    5e
    asm("pop                ebx");                                           // 0x00757cb2    5b
    asm("add                esp, 0x38");                                     // 0x00757cb3    83c438
    asm("ret");                                                              // 0x00757cb6    c3
    asm("_jmp_addr_0x00757cb7:");
    asm("mov                eax, dword ptr [esi]");                          // 0x00757cb7    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757cb9    8bce
    asm("call               dword ptr [eax + 0x48]");                        // 0x00757cbb    ff5048
    asm("mov.s              edi, eax");                                      // 0x00757cbe    8bf8
    asm("cmp.s              edi, ebx");                                      // 0x00757cc0    3bfb
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757cc2    0f84a5010000
    asm("mov.s              ecx, esi");                                      // 0x00757cc8    8bce
    asm("call               _jmp_addr_0x00757c80");                          // 0x00757cca    e8b1ffffff
    asm("cmp                eax, 0x01");                                     // 0x00757ccf    83f801
    asm("{disp8} jne        _jmp_addr_0x00757cdb");                          // 0x00757cd2    7507
    asm("pop                edi");                                           // 0x00757cd4    5f
    asm("pop                esi");                                           // 0x00757cd5    5e
    asm("pop                ebx");                                           // 0x00757cd6    5b
    asm("add                esp, 0x38");                                     // 0x00757cd7    83c438
    asm("ret");                                                              // 0x00757cda    c3
    asm("_jmp_addr_0x00757cdb:");
    asm("{disp32} mov       edi, dword ptr [edi + 0x00000744]");             // 0x00757cdb    8bbf44070000
    asm("mov                ecx, OFFSET _GGameInfo_00d019f8");               // 0x00757ce1    b9f819d000
    asm("call               ?GetVisualTime@GGameInfo@@QAEMXZ");              // 0x00757ce6    e8b5f8dfff
    asm("push               ecx");                                           // 0x00757ceb    51
    asm("fstp               dword ptr [esp]");                               // 0x00757cec    d91c24
    asm("call               ?Time2SkyType@LH3DSky@@QAEMM@Z");                // 0x00757cef    e8bc241100
    asm("add                esp, 0x04");                                     // 0x00757cf4    83c404
    asm("cmp.s              edi, ebx");                                      // 0x00757cf7    3bfb
    asm("{disp32} je        _jmp_addr_0x00757e6b");                          // 0x00757cf9    0f846c010000
    asm("{disp32} fcomp     qword ptr [__real@8@333333333333f33f]");         // 0x00757cff    dc1d58878d00
    asm("fnstsw             ax");                                            // 0x00757d05    dfe0
    asm("test               ah, 0x41");                                      // 0x00757d07    f6c441
    asm("{disp8} je         _jmp_addr_0x00757d1a");                          // 0x00757d0a    740e
    asm("mov                edx, dword ptr [edi]");                          // 0x00757d0c    8b17
    asm("mov.s              ecx, edi");                                      // 0x00757d0e    8bcf
    asm("call               dword ptr [edx + 0xd4]");                        // 0x00757d10    ff92d4000000
    asm("test               eax, eax");                                      // 0x00757d16    85c0
    asm("{disp8} jne        _jmp_addr_0x00757d98");                          // 0x00757d18    757e
    asm("_jmp_addr_0x00757d1a:");
    asm("mov.s              ecx, esi");                                      // 0x00757d1a    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757d1c    e83fa4ffff
    asm("cmp.s              eax, ebx");                                      // 0x00757d21    3bc3
    asm("{disp8} je         _jmp_addr_0x00757d50");                          // 0x00757d23    742b
    asm("{disp32} mov       eax, dword ptr [eax + 0x000000a0]");             // 0x00757d25    8b80a0000000
    asm("cmp.s              eax, ebx");                                      // 0x00757d2b    3bc3
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757d2d    0f843a010000
    asm("test               byte ptr [eax + 0x000000e0], 0x04");             // 0x00757d33    f680e000000004
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757d3a    0f842d010000
    asm("mov.s              ecx, esi");                                      // 0x00757d40    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757d42    e829850000
    asm("pop                edi");                                           // 0x00757d47    5f
    asm("pop                esi");                                           // 0x00757d48    5e
    asm("xor.s              eax, eax");                                      // 0x00757d49    33c0
    asm("pop                ebx");                                           // 0x00757d4b    5b
    asm("add                esp, 0x38");                                     // 0x00757d4c    83c438
    asm("ret");                                                              // 0x00757d4f    c3
    asm("_jmp_addr_0x00757d50:");
    asm("mov                eax, dword ptr [edi]");                          // 0x00757d50    8b07
    asm("push               0x3a83126f");                                    // 0x00757d52    686f12833a
    asm("push               esi");                                           // 0x00757d57    56
    asm("mov.s              ecx, edi");                                      // 0x00757d58    8bcf
    asm("call               dword ptr [eax + 0x6b8]");                       // 0x00757d5a    ff90b8060000
    asm("test               eax, eax");                                      // 0x00757d60    85c0
    asm("{disp32} je        _jmp_addr_0x00757e6d");                          // 0x00757d62    0f8405010000
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757d68    8d4e14
    asm("push               ecx");                                           // 0x00757d6b    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00757d6c    8d542410
    asm("push               edx");                                           // 0x00757d70    52
    asm("{disp32} lea       eax, dword ptr [esi + 0x000000c4]");             // 0x00757d71    8d86c4000000
    asm("push               eax");                                           // 0x00757d77    50
    asm("push               edi");                                           // 0x00757d78    57
    asm("call               ?GetNextDstPromemade@@YAXPAVCreche@@AAJPAUMapCoords@@ABU2@@Z");                          // 0x00757d79    e8d2fcffff
    asm("add                esp, 0x10");                                     // 0x00757d7e    83c410
    asm("push               0x71");                                          // 0x00757d81    6a71
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00757d83    8d4c2410
    asm("push               ecx");                                           // 0x00757d87    51
    asm("mov.s              ecx, esi");                                      // 0x00757d88    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00757d8a    e871ba0000
    asm("pop                edi");                                           // 0x00757d8f    5f
    asm("pop                esi");                                           // 0x00757d90    5e
    asm("xor.s              eax, eax");                                      // 0x00757d91    33c0
    asm("pop                ebx");                                           // 0x00757d93    5b
    asm("add                esp, 0x38");                                     // 0x00757d94    83c438
    asm("ret");                                                              // 0x00757d97    c3
    asm("_jmp_addr_0x00757d98:");
    asm("mov                edx, dword ptr [edi]");                          // 0x00757d98    8b17
    asm("{disp8} lea        eax, dword ptr [esp + 0x24]");                   // 0x00757d9a    8d442424
    asm("push               eax");                                           // 0x00757d9e    50
    asm("mov.s              ecx, edi");                                      // 0x00757d9f    8bcf
    asm("{disp8} mov        dword ptr [esp + 0x34], ebx");                   // 0x00757da1    895c2434
    asm("{disp8} mov        dword ptr [esp + 0x38], ebx");                   // 0x00757da5    895c2438
    asm("{disp8} mov        dword ptr [esp + 0x3c], 0x00000013");            // 0x00757da9    c744243c13000000
    asm("{disp8} mov        dword ptr [esp + 0x40], ebx");                   // 0x00757db1    895c2440
    asm("{disp8} mov        dword ptr [esp + 0x44], 0x00000052");            // 0x00757db5    c744244452000000
    asm("call               dword ptr [edx + 0x10]");                        // 0x00757dbd    ff5210
    asm("{disp32} mov       ecx, dword ptr [_game]");                        // 0x00757dc0    8b0d5c19d000
    asm("call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ");           // 0x00757dc6    e8b543dfff
    asm("{disp8} fld        dword ptr [esp + 0x24]");                        // 0x00757dcb    d9442424
    asm("{disp32} mov       ecx, dword ptr [_g_camera + 0]");                // 0x00757dcf    8b0db81dea00
    asm("{disp32} mov       edx, dword ptr [_g_camera + 4]");                // 0x00757dd5    8b15bc1dea00
    asm("{disp32} mov       eax, dword ptr [_g_camera + 8]");                // 0x00757ddb    a1c01dea00
    asm("{disp8} mov        dword ptr [esp + 0x18], ecx");                   // 0x00757de0    894c2418
    asm("{disp8} fsub       dword ptr [esp + 0x18]");                        // 0x00757de4    d8642418
    asm("{disp8} fld        dword ptr [esp + 0x28]");                        // 0x00757de8    d9442428
    asm("{disp8} mov        dword ptr [esp + 0x1c], edx");                   // 0x00757dec    8954241c
    asm("{disp8} fsub       dword ptr [esp + 0x1c]");                        // 0x00757df0    d864241c
    asm("{disp8} mov        dword ptr [esp + 0x20], eax");                   // 0x00757df4    89442420
    asm("{disp8} fld        dword ptr [esp + 0x2c]");                        // 0x00757df8    d944242c
    asm("{disp32} mov       ecx, dword ptr [_global]");                      // 0x00757dfc    8b0d203bcd00
    asm("{disp8} fsub       dword ptr [esp + 0x20]");                        // 0x00757e02    d8642420
    asm("{disp32} mov       edx, dword ptr [ecx + 0x000003b0]");             // 0x00757e06    8b91b0030000
    asm("fld                st(0)");                                         // 0x00757e0c    d9c0
    asm("push               ebx");                                           // 0x00757e0e    53
    asm("fmul               st, st(1)");                                     // 0x00757e0f    d8c9
    asm("push               ebx");                                           // 0x00757e11    53
    asm("fld                st(2)");                                         // 0x00757e12    d9c2
    asm("push               ebx");                                           // 0x00757e14    53
    asm("fmul               st, st(3)");                                     // 0x00757e15    d8cb
    asm("push               edx");                                           // 0x00757e17    52
    asm("push               ebx");                                           // 0x00757e18    53
    asm("faddp              st(1), st");                                     // 0x00757e19    dec1
    asm("fld                st(3)");                                         // 0x00757e1b    d9c3
    asm("{disp8} lea        eax, dword ptr [esp + 0x44]");                   // 0x00757e1d    8d442444
    asm("fmul               st, st(4)");                                     // 0x00757e21    d8cc
    asm("push               eax");                                           // 0x00757e23    50
    asm("push               ecx");                                           // 0x00757e24    51
    asm("faddp              st(1), st");                                     // 0x00757e25    dec1
    asm("fsqrt");                                                            // 0x00757e27    d9fa
    asm("fstp               st(3)");                                         // 0x00757e29    dddb
    asm("fstp               st(0)");                                         // 0x00757e2b    ddd8
    asm("fstp               st(0)");                                         // 0x00757e2d    ddd8
    asm("fstp               dword ptr [esp]");                               // 0x00757e2f    d91c24
    asm("push               edi");                                           // 0x00757e32    57
    asm("call               _jmp_addr_0x0042a4b0");                          // 0x00757e33    e87826cdff
    asm("{disp8} lea        ecx, dword ptr [esi + 0x14]");                   // 0x00757e38    8d4e14
    asm("push               ecx");                                           // 0x00757e3b    51
    asm("{disp8} lea        edx, dword ptr [esp + 0x10]");                   // 0x00757e3c    8d542410
    asm("push               edx");                                           // 0x00757e40    52
    asm("{disp32} lea       eax, dword ptr [esi + 0x000000c4]");             // 0x00757e41    8d86c4000000
    asm("push               eax");                                           // 0x00757e47    50
    asm("push               edi");                                           // 0x00757e48    57
    asm("call               ?GetNextDstPromemade@@YAXPAVCreche@@AAJPAUMapCoords@@ABU2@@Z");                          // 0x00757e49    e802fcffff
    asm("add                esp, 0x10");                                     // 0x00757e4e    83c410
    asm("push               0x71");                                          // 0x00757e51    6a71
    asm("{disp8} lea        ecx, dword ptr [esp + 0x10]");                   // 0x00757e53    8d4c2410
    asm("push               ecx");                                           // 0x00757e57    51
    asm("mov.s              ecx, esi");                                      // 0x00757e58    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00757e5a    e8a1b90000
    asm("pop                edi");                                           // 0x00757e5f    5f
    asm("pop                esi");                                           // 0x00757e60    5e
    asm("mov                eax, 0x00000001");                               // 0x00757e61    b801000000
    asm("pop                ebx");                                           // 0x00757e66    5b
    asm("add                esp, 0x38");                                     // 0x00757e67    83c438
    asm("ret");                                                              // 0x00757e6a    c3
    asm("_jmp_addr_0x00757e6b:");
    asm("fstp               st(0)");                                         // 0x00757e6b    ddd8
    asm("_jmp_addr_0x00757e6d:");
    asm("pop                edi");                                           // 0x00757e6d    5f
    asm("pop                esi");                                           // 0x00757e6e    5e
    asm("xor.s              eax, eax");                                      // 0x00757e6f    33c0
    asm("pop                ebx");                                           // 0x00757e71    5b
    asm("add                esp, 0x38");                                     // 0x00757e72    83c438
    asm("ret");                                                              // 0x00757e75    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall CheckChild__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757e80    56
    asm("mov.s              esi, ecx");                                      // 0x00757e81    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00757e83    8b06
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x00757e85    ff90f80a0000
    asm("test               eax, eax");                                      // 0x00757e8b    85c0
    asm("mov.s              ecx, esi");                                      // 0x00757e8d    8bce
    asm("{disp8} jne        _jmp_addr_0x00757e98");                          // 0x00757e8f    7507
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757e91    e8da830000
    asm("pop                esi");                                           // 0x00757e96    5e
    asm("ret");                                                              // 0x00757e97    c3
    asm("_jmp_addr_0x00757e98:");
    asm("call               ?IsMotherAlive@Villager@@QAE_NXZ");              // 0x00757e98    e8a3000000
    asm("test               eax, eax");                                      // 0x00757e9d    85c0
    asm("{disp8} jne        _jmp_addr_0x00757ea7");                          // 0x00757e9f    7506
    asm("{disp32} mov       dword ptr [esi + 0x00000100], eax");             // 0x00757ea1    898600010000
    asm("_jmp_addr_0x00757ea7:");
    asm("mov.s              ecx, esi");                                      // 0x00757ea7    8bce
    asm("call               ?IsHungry@Villager@@QAE_NXZ");                   // 0x00757ea9    e852a7ffff
    asm("test               eax, eax");                                      // 0x00757eae    85c0
    asm("{disp8} je         _jmp_addr_0x00757ebb");                          // 0x00757eb0    7409
    asm("mov.s              ecx, esi");                                      // 0x00757eb2    8bce
    asm("call               ?GoHome@Villager@@QAE_NXZ");                     // 0x00757eb4    e8b7830000
    asm("pop                esi");                                           // 0x00757eb9    5e
    asm("ret");                                                              // 0x00757eba    c3
    asm("_jmp_addr_0x00757ebb:");
    asm("xor.s              eax, eax");                                      // 0x00757ebb    33c0
    asm("pop                esi");                                           // 0x00757ebd    5e
    asm("ret");                                                              // 0x00757ebe    c3
    __builtin_unreachable();
}

bool32_t __fastcall ChildDecideWhatToDo__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757ec0    56
    asm("mov.s              esi, ecx");                                      // 0x00757ec1    8bf1
    asm("call               ?CheckChild@Villager@@QAEIXZ");                  // 0x00757ec3    e8b8ffffff
    asm("cmp                eax, 0x01");                                     // 0x00757ec8    83f801
    asm("{disp8} je         _jmp_addr_0x00757ef0");                          // 0x00757ecb    7423
    asm("mov.s              ecx, esi");                                      // 0x00757ecd    8bce
    asm("call               _jmp_addr_0x00757c80");                          // 0x00757ecf    e8acfdffff
    asm("cmp                eax, 0x01");                                     // 0x00757ed4    83f801
    asm("{disp8} je         _jmp_addr_0x00757ef0");                          // 0x00757ed7    7417
    asm("mov.s              ecx, esi");                                      // 0x00757ed9    8bce
    asm("call               ?ChildGotoCreche@Villager@@QAEIXZ");             // 0x00757edb    e810fbffff
    asm("test               eax, eax");                                      // 0x00757ee0    85c0
    asm("{disp8} jne        _jmp_addr_0x00757ef0");                          // 0x00757ee2    750c
    asm("mov                eax, dword ptr [esi]");                          // 0x00757ee4    8b06
    asm("push               0x72");                                          // 0x00757ee6    6a72
    asm("mov.s              ecx, esi");                                      // 0x00757ee8    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757eea    ff90e8080000
    asm("_jmp_addr_0x00757ef0:");
    asm("mov                eax, 0x00000001");                               // 0x00757ef0    b801000000
    asm("pop                esi");                                           // 0x00757ef5    5e
    asm("ret");                                                              // 0x00757ef6    c3
    __builtin_unreachable();
}

bool32_t __fastcall CheckChildActivity__8VillagerFv(struct Villager* this)
{
    asm("call               ?ChildDecideWhatToDo@Villager@@QAE_NXZ");        // 0x00757f00    e8bbffffff
    asm("mov                eax, 0x00000001");                               // 0x00757f05    b801000000
    asm("ret");                                                              // 0x00757f0a    c3
    __builtin_unreachable();
}

bool32_t __fastcall ChildBecomesAdult__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757f10    56
    asm("mov.s              esi, ecx");                                      // 0x00757f11    8bf1
    asm("{disp32} mov       dword ptr [esi + 0x00000100], 0x00000000");      // 0x00757f13    c7860001000000000000
    asm("call               ?CheckNeedNewAbode@Villager@@QAEIXZ");           // 0x00757f1d    e86e000000
    asm("mov                eax, dword ptr [esi]");                          // 0x00757f22    8b06
    asm("push               0x000000ea");                                    // 0x00757f24    68ea000000
    asm("mov.s              ecx, esi");                                      // 0x00757f29    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00757f2b    ff90e8080000
    asm("mov                eax, 0x00000001");                               // 0x00757f31    b801000000
    asm("pop                esi");                                           // 0x00757f36    5e
    asm("ret");                                                              // 0x00757f37    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall IsMotherAlive__8VillagerFv(struct Villager* this)
{
    asm("push               esi");                                           // 0x00757f40    56
    asm("push               edi");                                           // 0x00757f41    57
    asm("mov.s              edi, ecx");                                      // 0x00757f42    8bf9
    asm("{disp32} mov       esi, dword ptr [edi + 0x00000100]");             // 0x00757f44    8bb700010000
    asm("test               esi, esi");                                      // 0x00757f4a    85f6
    asm("{disp8} je         _jmp_addr_0x00757f89");                          // 0x00757f4c    743b
    asm("mov                eax, dword ptr [esi]");                          // 0x00757f4e    8b06
    asm("mov.s              ecx, esi");                                      // 0x00757f50    8bce
    asm("call               dword ptr [eax + 0x2c]");                        // 0x00757f52    ff502c
    asm("cmp                eax, 0x01");                                     // 0x00757f55    83f801
    asm("{disp8} jne        _jmp_addr_0x00757f89");                          // 0x00757f58    752f
    asm("{disp8} mov        ecx, dword ptr [esi + 0x28]");                   // 0x00757f5a    8b4e28
    asm("{disp8} mov        edx, dword ptr [edi + 0x28]");                   // 0x00757f5d    8b5728
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000001f4]");             // 0x00757f60    8b81f4010000
    asm("cmp                eax, dword ptr [edx + 0x000001f4]");             // 0x00757f66    3b82f4010000
    asm("{disp8} jne        _jmp_addr_0x00757f89");                          // 0x00757f6c    751b
    asm("mov.s              ecx, esi");                                      // 0x00757f6e    8bce
    asm("call               ?IsAMother@Villager@@QAE_NXZ");                  // 0x00757f70    e89b91ffff
    asm("cmp                eax, 0x01");                                     // 0x00757f75    83f801
    asm("{disp8} jne        _jmp_addr_0x00757f89");                          // 0x00757f78    750f
    asm("{disp32} mov       cl, byte ptr [esi + 0x000000b4]");               // 0x00757f7a    8a8eb4000000
    asm("and.s              cl, al");                                        // 0x00757f80    22c8
    asm("cmp.s              cl, al");                                        // 0x00757f82    3ac8
    asm("{disp8} je         _jmp_addr_0x00757f89");                          // 0x00757f84    7403
    asm("pop                edi");                                           // 0x00757f86    5f
    asm("pop                esi");                                           // 0x00757f87    5e
    asm("ret");                                                              // 0x00757f88    c3
    asm("_jmp_addr_0x00757f89:");
    asm("pop                edi");                                           // 0x00757f89    5f
    asm("xor.s              eax, eax");                                      // 0x00757f8a    33c0
    asm("pop                esi");                                           // 0x00757f8c    5e
    asm("ret");                                                              // 0x00757f8d    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall CheckNeedNewAbode__8VillagerFv(struct Villager* this)
{
    asm("push               ecx");                                           // 0x00757f90    51
    asm("push               esi");                                           // 0x00757f91    56
    asm("mov.s              esi, ecx");                                      // 0x00757f92    8bf1
    asm("mov                eax, dword ptr [esi]");                          // 0x00757f94    8b06
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x00757f96    ff90f80a0000
    asm("test               eax, eax");                                      // 0x00757f9c    85c0
    asm("{disp32} jne       _jmp_addr_0x0075806f");                          // 0x00757f9e    0f85cb000000
    asm("mov.s              ecx, esi");                                      // 0x00757fa4    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fa6    e8b5a1ffff
    asm("test               eax, eax");                                      // 0x00757fab    85c0
    asm("{disp8} je         _jmp_addr_0x00757fc5");                          // 0x00757fad    7416
    asm("mov.s              ecx, esi");                                      // 0x00757faf    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fb1    e8aaa1ffff
    asm("mov.s              ecx, eax");                                      // 0x00757fb6    8bc8
    asm("call               ?IsTooCrowded@Abode@@QAE_NXZ");                  // 0x00757fb8    e803c7caff
    asm("test               eax, eax");                                      // 0x00757fbd    85c0
    asm("{disp32} je        _jmp_addr_0x0075806f");                          // 0x00757fbf    0f84aa000000
    asm("_jmp_addr_0x00757fc5:");
    asm("mov                edx, dword ptr [esi]");                          // 0x00757fc5    8b16
    asm("mov.s              ecx, esi");                                      // 0x00757fc7    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00757fc9    ff5248
    asm("test               eax, eax");                                      // 0x00757fcc    85c0
    asm("{disp32} je        _jmp_addr_0x00758060");                          // 0x00757fce    0f848c000000
    asm("mov.s              ecx, esi");                                      // 0x00757fd4    8bce
    asm("{disp8} mov        dword ptr [esp + 0x04], 0x00000000");            // 0x00757fd6    c744240400000000
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fde    e87da1ffff
    asm("test               eax, eax");                                      // 0x00757fe3    85c0
    asm("{disp8} je         _jmp_addr_0x00757ffa");                          // 0x00757fe5    7413
    asm("push               esi");                                           // 0x00757fe7    56
    asm("mov.s              ecx, esi");                                      // 0x00757fe8    8bce
    asm("call               ?GetAbode@Villager@@QAEPAVAbode@@XZ");           // 0x00757fea    e871a1ffff
    asm("mov.s              ecx, eax");                                      // 0x00757fef    8bc8
    asm("call               ?CalculateScoreForAddingVillagerToAbode@Abode@@QAEMPAVVillager@@@Z");  // 0x00757ff1    e84acbcaff
    asm("{disp8} fstp       dword ptr [esp + 0x04]");                        // 0x00757ff6    d95c2404
    asm("_jmp_addr_0x00757ffa:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00757ffa    8b442404
    asm("mov                edx, dword ptr [esi]");                          // 0x00757ffe    8b16
    asm("push               eax");                                           // 0x00758000    50
    asm("push               esi");                                           // 0x00758001    56
    asm("mov.s              ecx, esi");                                      // 0x00758002    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758004    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758007    8bc8
    asm("call               ?FindAbodeWithSpaceInTown@Town@@QAEPAVAbode@@PAVVillager@@M@Z");                          // 0x00758009    e86233feff
    asm("test               eax, eax");                                      // 0x0075800e    85c0
    asm("{disp8} je         _jmp_addr_0x0075803e");                          // 0x00758010    742c
    asm("push               eax");                                           // 0x00758012    50
    asm("mov.s              ecx, esi");                                      // 0x00758013    8bce
    asm("call               ?MoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x00758015    e866000000
    asm("cmp                eax, 0x01");                                     // 0x0075801a    83f801
    asm("{disp8} jne        _jmp_addr_0x0075803e");                          // 0x0075801d    751f
    asm("mov.s              ecx, esi");                                      // 0x0075801f    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x00758021    e86aa2ffff
    asm("test               eax, eax");                                      // 0x00758026    85c0
    asm("{disp8} je         _jmp_addr_0x00758036");                          // 0x00758028    740c
    asm("mov                eax, dword ptr [esi]");                          // 0x0075802a    8b06
    asm("push               0x24");                                          // 0x0075802c    6a24
    asm("mov.s              ecx, esi");                                      // 0x0075802e    8bce
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00758030    ff90e8080000
    asm("_jmp_addr_0x00758036:");
    asm("mov                eax, 0x00000001");                               // 0x00758036    b801000000
    asm("pop                esi");                                           // 0x0075803b    5e
    asm("pop                ecx");                                           // 0x0075803c    59
    asm("ret");                                                              // 0x0075803d    c3
    asm("_jmp_addr_0x0075803e:");
    asm("mov                edx, dword ptr [esi]");                          // 0x0075803e    8b16
    asm("push               esi");                                           // 0x00758040    56
    asm("mov.s              ecx, esi");                                      // 0x00758041    8bce
    asm("call               dword ptr [edx + 0x48]");                        // 0x00758043    ff5248
    asm("mov.s              ecx, eax");                                      // 0x00758046    8bc8
    asm("call               ?IsVillagerInHomelessList@Town@@QAE_NPAVVillager@@@Z");                          // 0x00758048    e83335feff
    asm("test               eax, eax");                                      // 0x0075804d    85c0
    asm("{disp8} jne        _jmp_addr_0x00758058");                          // 0x0075804f    7507
    asm("mov.s              ecx, esi");                                      // 0x00758051    8bce
    asm("call               ?MakeHomeless@Villager@@QAE_NXZ");               // 0x00758053    e8c8910000
    asm("_jmp_addr_0x00758058:");
    asm("mov                eax, 0x00000001");                               // 0x00758058    b801000000
    asm("pop                esi");                                           // 0x0075805d    5e
    asm("pop                ecx");                                           // 0x0075805e    59
    asm("ret");                                                              // 0x0075805f    c3
    asm("_jmp_addr_0x00758060:");
    asm("mov.s              ecx, esi");                                      // 0x00758060    8bce
    asm("call               ?VagrantStart@Villager@@QAEIXZ");                          // 0x00758062    e869280100
    asm("mov                eax, 0x00000001");                               // 0x00758067    b801000000
    asm("pop                esi");                                           // 0x0075806c    5e
    asm("pop                ecx");                                           // 0x0075806d    59
    asm("ret");                                                              // 0x0075806e    c3
    asm("_jmp_addr_0x0075806f:");
    asm("xor.s              eax, eax");                                      // 0x0075806f    33c0
    asm("pop                esi");                                           // 0x00758071    5e
    asm("pop                ecx");                                           // 0x00758072    59
    asm("ret");                                                              // 0x00758073    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall MoveVillagerToAbode__8VillagerFP5Abode(struct Villager* this, const void* edx, struct Abode* abode)
{
    asm("push               esi");                                           // 0x00758080    56
    asm("push               edi");                                           // 0x00758081    57
    asm("mov.s              edi, ecx");                                      // 0x00758082    8bf9
    asm("mov                eax, dword ptr [edi]");                          // 0x00758084    8b07
    asm("call               dword ptr [eax + 0xaf8]");                       // 0x00758086    ff90f80a0000
    asm("test               eax, eax");                                      // 0x0075808c    85c0
    asm("{disp8} mov        esi, dword ptr [esp + 0x0c]");                   // 0x0075808e    8b74240c
    asm("mov.s              ecx, esi");                                      // 0x00758092    8bce
    asm("{disp8} je         _jmp_addr_0x007580a6");                          // 0x00758094    7410
    asm("call               ?GetRoomLeftForChildren@Abode@@QAEHXZ");         // 0x00758096    e8e5c5caff
    asm("test               eax, eax");                                      // 0x0075809b    85c0
    asm("{disp8} jg         _jmp_addr_0x007580b6");                          // 0x0075809d    7f17
    asm("pop                edi");                                           // 0x0075809f    5f
    asm("xor.s              eax, eax");                                      // 0x007580a0    33c0
    asm("pop                esi");                                           // 0x007580a2    5e
    asm("ret                0x0004");                                        // 0x007580a3    c20400
    asm("_jmp_addr_0x007580a6:");
    asm("call               ?GetRoomLeftForAdults@Abode@@QAEHXZ");           // 0x007580a6    e8b5c5caff
    asm("test               eax, eax");                                      // 0x007580ab    85c0
    asm("{disp8} jg         _jmp_addr_0x007580b6");                          // 0x007580ad    7f07
    asm("pop                edi");                                           // 0x007580af    5f
    asm("xor.s              eax, eax");                                      // 0x007580b0    33c0
    asm("pop                esi");                                           // 0x007580b2    5e
    asm("ret                0x0004");                                        // 0x007580b3    c20400
    asm("_jmp_addr_0x007580b6:");
    asm("push               esi");                                           // 0x007580b6    56
    asm("mov.s              ecx, edi");                                      // 0x007580b7    8bcf
    asm("call               ?ForceMoveVillagerToAbode@Villager@@QAEXPAVAbode@@@Z");  // 0x007580b9    e882e1ffff
    asm("pop                edi");                                           // 0x007580be    5f
    asm("mov                eax, 0x00000001");                               // 0x007580bf    b801000000
    asm("pop                esi");                                           // 0x007580c4    5e
    asm("ret                0x0004");                                        // 0x007580c5    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
uint32_t __fastcall MakeChildOrphaned__8VillagerFP8Villager(struct Villager* this, const void* edx, struct Villager* param_1)
{
    asm("push               esi");                                           // 0x007580d0    56
    asm("mov.s              esi, ecx");                                      // 0x007580d1    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x00000100]");             // 0x007580d3    8b8600010000
    asm("cmp                eax, dword ptr [esp + 0x08]");                   // 0x007580d9    3b442408
    asm("{disp8} jne        _jmp_addr_0x0075810c");                          // 0x007580dd    752d
    asm("mov.s              ecx, esi");                                      // 0x007580df    8bce
    asm("call               ?IsVillagerAvailable@Villager@@QAE_NXZ");        // 0x007580e1    e8aaa1ffff
    asm("test               eax, eax");                                      // 0x007580e6    85c0
    asm("{disp8} je         _jmp_addr_0x007580f9");                          // 0x007580e8    740f
    asm("mov                edx, dword ptr [esi]");                          // 0x007580ea    8b16
    asm("push               0x00000083");                                    // 0x007580ec    6883000000
    asm("mov.s              ecx, esi");                                      // 0x007580f1    8bce
    asm("call               dword ptr [edx + 0x8e8]");                       // 0x007580f3    ff92e8080000
    asm("_jmp_addr_0x007580f9:");
    asm("{disp32} mov       dword ptr [esi + 0x00000100], 0x00000000");      // 0x007580f9    c7860001000000000000
    asm("mov                eax, 0x00000001");                               // 0x00758103    b801000000
    asm("pop                esi");                                           // 0x00758108    5e
    asm("ret                0x0004");                                        // 0x00758109    c20400
    asm("_jmp_addr_0x0075810c:");
    asm("xor.s              eax, eax");                                      // 0x0075810c    33c0
    asm("pop                esi");                                           // 0x0075810e    5e
    asm("ret                0x0004");                                        // 0x0075810f    c20400
    __builtin_unreachable();
}
