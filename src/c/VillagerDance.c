#include "Villager.h"

const float villager_dance_num_days_in_year_0x0099a950 = 365.25f;
const float villager_dance_seconds_in_day_0x0099a954 = 86400.0f;

uint32_t villager_dance_uint_0x00db9df4;
float villager_dance_seconds_in_year_0x00db9df8;

void __cdecl globl_ct_0x00759810(void)
{
    asm("{disp32} mov       cl, byte ptr [_DAT_00fac934]");                  // 0x00759810    8a0d34c9fa00
    asm("mov                al, 0x01");                                      // 0x00759816    b001
    asm("test               al, cl");                                        // 0x00759818    84c8
    asm("{disp8} jne        _jmp_addr_0x00759824");                          // 0x0075981a    7508
    asm("or.s               cl, al");                                        // 0x0075981c    0ac8
    asm("{disp32} mov       byte ptr [_DAT_00fac934], cl");                  // 0x0075981e    880d34c9fa00
    asm("_jmp_addr_0x00759824:");
    asm("{disp32} jmp       _crt_global_destruction_register_0x00759830");   // 0x00759824    e907000000
    __builtin_unreachable();
}

void __cdecl crt_global_destruction_register_0x00759830(void)
{
    asm("push               0x00407870");                                    // 0x00759830    6870784000
    asm("call               _atexit");                                       // 0x00759835    e857bf0600
    asm("pop                ecx");                                           // 0x0075983a    59
    asm("ret");                                                              // 0x0075983b    c3
    __builtin_unreachable();
}

void __cdecl globl_ct_0x00759840(void)
{
    asm("{disp32} jmp       _FUN_00759850__8VillagerFv");                    // 0x00759840    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00759850__8VillagerFv(void)
{
    asm("{disp32} fld  dword ptr [_villager_dance_seconds_in_day_0x0099a954]");   // 0x00759850    d90554a99900
    asm("{disp32} fmul dword ptr [_villager_dance_num_days_in_year_0x0099a950]"); // 0x00759856    d80d50a99900
    asm("{disp32} fstp dword ptr [_villager_dance_seconds_in_year_0x00db9df8]");  // 0x0075985c    d91df89ddb00
}

void __cdecl globl_ct_0x00759870(void)
{
    asm("{disp32} jmp       _FUN_00759880__8VillagerFv");                    // 0x00759870    e90b000000
    __builtin_unreachable();
}

void __cdecl FUN_00759880__8VillagerFv(void)
{
    asm("{disp32} mov dword ptr [_villager_dance_uint_0x00db9df4], 0xffffffff"); // 0x00759880    c705f49ddb00ffffffff
}

__attribute__((XOR32rr_REV))
struct Villager* __fastcall FindImmediateNeighbour__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x14");                                     // 0x00759890    83ec14
    asm("push               ebx");                                           // 0x00759893    53
    asm("push               esi");                                           // 0x00759894    56
    asm("mov.s              esi, ecx");                                      // 0x00759895    8bf1
    asm("{disp8} lea        eax, dword ptr [esi + 0x14]");                   // 0x00759897    8d4614
    asm("mov                ecx, dword ptr [eax]");                          // 0x0075989a    8b08
    asm("{disp8} mov        edx, dword ptr [eax + 0x04]");                   // 0x0075989c    8b5004
    asm("{disp8} mov        eax, dword ptr [eax + 0x08]");                   // 0x0075989f    8b4008
    asm("push               edi");                                           // 0x007598a2    57
    asm("{disp8} mov        dword ptr [esp + 0x14], ecx");                   // 0x007598a3    894c2414
    asm("{disp8} mov        dword ptr [esp + 0x18], edx");                   // 0x007598a7    89542418
    asm("{disp8} mov        dword ptr [esp + 0x1c], eax");                   // 0x007598ab    8944241c
    asm("mov                edi, 0x00000031");                               // 0x007598af    bf31000000
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000001");            // 0x007598b4    c744241001000000
    asm("{disp8} mov        dword ptr [esp + 0x0c], 0x00000001");            // 0x007598bc    c744240c01000000
    asm("mov                ebx, 0x00000002");                               // 0x007598c4    bb02000000
    asm("_jmp_addr_0x007598c9:");
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007598c9    8d4c2414
    asm("call               ?InBounds@MapCoords@@QBEIXZ");                   // 0x007598cd    e8eea9eaff
    asm("cmp                eax, 0x01");                                     // 0x007598d2    83f801
    asm("{disp8} jne        _jmp_addr_0x007598f7");                          // 0x007598d5    7520
    asm("{disp8} lea        ecx, dword ptr [esp + 0x14]");                   // 0x007598d7    8d4c2414
    asm("call               ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ");                          // 0x007598db    e8b09beaff
    asm("test               eax, eax");                                      // 0x007598e0    85c0
    asm("{disp8} je         _jmp_addr_0x007598f7");                          // 0x007598e2    7413
    asm("_jmp_addr_0x007598e4:");
    asm("{disp8} mov        ecx, dword ptr [eax + 0x28]");                   // 0x007598e4    8b4828
    asm("cmp                dword ptr [ecx + 0x10], ebx");                   // 0x007598e7    395910
    asm("{disp8} jne        _jmp_addr_0x007598f0");                          // 0x007598ea    7504
    asm("cmp.s              eax, esi");                                      // 0x007598ec    3bc6
    asm("{disp8} jne        _jmp_addr_0x0075991a");                          // 0x007598ee    752a
    asm("_jmp_addr_0x007598f0:");
    asm("{disp8} mov        eax, dword ptr [eax + 0x20]");                   // 0x007598f0    8b4020
    asm("test               eax, eax");                                      // 0x007598f3    85c0
    asm("{disp8} jne        _jmp_addr_0x007598e4");                          // 0x007598f5    75ed
    asm("_jmp_addr_0x007598f7:");
    asm("{disp8} lea        edx, dword ptr [esp + 0x0c]");                   // 0x007598f7    8d54240c
    asm("push               edx");                                           // 0x007598fb    52
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x007598fc    8d442414
    asm("push               eax");                                           // 0x00759900    50
    asm("dec                edi");                                           // 0x00759901    4f
    asm("call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");        // 0x00759902    e8d93effff
    asm("add                esp, 0x08");                                     // 0x00759907    83c408
    asm("push               eax");                                           // 0x0075990a    50
    asm("{disp8} lea        ecx, dword ptr [esp + 0x18]");                   // 0x0075990b    8d4c2418
    asm("call               @__apl__9MapCoordsFRC9JustMapXZ@12");            // 0x0075990f    e85cbbeaff
    asm("test               edi, edi");                                      // 0x00759914    85ff
    asm("{disp8} jne        _jmp_addr_0x007598c9");                          // 0x00759916    75b1
    asm("xor.s              eax, eax");                                      // 0x00759918    33c0
    asm("_jmp_addr_0x0075991a:");
    asm("pop                edi");                                           // 0x0075991a    5f
    asm("pop                esi");                                           // 0x0075991b    5e
    asm("pop                ebx");                                           // 0x0075991c    5b
    asm("add                esp, 0x14");                                     // 0x0075991d    83c414
    asm("ret");                                                              // 0x00759920    c3
    __builtin_unreachable();
}

bool32_t __fastcall DanceForEditingPurposes__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000d8]");             // 0x00759930    8b81d8000000
    asm("{disp8} mov        edx, dword ptr [eax + 0x5c]");                   // 0x00759936    8b505c
    asm("{disp8} mov        eax, dword ptr [eax + 0x18]");                   // 0x00759939    8b4018
    asm("push               edx");                                           // 0x0075993c    52
    asm("push               0x00000099");                                    // 0x0075993d    6899000000
    asm("add                eax, 0x14");                                     // 0x00759942    83c014
    asm("push               eax");                                           // 0x00759945    50
    asm("call               ?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");  // 0x00759946    e8a560e9ff
    asm("mov                eax, 0x00000001");                               // 0x0075994b    b801000000
    asm("ret");                                                              // 0x00759950    c3
    __builtin_unreachable();
}

bool32_t __fastcall DanceButNotWorship__8VillagerFv(struct Villager* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000000d8]");             // 0x00759960    8b81d8000000
    asm("{disp8} mov        edx, dword ptr [eax + 0x5c]");                   // 0x00759966    8b505c
    asm("{disp8} mov        eax, dword ptr [eax + 0x18]");                   // 0x00759969    8b4018
    asm("push               edx");                                           // 0x0075996c    52
    asm("push               0x000000c1");                                    // 0x0075996d    68c1000000
    asm("add                eax, 0x14");                                     // 0x00759972    83c014
    asm("push               eax");                                           // 0x00759975    50
    asm("call               ?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");  // 0x00759976    e87560e9ff
    asm("mov                eax, 0x00000001");                               // 0x0075997b    b801000000
    asm("ret");                                                              // 0x00759980    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall MoveToDancePos__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x0c");                                     // 0x00759990    83ec0c
    asm("push               esi");                                           // 0x00759993    56
    asm("mov.s              esi, ecx");                                      // 0x00759994    8bf1
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d8]");             // 0x00759996    8b8ed8000000
    asm("xor.s              eax, eax");                                      // 0x0075999c    33c0
    asm("cmp.s              ecx, eax");                                      // 0x0075999e    3bc8
    asm("{disp8} jne        _jmp_addr_0x007599a7");                          // 0x007599a0    7505
    asm("pop                esi");                                           // 0x007599a2    5e
    asm("add                esp, 0x0c");                                     // 0x007599a3    83c40c
    asm("ret");                                                              // 0x007599a6    c3
    asm("_jmp_addr_0x007599a7:");
    asm("cmp                dword ptr [ecx + 0x7c], eax");                   // 0x007599a7    39417c
    asm("{disp8} je         _jmp_addr_0x007599e8");                          // 0x007599aa    743c
    asm("{disp8} mov        dword ptr [esp + 0x04], eax");                   // 0x007599ac    89442404
    asm("{disp8} mov        dword ptr [esp + 0x08], eax");                   // 0x007599b0    89442408
    asm("{disp8} lea        eax, dword ptr [esp + 0x04]");                   // 0x007599b4    8d442404
    asm("push               eax");                                           // 0x007599b8    50
    asm("{disp8} mov        dword ptr [esp + 0x10], 0x00000000");            // 0x007599b9    c744241000000000
    asm("call               _jmp_addr_0x0050d5f0");                          // 0x007599c1    e82a3cdbff
    asm("push               eax");                                           // 0x007599c6    50
    asm("mov.s              ecx, esi");                                      // 0x007599c7    8bce
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                          // 0x007599c9    e8f25fe9ff
    asm("{disp8} mov        edx, dword ptr [esp + 0x04]");                   // 0x007599ce    8b542404
    asm("{disp8} mov        eax, dword ptr [esp + 0x08]");                   // 0x007599d2    8b442408
    asm("{disp32} lea       ecx, dword ptr [esi + 0x00000080]");             // 0x007599d6    8d8e80000000
    asm("mov                dword ptr [ecx], edx");                          // 0x007599dc    8911
    asm("{disp8} mov        edx, dword ptr [esp + 0x0c]");                   // 0x007599de    8b54240c
    asm("{disp8} mov        dword ptr [ecx + 0x04], eax");                   // 0x007599e2    894104
    asm("{disp8} mov        dword ptr [ecx + 0x08], edx");                   // 0x007599e5    895108
    asm("_jmp_addr_0x007599e8:");
    asm("mov.s              ecx, esi");                                      // 0x007599e8    8bce
    asm("call               ?MoveToPos@Living@@QAEHXZ");                     // 0x007599ea    e88128e9ff
    asm("pop                esi");                                           // 0x007599ef    5e
    asm("add                esp, 0x0c");                                     // 0x007599f0    83c40c
    asm("ret");                                                              // 0x007599f3    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ControlledByCreature__8VillagerFv(struct Villager* this)
{
    asm("sub                esp, 0x18");                                     // 0x00759a00    83ec18
    asm("push               esi");                                           // 0x00759a03    56
    asm("mov.s              esi, ecx");                                      // 0x00759a04    8bf1
    asm("{disp32} mov       eax, dword ptr [esi + 0x000000d8]");             // 0x00759a06    8b86d8000000
    asm("xor.s              ecx, ecx");                                      // 0x00759a0c    33c9
    asm("cmp.s              eax, ecx");                                      // 0x00759a0e    3bc1
    asm("push               edi");                                           // 0x00759a10    57
    asm("{disp8} je         _jmp_addr_0x00759a7c");                          // 0x00759a11    7469
    asm("{disp8} mov        edx, dword ptr [eax + 0x14]");                   // 0x00759a13    8b5014
    asm("cmp.s              edx, ecx");                                      // 0x00759a16    3bd1
    asm("{disp8} je         _jmp_addr_0x00759a7c");                          // 0x00759a18    7462
    asm("{disp8} mov        dword ptr [esp + 0x08], ecx");                   // 0x00759a1a    894c2408
    asm("{disp8} mov        dword ptr [esp + 0x0c], ecx");                   // 0x00759a1e    894c240c
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00759a22    894c2410
    asm("{disp8} lea        ecx, dword ptr [esp + 0x08]");                   // 0x00759a26    8d4c2408
    asm("push               ecx");                                           // 0x00759a2a    51
    asm("add                edx, 0x14");                                     // 0x00759a2b    83c214
    asm("push               edx");                                           // 0x00759a2e    52
    asm("mov.s              ecx, esi");                                      // 0x00759a2f    8bce
    asm("call               ?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");                          // 0x00759a31    e88a5fe9ff
    asm("{disp8} lea        eax, dword ptr [esp + 0x08]");                   // 0x00759a36    8d442408
    asm("{disp8} lea        edi, dword ptr [esi + 0x14]");                   // 0x00759a3a    8d7e14
    asm("push               eax");                                           // 0x00759a3d    50
    asm("mov.s              ecx, edi");                                      // 0x00759a3e    8bcf
    asm("call               ?__ne@MapCoords@@QBE_NABV1@@Z");                 // 0x00759a40    e86bbceaff
    asm("test               eax, eax");                                      // 0x00759a45    85c0
    asm("{disp8} je         _jmp_addr_0x00759a7c");                          // 0x00759a47    7433
    asm("{disp32} mov       ecx, dword ptr [esi + 0x000000d8]");             // 0x00759a49    8b8ed8000000
    asm("{disp8} mov        ecx, dword ptr [ecx + 0x14]");                   // 0x00759a4f    8b4914
    asm("mov                edx, dword ptr [ecx]");                          // 0x00759a52    8b11
    asm("{disp8} lea        eax, dword ptr [esp + 0x14]");                   // 0x00759a54    8d442414
    asm("push               eax");                                           // 0x00759a58    50
    asm("call               dword ptr [edx + 0x104]");                       // 0x00759a59    ff9204010000
    asm("push               eax");                                           // 0x00759a5f    50
    asm("mov.s              ecx, edi");                                      // 0x00759a60    8bcf
    asm("call               @__eq__9MapCoordsCFRC9MapCoords@12");            // 0x00759a62    e8f9bbeaff
    asm("test               eax, eax");                                      // 0x00759a67    85c0
    asm("{disp8} je         _jmp_addr_0x00759a7c");                          // 0x00759a69    7411
    asm("push               0x000000cc");                                    // 0x00759a6b    68cc000000
    asm("{disp8} lea        ecx, dword ptr [esp + 0x0c]");                   // 0x00759a70    8d4c240c
    asm("push               ecx");                                           // 0x00759a74    51
    asm("mov.s              ecx, esi");                                      // 0x00759a75    8bce
    asm("call               ?SetupMoveToPos@Villager@@QAE_NABUMapCoords@@W4VILLAGER_STATES@@@Z");                          // 0x00759a77    e8849d0000
    asm("_jmp_addr_0x00759a7c:");
    asm("pop                edi");                                           // 0x00759a7c    5f
    asm("mov                eax, 0x00000001");                               // 0x00759a7d    b801000000
    asm("pop                esi");                                           // 0x00759a82    5e
    asm("add                esp, 0x18");                                     // 0x00759a83    83c418
    asm("ret");                                                              // 0x00759a86    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
bool32_t __fastcall ExitControlledByCreature__8VillagerFUc(struct Villager* this, const void* edx, unsigned char param_1)
{
    asm("push               ebx");                                           // 0x00759a90    53
    asm("{disp8} mov        ebx, dword ptr [esp + 0x08]");                   // 0x00759a91    8b5c2408
    asm("cmp                bl, 0x18");                                      // 0x00759a95    80fb18
    asm("push               ebp");                                           // 0x00759a98    55
    asm("mov.s              ebp, ecx");                                      // 0x00759a99    8be9
    asm("{disp8} je         _jmp_addr_0x00759ada");                          // 0x00759a9b    743d
    asm("cmp                bl, 0x0a");                                      // 0x00759a9d    80fb0a
    asm("{disp8} je         _jmp_addr_0x00759ada");                          // 0x00759aa0    7438
    asm("{disp8} mov        eax, dword ptr [ebp + 0x00]");                   // 0x00759aa2    8b4500
    asm("mov.s              ecx, ebx");                                      // 0x00759aa5    8bcb
    asm("and                ecx, 0x000000ff");                               // 0x00759aa7    81e1ff000000
    asm("push               ecx");                                           // 0x00759aad    51
    asm("mov.s              ecx, ebp");                                      // 0x00759aae    8bcd
    asm("call               dword ptr [eax + 0x970]");                       // 0x00759ab0    ff9070090000
    asm("test               eax, eax");                                      // 0x00759ab6    85c0
    asm("{disp8} jne        _jmp_addr_0x00759ada");                          // 0x00759ab8    7520
    asm("cmp                bl, -0x34");                                     // 0x00759aba    80fbcc
    asm("{disp32} je        _jmp_addr_0x00759b71");                          // 0x00759abd    0f84ae000000
    asm("cmp                bl, 0x5a");                                      // 0x00759ac3    80fb5a
    asm("{disp32} je        _jmp_addr_0x00759b71");                          // 0x00759ac6    0f84a5000000
    asm("cmp                bl, -0x5d");                                     // 0x00759acc    80fba3
    asm("{disp32} je        _jmp_addr_0x00759b71");                          // 0x00759acf    0f849c000000
    asm("pop                ebp");                                           // 0x00759ad5    5d
    asm("pop                ebx");                                           // 0x00759ad6    5b
    asm("ret                0x0004");                                        // 0x00759ad7    c20400
    asm("_jmp_addr_0x00759ada:");
    asm("{disp32} mov       ecx, dword ptr [_CreatureList]");                // 0x00759ada    8b0df8fcc500
    asm("test               ecx, ecx");                                      // 0x00759ae0    85c9
    asm("{disp32} je        _jmp_addr_0x00759b68");                          // 0x00759ae2    0f8480000000
    asm("_jmp_addr_0x00759ae8:");
    asm("{disp8} mov        edx, dword ptr [ecx + 0x04]");                   // 0x00759ae8    8b5104
    asm("{disp32} mov       eax, dword ptr [edx + 0x00001090]");             // 0x00759aeb    8b8290100000
    asm("test               eax, eax");                                      // 0x00759af1    85c0
    asm("{disp8} je         _jmp_addr_0x00759b00");                          // 0x00759af3    740b
    asm("_jmp_addr_0x00759af5:");
    asm("cmp                dword ptr [eax + 0x04], ebp");                   // 0x00759af5    396804
    asm("{disp8} je         _jmp_addr_0x00759b08");                          // 0x00759af8    740e
    asm("mov                eax, dword ptr [eax]");                          // 0x00759afa    8b00
    asm("test               eax, eax");                                      // 0x00759afc    85c0
    asm("{disp8} jne        _jmp_addr_0x00759af5");                          // 0x00759afe    75f5
    asm("_jmp_addr_0x00759b00:");
    asm("mov                ecx, dword ptr [ecx]");                          // 0x00759b00    8b09
    asm("test               ecx, ecx");                                      // 0x00759b02    85c9
    asm("{disp8} je         _jmp_addr_0x00759b68");                          // 0x00759b04    7462
    asm("{disp8} jmp        _jmp_addr_0x00759ae8");                          // 0x00759b06    ebe0
    asm("_jmp_addr_0x00759b08:");
    asm("push               esi");                                           // 0x00759b08    56
    asm("{disp8} mov        esi, dword ptr [ecx + 0x04]");                   // 0x00759b09    8b7104
    asm("{disp32} mov       eax, dword ptr [esi + 0x00001090]");             // 0x00759b0c    8b8690100000
    asm("add                esi, 0x00001090");                               // 0x00759b12    81c690100000
    asm("xor.s              ebx, ebx");                                      // 0x00759b18    33db
    asm("test               eax, eax");                                      // 0x00759b1a    85c0
    asm("{disp8} je         _jmp_addr_0x00759b4b");                          // 0x00759b1c    742d
    asm("push               edi");                                           // 0x00759b1e    57
    asm("_jmp_addr_0x00759b1f:");
    asm("cmp                dword ptr [eax + 0x04], ebp");                   // 0x00759b1f    396804
    asm("mov                edi, dword ptr [eax]");                          // 0x00759b22    8b38
    asm("{disp8} jne        _jmp_addr_0x00759b42");                          // 0x00759b24    751c
    asm("cmp                eax, dword ptr [esi]");                          // 0x00759b26    3b06
    asm("{disp8} jne        _jmp_addr_0x00759b2e");                          // 0x00759b28    7504
    asm("mov                dword ptr [esi], edi");                          // 0x00759b2a    893e
    asm("{disp8} jmp        _jmp_addr_0x00759b30");                          // 0x00759b2c    eb02
    asm("_jmp_addr_0x00759b2e:");
    asm("mov                dword ptr [ebx], edi");                          // 0x00759b2e    893b
    asm("_jmp_addr_0x00759b30:");
    asm("{disp8} mov        edx, dword ptr [esi + 0x04]");                   // 0x00759b30    8b5604
    asm("dec                edx");                                           // 0x00759b33    4a
    asm("push               eax");                                           // 0x00759b34    50
    asm("{disp8} mov        dword ptr [esi + 0x04], edx");                   // 0x00759b35    895604
    asm("call               ??3@YAXPAX@Z");                                  // 0x00759b38    e85b530500
    asm("add                esp, 0x04");                                     // 0x00759b3d    83c404
    asm("{disp8} jmp        _jmp_addr_0x00759b44");                          // 0x00759b40    eb02
    asm("_jmp_addr_0x00759b42:");
    asm("mov.s              ebx, eax");                                      // 0x00759b42    8bd8
    asm("_jmp_addr_0x00759b44:");
    asm("test               edi, edi");                                      // 0x00759b44    85ff
    asm("mov.s              eax, edi");                                      // 0x00759b46    8bc7
    asm("{disp8} jne        _jmp_addr_0x00759b1f");                          // 0x00759b48    75d5
    asm("pop                edi");                                           // 0x00759b4a    5f
    asm("_jmp_addr_0x00759b4b:");
    asm("{disp8} mov        eax, dword ptr [ebp + 0x00]");                   // 0x00759b4b    8b4500
    asm("mov.s              ecx, ebp");                                      // 0x00759b4e    8bcd
    asm("call               dword ptr [eax + 0x978]");                       // 0x00759b50    ff9078090000
    asm("test               eax, eax");                                      // 0x00759b56    85c0
    asm("pop                esi");                                           // 0x00759b58    5e
    asm("{disp8} je         _jmp_addr_0x00759b68");                          // 0x00759b59    740d
    asm("{disp8} mov        edx, dword ptr [ebp + 0x00]");                   // 0x00759b5b    8b5500
    asm("push               0x1");                                           // 0x00759b5e    6a01
    asm("mov.s              ecx, ebp");                                      // 0x00759b60    8bcd
    asm("call               dword ptr [edx + 0xb08]");                       // 0x00759b62    ff92080b0000
    asm("_jmp_addr_0x00759b68:");
    asm(".byte              0x66, 0x81, 0xa5, 0xb4, 0x0, 0x0, 0x0, 0xfb, 0xff");// and word ptr [ebp + 0x000000b4], -0x0005 // 0x00759b68    6681a5b4000000fbff
    asm("_jmp_addr_0x00759b71:");
    asm("pop                ebp");                                           // 0x00759b71    5d
    asm("mov                eax, 0x00000001");                               // 0x00759b72    b801000000
    asm("pop                ebx");                                           // 0x00759b77    5b
    asm("ret                0x0004");                                        // 0x00759b78    c20400
    __builtin_unreachable();
}

void __fastcall SetStateAfterFinishingDance__8VillagerFv(struct Living* this)
{
    asm("mov                eax, dword ptr [ecx]");                          // 0x00759b80    8b01
    asm("push               0x000000a3");                                    // 0x00759b82    68a3000000
    asm("call               dword ptr [eax + 0x8e8]");                       // 0x00759b87    ff90e8080000
    asm("ret");                                                              // 0x00759b8d    c3
    __builtin_unreachable();
}
